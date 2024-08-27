struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: vec3<bool>) -> vec4<u32> {
    let var_0 = countOneBits(-38557i);
    let var_1 = ~(-(vec4<i32>(u_input.a.x, 11232i, var_0, var_0) ^ max(vec4<i32>(31495i, 0i, u_input.d.x, 29191i), vec4<i32>(var_0, -57011i, var_0, u_input.a.x)))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.b, u_input.b, min(_wgslsmith_dot_vec2_u32(vec2<u32>(33u, u_input.b), vec2<u32>(0u, u_input.c.x)), arg_0), u_input.b), min(~u_input.c, ~u_input.c)) % vec4<u32>(32u));
    let var_2 = Struct_2(~u_input.c.xw, arg_2 ^ ~arg_2, Struct_1(~_wgslsmith_dot_vec4_i32(select(var_1, vec4<i32>(-23226i, 39510i, u_input.a.x, var_0), vec4<bool>(true, arg_3.x, true, false)), ~var_1), 0u ^ ~countOneBits(u_input.b)), ~u_input.c.zzz);
    let var_3 = vec4<bool>(true, any(vec2<bool>(true, all(vec4<bool>(false, true, arg_3.x, arg_3.x)))), !any(select(arg_3.zx, select(arg_3.xy, arg_3.xy, arg_3.yx), -10919i > var_2.c.a)), false & arg_3.x);
    var var_4 = Struct_1(select(var_0, -var_2.c.a, !select(true, all(vec3<bool>(true, false, false)), true)), arg_2);
    return u_input.c;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_3(vec3<u32>(~u_input.b, abs(~(~u_input.c.x)), ~_wgslsmith_mult_u32(~u_input.c.x, u_input.b)), vec3<bool>(!all(vec3<bool>(true, true, true)), true, -(u_input.d.x & u_input.a.x) < _wgslsmith_add_i32(1i, _wgslsmith_mod_i32(620i, u_input.a.x))), _wgslsmith_f_op_vec2_f32(-arg_1.zy), Struct_2(vec2<u32>(0u, 14738u), max(u_input.c.x, 1u), Struct_1(-1i, (22071u ^ u_input.b) ^ ~116296u), vec3<u32>(~27325u, u_input.b, _wgslsmith_mult_u32(~u_input.b, ~32870u))));
    var var_1 = Struct_2(vec2<u32>(var_0.a.x, ~var_0.a.x), _wgslsmith_dot_vec4_u32(func_3(_wgslsmith_mult_u32(4294967295u, u_input.c.x), -353f, 0u, var_0.b), abs(~_wgslsmith_div_vec4_u32(vec4<u32>(93019u, 18246u, 0u, 1u), u_input.c))), Struct_1(_wgslsmith_sub_i32(u_input.d.x, 3241i), u_input.b), vec3<u32>(~var_0.d.d.x, ~(~var_0.d.c.b), u_input.c.x));
    var var_2 = Struct_3(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(7868u, 0u, 4294967295u)), var_1.d), _wgslsmith_mult_vec3_u32(u_input.c.xwy ^ vec3<u32>(12056u, 11018u, var_0.a.x), vec3<u32>(var_1.b, var_0.a.x, u_input.b)), min(vec3<u32>(u_input.b, 1387u, 35470u), vec3<u32>(var_0.d.a.x, 80264u, u_input.c.x))), vec3<bool>(var_0.b.x, !(true | var_0.b.x), ~4294967295u >= u_input.c.x), vec2<f32>(arg_1.x, -1397f), Struct_2(u_input.c.xy, ~_wgslsmith_mult_u32(min(1u, var_1.c.b), firstTrailingBit(0u)), Struct_1(var_0.d.c.a, ~(var_1.c.b ^ u_input.c.x)), ~vec3<u32>(var_0.a.x, countOneBits(u_input.b), var_0.d.a.x ^ var_1.c.b)));
    var var_3 = ~u_input.b;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, arg_1.x, arg_1.x, var_0.c.x))))) - vec4<f32>(1000f, _wgslsmith_f_op_f32(var_0.c.x - arg_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x))), 384f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -370f, arg_1.x, -929f), vec4<f32>(186f, arg_0.x, var_0.c.x, -1260f))))))));
    return var_1.c;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(select(~(~vec2<u32>(arg_1.b, 1u)) ^ u_input.c.xz, u_input.c.yw, true), u_input.b, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-156f - arg_0), -178f, -187f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) * vec3<f32>(arg_0, 127f, arg_0))))), abs(abs(vec3<u32>(4294967295u, 4294967295u, 54954u) ^ ~u_input.c.xwz)));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -136f);
    var var_3 = _wgslsmith_f_op_f32(-628f + arg_0);
    return func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-288f + arg_0), _wgslsmith_f_op_f32(-var_1)))), 165f, arg_0), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1))), arg_0, arg_0))));
}

