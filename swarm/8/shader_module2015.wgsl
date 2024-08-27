struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: bool,
    d: vec2<u32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(53734u, 28700u, 15299u), vec3<u32>(0u, 1u, 7835u), vec3<u32>(73907u, 4294967295u, 44337u), vec3<u32>(68098u, 0u, 0u), vec3<u32>(4294967295u, 5949u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(1u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 32332u), vec3<u32>(47860u, 45670u, 4294967295u), vec3<u32>(31450u, 76647u, 9378u), vec3<u32>(62895u, 4294967295u, 0u), vec3<u32>(60552u, 33839u, 4147u), vec3<u32>(1u, 48333u, 29988u), vec3<u32>(47546u, 88971u, 4294967295u), vec3<u32>(3854u, 112184u, 10984u), vec3<u32>(0u, 69411u, 17212u), vec3<u32>(33785u, 39182u, 1u), vec3<u32>(4294967295u, 1u, 121711u), vec3<u32>(1u, 57008u, 26922u), vec3<u32>(23067u, 4294967295u, 0u), vec3<u32>(33138u, 20302u, 1u), vec3<u32>(5499u, 4294967295u, 16055u));

var<private> global1: Struct_4 = Struct_4(Struct_3(Struct_2(4294967295u, 24419u, true, vec2<u32>(0u, 7206u), 61149u), 1i, vec2<u32>(35926u, 1u)));

var<private> global2: array<Struct_2, 12>;

