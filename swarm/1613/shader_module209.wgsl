struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(8471u, 23466u);

var<private> global1: f32 = 527f;

var<private> global2: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(-17148i, 1i), vec2<i32>(-4350i, 17111i), vec2<i32>(-26105i, 4708i), vec2<i32>(1i, 56761i), vec2<i32>(22765i, -82075i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, 2147483647i), vec2<i32>(40916i, i32(-2147483648)), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(2147483647i, 71i), vec2<i32>(-45052i, 35791i), vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, 5591i), vec2<i32>(-1i, 1i), vec2<i32>(-38585i, i32(-2147483648)), vec2<i32>(-28097i, -21427i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(46366i, -13699i), vec2<i32>(0i, -1i), vec2<i32>(0i, 1i), vec2<i32>(1i, 29237i), vec2<i32>(i32(-2147483648), 37478i), vec2<i32>(2147483647i, -1240i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, 1i), vec2<i32>(-49237i, 16641i), vec2<i32>(1i, 2147483647i), vec2<i32>(-32169i, 1i));

var<private> global3: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(2147483647i, -24586i, 2147483647i, 1866i), vec4<i32>(-37744i, 2147483647i, i32(-2147483648), 22780i), vec4<i32>(-4576i, -1i, i32(-2147483648), 0i), vec4<i32>(-926i, -14618i, 15872i, i32(-2147483648)), vec4<i32>(0i, 40841i, 51960i, -41661i), vec4<i32>(i32(-2147483648), -6524i, 37400i, 0i), vec4<i32>(13954i, -27344i, -51838i, -1i), vec4<i32>(0i, -1i, -22135i, -1i), vec4<i32>(-1i, -40953i, i32(-2147483648), -5730i), vec4<i32>(i32(-2147483648), 31290i, -1i, i32(-2147483648)), vec4<i32>(2147483647i, i32(-2147483648), 38657i, 2147483647i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_3) -> u32 {
    global0 = arg_3.a.zz;
    global3 = array<vec4<i32>, 11>();
    let var_0 = Struct_4(~4294967295u, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_0.x, arg_0.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))), 53485u));
    global3 = array<vec4<i32>, 11>();
    let var_1 = (1i >> (~arg_3.b % 32u)) <= ~9431i;
    return 4294967295u ^ global0.x;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: u32, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_3);
    var_0 = 1598f;
    var var_1 = Struct_2(vec3<i32>(u_input.a.x, -1i, abs(0i)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(943f, -1251f, 1000f), vec3<f32>(3180f, arg_3, -2048f)), vec3<f32>(-812f, arg_3, 1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_3, arg_3)))), global0.x), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_3, -1000f, 572f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_3, arg_3)))), abs(~func_3(vec3<f32>(1676f, 406f, 125f), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), 2458f, Struct_3(vec4<u32>(arg_0, 34140u, 4294967295u, 686u), global0.x)))));
    var_0 = 918f;
    return Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(var_1.c.a, vec3<f32>(arg_3, -123f, -1740f))))), _wgslsmith_f_op_vec3_f32(var_1.c.a + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1271f, var_1.c.a.x, 1549f) * vec3<f32>(1401f, 394f, 226f))))), select(false, any(vec4<bool>(true, true, false, false)), true))), func_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(var_1.c.a, vec3<f32>(var_1.c.a.x, 529f, arg_3), vec3<bool>(true, false, true))))))), var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(114f, -357f, false)))), Struct_3(vec4<u32>(countOneBits(4294967295u), 29111u, arg_0 << (1u % 32u), arg_0), var_1.b.b)));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: Struct_2) -> f32 {
    global1 = _wgslsmith_f_op_f32(sign(-847f));
    var var_0 = arg_1.xz;
    var var_1 = arg_1.yz;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2.x)), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(arg_2.x + arg_2.x)));
    let var_3 = -1293f;
    return arg_2.x;
}

