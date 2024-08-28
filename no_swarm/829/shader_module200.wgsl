struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(i32(-2147483648), vec4<f32>(912f, -601f, -367f, 2034f), vec4<bool>(true, false, true, false), true), Struct_1(6327i, vec4<f32>(270f, 670f, 741f, -1161f), vec4<bool>(false, false, true, true), true), Struct_1(85238i, vec4<f32>(583f, 373f, -1262f, 482f), vec4<bool>(false, false, true, false), true), Struct_1(-1i, vec4<f32>(508f, 492f, 237f, -1234f), vec4<bool>(false, false, false, true), true), Struct_1(-21045i, vec4<f32>(2124f, -1888f, 916f, 342f), vec4<bool>(true, false, true, false), false), Struct_1(-33333i, vec4<f32>(-477f, 324f, 520f, 2165f), vec4<bool>(true, false, false, true), true), Struct_1(-48024i, vec4<f32>(3000f, -1515f, 286f, 586f), vec4<bool>(true, true, false, true), false));

var<private> global3: array<Struct_1, 19>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec3<i32>) -> bool {
    global0 = array<bool, 28>();
    global2 = array<Struct_1, 7>();
    global2 = array<Struct_1, 7>();
    var var_0 = 0u;
    var var_1 = _wgslsmith_f_op_f32(ceil(-1324f));
    return global0[_wgslsmith_index_u32(1u, 28u)];
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0;
    global0 = array<bool, 28>();
    global3 = array<Struct_1, 19>();
    let var_1 = _wgslsmith_add_i32(~arg_0.b.a, i32(-1i) * -27534i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1855f)))));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-383f)) + 684f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    global0 = array<bool, 28>();
    let var_2 = Struct_1(2147483647i, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1, -639f, _wgslsmith_f_op_f32(func_3(Struct_2(vec2<u32>(72953u, u_input.a), global2[_wgslsmith_index_u32(u_input.a, 7u)]))), 112f))), select(vec4<bool>(false, func_1(vec2<f32>(475f, 2935f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(645f, var_1)), -vec3<i32>(arg_1.x, 0i, arg_1.x)), any(!vec2<bool>(arg_0, arg_0)), _wgslsmith_dot_vec4_i32(vec4<i32>(26139i, 1i, arg_1.x, arg_1.x), vec4<i32>(arg_1.x, arg_1.x, 58221i, 7665i)) >= -arg_1.x), !vec4<bool>(arg_0, arg_0, select(global0[_wgslsmith_index_u32(13657u, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)], true), true), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], true, true, arg_0), vec4<bool>(false, arg_0, false, false), false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)], arg_0, arg_0), any(vec4<bool>(false, arg_0, true, false))), !select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(false, arg_0, global0[_wgslsmith_index_u32(u_input.a, 28u)], arg_0), vec4<bool>(global0[_wgslsmith_index_u32(0u, 28u)], arg_0, false, global0[_wgslsmith_index_u32(0u, 28u)])), select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 28u)], arg_0, arg_0, false), vec4<bool>(arg_0, global0[_wgslsmith_index_u32(u_input.a, 28u)], arg_0, true), global0[_wgslsmith_index_u32(3946u, 28u)]), vec4<bool>(arg_0, arg_0, true, false), any(vec3<bool>(true, true, true))))), global0[_wgslsmith_index_u32(abs(u_input.a), 28u)]);
    let var_3 = arg_1.x;
    return _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x * var_1) - -373f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - var_1), _wgslsmith_div_f32(var_2.b.x, var_0))), _wgslsmith_f_op_f32(var_0 - -1379f), _wgslsmith_f_op_f32(select(var_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -759f) - _wgslsmith_f_op_f32(select(var_2.b.x, var_0, var_2.c.x))), !(var_2.d | var_2.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, !global0[_wgslsmith_index_u32(abs(~(~u_input.a)), 28u)], all(!vec4<bool>(false, all(vec3<bool>(global0[_wgslsmith_index_u32(38096u, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)], false)), 45770u < u_input.a, func_1(vec2<f32>(1667f, -1000f), vec2<f32>(201f, -1606f), vec3<i32>(13677i, -49992i, 1i)))), global0[_wgslsmith_index_u32(~firstTrailingBit(reverseBits(u_input.a)), 28u)] & true);
    let var_1 = _wgslsmith_clamp_u32(min(4294967295u, ~u_input.a) ^ firstTrailingBit(u_input.a), 33184u, u_input.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-981f))), _wgslsmith_f_op_f32(abs(-1528f)), _wgslsmith_f_op_f32(floor(-111f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(false, vec2<i32>(26697i, 2208i) << (vec2<u32>(22678u, u_input.a) % vec2<u32>(32u))))));
    var var_3 = !(!any(!var_0.zyx));
    var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u | var_1, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_1, 42662u), ~1u, 68580u), 0u, var_1), 1u), _wgslsmith_f_op_f32(-var_2.x), ~_wgslsmith_div_u32(u_input.a, ~_wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a)), countOneBits(20549i));
}

