struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(5202i, 1i, -1i), vec3<i32>(0i, 2147483647i, 0i), vec3<i32>(1i, -26385i, -1i), vec3<i32>(2147483647i, 43294i, 3340i), vec3<i32>(-43848i, 21655i, -1i), vec3<i32>(-58793i, 2147483647i, 0i), vec3<i32>(-5236i, -8140i, 1i), vec3<i32>(13092i, 53914i, -1i), vec3<i32>(1i, -69811i, -77669i), vec3<i32>(-41833i, 1i, -48623i), vec3<i32>(-1i, 49700i, -1i), vec3<i32>(-33560i, 1i, -10716i), vec3<i32>(23828i, 38605i, 2147483647i), vec3<i32>(-6583i, 2147483647i, -1i), vec3<i32>(-39459i, 11758i, 2147483647i), vec3<i32>(i32(-2147483648), -51654i, -17578i), vec3<i32>(0i, -1i, 2147483647i), vec3<i32>(84775i, -23063i, 60147i), vec3<i32>(-2662i, -1i, -55102i), vec3<i32>(-41234i, -9676i, 9718i), vec3<i32>(2147483647i, 39945i, -24886i), vec3<i32>(1i, 19397i, i32(-2147483648)), vec3<i32>(1i, -41966i, 1i), vec3<i32>(i32(-2147483648), 5755i, -5599i), vec3<i32>(0i, 2147483647i, 0i), vec3<i32>(-1i, -48016i, 1i), vec3<i32>(0i, -1i, 34576i));

var<private> global1: array<u32, 10> = array<u32, 10>(2819u, 28055u, 1u, 0u, 37087u, 0u, 24941u, 24298u, 0u, 19952u);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_2(arg_0.a, arg_0.b);
    let var_1 = Struct_3(-1000f, Struct_2(true, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -302f, -270f, var_0.b.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_0.b * arg_0.b), _wgslsmith_div_vec4_f32(arg_0.b, arg_0.b))))), _wgslsmith_f_op_f32(1021f * _wgslsmith_f_op_f32(arg_0.b.x - var_0.b.x)), ~(~u_input.e.x), _wgslsmith_f_op_f32(-arg_0.b.x));
    let var_2 = Struct_3(arg_0.b.x, arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(554f + 459f) - _wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x)), _wgslsmith_f_op_f32(floor(473f)), u_input.c.x >= ~u_input.c.x)))), u_input.a.x, _wgslsmith_f_op_f32(min(-1560f, _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.b.x, 441f)))))));
    var_0 = arg_0;
    let var_3 = u_input.a.x;
    return -23036i;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(1u, 27u)], vec3<i32>(-2147483647i, func_3(Struct_2(false, vec4<f32>(-547f, 1000f, -1723f, 354f))) ^ -_wgslsmith_mult_i32(u_input.a.x, -9668i), abs(u_input.a.x)));
    let var_1 = ~select(u_input.d, vec2<i32>(countOneBits(0i), 11272i), all(!arg_1)) ^ (vec2<i32>(var_0.x >> (~global1[_wgslsmith_index_u32(1u, 10u)] % 32u), _wgslsmith_sub_i32(~var_0.x, 6299i)) << (reverseBits(firstLeadingBit(vec2<u32>(u_input.b.x, global1[_wgslsmith_index_u32(0u, 10u)]))) % vec2<u32>(32u)));
    var var_2 = Struct_1(reverseBits(abs(1u)));
    var var_3 = Struct_1(4294967295u);
    var var_4 = 837f;
    return Struct_2(true, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f)))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = func_2(2147483647i, vec2<bool>(_wgslsmith_mod_u32(u_input.c.x | u_input.b.x, arg_2.x) > global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~57978u, global1[_wgslsmith_index_u32(1u, 10u)] & 1u), 10u)], !select(true, all(vec4<bool>(false, true, false, false)), true)));
    global0 = array<vec3<i32>, 27>();
    var var_1 = var_0.b.x;
    var var_2 = vec4<u32>(~_wgslsmith_clamp_u32(~u_input.b.x, _wgslsmith_div_u32(1u, global1[_wgslsmith_index_u32(29187u, 10u)]), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(81498u, 10u)], 4294967295u)), firstLeadingBit(~(38994u << (firstTrailingBit(0u) % 32u))), select(~(~(~4294967295u)), arg_2.x, var_0.a), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 89271u, arg_2.x), _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(4294967295u, 4294967295u, global1[_wgslsmith_index_u32(25098u, 10u)]))) >> (firstTrailingBit(~1u) % 32u)));
    global1 = array<u32, 10>();
    return Struct_1(_wgslsmith_clamp_u32(abs(1u), ~(~(~29242u)), u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32((global1[_wgslsmith_index_u32(u_input.c.x, 10u)] | 25031u) << (countOneBits(99093u) % 32u), _wgslsmith_div_u32(4294967295u, u_input.b.x));
    global0 = array<vec3<i32>, 27>();
    let var_1 = func_1(vec2<i32>(u_input.e.x, -31897i >> (~global1[_wgslsmith_index_u32(0u, 10u)] % 32u)) ^ (~u_input.e ^ _wgslsmith_mult_vec2_i32(~u_input.a, -u_input.d)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, -705f, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(416f, -102f)), -811f)))), u_input.c);
    global0 = array<vec3<i32>, 27>();
    var var_2 = func_2((select(abs(-3205i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.e.x, -21903i, u_input.d.x), vec4<i32>(u_input.e.x, 2147483647i, u_input.d.x, u_input.d.x)), true) | -29655i) & -func_3(Struct_2(true, vec4<f32>(-629f, 348f, -1758f, -567f))), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(all(vec3<bool>(false, true, false)), true)));
    var_0 = _wgslsmith_mult_u32(~1u, var_1.a);
    let var_3 = ~(~select(u_input.d.x, u_input.a.x, _wgslsmith_f_op_f32(1676f - var_2.b.x) > _wgslsmith_f_op_f32(var_2.b.x + -1011f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(select(var_2.b.x, _wgslsmith_f_op_f32(288f + -1311f), true)), var_2.b.x) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-987f, _wgslsmith_f_op_f32(ceil(302f)), var_2.b.x, _wgslsmith_div_f32(2457f, var_2.b.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-223f, var_2.b.x, 568f, -1632f) * var_2.b)))))), ~u_input.b, _wgslsmith_f_op_vec4_f32(var_2.b - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1358f, _wgslsmith_f_op_f32(918f - var_2.b.x), _wgslsmith_f_op_f32(749f + 371f), _wgslsmith_f_op_f32(-789f - 1003f)))), ~vec2<u32>(~(~0u), 4294967295u), ~var_3);
}

