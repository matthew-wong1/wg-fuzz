struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -778f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_4) -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -523f))), 573f);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: bool) -> vec4<u32> {
    var var_0 = !select(!select(vec2<bool>(true, false), vec2<bool>(arg_3, true), vec2<bool>(true, arg_3)), select(!(!vec2<bool>(arg_3, arg_3)), vec2<bool>(false, true), select(vec2<bool>(arg_3, true), vec2<bool>(arg_3, arg_3), true)), select(vec2<bool>(false, arg_3), vec2<bool>(all(vec3<bool>(arg_3, false, false)), any(vec4<bool>(arg_3, false, true, true))), select(!vec2<bool>(arg_3, true), !vec2<bool>(arg_3, true), vec2<bool>(false, arg_3))));
    let var_1 = Struct_3(select(~(~vec4<u32>(65384u, 21519u, 23859u, 1u)) >> (vec4<u32>(~arg_1.a, 1u, max(arg_2.a, 0u), arg_1.a | 1354u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mult_u32(0u, 1u), 0u, 4294967295u << (arg_0.x % 32u), arg_1.a) >> (reverseBits(vec4<u32>(arg_1.a, 14503u, arg_0.x, 41376u)) % vec4<u32>(32u)), vec4<bool>(var_0.x, var_0.x, !(!var_0.x), true)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(872f, 1086f)), -978f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1251f))), _wgslsmith_div_f32(-394f, _wgslsmith_f_op_f32(select(-164f, 2481f, var_0.x)))))), !(!arg_3), false);
    global0 = -139f;
    var_0 = !(!select(select(select(vec2<bool>(false, var_1.d), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, true)), vec2<bool>(var_0.x, var_0.x), any(vec2<bool>(false, true))), vec2<bool>(true, true), vec2<bool>(false, true)));
    global0 = _wgslsmith_f_op_f32(-var_1.b.x);
    return ~(~var_1.a);
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> vec2<i32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1437f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(!vec4<bool>(arg_0, arg_1.c, arg_1.d, true), ~vec2<u32>(1u, 0u), 9686i, Struct_4(4294967295u))).x)));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(437f))))))), _wgslsmith_f_op_f32(round(381f)));
    var var_0 = arg_0;
    var var_1 = Struct_3(~abs(arg_1.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1.b)))))), !any(!(!vec2<bool>(false, arg_0))), true);
    let var_2 = vec3<u32>(~(34770u ^ func_3(vec2<u32>(0u, 4294967295u), Struct_4(4294967295u), Struct_2(arg_1.a.x), true).x) ^ func_3(select(abs(var_1.a.yw), _wgslsmith_div_vec2_u32(arg_1.a.wx, var_1.a.wy), all(vec3<bool>(false, arg_1.c, arg_0))), Struct_4(abs(var_1.a.x)), Struct_2(34281u), !(false || arg_0)).x, abs(_wgslsmith_dot_vec2_u32(var_1.a.yx, ~vec2<u32>(19300u, 61807u))), _wgslsmith_sub_u32(arg_1.a.x, 4294967295u));
    return _wgslsmith_sub_vec2_i32(-(abs(~u_input.b.xw) | _wgslsmith_sub_vec2_i32(vec2<i32>(-937i, u_input.b.x), vec2<i32>(-1i, u_input.a))), u_input.b.xy);
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_2.b.x)))) + arg_1.b.x), _wgslsmith_f_op_f32(trunc(1723f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(213f, -153f) - arg_1.b.yx), vec2<f32>(arg_2.b.x, 1013f)), vec2<f32>(_wgslsmith_div_f32(1052f, arg_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -357f))))));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0 - -2102f), -1314f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -155f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.b.x)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(arg_2.c, true, arg_2.d, arg_2.d), arg_2.a.wy, 26248i, Struct_4(arg_2.a.x)))), arg_1.b.yz)));
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_clamp_vec2_i32(func_4(arg_1.d, Struct_3(func_3(abs(vec2<u32>(24723u, 0u)), Struct_4(30811u), Struct_2(0u), 88098u < arg_1.a.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.b * vec3<f32>(arg_0, arg_1.b.x, var_0.x)), _wgslsmith_div_vec3_f32(arg_1.b, arg_1.b)), true, var_0.x <= _wgslsmith_f_op_f32(arg_1.b.x - var_0.x))), u_input.b.yx, u_input.b.xy);
    let var_3 = vec3<bool>(arg_1.c, select(true, !any(vec3<bool>(true, arg_2.c, true)), select(true, select(true, arg_2.c, false), arg_1.d)), false);
    return Struct_4(abs(~11006u));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: i32, arg_3: Struct_4) -> vec3<bool> {
    var var_0 = min(_wgslsmith_sub_vec3_u32(abs(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_1.a), vec3<u32>(arg_3.a, arg_3.a, arg_0.a))), vec3<u32>(~arg_3.a, 68917u, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(~arg_3.a, arg_3.a & (4294967295u ^ arg_0.a), ~(~4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, func_3(vec2<u32>(17068u, arg_3.a), Struct_4(arg_1.a), Struct_2(arg_3.a), true).x, _wgslsmith_mult_u32(arg_3.a, 0u)), max(vec3<u32>(4294967295u, 4294967295u, arg_0.a), min(vec3<u32>(4294967295u, 4294967295u, 91716u), vec3<u32>(arg_1.a, arg_0.a, 100014u))))));
    var var_1 = Struct_2(~(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, arg_3.a, arg_3.a), vec4<u32>(4294967295u, var_0.x, var_0.x, 50032u)), arg_0.a) ^ func_1(_wgslsmith_f_op_f32(ceil(677f)), Struct_3(vec4<u32>(1u, 21557u, 0u, arg_1.a), vec3<f32>(-1623f, -171f, 525f), true, true), Struct_3(vec4<u32>(59479u, arg_3.a, 1u, arg_1.a), vec3<f32>(851f, -278f, -955f), true, false)).a));
    var var_2 = vec3<bool>(true, all(vec4<bool>(true, true, true, true)), all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec4<bool>(true, false, true, false)) || true)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-626f, _wgslsmith_div_f32(-3410f, -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -431f))) - vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-146f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f)))), _wgslsmith_f_op_f32(round(1017f))));
    let var_4 = Struct_5(-269f, Struct_2(_wgslsmith_mod_u32(func_1(_wgslsmith_f_op_f32(-var_3.x), Struct_3(vec4<u32>(1u, 2349u, 35596u, 1u), vec3<f32>(1370f, var_3.x, -167f), false, var_2.x), Struct_3(vec4<u32>(3122u, arg_0.a, 4294967295u, 31167u), vec3<f32>(-274f, var_3.x, var_3.x), var_2.x, var_2.x)).a, var_1.a)));
    return select(select(vec3<bool>(var_2.x, var_2.x, !var_2.x), select(!(!vec3<bool>(true, var_2.x, true)), !select(vec3<bool>(true, false, false), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, true, true)), vec3<bool>(all(vec3<bool>(var_2.x, var_2.x, false)), var_2.x, select(true, var_2.x, true))), select(select(!vec3<bool>(var_2.x, false, var_2.x), select(vec3<bool>(true, var_2.x, true), vec3<bool>(var_2.x, var_2.x, true), true), all(vec4<bool>(true, false, true, true))), vec3<bool>(true, false, true), vec3<bool>(var_2.x, true, false))), select(select(select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(true, var_2.x, var_2.x), !vec3<bool>(var_2.x, var_2.x, var_2.x)), !vec3<bool>(false, var_2.x, var_2.x), var_2.x), vec3<bool>(true, true, true), !vec3<bool>(all(vec4<bool>(true, var_2.x, false, var_2.x)), arg_2 >= u_input.b.x, false)), select(select(select(vec3<bool>(var_2.x, false, false), vec3<bool>(var_2.x, true, var_2.x), var_2.x), !select(vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(true, false, false)), true), select(!select(vec3<bool>(false, true, false), vec3<bool>(var_2.x, var_2.x, var_2.x), false), vec3<bool>(any(vec3<bool>(var_2.x, var_2.x, true)), any(vec3<bool>(var_2.x, var_2.x, true)), var_2.x), any(select(vec3<bool>(true, var_2.x, false), vec3<bool>(false, var_2.x, false), vec3<bool>(false, true, var_2.x)))), any(vec4<bool>(var_2.x, true, any(var_2.zy), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(true, true, any(vec2<bool>(all(vec3<bool>(false, true, false)), true))), select(select(func_5(Struct_4(36212u), func_1(-339f, Struct_3(vec4<u32>(1u, 0u, 1u, 0u), vec3<f32>(-634f, 1032f, -223f), false, true), Struct_3(vec4<u32>(63234u, 0u, 4294967295u, 1u), vec3<f32>(1463f, 496f, -1000f), true, false)), -12493i, Struct_4(0u)), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), all(func_5(Struct_4(1u), func_1(-1342f, Struct_3(vec4<u32>(34124u, 0u, 22295u, 18968u), vec3<f32>(-1000f, -782f, -989f), true, false), Struct_3(vec4<u32>(62819u, 0u, 52669u, 51578u), vec3<f32>(-825f, -235f, -521f), false, true)), 17501i | reverseBits(u_input.a), func_1(-196f, Struct_3(vec4<u32>(36966u, 0u, 4294967295u, 0u), vec3<f32>(1085f, -191f, 729f), false, true), Struct_3(vec4<u32>(10499u, 0u, 0u, 31028u), vec3<f32>(124f, -870f, -545f), true, false)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-725f, _wgslsmith_f_op_f32(abs(-1435f)), func_5(Struct_4(60822u), Struct_4(66397u), -5261i, Struct_4(26495u)).x))), -1173f, all(select(select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(true, true, false, var_0.x), var_0.x), !vec4<bool>(var_0.x, true, false, true), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(var_0.x, false, false, false)))))));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_2(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x)), ~vec2<u32>(4294967295u, 32052u), 1i, func_1(-657f, Struct_3(vec4<u32>(1u, 1u, 87800u, 0u), vec3<f32>(-1060f, 1233f, 924f), true, false), Struct_3(vec4<u32>(29449u, 0u, 0u, 58170u), vec3<f32>(-175f, 130f, 890f), false, false)))).x, -675f))), Struct_2(14919u));
    let var_3 = 0i;
    var_2 = Struct_5(_wgslsmith_f_op_f32(-var_2.a), var_2.b);
    var var_4 = vec3<u32>(4294967295u, func_1(var_2.a, Struct_3(vec4<u32>(41614u, func_3(vec2<u32>(var_2.b.a, 40311u), Struct_4(7771u), Struct_2(31093u), true).x, max(32270u, var_2.b.a), reverseBits(13686u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1380f, -329f, 652f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.a, var_2.a, var_2.a))), vec3<bool>(var_0.x, true, var_0.x))), select(var_0.x, 10267u >= var_2.b.a, true), true), Struct_3(~(vec4<u32>(0u, var_2.b.a, 4294967295u, var_2.b.a) << (vec4<u32>(var_2.b.a, var_2.b.a, 5701u, var_2.b.a) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, 970f, 386f)))), var_0.x, var_0.x)).a, _wgslsmith_add_u32(~max(var_2.b.a, _wgslsmith_sub_u32(77818u, 0u)), ~(~var_2.b.a)));
    var_4 = _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_4.x, ~5948u, var_4.x & func_1(var_2.a, Struct_3(vec4<u32>(26479u, 64637u, var_2.b.a, var_2.b.a), vec3<f32>(1616f, -197f, -1214f), false, var_0.x), Struct_3(vec4<u32>(var_4.x, var_4.x, var_2.b.a, 4294967295u), vec3<f32>(-1995f, 268f, 671f), var_0.x, var_0.x)).a), ~countOneBits(min(vec3<u32>(0u, var_4.x, var_4.x), vec3<u32>(47054u, var_4.x, 4294967295u)))), firstLeadingBit(vec3<u32>(firstLeadingBit(var_4.x), 4294967295u, ~var_2.b.a)), ~vec3<u32>(18215u, var_2.b.a << (0u % 32u), ~var_4.x));
    var var_5 = func_4(true, Struct_3(reverseBits(~vec4<u32>(4294967295u, var_2.b.a, 4294967295u, 9846u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1847f, -698f, var_2.a) * vec3<f32>(var_2.a, 784f, -641f))))), true, select(true, (u_input.a ^ 2147483647i) < countOneBits(var_3), var_0.x))).x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_vec2_u32(var_4.zy, abs(vec2<u32>(0u, var_2.b.a))) & _wgslsmith_mod_vec2_u32(var_4.zy, var_4.xy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))) - 2113f), 0u >> (var_2.b.a % 32u), ~countOneBits(vec4<i32>(_wgslsmith_div_i32(-17083i, var_3), var_3, ~var_3, -32304i)), -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -21652i), vec2<i32>(-50319i, var_3)), -(u_input.b.x ^ u_input.a)));
}

