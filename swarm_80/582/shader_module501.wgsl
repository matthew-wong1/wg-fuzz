struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 452f;

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec4<bool>(true, true, true, true), true, false, 1u), Struct_1(vec4<bool>(true, false, false, true), true, false, 4294967295u), 115f, Struct_1(vec4<bool>(false, false, true, true), true, false, 53208u)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), false, false, 4294967295u), Struct_1(vec4<bool>(false, true, true, true), false, false, 24295u), -919f, Struct_1(vec4<bool>(true, true, false, false), true, false, 2290u)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), false, true, 1u), Struct_1(vec4<bool>(false, true, true, false), true, false, 1u), -2685f, Struct_1(vec4<bool>(true, false, true, false), false, true, 2320u)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), true, true, 9183u), Struct_1(vec4<bool>(true, false, true, false), true, false, 4294967295u), -185f, Struct_1(vec4<bool>(true, true, false, true), false, false, 1u)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), false, true, 0u), Struct_1(vec4<bool>(false, true, false, true), false, true, 1u), 266f, Struct_1(vec4<bool>(true, false, true, false), true, true, 42056u)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), false, true, 4294967295u), Struct_1(vec4<bool>(true, true, false, true), true, true, 13001u), -1976f, Struct_1(vec4<bool>(true, false, true, true), true, true, 25697u)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), true, true, 0u), Struct_1(vec4<bool>(false, false, false, false), true, true, 73477u), -1834f, Struct_1(vec4<bool>(false, false, true, true), true, false, 92000u)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), true, true, 1u), Struct_1(vec4<bool>(true, false, false, false), true, true, 13092u), 805f, Struct_1(vec4<bool>(true, false, true, false), true, false, 33557u)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), true, true, 4294967295u), Struct_1(vec4<bool>(true, false, true, true), true, true, 2261u), 2218f, Struct_1(vec4<bool>(false, false, false, true), true, false, 1076u)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), true, false, 4294967295u), Struct_1(vec4<bool>(true, false, true, true), false, false, 0u), -243f, Struct_1(vec4<bool>(false, false, true, true), true, false, 73814u)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), false, false, 45595u), Struct_1(vec4<bool>(false, false, true, true), true, false, 17975u), 1000f, Struct_1(vec4<bool>(false, true, true, false), false, true, 1u)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), false, true, 1u), Struct_1(vec4<bool>(true, true, false, false), false, true, 7533u), 1049f, Struct_1(vec4<bool>(true, false, false, false), true, true, 4294967295u)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), true, true, 1u), Struct_1(vec4<bool>(false, false, false, false), false, true, 1u), -308f, Struct_1(vec4<bool>(true, false, false, false), true, false, 78779u)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), false, false, 2348u), Struct_1(vec4<bool>(true, true, true, true), false, false, 59408u), 968f, Struct_1(vec4<bool>(true, false, true, true), false, true, 26643u)), Struct_2(Struct_1(vec4<bool>(true, true, false, true), true, false, 88193u), Struct_1(vec4<bool>(true, true, true, false), true, false, 0u), -210f, Struct_1(vec4<bool>(true, true, false, true), false, false, 0u)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), true, false, 39988u), Struct_1(vec4<bool>(false, true, true, true), true, true, 0u), -1367f, Struct_1(vec4<bool>(false, false, true, false), false, true, 4294967295u)), Struct_2(Struct_1(vec4<bool>(true, true, false, true), false, true, 91377u), Struct_1(vec4<bool>(true, true, true, false), false, true, 56231u), 585f, Struct_1(vec4<bool>(true, false, false, false), true, false, 0u)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), false, true, 45235u), Struct_1(vec4<bool>(true, true, false, false), false, false, 29777u), -156f, Struct_1(vec4<bool>(true, true, true, false), true, true, 4294967295u)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), false, true, 25798u), Struct_1(vec4<bool>(false, false, true, false), false, true, 19711u), -1420f, Struct_1(vec4<bool>(false, false, true, false), true, false, 0u)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), true, true, 43132u), Struct_1(vec4<bool>(true, true, false, false), false, true, 15422u), 1003f, Struct_1(vec4<bool>(false, false, true, true), true, true, 4294967295u)));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global1 = array<Struct_2, 20>();
    var var_0 = -(vec3<i32>(11888i, min(23063i, u_input.a.x), -u_input.a.x) << (abs(max(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(0u, 0u, 32950u))) % vec3<u32>(32u))) >> (vec3<u32>(u_input.b, ~(42513u ^ u_input.b) | countOneBits(~u_input.b), min(u_input.c, ~u_input.c)) % vec3<u32>(32u));
    let var_1 = ~vec2<i32>(u_input.a.x, -u_input.a.x) << (~vec2<u32>(~56261u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(10499u, u_input.b), vec2<u32>(4294967295u, u_input.b)), abs(u_input.c), u_input.b)) % vec2<u32>(32u));
    var_0 = select(vec3<i32>(-7233i, u_input.a.x, var_1.x), vec3<i32>(var_0.x, reverseBits(~countOneBits(2147483647i)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, -2752i, var_0.x) & vec3<i32>(17413i, u_input.a.x, 9262i), -vec3<i32>(var_0.x, 2147483647i, 56898i)), min(vec3<i32>(-1i, 1i, -1i), countOneBits(vec3<i32>(-2691i, var_1.x, var_0.x))))), vec3<bool>(false, true, true));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~307u, select(min(abs(~u_input.b), _wgslsmith_sub_u32(8870u, u_input.b)), 1u, false)), 20u)];
    return true;
}

