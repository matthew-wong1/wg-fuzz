struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(21998u, 12644u), vec2<u32>(14094u, 32323u), vec2<u32>(0u, 1u), vec2<u32>(0u, 3916u), vec2<u32>(0u, 80147u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 11454u), vec2<u32>(1u, 0u), vec2<u32>(98271u, 0u), vec2<u32>(30283u, 1u), vec2<u32>(17184u, 17865u), vec2<u32>(0u, 41407u), vec2<u32>(1u, 74068u), vec2<u32>(0u, 26951u), vec2<u32>(77502u, 4294967295u), vec2<u32>(4294967295u, 56064u), vec2<u32>(0u, 40164u), vec2<u32>(93780u, 4294967295u), vec2<u32>(0u, 51354u), vec2<u32>(8877u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(53266u, 4294967295u));

var<private> global1: array<i32, 6>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool) -> i32 {
    let var_0 = select(vec4<u32>(max(u_input.a.x, ~_wgslsmith_sub_u32(arg_0.x, 1u)), abs(_wgslsmith_sub_u32(4294967295u, u_input.a.x)), ~(~1u), ~(~u_input.a.x & max(18481u, 7741u))), ~abs(vec4<u32>(61662u, 0u, reverseBits(5501u), u_input.a.x)), any(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, arg_1), false), select(select(vec3<bool>(true, true, arg_1), vec3<bool>(true, false, arg_1), vec3<bool>(true, arg_1, arg_1)), !vec3<bool>(false, true, arg_1), vec3<bool>(true, arg_1, arg_1)))));
    let var_1 = var_0;
    var var_2 = !arg_1;
    let var_3 = vec3<bool>(!arg_1, true, !(true || !(!arg_1)));
    var var_4 = Struct_2(~(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 63372i, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(10899u, 6u)]), vec4<i32>(0i, 14550i, -16248i, 2147483647i)))), -494f);
    return _wgslsmith_mod_i32(0i, var_4.a.x);
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_4(~(~_wgslsmith_div_u32(u_input.a.x, ~u_input.a.x)));
    return Struct_2(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(func_3(vec3<u32>(var_0.a, u_input.a.x, u_input.a.x), false), countOneBits(global1[_wgslsmith_index_u32(var_0.a, 6u)]), -1i, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(42007u, 6u)])), vec4<i32>(global1[_wgslsmith_index_u32(1u, 6u)], -22614i, reverseBits(1i), global1[_wgslsmith_index_u32(4991u, 6u)])), -33352i, ~_wgslsmith_clamp_i32(~(-2147483647i), ~global1[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(0u, 6u)], 2147483647i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(global1[_wgslsmith_index_u32(41428u, 6u)], global1[_wgslsmith_index_u32(var_0.a, 6u)]), -(~vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], 0i)))), _wgslsmith_f_op_f32(f32(-1f) * -389f));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    global1 = array<i32, 6>();
    global1 = array<i32, 6>();
    global0 = array<vec2<u32>, 23>();
    var var_0 = func_2(select(arg_0.yx, !arg_0.zw, !arg_0.yx));
    return Struct_2(firstTrailingBit(func_2(select(arg_0.yz, !vec2<bool>(arg_1, arg_0.x), false)).a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_0.b, -1248f)))) + arg_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 23>();
    var var_0 = func_1(vec4<bool>(true, true & all(vec4<bool>(false, false, false, true)), !any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))), true), _wgslsmith_f_op_f32(min(-905f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-786f, -944f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(220f + 1165f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-550f)))), Struct_2(~vec4<i32>(min(global1[_wgslsmith_index_u32(10563u, 6u)], -11194i), i32(-1i) * -17552i, min(2147483647i, global1[_wgslsmith_index_u32(20706u, 6u)]), reverseBits(2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(239f))))));
    let var_1 = var_0.b;
    let var_2 = true & !(!all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))));
    var var_3 = Struct_4(~17933u);
    var var_4 = _wgslsmith_f_op_f32(min(var_0.b, var_0.b));
    var var_5 = Struct_3(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 32583u, var_3.a), vec3<u32>(var_3.a, var_3.a, 23683u)) & 1u), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(17673i, 0i, global1[_wgslsmith_index_u32(0u, 6u)]), firstTrailingBit(var_0.a.yxw)) | 2147483647i, var_0.a.x >> (_wgslsmith_mod_u32(~var_3.a, ~39424u) % 32u), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(var_3.a, 6u)] & var_0.a.x, ~var_0.a.x >> (abs(u_input.a.x) % 32u)), 37588i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))), func_1(select(select(select(vec4<bool>(var_2, true, var_2, false), vec4<bool>(false, true, false, var_2), var_2), vec4<bool>(var_2, true, false, true), select(vec4<bool>(var_2, var_2, true, var_2), vec4<bool>(var_2, true, false, true), vec4<bool>(var_2, var_2, true, var_2))), select(!vec4<bool>(true, true, var_2, var_2), select(vec4<bool>(false, false, var_2, false), vec4<bool>(true, var_2, var_2, var_2), var_2), !vec4<bool>(true, var_2, false, var_2)), select(vec4<bool>(false, var_2, false, var_2), vec4<bool>(false, var_2, var_2, true), true)), false, func_2(select(vec2<bool>(false, var_2), !vec2<bool>(var_2, var_2), !var_2))));
    let var_6 = Struct_1(var_0.a.xwy, var_0.b, true, vec2<bool>(!(var_5.d.b < _wgslsmith_f_op_f32(var_0.b + -1616f)), true), false);
    var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + var_0.b) + 1f);
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

