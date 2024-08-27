struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(true, 0i, vec2<bool>(true, false), 2536u, 622f), Struct_1(false, 29703i, vec2<bool>(true, true), 35437u, -1639f), Struct_1(true, -43592i, vec2<bool>(true, false), 1u, 1274f), Struct_1(false, 0i, vec2<bool>(false, true), 0u, 633f), Struct_1(false, i32(-2147483648), vec2<bool>(false, false), 4294967295u, 226f), Struct_1(false, 0i, vec2<bool>(true, true), 0u, -123f), Struct_1(false, 40784i, vec2<bool>(true, true), 65087u, 529f), Struct_1(true, -1666i, vec2<bool>(true, true), 1u, 1554f), Struct_1(false, -47531i, vec2<bool>(true, true), 108485u, -502f), Struct_1(true, -22537i, vec2<bool>(true, true), 0u, -1000f), Struct_1(true, -1i, vec2<bool>(true, false), 4294967295u, 1000f), Struct_1(false, 2147483647i, vec2<bool>(false, false), 4294967295u, -716f), Struct_1(true, -30048i, vec2<bool>(true, false), 10181u, -1530f), Struct_1(false, -1i, vec2<bool>(false, true), 2129u, 1070f), Struct_1(true, i32(-2147483648), vec2<bool>(false, false), 44754u, -460f), Struct_1(true, 1i, vec2<bool>(false, false), 43017u, 1109f), Struct_1(true, 1i, vec2<bool>(true, true), 886u, 409f), Struct_1(true, i32(-2147483648), vec2<bool>(true, false), 9370u, -295f), Struct_1(false, 4438i, vec2<bool>(true, true), 48663u, -1340f), Struct_1(false, 28817i, vec2<bool>(true, false), 87901u, 2086f), Struct_1(false, 2147483647i, vec2<bool>(true, false), 4294967295u, 1000f), Struct_1(true, 16060i, vec2<bool>(true, true), 0u, 475f), Struct_1(true, -1i, vec2<bool>(true, true), 79501u, -1111f), Struct_1(false, -110013i, vec2<bool>(true, true), 33447u, -814f), Struct_1(false, i32(-2147483648), vec2<bool>(true, false), 48260u, -249f), Struct_1(true, 45030i, vec2<bool>(false, true), 101421u, -554f), Struct_1(true, -30970i, vec2<bool>(false, true), 1u, 337f), Struct_1(true, 28673i, vec2<bool>(false, true), 41506u, -540f), Struct_1(true, 0i, vec2<bool>(false, false), 33110u, 1171f), Struct_1(false, i32(-2147483648), vec2<bool>(true, false), 1u, -117f), Struct_1(true, -12933i, vec2<bool>(true, true), 9121u, -1005f));

var<private> global1: array<i32, 27>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = -(vec4<i32>(abs(i32(-1i) * -2147483647i), ~_wgslsmith_clamp_i32(-16719i, 4362i, -2147483647i), min(arg_0.b, 35791i), -firstLeadingBit(u_input.c.x)) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, arg_0.d, u_input.b), vec4<u32>(21722u, 4294967295u, arg_0.d, arg_0.d)) % vec4<u32>(32u)));
    var var_1 = -6120i;
    global1 = array<i32, 27>();
    return abs(~(-global1[_wgslsmith_index_u32(arg_0.d, 27u)]));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<f32>) -> f32 {
    global1 = array<i32, 27>();
    global1 = array<i32, 27>();
    var var_0 = select(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true))), !(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), false))), select(vec2<bool>(true, true), !vec2<bool>(59713u < arg_1.a.x, select(true, true, false)), any(vec3<bool>(true, true, true))));
    var var_1 = Struct_2(~(~_wgslsmith_add_vec3_u32(vec3<u32>(11930u, 0u, 4294967295u) << (vec3<u32>(22878u, u_input.b, arg_1.a.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(36957u, u_input.b, 36351u), arg_1.a, arg_0))));
    global1 = array<i32, 27>();
    return arg_2.x;
}

