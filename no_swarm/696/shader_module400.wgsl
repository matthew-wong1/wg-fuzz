struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(-675f, -104f, -1537f, -1453f, 794f, -1027f, -453f, 1000f, 732f, 1145f, -378f, 410f, 1000f, -1595f, 1663f, 210f, 276f, 731f, 1029f, -554f, -1583f, -636f, 1004f, -987f, -1000f, -523f, -530f, -1354f);

var<private> global1: Struct_3 = Struct_3(vec2<u32>(0u, 0u), Struct_1(vec2<f32>(227f, -188f), vec2<f32>(-285f, 1478f), vec3<f32>(-1455f, 1515f, -618f)), 2649f);

var<private> global2: array<bool, 19>;

var<private> global3: vec2<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: vec3<bool>) -> bool {
    return true;
}

fn func_3(arg_0: bool) -> vec4<bool> {
    global0 = array<f32, 28>();
    let var_0 = Struct_2(false, global1.b);
    let var_1 = !select(!select(!vec3<bool>(global2[_wgslsmith_index_u32(5337u, 19u)], false, arg_0), select(vec3<bool>(true, false, var_0.a), vec3<bool>(var_0.a, var_0.a, arg_0), false), select(vec3<bool>(global2[_wgslsmith_index_u32(global3.x, 19u)], false, var_0.a), vec3<bool>(true, true, false), vec3<bool>(var_0.a, global2[_wgslsmith_index_u32(global3.x, 19u)], false))), vec3<bool>(global2[_wgslsmith_index_u32(13732u, 19u)], false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, func_2(-1i, vec3<bool>(global2[_wgslsmith_index_u32(global3.x, 19u)], arg_0, arg_0), vec3<bool>(arg_0, false, true)), var_0.a), !(!arg_0)));
    global0 = array<f32, 28>();
    let var_2 = global1.a.x;
    return !vec4<bool>(true, var_1.x, false, false);
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(global1.a.x), 28u)]) + 1000f);
    global3 = global1.a;
    let var_1 = u_input.a.x;
    let var_2 = !all(func_3(func_2(~(-33642i), select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(58953u, 19u)]), vec3<bool>(global2[_wgslsmith_index_u32(23231u, 19u)], global2[_wgslsmith_index_u32(global3.x, 19u)], true), vec3<bool>(global2[_wgslsmith_index_u32(18392u, 19u)], global2[_wgslsmith_index_u32(global3.x, 19u)], false)), select(vec3<bool>(false, global2[_wgslsmith_index_u32(47249u, 19u)], global2[_wgslsmith_index_u32(global3.x, 19u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(global3.x, 19u)], global2[_wgslsmith_index_u32(global1.a.x, 19u)]), vec3<bool>(global2[_wgslsmith_index_u32(global3.x, 19u)], global2[_wgslsmith_index_u32(45781u, 19u)], false)))));
    var var_3 = global3.x;
    return vec2<u32>(countOneBits(_wgslsmith_sub_u32(countOneBits(3394u), firstLeadingBit(~0u))), ~(~86456u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, global3.x, global3.x, global3.x) ^ vec4<u32>(1u, global3.x, 83254u, 56682u), vec4<u32>(global3.x, 1245u, 26157u, global1.a.x) ^ vec4<u32>(4612u, global3.x, 4294967295u, global3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1440f;
    var var_1 = Struct_3(_wgslsmith_div_vec2_u32(abs(global1.a), func_1()), global1.b, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(37225u, 28u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0, var_0)), global0[_wgslsmith_index_u32(global3.x, 28u)]))));
    global1 = Struct_3(var_1.a, Struct_1(vec2<f32>(var_1.b.a.x, -1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-750f, _wgslsmith_f_op_f32(-global1.b.a.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, 997f))), global1.b.c), global1.c);
    let var_2 = vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(-u_input.a.x, 1i), 2147483647i, 1i);
    var var_3 = var_1.b;
    var var_4 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(87121u), global3.x), 19u)], var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~4294967295u), global1.a.x, global3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(804f)) + _wgslsmith_f_op_f32(626f + global1.b.b.x)), var_0, _wgslsmith_f_op_f32(-var_1.b.c.x), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_f_op_f32(f32(-1f) * -735f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(295f, -771f, -1087f, -563f), vec4<f32>(global0[_wgslsmith_index_u32(var_1.a.x, 28u)], -779f, -1000f, 1578f))) - vec4<f32>(1758f, 1871f, _wgslsmith_f_op_f32(sign(var_1.b.b.x)), _wgslsmith_f_op_f32(-global1.c)))), _wgslsmith_f_op_f32(var_4.b.a.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(381f * 1000f)))))), ~global3.x);
}

