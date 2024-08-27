struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec4<f32> {
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.a, vec3<f32>(global0.c, global0.c, global0.a.x), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))))), global0.b, _wgslsmith_f_op_f32(global0.b.d.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(ceil(843f)))), global0.a.x)));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(873f, global0.c, -1000f))))))), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-531f, global0.c, false)) - _wgslsmith_f_op_f32(global0.a.x - -1920f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-492f, -1493f)))));
    var var_0 = false;
    let var_1 = abs(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 13983i), vec3<i32>(11209i, u_input.a, u_input.a)) << (vec3<u32>(36013u, 31468u, 1u) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-11352i, 15190i), vec2<i32>(1i, 165i)), 2147483647i, ~3399i))) | (-u_input.a >> (_wgslsmith_mult_u32(global0.b.c, global0.b.c) % 32u));
    global0 = Struct_2(vec3<f32>(global0.c, _wgslsmith_f_op_f32(global0.c * -2151f), 492f), Struct_1(global0.b.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(global0.b.b, global0.b.b))))), ~(~(~global0.b.c)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -697f), _wgslsmith_f_op_f32(ceil(-1883f)), _wgslsmith_f_op_f32(933f - global0.a.x), 708f), _wgslsmith_f_op_vec4_f32(global0.b.d * _wgslsmith_div_vec4_f32(global0.b.d, global0.b.d))), global0.b.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.x)))))));
    return _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, _wgslsmith_f_op_f32(floor(global0.c)), -1109f, _wgslsmith_div_f32(global0.c, -1399f)), global0.b.d));
}

