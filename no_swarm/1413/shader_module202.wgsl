struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(Struct_3(Struct_1(true, 368f), vec3<bool>(true, true, false), false, vec4<u32>(34201u, 0u, 0u, 1u)), vec3<u32>(33774u, 0u, 0u), 4294967295u, 156f, vec3<bool>(false, true, false)), Struct_4(Struct_3(Struct_1(true, 773f), vec3<bool>(false, false, true), false, vec4<u32>(25182u, 73345u, 37958u, 0u)), vec3<u32>(155797u, 0u, 0u), 1u, 1082f, vec3<bool>(false, false, false)), Struct_4(Struct_3(Struct_1(false, 1350f), vec3<bool>(true, true, true), false, vec4<u32>(4294967295u, 4294967295u, 0u, 0u)), vec3<u32>(4294967295u, 46695u, 29265u), 4294967295u, 1945f, vec3<bool>(false, false, false)), Struct_4(Struct_3(Struct_1(true, -829f), vec3<bool>(false, true, false), false, vec4<u32>(47559u, 16708u, 1u, 57335u)), vec3<u32>(0u, 4294967295u, 0u), 22247u, 215f, vec3<bool>(true, true, true)), Struct_4(Struct_3(Struct_1(false, 1278f), vec3<bool>(false, false, false), true, vec4<u32>(0u, 0u, 1u, 3634u)), vec3<u32>(38159u, 4294967295u, 50726u), 5227u, 113f, vec3<bool>(true, true, false)), Struct_4(Struct_3(Struct_1(false, -421f), vec3<bool>(true, true, true), true, vec4<u32>(2058u, 0u, 21540u, 35306u)), vec3<u32>(1u, 0u, 1146u), 7873u, -105f, vec3<bool>(true, false, false)), Struct_4(Struct_3(Struct_1(true, 1625f), vec3<bool>(true, false, true), false, vec4<u32>(32046u, 142011u, 1u, 49412u)), vec3<u32>(0u, 6885u, 15658u), 4294967295u, -636f, vec3<bool>(true, true, true)), Struct_4(Struct_3(Struct_1(true, -1498f), vec3<bool>(true, true, false), true, vec4<u32>(65302u, 35901u, 90385u, 16277u)), vec3<u32>(1u, 1u, 0u), 117478u, -213f, vec3<bool>(true, true, true)), Struct_4(Struct_3(Struct_1(true, 1000f), vec3<bool>(false, true, true), true, vec4<u32>(0u, 193u, 4294967295u, 6943u)), vec3<u32>(1u, 22554u, 4294967295u), 44300u, 873f, vec3<bool>(false, false, true)), Struct_4(Struct_3(Struct_1(true, -547f), vec3<bool>(true, false, false), false, vec4<u32>(5436u, 13513u, 0u, 8762u)), vec3<u32>(1u, 49749u, 1u), 1u, -217f, vec3<bool>(false, false, true)), Struct_4(Struct_3(Struct_1(false, 758f), vec3<bool>(false, false, false), true, vec4<u32>(22157u, 43057u, 0u, 108532u)), vec3<u32>(0u, 26850u, 1636u), 0u, -1000f, vec3<bool>(true, true, false)), Struct_4(Struct_3(Struct_1(false, -761f), vec3<bool>(true, false, false), false, vec4<u32>(34545u, 0u, 4294967295u, 60175u)), vec3<u32>(0u, 52239u, 1u), 1u, 344f, vec3<bool>(false, false, true)));

var<private> global1: bool = true;

var<private> global2: array<vec3<i32>, 27>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<u32>, arg_3: i32) -> f32 {
    return _wgslsmith_f_op_f32(ceil(-1000f));
}

fn func_3() -> bool {
    let var_0 = 5874u;
    let var_1 = -global2[_wgslsmith_index_u32(~var_0, 27u)] ^ abs(-min(abs(global2[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec3<i32>(5577i, u_input.b.x, 10122i)));
    global0 = array<Struct_4, 12>();
    global0 = array<Struct_4, 12>();
    var var_2 = vec4<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(select(var_1, global2[_wgslsmith_index_u32(70624u, 27u)], select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), global2[_wgslsmith_index_u32(~(~u_input.e.x | ~u_input.a.x), 27u)]), _wgslsmith_add_i32(-1i, var_1.x), ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(min(var_1, vec3<i32>(var_1.x, 20823i, u_input.b.x)), global2[_wgslsmith_index_u32(4294967295u, 27u)]), _wgslsmith_sub_i32(~u_input.b.x, reverseBits(2147483647i))));
    return true;
}

