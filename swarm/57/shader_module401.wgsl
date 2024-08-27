struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(-65644i, -4719i), vec2<i32>(-1i, 0i), vec2<i32>(-2274i, 69444i), vec2<i32>(i32(-2147483648), 1338i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-23575i, 1i));

var<private> global1: array<i32, 25> = array<i32, 25>(-82755i, 1i, 26705i, 1i, 2147483647i, 31586i, 3672i, -8806i, -41384i, 1i, 7326i, 13591i, 28144i, 0i, 27897i, 14917i, 2147483647i, 38467i, 15404i, 1i, 36623i, -8414i, 2147483647i, -3653i, -25908i);

var<private> global2: vec4<i32>;

var<private> global3: bool = true;

var<private> global4: vec4<u32> = vec4<u32>(13158u, 0u, 40078u, 4294967295u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    global1 = array<i32, 25>();
    global3 = true;
    global1 = array<i32, 25>();
    var var_0 = Struct_1(!all(vec2<bool>(true, true)), -1i, abs(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(global4.x, global4.x, 41928u), global4.xzx))), (vec4<u32>(global4.x, _wgslsmith_sub_u32(global4.x, 4294967295u), 38359u, 4294967295u) << (min(vec4<u32>(0u, global4.x, global4.x, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 45822u, 6350u), vec4<u32>(global4.x, global4.x, 0u, global4.x), vec4<u32>(global4.x, global4.x, global4.x, 0u))) % vec4<u32>(32u))) >> (max(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global4.x, global4.x, 4294967295u), ~vec4<u32>(0u, global4.x, global4.x, 0u), vec4<u32>(71461u, global4.x, 28755u, global4.x)), firstLeadingBit(~vec4<u32>(global4.x, 0u, global4.x, global4.x))) % vec4<u32>(32u)), max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 0u, global4.x ^ 143201u), reverseBits(vec4<u32>(global4.x, 4294967295u, 1u, global4.x)) | ~vec4<u32>(global4.x, global4.x, 1u, global4.x)), select(42188u, global4.x, true) >> (global4.x % 32u)));
    var_0 = Struct_1(any(!vec3<bool>(var_0.a, var_0.a, false)), ~_wgslsmith_sub_i32(1i, u_input.a), vec3<u32>(global4.x, ~1u, max(_wgslsmith_dot_vec2_u32(max(vec2<u32>(54972u, var_0.c.x), var_0.c.xx), abs(global4.wx)), global4.x)), vec4<u32>(reverseBits(4090u), global4.x, _wgslsmith_sub_u32(~var_0.d.x, global4.x), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_0.d, ~vec4<u32>(var_0.c.x, 42553u, 13151u, global4.x)), 17321u)), global4.x);
    return !all(select(select(vec4<bool>(false, true, var_0.a, true), select(vec4<bool>(true, true, var_0.a, var_0.a), vec4<bool>(false, false, var_0.a, true), var_0.a), var_0.a), select(!vec4<bool>(var_0.a, true, false, true), vec4<bool>(true, true, true, true), var_0.a == false), !select(vec4<bool>(var_0.a, var_0.a, true, false), vec4<bool>(var_0.a, false, var_0.a, var_0.a), true)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: i32) -> Struct_3 {
    let var_0 = select(-(~(-(~vec4<i32>(arg_2, global1[_wgslsmith_index_u32(global4.x, 25u)], u_input.a, 38836i)))), -vec4<i32>(~(-58218i) ^ arg_2, 0i, min(u_input.a, u_input.a), 0i), !(!vec4<bool>(func_3(), true, true, func_3())));
    let var_1 = vec2<u32>(47198u, ~global4.x);
    let var_2 = vec2<i32>(_wgslsmith_dot_vec2_i32(global2.ww, min(global2.wz, ~var_0.yy)), ~u_input.a);
    global2 = ~(-var_0);
    let var_3 = Struct_1(~min(global4.x | global4.x, ~var_1.x) <= (~abs(4294967295u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, 1392u, global4.x, var_1.x), vec4<u32>(34977u, var_1.x, var_1.x, var_1.x)) % 32u)), -30059i, vec3<u32>(_wgslsmith_mod_u32(firstLeadingBit(12493u), _wgslsmith_mult_u32(var_1.x, 4294967295u)) ^ 21591u, var_1.x, global4.x), abs(~min(_wgslsmith_div_vec4_u32(vec4<u32>(global4.x, var_1.x, var_1.x, 4294967295u), vec4<u32>(global4.x, global4.x, global4.x, 0u)), firstLeadingBit(vec4<u32>(global4.x, var_1.x, 23941u, 10849u)))), var_1.x);
    return Struct_3(~max(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, -21498i), -global1[_wgslsmith_index_u32(1u, 25u)]), global1[_wgslsmith_index_u32(0u, 25u)]), select(select(select(vec3<bool>(var_3.a, var_3.a, var_3.a), select(vec3<bool>(var_3.a, true, false), vec3<bool>(false, var_3.a, var_3.a), vec3<bool>(false, false, var_3.a)), vec3<bool>(var_3.a, var_3.a, var_3.a)), vec3<bool>(!var_3.a, var_3.a || false, -196f > arg_1.a.x), false), !(!(!vec3<bool>(var_3.a, var_3.a, false))), all(select(!vec2<bool>(true, var_3.a), select(vec2<bool>(var_3.a, true), vec2<bool>(false, false), var_3.a), var_3.a))));
}

