struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32) -> vec2<f32> {
    global0 = _wgslsmith_f_op_f32(round(920f));
    let var_0 = _wgslsmith_add_u32(~arg_0, _wgslsmith_clamp_u32(u_input.a, 0u, ~(~select(1u, 14121u, true))));
    let var_1 = -1000f;
    let var_2 = u_input.a;
    global0 = var_1;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -1000f) - vec2<f32>(105f, 481f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-973f, var_1) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(floor(var_1))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)))), all(vec4<bool>(false, true, true, false)))), vec2<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1902f, 363f))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(225f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.e.zy + vec2<f32>(1429f, 595f)), _wgslsmith_f_op_vec2_f32(func_3(arg_0.d.x)), vec2<bool>(arg_0.b.x, arg_0.b.x))))))));
    global0 = -1000f;
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(32244i, 49637i, min(2147483647i, arg_0.c.x), reverseBits(arg_0.c.x)), arg_0.a);
    var var_2 = _wgslsmith_add_vec2_i32(u_input.e, var_1.yw);
    let var_3 = ~_wgslsmith_mult_vec2_u32(u_input.c, arg_0.d >> (vec2<u32>(42168u, ~u_input.b) % vec2<u32>(32u)));
    return !(!(!(!(!vec4<bool>(arg_0.b.x, true, false, arg_0.b.x)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = ~(~vec2<u32>(u_input.a, 1u));
    global0 = _wgslsmith_f_op_f32(ceil(-1891f));
    global0 = _wgslsmith_f_op_f32(step(-1206f, 1106f));
    var var_1 = -763f;
    let var_2 = arg_1.x;
    return Struct_2(-17755i, _wgslsmith_mult_vec3_u32(abs(select(~vec3<u32>(11622u, var_0.x, u_input.b), vec3<u32>(53604u, u_input.c.x, 77263u), true)), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.x, 0u, 11271u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, var_0.x), vec3<u32>(35623u, u_input.b, u_input.b))), vec3<u32>(~20158u, u_input.a, 0u))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = func_4(_wgslsmith_mod_vec2_i32(u_input.e, _wgslsmith_sub_vec2_i32(u_input.e, u_input.d.yy)) | vec2<i32>(~(-10905i) >> (0u % 32u), 12206i), !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), func_2(Struct_1(vec4<i32>(-67667i, 0i, u_input.d.x, -14530i), vec2<bool>(false, true), vec3<i32>(854i, u_input.d.x, u_input.e.x), arg_1.b.zy, vec3<f32>(718f, -1621f, -256f)), Struct_2(arg_2.a, arg_1.b))), func_2(Struct_1(vec4<i32>(79428i, -2147483647i, 19742i, -78059i), vec2<bool>(true, true), vec3<i32>(57456i, -30098i, arg_1.a), vec2<u32>(1u, 48460u), vec3<f32>(-1133f, 406f, -1000f)), Struct_2(-1i, arg_1.b))));
    let var_1 = Struct_2(-1i, _wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 3051u), vec3<u32>(u_input.a, 88607u, 57246u) | arg_1.b), ~(~(~var_0.b))));
    let var_2 = Struct_1(-max(max(-vec4<i32>(1i, u_input.e.x, -2147483647i, 1i), vec4<i32>(2147483647i, -48740i, -12632i, -45414i)), abs(vec4<i32>(arg_2.a, var_1.a, -2147483647i, -38275i)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.b.x, 0u, 3994u, arg_1.b.x), vec4<u32>(45169u, arg_0, 14663u, 47135u)) % vec4<u32>(32u))), vec2<bool>(true, all(vec3<bool>(true, true, true))), ~(-max(vec3<i32>(-20440i, -35839i, arg_1.a) >> (var_1.b % vec3<u32>(32u)), ~vec3<i32>(1i, -1i, var_1.a))), _wgslsmith_add_vec2_u32(var_1.b.xz, reverseBits(vec2<u32>(4294967295u, arg_0) >> (vec2<u32>(arg_0, 4294967295u) % vec2<u32>(32u)))) ^ vec2<u32>(~func_4(u_input.d.yz, vec4<bool>(false, true, false, true)).b.x, 14958u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-138f, -350f, -1381f), vec3<f32>(-1325f, -1447f, -762f)) - vec3<f32>(-1503f, 939f, 533f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -761f), 1000f, -1222f)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1326f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.x) - var_2.e.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e.x, 1551f, var_2.e.x, var_2.e.x) - vec4<f32>(var_2.e.x, var_2.e.x, var_2.e.x, -189f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e.x, var_2.e.x, var_2.e.x, 421f) * vec4<f32>(var_2.e.x, 1554f, 931f, var_2.e.x)))))))));
    return var_2.d.x ^ _wgslsmith_mod_u32(0u, u_input.a & ~(~0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    let var_1 = Struct_1(-(vec4<i32>(-1i) * -(~vec4<i32>(u_input.d.x, -1i, u_input.d.x, 1i))), !(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(false, false), vec2<bool>(false, false), true))), u_input.d, vec2<u32>(~u_input.b, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b, ~u_input.b), func_1(23502u, Struct_2(u_input.e.x, vec3<u32>(0u, 34097u, 45465u)), Struct_2(u_input.e.x, vec3<u32>(u_input.c.x, 84553u, 515u))) & abs(41293u))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1387f * -699f))), 635f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -547f) * 624f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-308f, -1000f, -542f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1301f, -193f, -671f) - vec3<f32>(-241f, -417f, -172f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-919f, -1000f, 174f), vec3<f32>(-1030f, -1097f, -747f), vec3<bool>(false, false, false))), true)))))));
    let var_2 = Struct_2(var_1.a.x, vec3<u32>(_wgslsmith_add_u32(u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, u_input.b, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, var_1.d.x, 0u, 10966u), vec4<u32>(45855u, u_input.b, 1u, 1u)))), u_input.a, ~(func_4(var_1.a.xz, vec4<bool>(true, var_1.b.x, var_1.b.x, true)).b.x << (max(34485u, u_input.b) % 32u))));
    var var_3 = var_2;
    var var_4 = 0u;
    let var_5 = u_input.b;
    var var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.yx);
}

