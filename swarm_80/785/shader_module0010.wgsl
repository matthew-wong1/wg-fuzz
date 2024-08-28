struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<u32>) -> i32 {
    let var_0 = select(false, select(true, !(any(vec3<bool>(true, false, arg_1)) && !arg_1), all(select(select(vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(arg_1, false, false, false), vec4<bool>(arg_1, true, arg_1, false)), vec4<bool>(false, true, true, false), arg_1))), !(!arg_1));
    let var_1 = _wgslsmith_mod_i32(arg_0.a.d, -arg_0.c.d);
    let var_2 = -1089f;
    let var_3 = Struct_4(697f);
    let var_4 = vec2<i32>(u_input.a.x, -35264i);
    return 1i;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec4<u32>) -> u32 {
    let var_0 = Struct_2(Struct_1(23568i, _wgslsmith_f_op_f32(round(2194f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-837f, arg_1.x, arg_1.x) - vec3<f32>(arg_1.x, arg_1.x, -1440f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-946f, -210f, -1345f))))), u_input.a.x), Struct_1(-u_input.a.x, arg_1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_1.x)))), func_3(Struct_2(Struct_1(u_input.a.x, 1516f, vec3<f32>(1000f, arg_1.x, arg_1.x), u_input.a.x), Struct_1(u_input.a.x, 872f, vec3<f32>(arg_1.x, -237f, -379f), u_input.a.x), Struct_1(u_input.a.x, arg_1.x, vec3<f32>(-192f, arg_1.x, 1223f), u_input.a.x)), !(373f == arg_1.x), arg_2)), Struct_1(2147483647i, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(arg_1.x, arg_1.x)), -1000f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2008f), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), abs(u_input.a.x | countOneBits(u_input.a.x))));
    var var_1 = -213f;
    var var_2 = vec2<i32>(_wgslsmith_mult_i32(-countOneBits(firstTrailingBit(-2147483647i)), max(2147483647i, -u_input.a.x)), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, -2147483647i, var_0.b.a), -vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, var_0.a.d, var_0.a.a), _wgslsmith_mult_i32(u_input.a.x, 0i), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x))));
    let var_3 = max(~abs(select(firstLeadingBit(vec2<u32>(u_input.c.x, arg_2.x)), firstLeadingBit(arg_2.zy), true)), _wgslsmith_div_vec2_u32(~vec2<u32>(14437u, 4294967295u) << (vec2<u32>(arg_2.x, 4294967295u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(reverseBits(u_input.b), arg_2.zx) ^ u_input.c.xw));
    var var_4 = ~arg_0.x;
    return 4294967295u;
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<u32>(max(~1u, _wgslsmith_div_u32(1134u, u_input.c.x)), ~func_2(~(u_input.c.wwx ^ u_input.c.ywz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec4<u32>(~u_input.b.x, u_input.b.x, 1u, 26327u)), u_input.b.x);
    var_0 = u_input.c.wzz;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2544f), -721f, false))), -489f)), _wgslsmith_f_op_f32(-188f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(145f)))))))));
    let var_2 = Struct_2(Struct_1(-(u_input.a.x << (_wgslsmith_clamp_u32(var_0.x, var_0.x, 20189u) % 32u)), _wgslsmith_f_op_f32(-762f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - var_1), _wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-625f, _wgslsmith_f_op_f32(floor(-1100f)), _wgslsmith_div_f32(var_1, var_1)))), (i32(-1i) * -2371i) << (_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.b.x), var_0.x) % 32u)), Struct_1(reverseBits(func_3(Struct_2(Struct_1(u_input.a.x, -1167f, vec3<f32>(321f, 332f, var_1), 1i), Struct_1(1i, var_1, vec3<f32>(var_1, -1000f, -1173f), u_input.a.x), Struct_1(-1i, 894f, vec3<f32>(var_1, 177f, var_1), 2147483647i)), true, u_input.c) & countOneBits(u_input.a.x)), -858f, vec3<f32>(643f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1256f))), _wgslsmith_f_op_f32(-104f + _wgslsmith_f_op_f32(round(var_1)))), max(-(u_input.a.x >> (var_0.x % 32u)), 1i)), Struct_1(1i << (var_0.x % 32u), 1074f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2046f, 2227f, var_1)))), u_input.a.x ^ _wgslsmith_mult_i32(-24163i, _wgslsmith_div_i32(25667i, u_input.a.x))));
    var_0 = ~(~(~(~u_input.c.xzw)));
    return var_2.a;
}

fn func_4(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = _wgslsmith_add_u32(u_input.b.x, 0u);
    var var_1 = arg_0.a.d;
    var_1 = func_1().d;
    var var_2 = ~u_input.c.x;
    var var_3 = Struct_4(-230f);
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1549f - var_3.a) * -624f), func_1().c.x), -578f), 123f, 466f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(func_4(Struct_2(Struct_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -21332i), u_input.a.xy), 1000f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1499f, 318f, 355f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(254f, 2595f, -1327f), vec3<f32>(-1294f, -1396f, -571f)))), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, -2147483647i), abs(vec2<i32>(u_input.a.x, u_input.a.x)))), Struct_1(-2147483647i, _wgslsmith_f_op_f32(-584f + 1000f), vec3<f32>(-1174f, _wgslsmith_f_op_f32(323f * -134f), -2008f), u_input.a.x), func_1())));
    var var_2 = 0u;
    var_2 = 1u;
    var var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, 1f, -1262f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, -190f), vec3<f32>(var_1.x, 955f, -447f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1.x, 242f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1185f, var_1.x))))), all(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)))));
    var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_3.x, 296f)))) + _wgslsmith_f_op_f32(126f - var_3.x))));
    var var_4 = 1865f;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~u_input.b.x), ~(~vec3<u32>(countOneBits(u_input.c.x), u_input.b.x, countOneBits(0u))), -18656i, -400f);
}

