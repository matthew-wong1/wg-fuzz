struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-695f, -1697f, -265f, -539f), vec4<f32>(-1000f, -1401f, -1547f, 224f), vec4<f32>(-773f, 572f, -1221f, 994f), vec4<f32>(179f, -424f, 1592f, -1394f), vec4<f32>(-762f, -1243f, 505f, 1760f), vec4<f32>(-211f, 908f, -1000f, -1382f), vec4<f32>(-445f, 197f, -647f, -1000f), vec4<f32>(3456f, 1267f, -644f, 637f), vec4<f32>(-1096f, -1199f, -1210f, -632f), vec4<f32>(-1227f, -137f, 322f, -1724f), vec4<f32>(-704f, -526f, 793f, 666f), vec4<f32>(160f, -1000f, -357f, -1623f), vec4<f32>(1465f, -1537f, 322f, -579f), vec4<f32>(-990f, -885f, -224f, -1727f), vec4<f32>(-592f, 2204f, -127f, -1775f));

var<private> global1: array<vec2<f32>, 2>;

var<private> global2: array<u32, 19>;

var<private> global3: vec4<u32>;

var<private> global4: array<vec4<f32>, 3>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(144f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(912f - -877f))))));
}

fn func_3(arg_0: i32) -> f32 {
    global2 = array<u32, 19>();
    global4 = array<vec4<f32>, 3>();
    global3 = reverseBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(13280u, global3.x, ~4294967295u, firstTrailingBit(u_input.a.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 73433u, global2[_wgslsmith_index_u32(global3.x, 19u)]), vec4<u32>(global2[_wgslsmith_index_u32(global3.x, 19u)], 92256u, u_input.a.x, global2[_wgslsmith_index_u32(12975u, 19u)]))), min(u_input.a.x, 4294967295u), global3.x, ~global3.x));
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(432f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-413f, _wgslsmith_f_op_f32(653f + -444f), true))), -646f));
    global0 = array<vec4<f32>, 15>();
    return _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1245f))))));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<bool>) -> vec2<bool> {
    global1 = array<vec2<f32>, 2>();
    global2 = array<u32, 19>();
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(238f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), -1272f, -131f), global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(select(global3.x, 0u, arg_0.a.x) >> (u_input.a.x % 32u), 19u)], 15u)])), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(4294967295u, global3.x, 40644u, 29637u)), ~vec4<u32>(35322u, u_input.a.x, global3.x, global2[_wgslsmith_index_u32(1u, 19u)])), ~(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global3.x, 19u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.x, 19u)], 19u)]) << (vec4<u32>(global3.x, global2[_wgslsmith_index_u32(1u, 19u)], 32657u, u_input.a.x) % vec4<u32>(32u)))), 15u)] * _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(~(~1u), 15u)]))));
    return select(vec2<bool>(arg_0.a.x, !arg_0.a.x && (!arg_0.a.x & arg_1.x)), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.c))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), false), vec2<bool>(!all(!vec3<bool>(false, arg_0.a.x, arg_0.a.x)), !any(!arg_1.xx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_u32(min(select(global3.yx, ~(~vec2<u32>(u_input.a.x, 7952u)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false), func_1(Struct_4(vec2<bool>(true, true)), vec4<bool>(true, false, true, true)))), u_input.a.xy), global3.xy);
    var var_1 = global0[_wgslsmith_index_u32(max(max(1u, firstTrailingBit(var_0.x & u_input.a.x)), 1u), 15u)];
    var var_2 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(abs(var_1.x))))));
    let var_3 = Struct_3(u_input.b, Struct_1(~_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.c, -61565i)), vec2<i32>(u_input.c, 26271i)), 578f, select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, false)), vec2<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(false, true, false, true))), any(vec2<bool>(false, false))), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -631f)) - vec2<f32>(-553f, var_1.x)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_3.c)));
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, u_input.a, ~(~max(4294967295u, countOneBits(1786u))), countOneBits(abs(vec4<u32>(global3.x, global2[_wgslsmith_index_u32(1u, 19u)], global3.x, u_input.a.x) >> ((vec4<u32>(global2[_wgslsmith_index_u32(1u, 19u)], 1u, 4294967295u, 13984u) >> (vec4<u32>(var_0.x, global3.x, global3.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_f32(func_3(var_3.a | -1i)))));
}

