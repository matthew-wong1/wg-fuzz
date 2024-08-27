struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec4<i32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: i32) -> vec3<f32> {
    let var_0 = global0[_wgslsmith_index_u32(~u_input.c.x, 25u)];
    var var_1 = global0[_wgslsmith_index_u32(select(1u, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 48083u, arg_1, 22187u), vec4<u32>(13610u, u_input.b, arg_0, 1u) & vec4<u32>(0u, 0u, 6011u, 4294967295u)), ~vec4<u32>(~arg_1, u_input.b, firstTrailingBit(57196u), ~arg_0)), arg_2 >= u_input.a), 25u)];
    let var_2 = vec3<bool>(true, true, true);
    let var_3 = _wgslsmith_f_op_f32(-1474f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1343f))));
    global0 = array<Struct_2, 25>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_3, var_1.a.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_1.a.x, -395f) + vec3<f32>(var_3, var_0.a.x, var_1.a.x))))));
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-375f - 1483f)), 362f)) * _wgslsmith_f_op_f32(1931f + 1000f))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.c.x, 126703u), vec4<u32>(u_input.b, 43869u, u_input.b, u_input.c.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.b, 4294967295u), vec4<u32>(u_input.c.x, 4294967295u, 14519u, u_input.b))), min(u_input.c.x, min(0u, u_input.c.x)), 5846i)), vec3<f32>(782f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * -1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 - -365f))), -1777f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, 117f))))));
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    return firstLeadingBit(_wgslsmith_sub_vec4_u32(max(reverseBits(vec4<u32>(0u, u_input.c.x, u_input.b, 4294967295u)) >> (vec4<u32>(u_input.c.x, u_input.b, 69038u, 1u) % vec4<u32>(32u)), ~(~vec4<u32>(16884u, u_input.b, 0u, 40039u))), vec4<u32>(~(u_input.b | 4294967295u), ~u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_clamp_u32(73999u, u_input.b, u_input.c.x)), 0u)));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_add_vec4_u32(~abs(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 3800u, 4294967295u, 104236u), vec4<u32>(arg_0, u_input.c.x, 1u, 0u)), abs(vec4<u32>(u_input.b, arg_0, 88799u, u_input.c.x)), true)), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(func_2(), ~vec4<u32>(0u, u_input.c.x, 69206u, 29484u)), vec4<u32>(u_input.c.x, firstTrailingBit(40518u), countOneBits(~arg_0), 5329u)));
    global0 = array<Struct_2, 25>();
    let var_1 = _wgslsmith_add_i32(~1i, ~(~(i32(-1i) * -1i)));
    let var_2 = global0[_wgslsmith_index_u32(~15543u, 25u)];
    global0 = array<Struct_2, 25>();
    return -(max(var_1, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 25951i, -1i) ^ vec3<i32>(u_input.a, -1i, var_1), abs(vec3<i32>(0i, u_input.a, u_input.a)))) & -_wgslsmith_mult_i32(arg_1.x << (u_input.b % 32u), _wgslsmith_add_i32(-1i, -26060i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u ^ (u_input.b & _wgslsmith_mod_u32(~u_input.c.x ^ abs(u_input.c.x), ~(~u_input.b)));
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    var var_1 = func_1(33042u, vec2<i32>(-1i) * -vec2<i32>(max(1i, u_input.a), 0i));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1653f, 443f), vec2<f32>(-539f, -1638f), vec2<bool>(false, false)))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1111f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(176f, 947f)), 1341f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 288f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-361f, 488f) + vec2<f32>(1112f, 2266f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1368f, 619f) * vec2<f32>(1000f, -496f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1323f, -2175f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-104f, -1040f, var_2.x, -159f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 25489i), vec3<i32>(34366i, u_input.a, 76302i))), 14103i, abs(u_input.a) << ((1u << (u_input.c.x % 32u)) % 32u), u_input.a), -abs(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1067f, var_2.x, 1289f))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.x, 1000f, 1000f)))), vec3<f32>(_wgslsmith_f_op_f32(step(521f, 325f)), var_2.x, var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + 1000f), _wgslsmith_f_op_f32(var_2.x - -221f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1245f * 465f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(356f - 849f))));
}

