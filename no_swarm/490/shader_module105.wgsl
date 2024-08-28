struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: Struct_1 = Struct_1(-12986i, false, true, vec4<bool>(false, false, false, false));

var<private> global2: vec3<u32> = vec3<u32>(1u, 0u, 78666u);

var<private> global3: vec4<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<bool> {
    var var_0 = global2.yy;
    var var_1 = _wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(arg_1.zzw, vec3<i32>(-6829i, arg_1.x, u_input.b.x)), min(u_input.b.x, u_input.a)), -61717i), firstTrailingBit(-arg_1.x), ~abs(_wgslsmith_mod_i32(1i, arg_1.x)), max(-3771i, -4722i)));
    var var_2 = Struct_1((u_input.a >> (46162u % 32u)) >> (1u % 32u), _wgslsmith_add_i32(max(global1.a, -u_input.b.x), 1i ^ min(arg_0.a, 27608i)) > 1i, !arg_0.d.x, arg_0.d);
    var_2 = Struct_1(arg_1.x, true, true, vec4<bool>(true, ~_wgslsmith_mod_u32(u_input.c, u_input.e) != 50248u, false, (_wgslsmith_div_i32(4598i, global1.a) >> (45223u % 32u)) > _wgslsmith_mult_i32(_wgslsmith_add_i32(0i, var_2.a), _wgslsmith_dot_vec2_i32(arg_1.wz, vec2<i32>(var_1.x, arg_1.x)))));
    var_1 = min(~vec4<i32>(-arg_0.a, arg_1.x, var_2.a & (var_2.a & arg_0.a), -2147483647i), (~select(vec4<i32>(1i, -2147483647i, 42558i, var_2.a), arg_1, false) ^ vec4<i32>(1i, max(var_2.a, global1.a), _wgslsmith_mult_i32(global1.a, 13281i), 0i)) >> (vec4<u32>(~u_input.d.x, var_0.x, ~var_0.x, 4294967295u) % vec4<u32>(32u)));
    return var_2.d;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * -1228f)) > -361f, true, arg_0.d);
    var var_1 = Struct_1(var_0.a, false, _wgslsmith_f_op_f32(sign(1166f)) > _wgslsmith_f_op_f32(-1f), select(select(!select(var_0.d, var_0.d, true), vec4<bool>(false, any(vec4<bool>(var_0.b, true, arg_0.b, var_0.c)), all(vec3<bool>(global1.b, global1.b, arg_0.c)), arg_0.d.x), func_3(arg_0, vec4<i32>(0i, global1.a, 5956i, -34960i))), global1.d, ~(~u_input.d.x) == ~(~u_input.e)));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(331f, 217f, global3.x, arg_1))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2037f, arg_1, -1459f, arg_1), vec4<f32>(-1471f, arg_1, arg_1, global3.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1369f, global3.x, global3.x, arg_1)))), select(var_0.d, var_0.d, vec4<bool>(var_0.d.x, var_0.d.x, var_0.b, var_0.c))))));
    global0 = global1.a;
    let var_2 = all(var_1.d.zx);
    return Struct_1(0i, func_3(Struct_1(_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_0.a, -36450i), _wgslsmith_div_i32(global1.a, global1.a)), any(arg_0.d.xy), false, arg_0.d), max(u_input.b, u_input.b)).x, all(!vec3<bool>(true, u_input.e <= 0u, true)), !select(select(func_3(arg_0, u_input.b), !vec4<bool>(var_2, false, false, var_1.d.x), vec4<bool>(var_0.b, true, var_0.d.x, false)), arg_0.d, all(vec4<bool>(false, var_2, global1.b, false))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = func_2(func_2(arg_0, -706f), _wgslsmith_f_op_f32(global3.x + global3.x));
    global3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, _wgslsmith_f_op_f32(floor(-1517f)), global3.x, global3.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(172f)), _wgslsmith_f_op_f32(global3.x + -1153f), _wgslsmith_f_op_f32(global3.x - -547f), _wgslsmith_f_op_f32(-1163f * 1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(232f, global3.x, 723f, global3.x))))), global1.d));
    var var_2 = Struct_1(var_0.a, select(arg_1.d.x || false, _wgslsmith_div_f32(-939f, _wgslsmith_div_f32(1000f, global3.x)) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-673f)))), any(var_1.d.zx)), true, !var_0.d);
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(~(~1i), ~(-_wgslsmith_mod_i32(-30374i, 1i))), 0i);
    return Struct_1(var_2.a, any(!(!vec2<bool>(arg_1.c, arg_2.x))), false, vec4<bool>(var_0.c, !(474f != global3.x), !(!(global2.x > global2.x)), true));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global0 = 2147483647i;
    var var_0 = select(!func_4(Struct_1(_wgslsmith_mod_i32(-1i, 1i), arg_1.b, global2.x <= 26450u, global1.d), Struct_1(-2147483647i, arg_2, true, select(global1.d, vec4<bool>(false, arg_2, true, true), arg_0)), select(arg_1.d.zw, vec2<bool>(true, true), !arg_2)).c, true, !(!arg_2));
    let var_1 = Struct_1(_wgslsmith_clamp_i32(func_4(func_4(func_2(Struct_1(u_input.a, true, false, arg_1.d), 259f), arg_1, global1.d.wz), arg_1, vec2<bool>(true, any(arg_1.d))).a, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(54545i, 35062i, global1.a, 1i), u_input.b)), u_input.a), !global1.c, true, !arg_1.d);
    var var_2 = vec3<bool>(all(global1.d), all(func_3(Struct_1(global1.a, var_1.c, arg_1.b, arg_1.d), max(vec4<i32>(-1i, -5087i, arg_1.a, 1i), u_input.b))) | func_3(func_4(func_4(arg_1, arg_1, vec2<bool>(true, arg_2)), Struct_1(1i, false, true, global1.d), arg_1.d.wz), u_input.b).x, true);
    let var_3 = 1i;
    return func_2(arg_1, -577f);
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = global2.x << (arg_1 % 32u);
    var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, _wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(u_input.d.x, u_input.e) >> ((4294967295u << (global2.x % 32u)) % 32u))), u_input.d.zx);
    global2 = countOneBits(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(39272u, 0u, 3774u), u_input.d.xyx) >> ((u_input.d.wxy & vec3<u32>(1956u, u_input.d.x, 21414u)) % vec3<u32>(32u))) ^ abs(u_input.d.xww));
    let var_1 = arg_2;
    global2 = u_input.d.wxy;
    return vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-968f * global3.x)))), 662f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global3.x, -1000f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global3.x)), _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-global3.x)))));
}