fn func_1() -> Struct_3 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-249f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -635f, true))))))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-896f - _wgslsmith_f_op_f32(step(-2020f, 400f)))))));
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(~_wgslsmith_add_i32(-8629i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), ~max(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 1u, global0.x, 1u), vec4<u32>(4294967295u, 26530u, global0.x, global0.x)), vec4<u32>(global0.x, global0.x, 1u, 4294967295u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -312f)), Struct_2(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 700i, 23099i), vec3<i32>(u_input.a.x, -1i, -1i)), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 990f, -323f) + vec3<f32>(var_0.x, var_0.x, 1897f)), 4294967295u), func_2(1u | global0.x, _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -35285i, -35213i, -5103i), global3[_wgslsmith_index_u32(global0.x, 11u)]), global0.x, _wgslsmith_div_f32(-1000f, var_0.x))))), 778f));
    let var_1 = select(firstTrailingBit(_wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, global0.x)) >> (65829u % 32u), 11u)], (vec4<i32>(u_input.a.x, 11085i, u_input.a.x, -49840i) << (vec4<u32>(34356u, global0.x, global0.x, global0.x) % vec4<u32>(32u))) << (~vec4<u32>(global0.x, global0.x, 4294967295u, global0.x) % vec4<u32>(32u)))), _wgslsmith_mult_i32(u_input.a.x, -29071i), !any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))));
    return Struct_3(_wgslsmith_div_vec4_u32((firstTrailingBit(vec4<u32>(97248u, global0.x, global0.x, global0.x)) >> (vec4<u32>(global0.x, global0.x, global0.x, 4294967295u) % vec4<u32>(32u))) << ((_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 81043u, 67497u, global0.x), vec4<u32>(1u, 59323u, 1u, 4294967295u)) ^ vec4<u32>(32333u, global0.x, 352u, 105088u)) % vec4<u32>(32u)), vec4<u32>(global0.x, global0.x, 9768u, 4294967295u)), ~_wgslsmith_mod_u32(global0.x, 4294967295u));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> Struct_2 {
    let var_0 = func_1();
    global0 = vec2<u32>(_wgslsmith_sub_u32(65118u, ~var_0.a.x), 61094u);
    global3 = array<vec4<i32>, 11>();
    var var_1 = global0.x;
    var var_2 = func_2(arg_1.a.x, -vec4<i32>(~(~0i), -u_input.a.x, countOneBits(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, -1069i), vec3<i32>(-55495i, u_input.a.x, u_input.a.x))), ~max(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_1.b, arg_0.a, var_0.b)), ~arg_1.a.wzw), arg_0.a), 1f);
    return Struct_2(_wgslsmith_mult_vec3_i32(select(~vec3<i32>(-21939i, 29856i, u_input.a.x), ~vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))) >> (vec3<u32>(~1u, abs(global0.x), 5062u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(min(vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec3<i32>(1i, u_input.a.x, 1i)), vec3<i32>(1i, -46992i, -257i) << (var_0.a.wxy % vec3<u32>(32u)), -abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), func_2(var_0.a.x, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(11617u, 11u)], vec4<i32>(u_input.a.x, u_input.a.x, 9450i, u_input.a.x)), u_input.a.x, -1i, u_input.a.x), _wgslsmith_mult_vec4_i32(select(global3[_wgslsmith_index_u32(arg_1.a.x, 11u)], vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(false, true, true, true)), vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x))), 1u, arg_0.b.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(var_2.a, arg_0.b.a, false)), vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x)))), _wgslsmith_sub_u32(~79159u >> (~var_0.b % 32u), var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_4(global0.x, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(123f, 505f, 394f)), global0.x)), func_1());
    var_0 = Struct_2(firstLeadingBit(var_0.a), func_2(_wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, 1u), vec2<u32>(1u, 48342u)), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.c.b, 1u), vec2<u32>(var_0.c.b, 15898u)), ~vec2<u32>(global0.x, var_0.c.b))), vec4<i32>(-52880i, -66815i, _wgslsmith_add_i32(-1i, u_input.a.x), -1i), ~(~(~var_0.c.b)), _wgslsmith_f_op_f32(max(-485f, _wgslsmith_f_op_f32(-var_0.c.a.x)))), var_0.b);
    let var_1 = var_0.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.a.x))), _wgslsmith_f_op_f32(-858f + var_1.a.x), -846f)));
    var var_3 = 158f;
    var var_4 = var_0.c;
    var var_5 = Struct_4(firstLeadingBit(var_0.b.b), var_0.b);
    var var_6 = func_5(Struct_4(~abs(0u), var_5.b), Struct_3(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.c.b, 9699u, 22033u, 8561u), vec4<u32>(global0.x, 6226u, var_0.c.b, 1u)) | firstLeadingBit(vec4<u32>(var_1.b, global0.x, var_1.b, 31060u))), 25822u));
    var var_7 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-1269f + var_5.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1653f), _wgslsmith_f_op_f32(-var_5.b.a.x), var_0.b.a.x), var_6.a, _wgslsmith_mult_vec2_u32(~vec2<u32>(~0u, 42363u & var_4.b), ~vec2<u32>(1908u, 4294967295u)), vec4<u32>(global0.x, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_5.a, var_0.b.b, global0.x)), ~(vec3<u32>(var_4.b, var_5.b.b, 0u) | vec3<u32>(var_1.b, 82479u, var_6.c.b))), var_0.b.b ^ ~(~4294967295u), ~0u));
}

