struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<bool>,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, false, true, true), false, vec4<u32>(124553u, 33797u, 19817u, 4294967295u), vec2<u32>(0u, 44100u));

var<private> global1: array<u32, 6> = array<u32, 6>(4133u, 4294967295u, 4294967295u, 82436u, 4294967295u, 4294967295u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_4) -> bool {
    var var_0 = vec3<f32>(arg_0, -389f, _wgslsmith_f_op_f32(step(-1191f, arg_2.b.a.c)));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-918f, _wgslsmith_f_op_f32(max(680f, -536f)), _wgslsmith_f_op_f32(round(-188f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(225f, arg_1, arg_0), vec3<f32>(1243f, arg_1, arg_1), arg_2.e.b.a.zxy))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.e.c, 1745f, 188f)))))));
    global1 = array<u32, 6>();
    let var_1 = ~u_input.b.yz;
    let var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(arg_1, arg_2.b.d), _wgslsmith_f_op_f32(2017f - var_0.x))))), u_input.a, ~countOneBits(1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-501f, arg_1)), _wgslsmith_f_op_f32(trunc(arg_1))));
    return select(!all(!vec3<bool>(arg_2.c.x, global0.b, true)), all(select(vec2<bool>(false, any(global0.a.wzy)), select(!vec2<bool>(global0.b, false), arg_2.a.a.wx, vec2<bool>(false, global0.b)), select(!arg_2.e.b.a.wy, vec2<bool>(true, global0.a.x), select(global0.a.wx, vec2<bool>(arg_2.b.a.b.b, false), arg_2.c.xy)))), true);
}

fn func_2(arg_0: vec2<f32>) -> bool {
    let var_0 = Struct_4(Struct_1(vec4<bool>(!func_3(899f, -2475f, Struct_4(Struct_1(vec4<bool>(true, global0.a.x, false, global0.a.x), true, global0.c, u_input.b.xy), Struct_3(Struct_2(1i, Struct_1(global0.a, false, vec4<u32>(1u, global1[_wgslsmith_index_u32(global0.d.x, 6u)], 0u, u_input.a), global0.c.yx), arg_0.x), arg_0.x, arg_0.x, 162f, arg_0.x), vec3<bool>(false, global0.b, global0.b), arg_0.x, Struct_2(1i, Struct_1(global0.a, false, global0.c, vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51789u, 6u)], 6u)], 72212u)), arg_0.x))), false, global0.b, _wgslsmith_f_op_f32(-984f - arg_0.x) == _wgslsmith_f_op_f32(round(-1324f))), true, select(_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.c.x, global0.d.x, 0u, 1u), countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], 4294967295u, global1[_wgslsmith_index_u32(global0.c.x, 6u)], u_input.a))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, global0.d.x, global0.c.x, u_input.a), vec4<u32>(0u, 3542u, u_input.b.x, 1u)), global0.c), global0.b), u_input.b.zx), Struct_3(Struct_2(u_input.c << (83415u % 32u), Struct_1(vec4<bool>(true, global0.a.x, false, false), false, vec4<u32>(global1[_wgslsmith_index_u32(2896u, 6u)], 4294967295u, global1[_wgslsmith_index_u32(global0.c.x, 6u)], global1[_wgslsmith_index_u32(25272u, 6u)]), ~vec2<u32>(1u, global0.c.x)), _wgslsmith_f_op_f32(-2108f * -238f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 1538f) - _wgslsmith_f_op_f32(floor(1954f))))), _wgslsmith_f_op_f32(max(-1000f, 169f)), _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(max(-1000f, 233f)), u_input.b.x > 12754u)))), select(global0.a.wwz, select(global0.a.wzw, global0.a.zyy, func_3(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), Struct_4(Struct_1(vec4<bool>(global0.a.x, global0.a.x, global0.b, global0.a.x), false, vec4<u32>(9185u, 12505u, u_input.a, u_input.b.x), vec2<u32>(21022u, global1[_wgslsmith_index_u32(24032u, 6u)])), Struct_3(Struct_2(-2147483647i, Struct_1(vec4<bool>(true, global0.b, true, false), global0.b, global0.c, global0.d), -967f), arg_0.x, arg_0.x, arg_0.x, -446f), vec3<bool>(false, true, true), 206f, Struct_2(1i, Struct_1(vec4<bool>(global0.b, false, true, global0.a.x), global0.b, global0.c, u_input.b.zz), arg_0.x)))), !global0.a.x), arg_0.x, Struct_2(-(~(u_input.c ^ u_input.c)), Struct_1(!global0.a, true, ~global0.c, vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b, global0.c.wwx), global0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1294f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) - _wgslsmith_div_f32(arg_0.x, -1000f)))));
    global1 = array<u32, 6>();
    let var_1 = var_0.a;
    let var_2 = var_0.b;
    let var_3 = _wgslsmith_div_i32((var_0.b.a.a << (var_0.b.a.b.d.x % 32u)) >> (25418u % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(u_input.c, var_0.b.a.a, 44704i, var_0.e.a)), vec4<i32>(firstTrailingBit(-12516i), ~2147483647i, max(var_0.e.a, -2147483647i), var_0.b.a.a)), var_2.a.a));
    return true;
}

