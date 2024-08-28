struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = !(_wgslsmith_clamp_u32(~u_input.a << (_wgslsmith_mult_u32(4294967295u, arg_0.x) % 32u), arg_1.c, ~0u | (2844u ^ arg_1.c)) != arg_1.c);
    var var_1 = Struct_1(any(!(!select(vec2<bool>(var_0, arg_1.b.x), arg_1.b, arg_1.b.x))));
    var var_2 = arg_1;
    var_1 = Struct_1(true);
    let var_3 = Struct_2(~arg_1.a, !select(!arg_1.b, var_2.b, !select(var_2.b, arg_1.b, arg_1.b)), 0u, false);
    return arg_1.a;
}

fn func_2() -> bool {
    let var_0 = Struct_2(-func_3(abs(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) & vec4<u32>(62767u, 68519u, u_input.a, 18557u)), Struct_2(~vec4<i32>(36070i, 58108i, -51634i, -38705i), vec2<bool>(true, true), 46635u, true)), vec2<bool>(true, true), _wgslsmith_div_u32(~(~u_input.a), u_input.a), true);
    let var_1 = Struct_1(var_0.b.x);
    var var_2 = vec2<u32>(var_0.c, ~4294967295u);
    var var_3 = 492f;
    var var_4 = var_1;
    return any(select(vec2<bool>(all(vec3<bool>(false, var_4.a, var_1.a)), !var_4.a), var_0.b, true)) || true;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> i32 {
    var var_0 = Struct_1(select(_wgslsmith_f_op_f32(round(-112f)) <= _wgslsmith_f_op_f32(abs(613f)), arg_1.b.x, false) | false);
    var var_1 = select(vec2<bool>((true && !arg_3.d) & true, true), !vec2<bool>(arg_3.d, !(true & arg_1.b.x)), !select(!arg_1.b, vec2<bool>(func_2(), arg_1.a.x > arg_3.a.x), any(arg_1.b)));
    var_0 = Struct_1(arg_3.a.x > arg_1.a.x);
    let var_2 = Struct_1(var_0.a);
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1093f, 403f, 385f), vec3<f32>(-1743f, 1038f, 269f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(785f, -617f, 242f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-1385f * -2052f), 1002f, _wgslsmith_f_op_f32(f32(-1f) * -1144f)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, -335f, false)) + 1932f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1049f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2444f)))));
    return ~0i;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(0i >> (firstLeadingBit(u_input.a) % 32u), select(-17453i, -2147483647i, all(vec2<bool>(true, false)))) <= func_4(vec4<u32>(u_input.a, ~max(1u, 4294967295u), min(~u_input.a, ~4294967295u), ~u_input.a & _wgslsmith_dot_vec4_u32(vec4<u32>(45695u, u_input.a, u_input.a, 26779u), vec4<u32>(13558u, u_input.a, 65778u, 1u))), Struct_2(~abs(vec4<i32>(-10498i, 0i, 2147483647i, 1i)), vec2<bool>(true, true), (u_input.a >> (u_input.a % 32u)) << (abs(u_input.a) % 32u), func_2()), ~(~u_input.a) & min(~1363u, ~u_input.a), Struct_2(-abs(vec4<i32>(-2147483647i, -2147483647i, -2147483647i, 2147483647i)), vec2<bool>(false, true), 1u, true));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(609f, -770f, 409f), vec3<f32>(-2045f, -310f, 874f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1179f, 382f, 958f) + vec3<f32>(673f, -175f, -1476f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(240f)), _wgslsmith_f_op_f32(243f + -1254f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(618f + -1380f) - _wgslsmith_f_op_f32(step(412f, 1153f)))), 244f, _wgslsmith_f_op_f32(-1066f + _wgslsmith_f_op_f32(f32(-1f) * -928f)))));
    let var_2 = 2147483647i;
    var var_3 = !(var_1.x > var_1.x);
    let var_4 = Struct_1(!all(!(!vec4<bool>(false, var_0, false, true))));
    return var_4;
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = func_1();
    let var_1 = _wgslsmith_sub_i32(-_wgslsmith_mod_i32(_wgslsmith_add_i32(2147483647i, ~(-1i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -24015i, -2147483647i, 1i), vec4<i32>(13039i, -16748i, -71559i, 0i)), 31040i)), 37140i | _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(8006i, -1i, -2147483647i, -2147483647i), vec4<i32>(2147483647i, -2147483647i, -1i, -1i))), ~6957i));
    var var_2 = Struct_2(_wgslsmith_mod_vec4_i32(max(~(vec4<i32>(-1i, -1i, 21225i, -47477i) << (vec4<u32>(3910u, u_input.a, 0u, u_input.a) % vec4<u32>(32u))), abs(vec4<i32>(var_1, -49754i, var_1, -1i)) ^ vec4<i32>(0i, 62328i, var_1, 1i)), select(~vec4<i32>(var_1, -2147483647i, -25508i, var_1), vec4<i32>(min(38129i, var_1), firstTrailingBit(var_1), 18821i, ~0i), !(!vec4<bool>(true, arg_0.a, var_0.a, false)))), !vec2<bool>(func_2(), false), u_input.a, !(_wgslsmith_mult_i32(abs(14149i), var_1 << (9988u % 32u)) <= ~(-var_1)));
    let var_3 = ~var_2.c;
    var_0 = Struct_1(arg_0.a);
    return Struct_2(var_2.a, var_2.b, 12826u, var_0.a);
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(455f)), -209f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-181f + _wgslsmith_f_op_f32(f32(-1f) * -1310f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -329f), -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-303f - 110f))) * _wgslsmith_f_op_f32(917f * _wgslsmith_f_op_f32(select(187f, 1000f, arg_1.d))))));
    let var_1 = -156f;
    var var_2 = func_2();
    var var_3 = func_5(func_1());
    let var_4 = arg_1.a.x;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(~((~vec2<u32>(u_input.a, u_input.a) & ~vec2<u32>(u_input.a, 22059u)) ^ ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 54532u), vec2<u32>(80389u, u_input.a))), func_5(func_1()), func_5(Struct_1(true)));
    var var_1 = select(vec2<bool>(true, true), select(select(!vec2<bool>(var_0.a, var_0.a), select(!vec2<bool>(false, var_0.a), select(vec2<bool>(false, var_0.a), vec2<bool>(true, true), false), !var_0.a), var_0.a & true), vec2<bool>(func_1().a, true | var_0.a), true), false);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1163f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1390f)))))));
    var_2 = -733f;
    var var_3 = _wgslsmith_div_f32(-268f, _wgslsmith_f_op_f32(-1f));
    var var_4 = vec4<bool>(true | !var_0.a, true | !all(!vec3<bool>(var_0.a, var_0.a, true)), any(vec3<bool>(true, !any(vec2<bool>(false, var_1.x)), !all(vec2<bool>(true, var_0.a)))), true & var_1.x);
    let var_5 = func_5(func_1());
    var var_6 = var_4.xw;
    let x = u_input.a;
    s_output = StorageBuffer(~(var_5.a.zwz << (firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 0u, var_5.c), vec3<u32>(0u, u_input.a, var_5.c), vec3<u32>(0u, var_5.c, u_input.a))) % vec3<u32>(32u))), ~select(vec3<i32>(-2147483647i, -5872i, 2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_5.a.x, 0i, -23223i), var_5.a.zxy, var_5.a.yzz), var_4.wxw) & (vec3<i32>(-69009i, -2147483647i << (u_input.a % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(var_5.a.x, -11068i), var_5.a.wy)) & select(func_3(vec4<u32>(1u, var_5.c, 69909u, 4294967295u), var_5).ywz, _wgslsmith_add_vec3_i32(var_5.a.yzy, vec3<i32>(var_5.a.x, -1i, 1i)), var_0.a)), vec3<f32>(_wgslsmith_f_op_f32(1185f - _wgslsmith_f_op_f32(f32(-1f) * -884f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-315f * _wgslsmith_f_op_f32(f32(-1f) * -579f)))), -1507f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(-261f))), 1946f, _wgslsmith_f_op_f32(max(-2139f, _wgslsmith_f_op_f32(floor(778f)))), _wgslsmith_f_op_f32(-456f - _wgslsmith_f_op_f32(max(-664f, -802f))))), ~func_3(vec4<u32>(u_input.a, 1u, 10809u, 1u << (u_input.a % 32u)), var_5).yz);
}

