struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1000f, -941f);

var<private> global1: array<u32, 4> = array<u32, 4>(0u, 26014u, 0u, 0u);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>) -> bool {
    var var_0 = select(abs(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, -38064i, u_input.e), vec4<i32>(-23668i, 3320i, u_input.b.x, 42363i)))), min(vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, 0i), _wgslsmith_mult_i32(0i, u_input.e), _wgslsmith_div_i32(0i, 2147483647i), _wgslsmith_add_i32(2147483647i, u_input.b.x)), vec4<i32>(2147483647i, _wgslsmith_add_i32(23035i, u_input.d.x), ~u_input.b.x, ~2147483647i)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))) ^ _wgslsmith_mod_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(51959i, u_input.b.x, u_input.b.x, 1i), vec4<i32>(1i, u_input.b.x, u_input.d.x, u_input.d.x), -vec4<i32>(u_input.e, -1i, 28707i, u_input.e)), -min(~vec4<i32>(u_input.b.x, 1i, u_input.b.x, 12010i), _wgslsmith_mult_vec4_i32(vec4<i32>(52531i, 4223i, 22872i, u_input.e), vec4<i32>(u_input.d.x, -83616i, u_input.d.x, u_input.d.x))));
    global0 = arg_1;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(139f))), -1338f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_0.x, 852f)), arg_1.x)), arg_1.x, true)))));
    var_0 = -vec4<i32>(-1i, i32(-1i) * -2147483647i, abs(_wgslsmith_clamp_i32(-u_input.b.x, _wgslsmith_dot_vec3_i32(var_0.xxy, vec3<i32>(var_0.x, var_0.x, -41942i)), 1i)), 2679i);
    return all(vec2<bool>(true, false));
}

fn func_2() -> vec3<f32> {
    let var_0 = vec3<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(~(-29923i), -25660i, _wgslsmith_dot_vec3_i32(vec3<i32>(51068i, u_input.b.x, -47996i), vec3<i32>(u_input.e, u_input.e, u_input.b.x)), u_input.e) ^ ~(vec4<i32>(u_input.b.x, u_input.e, -2147483647i, u_input.b.x) | vec4<i32>(u_input.e, 10761i, u_input.e, u_input.d.x)), abs(firstTrailingBit(~vec4<i32>(u_input.e, u_input.e, 1i, -15125i)))), (i32(-1i) * -_wgslsmith_add_i32(u_input.e, 2147483647i)) >> (u_input.c % 32u));
    var var_1 = Struct_2(~reverseBits(~vec2<u32>(0u, 90353u) << (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(930f, global0.x)), 813f, 1385f));
    var var_2 = Struct_3(2147483647i, select(vec3<bool>(func_3(vec2<f32>(375f, var_1.b.x), vec2<f32>(-918f, -323f)), true, all(vec3<bool>(false, true, false))), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), select(false, true, true)), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), true), true), _wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(1u, firstLeadingBit(var_1.a.x))) > var_1.a.x);
    var_2 = Struct_3(~(i32(-1i) * -var_0.x), !select(!var_2.b, vec3<bool>(!var_2.c, var_2.c, true), select(var_2.c || var_2.c, !var_2.b.x, select(true, var_2.c, true))), var_2.c);
    global0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, 789f)));
    return var_1.b.wzy;
}

fn func_1() -> f32 {
    let var_0 = ~min(countOneBits(vec4<u32>(131265u, global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 4u)], 4u)], 1u)), ~abs(vec4<u32>(0u, 4294967295u, 24277u, 4294967295u))) << (_wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(0u, u_input.c, u_input.c, u_input.c))), firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(35283u, 4u)] & 78691u, ~0u, ~45689u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)]))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -835f, global0.x) + vec3<f32>(1000f, -761f, global0.x))), _wgslsmith_div_vec3_f32(vec3<f32>(1176f, 1041f, 1366f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1338f, global0.x, 973f)))))))));
    global1 = array<u32, 4>();
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.yy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.x, global0.x))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, 192f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_1.xx * vec2<f32>(global0.x, -585f)))), true)) + var_1.yx));
    var var_2 = Struct_1(5508u, vec3<bool>((~u_input.a | ~u_input.a) < _wgslsmith_add_u32(24845u, min(0u, 100332u)), true, all(vec2<bool>(true, true))), var_0.zz, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(ceil(1305f)), _wgslsmith_f_op_f32(trunc(250f)), _wgslsmith_div_f32(global0.x, 712f))))), false);
    return var_2.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~(~vec2<u32>(~u_input.c, abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 4u)], 4u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 1931f, global0.x) * vec4<f32>(221f, global0.x, global0.x, global0.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 359f, global0.x, global0.x), vec4<f32>(382f, global0.x, global0.x, global0.x)))), vec4<f32>(global0.x, -156f, _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(-1000f * global0.x)))));
    let var_1 = -628f;
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(_wgslsmith_clamp_u32(3026u, var_0.a.x, 4294967295u)), 4864u), var_0.a), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), 71442u > var_0.a.x), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(false, false, !(u_input.b.x != -2147483647i)), true), var_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, var_1, 226f, var_0.b.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, -499f, var_0.b.x, var_0.b.x), var_0.b)))), vec4<f32>(352f, global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - -1579f)))), var_0.b), (all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))) && any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false))) && true);
    var var_3 = max(-27789i, _wgslsmith_mult_i32(~25712i, u_input.e) << (var_2.c.x % 32u));
    global1 = array<u32, 4>();
    let var_4 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.a, 0u, var_0.a.x, var_0.a.x)), ~vec4<u32>(u_input.c, var_2.c.x, global1[_wgslsmith_index_u32(0u, 4u)], var_0.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.a, var_0.a.x, var_2.a, 1u), vec4<u32>(global1[_wgslsmith_index_u32(42412u, 4u)], 4294967295u, 4294967295u, 1u))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<u32>(0u, u_input.c, 87123u)), 5146u, 4294967295u, abs(1u)))), vec3<bool>(var_2.e, true, !all(vec3<bool>(false, var_2.e, var_2.e))), _wgslsmith_clamp_vec2_u32(select(~vec2<u32>(0u, 1u) | (var_2.c & var_2.c), firstTrailingBit(firstTrailingBit(var_2.c)), true), var_2.c, select(var_0.a, ~vec2<u32>(1u, u_input.a) ^ var_2.c, true)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(sign(var_0.b.x)))) - -203f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d.x + _wgslsmith_div_f32(-1000f, 331f)) - 612f), _wgslsmith_f_op_f32(sign(-159f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(200f)), global0.x)), true);
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2()).x), -1004f), _wgslsmith_f_op_f32(trunc(var_4.d.x)));
    global1 = array<u32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_0.a.x, ~(global1[_wgslsmith_index_u32(~1u, 4u)] | u_input.c)), 34827u);
}

