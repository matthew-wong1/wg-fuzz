struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>) -> f32 {
    global0 = countOneBits(firstLeadingBit(min(_wgslsmith_sub_u32(reverseBits(arg_1.x), 50691u), arg_1.x)));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-233f - -1840f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(229f)))));
    let var_1 = ~(-_wgslsmith_sub_i32(38151i, _wgslsmith_mult_i32(u_input.b, u_input.a)) << (10538u % 32u));
    var var_2 = Struct_1(_wgslsmith_div_u32(arg_1.x, abs(arg_1.x) & 31518u), vec2<f32>(_wgslsmith_f_op_f32(sign(-135f)), -1000f), ~1u);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -322f)))))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_2.b.x, 1316f))));
}

fn func_2(arg_0: Struct_3) -> f32 {
    var var_0 = abs(_wgslsmith_add_vec4_u32(abs(min(_wgslsmith_add_vec4_u32(vec4<u32>(21344u, 70591u, 1u, 36150u), vec4<u32>(9456u, 4042u, 0u, 0u)), vec4<u32>(45117u, 38559u, 0u, 30627u))), reverseBits(vec4<u32>(1u, 1u, 1u, 1u))));
    var_0 = firstTrailingBit(~vec4<u32>(_wgslsmith_sub_u32(var_0.x, 53862u), var_0.x, _wgslsmith_mult_u32(var_0.x & 24993u, firstTrailingBit(0u)), var_0.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-810f, -861f, 325f, -1237f), _wgslsmith_div_vec4_f32(vec4<f32>(262f, 1682f, 532f, 658f), vec4<f32>(292f, 2087f, 1601f, -1349f)), true))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(556f * -1000f), _wgslsmith_f_op_f32(-1000f + -594f), _wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, false, false), vec2<u32>(1u, 3528u))), _wgslsmith_f_op_f32(ceil(-556f))), vec4<f32>(1f, 1f, 1f, 1f), vec4<bool>(true, true, true, true))))));
    let var_2 = -(~(~(-(vec4<i32>(u_input.a, -2147483647i, u_input.b, arg_0.a.x) | vec4<i32>(u_input.b, arg_0.a.x, -9404i, -2147483647i)))));
    var var_3 = _wgslsmith_f_op_f32(func_3(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(any(vec4<bool>(false, false, false, false)), true, true, -1137f > var_1.x), vec4<bool>(true, true, select(true, true, true), select(false, true, false)), vec4<bool>(false, true, true, true)), false), vec2<u32>(~85033u, var_0.x)));
    return var_1.x;
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = true;
    global0 = 58528u;
    let var_1 = Struct_3(-min(arg_0.b.yy, vec2<i32>(arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(11256i, 1i), vec2<i32>(arg_1, 0i)))));
    let var_2 = Struct_3(firstTrailingBit(vec2<i32>(~(~u_input.a), min(u_input.a, select(-1i, -2147483647i, false)))));
    var var_3 = arg_3;
    return vec2<i32>(-arg_0.b.x, var_1.a.x);
}

fn func_1() -> vec2<i32> {
    return func_4(Struct_4(_wgslsmith_f_op_f32(func_2(Struct_3(vec2<i32>(u_input.b, 18102i)))), firstLeadingBit(abs(vec4<i32>(-1i, 1989i, u_input.b, u_input.a))), 1u, Struct_1(60209u, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, 574f))), 30295u >> (0u % 32u))), 1i, Struct_1(1u, vec2<f32>(_wgslsmith_div_f32(1000f, -806f), 1548f), 1u), Struct_2(4294967295u)) << (abs(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(23483u, 0u, 116416u, 1u), ~vec4<u32>(4294967295u, 13308u, 4294967295u, 10497u)), 4294967295u)) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1619f;
    let var_1 = max(_wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(u_input.b, -15094i)), vec2<i32>(u_input.b, u_input.a) | vec2<i32>(u_input.a, -1i)), func_1()), -vec2<i32>(u_input.b, 31573i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(21822u, max(firstLeadingBit(firstLeadingBit(23684u)), 32229u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-559f - -343f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1173f + -1174f) - 549f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-717f, -708f))))));
}

