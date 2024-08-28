struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -65833i;

var<private> global1: vec2<bool>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_4) -> u32 {
    var var_0 = select(reverseBits(~vec2<u32>(0u, arg_0.a.d) ^ vec2<u32>(arg_0.a.c, arg_0.a.c)) & vec2<u32>(arg_3.a.a, _wgslsmith_add_u32(~arg_3.a.c, arg_3.a.d)), ~min(select(~vec2<u32>(arg_3.a.a, 72831u), vec2<u32>(6829u, arg_0.a.d), all(vec2<bool>(false, true))), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(arg_0.a.d, 4294967295u), vec2<u32>(arg_3.a.a, 0u), false), ~vec2<u32>(4294967295u, arg_0.a.a), vec2<u32>(4294967295u, arg_3.a.d))), true);
    let var_1 = ~(~(~vec4<u32>(~16685u, 0u, arg_0.a.d, firstTrailingBit(38146u))));
    var var_2 = select(select(select(!(!vec4<bool>(true, arg_0.a.b, true, arg_0.a.b)), select(vec4<bool>(true, arg_2, arg_3.b, false), select(vec4<bool>(arg_0.b, arg_0.b, true, false), vec4<bool>(arg_2, global1.x, global1.x, arg_3.b), true), !vec4<bool>(false, false, false, arg_3.b)), !select(vec4<bool>(arg_0.b, global1.x, true, arg_3.a.b), vec4<bool>(arg_0.a.b, true, global1.x, true), vec4<bool>(true, false, true, arg_0.b))), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, arg_3.b, true), vec4<bool>(true, arg_0.a.b, arg_2, arg_2)), vec4<bool>(arg_0.b, select(arg_2, arg_2, true), true, true), select(!vec4<bool>(true, arg_2, false, true), select(vec4<bool>(false, arg_2, true, arg_2), vec4<bool>(arg_0.a.b, arg_3.b, arg_3.b, true), vec4<bool>(arg_3.a.b, true, false, false)), false)), any(!select(vec2<bool>(true, true), vec2<bool>(true, arg_2), true))), vec4<bool>(true, false, true, !(arg_2 | all(vec2<bool>(arg_2, global1.x)))), vec4<bool>(arg_3.b, !(select(36571u, arg_0.a.d, true) != var_0.x), !any(vec2<bool>(global1.x, true)), any(vec3<bool>(arg_0.b, true, false))));
    global0 = firstLeadingBit(firstTrailingBit(-1i));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-158f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -537f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1840f - _wgslsmith_f_op_f32(f32(-1f) * -419f)), 783f)), -2942f);
    return ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(354u, ~21451u)), firstTrailingBit(var_1.yx | firstTrailingBit(vec2<u32>(12850u, 4294967295u))));
}