fn func_7(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(abs(u_input.a), global1.d.x, !all(!global1.d.xxy), arg_0);
    global1 = Struct_1(56963i >> (arg_1.x % 32u), !arg_0.x, global1.c, var_0.d);
    var var_1 = var_0.d;
    let var_2 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, _wgslsmith_clamp_u32(arg_1.x >> (2489u % 32u), 53719u, ~u_input.c)), vec2<u32>(1u, 1u));
    let var_3 = Struct_1(abs(-37595i), !(!(-317f >= global3.x)), arg_0.x, func_2(var_0, _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * 132f)))).d);
    return var_3;
}

fn func_1(arg_0: vec4<bool>) -> vec4<i32> {
    var var_0 = func_7(select(!vec4<bool>(!arg_0.x, true, !arg_0.x, true), !(!vec4<bool>(arg_0.x, false, false, global1.c)), vec4<bool>(global1.d.x & (global1.a < -16939i), select(true, false, arg_0.x), true, global1.b)), u_input.d, _wgslsmith_f_op_vec4_f32(func_6(!(_wgslsmith_dot_vec4_u32(vec4<u32>(36301u, 1u, 0u, 63097u), u_input.d) >= firstLeadingBit(global2.x)), 59227u, func_5(all(!global1.d), func_4(func_2(Struct_1(2101i, arg_0.x, true, global1.d), global3.x), Struct_1(-1i, true, false, global1.d), global1.d.zx), true))));
    var var_1 = func_4(Struct_1(~_wgslsmith_mod_i32(var_0.a, _wgslsmith_dot_vec3_i32(u_input.b.xzy, u_input.b.yxy)), !(arg_0.x & global1.d.x) || func_7(vec4<bool>(true, true, true, true), vec4<u32>(global2.x, 0u, 17964u, global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, global3.x))).c, arg_0.x, !global1.d), func_4(Struct_1(func_7(arg_0, u_input.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 157f, 777f, global3.x))).a, arg_0.x, func_4(func_5(false, Struct_1(u_input.a, arg_0.x, false, arg_0), false), func_2(Struct_1(global1.a, false, arg_0.x, vec4<bool>(false, false, var_0.d.x, var_0.b)), -662f), !arg_0.ww).b, func_5(global3.x >= 1210f, func_7(arg_0, u_input.d, vec4<f32>(global3.x, -576f, global3.x, global3.x)), !arg_0.x).d), Struct_1(0i, true, var_0.c, select(func_2(Struct_1(2147483647i, global1.c, global1.c, global1.d), -190f).d, !vec4<bool>(global1.c, false, false, true), global2.x >= u_input.c)), vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -943f) != _wgslsmith_f_op_f32(global3.x - global3.x), var_0.d.x)), vec2<bool>(true, false));
    var var_2 = 1f;
    let var_3 = Struct_1(-1i, true, global1.d.x, !func_4(func_2(func_2(Struct_1(0i, false, false, vec4<bool>(var_0.c, false, true, global1.c)), global3.x), 759f), Struct_1(global1.a, !global1.c, arg_0.x, !vec4<bool>(global1.c, var_0.b, global1.d.x, arg_0.x)), func_7(!vec4<bool>(false, arg_0.x, false, arg_0.x), ~u_input.d, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -1325f, 1346f, 615f)))).d.zz).d);
    let var_4 = Struct_1(-2147483647i, !(!(global3.x <= global3.x) | global1.d.x), global3.x == global3.x, var_3.d);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(func_1(global1.d), vec4<i32>(-2147483647i, 27406i, 1i, -7463i)) >> ((u_input.d | (vec4<u32>(38316u, global2.x, global2.x, 12234u) & u_input.d)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.a, u_input.b.x, 22400i, global1.a) >> (~u_input.d % vec4<u32>(32u)), vec4<i32>(-17205i, 1i, func_1(global1.d).x, -u_input.b.x)));
    global1 = func_4(func_5(func_5(global1.b || true, Struct_1(-29159i, true, global1.d.x, vec4<bool>(false, global1.d.x, global1.b, global1.b)), global1.b).a <= -u_input.a, func_5(false, Struct_1(-59916i, !global1.b, global3.x == 169f, func_7(global1.d, vec4<u32>(global2.x, global2.x, 33847u, 0u), vec4<f32>(731f, global3.x, global3.x, global3.x)).d), !(global1.c && false)), true), func_4(func_4(Struct_1(global1.a, false, global3.x == global3.x, func_4(Struct_1(var_0.x, global1.c, false, vec4<bool>(false, global1.c, global1.b, global1.d.x)), Struct_1(u_input.b.x, false, global1.c, global1.d), global1.d.yx).d), func_4(Struct_1(-1i, global1.b, false, vec4<bool>(true, true, global1.d.x, false)), Struct_1(u_input.a, true, false, vec4<bool>(false, true, global1.c, false)), global1.d.xz), vec2<bool>(global1.b, !global1.c)), Struct_1(_wgslsmith_mod_i32(~u_input.a, ~var_0.x), all(select(global1.d.www, global1.d.xyw, vec3<bool>(false, false, false))), true, !global1.d), vec2<bool>(global1.d.x && true, true)), !global1.d.xw);
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1346f, 921f, -1919f, global3.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, global3.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, global3.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -1825f, 573f, -573f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(879f, global3.x, 811f, global3.x) * vec4<f32>(-428f, -932f, 828f, global3.x)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1501f, 1072f, global3.x, 1599f))))), true))));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1 - _wgslsmith_f_op_vec4_f32(-vec4<f32>(740f, global3.x, var_1.x, global3.x))) + vec4<f32>(702f, _wgslsmith_f_op_f32(-184f - global3.x), _wgslsmith_f_op_f32(abs(1196f)), _wgslsmith_f_op_f32(floor(-954f)))) - _wgslsmith_f_op_vec4_f32(func_6(!any(vec4<bool>(global1.c, true, false, global1.c)), ~64596u, func_5(global1.d.x, func_5(global1.d.x, Struct_1(global1.a, true, global1.c, global1.d), global1.d.x), global1.d.x)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, global3.x, var_1.x) * vec3<f32>(global3.x, 555f, global3.x)), vec3<f32>(var_1.x, var_1.x, -1505f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1961f, -537f, _wgslsmith_f_op_f32(918f * 1248f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.x, 525f)))))));
    global1 = func_2(func_5(!(reverseBits(global2.x) == min(u_input.c, u_input.c)), Struct_1(global1.a << (_wgslsmith_dot_vec4_u32(u_input.d, u_input.d) % 32u), true, !global1.b, global1.d), global1.b), -1863f);
    let x = u_input.a;
    s_output = StorageBuffer(abs(8873i) ^ _wgslsmith_clamp_i32(-select(u_input.a, var_0.x, global1.b), ~2147483647i, -(6854i & global1.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(var_1.ywz, var_2)))) + vec3<f32>(var_2.x, -725f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(544f, -408f, 1836f) * var_2) - _wgslsmith_f_op_vec3_f32(global3.wzz - global3.zww)))), _wgslsmith_clamp_i32(func_4(Struct_1(~var_0.x, global1.c, global1.b, vec4<bool>(global1.b, true, global1.c, true)), func_4(Struct_1(12120i, true, false, vec4<bool>(true, false, true, global1.d.x)), Struct_1(-2147483647i, global1.b, global1.b, global1.d), vec2<bool>(true, true)), select(vec2<bool>(global1.c, global1.c), global1.d.wz, global1.d.x)).a, _wgslsmith_sub_i32(1i, global1.a), u_input.b.x), _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(global2.xx, u_input.d.xz), u_input.c) >> ((6710u ^ u_input.c) % 32u));
}

