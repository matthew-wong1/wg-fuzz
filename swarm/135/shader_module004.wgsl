struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 8>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    var var_0 = false;
    let var_1 = vec4<u32>(u_input.d, u_input.d, 1u, abs(4294967295u));
    global0 = array<vec2<bool>, 8>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - _wgslsmith_f_op_f32(sign(1491f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1099f + -641f) - 1f))));
    var_0 = all(!select(vec3<bool>(!arg_0.x, any(arg_0.zzz), true), !select(vec3<bool>(false, arg_0.x, false), arg_0.wyx, false), true));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -792f), _wgslsmith_f_op_f32(step(1636f, 881f)))) * _wgslsmith_f_op_f32(f32(-1f) * -350f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1021f)))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0);
    var var_1 = Struct_3(Struct_1(u_input.c.x, arg_0, _wgslsmith_f_op_f32(func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false))))), Struct_2(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(58531u, 7358u, 4294967295u), vec3<u32>(4294967295u, 16173u, 4294967295u)), _wgslsmith_mod_u32(30989u, _wgslsmith_add_u32(u_input.d, 0u)), u_input.b, countOneBits(u_input.b))));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(168f - 712f), 916f, _wgslsmith_f_op_f32(floor(arg_0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, var_1.a.b, arg_0, 1137f), vec4<f32>(var_0.x, -506f, 1115f, -739f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 120f, 179f, 218f) - vec4<f32>(var_1.a.b, 463f, arg_0, var_0.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))), arg_0, var_1.a.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-116f, var_0.x))))))));
    var_1 = Struct_3(var_1.a, Struct_2(~(~firstLeadingBit(var_1.b.a))));
    let var_3 = max(_wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.a.a, 0i), u_input.c.xz)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.c.x << (1u % 32u), u_input.c.x), i32(-1i) * -var_1.a.a, _wgslsmith_sub_i32(var_1.a.a, u_input.c.x)), _wgslsmith_div_i32(u_input.c.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(-12435i, -22396i), 2147483647i << (var_1.b.a.x % 32u)))), u_input.c.x);
    return Struct_1(_wgslsmith_clamp_i32(-_wgslsmith_mult_i32(2147483647i, abs(-1i)), reverseBits(i32(-1i) * -2671i), -34637i), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1988f, 1516f, true)))) * arg_0)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_5 {
    let var_0 = arg_1;
    let var_1 = select(global0[_wgslsmith_index_u32(0u, 8u)], select(select(global0[_wgslsmith_index_u32(8038u, 8u)], !(!vec2<bool>(arg_0.d, arg_0.d)), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(u_input.d, u_input.d, u_input.d, 120131u))), 8u)]), global0[_wgslsmith_index_u32(countOneBits(var_0.a.x), 8u)], !select(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(~0u, 8u)], !global0[_wgslsmith_index_u32(4294967295u, 8u)])), false);
    global0 = array<vec2<bool>, 8>();
    var var_2 = _wgslsmith_mod_i32(23315i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, u_input.a), vec4<i32>(u_input.c.x, -2147483647i, ~(-14939i), arg_0.c.a)), -arg_0.e));
    let var_3 = abs(_wgslsmith_sub_u32(arg_1.a.x, 10119u));
    return Struct_5(~_wgslsmith_add_vec2_u32(vec2<u32>(countOneBits(4294967295u), firstLeadingBit(var_0.a.x)), var_0.a.wx), arg_2);
}

fn func_5(arg_0: bool, arg_1: Struct_5, arg_2: u32) -> Struct_1 {
    global0 = array<vec2<bool>, 8>();
    var var_0 = Struct_5(vec2<u32>(abs(42439u), firstLeadingBit(_wgslsmith_div_u32(3070u & u_input.b, u_input.b ^ 36003u))), arg_1.b);
    var var_1 = _wgslsmith_sub_u32(var_0.a.x ^ ~_wgslsmith_mult_u32(16129u, max(0u, var_0.a.x)), min(~1u, u_input.d));
    var_1 = 26765u;
    var_0 = arg_1;
    return Struct_1(92231i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_1.b.x)), -1549f)), var_0.b.x);
}

fn func_1(arg_0: f32, arg_1: Struct_5) -> vec3<bool> {
    var var_0 = global0[_wgslsmith_index_u32(44009u, 8u)];
    let var_1 = arg_0;
    var_0 = vec2<bool>(true, false);
    var var_2 = Struct_4(vec2<i32>(min(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_add_i32(1i, 0i)), u_input.a.x), u_input.a.x), func_5(all(select(select(global0[_wgslsmith_index_u32(u_input.d, 8u)], vec2<bool>(var_0.x, true), true), vec2<bool>(true, true), all(vec2<bool>(var_0.x, var_0.x)))), func_4(Struct_4(vec2<i32>(1i, 0i) & vec2<i32>(6300i, u_input.c.x), Struct_1(u_input.c.x, arg_0, arg_0), func_2(-1424f), true, -2147483647i), Struct_2(vec4<u32>(arg_1.a.x, 34274u, u_input.b, 1u)), arg_1.b), arg_1.a.x ^ u_input.b), func_2(_wgslsmith_f_op_f32(max(-152f, var_1))), true, u_input.c.x);
    var var_3 = Struct_3(func_2(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-870f, arg_1.b.x))))), Struct_2(vec4<u32>(~(~0u), abs(firstTrailingBit(arg_1.a.x)), 4294967295u ^ select(u_input.d, 0u, true), u_input.d)));
    return vec3<bool>(true, var_2.d, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, !all(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1637f), Struct_5(vec2<u32>(6336u, u_input.b), vec2<f32>(-1000f, -1089f)))));
    var var_1 = i32(-1i) * -max(countOneBits(firstTrailingBit(u_input.c.x)), _wgslsmith_mult_i32(countOneBits(u_input.c.x), -20091i));
    global0 = array<vec2<bool>, 8>();
    var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit((u_input.c.x << (u_input.b % 32u)) | (u_input.a.x | u_input.c.x)), -1227i), vec2<i32>(0i, reverseBits(u_input.a.x << (_wgslsmith_mod_u32(4294967295u, u_input.b) % 32u))));
    var var_2 = Struct_2(vec4<u32>(_wgslsmith_add_u32(~u_input.b, max(0u, u_input.d)), ~0u, ~(~u_input.b), u_input.d));
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    global0 = array<vec2<bool>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(28204u, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

