struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(929f), Struct_2(2471f), Struct_2(1988f), Struct_2(-697f), Struct_2(1000f), Struct_2(202f), Struct_2(-851f), Struct_2(-195f), Struct_2(2405f), Struct_2(1155f), Struct_2(-1000f), Struct_2(402f), Struct_2(-752f), Struct_2(826f), Struct_2(461f), Struct_2(740f), Struct_2(-1874f), Struct_2(-859f), Struct_2(-279f), Struct_2(-143f), Struct_2(-248f), Struct_2(-1066f), Struct_2(790f), Struct_2(1006f), Struct_2(942f), Struct_2(614f), Struct_2(-1072f), Struct_2(528f), Struct_2(-474f));

var<private> global3: Struct_4 = Struct_4(0i, vec4<bool>(false, false, true, true), Struct_3(-1000f, vec3<u32>(22074u, 105097u, 13467u), vec4<i32>(36574i, 0i, -6898i, 199i), vec3<i32>(i32(-2147483648), 53270i, -15977i), 0i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    global2 = array<Struct_2, 29>();
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(1049f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.a)))), 1430f, 794f) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, 918f) * _wgslsmith_f_op_f32(ceil(global3.c.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -549f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1308f - global3.c.a))), _wgslsmith_f_op_f32(arg_0.x - -814f)));
    global3 = Struct_4(-49324i, vec4<bool>(global0.b.x, true, all(vec2<bool>(any(vec4<bool>(false, global3.b.x, false, global0.b.x)), true)), _wgslsmith_div_u32(_wgslsmith_mod_u32(22369u, 25875u), global0.d.x) > firstTrailingBit(reverseBits(global3.c.b.x))), global3.c);
    global1 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 5260u, ~4294967295u, _wgslsmith_mult_u32(u_input.a.x | 1u, ~857u) ^ global0.d.x), vec4<u32>(global0.d.x, _wgslsmith_add_u32(~1u, min(select(u_input.a.x, global0.d.x, true), 1u)), 20337u, u_input.a.x));
    let var_1 = Struct_4(u_input.b, select(select(!select(global3.b, global3.b, true), select(select(global3.b, global3.b, global0.b.x), select(global3.b, global3.b, false), arg_0.x > 1612f), !global0.b.x), select(global3.b, global3.b, select(select(vec4<bool>(false, true, true, true), global3.b, global3.b), global3.b, vec4<bool>(true, false, global3.b.x, true))), (select(global3.b.x, false, false) & (global0.a.x == var_0.x)) && global0.b.x), Struct_3(global0.a.x, ~global3.c.b, vec4<i32>(2147483647i, -1i, global3.c.c.x >> (1u % 32u), -7820i), reverseBits(select(global3.c.c.wzx, _wgslsmith_mod_vec3_i32(global3.c.d, global3.c.c.xzx), true)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, global3.a, -3477i), vec3<i32>(u_input.b, -4323i, 2223i)) ^ _wgslsmith_clamp_i32(global3.c.e, _wgslsmith_div_i32(2147483647i, -39598i), abs(u_input.b))));
    return var_1.c.d.x;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_4(select(func_3(_wgslsmith_f_op_vec3_f32(min(global0.a, vec3<f32>(global0.a.x, 462f, 2180f)))), -_wgslsmith_add_i32(-2147483647i, u_input.b), false) | 20690i, select(select(!vec4<bool>(global0.b.x, false, true, true), global3.b, global3.b), select(select(vec4<bool>(true, global0.b.x, false, true), vec4<bool>(global0.b.x, global0.b.x, true, true), global0.b.x), global3.b, !global3.b), global3.b), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -170f)), ~(global3.c.b & vec3<u32>(u_input.a.x, u_input.a.x, global0.c.x)), vec4<i32>(global3.a, _wgslsmith_dot_vec4_i32(global3.c.c, global3.c.c), func_3(_wgslsmith_f_op_vec3_f32(round(global0.a))), global3.a), global3.c.d, global3.a));
    let var_1 = global2[_wgslsmith_index_u32(global0.c.x, 29u)];
    let var_2 = select(_wgslsmith_mod_i32(-1i, ~27249i), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, -1i), countOneBits(_wgslsmith_div_u32(global3.c.b.x, 1u)) >= global0.c.x);
    let var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -846f, -177f, 777f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-990f, -1019f, global0.a.x, -1546f))))))));
    global3 = Struct_4(-_wgslsmith_sub_i32(-(~var_2), _wgslsmith_clamp_i32(-var_0.a, -var_0.a, select(0i, var_2, true))), select(vec4<bool>(global3.b.x, !(u_input.a.x == 20589u), !(!global3.b.x), global3.b.x), var_0.b, !global0.b.x), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - 933f)), vec3<u32>(max(u_input.a.x | var_0.c.b.x, _wgslsmith_clamp_u32(0u, var_0.c.b.x, 76850u)), ~var_0.c.b.x, u_input.a.x), vec4<i32>(u_input.b << (abs(u_input.a.x) % 32u), _wgslsmith_dot_vec2_i32(global3.c.d.zz, vec2<i32>(2147483647i, var_0.c.d.x)), -51399i, ~(~81600i)), var_0.c.d, -1i));
    return select(!var_0.b.ywy, vec3<bool>(!any(vec3<bool>(global0.b.x, var_0.b.x, true)), var_0.b.x, var_0.c.b.x == 1u), vec3<bool>(!all(global3.b), !all(!vec2<bool>(global3.b.x, global3.b.x)), false));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(vec3<f32>(global3.c.a, 1985f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), global0.a.x)), select(func_2(), func_2(), func_2()), vec3<u32>(54746u, _wgslsmith_dot_vec2_u32(u_input.a.xz, _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(global3.c.b.x, 0u))), 84596u), global0.c);
    let var_1 = select(global3.c.b, firstTrailingBit(var_0.d), true);
    global2 = array<Struct_2, 29>();
    let var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 415f, _wgslsmith_f_op_f32(global0.a.x * global0.a.x), _wgslsmith_f_op_f32(-var_0.a.x)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-300f, var_0.a.x, var_0.a.x, -197f))), vec4<f32>(-603f, -595f, -268f, var_0.a.x)))))));
    global0 = Struct_1(var_0.a, !vec3<bool>(global0.b.x, var_0.b.x, any(vec2<bool>(false, var_0.b.x))), vec3<u32>(_wgslsmith_add_u32(abs(_wgslsmith_mult_u32(var_1.x, global0.c.x)), firstTrailingBit(var_0.d.x)), 0u, ~(~global3.c.b.x)), ~(global0.d | vec3<u32>(max(global0.d.x, 4294967295u), _wgslsmith_mod_u32(global3.c.b.x, 25821u), select(1u, global0.c.x, global0.b.x))));
    return global2[_wgslsmith_index_u32(max(45823u, firstLeadingBit(_wgslsmith_add_u32(~_wgslsmith_mod_u32(var_0.d.x, u_input.a.x), var_0.c.x & _wgslsmith_mult_u32(var_1.x, u_input.a.x)))), 29u)];
}

