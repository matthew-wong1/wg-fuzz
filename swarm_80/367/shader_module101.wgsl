struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: f32) -> bool {
    let var_0 = vec3<i32>(~reverseBits(1i), 1i, u_input.a);
    let var_1 = Struct_2(1526u, vec4<u32>(1u, ~4294967295u, 4294967295u, 0u));
    let var_2 = _wgslsmith_div_vec3_u32(var_1.b.xyz, ~vec3<u32>(_wgslsmith_dot_vec3_u32(var_1.b.zyy, var_1.b.wxz), ~arg_1, 9353u));
    let var_3 = var_1;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1038f, _wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_f_op_f32(2018f * arg_2))))));
    return true;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> i32 {
    let var_0 = 1i;
    let var_1 = Struct_3(arg_0.a);
    var var_2 = arg_1;
    let var_3 = vec3<bool>(func_3(_wgslsmith_f_op_f32(f32(-1f) * -914f) >= _wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x)), ~_wgslsmith_div_u32(select(28927u, 0u, true), 4294967295u), _wgslsmith_f_op_f32(534f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1168f))))), arg_1.d, arg_1.d);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) - -1378f);
    return abs(var_0) >> (arg_0.a.b.x % 32u);
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: bool, arg_3: Struct_3) -> u32 {
    let var_0 = arg_3.a.b.wxx << (select(~vec3<u32>(_wgslsmith_div_u32(26884u, 4529u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_3.a.a, 4294967295u, u_input.b), vec4<u32>(arg_3.a.b.x, u_input.b, arg_3.a.a, 34067u)), u_input.b), arg_3.a.b.xyx, arg_2) % vec3<u32>(32u));
    let var_1 = select(-1i, ~func_2(arg_3, Struct_1(vec2<bool>(true, true), vec4<f32>(arg_0.x, arg_0.x, arg_1, 514f), arg_3.a.b, arg_2, u_input.c)), false) > -1753i;
    var var_2 = arg_3.a;
    return ~arg_3.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_div_vec2_u32(vec2<u32>(select(u_input.b, 30189u, true), func_1(vec3<f32>(-375f, -1000f, 165f), 484f, false, Struct_3(Struct_2(u_input.b, vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))))), vec2<u32>(0u, 9646u)));
    var var_1 = countOneBits(u_input.a);
    let var_2 = var_0.x;
    var_1 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_2, var_0.x), ~vec3<u32>(39146u, 0u, 4294967295u))), ~var_2, _wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(u_input.a, u_input.a, 28759i, -538i) << (vec4<u32>(4294967295u, var_2, 4294967295u, var_0.x) % vec4<u32>(32u))), -abs(vec4<i32>(-2147483647i, u_input.a, u_input.c.x, u_input.c.x)), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), false)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.c.x, -1i, 1i), vec4<i32>(u_input.a, -17841i, 6698i, u_input.a) << (vec4<u32>(u_input.b, u_input.b, u_input.b, 15948u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(8770i, 16803i, -21379i, 1i)), vec4<i32>(-1i, u_input.a, u_input.a, -62828i) ^ vec4<i32>(u_input.a, u_input.a, u_input.c.x, u_input.c.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-888f, -821f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(523f, 1308f))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-818f, 1045f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-249f, 913f)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -782f), _wgslsmith_f_op_f32(abs(-2176f))))));
}

