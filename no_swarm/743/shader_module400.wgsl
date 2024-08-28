struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2() -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1116f, 1267f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-635f, -355f) * vec2<f32>(-1080f, 793f)))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-644f * 381f), _wgslsmith_f_op_f32(-1504f * -473f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2861f, -612f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1415f, -525f)), any(vec3<bool>(true, true, false)))))), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, true), Struct_1(~(~firstTrailingBit(41743u)), 1u << (~u_input.b.x % 32u), u_input.b.x, -(u_input.a.x | u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(964f, -1821f, 978f)))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3) -> bool {
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    let var_0 = Struct_4(func_2().c, vec3<bool>(any(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x)) | all(arg_1.b.wzx), any(select(!vec2<bool>(arg_1.b.x, true), !vec2<bool>(arg_1.b.x, true), true)), false));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-624f + arg_1.c.e.x) + _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.e.x, var_0.a.e.x) - _wgslsmith_f_op_f32(floor(arg_1.c.e.x)))))));
    let var_2 = u_input.c.yyz;
    return arg_1.c.e.x <= arg_1.a.x;
}

fn func_1() -> Struct_3 {
    let var_0 = func_2();
    var var_1 = u_input.c;
    global0 = array<Struct_1, 10>();
    var_1 = _wgslsmith_mod_vec4_i32(select((vec4<i32>(var_0.c.d, 10681i, u_input.a.x, 37566i) ^ vec4<i32>(var_1.x, var_1.x, 3778i, u_input.d)) | u_input.c, _wgslsmith_clamp_vec4_i32(~u_input.c, vec4<i32>(-31759i, 17667i, -2147483647i, var_1.x) << (u_input.b % vec4<u32>(32u)), u_input.c), func_3(vec4<f32>(var_0.c.e.x, -215f, var_0.c.e.x, var_0.a.x), Struct_3(vec2<f32>(var_0.c.e.x, var_0.c.e.x), vec4<bool>(var_0.b.x, false, var_0.b.x, true), Struct_1(u_input.e.x, u_input.b.x, 0u, 0i, var_0.c.e))) != (-1i != var_0.c.d)), _wgslsmith_clamp_vec4_i32(u_input.c, countOneBits(_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(var_1.x, 1i, u_input.a.x, -31319i))), ~u_input.a)) | u_input.c;
    let var_2 = ~var_0.c.b;
    return Struct_3(vec2<f32>(func_2().c.e.x, _wgslsmith_f_op_f32(step(132f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c.e.x, var_0.a.x, var_0.b.x)))))), vec4<bool>(true, var_0.b.x, _wgslsmith_clamp_u32(~4294967295u, 28942u, func_2().c.c) < firstLeadingBit(~u_input.b.x), var_0.b.x || any(!var_0.b.xyw)), global0[_wgslsmith_index_u32(u_input.e.x, 10u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 10>();
    var var_0 = _wgslsmith_div_vec3_i32(select(firstTrailingBit(abs(-u_input.a.wxw)), vec3<i32>(u_input.a.x, -25417i, u_input.d) | ~vec3<i32>(2147483647i, u_input.a.x, 49687i), vec3<bool>(true, true, true)), min(-select(firstLeadingBit(u_input.c.yxw), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, 1i), vec3<i32>(u_input.a.x, u_input.c.x, u_input.a.x)), true), -firstLeadingBit(vec3<i32>(u_input.a.x, u_input.c.x, 5187i) << (u_input.e % vec3<u32>(32u)))));
    let var_1 = !(!(true || (true && (4294967295u > u_input.b.x))));
    let var_2 = func_1();
    var var_3 = func_1().b.xx;
    let x = u_input.a;
    s_output = StorageBuffer(~0u, vec3<u32>(_wgslsmith_sub_u32(~0u, ~(~30832u)), 70944u, ~_wgslsmith_div_u32(~u_input.e.x, ~var_2.c.a)), firstTrailingBit(~u_input.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x - 191f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(341f, 634f, true)) + _wgslsmith_f_op_f32(f32(-1f) * -349f))), func_2().a.x), ~firstTrailingBit(~var_2.c.b << ((1u | var_2.c.b) % 32u)));
}