fn func_4(arg_0: Struct_2) -> Struct_5 {
    var var_0 = Struct_4(2147483647i, global3.b, global3.c);
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2151f, 729f, -1000f, arg_0.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(708f, global0.a.x, arg_0.a, global3.c.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.a, global0.a.x, global3.c.a, -300f))))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(global0.a)), func_2(), ~vec3<u32>(4294967295u, global0.c.x, 0u), max(~vec3<u32>(firstLeadingBit(4294967295u), min(1u, 0u), 54142u | global3.c.b.x), _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 28236u, global0.d.x), global0.c), var_0.c.b)));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a.wyw - _wgslsmith_f_op_vec3_f32(-var_1.a.wzy))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(1067f, global0.a.x, -1000f), vec3<f32>(var_1.a.x, 831f, 207f)))), global0.b)), select(var_0.b.zzw, !var_0.b.xwz, !global0.b), var_0.c.b, _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(1u, 0u, 14678u), 25894u, ~global0.c.x), ~vec3<u32>(u_input.a.x, 25324u, u_input.a.x)), vec3<u32>(u_input.a.x, ~(~global0.c.x), _wgslsmith_div_u32(29487u, ~45803u))));
    global3 = Struct_4(var_0.a, global3.b, Struct_3(arg_0.a, firstLeadingBit(select(~vec3<u32>(u_input.a.x, 28441u, 4048u), vec3<u32>(global3.c.b.x, var_0.c.b.x, 100254u), !global3.b.x)), max(global3.c.c, -min(global3.c.c, vec4<i32>(4399i, -48896i, -2147483647i, 30763i))), ~abs(abs(vec3<i32>(u_input.b, global3.a, -2147483647i))), max(-(~(-1i)), u_input.b)));
    return Struct_5(var_1.a);
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_5, arg_3: Struct_2) -> Struct_4 {
    var var_0 = ~(~firstTrailingBit(countOneBits(~vec2<u32>(global0.d.x, 10129u))));
    global0 = Struct_1(arg_2.a.wwy, global0.b, global3.c.b, global3.c.b);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_3.a)), arg_2.a.x));
    var_0 = global0.c.zy;
    global0 = Struct_1(_wgslsmith_div_vec3_f32(func_4(func_1()).a.zwx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-233f, -129f, -1525f), vec3<f32>(751f, -1000f, global0.a.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, var_1, arg_1))))))), !(!(!vec3<bool>(global3.b.x, global0.b.x, true))), select(global3.c.b, abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(76297u, global0.d.x, 1u), u_input.a.zwz, vec3<u32>(0u, 0u, arg_0))) << (select(~u_input.a.wxy, min(global0.c, global3.c.b), global0.b) % vec3<u32>(32u)), global0.b.x), global3.c.b);
    return Struct_4(u_input.b, global3.b, Struct_3(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), vec3<u32>(_wgslsmith_mult_u32(1u, 8380u), ~reverseBits(var_0.x), 1u), ~countOneBits(global3.c.c), global3.c.c.zwy & global3.c.c.yzy, 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(global3.c.a));
    let var_1 = func_5(global0.c.x ^ 1u, global3.c.a, func_4(func_1()), Struct_2(_wgslsmith_f_op_f32(-var_0)));
    global3 = Struct_4(-1i, vec4<bool>(true, var_1.b.x, global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1321f + var_1.c.a)) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1580f, -218f))))), global3.c);
    global3 = func_5(global0.c.x, func_5(max(~u_input.a.x, ~global0.c.x & max(var_1.c.b.x, var_1.c.b.x)), _wgslsmith_f_op_f32(func_1().a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a.x, -208f)))), func_4(Struct_2(_wgslsmith_f_op_f32(var_1.c.a + var_1.c.a))), func_1()).c.a, Struct_5(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1492f, 486f, -176f, global0.a.x), vec4<f32>(663f, var_1.c.a, global0.a.x, 1270f), vec4<bool>(global3.b.x, global3.b.x, var_1.b.x, global0.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1507f, 861f, var_1.c.a, -1000f)), false))))), Struct_2(-194f));
    let var_2 = -global3.c.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(69842u, vec3<u32>(abs((83072u >> (0u % 32u)) | global0.d.x), global3.c.b.x | 4294967295u, 0u), vec3<u32>(~17090u >> (global0.d.x % 32u), countOneBits(u_input.a.x), func_5(1u, _wgslsmith_div_f32(-1000f, -165f), Struct_5(vec4<f32>(var_1.c.a, var_0, 751f, -294f)), Struct_2(_wgslsmith_f_op_f32(-465f + -1762f))).c.b.x), 40027u);
}

