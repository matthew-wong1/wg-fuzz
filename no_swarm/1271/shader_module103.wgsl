struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: bool,
    d: bool,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<Struct_5, 9> = array<Struct_5, 9>(Struct_5(756f, Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(-439f, -433f, -1000f), vec4<i32>(-21016i, -1i, 0i, -66640i), vec2<bool>(false, false)), vec2<i32>(i32(-2147483648), 0i), 4294967295u), Struct_5(2022f, Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(-1179f, 308f, -727f), vec4<i32>(-1i, i32(-2147483648), 60852i, 3256i), vec2<bool>(false, false)), vec2<i32>(-28150i, -20487i), 0u), Struct_5(559f, Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(-3047f, -259f, -700f), vec4<i32>(2147483647i, -47113i, 0i, 0i), vec2<bool>(false, false)), vec2<i32>(0i, 2147483647i), 49350u), Struct_5(-1360f, Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(1834f, -967f, 447f), vec4<i32>(43227i, 1i, 38788i, 0i), vec2<bool>(false, false)), vec2<i32>(2147483647i, -14495i), 85726u), Struct_5(1000f, Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(1395f, -382f, -225f), vec4<i32>(8275i, i32(-2147483648), i32(-2147483648), 35847i), vec2<bool>(false, false)), vec2<i32>(55560i, 37598i), 4294967295u), Struct_5(224f, Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(530f, -1907f, -478f), vec4<i32>(0i, 9709i, 4164i, -1i), vec2<bool>(true, true)), vec2<i32>(-19802i, -1i), 60121u), Struct_5(364f, Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(-159f, -1677f, 457f), vec4<i32>(-18505i, 15697i, 11841i, 2147483647i), vec2<bool>(false, false)), vec2<i32>(2147483647i, -37178i), 4294967295u), Struct_5(-1429f, Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(583f, 500f, 420f), vec4<i32>(i32(-2147483648), 43754i, 1i, 2147483647i), vec2<bool>(true, true)), vec2<i32>(-13063i, -24045i), 47233u), Struct_5(-190f, Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(-313f, 519f, 774f), vec4<i32>(31490i, -47452i, 1i, 1i), vec2<bool>(true, false)), vec2<i32>(16495i, -25513i), 27477u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    var var_0 = Struct_3(Struct_2((~vec2<u32>(45280u, u_input.c) >> (vec2<u32>(28085u, u_input.c) % vec2<u32>(32u))) | ~(~vec2<u32>(u_input.b, 4294967295u)), ~firstLeadingBit(vec2<i32>(2147483647i, -1i)) | vec2<i32>(arg_0.x ^ arg_0.x, ~arg_0.x)), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(-289f, 104f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(851f)))), vec4<i32>(min(2147483647i, 18668i), arg_0.x, abs(firstTrailingBit(-6749i)), arg_0.x), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), false))), false, u_input.d.x);
    var var_1 = u_input.a.yy;
    var_1 = -vec2<i32>(reverseBits(var_0.a.b.x), _wgslsmith_add_i32(firstLeadingBit(firstLeadingBit(var_0.a.b.x)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 4226i, arg_0.x, u_input.a.x), var_0.b.c)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-165f, _wgslsmith_div_f32(var_0.b.b.x, -1454f), var_0.b.b.x, _wgslsmith_f_op_f32(exp2(var_0.b.b.x))))));
    let var_3 = false;
    return _wgslsmith_f_op_f32(-1f);
}

