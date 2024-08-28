struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(false, false, false);

var<private> global1: Struct_3;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<f32> {
    let var_0 = vec3<i32>(u_input.e, _wgslsmith_add_i32(-5657i, ~reverseBits(u_input.b ^ u_input.a.x)), -u_input.a.x);
    var var_1 = Struct_2(Struct_1(countOneBits(vec4<u32>(u_input.d, u_input.d, 1u, 0u)) << (max(_wgslsmith_mult_vec4_u32(vec4<u32>(41200u, u_input.c, u_input.c, u_input.d), vec4<u32>(u_input.d, 26054u, u_input.c, 1u)), ~vec4<u32>(0u, 36848u, 32577u, u_input.d)) % vec4<u32>(32u)), 4294967295u < _wgslsmith_mod_u32(abs(u_input.c), ~u_input.c), ~u_input.b), Struct_1(~vec4<u32>(u_input.d >> (u_input.d % 32u), 1u, ~u_input.d, u_input.c), abs(1i) == u_input.e, 2147483647i), ~(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 10882u, 12032u, u_input.d), vec4<u32>(u_input.d, u_input.c, u_input.c, u_input.c)) << (u_input.d % 32u)));
    var var_2 = vec3<bool>(all(!select(vec4<bool>(false, var_1.b.b, true, false), vec4<bool>(global1.a.x, false, var_1.b.b, true), vec4<bool>(global1.a.x, false, var_1.b.b, true))) || global0[_wgslsmith_index_u32(~75343u, 3u)], true, !global1.a.x);
    var var_3 = u_input.c | _wgslsmith_dot_vec4_u32(vec4<u32>(~abs(u_input.c), ~_wgslsmith_mod_u32(var_1.b.a.x, 0u), var_1.b.a.x, u_input.d), ~vec4<u32>(u_input.d, var_1.b.a.x, ~39354u, 1u >> (1u % 32u)));
    var_2 = select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, var_1.b.b), select(vec3<bool>(false && global0[_wgslsmith_index_u32(var_1.c, 3u)], !var_1.a.b, global0[_wgslsmith_index_u32(u_input.c ^ 4294967295u, 3u)]), vec3<bool>(true, any(global1.a), global1.a.x), vec3<bool>(4294967295u > var_1.b.a.x, var_2.x & true, global0[_wgslsmith_index_u32(1u >> (u_input.d % 32u), 3u)]))), select(vec3<bool>(var_2.x, true, any(select(vec4<bool>(global1.a.x, global1.a.x, false, false), vec4<bool>(true, var_2.x, global1.a.x, false), vec4<bool>(false, false, false, true)))), vec3<bool>(!global1.a.x, 4294967295u == u_input.d, false), global1.a.x), global1.a.x);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -942f), _wgslsmith_f_op_f32(step(-561f, -585f)), 871f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -515f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1493f), _wgslsmith_f_op_f32(step(-1121f, -310f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1949f, 514f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1134f * 2038f))), _wgslsmith_f_op_f32(max(-929f, -100f)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: u32, arg_3: vec2<bool>) -> u32 {
    var var_0 = Struct_1(arg_0.b.a, arg_3.x, ~(~(-abs(arg_1.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3()))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(192f, -319f, -705f, -189f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(604f, -1243f, -2059f, 1052f)))))));
    var_0 = Struct_1(_wgslsmith_mult_vec4_u32(var_0.a, firstTrailingBit(~vec4<u32>(var_0.a.x, 30921u, arg_0.b.a.x, var_0.a.x))), all(select(!vec4<bool>(false, true, true, global1.a.x), vec4<bool>(var_0.a.x >= arg_2, true, true, false), global1.a.x)), 0i);
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1771f, -2004f, var_1.x, var_1.x) - vec4<f32>(-2076f, var_1.x, -478f, var_1.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-726f, var_1.x, -752f, var_1.x)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) * vec4<f32>(var_1.x, var_1.x, -1049f, 532f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-359f, var_1.x, var_1.x, var_1.x) + vec4<f32>(var_1.x, -145f, 583f, var_1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2074f, -519f, var_1.x, 757f), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), arg_3.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-877f, 304f, _wgslsmith_f_op_f32(sign(-533f)), _wgslsmith_f_op_f32(min(var_1.x, 386f))) * vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1066f, var_1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x + var_1.x))), -369f)), !global0[_wgslsmith_index_u32(u_input.d, 3u)]));
    var_0 = Struct_1(select(vec4<u32>(arg_2, arg_2, 4294967295u, ~228u) ^ vec4<u32>(u_input.d ^ 27651u, 6109u, _wgslsmith_mod_u32(4294967295u, 39077u), ~4294967295u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 25519u, arg_2, u_input.c), vec4<u32>(var_0.a.x, 1u, u_input.d, 21242u) ^ var_0.a, _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.x, u_input.c, var_0.a.x, 0u), vec4<u32>(arg_2, 43980u, 43472u, 73737u))) | _wgslsmith_div_vec4_u32(var_0.a, select(vec4<u32>(1u, 1u, arg_0.c, arg_0.c), arg_0.b.a, arg_0.b.b)), !select(select(vec4<bool>(global1.a.x, false, false, true), vec4<bool>(true, true, var_0.b, false), global1.a.x), select(vec4<bool>(false, arg_3.x, var_0.b, var_0.b), vec4<bool>(arg_0.b.b, true, true, false), global1.a.x), global0[_wgslsmith_index_u32(59768u, 3u)])), arg_3.x, -1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.a.x | 0u, u_input.d), _wgslsmith_mod_vec2_u32(arg_0.a.a.yw, arg_0.b.a.zw) << (abs(vec2<u32>(u_input.d, arg_0.b.a.x)) % vec2<u32>(32u))) % 32u));
    return u_input.c;
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(min(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_clamp_vec4_i32(firstLeadingBit(u_input.a), vec4<i32>(0i, arg_2.b.b.c, u_input.e, 57719i), vec4<i32>(-22585i, 1i, arg_2.a.b.c, -2147483647i)) ^ u_input.a));
    var var_1 = Struct_3(vec2<bool>(global0[_wgslsmith_index_u32(~min(arg_2.a.c ^ 1u, 5589u), 3u)], true));
    let var_2 = abs(min(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(4294967295u, 0u)), arg_2.b.a.a.zw), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(20009u, arg_2.a.c, arg_0, 60287u), arg_2.a.b.a), ~firstLeadingBit(arg_0))));
    let var_3 = -19468i;
    var var_4 = _wgslsmith_f_op_f32(exp2(arg_1.x));
    return arg_2.b.b;
}

