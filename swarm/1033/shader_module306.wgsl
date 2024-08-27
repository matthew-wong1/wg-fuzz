struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 30>;

var<private> global1: array<vec4<bool>, 32>;

var<private> global2: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(0u, 34603u, 19491u, 109329u), vec4<u32>(49201u, 24936u, 4294967295u, 8325u), vec4<u32>(39786u, 1u, 4294967295u, 1u), vec4<u32>(1u, 26994u, 1u, 4294967295u), vec4<u32>(1196u, 43412u, 1u, 3825u), vec4<u32>(1u, 1u, 46931u, 0u), vec4<u32>(1u, 62038u, 74568u, 1u), vec4<u32>(0u, 4294967295u, 95681u, 0u), vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(66688u, 4294967295u, 0u, 1u), vec4<u32>(38996u, 0u, 45102u, 1u), vec4<u32>(44251u, 58752u, 29411u, 1446u), vec4<u32>(4294967295u, 65995u, 82733u, 61280u), vec4<u32>(48358u, 0u, 0u, 1u), vec4<u32>(1u, 46088u, 58104u, 0u), vec4<u32>(0u, 31647u, 35905u, 1u), vec4<u32>(1u, 50247u, 79926u, 4294967295u), vec4<u32>(31687u, 2812u, 4294967295u, 21952u), vec4<u32>(11232u, 51919u, 0u, 4294967295u), vec4<u32>(18152u, 5835u, 0u, 812u), vec4<u32>(26706u, 1u, 4294967295u, 1u), vec4<u32>(12596u, 1u, 0u, 63130u), vec4<u32>(19615u, 4294967295u, 4294967295u, 645u), vec4<u32>(0u, 4294967295u, 49039u, 0u), vec4<u32>(0u, 1u, 20238u, 34961u), vec4<u32>(0u, 1u, 32369u, 4294967295u), vec4<u32>(46867u, 1u, 2652u, 0u), vec4<u32>(4294967295u, 4294967295u, 22862u, 1u), vec4<u32>(4294967295u, 1u, 0u, 8183u), vec4<u32>(20786u, 34917u, 1u, 44193u), vec4<u32>(4294967295u, 9525u, 29677u, 4294967295u), vec4<u32>(6114u, 80404u, 14630u, 47625u));

var<private> global3: array<vec3<f32>, 17>;