fn func_2(arg_0: u32, arg_1: bool) -> u32 {
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-115f, _wgslsmith_f_op_f32(trunc(global0.a.x)), _wgslsmith_f_op_f32(round(global0.c))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.b.b.x, global0.c, -432f))))), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + global0.a.x) - 1183f));
    var var_0 = ~(-25631i);
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(max(global0.b.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.b.b.x, global0.c, global0.a.x)))))), Struct_1(~vec4<u32>(0u, global0.b.a.x, 25118u, ~arg_0), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global0.b.b - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.c, global0.b.b.x) - vec3<f32>(-505f, global0.a.x, global0.b.d.x))))), ~global0.b.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-308f, -1622f, 1000f, 1000f) + _wgslsmith_f_op_vec4_f32(floor(global0.b.d))), _wgslsmith_f_op_vec4_f32(func_3()), (arg_0 | global0.b.c) < ~13528u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * -445f))));
    var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x, _wgslsmith_f_op_f32(select(995f, var_1.a.x, arg_1 | false))), Struct_1(firstLeadingBit(~vec4<u32>(var_1.b.c, 12455u, global0.b.a.x, var_1.b.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_1.a)))), 15092u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.b.d.x, -181f, 698f, 1558f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a.x, var_1.b.d.x, -481f, var_1.a.x), var_1.b.d))) - vec4<f32>(127f, -185f, global0.b.d.x, global0.c)), 897f));
    let var_2 = arg_0;
    return _wgslsmith_div_u32(arg_0, countOneBits(_wgslsmith_div_u32(~1u, ~min(arg_0, 34373u))));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: bool, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = arg_1.yyx;
    var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(max(vec3<u32>(global0.b.a.x, 95372u, 78154u), ~global0.b.a.xwx), countOneBits(_wgslsmith_mult_vec3_u32(global0.b.a.zyw, vec3<u32>(var_0.x, global0.b.c, 16104u)))), ~(~arg_1.wxz)), vec3<u32>(global0.b.a.x, ~(func_2(4294967295u, arg_2) & ~global0.b.c), var_0.x));
    var var_1 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(~abs(arg_1.x), _wgslsmith_div_u32(arg_1.x, ~4294967295u)), ~vec2<u32>(~arg_1.x, 74924u >> (arg_1.x % 32u)), ~select(_wgslsmith_mod_vec2_u32(arg_1.ww, arg_1.zy), countOneBits(vec2<u32>(1u, arg_1.x)), select(vec2<bool>(true, arg_2), vec2<bool>(true, false), vec2<bool>(true, arg_0))));
    var var_2 = Struct_1(abs(firstLeadingBit(vec4<u32>(~8559u, 1u, _wgslsmith_mult_u32(var_1.x, 1u), abs(var_0.x)))), _wgslsmith_f_op_vec4_f32(func_3()).wzz, min(~(~1u), abs(firstLeadingBit(var_1.x >> (38101u % 32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -1000f, global0.b.e, global0.c) + vec4<f32>(global0.c, global0.c, global0.a.x, global0.c)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.b.d.x, 1165f, global0.a.x, global0.c), global0.b.d))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))), _wgslsmith_div_f32(-2364f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + 966f) - _wgslsmith_div_f32(global0.b.d.x, global0.b.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.c * global0.a.x), global0.c, arg_0))))));
    let var_3 = arg_3.x;
    return Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_3()).xwz - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.d.x, _wgslsmith_f_op_f32(abs(global0.b.b.x)), 1075f)))), global0.b);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    global0 = Struct_2(arg_1.b.b, Struct_1(_wgslsmith_clamp_vec4_u32(global0.b.a, _wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, global0.b.a.x, arg_0.x, arg_1.b.a.x)), func_1(true, global0.b.a, false, vec2<i32>(26106i, -15850i)).b.a), arg_1.b.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_1.b.d.xwz, vec3<f32>(-1079f, -1497f, -882f))) * _wgslsmith_f_op_vec3_f32(-global0.b.b)), arg_1.b.b), _wgslsmith_add_u32(36780u, arg_0.x), global0.b.d, _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(-arg_1.a.x));
    var var_0 = ~0u;
    var var_1 = reverseBits(vec3<u32>(105949u, 19308u << (arg_0.x % 32u), _wgslsmith_mult_u32(global0.b.c, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 1u, 1u, 4294967295u)), arg_1.b.a))));
    var_1 = vec3<u32>(arg_1.b.a.x, countOneBits(52218u), abs(_wgslsmith_div_u32(var_1.x, _wgslsmith_mult_u32(var_1.x, 57459u) >> ((arg_1.b.c >> (95862u % 32u)) % 32u))));
    var_1 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x ^ 34229u, _wgslsmith_add_u32(arg_0.x, 35424u), global0.b.a.x) | global0.b.a.xzx, vec3<u32>(4294967295u, func_2(_wgslsmith_dot_vec2_u32(var_1.xy, vec2<u32>(arg_0.x, 13157u)), any(vec2<bool>(false, false))), 1u));
    return arg_1.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32) -> Struct_1 {
    global0 = Struct_2(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(385f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1027f), _wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_f32(f32(-1f) * -198f)), Struct_1(arg_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b.x, global0.b.d.x, 1429f), global0.b.b, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global0.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(995f, -460f, 952f) - vec3<f32>(global0.a.x, arg_2, global0.a.x)))), ~abs(43408u), arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3()).x * _wgslsmith_f_op_f32(585f * _wgslsmith_f_op_f32(1271f + -1091f)))), -1000f);
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_2, _wgslsmith_div_f32(345f, 569f))))), Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(-arg_0.d.yzw), ~(~global0.b.a.x & global0.b.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.c), arg_2, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(floor(-218f)))), _wgslsmith_f_op_f32(-arg_0.e)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1056f)))));
    var var_0 = all(!vec3<bool>(true, _wgslsmith_f_op_f32(floor(1067f)) <= arg_2, false));
    let var_1 = arg_0.a;
    let var_2 = any(select(vec4<bool>(!(arg_1.x != 2147483647i), all(vec4<bool>(true, true, false, false)), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))), true), select(vec4<bool>(true, arg_0.d.x >= arg_2, all(vec2<bool>(false, false)), arg_0.c != 4294967295u), vec4<bool>(global0.b.a.x == var_1.x, true, arg_2 >= 892f, all(vec3<bool>(true, false, true))), !any(vec2<bool>(false, false))), any(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))));
    return Struct_1(~(~arg_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_0.d.xww + arg_0.d.xzy)))), 4294967295u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, global0.b.e, 113f, arg_0.b.x), global0.b.d, vec4<bool>(var_2, var_2, true, var_2))))), vec4<f32>(_wgslsmith_f_op_f32(max(767f, _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1261f - global0.a.x))), vec4<bool>(true, any(vec2<bool>(var_2, var_2)) || select(var_2, var_2, var_2), false, arg_1.x > u_input.a))), _wgslsmith_div_f32(arg_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-970f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(606f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-105f - 340f)), _wgslsmith_f_op_f32(select(-1000f, -222f, true)), global0.c) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-241f, global0.a.x), -179f, _wgslsmith_f_op_f32(-global0.a.x)))), func_5(func_4(abs(vec2<u32>(global0.b.c, 17600u)), func_1(all(vec2<bool>(false, false)), vec4<u32>(57304u, global0.b.a.x, 1u, global0.b.a.x), select(true, false, true), vec2<i32>(2147483647i, u_input.a) | vec2<i32>(0i, u_input.a)), ~u_input.a), vec4<i32>(u_input.a | -2147483647i, -39875i, -u_input.a, reverseBits(u_input.a)) & ~select(vec4<i32>(u_input.a, -22923i, 1i, u_input.a), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), vec4<bool>(true, true, false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-715f, func_1(true, global0.b.a, true, vec2<i32>(34209i, u_input.a)).a.x)))), global0.b.d.x);
    var var_0 = u_input.a;
    var var_1 = !select(vec2<bool>(true, true), !select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), true);
    var_0 = -5661i;
    let var_2 = 0u;
    var var_3 = func_1(all(select(vec3<bool>(var_1.x, var_1.x, true == var_1.x), vec3<bool>(true, all(vec4<bool>(true, var_1.x, var_1.x, var_1.x)), true), vec3<bool>(false, true, var_1.x == true))), global0.b.a, -1828f <= global0.c, abs(vec2<i32>(u_input.a, u_input.a)) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u))).b;
    var_1 = select(select(!vec2<bool>(all(vec4<bool>(true, var_1.x, false, var_1.x)), !var_1.x), select(vec2<bool>(true, true), select(!vec2<bool>(true, var_1.x), !vec2<bool>(false, var_1.x), 0i > u_input.a), !(!var_1.x)), select(select(select(vec2<bool>(var_1.x, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(var_1.x, true), vec2<bool>(false, true), true), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x), true)), vec2<bool>(!var_1.x, all(vec3<bool>(false, true, false))), vec2<bool>(all(vec3<bool>(true, true, var_1.x)), false))), vec2<bool>(all(!select(vec2<bool>(var_1.x, false), vec2<bool>(true, true), false)), true), true);
    let x = u_input.a;
    s_output = StorageBuffer(func_5(global0.b, _wgslsmith_div_vec4_i32(max(~vec4<i32>(0i, 32159i, u_input.a, -1i), abs(vec4<i32>(270i, 0i, 0i, u_input.a))), firstTrailingBit(-vec4<i32>(0i, 4111i, u_input.a, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(var_3.a.wy, Struct_3(var_3.b, Struct_1(vec4<u32>(4294967295u, 18755u, 0u, var_3.a.x), var_3.b, var_2, vec4<f32>(2568f, 1517f, -2346f, global0.a.x), 315f)), u_input.a).e))).d, _wgslsmith_sub_vec2_i32(select(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(-2147483647i, 0i), vec2<i32>(u_input.a, 956i), true), vec2<i32>(0i, u_input.a), vec2<i32>(-16594i, u_input.a)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-21357i, -2147483647i, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -23139i, 1i), vec3<i32>(u_input.a, -1i, u_input.a))), select(!vec2<bool>(var_1.x, false), !vec2<bool>(true, var_1.x), select(vec2<bool>(false, false), vec2<bool>(false, true), var_1.x))), _wgslsmith_div_vec2_i32(vec2<i32>(countOneBits(-1i), _wgslsmith_div_i32(56369i, 504i)), firstTrailingBit(~vec2<i32>(u_input.a, u_input.a)))), _wgslsmith_f_op_vec4_f32(func_3()).x, ~global0.b.a);
}