fn func_2() -> Struct_1 {
    global1 = vec2<bool>(true, true);
    return Struct_1(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_mod_u32(4294967295u, 14528u), func_3(Struct_4(Struct_1(0u, true, 8594u, 1u, u_input.b.wyz), true), vec3<i32>(-2147483647i, u_input.b.x, 23338i), global1.x, Struct_4(Struct_1(1u, global1.x, 4294967295u, 11821u, vec3<i32>(u_input.b.x, -24951i, 1i)), global1.x))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(3346u, 4294967295u, 51203u, 29403u), vec4<u32>(4294967295u, 4294967295u, 28970u, 4294967295u)), _wgslsmith_mod_u32(13656u, 11044u), ~0u))), !(!select(all(vec3<bool>(global1.x, global1.x, global1.x)), true, !global1.x)), 0u, countOneBits(52591u), -abs(select(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), u_input.b.yzz, !global1.x)));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec2<u32>) -> Struct_2 {
    return Struct_2(arg_0.a, Struct_1(_wgslsmith_mod_u32(51566u, countOneBits(~2634u)), arg_1.x, 61243u, _wgslsmith_add_u32(_wgslsmith_div_u32(~19483u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, arg_2.x), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.c, 0u, arg_2.x), vec3<u32>(arg_2.x, 6606u, 26427u)))), ~arg_0.a.e), _wgslsmith_mod_vec2_i32(u_input.b.yy, abs(vec2<i32>(-41426i, u_input.a))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: i32) -> vec2<bool> {
    let var_0 = func_4(Struct_4(arg_1.a, global1.x), select(!(!select(vec4<bool>(false, true, true, arg_0.a.b), vec4<bool>(arg_1.a.b, true, true, false), arg_0.a.b)), !vec4<bool>(arg_0.b.b, arg_1.b, arg_1.b || arg_0.b.b, true), vec4<bool>(!global1.x, arg_0.a.b, arg_0.b.b, true && func_4(arg_1, vec4<bool>(arg_1.a.b, arg_1.b, arg_0.b.b, arg_1.a.b), vec2<u32>(arg_1.a.c, arg_1.a.d)).a.b)), countOneBits(~vec2<u32>(~arg_1.a.c, 4294967295u))).a.b;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1018f, -322f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1426f * -1354f)), 1225f)));
    global1 = vec2<bool>(_wgslsmith_mod_i32(min(-arg_1.a.e.x, ~arg_2), min(func_2().e.x, arg_0.c.x >> (arg_1.a.c % 32u))) <= arg_2, true);
    var var_2 = vec2<bool>(global1.x, select(true, arg_1.a.b, true));
    var_2 = !select(!vec2<bool>(var_2.x, var_2.x && false), select(!select(vec2<bool>(var_2.x, global1.x), vec2<bool>(false, var_0), vec2<bool>(var_0, var_2.x)), select(select(vec2<bool>(var_0, global1.x), vec2<bool>(false, var_2.x), arg_0.b.b), vec2<bool>(false, arg_0.b.b), -31716i < u_input.a), arg_0.b.b), false);
    return vec2<bool>(false, arg_1.a.b && arg_0.a.b);
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: vec2<bool>) -> f32 {
    global1 = select(func_5(func_4(Struct_4(func_2(), arg_2.x), select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_2.x, true, arg_2.x, global1.x), false || arg_2.x), vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 46550u, 1208u), abs(49742u))), Struct_4(Struct_1(0u, false, 1u, max(52136u, 4294967295u), vec3<i32>(arg_0, -1263i, u_input.a)), func_2().b), countOneBits(1i)), arg_2, func_5(Struct_2(Struct_1(1u, global1.x, 47234u, ~0u, u_input.b.ywz & u_input.b.xxz), Struct_1(_wgslsmith_add_u32(12759u, 0u), false, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 24668u), vec2<u32>(0u, 4294967295u)), 1u, ~u_input.b.wwx), u_input.b.yx), Struct_4(func_4(Struct_4(Struct_1(26453u, false, 22521u, 23807u, u_input.b.wyw), false), vec4<bool>(false, arg_1.a, arg_2.x, arg_2.x), ~vec2<u32>(59699u, 0u)).b, func_2().b), 2147483647i));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(717f, 972f, -795f))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-327f, 466f, 134f))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(366f, -1325f, -256f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2066f, 469f, 1000f)))))));
    var var_1 = vec3<bool>(true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(var_0.x * -418f))) + var_0.x) != -1124f);
    global1 = vec2<bool>(arg_1.a | true, all(select(select(!vec3<bool>(var_1.x, false, arg_1.a), select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, arg_2.x, false), true), select(vec3<bool>(true, arg_1.a, global1.x), vec3<bool>(false, false, arg_2.x), true)), !select(vec3<bool>(false, arg_1.a, false), vec3<bool>(arg_2.x, true, var_1.x), vec3<bool>(false, true, var_1.x)), select(select(vec3<bool>(true, arg_2.x, true), vec3<bool>(arg_2.x, global1.x, global1.x), vec3<bool>(true, false, global1.x)), vec3<bool>(arg_2.x, var_1.x, global1.x), vec3<bool>(false, var_1.x, true)))));
    var var_2 = select(select(select(select(select(vec3<bool>(arg_1.a, arg_2.x, true), vec3<bool>(global1.x, true, false), vec3<bool>(true, var_1.x, false)), vec3<bool>(true, true, true), arg_1.a), vec3<bool>(true, false, !arg_1.a), !arg_1.a == arg_1.a), vec3<bool>(-1351f == var_0.x, _wgslsmith_sub_i32(arg_0, -31528i) != (u_input.a | arg_0), select(all(vec4<bool>(true, false, false, true)), all(vec2<bool>(false, false)), false)), true), !select(select(select(vec3<bool>(global1.x, false, true), vec3<bool>(false, false, var_1.x), vec3<bool>(arg_2.x, false, var_1.x)), vec3<bool>(arg_2.x, var_1.x, false), !global1.x), !select(vec3<bool>(true, arg_2.x, true), vec3<bool>(var_1.x, true, true), vec3<bool>(true, false, arg_2.x)), all(vec2<bool>(false, true)) && true), select(true, all(vec3<bool>(true, true, !var_1.x)), any(select(vec4<bool>(false, var_1.x, var_1.x, true), !vec4<bool>(arg_2.x, false, true, arg_1.a), false))));
    return _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(var_0.x, var_0.x));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_5) -> Struct_5 {
    var var_0 = func_4(Struct_4(func_2(), select(global1.x, all(vec2<bool>(arg_0.x, arg_1.a)), !(true | global1.x))), !(!select(arg_0, vec4<bool>(global1.x, false, arg_0.x, arg_1.a), true)), vec2<u32>(1u, 1u) << (_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)) % vec2<u32>(32u))).b.a;
    global0 = u_input.b.x;
    var var_1 = select(!(!vec3<bool>(true, any(vec2<bool>(arg_1.c, arg_1.c)), false | global1.x)), vec3<bool>(true, any(vec3<bool>(arg_0.x, true, true)), !func_2().b), select(select(arg_0.wzx, vec3<bool>(any(arg_0.yzy), true, func_4(Struct_4(Struct_1(12571u, false, 1u, 83339u, arg_1.b.wwy), global1.x), arg_0, vec2<u32>(1u, 19887u)).b.b), arg_0.wwz), select(select(select(arg_0.zxx, arg_0.xzy, arg_0.x), vec3<bool>(arg_1.c, true, false), select(arg_0.wwx, arg_0.wzw, vec3<bool>(false, true, arg_1.c))), select(select(arg_0.wzy, vec3<bool>(true, false, false), global1.x), vec3<bool>(arg_0.x, arg_1.a, global1.x), false && arg_1.a), vec3<bool>(select(false, global1.x, arg_1.a), arg_0.x, arg_0.x | arg_1.a)), vec3<bool>(arg_1.a, false, all(!vec2<bool>(arg_0.x, false)))));
    global0 = _wgslsmith_sub_i32(firstLeadingBit(~u_input.a), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_1.b.x, u_input.a), _wgslsmith_add_i32(arg_1.b.x, _wgslsmith_sub_i32(~32993i, ~arg_1.b.x)), arg_1.b.x));
    let var_2 = ~(~u_input.a);
    return Struct_5(-23443i > u_input.b.x, -vec4<i32>(1i, _wgslsmith_mult_i32(var_2, -9281i), u_input.b.x | arg_1.b.x, _wgslsmith_dot_vec3_i32(u_input.b.xxz, arg_1.b.xww)) << (vec4<u32>(_wgslsmith_clamp_u32(~1u, 0u, ~1u), 78733u, 1u << (1u % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 12636u), vec2<u32>(30127u, 83792u), vec2<u32>(63766u, 37141u)), firstTrailingBit(vec2<u32>(0u, 4294967295u)))) % vec4<u32>(32u)), !(!(!var_1.x) && !arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    var_0 = _wgslsmith_mod_i32(firstTrailingBit(u_input.a), 1i);
    var var_1 = u_input.a;
    let var_2 = func_6(select(select(vec4<bool>(true, true, global1.x | false, global1.x), select(vec4<bool>(global1.x, global1.x, global1.x, false), !vec4<bool>(true, global1.x, global1.x, false), !vec4<bool>(global1.x, global1.x, global1.x, global1.x)), global1.x), vec4<bool>(false, _wgslsmith_f_op_f32(func_1(1i, Struct_3(true), vec2<bool>(false, false))) < _wgslsmith_f_op_f32(func_1(u_input.a, Struct_3(global1.x), vec2<bool>(true, global1.x))), true, global1.x), vec4<bool>(any(!vec4<bool>(false, global1.x, global1.x, global1.x)), true, func_5(func_4(Struct_4(Struct_1(0u, false, 56359u, 0u, u_input.b.wyx), false), vec4<bool>(global1.x, global1.x, false, global1.x), vec2<u32>(4294967295u, 21761u)), Struct_4(Struct_1(36747u, global1.x, 4294967295u, 31968u, u_input.b.zyz), false), 1i).x, func_5(func_4(Struct_4(Struct_1(4294967295u, global1.x, 4294967295u, 48411u, vec3<i32>(u_input.a, -51865i, u_input.a)), true), vec4<bool>(true, global1.x, true, global1.x), vec2<u32>(4294967295u, 0u)), Struct_4(Struct_1(10457u, false, 27128u, 0u, u_input.b.yzy), true), u_input.a).x)), Struct_5(true, reverseBits(~u_input.b) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), all(select(select(vec3<bool>(false, false, false), vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, false, false)), vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, true, global1.x)))));
    var var_3 = var_2.c;
    var var_4 = _wgslsmith_mod_vec3_u32(abs(abs(select(vec3<u32>(16174u, 4294967295u, 18243u), vec3<u32>(4294967295u, 0u, 19674u), vec3<bool>(false, global1.x, var_2.a)) | countOneBits(vec3<u32>(4294967295u, 4294967295u, 95087u)))), ~min(~vec3<u32>(1u, 1u, 27915u), ~(~vec3<u32>(0u, 1u, 1u))));
    var var_5 = func_4(Struct_4(Struct_1(func_4(Struct_4(Struct_1(1u, var_2.c, 13253u, 1u, vec3<i32>(var_2.b.x, -2147483647i, -2147483647i)), false), select(vec4<bool>(global1.x, false, true, false), vec4<bool>(true, global1.x, true, global1.x), true), ~vec2<u32>(var_4.x, var_4.x)).a.a, (-1i >= u_input.b.x) | false, firstTrailingBit(select(var_4.x, var_4.x, global1.x)), 1u, u_input.b.xwx), func_6(select(select(vec4<bool>(global1.x, var_2.c, global1.x, global1.x), vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(var_2.a, global1.x, global1.x, var_2.a)), select(vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(global1.x, true, var_2.c, true), global1.x), true), func_6(select(vec4<bool>(var_2.c, false, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(var_2.a, true, global1.x, var_2.a)), func_6(vec4<bool>(var_2.a, true, true, var_2.a), Struct_5(global1.x, vec4<i32>(0i, var_2.b.x, var_2.b.x, u_input.b.x), var_2.c)))).c), !vec4<bool>(true, 1u == _wgslsmith_sub_u32(var_4.x, var_4.x), false, var_2.c), ~var_4.yz).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(func_2().c & ~var_4.x), abs(max(1u, var_4.x)) & ~var_5.d, 0u, ~(~abs(4363u))), _wgslsmith_f_op_f32(-959f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1289f + -939f) - _wgslsmith_f_op_f32(f32(-1f) * -559f)))), var_4.x, var_5.c, var_5.e.zz);
}

