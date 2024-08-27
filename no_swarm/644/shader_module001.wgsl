struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32>;

var<private> global1: u32;

var<private> global2: vec4<i32> = vec4<i32>(2147483647i, -34573i, 5842i, -44564i);

var<private> global3: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(13205u, 4294967295u, 21636u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 23707u, 14460u), vec3<u32>(0u, 4799u, 1u), vec3<u32>(66719u, 0u, 12398u), vec3<u32>(35723u, 17983u, 4294967295u), vec3<u32>(0u, 1u, 3742u), vec3<u32>(1u, 5109u, 59418u), vec3<u32>(0u, 1u, 39672u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(1035u, 4294967295u, 48628u), vec3<u32>(47485u, 1u, 16839u), vec3<u32>(1u, 17085u, 15091u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> i32 {
    var var_0 = arg_0;
    var var_1 = vec3<bool>(true, true, false);
    return ~(select(54021i, -2147483647i, true) << (1u % 32u));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> vec2<f32> {
    let var_0 = select(arg_1.xyw, !vec3<bool>(!(!arg_1.x), false & (global2.x >= global2.x), -1534f <= _wgslsmith_f_op_f32(arg_0 - arg_0)), select(arg_1.wzx, !vec3<bool>(any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)), false, true), select(vec3<bool>(arg_1.x, true, select(true, arg_1.x, true)), vec3<bool>(!arg_1.x, arg_0 > 604f, select(arg_1.x, true, arg_1.x)), arg_1.x)));
    let var_1 = _wgslsmith_f_op_f32(trunc(-141f));
    global1 = 1u;
    let var_2 = global0[_wgslsmith_index_u32(~4294967295u << ((max(_wgslsmith_mod_u32(~4294967295u, max(1u, 50163u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(58461u, 50762u, 588u, 42356u), vec4<u32>(8380u, 4294967295u, 62618u, 0u)), 4294967295u, reverseBits(0u))) & 0u) % 32u), 32u)];
    global3 = array<vec3<u32>, 14>();
    return vec2<f32>(var_1, -214f);
}

fn func_4(arg_0: u32, arg_1: vec2<f32>) -> i32 {
    global1 = max(abs(firstTrailingBit(~6652u) ^ 1u), select(arg_0 ^ ~(arg_0 << (4294967295u % 32u)), _wgslsmith_add_u32(~abs(50607u), arg_0), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), true))));
    let var_0 = Struct_4(global2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(30107u, arg_0, arg_0, arg_0) & vec4<u32>(arg_0, 62024u, arg_0, 1u), vec4<u32>(16431u, 33456u, 4294967295u, arg_0))), vec3<u32>(reverseBits(arg_0 << (8909u % 32u)), firstTrailingBit(arg_0 >> (arg_0 % 32u)), reverseBits(4294967295u | arg_0))), 0u);
    let var_1 = var_0;
    let var_2 = global2.xzw;
    let var_3 = Struct_5(Struct_2(Struct_1(_wgslsmith_mod_u32(0u, var_1.c ^ var_1.c), vec4<u32>(~var_1.b, _wgslsmith_clamp_u32(95263u, var_0.b, var_1.c), 11792u, 27854u)), vec4<bool>(true, true, arg_1.x <= _wgslsmith_f_op_f32(abs(arg_1.x)), any(vec3<bool>(true, true, true)))), Struct_1(0u, reverseBits(~vec4<u32>(33165u, var_1.c, var_1.c, 64696u) & abs(vec4<u32>(1u, var_0.b, 21627u, 18795u)))), Struct_1(var_1.b >> (abs(var_0.b) % 32u), firstLeadingBit(~vec4<u32>(arg_0, 24363u, var_1.c, 8834u) << (~vec4<u32>(arg_0, var_0.c, 0u, var_0.b) % vec4<u32>(32u)))), u_input.c, 0i);
    return _wgslsmith_mod_i32(1i, var_2.x);
}

