struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(4294967295u, 0u, 55831u), vec3<u32>(26017u, 0u, 1u), vec3<u32>(31495u, 4294967295u, 0u), vec3<u32>(1u, 3495u, 29275u), vec3<u32>(0u, 69019u, 0u), vec3<u32>(0u, 0u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(38666u, 9640u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 1u, 1u), vec3<u32>(1u, 82421u, 0u), vec3<u32>(37791u, 145140u, 86662u), vec3<u32>(33520u, 64055u, 1u), vec3<u32>(0u, 1u, 0u), vec3<u32>(33058u, 0u, 82185u), vec3<u32>(39037u, 4294967295u, 16484u), vec3<u32>(0u, 47550u, 88468u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(32823u, 4294967295u, 0u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(11150u, 1727u, 8254u), vec3<u32>(4294967295u, 48805u, 4294967295u), vec3<u32>(30078u, 1u, 0u), vec3<u32>(47931u, 63097u, 1u), vec3<u32>(0u, 10548u, 7689u), vec3<u32>(4294967295u, 32363u, 4294967295u));

var<private> global1: array<vec3<i32>, 19>;

var<private> global2: Struct_1;

var<private> global3: vec4<i32>;

var<private> global4: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<i32>, 19>();
    var var_0 = Struct_3(Struct_2(max(20655u, ~(~28025u))), ~_wgslsmith_div_u32(select(44059u, u_input.b, false) ^ abs(0u), max(u_input.b & 1u, 36255u | u_input.b)), vec2<u32>(10847u, 2876u), abs(max(global2.c, firstTrailingBit(global2.a) >> (vec4<u32>(u_input.b, 91465u, global2.c.x, 1u) % vec4<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-328f - 980f))), 1350f));
    global1 = array<vec3<i32>, 19>();
    var var_1 = 721f;
    let var_2 = Struct_1(~(~vec4<u32>(u_input.b, 4294967295u, var_0.b, global2.a.x) | global2.a), _wgslsmith_mod_i32(~(~(-16892i)), global2.d.x), vec4<u32>(1u, ~firstLeadingBit(min(1u, u_input.b)), ~(~var_0.a.a), global2.c.x), global3.wy);
    return var_2;
}

fn func_3(arg_0: Struct_1) -> Struct_2 {
    global2 = Struct_1(~vec4<u32>(3057u, 57968u, ~func_2().c.x, countOneBits(arg_0.a.x)), -arg_0.b, ~global2.a, arg_0.d);
    global4 = false;
    global2 = arg_0;
    global3 = firstTrailingBit(vec4<i32>(-1i) * -(vec4<i32>(-22742i, global3.x, global2.d.x, -2147483647i) ^ vec4<i32>(-2147483647i, 21763i, u_input.a, arg_0.d.x)));
    let var_0 = vec2<bool>(true, false);
    return Struct_2(_wgslsmith_div_u32(4294967295u, ~arg_0.c.x));
}