fn func_2() -> bool {
    var var_0 = Struct_2(~vec3<u32>(~(u_input.b << (u_input.b % 32u)), u_input.b, 63135u));
    var var_1 = !vec2<bool>(false, -2147483647i < u_input.c.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-2265f + -2071f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -459f), 682f), 536f) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1809f - -613f)), _wgslsmith_f_op_f32(func_3(var_0.a, Struct_2(var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-276f, 1160f, 1226f, 1440f)))), 1377f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(247f, 2291f, 667f), vec3<f32>(894f, -659f, -1024f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-478f, -1104f, 662f))), vec3<f32>(1f, 1f, 1f))), select(select(!(!vec3<bool>(false, var_1.x, false)), !vec3<bool>(var_1.x, true, false), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, var_1.x), false)), select(select(vec3<bool>(false, var_1.x, true), select(vec3<bool>(false, false, false), vec3<bool>(true, var_1.x, false), var_1.x), true), vec3<bool>(var_1.x, true, var_1.x), any(vec3<bool>(true, true, true))), !(!vec3<bool>(false, var_1.x, var_1.x)))));
    var var_3 = global0[_wgslsmith_index_u32(u_input.b, 31u)];
    let var_4 = _wgslsmith_dot_vec4_i32(vec4<i32>(select(~27296i, -1i, !(var_3.c.x && var_3.a)), var_3.b << (4294967295u % 32u), (_wgslsmith_dot_vec4_i32(vec4<i32>(18702i, var_3.b, 11429i, -2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(var_3.d, 27u)], -22751i, -24763i, 13095i)) >> (_wgslsmith_clamp_u32(0u, 38386u, var_0.a.x) % 32u)) | -9343i, global1[_wgslsmith_index_u32(u_input.b, 27u)]), -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(2147483647i, 1i, u_input.a, 29094i), select(select(vec4<i32>(35086i, 2147483647i, var_3.b, -5383i), vec4<i32>(-20833i, -2147483647i, u_input.a, 53098i), var_1.x), vec4<i32>(54760i, var_3.b, global1[_wgslsmith_index_u32(var_3.d, 27u)], 71126i) | vec4<i32>(u_input.c.x, -30477i, global1[_wgslsmith_index_u32(43977u, 27u)], u_input.a), !vec4<bool>(var_1.x, false, var_3.c.x, var_1.x))));
    return _wgslsmith_f_op_f32(sign(var_3.e)) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_2.x, var_3.e, var_3.a)))) - var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, _wgslsmith_add_i32(func_1(global0[_wgslsmith_index_u32(u_input.b & 0u, 31u)]), _wgslsmith_dot_vec3_i32(u_input.c, u_input.c)), vec2<bool>(func_2() || ((u_input.b << (u_input.b % 32u)) == ~u_input.b), any(vec2<bool>(true, true))), u_input.b, _wgslsmith_f_op_f32(480f - 1039f));
    global0 = array<Struct_1, 31>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.e, var_0.e, var_0.e, var_0.e)))))));
    global0 = array<Struct_1, 31>();
    var var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(min(u_input.b, 4548u) >> (u_input.b % 32u), 1u, ~(~u_input.b)), _wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, var_0.d), vec3<u32>(43927u, 4294967295u, 21926u)), vec3<u32>(var_0.d, 0u, abs(4294967295u))), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(91292u, 4294967295u, var_0.d), ~vec3<u32>(6919u, var_0.d, 10641u)), ~(~vec3<u32>(30913u, 16044u, 1u)))) ^ (min(vec3<u32>(1u, var_0.d, 0u), _wgslsmith_sub_vec3_u32(max(vec3<u32>(var_0.d, u_input.b, var_0.d), vec3<u32>(u_input.b, u_input.b, 1u)), ~vec3<u32>(var_0.d, 2444u, u_input.b))) >> (vec3<u32>(~26003u >> ((var_0.d >> (5830u % 32u)) % 32u), 21432u, 23404u) % vec3<u32>(32u)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(round(var_0.e)) > -1000f, _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, global1[_wgslsmith_index_u32(var_0.d, 27u)]), u_input.c.zz), ~(i32(-1i) * -1i)), vec3<i32>(global1[_wgslsmith_index_u32(reverseBits(1u), 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)], ~_wgslsmith_clamp_i32(31774i, global1[_wgslsmith_index_u32(9700u, 27u)], var_0.b))), !(!select(vec2<bool>(var_0.a, var_0.a), select(vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(false, true), vec2<bool>(var_0.a, false)), select(var_0.c, var_0.c, var_0.c.x))), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(48894u, 48538u, var_0.d), vec3<u32>(1u, 46944u, 1u) ^ vec3<u32>(u_input.b, 86879u, var_0.d), ~vec3<u32>(u_input.b, var_2.x, var_2.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.d, 38663u, 72537u), vec3<u32>(49385u, 25386u, var_0.d), vec3<u32>(var_2.x, u_input.b, var_2.x)) & (vec3<u32>(198u, var_2.x, 79831u) >> (vec3<u32>(47313u, u_input.b, var_0.d) % vec3<u32>(32u)))) & (firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 0u, 35721u), vec3<u32>(var_0.d, 46241u, 15509u))) << ((~var_2.x | ~var_2.x) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(349f + var_1.x)), -1992f)));
    var var_3 = Struct_2(firstLeadingBit(vec3<u32>(~(~4982u), 110783u, firstLeadingBit(min(42743u, 12364u)))));
    var var_4 = !(var_1.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))));
    var var_5 = Struct_2(min(var_3.a, var_3.a >> (vec3<u32>(29551u, ~var_2.x, 0u) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -292f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(4294967295u, var_2.x, var_0.d), Struct_2(var_3.a), vec4<f32>(1472f, -201f, 150f, 464f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.e)) + _wgslsmith_f_op_f32(var_1.x + var_1.x))) * _wgslsmith_f_op_vec4_f32(floor(var_1))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.e)))), var_1.x, 1104f))), var_0.b, -vec4<i32>(-u_input.a, _wgslsmith_mult_i32(-var_0.b, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(8929u, 27u)], var_0.b)), firstTrailingBit(abs(u_input.c.x)), -23292i), ~u_input.a);
}

