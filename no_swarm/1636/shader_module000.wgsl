struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = vec4<f32>(820f, -1000f, _wgslsmith_f_op_f32(select(-891f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-771f + _wgslsmith_f_op_f32(f32(-1f) * -807f))), !(all(vec4<bool>(false, false, true, true)) && true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1954f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-715f + 741f) - _wgslsmith_f_op_f32(min(-746f, 296f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -149f), 1f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(685f)) - _wgslsmith_f_op_f32(f32(-1f) * -942f)))));
    global0 = array<Struct_3, 13>();
    var var_1 = Struct_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + var_0.x), -954f), u_input.c.zxx, 1f), vec4<u32>(~reverseBits(arg_0.x) & (u_input.b.x >> (~1u % 32u)), ~countOneBits(0u), 1u, arg_0.x ^ _wgslsmith_sub_u32(~arg_0.x, arg_0.x)), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.xw + vec2<f32>(-309f, var_0.x)), var_0.xx)), u_input.c.zxw ^ (~vec3<i32>(1i, u_input.c.x, 0i) & abs(u_input.c.ywx)), _wgslsmith_f_op_f32(trunc(-261f))), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.xw), vec3<i32>(_wgslsmith_add_i32(1i | u_input.c.x, _wgslsmith_div_i32(0i, u_input.c.x)), u_input.c.x, 1i), var_0.x), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.zw), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.wz), vec2<f32>(576f, -662f)), 832f < _wgslsmith_f_op_f32(-1369f + var_0.x))), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.c, ~vec4<i32>(-1i, u_input.c.x, -43423i, 27697i)), _wgslsmith_div_i32(u_input.c.x, u_input.c.x), reverseBits(-17512i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(1215f - -292f)))));
    global0 = array<Struct_3, 13>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(712f, -319f))))) - var_1.a.c);
    return countOneBits(1i);
}

fn func_2() -> u32 {
    var var_0 = 0i < ((i32(-1i) * -func_3(vec4<u32>(15299u, u_input.a.x, 5039u, u_input.a.x))) | reverseBits(-(u_input.c.x | u_input.c.x)));
    var_0 = true;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1030f, -982f)), -377f)), vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1395f)) - _wgslsmith_f_op_f32(floor(-1784f))))));
    var var_2 = select(!(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true != any(vec3<bool>(false, false, true))), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(var_1.c + 1000f) != _wgslsmith_f_op_f32(f32(-1f) * -976f))));
    return u_input.b.x;
}

