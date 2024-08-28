struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: vec2<i32>,
    d: Struct_3,
    e: bool,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global1: Struct_1;

var<private> global2: f32 = 1160f;

var<private> global3: array<vec2<i32>, 6>;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> u32 {
    let var_0 = Struct_5(_wgslsmith_mod_i32(-u_input.a.x, _wgslsmith_dot_vec2_i32(min(u_input.a.yy ^ u_input.a.zw, ~vec2<i32>(42672i, arg_3)), reverseBits(min(u_input.a.wx, vec2<i32>(u_input.a.x, -2147483647i))))), !all(!select(global0.yyw, vec3<bool>(arg_2.c.a, false, global1.a), arg_1)), 1u, ~32020i);
    global1 = Struct_1(any(global0.yz));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(989f, -568f))), _wgslsmith_f_op_f32(991f - 556f));
    var var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(1u), 74508u, ~arg_2.a, _wgslsmith_clamp_u32(max(13822u, 0u), _wgslsmith_div_u32(~arg_0.x, 56403u), 16180u)), min(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b, arg_2.a), vec4<u32>(1u, 0u, var_0.c, 21658u), vec4<u32>(4294967295u, 14355u, var_0.c, arg_0.x)), vec4<u32>(arg_0.x, 1u, 51497u, arg_2.a)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, var_0.c), vec3<u32>(1u, 50704u, u_input.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, var_0.c, 1u), vec4<u32>(0u, 4294967295u, var_0.c, 0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_0.c, arg_2.a), vec3<u32>(u_input.b, 0u, 1u)), _wgslsmith_sub_u32(u_input.b, var_0.c))) | select(_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_0.x, arg_0.x, 4294967295u), vec4<u32>(2064u, u_input.b, arg_0.x, 4294967295u)), select(vec4<u32>(1u, var_0.c, u_input.b, 0u), vec4<u32>(1u, arg_0.x, u_input.b, arg_0.x) << (vec4<u32>(0u, 35423u, var_0.c, 82134u) % vec4<u32>(32u)), true), !global0.x || true));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-645f, 768f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(560f, -467f))), vec2<f32>(-1527f, -567f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1133f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-706f - -532f)))) * vec2<f32>(_wgslsmith_f_op_f32(min(-275f, _wgslsmith_div_f32(-1150f, _wgslsmith_f_op_f32(f32(-1f) * -1973f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1251f + 382f))) * -215f)));
    return var_2.x;
}