fn func_1() -> vec4<bool> {
    global3 = false;
    let var_0 = func_2(global2.zz, Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2141f, 1364f) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1154f, -286f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-717f, 1000f))))))), -28914i);
    let var_1 = Struct_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(457f, _wgslsmith_f_op_f32(round(-293f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-372f, -652f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1949f, -290f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-869f, 571f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(305f, -1598f) + vec2<f32>(-1376f, 896f))))));
    let var_2 = 0u;
    global3 = var_0.b.x;
    return select(select(vec4<bool>(select(any(var_0.b), var_0.b.x, var_0.b.x), var_0.b.x, false, false), vec4<bool>(var_0.b.x || (var_0.b.x && var_0.b.x), any(vec2<bool>(false, false)), firstTrailingBit(4294967295u) > 1u, 21818u >= global4.x), true), !vec4<bool>(!all(vec2<bool>(var_0.b.x, false)), var_0.b.x, true, true), true);
}

fn func_4(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = i32(-1i) * -_wgslsmith_add_i32(0i, global2.x);
    var var_1 = global4.x;
    var_1 = _wgslsmith_clamp_u32(2771u, ~(~global4.x), global4.x);
    let var_2 = Struct_2(413f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 405f, -570f), vec3<f32>(-260f, 1000f, 163f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(560f, -491f, 247f))), vec3<f32>(-380f, _wgslsmith_f_op_f32(sign(-1765f)), 996f)), vec3<f32>(2457f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1708f))), _wgslsmith_f_op_f32(round(1f))), func_1().x)), Struct_1(_wgslsmith_f_op_f32(670f + _wgslsmith_f_op_f32(trunc(-394f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(985f, 320f))), var_0, global4.yzy, vec4<u32>(90763u, global4.x, ~4294967295u, global4.x) | reverseBits(abs(vec4<u32>(global4.x, 14334u, 32147u, global4.x))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~1u, 4294967295u), global4.x, abs(global4.x))));
    var var_3 = Struct_5(var_2.b.yy);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    var var_1 = func_4(select(!vec4<bool>(true, select(true, true, true), any(vec2<bool>(false, true)), false), !(!func_1()), !vec4<bool>(func_1().x, true, global4.x > global4.x, 1i >= u_input.a)));
    let var_2 = var_1.c.b ^ -40408i;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), 1225f));
    let var_4 = Struct_1(true, _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(1u, 25u)], global2.x ^ var_2), min(~global2.x, ~var_1.c.b)), abs(_wgslsmith_add_i32(i32(-1i) * -10515i, -35117i))), _wgslsmith_sub_vec3_u32(var_1.c.d.zyw, _wgslsmith_div_vec3_u32(vec3<u32>(~20067u, _wgslsmith_clamp_u32(4294967295u, 0u, global4.x), ~23235u), global4.yxw)), select(func_4(vec4<bool>(true, true, true, true || var_1.c.a)).c.d, var_1.c.d, (false != !var_1.c.a) || (837f < _wgslsmith_f_op_f32(-var_0))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(reverseBits(22210u), _wgslsmith_dot_vec3_u32(vec3<u32>(11855u, 55308u, var_1.c.d.x), vec3<u32>(var_1.c.c.x, var_1.c.d.x, 4294967295u)) ^ 1u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(~4294967295u, ~var_1.c.e), global4.x)));
    let var_5 = Struct_1(false, -global2.x, _wgslsmith_clamp_vec3_u32(~global4.wwy, vec3<u32>(var_1.c.e, global4.x, var_4.c.x), ~var_4.c), select(select(_wgslsmith_add_vec4_u32(~var_1.c.d, ~vec4<u32>(8168u, var_4.d.x, 1u, var_1.c.d.x)), ~(~var_1.c.d), select(vec4<bool>(var_1.c.a, false, var_1.c.a, var_1.c.a), func_1(), false)), ~var_4.d, vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(var_1.c.a, var_4.a, false), vec3<bool>(var_4.a, true, var_4.a))), func_4(vec4<bool>(var_4.a, true, true, var_1.c.a)).a >= _wgslsmith_f_op_f32(-var_1.b.x), true, false)), _wgslsmith_sub_u32(4294967295u, global4.x << (1u % 32u)));
    var var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-abs(vec2<i32>(u_input.a, 1i)) ^ ~(-vec2<i32>(global1[_wgslsmith_index_u32(var_5.d.x, 25u)], 0i))));
}

