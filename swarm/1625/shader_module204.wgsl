struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<bool>(true, false, false), 16818u, true), Struct_1(vec3<bool>(true, true, false), 1u, false), Struct_1(vec3<bool>(true, false, true), 34867u, false), Struct_1(vec3<bool>(true, false, false), 0u, false), Struct_1(vec3<bool>(true, true, true), 0u, false), Struct_1(vec3<bool>(false, true, false), 52157u, false), Struct_1(vec3<bool>(false, false, true), 1u, true), Struct_1(vec3<bool>(false, true, true), 4294967295u, true), Struct_1(vec3<bool>(false, true, true), 11512u, true), Struct_1(vec3<bool>(true, false, false), 18248u, false), Struct_1(vec3<bool>(false, true, true), 1u, false), Struct_1(vec3<bool>(false, true, false), 0u, false), Struct_1(vec3<bool>(false, true, true), 39480u, true), Struct_1(vec3<bool>(false, true, true), 4294967295u, true), Struct_1(vec3<bool>(true, false, true), 10893u, false), Struct_1(vec3<bool>(false, true, false), 18986u, false), Struct_1(vec3<bool>(true, false, true), 0u, false), Struct_1(vec3<bool>(false, true, true), 50504u, false), Struct_1(vec3<bool>(true, false, true), 4294967295u, true), Struct_1(vec3<bool>(true, false, false), 104230u, true), Struct_1(vec3<bool>(true, false, true), 16684u, false), Struct_1(vec3<bool>(true, true, true), 1u, true), Struct_1(vec3<bool>(true, false, true), 1u, true), Struct_1(vec3<bool>(true, false, true), 1u, true), Struct_1(vec3<bool>(true, true, false), 1u, true), Struct_1(vec3<bool>(true, true, false), 4294967295u, true), Struct_1(vec3<bool>(false, true, true), 1u, true), Struct_1(vec3<bool>(false, true, false), 32255u, true), Struct_1(vec3<bool>(true, true, true), 7492u, true), Struct_1(vec3<bool>(false, true, true), 20950u, true));

var<private> global1: Struct_1;

var<private> global2: bool;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> f32 {
    global1 = Struct_1(global1.a, ~(abs(u_input.b) & ~53632u), true);
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 30u)];
    let var_1 = global1.a;
    global1 = Struct_1(select(global1.a, vec3<bool>(any(var_1.zy), all(vec2<bool>(false, global1.c)), all(!vec2<bool>(global1.a.x, arg_0))), true), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.d, ~_wgslsmith_div_u32(u_input.b, global1.b), u_input.c & ~52428u), var_0.b >> ((var_0.b >> (0u % 32u)) % 32u)), all(select(!(!vec4<bool>(var_1.x, global1.c, var_0.a.x, arg_0)), !vec4<bool>(var_1.x, true, true, arg_0), vec4<bool>(arg_0, var_1.x, u_input.a.x != u_input.a.x, false))));
    var var_2 = global0[_wgslsmith_index_u32(u_input.d, 30u)];
    return _wgslsmith_f_op_f32(-1546f * -130f);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: bool) -> f32 {
    global0 = array<Struct_1, 30>();
    let var_0 = global0[_wgslsmith_index_u32(reverseBits(u_input.b), 30u)];
    global2 = _wgslsmith_div_i32(u_input.a.x, u_input.e.x) > min(13060i, -2147483647i);
    let var_1 = countOneBits(_wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, 1u, 44776u, 3108u) >> (vec4<u32>(22908u, 0u, arg_1.x, var_0.b) % vec4<u32>(32u)), select(vec4<u32>(4294967295u, 1u, u_input.c, arg_1.x), vec4<u32>(4294967295u, 1u, arg_1.x, 14309u), true)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 71300u, 405u, 49541u), vec4<u32>(u_input.c, 0u, 0u, global1.b)))) | abs(var_0.b);
    global1 = global0[_wgslsmith_index_u32(4294967295u, 30u)];
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(!global1.a.x, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-904f, 1308f))))) + _wgslsmith_f_op_f32(max(-185f, -1447f))), _wgslsmith_f_op_f32(f32(-1f) * -248f), true)), -1260f);
}

fn func_1() -> Struct_1 {
    global1 = Struct_1(vec3<bool>(false, !(1i > _wgslsmith_div_i32(u_input.a.x, -2147483647i)), _wgslsmith_f_op_f32(func_2(!vec2<bool>(global1.c, global1.c), vec2<u32>(1u, u_input.c) & vec2<u32>(59173u, 1825u), global1.c)) <= -932f), _wgslsmith_div_u32(firstTrailingBit(global1.b ^ min(25146u, global1.b)), u_input.b), global1.a.x);
    var var_0 = global0[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(_wgslsmith_add_u32(global1.b << (54163u % 32u), ~69052u), ~firstLeadingBit(u_input.b), 4294967295u) & abs(~_wgslsmith_mult_u32(global1.b, 26654u))), 30u)];
    global1 = Struct_1(vec3<bool>(true, u_input.b != 6842u, all(select(global1.a, vec3<bool>(var_0.c, false, global1.c), global1.a.x)) && (global1.c || true)), select(min(~global1.b & ~u_input.d, u_input.c ^ 44129u), u_input.d, all(vec3<bool>(global1.a.x, global1.a.x, true))), !(!any(vec4<bool>(true, true, true, true))));
    var var_1 = global0[_wgslsmith_index_u32(2438u, 30u)];
    var_1 = global0[_wgslsmith_index_u32(1u, 30u)];
    return global0[_wgslsmith_index_u32(~27312u, 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.x;
    global1 = func_1();
    var var_1 = !select(vec4<bool>(global1.c, true, true, !(!global1.a.x)), select(!vec4<bool>(true, global1.a.x, global1.c, true), !select(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), vec4<bool>(global1.a.x, global1.a.x, global1.c, false), global1.c), any(global1.a) && any(vec4<bool>(true, global1.c, global1.a.x, false))), select(select(vec4<bool>(global1.a.x, global1.c, global1.a.x, global1.c), select(vec4<bool>(global1.a.x, global1.a.x, global1.c, global1.a.x), vec4<bool>(false, global1.a.x, global1.c, true), vec4<bool>(global1.a.x, true, false, global1.a.x)), true), !(!vec4<bool>(true, global1.a.x, true, true)), !select(vec4<bool>(global1.c, global1.c, global1.c, true), vec4<bool>(global1.a.x, true, true, global1.c), vec4<bool>(global1.a.x, false, global1.c, global1.c))));
    let var_2 = u_input.e.x;
    global2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(613f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(148f, 1120f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1763f, -1454f, var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1909f)), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mult_i32(21735i, u_input.a.x)), reverseBits(-55505i), -select(var_2, -46795i, var_1.x), i32(-1i) * -u_input.a.x), ~vec4<i32>(u_input.e.x, -5569i, ~u_input.a.x, -12829i)));
}