fn func_2() -> Struct_4 {
    global2 = -1000f;
    let var_0 = 38612u;
    let var_1 = Struct_1(false);
    var var_2 = var_1;
    let var_3 = ~_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(u_input.b, 1u, 45130u, 4294967295u))), vec4<u32>(_wgslsmith_mod_u32(~var_0, func_3(vec2<u32>(29155u, 4294967295u), false, Struct_2(6810u, var_1, Struct_1(true)), u_input.a.x)), 65523u, var_0 ^ max(u_input.b, u_input.b), func_3(~vec2<u32>(4294967295u, var_0), true, Struct_2(u_input.b, var_1, Struct_1(false)), u_input.a.x)));
    return Struct_4(firstLeadingBit(u_input.a.x) < _wgslsmith_sub_i32(-_wgslsmith_mod_i32(u_input.a.x, 0i), i32(-1i) * -75585i), ~firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(var_0, var_3), vec2<u32>(var_0, 69355u)) >> (countOneBits(vec2<u32>(var_0, var_3)) % vec2<u32>(32u))), ~(-(vec2<i32>(u_input.a.x, u_input.a.x) >> (_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(26974u, u_input.b)) % vec2<u32>(32u)))), Struct_3(_wgslsmith_sub_vec2_i32(firstLeadingBit(-u_input.a.wy), select(_wgslsmith_sub_vec2_i32(vec2<i32>(11624i, 2147483647i), global3[_wgslsmith_index_u32(4294967295u, 6u)]), vec2<i32>(-60482i, u_input.a.x), vec2<bool>(true, false))), Struct_1(select(global0.x, false, true)), Struct_1(!global0.x)), all(select(!vec4<bool>(var_1.a, true, var_1.a, global0.x), select(select(vec4<bool>(true, false, global0.x, true), vec4<bool>(global0.x, false, var_1.a, true), vec4<bool>(global0.x, global0.x, var_1.a, true)), vec4<bool>(global0.x, false, false, false), true), 1u == ~u_input.b)));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2();
    let var_1 = 55524u;
    let var_2 = u_input.a.x;
    var var_3 = i32(-1i) * -24986i;
    let var_4 = Struct_2(u_input.b, var_0.d.c, var_0.d.b);
    return var_0.d;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: u32) -> Struct_1 {
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-671f, -125f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(749f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-692f)))));
    global0 = vec4<bool>(true, !global0.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, arg_1.a.x, arg_2.x) << (vec3<u32>(42021u, 71147u, u_input.b) % vec3<u32>(32u)), max(vec3<i32>(-41673i, -2147483647i, -1i), vec3<i32>(u_input.a.x, arg_2.x, arg_1.a.x))), ~u_input.a.x) <= -2147483647i, !all(!vec3<bool>(true, true, global1.a)));
    var var_2 = !global0.ww;
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-454f, -158f, 1105f, -1428f), vec4<f32>(-1440f, -1421f, -1289f, -1649f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-691f, -905f, 662f, 716f), vec4<f32>(-287f, -478f, 555f, -1000f)))), vec4<f32>(-505f, -760f, _wgslsmith_f_op_f32(trunc(-1236f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1218f - 563f), _wgslsmith_f_op_f32(1013f - -136f))), -_wgslsmith_add_i32(0i, u_input.a.x) >= (arg_2.x << (~1u % 32u))))));
    return arg_1.b;
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_2) -> Struct_4 {
    var var_0 = false;
    var var_1 = firstTrailingBit(34624u);
    let var_2 = _wgslsmith_f_op_vec3_f32(-arg_0);
    global0 = vec4<bool>((!global0.x | all(vec3<bool>(global0.x, arg_2.b.a, true))) & (arg_2.a == _wgslsmith_sub_u32(func_3(vec2<u32>(arg_2.a, arg_2.a), false, arg_2, 11802i), 4294967295u)), !any(select(vec3<bool>(arg_2.c.a, true, true), global0.wyz, true)) != false, all(!global0.wwz) && false, global0.x);
    let var_3 = func_1().b;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global4 = ~37027u;
    let var_0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2070f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -536f) + _wgslsmith_f_op_f32(abs(581f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2069f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + -719f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(803f)) * -905f)))), -(~(-45127i)), Struct_2(u_input.b, func_4(func_1(), func_2().d, vec3<i32>(-1i, 2147483647i, u_input.a.x) ^ vec3<i32>(1i, 2177i, u_input.a.x), 1u), Struct_1(u_input.b <= u_input.b)));
    let var_1 = func_2();
    let var_2 = var_1;
    let var_3 = var_2.d.c;
    global0 = !(!select(select(select(vec4<bool>(true, true, false, var_3.a), vec4<bool>(false, global1.a, var_1.e, var_2.a), true), vec4<bool>(global1.a, var_3.a, false, false), vec4<bool>(false, var_0.e, true, false)), select(vec4<bool>(false, var_3.a, true, var_1.a), vec4<bool>(true, true, false, true), func_2().a), vec4<bool>(func_2().a, any(global0.wy), all(vec4<bool>(var_2.a, var_2.d.c.a, true, true)), any(vec3<bool>(false, global1.a, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, -500f, _wgslsmith_f_op_f32(2120f * -986f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1749f, 932f, -1000f)))), global0.xyw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-110f, 1117f))), select(min(max(vec3<u32>(0u, 57006u, u_input.b), vec3<u32>(12794u, 1u, var_2.b.x)), firstLeadingBit(firstLeadingBit(vec3<u32>(4294967295u, var_2.b.x, u_input.b)))), ~(~vec3<u32>(var_1.b.x, var_1.b.x, 27518u)), vec3<bool>(any(!vec4<bool>(true, false, true, global1.a)), !global0.x, var_0.a)), func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1079f, 1590f, -515f) - vec3<f32>(751f, 666f, 848f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1124f, 992f, 182f), vec3<f32>(-1462f, -461f, 945f), global0.xwx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2474f, 1083f, -371f))), var_1.e)), _wgslsmith_div_i32(max(~var_1.c.x, i32(-1i) * -54266i), u_input.a.x >> (var_2.b.x % 32u)), Struct_2(~(~u_input.b), Struct_1(var_2.b.x > var_0.b.x), func_5(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2059f, 1313f, 870f))), i32(-1i) * -11480i, Struct_2(var_1.b.x, var_1.d.c, var_3)).d.c)).b, vec4<u32>(firstTrailingBit(4294967295u), ~u_input.b, _wgslsmith_mult_u32(reverseBits(55616u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(9195u, var_2.b.x, 24072u), vec3<u32>(var_0.b.x, 4294967295u, var_0.b.x)) % 32u), ~20662u), ~select(4294967295u, var_2.b.x, true)));
}

