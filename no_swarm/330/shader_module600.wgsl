struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4>;

var<private> global1: vec3<bool>;

var<private> global2: vec2<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0, -925f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -147f), 316f)), _wgslsmith_f_op_f32(exp2(arg_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-992f, arg_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(arg_0, arg_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -2171f), vec2<f32>(arg_0, arg_0))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(129f, -392f))) + vec2<f32>(183f, 1160f)))));
    let var_1 = select(!vec4<bool>((u_input.b == 4294967295u) || !global1.x, !(false | global1.x), -arg_1.x < 32145i, !global1.x), vec4<bool>(global1.x, global1.x, all(select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x), global1.x)) && !any(vec3<bool>(false, true, global1.x)), global1.x), select(vec4<bool>(false, !global1.x | (u_input.b <= 10418u), true, global1.x), select(select(vec4<bool>(global1.x, global1.x, false, true), select(vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), !vec4<bool>(global1.x, global1.x, global1.x, false)), select(select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(global1.x, false, false, global1.x), true), !vec4<bool>(global1.x, global1.x, true, false), false), !vec4<bool>(false, global1.x, false, global1.x)), any(!vec3<bool>(false, global1.x, true))));
    let var_2 = Struct_2(true);
    let var_3 = Struct_1(var_1.xz, vec3<bool>(!(!var_2.a), _wgslsmith_f_op_f32(select(-1527f, _wgslsmith_f_op_f32(abs(arg_0)), u_input.a.x >= -2147483647i)) < _wgslsmith_f_op_f32(floor(arg_0)), !(arg_1.x < (global2.x >> (u_input.b % 32u)))), vec2<bool>(!(var_2.a | true) || !any(global1.xx), false));
    let var_4 = Struct_1(var_1.zx, vec3<bool>(any(select(vec4<bool>(false, false, var_2.a, true), vec4<bool>(false, global1.x, var_2.a, var_2.a), !var_2.a)), var_1.x, countOneBits(1u) >= ~firstTrailingBit(0u)), select(var_3.b.zz, vec2<bool>(var_1.x, global1.x), var_3.c));
    return select(!(!(!vec3<bool>(var_4.b.x, true, false))), vec3<bool>(var_4.b.x, !(-1618f < _wgslsmith_f_op_f32(exp2(arg_0))), global1.x), select(vec3<bool>(true, -2147483647i > -u_input.a.x, _wgslsmith_f_op_f32(-arg_0) < -1372f), !select(var_4.b, var_1.xwx, global1.x && var_4.a.x), false));
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    global2 = u_input.a.xz;
    global2 = abs(-u_input.a.yx);
    var var_0 = Struct_3(~abs(vec3<u32>(33010u, 4294967295u, u_input.b) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(63245u, u_input.b, 2312u), vec3<u32>(1u, u_input.b, 0u))), Struct_2(true));
    let var_1 = -499f;
    global1 = !(!(!vec3<bool>(all(vec2<bool>(true, global1.x)), false, false)));
    return select(select(!(!vec3<bool>(true, true, global1.x)), !(!func_3(979f, vec4<i32>(u_input.a.x, 3079i, u_input.a.x, u_input.a.x))), false), !(!arg_0.yyx), !arg_0.xyw);
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: bool) -> vec4<bool> {
    let var_0 = vec4<i32>(-10274i, u_input.a.x, -28902i, global2.x);
    let var_1 = abs(u_input.a);
    var var_2 = Struct_3(_wgslsmith_div_vec3_u32(max(vec3<u32>(65233u << (u_input.b % 32u), 7298u, u_input.b), select(vec3<u32>(0u, 24397u, u_input.b) ^ vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 4294967295u, 28371u) | vec3<u32>(43673u, u_input.b, u_input.b), vec3<bool>(false, true, false))), _wgslsmith_clamp_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(29583u, 4294967295u, 11787u), vec3<u32>(u_input.b, 6378u, u_input.b))), vec3<u32>(95450u, 1u, ~32872u), select(vec3<u32>(u_input.b, 22651u, u_input.b) & vec3<u32>(105948u, u_input.b, u_input.b), vec3<u32>(1u, 0u, u_input.b), arg_1.x))), Struct_2(true));
    var var_3 = false;
    var var_4 = !arg_1;
    return !select(select(vec4<bool>(true, true, arg_2.x, arg_0 <= -390f), !vec4<bool>(var_2.b.a, arg_1.x, false, var_2.b.a), !(32931u == var_2.a.x)), select(vec4<bool>(true, true, true, true), select(!vec4<bool>(arg_1.x, arg_1.x, false, var_4.x), !vec4<bool>(true, var_2.b.a, false, global1.x), func_2(vec4<bool>(false, true, global1.x, arg_2.x)).x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_3, false, true, false), vec4<bool>(true, false, false, var_4.x), vec4<bool>(arg_1.x, true, var_4.x, global1.x)), any(vec3<bool>(true, arg_2.x, false)))), !(arg_3 || true));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: bool, arg_3: vec3<bool>) -> Struct_4 {
    global2 = _wgslsmith_mult_vec2_i32(-vec2<i32>(~_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-17309i, -1i, arg_1.d.x)), ~(~u_input.a.x)), u_input.a.yx);
    let var_0 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(select(~742u, 1u, any(arg_0.xz)), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 17406u)), firstLeadingBit(vec2<u32>(1u, 27411u))), _wgslsmith_mult_u32(u_input.b, ~4294967295u), u_input.b), vec4<u32>(arg_1.a & ~arg_1.a, 0u, ~u_input.b, _wgslsmith_mod_u32(_wgslsmith_sub_u32(24639u, arg_1.a), u_input.b)));
    var var_1 = -1001f;
    let var_2 = _wgslsmith_mult_vec2_u32(~(~(var_0.wz & _wgslsmith_mod_vec2_u32(vec2<u32>(23866u, var_0.x), vec2<u32>(0u, 23689u)))), _wgslsmith_mod_vec2_u32(~(~reverseBits(vec2<u32>(var_0.x, var_0.x))), var_0.wx));
    let var_3 = !func_4(1602f, !select(!arg_3, !arg_0, !arg_3), !func_2(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), true)), global1.x);
    return arg_1;
}