var<private> global3: Struct_3 = Struct_3(Struct_2(0u, 1u, true, vec2<u32>(0u, 0u), 4294967295u), 3070i, vec2<u32>(40433u, 60522u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> bool {
    return false;
}

fn func_3(arg_0: f32, arg_1: bool) -> i32 {
    let var_0 = Struct_4(Struct_3(Struct_2(global3.c.x, _wgslsmith_add_u32(global3.a.d.x, 1u >> (u_input.a.x % 32u)), all(vec4<bool>(false, false, global1.a.a.c, arg_1)), abs(u_input.a), global3.a.d.x), u_input.b, (~vec2<u32>(global3.c.x, global1.a.a.b) ^ vec2<u32>(global1.a.c.x, global3.a.e)) | vec2<u32>(u_input.a.x, 25316u)));
    global1 = var_0;
    let var_1 = -_wgslsmith_mod_i32(-(i32(-1i) * -global3.b), ~firstTrailingBit(0i));
    global1 = Struct_4(var_0.a);
    let var_2 = !(!(!global1.a.a.c));
    return _wgslsmith_clamp_i32(max(-_wgslsmith_mod_i32(global3.b & var_1, 1i), _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -15973i), u_input.d.zx), select(1i, 4793i, select(var_0.a.a.c, var_0.a.a.c, arg_1)))), -(firstTrailingBit(_wgslsmith_sub_i32(var_1, var_1)) << (~12169u % 32u)), 3965i);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: f32) -> vec2<bool> {
    let var_0 = global1.a;
    global1 = Struct_4(Struct_3(var_0.a, func_3(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_div_f32(arg_1, -1074f)), global1.a.a.c), ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 22006u) >> (var_0.c % vec2<u32>(32u)), global3.c >> (global3.c % vec2<u32>(32u)))));
    global2 = array<Struct_2, 12>();
    var var_1 = _wgslsmith_add_vec2_u32(global3.c, vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(global1.a.a.b, 22u)], vec3<u32>(var_0.c.x, 8098u, 1u)) | ~global1.a.a.e, var_0.c.x, ~_wgslsmith_div_u32(u_input.a.x, global1.a.a.a)), global3.c.x));
    let var_2 = global2[_wgslsmith_index_u32(~(~73510u), 12u)];
    return select(vec2<bool>(var_0.b > global1.a.b, false), !select(!vec2<bool>(var_0.a.c, true), vec2<bool>(true, all(vec2<bool>(global3.a.c, var_0.a.c))), !func_1(1242f, vec3<f32>(1091f, -686f, arg_1))), select(select(vec2<bool>(var_2.c | var_2.c, false), vec2<bool>(true, true), !vec2<bool>(var_2.c, false)), vec2<bool>(true, global1.a.a.c || global3.a.c), var_0.a.c & any(vec2<bool>(var_0.a.c, true))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = !(!global1.a.a.c);
    var var_1 = Struct_1(_wgslsmith_clamp_u32(select(u_input.a.x, _wgslsmith_clamp_u32(0u, 12466u, global1.a.a.e), global3.a.c), global3.a.b, ~((global1.a.c.x << (global1.a.a.b % 32u)) ^ _wgslsmith_mult_u32(0u, global1.a.c.x))), select(select(!select(vec4<bool>(true, true, true, true), arg_0, arg_0), arg_0, arg_0.x), !vec4<bool>(any(arg_0.wzw), true, u_input.a.x < global1.a.a.a, true), all(arg_0.zxy) || (~20851u >= _wgslsmith_mult_u32(u_input.a.x, u_input.a.x))), countOneBits(-firstTrailingBit(-global3.b)), vec4<f32>(_wgslsmith_f_op_f32(385f - -772f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(819f, 268f))) * -1334f), _wgslsmith_div_f32(-563f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -993f))), 1f), any(arg_0.yzw));
    let var_2 = !(!select(select(vec2<bool>(false, true), func_2(global3.b, var_1.d.x, -957f), vec2<bool>(false, true)), var_1.b.xw, global3.a.c));
    let var_3 = select(_wgslsmith_clamp_i32(1i, var_1.c, firstTrailingBit(-2147483647i)), 0i, arg_1.x);
    let var_4 = min(_wgslsmith_mult_u32(var_1.a, 0u), global1.a.a.a);
    return Struct_3(Struct_2(~5003u, max(1u, ~0u), func_1(_wgslsmith_f_op_f32(abs(var_1.d.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(824f, 675f, 1272f) * var_1.d.wxw))), u_input.a & vec2<u32>(0u, _wgslsmith_sub_u32(global3.a.a, var_1.a)), var_4), -(-var_1.c << (27548u % 32u)), ~countOneBits(countOneBits(vec2<u32>(var_4, 51982u))));
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))));
    var var_1 = arg_2.a;
    global3 = global1.a;
    var var_2 = min(-11379i, -(~global1.a.b)) >> (max(1u, ~0u) % 32u);
    var var_3 = u_input.d.zy;
    return Struct_1(~0u, vec4<bool>(!(var_1.c.x <= ~var_1.a.e), !global1.a.a.c, _wgslsmith_div_f32(290f, _wgslsmith_f_op_f32(f32(-1f) * -478f)) < arg_1.x, var_1.a.c), select(~arg_2.a.b, countOneBits(_wgslsmith_clamp_i32(-2147483647i, var_1.b, _wgslsmith_mult_i32(-140i, -22167i))), !arg_2.a.a.c), arg_1, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_3(Struct_2(u_input.a.x, ~(54947u << (global1.a.a.b % 32u)), true, vec2<u32>(~12921u, u_input.a.x), ~global1.a.c.x), abs(~(global3.b >> (5923u % 32u))), _wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.a.x, global3.c.x) & vec2<u32>(u_input.a.x, 44738u), vec2<u32>(53617u, 4294967295u), select(vec2<bool>(global3.a.c, global3.a.c), vec2<bool>(global3.a.c, true), false)), global3.c)));
    var var_1 = ~abs(u_input.d);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(160f, -120f, -346f), vec3<f32>(-1231f, -1009f, 1052f))))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-324f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1114f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2666f - -1607f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-731f, 1000f, -251f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-588f, 1515f, -344f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(395f, -272f, -422f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-212f, 1952f, -573f) + vec3<f32>(617f, -573f, 424f))))));
    global3 = global1.a;
    var var_3 = func_5(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, -1992f)))), _wgslsmith_f_op_vec3_f32(max(var_2, vec3<f32>(-837f, 1079f, var_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(204f, 1000f, var_2.x, var_2.x), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1047f, 1000f, 1610f), vec4<f32>(-763f, var_2.x, var_2.x, -495f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, var_2.x, var_2.x, -360f), vec4<f32>(var_2.x, var_2.x, 1888f, var_2.x)))), false))), Struct_4(func_4(select(vec4<bool>(global1.a.a.c, var_0.a.a.c, global3.a.c, global1.a.a.c), vec4<bool>(var_0.a.a.c, global3.a.c, global3.a.c, global3.a.c), true), select(vec2<bool>(global3.a.c, global3.a.c), select(vec2<bool>(global1.a.a.c, global1.a.a.c), vec2<bool>(true, true), vec2<bool>(var_0.a.a.c, false)), vec2<bool>(true, global1.a.a.c)), all(vec2<bool>(true, false)), func_2(var_1.x | -39606i, -2470f, 228f))));
    let var_4 = !vec3<bool>(!all(var_3.b), !var_0.a.a.c, false);
    let var_5 = firstTrailingBit(min(firstLeadingBit(var_1.x << (~0u % 32u)), global1.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.d, u_input.d), u_input.d), vec2<f32>(-1298f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.d.x - 574f))))));
}

