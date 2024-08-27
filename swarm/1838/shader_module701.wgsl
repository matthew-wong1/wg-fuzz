struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec3<u32>,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(19745i, -54681i, 4353i, -20164i);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> vec3<i32> {
    return -_wgslsmith_mult_vec3_i32(global0.wxw, vec3<i32>(global0.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(-9198i, -7170i, global0.x, global0.x), vec4<i32>(1i, -3556i, global0.x, u_input.b)), ~min(-2147483647i, global0.x)));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> vec2<i32> {
    global0 = _wgslsmith_sub_vec4_i32(-reverseBits(-_wgslsmith_add_vec4_i32(vec4<i32>(-26313i, 1i, global0.x, 6484i), vec4<i32>(10616i, 2147483647i, arg_0, global0.x))), vec4<i32>(_wgslsmith_div_i32(~arg_0, ~u_input.b), _wgslsmith_sub_i32(~abs(arg_0), _wgslsmith_dot_vec3_i32(global0.wyx, _wgslsmith_div_vec3_i32(vec3<i32>(39439i, 39052i, arg_0), vec3<i32>(9205i, arg_0, arg_0)))), max(_wgslsmith_dot_vec3_i32(global0.wyy, _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, global0.x, 0i), vec3<i32>(arg_0, arg_0, -30503i), global0.wwz)), firstLeadingBit(-arg_0)), 13145i));
    let var_0 = (arg_1.c.x <= -1021f) && arg_1.b.a;
    global0 = vec4<i32>(-1i) * -(~_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 26938i, -1i, u_input.b), vec4<i32>(global0.x, u_input.b, arg_0, 0i)), vec4<i32>(49581i, 20285i, global0.x, -17333i)));
    global0 = ~(-_wgslsmith_mod_vec4_i32(-(~vec4<i32>(arg_0, 2147483647i, arg_0, 1i)), _wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.b, global0.x, -74701i, 2244i), vec4<i32>(global0.x, -2147483647i, global0.x, 13550i)), _wgslsmith_sub_vec4_i32(vec4<i32>(20806i, global0.x, arg_0, arg_0), vec4<i32>(-25376i, 27147i, -50061i, arg_0)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-arg_1.d), arg_1.d);
    return vec2<i32>(_wgslsmith_add_i32(u_input.b, _wgslsmith_dot_vec3_i32(global0.wxz, ~func_2())), -2147483647i);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(334f, _wgslsmith_f_op_f32(f32(-1f) * -501f))))));
    var var_1 = Struct_2(any(arg_3.a.yx), arg_3.e.b, vec2<f32>(_wgslsmith_f_op_f32(-arg_2.d), arg_2.d), _wgslsmith_f_op_f32(1f + arg_3.b.c.x));
    let var_2 = Struct_3(arg_3.a, Struct_2(any(vec4<bool>(u_input.b > arg_0.x, !var_1.a, all(arg_3.a), all(vec4<bool>(var_1.a, arg_2.a, false, var_1.b.a)))), arg_1.b, var_1.c, 1043f), arg_3.c, ~_wgslsmith_mod_vec2_u32(u_input.a.zx, vec2<u32>(~arg_3.c.x, 1u)), Struct_2(all(select(select(arg_3.a.xx, arg_3.a.zy, false), vec2<bool>(var_1.a, true), select(var_1.a, false, true))), Struct_1(true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d - 719f)), var_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-921f * _wgslsmith_f_op_f32(-1477f - 478f)))));
    var var_3 = vec3<f32>(var_0.x, -467f, arg_1.d);
    var var_4 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, arg_0.x, global0.x, global0.x), vec4<i32>(-4977i, 10732i, global0.x, -27624i)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2147483647i, arg_0.x), vec4<i32>(u_input.b, 0i, -2147483647i, global0.x), vec4<i32>(-10736i, u_input.b, 2147483647i, 62791i)), -(~vec4<i32>(0i, global0.x, -1i, arg_0.x))) & vec4<i32>(60239i, -61973i, ~1i, _wgslsmith_mult_i32(max(u_input.b, arg_0.x), u_input.b)), -(~(vec4<i32>(arg_0.x, -1i, arg_0.x, 1i) << (vec4<u32>(var_2.c.x, 0u, var_2.c.x, 1u) % vec4<u32>(32u)))) | countOneBits(-countOneBits(vec4<i32>(arg_0.x, arg_0.x, u_input.b, 25757i))));
    return ~0i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(abs(0i | _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-24957i, 0i), global0.zy), func_1(1i, Struct_2(false, Struct_1(false), vec2<f32>(-1792f, -1276f), -1542f)))), -_wgslsmith_mod_i32(~(-2790i), -u_input.b), ~_wgslsmith_clamp_i32(global0.x, -16263i & u_input.b, _wgslsmith_mult_i32(func_3(vec3<i32>(global0.x, u_input.b, u_input.b), Struct_2(true, Struct_1(true), vec2<f32>(-827f, -906f), -1213f), Struct_2(true, Struct_1(false), vec2<f32>(-1406f, -606f), 406f), Struct_3(vec3<bool>(false, false, true), Struct_2(true, Struct_1(false), vec2<f32>(-2827f, 1454f), -1004f), vec3<u32>(50086u, 4294967295u, 0u), u_input.a.zx, Struct_2(false, Struct_1(true), vec2<f32>(-425f, -890f), -588f))), global0.x)), -50914i);
    let var_0 = min(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(global0.x | -16644i, global0.x)), vec2<i32>(max(u_input.b, global0.x), u_input.b) | global0.zw), global0.yx & ~(~vec2<i32>(global0.x, u_input.b)));
    let var_1 = 4294967295u;
    global0 = -vec4<i32>(-50167i, -func_3(vec3<i32>(0i, u_input.b, u_input.b), Struct_2(true, Struct_1(true), vec2<f32>(509f, 1368f), 1203f), Struct_2(true, Struct_1(true), vec2<f32>(614f, -108f), -2113f), Struct_3(vec3<bool>(true, false, true), Struct_2(true, Struct_1(true), vec2<f32>(-1698f, 237f), 806f), u_input.a, vec2<u32>(var_1, u_input.e), Struct_2(true, Struct_1(true), vec2<f32>(-1000f, 950f), 1000f))), (-33560i | global0.x) << (u_input.d % 32u), ~(-u_input.b));
    var var_2 = -vec3<i32>(var_0.x, global0.x, var_0.x);
    global0 = ~_wgslsmith_clamp_vec4_i32(max(abs(-vec4<i32>(2147483647i, var_0.x, u_input.b, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 0i, var_2.x, global0.x), vec4<i32>(-13500i, var_2.x, var_2.x, var_0.x), vec4<i32>(2147483647i, var_0.x, global0.x, 373i)) >> (vec4<u32>(1u, var_1, 0u, 0u) % vec4<u32>(32u))), vec4<i32>(-11012i, -global0.x, var_2.x, ~func_2().x), ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, u_input.b, 2147483647i, var_2.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, u_input.b, global0.x, var_0.x), vec4<i32>(-1i, u_input.b, global0.x, 2147483647i))));
    var_2 = global0.wxy;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, var_1), vec4<u32>(u_input.c, u_input.c, 1u, 1u)) << ((var_1 | 1776u) % 32u)) >> (18744u % 32u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-716f * 508f), -1416f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1442f, 670f) - vec2<f32>(-418f, -1422f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1134f, -928f)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2167f, _wgslsmith_f_op_f32(-1454f + 1112f), 936f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(563f, -1167f, 449f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1943f, 302f, -1283f) * vec3<f32>(1016f, -1028f, -786f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1930f, 1543f), vec3<f32>(-898f, 1000f, -1000f))))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-405f)), -827f), _wgslsmith_f_op_f32(-1288f * _wgslsmith_div_f32(303f, 456f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -327f)) + _wgslsmith_f_op_f32(f32(-1f) * -493f)), _wgslsmith_f_op_f32(-1f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1605f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(536f))), _wgslsmith_f_op_f32(-1448f - _wgslsmith_f_op_f32(f32(-1f) * -986f)), -1752f), any(vec3<bool>(all(vec4<bool>(false, true, false, false)), false, true)))));
}

