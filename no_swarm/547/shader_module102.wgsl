struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3>;

var<private> global1: f32;

var<private> global2: bool;

var<private> global3: Struct_3 = Struct_3(Struct_1(-50192i), Struct_2(Struct_1(-30044i), 320f, Struct_1(516i), -13429i, Struct_1(28308i)));

var<private> global4: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(1i), 406f, Struct_1(2147483647i), -22100i, Struct_1(-22704i)), Struct_2(Struct_1(i32(-2147483648)), -510f, Struct_1(19248i), i32(-2147483648), Struct_1(-18689i)), Struct_2(Struct_1(i32(-2147483648)), 666f, Struct_1(i32(-2147483648)), -10986i, Struct_1(-25397i)), Struct_2(Struct_1(-15277i), 216f, Struct_1(34955i), -24601i, Struct_1(4104i)), Struct_2(Struct_1(-1i), -994f, Struct_1(i32(-2147483648)), 1i, Struct_1(1i)), Struct_2(Struct_1(4757i), -500f, Struct_1(2147483647i), -12995i, Struct_1(-17491i)), Struct_2(Struct_1(i32(-2147483648)), -287f, Struct_1(i32(-2147483648)), 29694i, Struct_1(19643i)), Struct_2(Struct_1(2147483647i), -507f, Struct_1(1i), 7979i, Struct_1(48272i)), Struct_2(Struct_1(-58178i), -1293f, Struct_1(27020i), 2147483647i, Struct_1(-50986i)), Struct_2(Struct_1(2147483647i), 715f, Struct_1(-2586i), -21032i, Struct_1(-1i)), Struct_2(Struct_1(1i), -931f, Struct_1(-7624i), 22407i, Struct_1(17081i)), Struct_2(Struct_1(2147483647i), -918f, Struct_1(-15421i), -33190i, Struct_1(-2376i)), Struct_2(Struct_1(2147483647i), 1571f, Struct_1(-9566i), 0i, Struct_1(-1i)), Struct_2(Struct_1(0i), -1000f, Struct_1(15846i), 30081i, Struct_1(2147483647i)), Struct_2(Struct_1(-1i), 916f, Struct_1(-41959i), -57272i, Struct_1(i32(-2147483648))), Struct_2(Struct_1(-1i), 641f, Struct_1(21635i), 46489i, Struct_1(-46895i)), Struct_2(Struct_1(-1i), 2076f, Struct_1(2147483647i), i32(-2147483648), Struct_1(2147483647i)), Struct_2(Struct_1(2147483647i), 1132f, Struct_1(13280i), 52898i, Struct_1(15604i)), Struct_2(Struct_1(-226i), 1503f, Struct_1(4644i), -1i, Struct_1(2147483647i)), Struct_2(Struct_1(1i), 395f, Struct_1(-1i), -20093i, Struct_1(9828i)), Struct_2(Struct_1(i32(-2147483648)), 1571f, Struct_1(i32(-2147483648)), 14100i, Struct_1(2147483647i)), Struct_2(Struct_1(-12447i), 1023f, Struct_1(-3578i), 14022i, Struct_1(53589i)));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, global3.b.d) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(17335u, 4294967295u), vec2<u32>(u_input.c, u_input.d)) % vec2<u32>(32u))), ~select(vec2<i32>(-28529i, 22904i), vec2<i32>(global3.a.a, 35109i), all(vec4<bool>(false, true, false, false)))), -33035i);
    var var_1 = vec4<bool>(true, u_input.d < ~_wgslsmith_add_u32(abs(0u), 4294967295u), true, true);
    let var_2 = Struct_2(global3.b.a, _wgslsmith_f_op_f32(global3.b.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 906f)), global3.a, firstTrailingBit(-351i), global3.a);
    return vec2<u32>(62478u, u_input.d);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(max(abs(u_input.e), _wgslsmith_add_i32(global3.b.e.a << (1u % 32u), 1i)));
    let var_1 = Struct_3(var_0, global3.b);
    global3 = var_1;
    var var_2 = _wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(func_3(), vec2<u32>(abs(0u), abs(u_input.d))), u_input.b.zy);
    global3 = var_1;
    return Struct_3(Struct_1(var_0.a), Struct_2(Struct_1(-2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.b) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1512f - var_1.b.b)))), var_0, u_input.a, var_0));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = 1659f;
    let var_1 = func_2().b;
    let var_2 = u_input.c;
    let var_3 = func_2();
    let var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1729f, -1357f, 539f, -563f) * vec4<f32>(1441f, arg_0.b.b, -1350f, -1654f)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, var_1.b, arg_1.x, var_3.b.b), vec4<f32>(arg_0.b.b, arg_0.b.b, global3.b.b, arg_2.x))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-243f, 334f, -825f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-935f, var_1.b, -841f, global3.b.b)), vec4<bool>(false, true, false, false)))))));
    return func_2();
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_3 {
    global4 = array<Struct_2, 22>();
    global4 = array<Struct_2, 22>();
    var var_0 = -190f;
    let var_1 = vec3<i32>(~arg_3.d & (_wgslsmith_div_i32(_wgslsmith_sub_i32(34526i, 2147483647i), 27494i) ^ arg_2.d), global3.a.a, 19618i);
    global2 = true;
    return func_4(func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1186f, 1751f, global3.b.b) + vec3<f32>(574f, global3.b.b, -695f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b, arg_2.b, global3.b.b)), arg_0.x != arg_0.x)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(279f, arg_3.b, 1000f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.b, global3.b.b, 407f)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(global3.b.b)), -654f, func_2().b.b))), vec3<f32>(_wgslsmith_f_op_f32(max(578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-187f)) * 1552f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1094f))), -1792f));
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    let var_0 = arg_0;
    global3 = Struct_3(func_2().a, Struct_2(var_0.b.e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.b.b))))), func_4(Struct_3(arg_0.a, Struct_2(arg_0.b.a, global3.b.b, Struct_1(0i), 72631i, Struct_1(u_input.e))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 143f, 856f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.b, arg_0.b.b, var_0.b.b) - _wgslsmith_div_vec3_f32(vec3<f32>(-564f, var_0.b.b, -1143f), vec3<f32>(542f, -339f, arg_0.b.b)))).b.e, _wgslsmith_mod_i32(-1i, -2147483647i), func_2().a));
    global2 = false == !all(select(vec2<bool>(arg_1, false), vec2<bool>(false, arg_1), true));
    global2 = all(!(!(!(!vec3<bool>(arg_1, arg_1, false)))));
    var var_1 = func_4(Struct_3(Struct_1(func_2().b.a.a), Struct_2(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.b) * var_0.b.b), func_2().b.e, -var_0.b.e.a, Struct_1(global3.a.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.b, global3.b.b, arg_0.b.b) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -860f, 852f) - vec3<f32>(global3.b.b, var_0.b.b, -1000f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-309f, -367f, -1143f)))))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.b), var_0.b.b, _wgslsmith_f_op_f32(floor(486f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.b.b, 457f, global3.b.b))) - vec3<f32>(arg_0.b.b, global3.b.b, -416f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1035f, var_0.b.b), vec3<f32>(-784f, -1100f, var_0.b.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b, arg_0.b.b, arg_0.b.b) * vec3<f32>(arg_0.b.b, global3.b.b, global3.b.b))))))).a;
    return func_1(_wgslsmith_div_vec2_u32((global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(12438u, 20580u), vec2<u32>(0u, 27970u)), 3u)] ^ ~vec2<u32>(1u, 4294967295u)) >> (_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.d, 44370u), abs(u_input.b.xw)) % vec2<u32>(32u)), vec2<u32>(~firstTrailingBit(0u), 56913u)), global3.b.a.a, Struct_2(Struct_1(~_wgslsmith_add_i32(-34727i, u_input.a)), 191f, func_1(vec2<u32>(max(35330u, u_input.d), u_input.d), -arg_0.b.a.a, Struct_2(func_1(vec2<u32>(4294967295u, u_input.b.x), global3.a.a, Struct_2(var_0.a, global3.b.b, arg_0.a, -11711i, global3.b.a), Struct_2(Struct_1(u_input.e), global3.b.b, arg_0.a, 0i, global3.a)).a, arg_0.b.b, func_2().a, ~1i, Struct_1(var_0.b.e.a)), Struct_2(func_4(var_0, vec3<f32>(global3.b.b, 662f, arg_0.b.b), vec3<f32>(-780f, var_0.b.b, var_0.b.b)).b.e, -793f, func_4(Struct_3(arg_0.b.a, Struct_2(var_0.a, -491f, Struct_1(arg_0.a.a), var_0.b.a.a, global3.b.e)), vec3<f32>(-563f, var_0.b.b, 960f), vec3<f32>(var_0.b.b, arg_0.b.b, 242f)).b.e, -1i, arg_0.a)).b.a, reverseBits(_wgslsmith_add_i32(_wgslsmith_sub_i32(1i, -40796i), var_0.a.a ^ var_0.b.a.a)), func_4(func_4(Struct_3(Struct_1(global3.b.c.a), Struct_2(Struct_1(var_0.b.c.a), 711f, Struct_1(-5479i), global3.b.a.a, Struct_1(-23278i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b, 307f, arg_0.b.b)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.b, 1485f, 1126f), vec3<f32>(var_0.b.b, global3.b.b, -1179f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1439f, global3.b.b, 177f))), vec3<f32>(-1261f, 484f, _wgslsmith_f_op_f32(step(global3.b.b, arg_0.b.b)))).a), func_1(select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(1u, u_input.b.x)) >> (~u_input.b.wx % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], u_input.b.zz), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.d, 7520u), u_input.b.yzz)), select(vec2<bool>(true, true), select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), arg_1), !arg_1)), firstTrailingBit(max(_wgslsmith_clamp_i32(u_input.e, var_1.a, -2147483647i), var_1.a)), global3.b, global3.b).b).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(global0[_wgslsmith_index_u32(1u, 3u)], (select(global3.b.d, global3.a.a, true) & -10536i) >> (select(0u, 23514u, true) % 32u), global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.d, u_input.d), abs(u_input.d)), 22u)], Struct_2(Struct_1(15603i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global3.b.b)))), Struct_1(1i & global3.b.c.a), -1980i, Struct_1(0i))), false);
    global4 = array<Struct_2, 22>();
    global0 = array<vec2<u32>, 3>();
    let var_1 = Struct_3(var_0.e, global4[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(u_input.b.x, 1u)), 22u)]);
    var var_2 = u_input.b;
    let var_3 = var_0.b;
    global1 = var_1.b.b;
    var var_4 = !vec3<bool>(all(vec4<bool>(false, false, all(vec3<bool>(true, false, true)), true)), 55919u == var_2.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~4294967295u))), global3.a.a, u_input.d);
}

