struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(-26735i, 61036i, -1i, -21686i), vec4<i32>(63069i, -1i, -36258i, 0i), vec4<i32>(1i, 12271i, 36220i, 11334i), vec4<i32>(1i, -1i, -1i, -1i), vec4<i32>(-1i, 2147483647i, -27707i, -372i), vec4<i32>(12095i, 2147483647i, 3617i, -1i), vec4<i32>(-24316i, 12812i, 51851i, -12648i), vec4<i32>(-18520i, i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(2147483647i, -1i, 0i, 1i), vec4<i32>(1i, -1i, 1i, i32(-2147483648)), vec4<i32>(32096i, i32(-2147483648), -15578i, 0i), vec4<i32>(-35814i, 0i, 7787i, -28421i), vec4<i32>(0i, -32798i, 0i, 0i), vec4<i32>(47721i, 19968i, 77687i, 18696i), vec4<i32>(43119i, i32(-2147483648), 92983i, -1i), vec4<i32>(-1i, 2147483647i, 12029i, 31501i), vec4<i32>(-6810i, 16737i, -2358i, -22506i), vec4<i32>(i32(-2147483648), i32(-2147483648), -16940i, 0i), vec4<i32>(304i, i32(-2147483648), 23641i, 17214i), vec4<i32>(6890i, -483i, i32(-2147483648), 2147483647i), vec4<i32>(0i, -1i, 36792i, 0i), vec4<i32>(-1i, 16068i, 13351i, -3901i), vec4<i32>(0i, -1i, i32(-2147483648), 0i), vec4<i32>(i32(-2147483648), 1i, -31365i, 2147483647i), vec4<i32>(10156i, -1i, -1i, 7645i), vec4<i32>(i32(-2147483648), 1i, 0i, 49305i), vec4<i32>(-35861i, 62356i, 1i, -39320i));

var<private> global1: array<Struct_1, 18>;

var<private> global2: Struct_3 = Struct_3(vec4<f32>(-1537f, 878f, 891f, 1000f));

var<private> global3: array<i32, 27> = array<i32, 27>(75608i, 1i, 0i, i32(-2147483648), i32(-2147483648), -1i, -1i, 12503i, 0i, 12190i, 1i, -32819i, 0i, 17502i, 391i, 11931i, -25601i, -47528i, -1627i, 36458i, 2147483647i, -1i, i32(-2147483648), 16979i, 0i, -1i, -1i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global2.a.yzw, global2.a.xzy), global2.a.yyz, vec3<bool>(false, false, false))) + global2.a.zww))) + vec3<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x * global2.a.x)))));
    global1 = array<Struct_1, 18>();
    let var_1 = Struct_1(_wgslsmith_div_vec3_i32(abs(vec3<i32>(_wgslsmith_div_i32(2147483647i, global3[_wgslsmith_index_u32(1u, 27u)]), 1i, 1i)), vec3<i32>(_wgslsmith_sub_i32(i32(-1i) * -30868i, 69558i), _wgslsmith_mult_i32(u_input.d.x, -2147483647i), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.b, 27u)], -1i) >> ((1484u << (u_input.c % 32u)) % 32u))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.a.xxz + vec3<f32>(237f, 255f, -188f)) - _wgslsmith_f_op_vec3_f32(global2.a.zwz - global2.a.wzw)))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(round(global2.a.x)), _wgslsmith_f_op_f32(-796f * 1000f))))));
    var var_2 = Struct_1(_wgslsmith_sub_vec3_i32(max(min(var_1.a | arg_0.a, arg_0.a), u_input.d), vec3<i32>(~0i, -arg_0.a.x, firstTrailingBit(min(var_1.a.x, global3[_wgslsmith_index_u32(29802u, 27u)])))));
    return countOneBits(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 81694u) << (vec2<u32>(9549u, 1u) % vec2<u32>(32u)), vec2<u32>(u_input.c, u_input.a)) | u_input.a, _wgslsmith_sub_u32(u_input.b, 1u), ~(~(~u_input.a))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = func_3(arg_1);
    global0 = array<vec4<i32>, 27>();
    var var_1 = select(select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), arg_0.x == var_0.x), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, select(true, false, true), all(vec2<bool>(true, false))), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(false, true, false), global3[_wgslsmith_index_u32(arg_0.x, 27u)] != u_input.d.x), true)), !vec3<bool>(any(vec4<bool>(false, true, false, false)), true, ~var_0.x != select(79987u, 0u, false)), vec3<bool>(true, true, true));
    global2 = Struct_3(global2.a);
    var_1 = select(select(vec3<bool>(var_1.x, true && !var_1.x, true), vec3<bool>(!select(false, false, true), true, 1271i == u_input.d.x), vec3<bool>(var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.x, 4294967295u), vec3<u32>(var_0.x, var_0.x, 1u)) <= 4294967295u, true || (var_1.x | true))), !vec3<bool>(!var_1.x, any(select(vec3<bool>(false, var_1.x, true), vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, false, false))), var_1.x), vec3<bool>(any(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, false, var_1.x, false), 1u < arg_0.x)), true, var_1.x));
    return _wgslsmith_f_op_f32(-global2.a.x);
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global2.a.x)))) + 1360f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-545f, global2.a.x))) * _wgslsmith_f_op_f32(func_2(~vec2<u32>(u_input.a, u_input.b), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.c), abs(vec2<u32>(1u, u_input.b))), 18u)]))));
    var var_1 = !(!select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), vec3<bool>(true, true, var_0 >= global2.a.x)));
    let var_2 = true;
    global0 = array<vec4<i32>, 27>();
    global1 = array<Struct_1, 18>();
    return StorageBuffer(-vec2<i32>(~2147483647i, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(29424u, u_input.b), 27u)]), ~_wgslsmith_mult_vec4_u32(select(vec4<u32>(51193u, 13298u, 0u, u_input.b) | vec4<u32>(u_input.c, u_input.c, 0u, u_input.c), vec4<u32>(3318u, 99909u, u_input.b, u_input.b), all(vec3<bool>(var_2, var_2, true))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.c, u_input.a), vec4<u32>(u_input.c, 17692u, 37846u, u_input.a), vec4<u32>(u_input.a, u_input.a, 33487u, 1u)) >> (select(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec4<u32>(43051u, 0u, u_input.b, 4294967295u), vec4<bool>(true, var_1.x, false, var_2)) % vec4<u32>(32u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, ~u_input.b, abs(u_input.b), _wgslsmith_clamp_u32(43691u, 1u, 28897u)), abs(vec4<u32>(~u_input.c, _wgslsmith_add_u32(u_input.b, u_input.a), ~100229u, u_input.a))), u_input.c ^ max(u_input.b, u_input.a), ~19903u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(u_input.a, 18u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-560f, global2.a.x)) + -361f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1657f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(152f - global2.a.x) + -1000f))), _wgslsmith_add_i32(_wgslsmith_mod_i32(18163i, _wgslsmith_mult_i32(u_input.d.x, global3[_wgslsmith_index_u32(12067u, 27u)]) & (global3[_wgslsmith_index_u32(u_input.b, 27u)] >> (90605u % 32u))), global3[_wgslsmith_index_u32(u_input.a, 27u)]));
    global3 = array<i32, 27>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(463f, -696f, var_0.c, 534f))) - _wgslsmith_f_op_vec4_f32(-global2.a))))));
    var var_2 = 944f;
    let var_3 = ~vec3<u32>(u_input.b, 0u, u_input.a);
    let var_4 = any(vec3<bool>(true, !any(vec2<bool>(true, true)), true));
    let x = u_input.a;
    s_output = func_1();
}

