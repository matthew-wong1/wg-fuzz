struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<i32>, 6>;

var<private> global2: vec3<bool>;

var<private> global3: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false));

var<private> global4: Struct_1 = Struct_1(vec3<f32>(1005f, -1688f, 921f), vec4<f32>(-586f, 549f, 1093f, -345f), true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    let var_0 = ~(~vec3<u32>(0u, _wgslsmith_add_u32(u_input.b, 1u), ~abs(68056u)));
    global3 = array<vec3<bool>, 28>();
    global1 = array<vec2<i32>, 6>();
    let var_1 = false;
    global1 = array<vec2<i32>, 6>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(global4.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-228f, global4.a.x, global4.a.x) - global4.a)))))));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * global4.b.xwy) * global4.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global4.b, global4.b))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-986f, 456f, global4.b.x, -1204f) + vec4<f32>(543f, global4.b.x, 656f, global4.a.x))), false), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-410f, global4.a.x, -814f)) * _wgslsmith_f_op_vec3_f32(global4.b.yzx + vec3<f32>(global4.a.x, global4.b.x, global4.b.x))), vec3<f32>(-348f, 1000f, global4.a.x), vec3<bool>(all(vec2<bool>(arg_0, global4.c)), global4.c, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global4.b - vec4<f32>(446f, global4.a.x, global4.a.x, global4.a.x)), vec4<f32>(2143f, global4.b.x, global4.b.x, 317f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global4.b - vec4<f32>(global4.b.x, global4.b.x, 1882f, -1000f)) + vec4<f32>(global4.b.x, 575f, global4.b.x, -1051f))), global2.x));
    global1 = array<vec2<i32>, 6>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3()))), var_0.a.b, arg_0), Struct_1(var_0.b.b.wxx, global4.b, !global2.x));
    let var_2 = u_input.b;
    let var_3 = 0u;
    return var_2;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: Struct_1) -> f32 {
    global1 = array<vec2<i32>, 6>();
    let var_0 = all(arg_0);
    let var_1 = func_2(!any(!select(vec2<bool>(global2.x, true), global2.xy, vec2<bool>(true, arg_2.c))));
    let var_2 = !all(select(select(vec2<bool>(false, arg_2.c), arg_0.xx, true), global2.xx, global4.c | arg_2.c)) && (any(!select(vec4<bool>(arg_0.x, false, arg_0.x, true), arg_0, true)) & (_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(arg_1.x, -1i)), arg_1.x) > ~(~17942i)));
    global3 = array<vec3<bool>, 28>();
    return global4.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2993i;
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-823f, 1549f) + 1344f)), 1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.a.xz)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4.a.x, -379f), vec2<f32>(global4.b.x, global4.a.x)))) * vec2<f32>(591f, global4.b.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(429f)), _wgslsmith_div_f32(global4.a.x, global4.a.x))), -747f) * vec3<f32>(var_1.x, _wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, false, !global2.x), firstTrailingBit(u_input.c), Struct_1(vec3<f32>(-350f, -842f, var_1.x), _wgslsmith_f_op_vec4_f32(sign(global4.b)), all(vec4<bool>(true, false, global4.c, false))))), 486f));
    global2 = select(global3[_wgslsmith_index_u32(firstTrailingBit(~0u), 28u)], !(!vec3<bool>(var_1.x < -951f, false, all(global2.xx))), !select(global3[_wgslsmith_index_u32(14191u, 28u)], global3[_wgslsmith_index_u32((u_input.b | 61977u) | _wgslsmith_sub_u32(16308u, 0u), 28u)], select(!vec3<bool>(false, global4.c, false), vec3<bool>(true, global2.x, false), !global3[_wgslsmith_index_u32(u_input.b, 28u)])));
    global0 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(u_input.b, func_2(global4.b.x == 1140f), ~u_input.b, u_input.b >> (firstLeadingBit(u_input.b) % 32u)), -u_input.c.x);
}

