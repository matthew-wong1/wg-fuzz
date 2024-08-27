struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 20>;

var<private> global2: bool;

var<private> global3: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-387f, -1132f), vec2<f32>(-1498f, -1451f), vec2<f32>(293f, 857f), vec2<f32>(-1487f, -114f), vec2<f32>(-1000f, 573f), vec2<f32>(-1000f, -731f), vec2<f32>(-1712f, 1140f), vec2<f32>(-1317f, -704f), vec2<f32>(-814f, 1669f), vec2<f32>(-466f, 1103f), vec2<f32>(463f, -1568f), vec2<f32>(-2624f, 237f), vec2<f32>(-481f, 1325f), vec2<f32>(-2248f, 1759f), vec2<f32>(342f, -1314f), vec2<f32>(1000f, -310f), vec2<f32>(-2096f, -1618f), vec2<f32>(-470f, -108f), vec2<f32>(1316f, 1648f));

var<private> global4: u32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2() -> bool {
    let var_0 = vec3<bool>(true, global0.a, all(vec3<bool>(true, true, !(!global0.a))));
    global3 = array<vec2<f32>, 19>();
    var var_1 = select(vec4<u32>(u_input.d, ~max(~71718u, 0u), ~u_input.c.x, ~11330u), ~((_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.c.x, 4294967295u), vec4<u32>(1u, 31962u, 0u, u_input.c.x)) << (vec4<u32>(61833u, 0u, u_input.b, u_input.b) % vec4<u32>(32u))) << (max(vec4<u32>(1u, 0u, 0u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 1u, 57424u), vec4<u32>(1874u, u_input.d, 25189u, u_input.c.x))) % vec4<u32>(32u))), vec4<bool>(false, true, global0.a, global0.a));
    var var_2 = global1[_wgslsmith_index_u32(15975u, 20u)] >> (0u % 32u);
    global3 = array<vec2<f32>, 19>();
    return any(select(vec3<bool>(true || global0.a, true, var_0.x), select(var_0, !vec3<bool>(var_0.x, var_0.x, true), global0.b >= (1i ^ global0.b)), var_0));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    var var_0 = 1103f;
    var var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(abs(vec2<i32>(10347i, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, u_input.b, u_input.d), 20u)])), u_input.e.ww), vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -73011i, reverseBits(-21981i)) | (_wgslsmith_mult_i32(u_input.e.x, u_input.a) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.b, 0u), vec3<u32>(u_input.c.x, u_input.b, u_input.d)) % 32u)), global1[_wgslsmith_index_u32(min(_wgslsmith_div_u32(4294967295u, ~0u), ~u_input.c.x), 20u)]));
    let var_2 = Struct_2(false, 2147483647i);
    var var_3 = Struct_1(vec2<bool>(var_2.a, arg_0.x));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -899f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(206f * 1151f), _wgslsmith_f_op_f32(min(827f, 317f)), false)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + -368f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1338f))))));
    return global0.a | select(any(vec4<bool>(true, false, true, arg_1.a.x)) | any(select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(var_2.a, var_2.a), arg_0)), false, arg_0.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> f32 {
    global1 = array<i32, 20>();
    global2 = !(!func_2() == func_3(vec2<bool>(global0.a, true), Struct_1(vec2<bool>(global0.a, global0.a)))) | func_3(!(!select(vec2<bool>(global0.a, global0.a), vec2<bool>(false, true), vec2<bool>(true, global0.a))), Struct_1(!vec2<bool>(false, global0.a)));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(global3[_wgslsmith_index_u32(~(~(~abs(u_input.d))), 19u)], global3[_wgslsmith_index_u32(~u_input.b & countOneBits(0u), 19u)]);
    global0 = Struct_2(true, -global0.b);
    global1 = array<i32, 20>();
    global3 = array<vec2<f32>, 19>();
    let var_1 = ~reverseBits(34055i);
    global4 = ~(~(~93459u));
    var var_2 = Struct_1(select(vec2<bool>(-238f <= _wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.d, u_input.d, 1u), 23524i)), global0.a), vec2<bool>(false, true), vec2<bool>(func_2(), true)));
    let var_3 = _wgslsmith_f_op_f32(1057f * -879f) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -533f), _wgslsmith_f_op_f32(abs(var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.wyx, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1093f, var_0.x, -524f, 450f) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, 685f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 2031f))), !var_3)), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.x, 569f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(391f + 587f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x - -1718f)))))), vec3<i32>(abs(-2147483647i), global1[_wgslsmith_index_u32(60331u >> (_wgslsmith_sub_u32(firstTrailingBit(2569u), u_input.b) % 32u), 20u)], _wgslsmith_sub_i32(-_wgslsmith_sub_i32(var_1, global1[_wgslsmith_index_u32(19257u, 20u)]), ~1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_0.x, -1000f), var_0.x) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0) + var_0) * _wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.d), 19u)] + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - var_0)))));
}