var<private> global4: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-58028i, 5465i, -42324i), vec3<i32>(11362i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-1i, -50247i, -7987i), vec3<i32>(i32(-2147483648), -90360i, 1i), vec3<i32>(-23296i, 1i, 1i), vec3<i32>(2147483647i, -26070i, -1i), vec3<i32>(-1i, 4343i, 14766i), vec3<i32>(-28622i, 32249i, 1i), vec3<i32>(3144i, 41074i, 1i), vec3<i32>(-53524i, -41275i, 29693i), vec3<i32>(47280i, 1i, 1685i), vec3<i32>(0i, 0i, -1i), vec3<i32>(46408i, -61054i, -1i), vec3<i32>(0i, i32(-2147483648), 0i), vec3<i32>(-1i, 61542i, 1i), vec3<i32>(-1i, 1i, 5695i), vec3<i32>(2147483647i, 3249i, 2147483647i), vec3<i32>(-1i, 0i, 1i), vec3<i32>(53014i, 2147483647i, 0i), vec3<i32>(-19924i, -3462i, 1i), vec3<i32>(-15494i, 2147483647i, 0i), vec3<i32>(-24325i, -54730i, 1i), vec3<i32>(1i, -31745i, 2147483647i), vec3<i32>(19508i, -43461i, 2147483647i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> i32 {
    global3 = array<vec3<f32>, 17>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-773f, 135f), -637f));
    global2 = array<vec4<u32>, 32>();
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(max(_wgslsmith_div_i32(u_input.a.x, -48120i), _wgslsmith_sub_i32(2147483647i, u_input.a.x)), -2147483647i), u_input.a.x, -25495i), u_input.a.x);
    global4 = array<vec3<i32>, 26>();
    return u_input.a.x;
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1) -> bool {
    var var_0 = Struct_2(-1083f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-398f, 1873f)), _wgslsmith_f_op_f32(f32(-1f) * -246f)) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1000f) * vec2<f32>(-223f, -857f))))) * vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1215f)), _wgslsmith_div_f32(1609f, 803f))), _wgslsmith_f_op_f32(f32(-1f) * -1815f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(487f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-360f - -265f) * _wgslsmith_f_op_f32(min(843f, -253f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-453f, -1000f, arg_1.d)))), 1750f)) + _wgslsmith_f_op_f32(f32(-1f) * -246f)));
    var var_1 = -1186f;
    var var_2 = Struct_4(select(select(!vec3<bool>(arg_1.d, false, false), select(!vec3<bool>(true, arg_1.d, arg_1.d), !vec3<bool>(arg_1.d, false, arg_1.d), arg_1.d), false), vec3<bool>(!arg_1.d, (arg_1.d | true) || false, (u_input.b.x & u_input.b.x) > 1u), select(!(!vec3<bool>(false, arg_1.d, arg_1.d)), !select(vec3<bool>(arg_1.d, arg_1.d, arg_1.d), vec3<bool>(arg_1.d, arg_1.d, true), arg_1.d), any(vec4<bool>(true, true, arg_1.d, arg_1.d)))), u_input.a.ww, Struct_1(_wgslsmith_sub_vec2_i32(max(-u_input.a.zx, ~u_input.a.xw), arg_1.a), arg_0.b, _wgslsmith_add_u32(arg_1.c, 58833u ^ arg_0.c), (~arg_1.b >> (_wgslsmith_mult_u32(54236u, 36428u) % 32u)) <= 4294967295u, max(countOneBits(vec4<i32>(arg_1.a.x, -49982i, u_input.a.x, 0i)), vec4<i32>(arg_0.a, u_input.a.x, arg_0.a, -211i)) << (~global2[_wgslsmith_index_u32(firstLeadingBit(arg_1.b), 32u)] % vec4<u32>(32u))));
    global1 = array<vec4<bool>, 32>();
    var var_3 = arg_0;
    return arg_1.d;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec2<f32>) -> Struct_4 {
    var var_0 = true;
    let var_1 = select(select(vec4<bool>(false, true, !(u_input.a.x != u_input.a.x), all(vec3<bool>(true, true, true))), !select(!global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(~arg_0, 30u)], select(global0[_wgslsmith_index_u32(13053u, 30u)], vec4<bool>(true, false, true, true), true)), vec4<bool>(all(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, 72010u), 32u)]), true, func_3(Struct_5(2147483647i, 4294967295u, 66824u), Struct_1(vec2<i32>(34375i, u_input.a.x), 4294967295u, u_input.b.x, false, u_input.a)), !any(vec4<bool>(true, false, false, true)))), global0[_wgslsmith_index_u32(4294967295u & _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b.x, 0u)), abs(countOneBits(vec2<u32>(arg_0, arg_0)))), 30u)], vec4<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false))), all(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, true, true)) && false, all(vec3<bool>(true, true, true))));
    global0 = array<vec4<bool>, 30>();
    var var_2 = !var_1.zwx;
    global4 = array<vec3<i32>, 26>();
    return Struct_4(select(select(var_1.zzx, var_1.yyw, var_2.x), vec3<bool>(false, true, var_1.x), func_3(Struct_5(max(-1i, -2147483647i), firstLeadingBit(25104u), abs(0u)), Struct_1(select(u_input.a.xy, vec2<i32>(u_input.a.x, u_input.a.x), var_2.yz), 42771u, 29714u >> (0u % 32u), var_1.x | true, firstTrailingBit(vec4<i32>(-2760i, 1i, 33920i, u_input.a.x))))), -_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 40003i), -1i), ~firstLeadingBit(vec2<i32>(-8601i, u_input.a.x))), Struct_1(u_input.a.yx, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(10928u, 32357u), u_input.b.yx), u_input.b.yy), _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(1u, u_input.b.x))), 17815u, var_1.x, -_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a), vec4<i32>(u_input.a.x, u_input.a.x, -3472i, u_input.a.x))));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec4<bool>) -> bool {
    let var_0 = arg_1.c;
    global3 = array<vec3<f32>, 17>();
    global3 = array<vec3<f32>, 17>();
    global4 = array<vec3<i32>, 26>();
    var var_1 = ~(~u_input.a);
    return select(false, all(arg_2.xxw), arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<i32>, 26>();
    var var_0 = Struct_1(u_input.a.zw, 19431u, u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1497f * -1000f) + _wgslsmith_f_op_f32(ceil(-384f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1349f) + _wgslsmith_f_op_f32(sign(756f)))) >= 1f, ~_wgslsmith_mod_vec4_i32(u_input.a, -u_input.a));
    global1 = array<vec4<bool>, 32>();
    var var_1 = select(vec3<bool>((0i != func_1()) && true, all(vec2<bool>(true, true)), true), vec3<bool>(true || var_0.d, !func_4(true, func_2(var_0.c, 1000f, vec2<f32>(1127f, -612f)), !global1[_wgslsmith_index_u32(1u, 32u)]), false), vec3<bool>(false, any(select(vec2<bool>(true, var_0.d), vec2<bool>(var_0.d, true), vec2<bool>(var_0.d, var_0.d))) & true, false));
    var var_2 = ~u_input.b.x;
    global0 = array<vec4<bool>, 30>();
    global0 = array<vec4<bool>, 30>();
    var var_3 = !(!(!select(select(vec3<bool>(false, var_0.d, true), vec3<bool>(var_1.x, true, var_1.x), var_1.x), vec3<bool>(true, false, false), !var_1.x)));
    global3 = array<vec3<f32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~(~(var_0.e.x | var_0.a.x)), var_0.a.x), -2147483647i, -_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, -2147483647i, 73872i)), abs(var_0.e.zyz), u_input.a.xzx) & (reverseBits(firstLeadingBit(vec3<i32>(var_0.a.x, 2147483647i, var_0.a.x))) >> (~u_input.b % vec3<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-941f)), _wgslsmith_f_op_f32(select(-715f, _wgslsmith_f_op_f32(sign(-176f)), !var_1.x)))), 197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1720f + -1441f), _wgslsmith_f_op_f32(max(-1760f, -518f)), !var_1.x)))), vec3<u32>(u_input.b.x, abs(_wgslsmith_sub_u32(firstTrailingBit(var_0.b), max(0u, 5532u))), 1u ^ ~var_0.c));
}