fn func_2() -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1136f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a.yy))), 1f)));
    let var_0 = 0i;
    let var_1 = any(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), vec3<bool>(false, false, true), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(false, 20048u > u_input.c, true), vec3<bool>(true, true, true))));
    global1 = array<Struct_5, 9>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1243f));
    return Struct_3(Struct_2(select(_wgslsmith_sub_vec2_u32(vec2<u32>(49407u, u_input.c), ~vec2<u32>(u_input.c, u_input.b)), ~vec2<u32>(u_input.b, u_input.b), all(vec4<bool>(false, false, true, var_1))), firstTrailingBit(_wgslsmith_mod_vec2_i32(u_input.a.zx, -vec2<i32>(var_0, u_input.a.x)))), Struct_1(select(!(!vec4<bool>(var_1, true, var_1, var_1)), vec4<bool>(-31394i > u_input.d.x, !var_1, var_1, true), _wgslsmith_f_op_f32(round(-2243f)) > _wgslsmith_f_op_f32(f32(-1f) * -728f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1549f, -1675f, -1148f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(108f, -154f, -840f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1824f, 1236f, -459f), vec3<f32>(-1000f, -902f, 1423f), vec3<bool>(true, false, var_1))))), _wgslsmith_add_vec4_i32(min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_0, -24498i), vec4<i32>(0i, 1i, var_0, 0i)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0, var_0, var_0, 42201i), vec4<i32>(u_input.d.x, u_input.d.x, 14550i, 46743i))), (vec4<i32>(42684i, u_input.d.x, 0i, 1431i) ^ vec4<i32>(u_input.a.x, 1i, -29572i, u_input.a.x)) >> (vec4<u32>(1u, 2026u, u_input.c, 0u) % vec4<u32>(32u))), !select(!vec2<bool>(false, var_1), vec2<bool>(var_1, var_1), select(vec2<bool>(var_1, var_1), vec2<bool>(false, true), vec2<bool>(false, var_1)))), all(vec3<bool>(false, any(vec4<bool>(false, true, var_1, true)), any(select(vec2<bool>(var_1, false), vec2<bool>(var_1, true), vec2<bool>(true, false))))), u_input.d.x);
}

fn func_1(arg_0: Struct_5, arg_1: bool) -> f32 {
    let var_0 = abs(arg_0.d);
    let var_1 = func_2();
    var var_2 = Struct_4(countOneBits(~(~_wgslsmith_mod_vec2_u32(var_1.a.a, var_1.a.a))), vec4<u32>(583u, arg_0.d, select(u_input.c, 0u, !(!var_1.b.d.x)), _wgslsmith_mult_u32(~(~1u), func_2().a.a.x)), func_2().b.a.x, false);
    var var_3 = !var_1.c;
    global1 = array<Struct_5, 9>();
    return _wgslsmith_f_op_f32(f32(-1f) * -498f);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec2<f32>) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.b, 9u)];
    let var_1 = var_0.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1445f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-579f, 1000f, true)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.b.b.x, -736f)), _wgslsmith_f_op_f32(select(var_1.b.x, arg_3.x, var_1.d.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 9>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -532f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1194f)) - _wgslsmith_f_op_f32(ceil(805f))))) * _wgslsmith_f_op_f32(sign(1f)));
    global0 = _wgslsmith_f_op_f32(func_4(vec4<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.d.x, -29960i) | u_input.a.yy), vec2<i32>(-2147483647i, ~u_input.d.x)), (~u_input.a.x ^ 1i) << (72684u % 32u), _wgslsmith_clamp_i32(841i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-12300i, -14745i, u_input.d.x, u_input.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 1i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.a.x, 1i, -93387i, u_input.d.x))), ~(-7891i)), u_input.a.x), ~abs(countOneBits(u_input.d)), Struct_2((abs(vec2<u32>(4294967295u, 4294967295u)) & _wgslsmith_div_vec2_u32(vec2<u32>(81010u, u_input.b), vec2<u32>(u_input.b, 0u))) >> (~(~vec2<u32>(32903u, u_input.c)) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.a.x), ~u_input.a.xy) >> (~(~vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(31927u, 9u)], true)) + _wgslsmith_f_op_f32(f32(-1f) * -2090f)), -171f))));
    global1 = array<Struct_5, 9>();
    var var_0 = true;
    global1 = array<Struct_5, 9>();
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(1u, func_2().a.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(abs(22118u), ~u_input.c, min(u_input.b, u_input.c)) ^ ~vec3<u32>(1u, u_input.c, 4519u), countOneBits(~(~vec3<u32>(1u, u_input.c, u_input.c)))));
    var_0 = !(!all(!func_2().b.a.wwy));
    var var_2 = Struct_5(func_2().b.b.x, func_2().b, ~u_input.d, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_i32(-var_2.c.x, -6443i));
}