fn func_2() -> vec4<f32> {
    let var_0 = func_3();
    global2 = array<vec3<i32>, 27>();
    global0 = array<Struct_4, 12>();
    global2 = array<vec3<i32>, 27>();
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-699f, -409f, 1014f, 614f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2466f, -1730f, 1530f, -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(select(-402f, 1836f, any(vec3<bool>(var_0, var_0, var_0)))), 799f, -1000f, _wgslsmith_f_op_f32(-1902f * -260f)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: bool, arg_3: i32) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()));
    global2 = array<vec3<i32>, 27>();
    let var_3 = vec3<i32>(_wgslsmith_div_i32(-41837i, 26705i | arg_3), -18967i, -(_wgslsmith_clamp_i32(arg_3, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_3, 1i, u_input.d.x), vec4<i32>(u_input.d.x, 1351i, 2147483647i, 34087i)), 36882i) ^ u_input.d.x));
    return Struct_1(any(!(!vec3<bool>(true, true, var_1))), _wgslsmith_f_op_f32(-var_2.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = vec2<bool>(false, true);
    let var_1 = !arg_1.c;
    let var_2 = ~13631u;
    global1 = arg_0.a;
    let var_3 = global0[_wgslsmith_index_u32(~firstLeadingBit(u_input.e.x), 12u)];
    return func_4(abs(firstLeadingBit(reverseBits(var_3.a.d.xy))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_2))))), select(true, false, !arg_3.b.a), u_input.b.x);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: u32) -> StorageBuffer {
    let var_0 = select(u_input.e.xx, select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.e.x) | vec2<u32>(arg_3, arg_3), vec2<u32>(u_input.a.x, 4294967295u) & min(vec2<u32>(u_input.a.x, u_input.c), u_input.a.xx)), u_input.e.xy, false), select(!vec2<bool>(u_input.d.x > u_input.d.x, true), select(select(vec2<bool>(arg_0.a, false), vec2<bool>(true, false), !vec2<bool>(false, arg_1.a)), vec2<bool>(!arg_1.a, true), true), !(!vec2<bool>(arg_1.a, arg_1.a))));
    var var_1 = true && !(!select(arg_0.a, arg_1.a, false) | any(select(vec3<bool>(false, arg_1.a, arg_1.a), vec3<bool>(arg_0.a, arg_1.a, false), arg_1.a)));
    var var_2 = _wgslsmith_clamp_vec2_u32(~var_0, ~u_input.e.yz & vec2<u32>(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 48610u, arg_3, var_0.x) ^ vec4<u32>(var_0.x, var_0.x, 52860u, 18446u), vec4<u32>(13625u, var_0.x, 42711u, 1u) ^ vec4<u32>(0u, var_0.x, 1u, var_0.x))), u_input.a.yy);
    var var_3 = u_input.d.x;
    var var_4 = u_input.d.x;
    return StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, ~u_input.b.x, min(u_input.b.x, -31685i), _wgslsmith_add_i32(2147483647i, -13844i)), reverseBits(vec4<i32>(1i, 0i, u_input.d.x, -7798i))) ^ vec4<i32>(-10236i, u_input.d.x, -8303i, ~2147483647i), ~u_input.a.xz, -abs(vec4<i32>(2147483647i, -10660i, u_input.d.x, 24927i)) | abs(select(-vec4<i32>(-1i, u_input.d.x, u_input.d.x, u_input.d.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)), select(vec4<bool>(arg_1.a, false, false, false), vec4<bool>(arg_1.a, false, arg_1.a, false), arg_0.a))), _wgslsmith_f_op_f32(1663f * _wgslsmith_div_f32(-2088f, arg_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!vec4<bool>(true, true, any(vec4<bool>(true, false, true, true)), any(vec3<bool>(true, true, true)))));
    var var_1 = -773f;
    global0 = array<Struct_4, 12>();
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1143f)), 176f)));
    global1 = true;
    var var_2 = Struct_1(any(var_0.xz), _wgslsmith_f_op_f32(select(-469f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1205f, 118f)), -870f, var_0.x)), _wgslsmith_f_op_f32(max(1825f, _wgslsmith_f_op_f32(1418f - -413f))) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(false, u_input.c, u_input.a, u_input.d.x)))))));
    let var_3 = ~abs(select(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(4294967295u, 25131u, u_input.c, 43008u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 75287u, u_input.c), vec4<u32>(49566u, u_input.a.x, 1u, 30516u))), select(vec4<u32>(u_input.c, u_input.a.x, 0u, 0u) | vec4<u32>(u_input.a.x, 29429u, u_input.e.x, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(30915u, 47575u, u_input.a.x, u_input.c), vec4<u32>(u_input.e.x, 2496u, u_input.c, u_input.e.x)), !var_0.x), vec4<bool>(true, true, true, true)));
    let var_4 = ~35254u;
    global2 = array<vec3<i32>, 27>();
    let x = u_input.a;
    s_output = func_6(func_5(func_4(~u_input.e.zx & u_input.a.xz, _wgslsmith_f_op_vec4_f32(func_2()), var_0.x, u_input.d.x), Struct_2(func_4(firstLeadingBit(vec2<u32>(var_4, 4294967295u)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.b, var_2.b, var_2.b, -110f))), true, u_input.d.x), Struct_1(all(var_0), _wgslsmith_f_op_f32(-1095f - -1091f)), var_0.yw), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, 1049f, 1354f, var_2.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, -472f, 815f, var_2.b) + vec4<f32>(var_2.b, var_2.b, var_2.b, -2281f)))), Struct_2(func_4(~vec2<u32>(var_4, var_3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(602f, -836f, var_2.b, var_2.b)), var_0.x | false, reverseBits(u_input.d.x)), Struct_1(false, -1330f), select(!var_0.wy, !var_0.xy, !var_0.x))), Struct_1(var_0.x && !var_0.x, var_2.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b, -661f) + _wgslsmith_f_op_f32(func_1(false, var_4, vec3<u32>(u_input.a.x, 35905u, 15404u), u_input.b.x)))) + vec2<f32>(_wgslsmith_f_op_f32(-801f * _wgslsmith_f_op_f32(-1483f * var_2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -970f) - -1887f))), 4294967295u);
}