fn func_4(arg_0: u32) -> u32 {
    let var_0 = countOneBits(-firstLeadingBit(_wgslsmith_div_vec3_i32(abs(u_input.c.xyz), vec3<i32>(u_input.c.x, -1008i, -21690i))));
    global0 = array<Struct_3, 13>();
    global0 = array<Struct_3, 13>();
    let var_1 = _wgslsmith_clamp_i32(u_input.c.x, var_0.x, reverseBits(2147483647i));
    var var_2 = ~_wgslsmith_clamp_i32(_wgslsmith_div_i32(-46019i, var_0.x), _wgslsmith_div_i32(firstTrailingBit(u_input.c.x ^ -2147483647i), _wgslsmith_div_i32(var_0.x, countOneBits(var_0.x))), var_0.x);
    return func_2();
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> Struct_4 {
    let var_0 = vec2<i32>(-reverseBits(_wgslsmith_mult_i32(arg_1.a.a, -arg_0.a.a)), u_input.c.x);
    global0 = array<Struct_3, 13>();
    let var_1 = any(!arg_1.b.yzw);
    let var_2 = Struct_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.b.x) - _wgslsmith_f_op_f32(-arg_0.a.b.x)), -1091f), abs(vec3<i32>(_wgslsmith_mult_i32(-21617i, 1i), -1i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1252f)))), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 1u, 1u), _wgslsmith_sub_vec3_u32(u_input.b, u_input.b)), _wgslsmith_clamp_vec3_u32(u_input.b, u_input.b, vec3<u32>(71146u, 1u, arg_2)) & (vec3<u32>(0u, 0u, arg_2) & u_input.b)), _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_2, ~4294967295u), max(arg_2, arg_2) >> (~1u % 32u)), 53481u, 12024u), Struct_1(vec2<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1064f, -300f), _wgslsmith_f_op_f32(f32(-1f) * -192f)))), select(vec3<i32>(1i, arg_0.a.a, var_0.x), vec3<i32>(2147483647i, 2147483647i, arg_1.a.a), var_1) ^ (firstLeadingBit(u_input.c.wyw) ^ (vec3<i32>(2970i, u_input.c.x, u_input.c.x) & u_input.c.zyx)), _wgslsmith_f_op_f32(arg_0.a.b.x - _wgslsmith_f_op_f32(max(arg_0.a.b.x, _wgslsmith_f_op_f32(-arg_0.a.b.x))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-194f, arg_1.a.b.x))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.b.x, 170f)), _wgslsmith_f_op_vec2_f32(-arg_0.a.b.yz)))), u_input.c.xyy, arg_0.a.b.x), Struct_1(vec2<f32>(1099f, -1399f), ~u_input.c.xyz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.a.b.x - -1992f))) - arg_1.a.b.x)));
    var var_3 = select(select(any(select(!arg_0.b.xy, !vec2<bool>(true, arg_0.b.x), true)), arg_0.b.x, true != arg_0.b.x), arg_0.b.x, !(!(arg_1.b.x | true)));
    return Struct_4(var_2.c, _wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_2, 1u, var_2.b.x, 0u)), vec4<u32>(~36611u, ~firstLeadingBit(4294967295u), _wgslsmith_dot_vec2_u32(u_input.a ^ vec2<u32>(31266u, 49286u), var_2.b.zy), select(54000u, 4294967295u, all(arg_0.b)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a.a - vec2<f32>(arg_0.a.b.x, 2112f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(993f, arg_1.a.b.x))))), var_2.d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(367f, -853f)) + _wgslsmith_f_op_f32(ceil(arg_1.a.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.c)))), Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.a.b.zy + _wgslsmith_f_op_vec2_f32(var_2.d.a - vec2<f32>(var_2.a.c, arg_1.a.b.x))), -_wgslsmith_mod_vec3_i32(var_2.a.b, _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, -22119i, 6983i), vec3<i32>(7130i, 2763i, -1767i))), _wgslsmith_f_op_f32(1549f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1032f, arg_0.a.b.x, arg_1.b.x))))), var_2.d);
}

fn func_6(arg_0: f32, arg_1: Struct_4) -> Struct_1 {
    global0 = array<Struct_3, 13>();
    global0 = array<Struct_3, 13>();
    var var_0 = ~(7327u ^ (abs(select(11523u, u_input.a.x, true)) << (func_5(global0[_wgslsmith_index_u32(~u_input.a.x, 13u)], global0[_wgslsmith_index_u32(~arg_1.b.x, 13u)], _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, 51421u, arg_1.b.x), u_input.b)).b.x % 32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(535f, 128f, 108f, -837f), vec4<f32>(-1132f, arg_1.d.a.x, arg_0, arg_0), vec4<bool>(true, true, false, true))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 567f, arg_0) - vec4<f32>(-192f, arg_1.e.a.x, -1108f, arg_0))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, 191f, arg_0, -337f), vec4<f32>(-327f, 776f, 706f, 1027f)))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1163f, arg_0, -1374f, arg_0)))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -486f));
    return func_5(Struct_3(Struct_2(~6423i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.yyw) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, -369f, var_2), vec3<f32>(630f, -178f, 828f))))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)))), Struct_3(Struct_2(0i, var_1.wyx), !vec4<bool>(true, any(vec3<bool>(true, true, false)), select(false, false, true), true)), ~u_input.d).a;
}