fn func_1(arg_0: bool, arg_1: bool) -> vec2<u32> {
    var var_0 = func_3(func_2());
    let var_1 = Struct_3(Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(33975u, global2.c.x, _wgslsmith_mult_u32(global2.c.x, u_input.b), _wgslsmith_mod_u32(u_input.b, 35759u)), ~global2.c)), 36781u, global2.a.yw, firstLeadingBit(vec4<u32>(u_input.b, ~abs(u_input.b), var_0.a, 4294967295u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(674f + 2878f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f)))))));
    let var_2 = ~4294967295u;
    let var_3 = select(!select(select(vec2<bool>(arg_1, arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, true), arg_0), false), !(!vec2<bool>(true, arg_0)), all(vec2<bool>(arg_1, arg_0))), select(vec2<bool>(true, true), !vec2<bool>(arg_0 || true, !arg_1), vec2<bool>(false || !arg_0, any(!vec2<bool>(arg_1, true)))), !any(vec3<bool>(var_1.e.x != var_1.e.x, true, 27625i != u_input.a)));
    var var_4 = 31563u;
    return abs(~select(abs(var_1.d.xy), ~_wgslsmith_add_vec2_u32(var_1.d.zw, var_1.c), all(vec4<bool>(arg_0, true, true, false))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = select(vec3<bool>(true, select(any(vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(-arg_2.e.x) > 1376f, !(6070u > global2.c.x)), select(true, true, (1u ^ global2.a.x) > func_1(false, false).x)), vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), 20497i < var_0.d.x, _wgslsmith_sub_u32(global2.c.x, _wgslsmith_clamp_u32(32946u, 17040u, arg_1.x)) <= (1u << (abs(0u) % 32u))), vec3<bool>(select(true, any(vec3<bool>(false, true, false)), true), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.e.x))) <= arg_0.x));
    global4 = true;
    return func_3(Struct_1(~abs(_wgslsmith_mod_vec4_u32(global2.a, var_0.c)), _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(39540u, 19u)], global3.xyz), vec4<u32>(func_3(var_0).a << (~1u % 32u), global2.a.x, _wgslsmith_mod_u32(var_0.a.x, 4294967295u) & 4294967295u, arg_1.x >> (0u % 32u)), -firstLeadingBit(vec2<i32>(0i, global3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_mod_vec4_i32(vec4<i32>(43260i, -32041i, countOneBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-52586i, global2.d.x), global2.d), _wgslsmith_div_i32(global2.b, u_input.a))), global3.x), countOneBits(-(~(vec4<i32>(-1i, global2.d.x, u_input.a, global3.x) | vec4<i32>(-2695i, 2147483647i, global2.b, global2.d.x)))));
    var var_0 = Struct_2(~global2.a.x);
    var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -284f, -428f, _wgslsmith_div_f32(-1939f, 718f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1565f, -2032f, -107f, -1262f) + vec4<f32>(477f, 640f, 646f, -563f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(410f, 184f, -199f, -362f)))))), vec3<u32>(reverseBits(6954u), 43721u, 65854u), Struct_3(Struct_2(_wgslsmith_mult_u32(~4294967295u, u_input.b)), ~global2.a.x, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 0u), func_1(true, -17389i <= u_input.a)), ~firstLeadingBit(vec4<u32>(u_input.b, 1u, 5223u, 4619u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(226f, 154f), vec2<f32>(280f, -595f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(896f, 640f)))))));
    let var_1 = Struct_1(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.a, 1u, 1u) ^ global2.c, global2.c) | _wgslsmith_div_vec4_u32(abs(~vec4<u32>(2825u, 1u, u_input.b, 2916u)), vec4<u32>(global2.a.x << (var_0.a % 32u), 4294967295u, select(u_input.b, 4294967295u, true), global2.a.x)), global3.x << (_wgslsmith_mult_u32(var_0.a, _wgslsmith_dot_vec4_u32(~global2.a, vec4<u32>(27040u, 4294967295u, u_input.b, 1u))) % 32u), ~vec4<u32>(var_0.a, 61828u, u_input.b, var_0.a), -vec2<i32>(2147483647i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(10518i, u_input.a, u_input.a, 1i), vec4<i32>(0i, global3.x, u_input.a, u_input.a))));
    global4 = true;
    var var_2 = Struct_2(21368u);
    let var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 11059i, select(u_input.a, var_1.d.x, true)), vec3<i32>(global2.b | firstTrailingBit(20221i), var_1.b, 61169i), ~vec3<i32>(~0i, 46037i, 1i));
    var var_4 = Struct_2(var_1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-442f, -181f, -1241f, 1293f)) - vec4<f32>(-161f, -1008f, 518f, 1820f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(172f, -1165f, 1477f, 504f)))))), select(~select(vec4<i32>(-45823i, u_input.a, 0i, global3.x), reverseBits(vec4<i32>(-2147483647i, -1i, var_1.d.x, 2147483647i)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), true)), -(~(~vec4<i32>(global2.d.x, 1i, global2.d.x, var_3.x))), true), vec2<i32>(~0i, var_1.d.x));
}

