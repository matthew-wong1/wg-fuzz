struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7>;

var<private> global1: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global2: vec4<i32> = vec4<i32>(-13122i, i32(-2147483648), 2147483647i, 0i);

var<private> global3: Struct_1 = Struct_1(0i, vec3<f32>(590f, -570f, 2210f), vec4<u32>(38850u, 1u, 22706u, 4294967295u));

var<private> global4: Struct_1 = Struct_1(35042i, vec3<f32>(-1556f, 200f, 978f), vec4<u32>(0u, 4294967295u, 56319u, 4294967295u));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> vec4<u32> {
    global3 = Struct_1(-1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.b.x, 960f, global4.b.x), _wgslsmith_f_op_vec3_f32(global4.b - vec3<f32>(global4.b.x, -1039f, -1027f)), arg_3.a.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.b))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.b) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(563f, -516f, arg_0))))), reverseBits(_wgslsmith_div_vec4_u32(global3.c, vec4<u32>(1u, 1u, select(arg_2, 85124u, true), arg_2))));
    var var_0 = max(vec4<i32>(select(firstLeadingBit(arg_1) | -2147483647i, arg_1, true), global2.x, 2147483647i, ~(-min(global3.a, global2.x))), reverseBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, global2.x, 0i, arg_1), vec4<i32>(abs(global2.x), -1i, 13315i, arg_1 & global2.x))));
    global2 = vec4<i32>(-(i32(-1i) * -(i32(-1i) * -1i)), max(-_wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_1, 0i), var_0.zz, arg_3.a.x), _wgslsmith_div_vec2_i32(u_input.a.zy, vec2<i32>(u_input.a.x, -2147483647i))), global4.a), ~_wgslsmith_dot_vec3_i32((vec3<i32>(-1i, -2147483647i, 1i) << (vec3<u32>(global1.x, 4294967295u, 4294967295u) % vec3<u32>(32u))) << (vec3<u32>(arg_2, 30578u, global1.x) % vec3<u32>(32u)), vec3<i32>(global2.x ^ 14855i, -u_input.a.x, -15674i)), 11938i);
    var var_1 = _wgslsmith_add_u32(~1u, _wgslsmith_div_u32(firstTrailingBit(~42824u), ~_wgslsmith_add_u32(min(arg_2, 0u), arg_2)));
    let var_2 = Struct_1(global4.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(650f, global3.b.x, 782f) + _wgslsmith_f_op_vec3_f32(-global3.b))), ~(~(~global3.c & vec4<u32>(6856u, 4294967295u, 78197u, global1.x))));
    return ~global3.c;
}

fn func_2() -> Struct_1 {
    let var_0 = 1183f;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1646f))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global3.b.zx), global4.b.xx, vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b.x, 647f) - global3.b.zx))));
    let var_3 = global3.b.x;
    global3 = Struct_1(~(-12917i), global4.b, _wgslsmith_mod_vec4_u32(~func_3(_wgslsmith_f_op_f32(f32(-1f) * -396f), -5556i, firstLeadingBit(global1.x), Struct_2(vec3<bool>(true, false, true))), min(global3.c, vec4<u32>(global4.c.x, ~4294967295u, global4.c.x, ~global4.c.x))));
    return Struct_1(-2147483647i, global3.b, ~_wgslsmith_mod_vec4_u32(firstLeadingBit(global4.c), _wgslsmith_div_vec4_u32(global3.c, ~global3.c)));
}

fn func_1() -> Struct_2 {
    global4 = func_2();
    global1 = abs(vec2<u32>(global3.c.x, global4.c.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(15405u, global1.x, 4294967295u, 52395u) >> (global4.c % vec4<u32>(32u)), vec4<u32>(global4.c.x, 43351u, 0u, 0u) << (vec4<u32>(14337u, 0u, 4294967295u, global3.c.x) % vec4<u32>(32u))) % 32u)));
    global2 = (countOneBits(~abs(vec4<i32>(u_input.a.x, u_input.a.x, -1i, global3.a))) << (~((global3.c ^ vec4<u32>(global3.c.x, global3.c.x, global1.x, global1.x)) | ~vec4<u32>(0u, 13413u, global1.x, global4.c.x)) % vec4<u32>(32u))) | -(~(~vec4<i32>(u_input.a.x, u_input.a.x, 62877i, -1i)));
    var var_0 = Struct_2(select(!vec3<bool>(false, any(vec4<bool>(true, true, true, true)), true), vec3<bool>(true, any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), all(vec2<bool>(true, true))), true));
    var var_1 = ~(~(~(~(~52882u))));
    return Struct_2(vec3<bool>(true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~global4.c.zyx);
    let var_1 = func_1();
    var var_2 = select(!select(!var_1.a, vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x & false), true), !var_1.a, var_1.a.x);
    global1 = global4.c.wz;
    var_2 = vec3<bool>(all(!var_1.a.zy), true, any(!(!(!vec4<bool>(var_1.a.x, false, var_1.a.x, var_2.x)))));
    var var_3 = true;
    global0 = array<vec2<u32>, 7>();
    var var_4 = !(!select(!vec4<bool>(var_2.x, var_1.a.x, var_1.a.x, var_2.x), !(!vec4<bool>(var_1.a.x, true, var_2.x, false)), var_1.a.x));
    var var_5 = ~(~vec3<u32>(~(~36316u), var_0.x, ~global3.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(1000f);
}