fn func_1(arg_0: vec2<i32>) -> Struct_4 {
    global0 = array<Struct_3, 13>();
    global0 = array<Struct_3, 13>();
    global0 = array<Struct_3, 13>();
    global0 = array<Struct_3, 13>();
    var var_0 = func_6(-1352f, func_5(global0[_wgslsmith_index_u32(~0u, 13u)], Struct_3(Struct_2(abs(arg_0.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-765f, 184f, -1000f), vec3<f32>(743f, 873f, -1968f), true))), vec4<bool>(true, true, true, true)), ~func_4(func_2())));
    return Struct_4(func_5(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~47551u, 23449u) & ~_wgslsmith_mod_u32(u_input.d, 0u), 13u)], Struct_3(Struct_2(u_input.c.x, _wgslsmith_div_vec3_f32(vec3<f32>(906f, 1164f, var_0.c), vec3<f32>(var_0.c, var_0.a.x, -1220f))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, u_input.d), vec2<u32>(0u, u_input.d)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x), vec2<u32>(56562u, u_input.a.x)), vec2<u32>(u_input.a.x, u_input.b.x) << (vec2<u32>(u_input.d, 1u) % vec2<u32>(32u)), func_5(global0[_wgslsmith_index_u32(u_input.d, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)], u_input.b.x).b.zz))).e, _wgslsmith_mult_vec4_u32(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 1u, 89101u, u_input.b.x), vec4<u32>(27383u, u_input.b.x, 25142u, u_input.b.x))), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 74322u), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.d, 0u, u_input.b.x), vec4<u32>(1188u, u_input.b.x, u_input.a.x, 4294967295u))))), func_6(_wgslsmith_f_op_f32(func_5(global0[_wgslsmith_index_u32(14490u, 13u)], Struct_3(Struct_2(0i, vec3<f32>(-248f, var_0.a.x, 402f)), vec4<bool>(false, true, true, true)), u_input.d).c.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1165f) + var_0.c)), Struct_4(Struct_1(vec2<f32>(-747f, -1385f), vec3<i32>(arg_0.x, -2147483647i, -10139i), _wgslsmith_f_op_f32(-var_0.c)), firstTrailingBit(~vec4<u32>(1u, u_input.a.x, u_input.d, u_input.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-505f, -221f))), ~vec3<i32>(1i, arg_0.x, u_input.c.x), _wgslsmith_f_op_f32(-var_0.c)), func_5(Struct_3(Struct_2(var_0.b.x, vec3<f32>(var_0.c, 1187f, -1027f)), vec4<bool>(false, false, false, false)), global0[_wgslsmith_index_u32(~4294967295u, 13u)], ~56236u).c, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.c) - var_0.a), _wgslsmith_mult_vec3_i32(var_0.b, var_0.b), _wgslsmith_f_op_f32(-var_0.c)))), func_5(global0[_wgslsmith_index_u32(46783u, 13u)], global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), 13u)], u_input.a.x).e, func_5(Struct_3(Struct_2(abs(arg_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-364f, -319f, var_0.a.x) + vec3<f32>(-513f, var_0.c, -2281f))), vec4<bool>(var_0.a.x != -2345f, true, true, select(false, false, false))), Struct_3(Struct_2(arg_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(889f, 2120f, var_0.c))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)))), ~u_input.b.x).d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_div_vec2_i32(u_input.c.xw, u_input.c.yy));
    var var_1 = vec3<bool>(!(!any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))), all(select(vec2<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(false, false))), vec2<bool>(true, any(vec4<bool>(true, true, false, true))), ~1u >= ~u_input.b.x)), false);
    let var_2 = _wgslsmith_add_vec4_i32(~abs(u_input.c), abs(u_input.c));
    let var_3 = firstTrailingBit(abs(-1i));
    var_1 = vec3<bool>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(9883u, var_0.b.x), min(var_0.b.x, 27382u), u_input.d), u_input.a.x, var_0.b.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, 51833u, 0u), vec3<u32>(u_input.b.x, u_input.a.x, var_0.b.x)) % 32u)) > 34444u, firstTrailingBit(var_0.b.x) == min(_wgslsmith_mult_u32(u_input.d, 1u), countOneBits(var_0.b.x)), !(false || var_1.x));
    var_0 = func_5(Struct_3(Struct_2(countOneBits(0i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.d.a.x, 2312f, var_0.e.a.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c, 456f, var_0.d.a.x)))), !vec4<bool>(all(vec2<bool>(var_1.x, true)), 0i <= var_0.a.b.x, all(vec4<bool>(var_1.x, false, false, true)), true)), global0[_wgslsmith_index_u32(4294967295u, 13u)], firstTrailingBit(max(_wgslsmith_sub_u32(4294967295u, u_input.d), var_0.b.x)) | _wgslsmith_add_u32(max(~1u, ~0u), u_input.d >> (countOneBits(var_0.b.x) % 32u)));
    let var_4 = (var_2.x ^ ~4204i) < 1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.a.x, _wgslsmith_sub_vec3_u32(vec3<u32>(~var_0.b.x & ~22861u, ~28942u, firstLeadingBit(var_0.b.x)), ~var_0.b.wwx));
}

