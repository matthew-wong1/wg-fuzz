struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: f32,
    d: Struct_3,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(-9951i), Struct_3(-7074i), Struct_3(5752i), Struct_3(i32(-2147483648)), Struct_3(7244i), Struct_3(2147483647i), Struct_3(-10850i), Struct_3(23835i), Struct_3(-1i), Struct_3(18063i), Struct_3(1i), Struct_3(1i), Struct_3(2147483647i), Struct_3(-27706i), Struct_3(i32(-2147483648)), Struct_3(2147483647i), Struct_3(2147483647i), Struct_3(1i));

var<private> global1: array<vec4<u32>, 32>;

var<private> global2: u32 = 1u;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_5, arg_1: u32, arg_2: Struct_3) -> Struct_5 {
    return Struct_5(Struct_2(arg_0.a.a, arg_0.a.b, arg_0.c), Struct_3(abs(firstTrailingBit(-1i)) | arg_0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.c) + 489f)), arg_0.d, max(abs(arg_0.e) ^ countOneBits(_wgslsmith_sub_vec3_i32(arg_0.e, vec3<i32>(arg_0.b.a, arg_0.e.x, 0i))), vec3<i32>(-18279i, u_input.b, arg_2.a)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.a.a, 424f, arg_2.a) * vec3<f32>(arg_2.a, arg_1.a.c, -132f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.c, 1000f, 1501f), vec3<f32>(714f, arg_2.a, arg_2.a))))));
    global2 = arg_1.a.a.c & ~select(arg_1.a.a.c, 77352u, false);
    let var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(arg_1.e.zz, arg_1.e.yx), arg_0.zx);
    global1 = array<vec4<u32>, 32>();
    global1 = array<vec4<u32>, 32>();
    return reverseBits(abs(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.c, 12773u, arg_1.a.a.c), ~vec3<u32>(22527u, 3937u, 4294967295u)) & vec3<u32>(~arg_2.c, 27615u, 1u)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<u32>) -> f32 {
    global2 = ~4294967295u;
    var var_0 = _wgslsmith_add_u32(15895u, ~arg_0.x);
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 2147483647i, 40313i), vec3<i32>(u_input.b, 1i, -56794i))), min(abs(select(vec3<i32>(-6193i, u_input.a, 37183i), vec3<i32>(u_input.a, u_input.b, -8111i), vec3<bool>(true, false, false))), -(vec3<i32>(u_input.b, 27996i, 19639i) | vec3<i32>(u_input.c, u_input.c, 1i)))), select(firstTrailingBit(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 20275i, u_input.b), vec3<i32>(-2147483647i, 21155i, u_input.a)), -vec3<i32>(u_input.c, 1i, u_input.b))), vec3<i32>(-16271i, ~(u_input.b | u_input.b), -73949i), !(_wgslsmith_mult_u32(arg_0.x, arg_0.x) > 15480u)));
    let var_2 = vec4<u32>(~arg_0.x, _wgslsmith_dot_vec3_u32(reverseBits(func_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(7766i, var_1, -21296i, var_1), vec4<i32>(-6487i, u_input.c, u_input.c, -1668i), vec4<i32>(u_input.a, -1i, var_1, u_input.c)), func_2(Struct_5(Struct_2(Struct_1(-1136f, vec4<bool>(false, true, false, false), arg_0.x), false, 929f), global0[_wgslsmith_index_u32(11783u, 18u)], -543f, Struct_3(2147483647i), vec3<i32>(1i, -1i, 19318i)), 76129u, global0[_wgslsmith_index_u32(arg_1.x, 18u)]), Struct_1(-2065f, vec4<bool>(false, true, false, true), arg_1.x))), arg_0.wwz), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, arg_0.x & arg_1.x, _wgslsmith_div_u32(arg_1.x, arg_0.x)), ~vec3<u32>(4294967295u, arg_1.x, arg_1.x) | _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, 2312u), vec3<u32>(arg_0.x, arg_0.x, 4294967295u), arg_1)) << (13338u % 32u), arg_0.x);
    var var_3 = Struct_4(_wgslsmith_add_i32(-8046i, u_input.c) & var_1, vec3<i32>(-(~(-2147483647i) | u_input.a), -_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(11153i, -2147483647i, u_input.a)), ~vec3<i32>(0i, 36066i, var_1)), var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -265f) + _wgslsmith_f_op_f32(1000f * 689f)) + _wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_f32(select(928f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-503f + 471f), _wgslsmith_f_op_f32(-369f + 237f))), true))));
    return _wgslsmith_f_op_f32(var_3.c - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1361f - _wgslsmith_f_op_f32(-233f * _wgslsmith_f_op_f32(-var_3.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1702f), var_3.c, u_input.b > 16699i))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(false, _wgslsmith_div_f32(-827f, -257f) != _wgslsmith_f_op_f32(func_1(vec4<u32>(10502u, 29631u, 1u, 4294967295u), vec3<u32>(34949u, 18496u, 4294967295u))), true), !select(vec3<bool>(false, false, true), func_2(Struct_5(Struct_2(Struct_1(603f, vec4<bool>(true, false, true, false), 4294967295u), true, 154f), Struct_3(0i), 212f, Struct_3(-1i), vec3<i32>(1i, u_input.a, 16083i)), 716u, Struct_3(2147483647i)).a.a.b.wxx, select(true, true, true)), all(vec4<bool>(true, true, true, true)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(firstTrailingBit(firstTrailingBit(vec4<u32>(1u, 3100u, 0u, 68864u))), ~(~vec3<u32>(22673u, 7909u, 13898u)))))));
    global0 = array<Struct_3, 18>();
    var var_2 = !var_0.xz;
    var var_3 = u_input.c;
    var var_4 = countOneBits(countOneBits(u_input.b));
    let var_5 = _wgslsmith_dot_vec2_i32(vec2<i32>(19653i, -u_input.a), select(~(~vec2<i32>(-2147483647i, u_input.b)), vec2<i32>(~u_input.c, u_input.c), !(!var_0.x)) << (vec2<u32>(_wgslsmith_sub_u32(firstTrailingBit(24436u), ~1u), countOneBits(1u)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, 1u));
}

