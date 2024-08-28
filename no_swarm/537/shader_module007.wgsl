struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(i32(-2147483648), 2028f, vec2<f32>(-1160f, -1000f), true, -330f), Struct_1(2147483647i, -116f, vec2<f32>(193f, 1389f), false, -336f), Struct_1(1i, 405f, vec2<f32>(-411f, 1834f), true, -387f), Struct_1(34983i, 2083f, vec2<f32>(1356f, -214f), false, 416f), Struct_1(2147483647i, 102f, vec2<f32>(-1304f, -486f), false, -539f), Struct_1(27639i, -634f, vec2<f32>(-675f, 723f), true, 498f), Struct_1(-34665i, -1000f, vec2<f32>(866f, -765f), true, -511f), Struct_1(-648i, -305f, vec2<f32>(617f, 908f), false, -191f), Struct_1(2147483647i, -1000f, vec2<f32>(-572f, -399f), false, -1400f), Struct_1(0i, -1230f, vec2<f32>(712f, -682f), true, -1538f), Struct_1(82497i, -423f, vec2<f32>(-2106f, 1207f), false, 351f), Struct_1(-35401i, -704f, vec2<f32>(-460f, 600f), false, 1067f), Struct_1(6600i, -635f, vec2<f32>(-165f, 1258f), false, -1270f), Struct_1(19079i, 1000f, vec2<f32>(1777f, -1167f), true, -1668f), Struct_1(-43095i, 124f, vec2<f32>(-738f, -405f), true, 992f), Struct_1(-9919i, -1154f, vec2<f32>(-1157f, -1969f), true, 552f), Struct_1(2147483647i, -863f, vec2<f32>(-1113f, 789f), true, 661f), Struct_1(-23525i, -179f, vec2<f32>(-1121f, 737f), true, 1000f), Struct_1(2147483647i, -255f, vec2<f32>(-537f, -651f), true, 1302f), Struct_1(i32(-2147483648), 562f, vec2<f32>(-855f, 852f), true, 1000f));

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec4<bool>(false, false, true, true), false, 97454u), Struct_2(vec4<bool>(true, false, true, true), true, 5919u), Struct_2(vec4<bool>(false, true, false, false), false, 57384u), Struct_2(vec4<bool>(true, false, false, false), false, 1u), Struct_2(vec4<bool>(true, true, false, false), true, 0u), Struct_2(vec4<bool>(false, true, true, true), false, 0u), Struct_2(vec4<bool>(true, true, true, false), true, 18025u), Struct_2(vec4<bool>(true, false, false, false), true, 0u));

var<private> global4: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 20>();
    global4 = global3[_wgslsmith_index_u32(~u_input.c.x, 8u)];
    global0 = array<Struct_1, 20>();
    let var_0 = u_input.b.x;
    let var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(~(~_wgslsmith_div_u32(var_0, max(var_0, var_0)))), 20u)];
    return 549f;
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = _wgslsmith_clamp_vec2_i32(~max(-_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 0i), u_input.d.xy), u_input.d.zz), u_input.d.xy, vec2<i32>(u_input.e, -(~_wgslsmith_mult_i32(u_input.d.x, 8864i))));
    var var_3 = arg_0;
    var var_4 = Struct_1(_wgslsmith_mod_i32(var_2.x, _wgslsmith_mod_i32(-(0i >> (global4.c % 32u)), _wgslsmith_dot_vec3_i32(select(u_input.d, u_input.d, true), u_input.d))), global1.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(1124f - global1.x)) * vec2<f32>(global1.x, _wgslsmith_f_op_f32(global1.x + -935f))), all(var_1.a) || false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 263f)) + -1000f));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(401f))), _wgslsmith_f_op_f32(-global1.x)));
}

fn func_1() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-319f))) - _wgslsmith_f_op_f32(func_2())) * _wgslsmith_f_op_f32(f32(-1f) * -2177f)), global1.x));
    global3 = array<Struct_2, 8>();
    let var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, global1.x)) + global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(global4.c, 8u)])) * global1.x))), _wgslsmith_f_op_f32(var_0 * -416f), _wgslsmith_f_op_f32(-3063f * _wgslsmith_f_op_f32(-var_0)))));
    global4 = Struct_2(global4.a, -165f != _wgslsmith_f_op_f32(-var_1.x), u_input.c.x);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_1.ww)) + _wgslsmith_f_op_vec2_f32(-var_1.xx))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(var_1.yw)))))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(-1073f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-623f))))), var_0) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -506f) * global1.x) + _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(var_0 - global1.x))), 406f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-2200f * global1.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(func_1());
    var var_2 = global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(46219u, u_input.b.x, reverseBits(1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, select(u_input.b.x, global4.c, true), 5660u << (u_input.a % 32u)), vec3<u32>(0u, 1u, global4.c) | vec3<u32>(38616u, u_input.b.x, 13218u)))), 20u)];
    var var_3 = Struct_1(reverseBits(-50099i), _wgslsmith_f_op_f32(var_2.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(547f)))), _wgslsmith_f_op_vec2_f32(var_2.c - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(657f, -671f)), global1.x)), any(vec3<bool>(false | !global4.b, global4.a.x, ~u_input.b.x <= 4294967295u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_f32(387f + _wgslsmith_f_op_f32(func_2()))))));
    global1 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(var_3.e)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_3.b)))))), global1.x, _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.c.x, 716f), var_3.e)), 0u << ((38896u << (global4.c % 32u)) % 32u), ~(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, var_2.a, -159i, u_input.e), countOneBits(vec4<i32>(-1i, 0i, 1i, -5725i))) & _wgslsmith_div_vec4_i32(vec4<i32>(5233i, u_input.d.x, u_input.e, var_3.a), select(vec4<i32>(var_3.a, u_input.e, -2147483647i, var_2.a), vec4<i32>(var_2.a, var_3.a, -2147483647i, -2147483647i), global4.a))), -872f);
}