fn func_1(arg_0: Struct_5, arg_1: i32, arg_2: u32) -> vec2<i32> {
    global1 = array<u32, 6>();
    let var_0 = select(vec4<bool>(global0.b, func_2(arg_0.a), all(global0.a.yx), global0.b), vec4<bool>(any(vec2<bool>(false != global0.b, true)), (~u_input.a == ~u_input.a) | !(0u <= arg_0.b), func_3(_wgslsmith_div_f32(714f, arg_0.d), -1755f, Struct_4(Struct_1(global0.a, false, global0.c, vec2<u32>(72007u, global1[_wgslsmith_index_u32(1u, 6u)])), Struct_3(Struct_2(u_input.c, Struct_1(global0.a, global0.b, vec4<u32>(20191u, 66092u, 1u, 1u), vec2<u32>(global1[_wgslsmith_index_u32(arg_0.b, 6u)], 4294967295u)), -672f), arg_0.d, -978f, arg_0.a.x, 1315f), vec3<bool>(false, global0.b, false), arg_0.d, Struct_2(-20735i, Struct_1(global0.a, false, vec4<u32>(global0.c.x, arg_0.b, global0.d.x, 81227u), global0.d), -383f))) & !all(vec4<bool>(global0.a.x, global0.a.x, global0.b, false)), false), !global0.a);
    let var_1 = ~vec3<u32>(53228u, _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(1u), arg_0.b, 54309u), u_input.b), _wgslsmith_add_u32(abs(4294967295u), arg_0.b));
    global0 = Struct_1(vec4<bool>(global0.a.x, select(var_0.x, true, !global0.b) & select(true, true, all(vec3<bool>(true, var_0.x, false))), global0.a.x, var_0.x | global0.a.x), select(true, global0.b, func_3(_wgslsmith_f_op_f32(abs(arg_0.d)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.d - arg_0.a.x), _wgslsmith_f_op_f32(-586f + arg_0.d))), Struct_4(Struct_1(var_0, false, global0.c, global0.c.zx), Struct_3(Struct_2(-3969i, Struct_1(global0.a, global0.a.x, global0.c, var_1.zx), arg_0.d), arg_0.d, 196f, arg_0.a.x, -569f), select(var_0.xzx, global0.a.xxy, vec3<bool>(global0.a.x, global0.a.x, false)), _wgslsmith_f_op_f32(trunc(-176f)), Struct_2(u_input.c, Struct_1(vec4<bool>(global0.a.x, global0.a.x, true, true), false, vec4<u32>(global0.d.x, var_1.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28773u, 6u)], 6u)], u_input.a), u_input.b.yy), -620f)))), vec4<u32>(134930u, 3527u, arg_0.b, arg_2), ~_wgslsmith_mod_vec2_u32(vec2<u32>(~arg_2, 29743u), vec2<u32>(_wgslsmith_mult_u32(32996u, 1u), global0.d.x)));
    var var_2 = vec4<bool>(true, arg_0.a.x > _wgslsmith_f_op_f32(max(245f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_0.a.x)), arg_0.d, global0.b)))), func_2(vec2<f32>(-914f, 790f)), all(select(select(vec3<bool>(global0.b, var_0.x, var_0.x), !global0.a.wxx, global1[_wgslsmith_index_u32(arg_2, 6u)] > 0u), select(select(var_0.wxy, vec3<bool>(false, global0.a.x, global0.b), var_0.x), vec3<bool>(global0.a.x, true, true), arg_0.a.x <= arg_0.d), vec3<bool>(!global0.a.x, false, !global0.a.x))));
    return ~(~select(vec2<i32>(countOneBits(14769i), firstTrailingBit(2147483647i)), vec2<i32>(_wgslsmith_div_i32(arg_1, arg_1), ~u_input.c), global0.a.yy));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(!global0.a, true, global0.c, vec2<u32>(_wgslsmith_sub_u32(firstLeadingBit(global0.d.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.b.x, arg_0), global0.c)), _wgslsmith_add_u32(~reverseBits(4418u), ~_wgslsmith_dot_vec4_u32(global0.c, global0.c))));
    global0 = Struct_1(global0.a, !(_wgslsmith_f_op_f32(243f - 749f) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1103f, 122f, var_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -299f)))), _wgslsmith_mod_vec4_u32(~global0.c, global0.c), (arg_2.xz << ((vec2<u32>(var_0.d.x, 0u) >> (~u_input.b.xz % vec2<u32>(32u))) % vec2<u32>(32u))) ^ vec2<u32>(var_0.d.x, global0.c.x));
    global0 = var_0;
    var var_1 = Struct_1(global0.a, ~(~firstTrailingBit(u_input.a)) <= ~var_0.c.x, global0.c, vec2<u32>(_wgslsmith_dot_vec2_u32(arg_2.yx >> (reverseBits(u_input.b.xy) % vec2<u32>(32u)), vec2<u32>(countOneBits(var_0.c.x), global0.d.x)), 49639u));
    var var_2 = reverseBits(~u_input.b);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~abs(countOneBits(~(-2147483647i))), func_4(_wgslsmith_mult_u32(u_input.b.x, ~4294967295u) << (_wgslsmith_add_u32(~global0.c.x, ~65248u) % 32u), _wgslsmith_mult_vec2_i32(select(func_1(Struct_5(vec2<f32>(-357f, 340f), u_input.b.x, u_input.c, -1402f), 2147483647i, 4294967295u), -vec2<i32>(u_input.c, u_input.c), !global0.a.zy), -vec2<i32>(u_input.c, -2147483647i)), global0.c.xzx, -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.c), vec4<i32>(u_input.c, 2147483647i, u_input.c, -1i), vec4<i32>(u_input.c, u_input.c, 2147483647i, u_input.c)))), _wgslsmith_f_op_f32(-523f * -2508f));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, _wgslsmith_f_op_f32(-var_0.c), 1566f)) - vec4<f32>(_wgslsmith_f_op_f32(-583f * var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1567f))) * _wgslsmith_f_op_f32(var_0.c * -1626f)), _wgslsmith_f_op_f32(312f + _wgslsmith_f_op_f32(exp2(var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-995f * var_0.c), _wgslsmith_f_op_f32(var_0.c * var_0.c))))));
    var var_2 = _wgslsmith_div_vec4_i32(abs(select(~vec4<i32>(u_input.c, 16032i, 1i, 1175i), vec4<i32>(u_input.c, -1i, var_0.a, u_input.c), vec4<bool>(global0.b, global0.b, var_0.b.b, false))), firstLeadingBit(~vec4<i32>(2147483647i, u_input.c, var_0.a, -2147483647i))) ^ -firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(47075i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_0.a, var_0.a, -1i), vec4<i32>(u_input.c, u_input.c, var_0.a, u_input.c)), abs(-14375i), _wgslsmith_clamp_i32(1i, 0i, -36754i)));
    var_2 = _wgslsmith_mult_vec4_i32(~select(_wgslsmith_mod_vec4_i32(vec4<i32>(24029i, var_0.a, var_0.a, 13069i), vec4<i32>(2147483647i, var_2.x, var_2.x, var_0.a)) >> (vec4<u32>(0u, global0.c.x, var_0.b.c.x, u_input.b.x) % vec4<u32>(32u)), reverseBits(vec4<i32>(2147483647i, var_2.x, 34302i, 48440i) | vec4<i32>(var_2.x, var_0.a, -35895i, var_0.a)), global0.a), select(vec4<i32>((var_0.a & 4585i) & var_2.x, -countOneBits(-1i), u_input.c, var_2.x), ~reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(11620i, u_input.c, u_input.c, 1i), vec4<i32>(var_2.x, u_input.c, -2147483647i, -8171i))), !func_3(var_0.c, -446f, Struct_4(var_0.b, Struct_3(Struct_2(var_0.a, Struct_1(var_0.b.a, false, global0.c, var_0.b.d), var_0.c), -923f, -480f, var_0.c, -613f), vec3<bool>(var_0.b.a.x, global0.a.x, var_0.b.a.x), 691f, Struct_2(15783i, var_0.b, var_1.x)))));
    global1 = array<u32, 6>();
    let var_3 = Struct_2(reverseBits(~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(var_2.xzx, var_2.yyy), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 2147483647i, var_0.a), var_2.yzx))), func_4(u_input.a, var_2.xz, func_4(0u, var_2.zz, ~select(vec3<u32>(20028u, 77553u, 0u), vec3<u32>(1u, u_input.a, global0.d.x), vec3<bool>(true, false, true)), _wgslsmith_add_vec4_i32(~vec4<i32>(var_2.x, 0i, -1i, u_input.c), -vec4<i32>(u_input.c, u_input.c, u_input.c, var_0.a))).c.zzw, _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.c, u_input.c, var_0.a), abs(vec4<i32>(var_2.x, u_input.c, -24327i, -65278i))) ^ -vec4<i32>(-1i, var_0.a, 39247i, var_0.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(vec2<u32>(1u, 1u)), vec2<i32>(2147483647i, func_1(Struct_5(_wgslsmith_f_op_vec2_f32(-var_1.wz), global1[_wgslsmith_index_u32(~94521u, 6u)], _wgslsmith_dot_vec3_i32(var_2.wzy, vec3<i32>(var_0.a, 12983i, 2147483647i)), -1229f), 22975i, ~20497u).x), 1u, _wgslsmith_f_op_f32(abs(var_1.x)), var_0.b.c);
}

