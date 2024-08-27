struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(true, false, true, true, false, true, false, true, false, false, false, true, true, true, false, true, false, false, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_2) -> i32 {
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    return arg_0.b;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>) -> u32 {
    var var_0 = arg_1.x;
    return ~u_input.c.x;
}

fn func_1(arg_0: i32) -> bool {
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-829f, -1000f)))), vec4<bool>(select(!global0[_wgslsmith_index_u32(1u, 19u)], any(vec2<bool>(false, true)), global0[_wgslsmith_index_u32(46397u, 19u)]), true, all(vec4<bool>(global0[_wgslsmith_index_u32(65224u, 19u)], false, global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(u_input.c.x, 19u)])), all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 19u)], true)))), vec3<i32>(abs(func_2(Struct_2(Struct_1(vec2<f32>(2344f, 951f), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)], false, global0[_wgslsmith_index_u32(u_input.a, 19u)])), u_input.e.x, true, Struct_1(vec2<f32>(488f, 327f), vec4<bool>(global0[_wgslsmith_index_u32(0u, 19u)], false, global0[_wgslsmith_index_u32(108329u, 19u)], true)), -438f))), _wgslsmith_add_i32(firstLeadingBit(u_input.d.x), func_2(Struct_2(Struct_1(vec2<f32>(441f, -174f), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)], false)), 21637i, false, Struct_1(vec2<f32>(1207f, 901f), vec4<bool>(global0[_wgslsmith_index_u32(10072u, 19u)], true, true, false)), -490f))), _wgslsmith_sub_i32(u_input.b >> (1u % 32u), 7063i)) << (~vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, u_input.a), 69383u, ~u_input.c.x) % vec3<u32>(32u)), firstTrailingBit(vec4<u32>(func_3(vec2<f32>(-1599f, 128f), vec3<i32>(2147483647i, u_input.d.x, -12096i)) | ~14063u, 9036u, 1u, firstTrailingBit(1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-575f, 1724f)) - _wgslsmith_div_f32(-2144f, -741f)) - 397f)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<f32>(487f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-336f, 432f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1468f), 496f))), vec4<bool>(!select(func_1(u_input.e.x), true, false), global0[_wgslsmith_index_u32(u_input.a, 19u)], all(vec4<bool>(func_1(u_input.e.x), false, u_input.a > 1u, true)), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(countOneBits(u_input.a), 4294967295u), 19u)]));
    let var_1 = u_input.d.x;
    let var_2 = _wgslsmith_mult_vec4_u32(u_input.c, ~(~select(vec4<u32>(u_input.a, u_input.c.x, 10720u, 44111u), vec4<u32>(u_input.a, 1u, u_input.a, u_input.c.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 19u)], false, true, true))) >> (~vec4<u32>(u_input.c.x, 14103u, 1u, max(u_input.a, 4294967295u)) % vec4<u32>(32u)));
    let var_3 = vec3<bool>(876f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a.x)) + _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x))), !(!global0[_wgslsmith_index_u32(2576u, 19u)]), true);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_i32(-(~vec2<i32>(1i, 36632i)), vec2<i32>(2147483647i, var_1)), var_0.a, u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-582f, _wgslsmith_f_op_f32(trunc(var_0.a.x)))))) - var_0.a.x));
}

