struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>) -> vec3<u32> {
    let var_0 = Struct_2(reverseBits(select(_wgslsmith_mod_vec4_u32(vec4<u32>(20134u, u_input.b.x, 39881u, 39027u), vec4<u32>(0u, 13333u, u_input.b.x, u_input.b.x)), countOneBits(vec4<u32>(99994u, u_input.a.x, u_input.a.x, u_input.a.x)), true)), Struct_1(i32(-1i) * -(~0i), min(u_input.b.x, 16342u), ~u_input.a.x));
    var var_1 = Struct_4(72558i, vec4<bool>(true, true, !(!select(false, true, true)), false), _wgslsmith_mult_u32(41329u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(var_0.a.yyz, vec3<u32>(var_0.a.x, u_input.a.x, var_0.a.x)), ~vec3<u32>(var_0.b.b, 4294967295u, 0u), ~var_0.a.zzx), ~(var_0.a.wwy << (vec3<u32>(u_input.b.x, 12171u, 50305u) % vec3<u32>(32u))))), Struct_1(-2147483647i, max(firstLeadingBit(~2015u), u_input.a.x), _wgslsmith_mult_u32(100471u, 15525u)), _wgslsmith_f_op_f32(f32(-1f) * -912f));
    var var_2 = Struct_3(!vec4<bool>(false, var_1.b.x, true, var_1.b.x), Struct_1(arg_0.x, ~_wgslsmith_clamp_u32(u_input.b.x, ~u_input.b.x, ~var_1.c), ~13903u), reverseBits(_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 0u), var_0.a.ww, vec2<bool>(true, false)), firstTrailingBit(vec2<u32>(77845u, 18230u)))) >> (var_0.b.c % 32u), !all(vec2<bool>(var_1.b.x && false, true)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.e, var_1.e, 938f, 203f), vec4<f32>(var_1.e, 2311f, -2383f, -866f), var_1.b))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1310f - var_1.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(876f * -1251f) * var_1.e), -848f))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.e.xx));
    var_1 = Struct_4(~_wgslsmith_mult_i32(arg_0.x, arg_0.x ^ _wgslsmith_mod_i32(var_0.b.a, -31263i)), !vec4<bool>(false, any(select(vec3<bool>(true, true, var_1.b.x), vec3<bool>(true, true, var_1.b.x), var_2.a.yxx)), any(var_1.b.xyy), !any(vec3<bool>(false, var_1.b.x, var_2.a.x))), 1u, var_0.b, _wgslsmith_f_op_f32(-519f - 329f));
    return select(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.c, ~(1u << (var_1.c % 32u)), ~var_1.d.c), var_0.a.zzz), var_0.a.xzw, var_1.b.xxz);
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<u32>(select(min(abs(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), ~(~9982u)), _wgslsmith_dot_vec3_u32(~func_3(vec3<i32>(2147483647i, -15964i, 1i), vec2<i32>(13427i, -1i)), ~(~vec3<u32>(53750u, 4294967295u, u_input.b.x))), all(vec2<bool>(true, true))), 1u);
    let var_1 = 1241f;
    var_0 = vec2<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.a.x >> ((_wgslsmith_mult_u32(var_0.x, u_input.a.x) | _wgslsmith_clamp_u32(1u, 1u, u_input.a.x)) % 32u), u_input.a.x));
    var_0 = ~(~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_div_vec2_u32(u_input.b, u_input.a)), ~(4294967295u ^ var_0.x)));
    var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(~(~_wgslsmith_mod_u32(1u, 47676u)), ~(~4294967295u)), ~vec2<u32>(11991u, min(91205u, var_0.x) << (1u % 32u)));
    return Struct_2(_wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(abs(vec4<u32>(4294967295u, 37364u, var_0.x, 25633u)), vec4<u32>(var_0.x, 82667u, u_input.a.x, var_0.x)), firstTrailingBit(~select(vec4<u32>(12047u, var_0.x, 4294967295u, 0u), vec4<u32>(32189u, 4294967295u, u_input.a.x, var_0.x), false))), Struct_1(1i, 23744u, min(_wgslsmith_add_u32(countOneBits(u_input.b.x), var_0.x), ~(~4294967295u))));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2();
    let var_1 = Struct_2(vec4<u32>(4294967295u, abs(var_0.a.x), var_0.b.c, _wgslsmith_mult_u32(4294967295u, 1u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.c, u_input.a.x, 908u, 1u), var_0.a) % 32u)), func_2().b);
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_mult_i32(firstLeadingBit(var_0.b.a), ~(-1i)) ^ 1i, -2147483647i), -(vec3<i32>(-1i) * -select(vec3<i32>(var_0.b.a, -4499i, var_1.b.a), vec3<i32>(2147483647i, 9695i, 1i), false)));
    let var_3 = _wgslsmith_dot_vec3_u32(var_0.a.xzz, ~_wgslsmith_sub_vec3_u32(~var_1.a.wxw, _wgslsmith_add_vec3_u32(var_0.a.xxx, ~vec3<u32>(var_1.b.c, 175u, u_input.a.x))));
    let var_4 = var_1;
    return Struct_3(!(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false))), func_2().b, ~_wgslsmith_mod_u32(~(u_input.b.x >> (1u % 32u)), 24452u), true, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2161f)), 123f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1773f, -537f)) - -282f), 2040f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(508f + -1000f), _wgslsmith_f_op_f32(min(144f, 912f)), true))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -797f), _wgslsmith_f_op_f32(-283f - 834f), -1210f, _wgslsmith_div_f32(371f, 2215f)), vec4<f32>(_wgslsmith_f_op_f32(-1065f + 202f), _wgslsmith_f_op_f32(sign(1176f)), _wgslsmith_f_op_f32(trunc(1521f)), _wgslsmith_f_op_f32(1278f + -486f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-2147483647i, 16947u, u_input.a.x);
    let var_1 = func_1();
    var var_2 = Struct_5(firstLeadingBit(~vec2<i32>(var_0.a, select(1i, var_0.a, var_1.a.x))), Struct_4(1i, var_1.a, 43977u, func_2().b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.e.x)) + _wgslsmith_f_op_f32(-var_1.e.x))))));
    var_2 = Struct_5(var_2.a, Struct_4(var_2.a.x, select(select(!var_2.b.b, var_1.a, var_2.b.b), vec4<bool>(true, var_2.b.e != var_2.b.e, true, var_1.a.x), all(!vec4<bool>(var_2.b.b.x, var_2.b.b.x, var_2.b.b.x, var_2.b.b.x))), 55625u, func_2().b, _wgslsmith_f_op_f32(step(var_1.e.x, _wgslsmith_f_op_f32(f32(-1f) * -499f)))));
    var var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.c, 2827u, var_0.b, abs(~992u)), -283f, abs(~max(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_2.a.x, var_2.a.x), vec3<i32>(-20170i, 2147483647i, 43193i)), abs(vec3<i32>(2147483647i, 2147483647i, var_1.b.a)))), func_2().b.a, _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(50876u, u_input.b.x, ~var_0.b, func_3(vec3<i32>(var_0.a, var_2.a.x, var_1.b.a), vec2<i32>(16484i, var_1.b.a)).x), firstLeadingBit(~vec4<u32>(73241u, 2101u, 4294967295u, 1u))), ~select(vec4<u32>(var_0.b, 21123u, 4294967295u, 1u), vec4<u32>(var_0.b, var_2.b.c, var_2.b.c, var_1.b.b), vec4<bool>(true, var_2.b.b.x, false, false))));
}

