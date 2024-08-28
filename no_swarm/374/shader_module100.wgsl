struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(4294967295u, 61270u), vec2<u32>(4294967295u, 15443u), vec2<u32>(4294967295u, 0u));

var<private> global1: Struct_2 = Struct_2(vec4<u32>(4294967295u, 1u, 6669u, 7207u), 0u);

var<private> global2: vec3<f32> = vec3<f32>(288f, 253f, -759f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global1 = Struct_2(vec4<u32>(4294967295u, 1u & _wgslsmith_dot_vec4_u32(global1.a, vec4<u32>(13497u, 0u, arg_0.b.x, arg_0.b.x)), ~(~1u), min(~0u, 1u)) & global1.a, abs(arg_0.b.x));
    var var_0 = ~global1.b;
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, -2354f, global2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(434f, arg_0.d, global2.x)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.d, 2428f, global2.x)))), select(select(vec3<bool>(false, arg_0.e, arg_0.e), vec3<bool>(false, false, arg_0.e), arg_0.e), select(vec3<bool>(false, false, arg_0.e), vec3<bool>(arg_0.e, arg_0.e, arg_0.e), arg_0.e), true))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.d, -1004f, global2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(828f, -437f, global2.x) * vec3<f32>(arg_0.d, 777f, arg_0.d)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.d, arg_0.d, _wgslsmith_f_op_f32(-1103f * global2.x)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-721f, arg_0.d, arg_0.d))))))));
    global1 = Struct_2(vec4<u32>(countOneBits(~1u), global1.a.x, arg_0.b.x, arg_0.b.x), min(arg_0.b.x, ~arg_0.b.x));
    var_0 = 1u;
    return ~_wgslsmith_sub_u32(~arg_0.b.x, _wgslsmith_dot_vec3_u32(arg_0.b, vec3<u32>(_wgslsmith_mult_u32(19955u, 63320u), ~1u, abs(73217u))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32) -> Struct_1 {
    let var_0 = ~0i;
    var var_1 = select(!select(!vec2<bool>(arg_1.x, false), arg_1, select(select(arg_1, arg_1, arg_0.e), arg_1, any(vec3<bool>(arg_1.x, true, arg_0.e)))), select(select(select(arg_1, select(arg_1, vec2<bool>(arg_1.x, arg_1.x), true), any(vec4<bool>(arg_1.x, arg_0.e, false, true))), !select(arg_1, arg_1, arg_1), select(arg_1, !vec2<bool>(arg_0.e, true), all(vec3<bool>(arg_0.e, false, arg_0.e)))), vec2<bool>(any(!vec4<bool>(false, arg_0.e, true, arg_1.x)), all(!vec4<bool>(arg_1.x, true, true, false))), true), !(func_3(arg_0) == _wgslsmith_clamp_u32(global1.a.x, ~arg_0.b.x, _wgslsmith_dot_vec3_u32(arg_0.b, vec3<u32>(20910u, global1.b, global1.b)))));
    let var_2 = Struct_5(Struct_3(4294967295u, global2.yz, arg_0));
    global1 = Struct_2(global1.a, _wgslsmith_sub_u32(0u ^ max(firstTrailingBit(29059u), countOneBits(global1.a.x)), ~select(17238u, firstTrailingBit(arg_0.b.x), all(vec3<bool>(false, var_1.x, true)))));
    var_1 = arg_1;
    return var_2.a.c;
}

fn func_1() -> vec2<u32> {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, -1199f), vec3<f32>(1401f, global2.x, global2.x))))))) + vec3<f32>(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.x))), 536f), global2.x));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global2.x, global2.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global2.x, global2.x) + vec3<f32>(global2.x, -1300f, 256f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 1000f, -1449f) * vec3<f32>(global2.x, global2.x, -139f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-623f, -713f, 729f))))));
    let var_0 = Struct_3(4294967295u, global2.xy, func_2(Struct_1(_wgslsmith_dot_vec2_i32(-vec2<i32>(-13035i, u_input.a), ~vec2<i32>(22513i, u_input.a)), vec3<u32>(3704u, ~43134u, countOneBits(0u)), _wgslsmith_div_i32(u_input.a, countOneBits(u_input.a)), _wgslsmith_f_op_f32(abs(global2.x)), select(any(vec2<bool>(true, true)), all(vec4<bool>(true, true, false, false)), true)), vec2<bool>(true, false), global2.x));
    var var_1 = abs(~(47738u | ~global1.b)) | ~global1.b;
    let var_2 = _wgslsmith_mod_i32(reverseBits(u_input.a), func_2(var_0.c, select(select(vec2<bool>(var_0.c.e, false), vec2<bool>(true, true), select(vec2<bool>(var_0.c.e, var_0.c.e), vec2<bool>(false, false), vec2<bool>(false, false))), select(!vec2<bool>(var_0.c.e, true), !vec2<bool>(var_0.c.e, true), all(vec4<bool>(var_0.c.e, var_0.c.e, true, false))), _wgslsmith_f_op_f32(global2.x - -566f) > _wgslsmith_f_op_f32(-800f - -866f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1305f - global2.x) * global2.x))).a);
    return ~(~min(~global1.a.xx, vec2<u32>(var_0.a, global1.a.x) | _wgslsmith_div_vec2_u32(vec2<u32>(68693u, global1.a.x), vec2<u32>(global1.b, global1.a.x))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = select(arg_3.c.e, false, any(vec2<bool>(!all(vec3<bool>(true, arg_3.c.e, false)), select(arg_3.c.e, false, any(vec2<bool>(arg_3.c.e, false))))));
    let var_1 = vec4<bool>(!(!any(!vec3<bool>(arg_3.c.e, arg_3.c.e, true))), !any(!(!vec2<bool>(true, arg_3.c.e))), arg_0.x <= func_1().x, true);
    let var_2 = arg_3.c.e & var_1.x;
    global0 = array<vec2<u32>, 3>();
    let var_3 = arg_3.c.d;
    return vec3<u32>(_wgslsmith_mult_u32(abs(_wgslsmith_clamp_u32(arg_0.x, arg_2.x, func_1().x)), arg_2.x ^ 4294967295u), ~arg_0.x, _wgslsmith_clamp_u32(arg_3.a, global1.b, global1.b));
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: i32) -> Struct_3 {
    var var_0 = func_2(func_2(func_2(Struct_1(6745i, vec3<u32>(arg_2.x, 25788u, 0u), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(-16272i, arg_3)), 974f, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-596f)))), !select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), false), global2.x), vec2<bool>(true, !select(true, false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -678f)))));
    let var_1 = ~_wgslsmith_mod_vec4_u32(max(~global1.a, abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 17931u, arg_2.x, global1.b), vec4<u32>(global1.b, 0u, 18638u, var_0.b.x)))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(36585u, global1.b), var_0.b.x, 68944u, ~global1.a.x), vec4<u32>(1u, ~var_0.b.x, ~42531u, _wgslsmith_add_u32(arg_2.x, 0u))));
    var_0 = func_2(func_2(func_2(func_2(Struct_1(arg_0, var_1.yww, -2147483647i, -1000f, true), !vec2<bool>(var_0.e, var_0.e), -189f), vec2<bool>(all(vec2<bool>(var_0.e, true)), true), 556f), select(!(!vec2<bool>(var_0.e, var_0.e)), vec2<bool>(true, false), vec2<bool>(var_0.e, true)), _wgslsmith_f_op_f32(ceil(618f))), select(select(select(!vec2<bool>(var_0.e, var_0.e), select(vec2<bool>(false, true), vec2<bool>(var_0.e, true), vec2<bool>(true, false)), select(vec2<bool>(var_0.e, var_0.e), vec2<bool>(var_0.e, var_0.e), var_0.e)), !vec2<bool>(var_0.e, var_0.e), var_0.e), vec2<bool>(!any(vec3<bool>(false, true, false)), false), select(vec2<bool>(true, true), vec2<bool>(false, !var_0.e), all(vec2<bool>(var_0.e, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-497f + _wgslsmith_f_op_f32(step(553f, _wgslsmith_f_op_f32(exp2(var_0.d))))), _wgslsmith_f_op_f32(sign(-1210f))));
    var var_2 = var_0.b.x;
    global0 = array<vec2<u32>, 3>();
    return Struct_3(global1.b & _wgslsmith_dot_vec3_u32(~firstTrailingBit(var_1.xzw), func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(15321u, arg_2.x, arg_2.x), vec3<u32>(var_1.x, var_1.x, 1u)), vec2<u32>(0u, global1.a.x), vec3<u32>(54021u, global1.b, arg_2.x), Struct_3(global1.a.x, global2.zz, Struct_1(-2147483647i, arg_2, arg_3, 809f, false)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, _wgslsmith_f_op_f32(trunc(var_0.d)))), vec2<f32>(225f, _wgslsmith_div_f32(arg_1.x, -154f)))), func_2(func_2(func_2(func_2(Struct_1(u_input.a, vec3<u32>(1u, 102179u, arg_2.x), arg_3, 547f, false), vec2<bool>(true, var_0.e), 1165f), vec2<bool>(var_0.e, true), func_2(Struct_1(2147483647i, vec3<u32>(var_1.x, var_1.x, 1u), 1i, 897f, true), vec2<bool>(var_0.e, var_0.e), var_0.d).d), vec2<bool>(true, all(vec3<bool>(false, true, true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1445f, arg_1.x, false))))), select(!select(vec2<bool>(var_0.e, false), vec2<bool>(var_0.e, true), false), vec2<bool>(var_0.e, true != var_0.e), vec2<bool>(func_2(Struct_1(0i, vec3<u32>(var_0.b.x, 1u, global1.b), 1i, 627f, var_0.e), vec2<bool>(true, false), -610f).e, var_0.e)), -966f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(i32(-1i) * -u_input.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, -1432f, global2.x, global2.x), vec4<f32>(global2.x, global2.x, -736f, global2.x), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(224f, 1000f, 530f, 315f) * vec4<f32>(global2.x, global2.x, global2.x, 1011f)))), vec4<f32>(_wgslsmith_f_op_f32(-global2.x), 466f, _wgslsmith_f_op_f32(-global2.x), -137f), ~global1.b < ~4294967295u)))), func_4(abs(countOneBits(~vec3<u32>(31808u, 0u, 47218u))), global1.a.yx << (func_1() % vec2<u32>(32u)), global1.a.wyy, Struct_3(min(1u, global1.b), vec2<f32>(627f, global2.x), Struct_1(_wgslsmith_add_i32(u_input.a, u_input.a), ~vec3<u32>(global1.a.x, 3567u, 0u), firstLeadingBit(-26768i), _wgslsmith_f_op_f32(global2.x - global2.x), true))), select(_wgslsmith_mult_i32(u_input.a, 30853i), ~(-1i), any(!select(vec2<bool>(true, true), vec2<bool>(false, true), true))));
    var var_1 = select(vec4<bool>(var_0.c.e, func_2(Struct_1(func_2(Struct_1(4099i, vec3<u32>(global1.a.x, global1.a.x, 36883u), -2147483647i, var_0.c.d, var_0.c.e), vec2<bool>(true, true), 781f).a, var_0.c.b ^ var_0.c.b, func_2(var_0.c, vec2<bool>(false, false), -772f).a, var_0.c.d, false), vec2<bool>(var_0.c.e, var_0.c.e), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-145f, 1272f)), 274f, var_0.c.e))).e, true, (var_0.c.a & u_input.a) == 0i), !select(!vec4<bool>(false, var_0.c.e, true, false), vec4<bool>(true, all(vec3<bool>(true, true, var_0.c.e)), var_0.c.e, true), vec4<bool>(var_0.c.e, !var_0.c.e, true & var_0.c.e, func_2(Struct_1(u_input.a, var_0.c.b, 1i, global2.x, var_0.c.e), vec2<bool>(true, false), var_0.c.d).e)), var_0.c.e);
    var var_2 = global1.a.x;
    let var_3 = 111930u;
    global0 = array<vec2<u32>, 3>();
    let var_4 = _wgslsmith_mod_u32(var_3, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global1.a.x, 0u, 4294967295u, global1.b) | _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 30121u, 1827u), vec4<u32>(22427u, 46398u, 1u, var_0.a), vec4<u32>(43744u, var_3, var_3, var_3))), global1.a));
    let var_5 = 2147483647i;
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(abs(global2.x)), -696f, global2.x, _wgslsmith_f_op_f32(-var_0.b.x)))))));
    let var_7 = ~(global1.a.yxw | vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, var_0.c.b.x), var_3), _wgslsmith_mult_u32(var_3, firstTrailingBit(var_0.a)), var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~0u >> (global1.a.x % 32u)), max(21029i, ~1i), 0i);
}

