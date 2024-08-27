struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<i32> {
    let var_0 = u_input.d;
    let var_1 = _wgslsmith_clamp_i32(~_wgslsmith_div_i32(u_input.a & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.c.x, 0i), vec4<i32>(u_input.c.x, 44163i, u_input.a, u_input.a)), u_input.a), max(_wgslsmith_mult_i32(~10519i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-27366i, u_input.c.x))), reverseBits(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-82242i, -47008i, 0i, -2147483647i), vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, 28976i)), 53261i >> (var_0.x % 32u)))), u_input.a);
    var var_2 = -vec4<i32>(firstTrailingBit(1i), _wgslsmith_dot_vec3_i32(max(vec3<i32>(var_1, 16417i, var_1), vec3<i32>(1i, -2147483647i, var_1)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-43734i, u_input.c.x, var_1), vec3<i32>(u_input.a, var_1, u_input.c.x), vec3<i32>(-34621i, 3488i, -2147483647i))), _wgslsmith_mult_i32(~_wgslsmith_add_i32(var_1, var_1), -1i), _wgslsmith_clamp_i32(1i, var_1, ~(~var_1)));
    let var_3 = Struct_1(vec3<i32>(_wgslsmith_div_i32(var_2.x >> (var_0.x % 32u), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(51296i, var_2.x), vec2<i32>(var_1, u_input.a)))), -1i, -1i), _wgslsmith_f_op_f32(f32(-1f) * -348f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1080f, -1375f))) + -1014f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1940f)))), max(-_wgslsmith_sub_i32(var_1, var_1) << (u_input.b.x % 32u), u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(952f, _wgslsmith_f_op_f32(ceil(1750f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-808f, -178f)), _wgslsmith_f_op_f32(f32(-1f) * -703f)))) - vec3<f32>(973f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-2188f)), _wgslsmith_f_op_f32(-790f - -476f), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(911f)))))));
    var var_4 = -u_input.c.x;
    return _wgslsmith_div_vec3_i32(var_2.yxx, _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.a, 21389i, -20627i) ^ var_3.a, _wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_1, var_2.x), var_3.a) ^ ~var_2.yzx)) ^ ~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(var_3.a.x, 1i, var_1), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(14399i, -1i, -2147483647i)), vec3<i32>(u_input.c.x, 56105i, 33471i)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(~28422i, ~(-u_input.a << (~_wgslsmith_mod_u32(u_input.d.x, 67705u) % 32u)));
    let var_1 = Struct_1(countOneBits(-countOneBits(func_3())), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(ceil(-185f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1321f)), 421f))))), abs(u_input.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(439f, -502f, 221f) + vec3<f32>(-1000f, -1392f, -1299f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -460f, 601f) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, 600f, -790f), vec3<f32>(-1068f, -532f, -1381f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(310f, -131f, 431f) - vec3<f32>(174f, 485f, -172f))))))));
    var var_2 = Struct_1(min(-vec3<i32>(max(var_1.a.x, var_1.d), firstTrailingBit(var_1.a.x), abs(var_1.a.x)), vec3<i32>(-2147483647i, ~(-1i), ~(var_1.a.x | u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + var_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(136f - -1254f)) + -714f), _wgslsmith_sub_i32(abs(_wgslsmith_div_i32(var_1.a.x, u_input.c.x)), -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d, var_1.a.x), u_input.c), u_input.c.x)), _wgslsmith_f_op_vec3_f32(var_1.e + var_1.e));
    var_2 = var_1;
    var var_3 = var_1;
    return Struct_1(vec3<i32>(abs(_wgslsmith_div_i32(var_1.a.x, u_input.c.x)), var_3.a.x, 2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.e.x, -1772f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.e.x + var_1.b) + -984f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_2.c, -1133f, false)))))), 1592f, -reverseBits(var_1.d), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.e, vec3<f32>(-313f, var_2.e.x, var_1.c))))), var_2.e)));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = vec2<bool>(true, all(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false))) & any(vec3<bool>(true, false, true)));
    var_0 = vec2<bool>(false, all(!vec4<bool>(true, true, 660f < arg_2.b, true)));
    var var_1 = u_input.c.x | select(select(firstTrailingBit(abs(1i)), 9902i, true), _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, -12215i, arg_2.d, 10247i) | vec4<i32>(arg_3, u_input.a, arg_2.a.x, u_input.a), vec4<i32>(25271i, 22827i, 0i, arg_2.a.x) ^ min(vec4<i32>(-6629i, 30851i, u_input.a, arg_2.a.x), vec4<i32>(0i, u_input.a, -1i, 1i))), !(_wgslsmith_f_op_f32(ceil(arg_0)) < arg_0));
    let var_2 = firstLeadingBit((abs(countOneBits(vec4<i32>(arg_3, arg_2.a.x, 24757i, 2147483647i))) & ~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.a.x, arg_3, arg_3, -36754i), vec4<i32>(u_input.c.x, 70240i, u_input.c.x, -8796i))) | vec4<i32>(arg_2.d, -arg_2.d, firstLeadingBit(-10776i) | countOneBits(arg_2.d), -_wgslsmith_clamp_i32(0i, arg_2.d, arg_3)));
    let var_3 = ~countOneBits(u_input.b);
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: i32) -> f32 {
    var var_0 = true;
    let var_1 = Struct_2(func_4(-1000f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-289f, -1447f, 626f, -1275f), _wgslsmith_div_vec4_f32(vec4<f32>(204f, -1353f, -993f, -1824f), vec4<f32>(261f, -432f, 2158f, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(floor(132f)), _wgslsmith_f_op_f32(floor(786f)), _wgslsmith_f_op_f32(f32(-1f) * -1056f), _wgslsmith_f_op_f32(-726f - 888f)), any(vec3<bool>(true, true, true)))), func_2(), _wgslsmith_mod_i32(arg_1, _wgslsmith_sub_i32(~arg_1, func_3().x))));
    var var_2 = var_1.a.a;
    let var_3 = vec3<bool>(any(vec4<bool>(true, true, true, true)), false, u_input.c.x < _wgslsmith_div_i32(~(-2147483647i), -2147483647i & ~u_input.c.x));
    let var_4 = _wgslsmith_dot_vec2_i32(var_2.yz | u_input.c, abs(-vec2<i32>(arg_1, 1i)) ^ min(_wgslsmith_mult_vec2_i32(func_3().zy, -vec2<i32>(14580i, var_2.x)), var_1.a.a.xz));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.e.x + _wgslsmith_f_op_f32(var_1.a.b - _wgslsmith_div_f32(1577f, _wgslsmith_f_op_f32(trunc(var_1.a.c))))) * var_1.a.e.x);
}

