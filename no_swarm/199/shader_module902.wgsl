struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: bool,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: array<vec2<u32>, 24>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = ~4294967295u;
    global1 = array<vec2<u32>, 24>();
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    global1 = array<vec2<u32>, 24>();
    return reverseBits(28904u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = 12346i;
    let var_1 = arg_0;
    global1 = array<vec2<u32>, 24>();
    var var_2 = arg_1.x;
    var_2 = arg_0.b.x;
    return select(vec3<bool>(all(vec2<bool>(true, true)), true | select(all(vec2<bool>(false, false)), -2147483647i < u_input.a.x, true), select(true, !all(vec3<bool>(true, true, false)), min(u_input.a.x, 34681i) > -25912i)), vec3<bool>(all(vec4<bool>(true, true, true, true)) | true, select(arg_2.a.x > arg_0.a.x, true, true) | !(u_input.a.x > u_input.a.x), !(_wgslsmith_f_op_f32(abs(arg_1.x)) >= arg_1.x)), -232f == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2817f + -257f))));
}

fn func_1() -> vec2<u32> {
    global1 = array<vec2<u32>, 24>();
    let var_0 = vec4<u32>(u_input.c, ~4294967295u, func_2(Struct_1(~vec2<u32>(u_input.c, u_input.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2449f, 126f, -606f, 1255f) - vec4<f32>(-1594f, -1355f, 1000f, 516f)))) | u_input.c, ~_wgslsmith_mult_u32(~0u << (0u % 32u), func_2(Struct_1(vec2<u32>(1u, 19912u), vec4<f32>(-1067f, 903f, -1000f, -937f)))));
    var var_1 = select(vec3<bool>(!all(vec4<bool>(true, true, false, false)), false, any(vec4<bool>(true, true, true, true))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), func_3(Struct_1(var_0.xz, vec4<f32>(-678f, 476f, -301f, -1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(931f, 1012f, -1409f), vec3<f32>(1000f, -107f, -1000f)), Struct_1(global1[_wgslsmith_index_u32(var_0.x, 24u)], vec4<f32>(-258f, 1850f, -1656f, 2534f)), Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], vec4<f32>(-354f, -762f, -341f, -312f)))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, func_3(Struct_1(vec2<u32>(var_0.x, u_input.b.x), vec4<f32>(-2008f, -949f, -648f, -1081f)), vec3<f32>(-641f, -609f, 1581f), Struct_1(vec2<u32>(1u, var_0.x), vec4<f32>(-255f, -435f, -1061f, -1843f)), Struct_1(u_input.b.zy, vec4<f32>(-899f, -729f, 911f, -749f))).x, true), select(true, all(vec4<bool>(false, true, true, false)), all(vec2<bool>(true, true))))), _wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 8148u, var_0.x), vec3<u32>(1u, 25097u, u_input.c)) ^ u_input.b.x) >= var_0.x);
    global0 = array<Struct_2, 26>();
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_div_i32(i32(-1i) * -(~23975i), ~_wgslsmith_add_i32(2147483647i, u_input.a.x)), u_input.a.x);
    return select((reverseBits(u_input.b.zz) << (vec2<u32>(var_0.x, 17500u) % vec2<u32>(32u))) >> (abs(vec2<u32>(var_0.x, u_input.c)) % vec2<u32>(32u)), global1[_wgslsmith_index_u32(var_0.x, 24u)], true) & ~(vec2<u32>(var_0.x & 4294967295u, min(1u, var_0.x)) >> (vec2<u32>(_wgslsmith_mult_u32(var_0.x, var_0.x), u_input.c) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 23880u;
    global1 = array<vec2<u32>, 24>();
    global1 = array<vec2<u32>, 24>();
    let var_1 = Struct_1(~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.yx, vec2<u32>(var_0, 55932u)), global1[_wgslsmith_index_u32(~1u, 24u)]) | ~func_1(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-534f, -525f, 1000f, -1016f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(3032f, 914f, 450f, -856f))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(340f, -279f, -896f, 2243f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-458f, -182f, -1000f, 624f)), u_input.b.x > 39050u)))));
    var var_2 = !select(vec4<bool>(any(vec2<bool>(true, false)), false, select(func_3(Struct_1(vec2<u32>(21025u, 36315u), var_1.b), vec3<f32>(1298f, var_1.b.x, 1004f), Struct_1(vec2<u32>(var_0, u_input.b.x), vec4<f32>(946f, 818f, 296f, var_1.b.x)), var_1).x, true, func_3(var_1, vec3<f32>(1260f, var_1.b.x, var_1.b.x), var_1, var_1).x), true), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, true, true)), all(vec3<bool>(false, true, true)), true, true), true), all(vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -296f), ~(~_wgslsmith_div_u32(firstLeadingBit(u_input.c), 19440u)), vec4<i32>(min(-2147483647i, min(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), 1i)), -5153i, -u_input.a.x, _wgslsmith_div_i32(2147483647i, min(977i, u_input.a.x) & (u_input.a.x & -13481i))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~23736u, var_1.a.x, ~var_0), u_input.b & ~vec3<u32>(var_1.a.x, u_input.b.x, 1u)), ~(~1u) ^ var_1.a.x, 7717u, _wgslsmith_div_u32(~1u, 13808u)), u_input.a);
}

