struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(-98923i >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), _wgslsmith_mult_vec4_u32(vec4<u32>(2278u, 0u, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, 1u, 12472u, 0u))) % 32u), u_input.c.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(55409u, 1u, 8844u, u_input.c.x)), ~(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)))), ~(~_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 10276u, 13368u), u_input.c))), u_input.a.wyy, u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(298f, -735f) - vec2<f32>(594f, 165f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(269f, 112f)))))))));
    let var_2 = var_1.x;
    global0 = var_1.x;
    var var_3 = u_input.c;
    return var_0;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2) -> f32 {
    var var_0 = vec4<u32>(arg_2.b, abs(arg_2.b), 4294967295u, 39425u);
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1100f, 1508f, -2053f, -917f))))))));
    var_0 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 4294967295u), ~_wgslsmith_mod_u32(var_0.x, firstLeadingBit(0u)), ~_wgslsmith_sub_u32(~u_input.c.x, 1u)), countOneBits(~(~1u)), ~(~abs(countOneBits(21394u))), 9915u & ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 38267u), u_input.c.yz), var_0.wx >> (vec2<u32>(arg_0.a.b, 0u) % vec2<u32>(32u))));
    var_0 = ~vec4<u32>(~firstLeadingBit(u_input.c.x & arg_2.b), _wgslsmith_div_u32(countOneBits(66454u), 1u), abs(~(~arg_2.b)), 0u);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-207f, -268f, 154f, var_1.x), vec4<f32>(-904f, var_1.x, var_1.x, -896f)))))));
    return -831f;
}

fn func_1(arg_0: vec3<i32>) -> StorageBuffer {
    global0 = _wgslsmith_f_op_f32(2180f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(1i, u_input.c.x, 1u), _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), u_input.a.yxw << (vec3<u32>(u_input.c.x, 0u, u_input.c.x) % vec3<u32>(32u)), 1i), u_input.a, func_2(true)))));
    let var_0 = ~(~(u_input.a.xz << (u_input.c.yz % vec2<u32>(32u))));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1897f, -1786f))));
    let var_1 = _wgslsmith_clamp_vec2_i32(~u_input.a.xy, select(-(~arg_0.zy), vec2<i32>(firstLeadingBit(arg_0.x), var_0.x), vec2<bool>(false, true)), -select(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, arg_0.x), vec2<i32>(u_input.b, u_input.b)), -vec2<i32>(34747i, 0i), vec2<bool>(true, all(vec2<bool>(false, false)))));
    var var_2 = 743f;
    return StorageBuffer((_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 97447u), select(u_input.c, vec3<u32>(u_input.c.x, 16487u, u_input.c.x), false)) | reverseBits(vec3<u32>(0u, 1u, u_input.c.x))) ^ ~(~select(vec3<u32>(16746u, u_input.c.x, 6870u), vec3<u32>(4294967295u, 26796u, 4294967295u), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_f32(636f, _wgslsmith_f_op_f32(-1489f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(450f + -1173f)), 1682f))));
    let x = u_input.a;
    s_output = func_1(u_input.a.ywy);
}