fn func_2() -> Struct_1 {
    global2 = u_input.c;
    var var_0 = 2147483647i;
    global1 = 33030u;
    var var_1 = vec3<i32>(func_4(~1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(-222f, vec4<bool>(true, false, false, true))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(293f, -1000f), vec2<f32>(-169f, -705f))))) << ((64612u ^ (~7555u << (_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(57394u, 14u)], vec3<u32>(32157u, 1u, 46337u)) % 32u))) % 32u), global2.x | _wgslsmith_mod_i32(abs(global2.x), 52369i >> (firstLeadingBit(4294967295u) % 32u)), -abs(39725i));
    let var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_clamp_u32(65708u, 40091u, 1u) | ~abs(46994u), abs(firstTrailingBit(53698u >> (0u % 32u)))), vec2<u32>(_wgslsmith_mult_u32(~select(1u, 4294967295u, false), ~firstTrailingBit(81631u)), ~(~(~0u))));
    return Struct_1(4294967295u, ~(~(vec4<u32>(0u, var_2.x, var_2.x, var_2.x) ^ vec4<u32>(30133u, var_2.x, var_2.x, var_2.x))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(~96416u, min(1u, var_2.x), firstTrailingBit(var_2.x), _wgslsmith_mult_u32(var_2.x, var_2.x)), (vec4<u32>(15854u, var_2.x, 1850u, var_2.x) & vec4<u32>(var_2.x, var_2.x, 14873u, var_2.x)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, var_2.x, 10963u, 47281u), vec4<u32>(var_2.x, 47519u, var_2.x, var_2.x)), vec4<u32>(~var_2.x, _wgslsmith_mod_u32(var_2.x, var_2.x), 4294967295u, abs(59541u))) % vec4<u32>(32u)));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: f32) -> f32 {
    var var_0 = Struct_4(min(~(~(-15163i)), abs(reverseBits(u_input.c.x)) >> (4294967295u % 32u)), select(arg_0.x, firstLeadingBit(60151u) | arg_1.a.b.x, false), ~3812u);
    var var_1 = arg_2;
    let var_2 = arg_1.a;
    let var_3 = vec4<bool>(any(arg_1.b.zyy), (false && arg_1.b.x) || !(all(arg_1.b.wzw) || arg_1.b.x), false, !arg_1.b.x);
    let var_4 = Struct_4(48246i, ~(_wgslsmith_sub_u32(~var_0.b, countOneBits(1u)) & 22661u), ~max(var_0.c << (arg_1.a.a % 32u), ~1u) ^ ~_wgslsmith_clamp_u32(~20272u, ~1836u, countOneBits(arg_1.a.b.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) * arg_2))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<f32>(1f, 1f, 1f), _wgslsmith_mult_i32(global2.x, firstLeadingBit(-20947i)));
    var_0 = _wgslsmith_add_i32(u_input.a.x, 1382i);
    var var_1 = global0[_wgslsmith_index_u32(1u, 32u)];
    let var_2 = var_1.a;
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -500f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -220f))), _wgslsmith_f_op_f32(func_5(~var_1.a.wz, Struct_2(func_2(), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1418f))))));
    var var_4 = ~var_2.x;
    var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_3.x)), vec2<f32>(var_3.x, -105f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, -1328f)))), false)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_3.x, vec4<bool>(true, true, true, true))).x), -718f), select(select(vec2<bool>(false, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(all(vec3<bool>(true, true, true)), true), vec2<bool>(true, true)))) + vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - var_3.x), -552f)), _wgslsmith_f_op_f32(var_3.x - -297f)));
    var_4 = var_1.b;
    let var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1181f, _wgslsmith_f_op_f32(f32(-1f) * -676f), _wgslsmith_f_op_f32(-var_3.x))) + vec3<f32>(var_3.x, var_3.x, var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, func_4(var_1.a.x, var_5.yx) ^ max(u_input.d.x, abs(select(-63351i, 2147483647i, false))));
}