fn func_5(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_2(func_4(~(~max(39595u, 4294967295u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(812f, -470f) + vec2<f32>(-675f, 1205f)))) * vec2<f32>(1f, -1125f)), Struct_4(arg_0, arg_0, min(arg_0.a.a.x, firstLeadingBit(0u)), ~vec3<u32>(81648u, arg_0.c, u_input.d))), Struct_1(arg_0.b.a, false, _wgslsmith_dot_vec2_i32(abs(~vec2<i32>(u_input.e, arg_0.a.c)), _wgslsmith_clamp_vec2_i32(u_input.a.yw, _wgslsmith_mod_vec2_i32(u_input.a.yz, u_input.a.xy), vec2<i32>(2147483647i, -10675i) | u_input.a.yy))), ~_wgslsmith_dot_vec3_u32(~arg_0.b.a.ywz | (arg_0.a.a.zxw | vec3<u32>(4768u, 4294967295u, 0u)), arg_0.a.a.www));
    let var_1 = arg_0.b.a.yxz;
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(~firstTrailingBit(arg_0.b.a.x), _wgslsmith_mod_u32(var_1.x, ~(~arg_0.a.a.x)), firstLeadingBit(_wgslsmith_div_u32(~0u, ~var_1.x)), u_input.d), var_0.a.a);
    global1 = Struct_3(global1.a);
    var var_3 = 0u;
    return ~_wgslsmith_clamp_u32(var_0.a.a.x, countOneBits(_wgslsmith_mod_u32(52769u, 26483u)) ^ _wgslsmith_mult_u32(var_1.x, 11482u), u_input.c);
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = vec3<bool>(global1.a.x, !global1.a.x, global1.a.x);
    let var_1 = -(~_wgslsmith_mult_i32(-u_input.b, u_input.b)) >> (func_5(Struct_2(Struct_1(vec4<u32>(u_input.d, 1u, arg_0, 4294967295u) << (vec4<u32>(u_input.d, arg_0, 4294967295u, 38587u) % vec4<u32>(32u)), global1.a.x, -36114i), func_4(func_2(Struct_2(Struct_1(vec4<u32>(arg_0, arg_0, 4294967295u, 4294967295u), global1.a.x, u_input.b), Struct_1(vec4<u32>(10391u, arg_0, u_input.c, arg_0), true, -1i), u_input.c), vec3<i32>(2147483647i, u_input.b, u_input.a.x), arg_0, vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(537f, 1521f)), Struct_4(Struct_2(Struct_1(vec4<u32>(0u, 0u, u_input.c, u_input.d), global1.a.x, u_input.b), Struct_1(vec4<u32>(33225u, arg_0, 42430u, u_input.d), global1.a.x, u_input.b), u_input.d), Struct_2(Struct_1(vec4<u32>(arg_0, arg_0, 34643u, 20497u), true, u_input.a.x), Struct_1(vec4<u32>(124644u, 1u, 0u, u_input.c), global0[_wgslsmith_index_u32(arg_0, 3u)], -1i), 88203u), arg_0, vec3<u32>(18219u, 1u, u_input.d))), max(arg_0, ~0u))) % 32u);
    global0 = array<bool, 3>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, arg_0, 27977u, 0u), firstTrailingBit(select(vec4<u32>(2685u, u_input.d, 90948u, u_input.d), vec4<u32>(arg_0, 24444u, 0u, u_input.d), true))), true, 1i), Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(39651u, 4294967295u, 0u, 9267u), vec4<u32>(4294967295u, 20812u, 4294967295u, 1541u) & vec4<u32>(0u, u_input.d, 0u, 38005u)), vec4<u32>(u_input.d, 1u, _wgslsmith_mult_u32(4294967295u, u_input.c), _wgslsmith_div_u32(15613u, u_input.c))), global0[_wgslsmith_index_u32(~reverseBits(arg_0), 3u)], _wgslsmith_add_i32(~var_1, func_4(~arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-273f, -2002f)), Struct_4(Struct_2(Struct_1(vec4<u32>(arg_0, 24839u, u_input.c, 4961u), global0[_wgslsmith_index_u32(u_input.c, 3u)], var_1), Struct_1(vec4<u32>(9953u, 13075u, u_input.c, arg_0), false, u_input.e), u_input.c), Struct_2(Struct_1(vec4<u32>(arg_0, 4294967295u, arg_0, 4294967295u), false, 1i), Struct_1(vec4<u32>(u_input.c, 1u, arg_0, 16965u), false, u_input.b), 4294967295u), 82615u, vec3<u32>(arg_0, u_input.c, 1874u))).c)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 0u, arg_0, 1u), vec4<u32>(8188u, arg_0, arg_0, 1u))));
    var var_3 = !select(vec4<bool>(any(vec3<bool>(false, global1.a.x, true)), !all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_2.a.a.x, 3u)])), true, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0, 0u | arg_0), 3u)]), !select(vec4<bool>(false, var_2.a.b, true, global0[_wgslsmith_index_u32(var_2.c, 3u)]), select(vec4<bool>(var_2.b.b, true, global0[_wgslsmith_index_u32(0u, 3u)], var_2.b.b), vec4<bool>(var_2.b.b, true, false, global1.a.x), var_2.b.b), false), vec4<bool>(true, true, global1.a.x, select(global1.a.x, var_0.x, var_2.a.b)));
    return Struct_2(func_4(countOneBits(0u), vec2<f32>(_wgslsmith_f_op_f32(-693f * 1089f), _wgslsmith_f_op_f32(f32(-1f) * -1863f)), Struct_4(Struct_2(var_2.b, var_2.b, abs(arg_0)), Struct_2(func_4(u_input.d, vec2<f32>(-1000f, 369f), Struct_4(Struct_2(var_2.b, var_2.b, arg_0), var_2, 17475u, var_2.a.a.wzy)), Struct_1(vec4<u32>(u_input.d, u_input.c, 1u, u_input.c), false, var_2.b.c), 27215u >> (arg_0 % 32u)), _wgslsmith_mod_u32(0u, abs(arg_0)), ~(~vec3<u32>(1u, 136993u, 9405u)))), func_4(_wgslsmith_add_u32(reverseBits(~arg_0), 0u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1620f, -331f)), Struct_4(Struct_2(Struct_1(vec4<u32>(var_2.a.a.x, arg_0, u_input.d, 4294967295u), false, var_2.b.c), Struct_1(var_2.a.a, true, u_input.a.x), _wgslsmith_add_u32(var_2.c, 83570u)), var_2, _wgslsmith_dot_vec4_u32(var_2.b.a, vec4<u32>(1u, var_2.c, u_input.c, var_2.a.a.x)), var_2.b.a.xzz)), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = Struct_4(func_1(abs(max(4294967295u, u_input.c)) >> (firstLeadingBit(~u_input.c) % 32u)), Struct_2(Struct_1(~vec4<u32>(1u, u_input.d, 70577u, u_input.d) >> (~vec4<u32>(1u, u_input.c, 4294967295u, u_input.c) % vec4<u32>(32u)), any(vec3<bool>(true, true, true)), u_input.a.x), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.d, 28195u, u_input.d), max(vec4<u32>(55515u, 35891u, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.c, 0u, u_input.d)), vec4<u32>(4294967295u, 0u, 4294967295u, u_input.c) >> (vec4<u32>(53437u, u_input.c, u_input.c, 4294967295u) % vec4<u32>(32u))), true, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, -1i), -u_input.a.x)), abs(_wgslsmith_add_u32(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.d, 4294967295u), vec3<u32>(4294967295u, u_input.d, u_input.d))))), 43900u, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(0u, 47608u), ~0u, ~0u), ~vec3<u32>(u_input.d, 1u, 4294967295u) & vec3<u32>(u_input.d, 4294967295u, u_input.d), min(select(vec3<u32>(u_input.d, 0u, u_input.c), vec3<u32>(85847u, 16780u, u_input.d), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 3u)], global1.a.x, global0[_wgslsmith_index_u32(u_input.c, 3u)])), select(vec3<u32>(47870u, 1u, 2545u), vec3<u32>(1u, 1u, 4294967295u), vec3<bool>(global1.a.x, false, true)))));
    global1 = Struct_3(global1.a);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1260f * 872f) - 1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1442f - 1138f), -632f, true))))) - _wgslsmith_f_op_f32(f32(-1f) * -1358f));
    let var_3 = var_1.b.a.a.x;
    var_1 = Struct_4(func_1(func_1(~_wgslsmith_mult_u32(4294967295u, var_1.b.c)).a.a.x), func_1(var_1.c), _wgslsmith_clamp_u32(u_input.c, 6187u, ~(4294967295u >> (~u_input.c % 32u))), vec3<u32>(19566u, var_1.d.x, u_input.d));
    let var_4 = var_1.b.a;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1008f)) + -447f) - 814f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-492f, 742f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -687f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(401f, 728f), -654f)))))), func_4(~(~77706u), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1576f, -1585f), _wgslsmith_f_op_vec2_f32(vec2<f32>(103f, 2178f) + vec2<f32>(807f, 1171f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-754f, -693f), vec2<f32>(1223f, -532f))))), Struct_4(Struct_2(var_1.a.a, func_1(var_1.c).a, ~1u), var_1.b, u_input.c, _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(var_1.a.b.a.wzz, vec3<u32>(var_1.a.b.a.x, 0u, var_4.a.x)), var_1.d << (vec3<u32>(1u, 6182u, var_1.d.x) % vec3<u32>(32u))))).a.zwz);
}

