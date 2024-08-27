struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, 1u, 0u), vec3<u32>(4294967295u, 73851u, 0u), vec3<u32>(4294967295u, 99239u, 4294967295u), vec3<u32>(4218u, 1u, 17559u), vec3<u32>(1u, 0u, 56142u), vec3<u32>(0u, 1u, 1u), vec3<u32>(0u, 38546u, 4294967295u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 78564u, 0u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 1050u, 1u), vec3<u32>(70805u, 0u, 49585u), vec3<u32>(4294967295u, 37302u, 41647u), vec3<u32>(4294967295u, 69075u, 28332u), vec3<u32>(61530u, 4294967295u, 73258u), vec3<u32>(25417u, 106272u, 0u), vec3<u32>(62339u, 24732u, 42075u), vec3<u32>(0u, 3653u, 7089u), vec3<u32>(108518u, 63865u, 1u), vec3<u32>(4294967295u, 56579u, 8346u), vec3<u32>(0u, 15071u, 1u), vec3<u32>(1u, 0u, 1u), vec3<u32>(14340u, 0u, 0u));

var<private> global1: array<vec3<u32>, 29>;

var<private> global2: u32 = 1487u;

var<private> global3: Struct_1 = Struct_1(0u, vec2<bool>(true, false));

var<private> global4: vec4<f32> = vec4<f32>(1799f, 134f, -755f, -876f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(firstLeadingBit(~u_input.a), vec2<bool>(any(select(!vec3<bool>(global3.b.x, false, global3.b.x), !vec3<bool>(global3.b.x, false, global3.b.x), global3.b.x | true)), !global3.b.x));
    global3 = Struct_1(reverseBits(1u), global3.b);
    let var_1 = -(-countOneBits(min(2147483647i, 0i)) ^ (firstTrailingBit(-5461i) ^ reverseBits(u_input.c)));
    return any(vec3<bool>(any(!select(vec2<bool>(true, true), var_0.b, true)), any(vec3<bool>(global3.b.x, any(global3.b), global3.b.x)), all(vec4<bool>(all(vec2<bool>(false, global3.b.x)), !var_0.b.x, select(global3.b.x, global3.b.x, true), !var_0.b.x))));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    global3 = Struct_1(~(max(~arg_2.a, arg_2.a ^ 4294967295u) & countOneBits(~0u)), var_0.b);
    let var_1 = arg_2;
    var var_2 = -2056f;
    var var_3 = arg_2;
    return Struct_1(102672u, select(vec2<bool>(true, true), vec2<bool>(true, false | func_3()), select(!select(vec2<bool>(false, arg_0.x), vec2<bool>(var_1.b.x, arg_0.x), global3.b), !vec2<bool>(false, global3.b.x), vec2<bool>(!global3.b.x, func_3()))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec2<bool> {
    let var_0 = func_2(vec3<bool>(arg_0.b.x, !(!global3.b.x), true), global3.b.x, func_2(vec3<bool>(_wgslsmith_f_op_f32(exp2(global4.x)) != global4.x, arg_0.b.x, true), !arg_0.b.x, Struct_1(~29282u, vec2<bool>(global3.b.x, all(vec4<bool>(arg_0.b.x, global3.b.x, arg_0.b.x, false))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, 920f, global4.x) + vec3<f32>(2660f, global4.x, global4.x))) * global4.zyx)) * global4.xww);
    var var_2 = Struct_1(~0u, arg_0.b);
    global3 = func_2(!vec3<bool>(var_2.b.x, !arg_0.b.x | all(vec2<bool>(true, global3.b.x)), select(!var_2.b.x, !global3.b.x, true)), !func_2(!vec3<bool>(var_2.b.x, true, true), true, func_2(select(vec3<bool>(false, arg_0.b.x, global3.b.x), vec3<bool>(false, false, var_2.b.x), var_0.b.x), -2147483647i > u_input.c, var_0)).b.x, func_2(vec3<bool>(true, all(vec3<bool>(arg_0.b.x, false, false)), select(!var_2.b.x, global3.b.x, global3.b.x)), var_0.b.x, func_2(select(vec3<bool>(global3.b.x, true, true), !vec3<bool>(false, true, var_0.b.x), vec3<bool>(true, arg_0.b.x, true)), all(!vec3<bool>(false, global3.b.x, true)), arg_0)));
    var var_3 = func_2(select(vec3<bool>((true & arg_0.b.x) && true, _wgslsmith_f_op_f32(-1227f - global4.x) <= _wgslsmith_f_op_f32(abs(-848f)), false), vec3<bool>(any(!vec3<bool>(false, var_0.b.x, arg_0.b.x)), ~u_input.c >= -2147483647i, min(55382u, global3.a) >= countOneBits(var_2.a)), vec3<bool>(true, true, true)), true, func_2(!(!(!vec3<bool>(arg_0.b.x, global3.b.x, false))), func_2(select(vec3<bool>(arg_0.b.x, var_2.b.x, var_0.b.x), select(vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(global3.b.x, false, false), true), select(vec3<bool>(arg_0.b.x, true, true), vec3<bool>(var_0.b.x, true, true), true)), any(!vec3<bool>(true, global3.b.x, true)), Struct_1(arg_1, !vec2<bool>(var_2.b.x, false))).b.x, Struct_1(abs(_wgslsmith_mult_u32(var_2.a, var_0.a)), vec2<bool>(global3.b.x, true)))).b;
    return arg_0.b;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = global3.b.x;
    let var_1 = ~vec4<u32>(~firstTrailingBit(abs(global3.a)), global3.a, ~2628u, global3.a | global3.a);
    var var_2 = _wgslsmith_clamp_vec3_i32(select(arg_2.yxw, countOneBits(vec3<i32>(firstLeadingBit(u_input.c), arg_2.x, 1i & arg_2.x)), any(select(vec4<bool>(arg_1.b.x, arg_1.b.x, global3.b.x, arg_1.b.x), vec4<bool>(true, true, false, arg_1.b.x), false)) || ((true || global3.b.x) & true)), vec3<i32>(2147483647i, -_wgslsmith_add_i32(~44257i, -52685i), ~1i), _wgslsmith_clamp_vec3_i32(arg_2.wzw, vec3<i32>(-5374i, 7377i, 41764i), arg_2.yzz));
    var var_3 = Struct_1((1u << ((_wgslsmith_div_u32(global3.a, global3.a) | var_1.x) % 32u)) << ((_wgslsmith_clamp_u32(~var_1.x, _wgslsmith_clamp_u32(var_1.x, 32851u, global3.a), _wgslsmith_mod_u32(0u, var_1.x)) << (43380u % 32u)) % 32u), !select(!arg_1.b, global3.b, !(!vec2<bool>(arg_1.b.x, false))));
    var_3 = func_2(select(!vec3<bool>(true, true, !var_3.b.x), select(select(!vec3<bool>(global3.b.x, global3.b.x, arg_1.b.x), vec3<bool>(true, false, false), var_3.b.x), vec3<bool>(449f == global4.x, false, any(vec4<bool>(true, global3.b.x, arg_1.b.x, true))), !(!arg_1.b.x)), !vec3<bool>(arg_1.b.x, any(vec3<bool>(false, false, arg_1.b.x)), true)), func_2(vec3<bool>(true, global3.b.x, false), !global3.b.x, func_2(select(!vec3<bool>(false, global3.b.x, var_3.b.x), select(vec3<bool>(var_3.b.x, global3.b.x, global3.b.x), vec3<bool>(global3.b.x, global3.b.x, var_3.b.x), true), !vec3<bool>(global3.b.x, arg_1.b.x, arg_1.b.x)), true, arg_1)).b.x, arg_1);
    return Struct_1(1u, !vec2<bool>(select(false & arg_1.b.x, false, var_3.b.x || global3.b.x), any(var_3.b)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = global3.a;
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(step(global4.www, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, arg_3, -866f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-744f, global4.x, arg_3) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(602f, 547f, global4.x))))))), Struct_1(~max(countOneBits(10929u), 1u), func_4(func_2(vec3<bool>(true, arg_2.b.x, true), true, Struct_1(0u, vec2<bool>(arg_1, false))), arg_2.a)), ~vec4<i32>(_wgslsmith_sub_i32(-28542i, _wgslsmith_mod_i32(12102i, u_input.c)), -firstTrailingBit(-49027i), -6736i, 63397i));
    global0 = array<vec3<u32>, 25>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global4.x, arg_3, -840f, global4.x), vec4<f32>(global4.x, arg_3, arg_3, -566f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_3, arg_3, 1000f) + vec4<f32>(global4.x, global4.x, 667f, 358f)))) - vec4<f32>(563f, _wgslsmith_f_op_f32(f32(-1f) * -380f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_3, -131f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(750f, arg_3)) - arg_3))) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global4.x, arg_3))), _wgslsmith_f_op_f32(f32(-1f) * -1766f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.x))), _wgslsmith_f_op_f32(f32(-1f) * -1067f), -563f));
    let var_3 = var_2.x;
    return !(-1929f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -455f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec3<bool>(global3.b.x, false, func_1(Struct_1(global3.a, vec2<bool>(global3.b.x, global3.b.x)), false, Struct_1(global3.a, vec2<bool>(false, false)), global4.x))) && global3.b.x;
    global2 = _wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a), global3.a)) ^ firstTrailingBit(7666u);
    let var_1 = func_5(vec3<f32>(-1120f, _wgslsmith_div_f32(-2157f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-178f, global4.x, global3.b.x))))), 1000f), Struct_1(abs(select(global3.a, abs(13807u), global3.b.x)), func_2(vec3<bool>(u_input.c >= -18649i, func_1(Struct_1(u_input.a, vec2<bool>(global3.b.x, global3.b.x)), true, Struct_1(u_input.b.x, global3.b), 859f), global3.b.x & true), func_5(vec3<f32>(global4.x, 382f, 1454f), Struct_1(u_input.a, global3.b), vec4<i32>(u_input.c, -41224i, 2147483647i, u_input.c)).b.x && (false | global3.b.x), func_2(select(vec3<bool>(global3.b.x, false, global3.b.x), vec3<bool>(global3.b.x, false, global3.b.x), vec3<bool>(global3.b.x, global3.b.x, global3.b.x)), true, Struct_1(global3.a, vec2<bool>(global3.b.x, global3.b.x)))).b), vec4<i32>(-1i) * -abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(11613i, u_input.c, 0i, u_input.c), vec4<i32>(u_input.c, -6019i, 12146i, -40771i), vec4<i32>(78743i, 6735i, -13436i, u_input.c))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global4.x)) + -1751f)))) + _wgslsmith_f_op_f32(select(global4.x, _wgslsmith_f_op_f32(step(global4.x, global4.x)), true)));
    var var_3 = select(var_1.b.x, global3.b.x, true);
    var var_4 = abs(u_input.b.x);
    let var_5 = var_1;
    let var_6 = select(reverseBits(u_input.b.zy), select(u_input.b.zz, u_input.b.zz, !func_4(Struct_1(1u, global3.b), _wgslsmith_add_u32(1u, 74129u)).x), var_5.b);
    var_3 = all(select(vec3<bool>(var_5.b.x, var_5.b.x, var_5.b.x), select(!(!vec3<bool>(var_5.b.x, true, false)), !(!vec3<bool>(true, true, global3.b.x)), true), global3.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4.x)) * global4.x))));
}

