struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2 = Struct_2(-31960i, vec2<f32>(-1383f, 382f), Struct_1(vec4<u32>(1u, 1u, 11992u, 110492u), vec4<u32>(0u, 0u, 4294967295u, 0u), vec3<i32>(-1i, i32(-2147483648), 0i)), vec4<f32>(1000f, -1889f, 567f, -1000f));

var<private> global2: array<bool, 10> = array<bool, 10>(false, false, false, true, true, false, true, true, false, false);

var<private> global3: bool;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec3<i32>) -> Struct_1 {
    global3 = false;
    let var_0 = 23988i;
    global2 = array<bool, 10>();
    let var_1 = global1.d.xxy;
    let var_2 = global1.c;
    return global1.c;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> i32 {
    global0 = 1967f;
    let var_0 = -34708i;
    let var_1 = 35005u;
    let var_2 = Struct_2(~_wgslsmith_mod_i32(-48003i, arg_2.c.x), _wgslsmith_div_vec2_f32(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, arg_0.x), arg_0))), arg_2, _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) + 1307f), _wgslsmith_f_op_f32(floor(-2259f)), 1031f), global1.d));
    global3 = false;
    return 1i;
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = -1289f;
    global2 = array<bool, 10>();
    let var_1 = !(!any(select(vec4<bool>(global2[_wgslsmith_index_u32(arg_0.c.b.x, 10u)], global2[_wgslsmith_index_u32(54685u, 10u)], global2[_wgslsmith_index_u32(global1.c.b.x, 10u)], true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 10u)], false, false, true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], true, false, true))) || true);
    var var_2 = false;
    var var_3 = Struct_2(abs(_wgslsmith_mod_i32(1i, -48754i)), arg_0.d.zy, func_1(-51772i, -2147483647i, arg_0.c.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1031f, -1890f, global1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)))));
    return 12464i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(global1.d.wyw));
    let var_1 = abs(vec4<i32>(-1i, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global1.b.x))), 17789u, func_1(4164i, 0i, min(global1.c.c, global1.c.c))), firstLeadingBit(reverseBits(global1.c.c.x)), reverseBits(-1i)));
    global2 = array<bool, 10>();
    let var_2 = vec3<i32>(func_3(Struct_2(var_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.x, var_0.x))), func_1(var_1.x, var_1.x, _wgslsmith_mod_vec3_i32(vec3<i32>(0i, global1.c.c.x, 39500i), var_1.xxx)), _wgslsmith_f_op_vec4_f32(vec4<f32>(643f, 2127f, 1928f, 1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-445f, 197f, global1.b.x, 958f))))), 1i, -_wgslsmith_add_i32(~var_1.x, _wgslsmith_dot_vec2_i32(func_1(-2147483647i, global1.a, var_1.zzz).c.zx, max(global1.c.c.xy, global1.c.c.xy))));
    global2 = array<bool, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, 1i);
}

