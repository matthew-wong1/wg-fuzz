struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: bool = false;

var<private> global2: bool;

var<private> global3: vec3<bool>;

var<private> global4: array<u32, 7> = array<u32, 7>(37989u, 115906u, 1u, 4294967295u, 4294967295u, 0u, 0u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>) -> vec3<bool> {
    global1 = true;
    var var_0 = ~abs(~(35125u << (u_input.d % 32u)) | (_wgslsmith_dot_vec4_u32(vec4<u32>(7401u, 42331u, 1u, 36369u), vec4<u32>(u_input.a, 19550u, arg_0.a.x, arg_0.a.x)) << (arg_0.a.x % 32u)));
    global0 = array<bool, 1>();
    var var_1 = arg_0;
    global1 = !(!global0[_wgslsmith_index_u32(min(max(u_input.a, arg_0.a.x), ~_wgslsmith_dot_vec2_u32(var_1.a.yy, vec2<u32>(4294967295u, 4294967295u))), 1u)]);
    return vec3<bool>(!global3.x, true, true);
}

fn func_3() -> bool {
    var var_0 = Struct_2(Struct_1(min(1i, -_wgslsmith_add_i32(u_input.c.x, u_input.b.x)), func_2(Struct_3(vec3<u32>(0u, 53680u, 4294967295u) ^ vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(33619u, 7u)], 7u)], u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2051f, -566f, 641f, 101f), vec4<f32>(-1346f, -394f, 282f, 444f))))).yy, true, ~(-2422i), true));
    var_0 = Struct_2(var_0.a);
    global0 = array<bool, 1>();
    var var_1 = Struct_2(Struct_1(1i, select(!select(global3.yz, vec2<bool>(global3.x, global0[_wgslsmith_index_u32(u_input.d, 1u)]), true), func_2(Struct_3(vec3<u32>(global4[_wgslsmith_index_u32(2500u, 7u)], 9879u, global4[_wgslsmith_index_u32(u_input.a, 7u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(411f, 1000f, 2060f, 1007f))).xx, global0[_wgslsmith_index_u32(1u, 1u)]), !select(false, true, false), var_0.a.a, true));
    global2 = global3.x;
    return var_0.a.b.x && all(!vec3<bool>(var_1.a.e, true, true));
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    return select(func_2(Struct_3(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.d, 18319u), vec3<u32>(u_input.d, u_input.d, u_input.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-260f, -653f, 922f, 911f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1422f, -581f, 180f, 1176f)))), select(vec4<bool>(arg_0.c, global3.x, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(29799u, 7u)], 1u)], true), vec4<bool>(true, true, true, true), vec4<bool>(arg_0.b.x, true, false, false))))), vec3<bool>(true, true || arg_0.c, func_3()), global0[_wgslsmith_index_u32(11293u, 1u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global3.x;
    global3 = select(!func_1(Struct_1(~(-1i), vec2<bool>(global3.x, global0[_wgslsmith_index_u32(u_input.d, 1u)]), all(vec4<bool>(true, global3.x, global0[_wgslsmith_index_u32(1u, 1u)], true)), u_input.b.x, true)), vec3<bool>(all(select(!global3.zx, func_2(Struct_3(vec3<u32>(global4[_wgslsmith_index_u32(20080u, 7u)], 1u, u_input.a)), vec4<f32>(1000f, 1069f, 1025f, 2744f)).zy, !global3.xx)), false, _wgslsmith_f_op_f32(-354f - _wgslsmith_f_op_f32(floor(539f))) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(798f * -522f)))), global3.x);
    let var_0 = u_input.c.x;
    global3 = vec3<bool>(!(_wgslsmith_div_i32(min(u_input.b.x, u_input.c.x), var_0) > -38771i), 43995u > _wgslsmith_sub_u32(u_input.d, ~firstLeadingBit(u_input.d)), !global0[_wgslsmith_index_u32(firstLeadingBit(abs(u_input.d)), 1u)] && any(func_1(Struct_1(-1i, global3.zy, true, -2147483647i, true))));
    let var_1 = _wgslsmith_clamp_u32(90402u, 4294967295u, abs(4294967295u));
    global1 = var_0 > _wgslsmith_mod_i32(u_input.b.x, min(u_input.b.x, reverseBits(-280i)));
    var var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(min(~select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(global4[_wgslsmith_index_u32(1u, 7u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(41828u, 7u)], 7u)])), ~vec2<u32>(0u, global4[_wgslsmith_index_u32(26152u, 7u)]), 0i <= u_input.b.x), vec2<u32>(min(~0u, _wgslsmith_add_u32(13761u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 7u)], 7u)])), var_1)), firstLeadingBit(firstLeadingBit(u_input.a)), firstTrailingBit(~(~firstTrailingBit(vec2<u32>(27204u, global4[_wgslsmith_index_u32(11686u, 7u)])))));
}

