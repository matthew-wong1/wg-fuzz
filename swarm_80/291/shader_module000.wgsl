struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 56019u, 4294967295u, 121u);

var<private> global1: array<Struct_4, 12>;

var<private> global2: bool = true;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    let var_0 = false;
    return -1i;
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: vec2<bool>) -> i32 {
    let var_0 = ~66028u;
    var var_1 = false;
    let var_2 = arg_1.e.x;
    global1 = array<Struct_4, 12>();
    var_1 = 0u < firstTrailingBit(var_0);
    return _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(abs(_wgslsmith_sub_i32(0i, 27985i)), 62207i), select(-vec2<i32>(arg_1.d.a.x, arg_1.d.a.x) >> (_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.c, 3769u), u_input.c.wx) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(~arg_1.d.a.zz, min(vec2<i32>(-2147483647i, arg_1.d.a.x), vec2<i32>(arg_1.d.a.x, arg_1.d.a.x))), vec2<bool>(!arg_1.a, !arg_1.a))), vec2<i32>(74210i, ~_wgslsmith_add_i32(-arg_1.d.a.x, arg_1.d.a.x & arg_1.d.a.x)));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(~_wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-38367i, 1i), vec2<i32>(-1i, 2147483647i))), -(~(-17153i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 7349i), vec2<i32>(7350i, 24358i)))), -max(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -21919i), vec3<i32>(-29359i, 0i, 2147483647i))), _wgslsmith_sub_i32(func_3(true, global1[_wgslsmith_index_u32(arg_0, 12u)], vec2<bool>(false, false)), firstTrailingBit(-39520i))));
    let var_1 = arg_0;
    global2 = false;
    global0 = vec4<u32>(arg_0, (arg_0 & u_input.a) ^ var_1, ~(~var_1) << (24266u % 32u), 0u);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 12>();
    let var_0 = _wgslsmith_f_op_f32(-3825f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -324f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(347f)) + _wgslsmith_f_op_f32(min(-264f, 682f))))));
    global1 = array<Struct_4, 12>();
    var var_1 = select(_wgslsmith_add_i32(func_1(global0.wzw), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -49125i, -2147483647i, 0i) << (vec4<u32>(74267u, 0u, global0.x, 1u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, 0i, 50456i, 0i))), -40708i, func_2(0u));
    var var_2 = vec4<bool>(all(vec3<bool>(false, true, true)) || (abs(global0.x) != abs(global0.x)), true, any(!select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))), (func_2(0u >> (global0.x % 32u)) != false) | (_wgslsmith_f_op_f32(624f + _wgslsmith_f_op_f32(var_0 - var_0)) != _wgslsmith_f_op_f32(round(-438f))));
    let var_3 = vec2<i32>(1i, func_1(~(u_input.c.xwz & u_input.c.xyw)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(countOneBits(vec3<u32>(firstLeadingBit(4294967295u), 1u, 4294967295u))), vec3<u32>(global0.x, reverseBits(1u), max(83781u, abs(global0.x) & _wgslsmith_sub_u32(4294967295u, global0.x))));
}