fn func_5(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec4<u32>(u_input.d.x, 32512u, 20680u, min(u_input.b.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 32442u, 31144u, arg_1), vec4<u32>(u_input.b.x, u_input.b.x, arg_1, arg_1))) & _wgslsmith_clamp_u32(arg_1 ^ u_input.d.x, u_input.d.x, arg_1));
    let var_1 = func_2();
    var var_2 = -vec4<i32>(0i, _wgslsmith_div_i32(_wgslsmith_mod_i32(~(-1i), arg_2.a.d), var_1.d), reverseBits(var_1.d) >> (~(~21470u) % 32u), max(firstTrailingBit(-2147483647i) | -40273i, 2147483647i));
    var_2 = vec4<i32>(var_1.a.x >> (var_0.x % 32u), 1i, -2147483647i, -51284i);
    let var_3 = 0u;
    return Struct_1(_wgslsmith_div_vec3_i32(-(~arg_3.a), -min(~arg_3.a, arg_3.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.c, arg_3.b))), 804f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-194f)))), max(-31244i, 18011i), arg_2.a.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(abs(~u_input.b.x), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~35479u, ~firstTrailingBit(45091u)), 34101u, _wgslsmith_add_u32(~firstLeadingBit(4294967295u), u_input.d.x)), ~firstLeadingBit(min(~47350u, 1u)));
    var var_1 = func_5(vec4<bool>(false, _wgslsmith_f_op_f32(func_1(~u_input.d.x, u_input.a)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2141f + 574f)), true, false), 4294967295u, Struct_2(func_4(func_4(_wgslsmith_f_op_f32(f32(-1f) * -425f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 146f, 1000f, 288f)), Struct_1(vec3<i32>(-3143i, 0i, u_input.c.x), -408f, 130f, 29950i, vec3<f32>(1166f, -915f, 819f)), 171i).b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-178f, -1067f, 800f, 791f) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1216f, -205f, 532f, 1098f), vec4<f32>(-453f, 374f, 1274f, -1000f)))), func_2(), u_input.a)), func_4(1302f, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -607f, -819f, 1110f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(700f, 2527f, 774f, -401f))))), func_2(), u_input.a >> (0u % 32u)));
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.c))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_0.x, var_1.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, var_1.b)))), var_1.a.x, _wgslsmith_f_op_vec3_f32(-var_1.e));
    var var_2 = _wgslsmith_mult_u32(~68038u, ~var_0.x);
    let var_3 = true;
    let var_4 = func_2();
    var_2 = var_0.x | min(_wgslsmith_sub_u32(~(~u_input.d.x), 4294967295u), _wgslsmith_add_u32(12656u, firstLeadingBit(0u)) >> ((0u << (~u_input.d.x % 32u)) % 32u));
    let var_5 = ~firstLeadingBit(_wgslsmith_mod_vec3_i32(var_4.a, vec3<i32>(0i, -1i, var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(42737u, u_input.b.x, 1u), var_4.d & 1i, ~_wgslsmith_sub_u32(~(~u_input.b.x), ~(u_input.b.x >> (36191u % 32u))));
}