fn func_5(arg_0: Struct_4, arg_1: f32) -> Struct_5 {
    var var_0 = _wgslsmith_div_u32(~func_1(!func_2(vec4<bool>(arg_0.b, global1.x, true, arg_0.b)), Struct_4(max(37859u, 0u), false && arg_0.b, arg_0.c, _wgslsmith_div_vec2_i32(u_input.a.xx, arg_0.d)), arg_0.b, select(!vec3<bool>(arg_0.c.a, false, true), func_2(vec4<bool>(false, false, arg_0.b, global1.x)), false)).a, ~u_input.b);
    let var_1 = vec4<i32>(reverseBits(global2.x), global2.x, 1i ^ u_input.a.x, 51929i);
    var var_2 = _wgslsmith_div_u32(select(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.a, 1u), vec2<u32>(1u, 54393u), vec2<u32>(arg_0.a, 47930u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a, 82829u), vec2<u32>(u_input.b, 46022u))), 98992u), _wgslsmith_div_u32(firstTrailingBit(7222u), u_input.b), global1.x), ~arg_0.a);
    let var_3 = func_1(vec3<bool>(!global1.x, false | (func_3(arg_1, vec4<i32>(16654i, -21913i, -1i, -2061i)).x | true), !arg_0.b | all(vec4<bool>(arg_0.c.a, global1.x, arg_0.b, false))), arg_0, arg_0.b || false, vec3<bool>(arg_0.b, all(select(func_4(879f, vec3<bool>(true, false, true), vec3<bool>(true, global1.x, true), false), vec4<bool>(global1.x, arg_0.c.a, arg_0.b, false), vec4<bool>(true, true, true, true))), select(false, func_3(arg_1, vec4<i32>(global2.x, arg_0.d.x, 1i, -2147483647i)).x, true)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1112f, _wgslsmith_f_op_f32(175f + 309f)));
    return Struct_5(-543f, global0[_wgslsmith_index_u32(44871u, 4u)]);
}