fn func_1() -> Struct_2 {
    var var_0 = !all(vec4<bool>(any(vec2<bool>(true, true)), false, true, select(true, false, true)));
    let var_1 = _wgslsmith_div_i32(~u_input.d.x, u_input.a.x);
    var_0 = true;
    let var_2 = !select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)), vec3<bool>(u_input.c.x < 57299u, false, true), u_input.d.x != -766i), vec3<bool>(true, true, true), !(true | (1i >= var_1)));
    var_0 = all(vec2<bool>((_wgslsmith_f_op_f32(select(-377f, 1099f, var_2.x)) <= 642f) & var_2.x, abs(_wgslsmith_mod_u32(0u, u_input.b)) >= ~_wgslsmith_div_u32(u_input.b, u_input.c.x)));
    return Struct_2(u_input.c.yw, u_input.c.x, func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -434f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_2(vec3<f32>(_wgslsmith_f_op_f32(abs(-740f)), -863f, _wgslsmith_div_f32(-379f, 252f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(896f, 193f, -748f), vec3<f32>(229f, -1320f, -844f))))), u_input.c.xxw ^ ~u_input.c.zyy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a.x & -10355i, u_input.b);
    let var_1 = func_1();
    var var_2 = var_1;
    var var_3 = func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec3<f32>(_wgslsmith_f_op_f32(abs(360f)), -1000f, _wgslsmith_f_op_f32(-125f - -323f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-136f, -871f, 1181f))))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(442f, 213f), _wgslsmith_f_op_f32(step(3535f, 1475f)), 1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1693f, 1402f, -830f), vec3<f32>(-161f, -421f, 457f))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -638f, 774f)))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1664f, 604f, 955f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1562f, -1123f, -869f), vec3<f32>(274f, -763f, 467f), vec3<bool>(true, true, false)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -340f), 516f, _wgslsmith_f_op_f32(sign(1189f)))))));
    let var_4 = vec2<u32>(_wgslsmith_sub_u32(func_3(firstTrailingBit(~var_3.b), _wgslsmith_f_op_f32(742f - 316f), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b, u_input.c.x, 0u, 19039u), u_input.c), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(false, false, true), all(vec2<bool>(false, false)))).x, abs(~(1u >> (var_3.b % 32u)))), _wgslsmith_sub_u32(_wgslsmith_add_u32(~var_2.a.x, ~var_3.b), _wgslsmith_sub_u32(var_1.b, countOneBits(var_2.c.b))));
    var_2 = Struct_2(_wgslsmith_add_vec2_u32(abs(vec2<u32>(func_1().b, u_input.c.x << (var_0.b % 32u))), vec2<u32>(select(~1u, 0u, any(vec4<bool>(false, true, true, true))), abs(25942u))), 1u, Struct_1(max(1i, var_0.a >> (4294967295u % 32u)) | 3242i, 5517u), max(select(~vec3<u32>(var_1.b, 34097u, var_3.b), var_1.d, false), _wgslsmith_add_vec3_u32(var_1.d, firstTrailingBit(vec3<u32>(var_3.b, 1u, var_4.x))) & u_input.c.xzx));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-537f, 186f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1886f))))));
    let var_6 = !vec2<bool>(true, all(vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~max(firstLeadingBit(vec3<i32>(32880i, -2147483647i, -5005i)), -vec3<i32>(var_0.a, var_2.c.a, var_0.a))), vec2<u32>(9654u, func_2(vec3<f32>(791f, _wgslsmith_f_op_f32(floor(528f)), _wgslsmith_f_op_f32(1000f + 960f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(561f, -1541f, -849f)))).b));
}