fn func_2(arg_0: bool) -> vec2<f32> {
    var var_0 = true;
    let var_1 = Struct_1(select(!vec4<bool>(true, true, arg_0, false), select(vec4<bool>(!arg_0, func_3(), any(vec4<bool>(arg_0, arg_0, true, arg_0)), arg_0), !(!vec4<bool>(arg_0, true, arg_0, arg_0)), vec4<bool>(!arg_0, any(vec3<bool>(arg_0, true, true)), func_3(), arg_0)), vec4<bool>(all(vec2<bool>(arg_0, arg_0)), !(!arg_0), false, any(select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false), false)))), true, false, ~u_input.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(ceil(986f)))))) * vec2<f32>(248f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1217f, -1022f)))), -864f)));
    var_0 = -2147483647i != (-22288i << (_wgslsmith_mult_u32(~var_1.d, 36383u) % 32u));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return var_2;
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(all(arg_0.d.a.wwy))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1220f, arg_0.c)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, -1174f) + vec2<f32>(arg_0.c, -489f)) - _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 381f), vec2<f32>(arg_0.c, -1085f)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1389f, arg_0.c) - vec2<f32>(arg_0.c, -817f))), vec2<f32>(_wgslsmith_div_f32(arg_0.c, arg_0.c), _wgslsmith_f_op_f32(-583f * arg_0.c))))));
    global1 = array<Struct_2, 20>();
    return -908f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 20>();
    global1 = array<Struct_2, 20>();
    let var_0 = -(~_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_add_i32(_wgslsmith_div_i32(4834i, u_input.a.x), firstLeadingBit(u_input.a.x))));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(u_input.c, 20u)], false)) - _wgslsmith_f_op_f32(f32(-1f) * -927f)), 1f))));
    let var_1 = _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(~min(vec4<u32>(4294967295u, 18251u, u_input.b, 0u), vec4<u32>(u_input.c, 37284u, u_input.b, 0u)), vec4<u32>(_wgslsmith_sub_u32(u_input.c, 55065u), ~1u, u_input.c, u_input.b)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c, 1u, 5240u & u_input.c), _wgslsmith_div_vec4_u32(vec4<u32>(106070u, u_input.b, u_input.b, 0u), vec4<u32>(u_input.c, u_input.b, u_input.c, 24029u)) & (vec4<u32>(21023u, u_input.c, u_input.b, u_input.c) << (vec4<u32>(u_input.c, u_input.b, 100248u, u_input.c) % vec4<u32>(32u)))));
    let var_2 = global1[_wgslsmith_index_u32(1u, 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(~abs(var_0)), i32(-1i) * -var_0, _wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_0, 2147483647i, 2147483647i, 14597i)), vec4<i32>(-1i, 1i, var_0, var_0))), (_wgslsmith_add_i32(u_input.a.x, 22498i) << (4294967295u % 32u)) & 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1117f, -1000f, var_2.c))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(676f, var_2.c, var_2.c))))))), max(~max(4294967295u, var_2.a.d | var_1.x), 13348u), vec3<u32>(var_1.x | 0u, u_input.c, _wgslsmith_clamp_u32(15986u, 1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(16529u, 4294967295u, 1u), vec3<u32>(var_2.d.d, 29668u, 53016u)))));
}

