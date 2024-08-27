struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

var<private> global1: array<i32, 22> = array<i32, 22>(i32(-2147483648), 17158i, 0i, -36212i, 1i, -1i, -12527i, 52899i, -11595i, -19647i, 1i, -1i, -1i, 25038i, 1722i, 1i, 29592i, 0i, 1i, -6944i, -35726i, -3147i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec3<bool>, 19>();
    return Struct_1(arg_2.c, arg_0.x, _wgslsmith_f_op_f32(-arg_2.c));
}

fn func_3() -> vec3<i32> {
    let var_0 = 4294967295u;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -519f))))), _wgslsmith_f_op_f32(-250f * -1696f));
    var var_2 = func_1(vec3<bool>(!select(true, global1[_wgslsmith_index_u32(5870u, 22u)] < -22149i, true), select(false, true, _wgslsmith_f_op_f32(-var_1.x) <= var_1.x), !(_wgslsmith_f_op_f32(f32(-1f) * -1383f) >= _wgslsmith_f_op_f32(-var_1.x))), func_1(select(global0[_wgslsmith_index_u32(u_input.a >> (46013u % 32u), 19u)], !global0[_wgslsmith_index_u32(u_input.a, 19u)], false), true, func_1(vec3<bool>(false, false, false), true, Struct_1(1193f, false, 304f))).b & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(350f - var_1.x)) > -1042f), Struct_1(var_1.x, true, _wgslsmith_f_op_f32(-var_1.x)));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.a + var_1.x), var_1.x));
    let var_3 = _wgslsmith_sub_vec3_i32(u_input.c, ~u_input.c << ((countOneBits(firstTrailingBit(vec3<u32>(40042u, u_input.a, u_input.a))) ^ reverseBits(abs(vec3<u32>(1u, 1u, 7146u)))) % vec3<u32>(32u)));
    return u_input.c;
}

fn func_2() -> f32 {
    global0 = array<vec3<bool>, 19>();
    var var_0 = ~func_3();
    var var_1 = ~(~reverseBits(firstTrailingBit(vec3<u32>(0u, u_input.a, 37904u)) << (~vec3<u32>(8495u, 22485u, u_input.a) % vec3<u32>(32u))));
    let var_2 = ~vec4<i32>(_wgslsmith_add_i32(max(i32(-1i) * -1i, u_input.b.x), u_input.c.x), firstTrailingBit(-2147483647i ^ global1[_wgslsmith_index_u32(~u_input.a, 22u)]), var_0.x, -(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_0.x, -1i, 0i), vec4<i32>(-2147483647i, var_0.x, 0i, global1[_wgslsmith_index_u32(u_input.a, 22u)]))));
    let var_3 = 1i;
    return 679f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 22>();
    let var_0 = vec2<u32>(u_input.a | u_input.a, 32947u);
    let var_1 = func_1(!vec3<bool>(false, (u_input.b.x > u_input.c.x) & true, all(global0[_wgslsmith_index_u32(~u_input.a, 19u)])), false, Struct_1(499f, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-303f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(970f + -184f)))));
    global1 = array<i32, 22>();
    global0 = array<vec3<bool>, 19>();
    global1 = array<i32, 22>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * var_1.c)))), var_1.c, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(158f, var_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(var_2.wx)), 1f);
}