fn func_6(arg_0: Struct_5) -> u32 {
    var var_0 = func_5(arg_0.b, arg_0.a).b.c;
    global0 = array<Struct_4, 4>();
    var_0 = arg_0.b.c;
    var_0 = Struct_2(false);
    let var_1 = !func_2(!vec4<bool>(!var_0.a, false, select(var_0.a, true, var_0.a), !arg_0.b.b)).x;
    return countOneBits(_wgslsmith_mod_u32(0u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 4>();
    global2 = vec2<i32>(global2.x, -u_input.a.x) ^ firstTrailingBit(~(u_input.a.zz | vec2<i32>(-1i, 5816i)));
    var var_0 = vec2<u32>(func_6(func_5(func_1(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(u_input.b, 4u)], true, !vec3<bool>(global1.x, global1.x, global1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -779f))))), u_input.b);
    let var_1 = Struct_2(global1.x);
    let var_2 = func_1(vec3<bool>(!func_1(!vec3<bool>(global1.x, var_1.a, true), Struct_4(var_0.x, var_1.a, Struct_2(false), vec2<i32>(global2.x, u_input.a.x)), true, vec3<bool>(false, var_1.a, false)).b, any(vec4<bool>(true, global2.x >= 2147483647i, var_1.a, true)), !all(vec2<bool>(var_1.a, true))), Struct_4(u_input.b | u_input.b, var_1.a, var_1, vec2<i32>(min(firstLeadingBit(u_input.a.x), i32(-1i) * -1i), -min(global2.x, global2.x))), func_4(_wgslsmith_f_op_f32(func_5(func_5(Struct_4(u_input.b, false, var_1, vec2<i32>(-24936i, u_input.a.x)), -1613f).b, -1115f).a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(631f - -1409f), 927f)), !(!vec3<bool>(true, global1.x, global1.x)), vec3<bool>(global1.x && true, !all(vec4<bool>(global1.x, true, false, var_1.a)), global2.x >= _wgslsmith_add_i32(1i, -8396i)), true).x, vec3<bool>(false, false, !var_1.a));
    let var_3 = Struct_1(global1.zx, select(vec3<bool>(var_1.a, func_3(-607f, vec4<i32>(0i, var_2.d.x, var_2.d.x, 2147483647i)).x, global1.x), func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-714f * -146f))), func_3(_wgslsmith_f_op_f32(-882f * -172f), vec4<i32>(22999i, global2.x, u_input.a.x, global2.x)), func_3(_wgslsmith_f_op_f32(trunc(762f)), -vec4<i32>(u_input.a.x, global2.x, global2.x, -28398i)), all(vec4<bool>(var_1.a, true, true, false))).ywy, func_3(_wgslsmith_f_op_f32(f32(-1f) * -154f), _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.d.x, -5368i, 6386i, global2.x), vec4<i32>(global2.x, global2.x, 1i, -2147483647i) | vec4<i32>(global2.x, var_2.d.x, -48846i, -2147483647i)))), func_4(func_5(func_1(select(vec3<bool>(false, var_1.a, true), vec3<bool>(false, global1.x, true), vec3<bool>(var_2.c.a, var_2.c.a, var_2.b)), func_5(var_2, -287f).b, var_1.a, vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1298f, 1000f))).a, !(!(!vec3<bool>(var_2.b, var_2.c.a, true))), vec3<bool>(!var_2.b, any(vec2<bool>(true, true)), select(func_3(-519f, vec4<i32>(global2.x, u_input.a.x, 52735i, -58885i)).x, u_input.a.x < -7642i, all(global1.zx))), var_2.b).yz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

