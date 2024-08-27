struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32;

var<private> global2: bool;

var<private> global3: array<f32, 7> = array<f32, 7>(601f, 2423f, 197f, -177f, -1784f, 479f, 1189f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>) -> vec4<bool> {
    global0 = 55653i;
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(~5951u, 7u)])) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.x)), 388f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, true)))));
    let var_1 = ~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, u_input.b.x), ~u_input.b.x, 1u), ~vec4<u32>(u_input.b.x, _wgslsmith_sub_u32(4294967295u, u_input.b.x), u_input.b.x, 60238u));
    var var_2 = vec2<i32>(1i, 10391i);
    var var_3 = select((true && (-131f < _wgslsmith_f_op_f32(trunc(-2018f)))) | (!all(vec4<bool>(false, false, true, false)) && all(vec4<bool>(false, false, false, true))), true, all(select(vec3<bool>(true, true, true), vec3<bool>(var_2.x != var_2.x, select(false, false, false), true), any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), false)))));
    return vec4<bool>(!any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), false, true, any(vec3<bool>(-179f != arg_0.x, true, all(vec3<bool>(true, false, false)))) | !all(vec2<bool>(true, true)));
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<u32>(u_input.b.x, ~0u, u_input.b.x, ~(~(u_input.b.x ^ 5409u)));
    let var_1 = !vec4<bool>(u_input.a >= _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, -47812i, 32885i), firstTrailingBit(vec3<i32>(u_input.a, u_input.a, 2147483647i))), true, all(select(func_3(vec4<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], -465f, global3[_wgslsmith_index_u32(66748u, 7u)], global3[_wgslsmith_index_u32(13404u, 7u)])), vec4<bool>(true, false, false, false), all(vec4<bool>(true, true, false, true)))), !all(vec4<bool>(true, false, false, false)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(6111u << (u_input.b.x % 32u), _wgslsmith_sub_u32(u_input.b.x, 11158u), ~u_input.b.x), var_0.x | _wgslsmith_mult_u32(78156u, 15755u)), 7u)]));
    global3 = array<f32, 7>();
    var var_2 = Struct_1(2147483647i, _wgslsmith_mult_vec2_u32(u_input.b, min(vec2<u32>(var_0.x ^ 1u, var_0.x), u_input.b)));
    return Struct_1(_wgslsmith_add_i32(_wgslsmith_div_i32(-(~(-37i)), -_wgslsmith_sub_i32(-34273i, u_input.a)), 18249i), countOneBits(~(~(~u_input.b))));
}

fn func_1() -> Struct_2 {
    let var_0 = 22119u;
    var var_1 = func_2();
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -502f));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> f32 {
    global3 = array<f32, 7>();
    let var_0 = arg_2;
    var var_1 = ~115458u;
    let var_2 = Struct_2(1086f);
    let var_3 = vec2<bool>(select(4294967295u, 2074u, true) <= (~u_input.b.x << (firstLeadingBit(8946u) % 32u)), arg_2.a >= arg_0.a);
    return -581f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3[_wgslsmith_index_u32(~(39917u | max(u_input.b.x, u_input.b.x)), 7u)];
    global2 = u_input.b.x >= u_input.b.x;
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(global3[_wgslsmith_index_u32(16882u, 7u)]), 2147483647i, func_1(), u_input.a >> (0u % 32u))))));
    let var_1 = select(!select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), !((~u_input.a >> (u_input.b.x % 32u)) > min(-41136i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 62396i), vec4<i32>(-48515i, u_input.a, 36423i, u_input.a)))));
    var var_2 = func_2();
    global1 = -757f;
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(5875i, u_input.a)), -vec2<i32>(-2147483647i, -1i))), vec4<i32>(func_2().a, -2147483647i, var_2.a, reverseBits(firstLeadingBit(abs(var_2.a)))), -2041f, 19684i, _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(~(~0u), 7u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1299f, 629f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(abs(var_2.b.x), 7u)]), global3[_wgslsmith_index_u32(0u, 7u)]) * vec4<f32>(_wgslsmith_f_op_f32(func_4(func_1(), 2147483647i, Struct_2(var_0.a), u_input.a & -1i)), _wgslsmith_f_op_f32(func_1().a * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 7u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(874f)) + 367f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a * -440f))))));
}

