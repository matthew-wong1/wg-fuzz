struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 18>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-298f - _wgslsmith_f_op_f32(abs(-360f)))));
    var var_1 = arg_0.c.b;
    var var_2 = u_input.a.x;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1144f * -2365f))))));
    let var_3 = u_input.d;
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1524f, -1420f, -810f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-665f, 966f, -1036f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-731f, -324f, -846f), vec3<f32>(322f, -1020f, -1000f), vec3<bool>(arg_0.c.a.a, arg_0.a.a, global0.b.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(145f, -553f, -1000f)), any(vec2<bool>(arg_0.c.c.a, global0.a.a))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(427f, 189f, 211f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, -1696f, 873f), vec3<f32>(444f, -1096f, 432f))) * vec3<f32>(-579f, -2357f, 1343f))), !any(!vec3<bool>(false, global0.b.a, true))))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec4<i32>, arg_3: vec3<i32>) -> i32 {
    var var_0 = ~4294967295u;
    let var_1 = _wgslsmith_f_op_vec3_f32(func_3(Struct_3(global0.c.a, global0.b, Struct_2(global0.b, vec4<i32>(-2147483647i | global0.c.b.x, firstTrailingBit(global0.c.b.x), global0.c.b.x, reverseBits(arg_2.x)), Struct_1(true, u_input.d.wxy ^ vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 18u)], u_input.a.x), ~113134u)))));
    global0 = Struct_3(global0.a, global0.b, global0.c);
    global1 = array<u32, 18>();
    let var_2 = true;
    return u_input.b;
}

fn func_1() -> StorageBuffer {
    global1 = array<u32, 18>();
    let var_0 = ~vec4<u32>(u_input.d.x, ~countOneBits(~0u), ~_wgslsmith_sub_u32(40099u, _wgslsmith_mult_u32(4294967295u, global0.c.c.c)), global0.b.c);
    var var_1 = u_input.c.zy;
    var var_2 = true;
    var var_3 = -598f;
    return StorageBuffer(vec2<u32>(max(1u, _wgslsmith_clamp_u32(~9506u, var_0.x, reverseBits(0u))), global1[_wgslsmith_index_u32(0u, 18u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1144f, -284f)) - vec2<f32>(-436f, 848f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(995f, -246f))))), i32(-1i) * -_wgslsmith_mod_i32(-16258i, func_2(24886i, 1044f, global0.c.b, global0.c.b.xxy)), vec2<i32>(_wgslsmith_dot_vec3_i32(max(global0.c.b.wzw, -vec3<i32>(20952i, -21070i, var_1.x)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, 10441i, global0.c.b.x), global0.c.b.ywy, vec3<i32>(var_1.x, -10149i, -1i))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2756i, 0i), vec3<i32>(-1i, 26596i, var_1.x)), _wgslsmith_mod_i32(firstTrailingBit(-10069i), i32(-1i) * -55821i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 18>();
    let x = u_input.a;
    s_output = func_1();
}

