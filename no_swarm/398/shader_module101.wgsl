struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: u32) -> vec2<u32> {
    global0 = array<Struct_1, 7>();
    var var_0 = 77264u;
    var var_1 = 1u;
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    return ~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(26388u, arg_0), ~vec2<u32>(u_input.a, u_input.a) ^ (vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(arg_0, 4294967295u))), vec2<u32>(_wgslsmith_add_u32(~4294967295u, ~27571u), 4294967295u ^ arg_0));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = -vec4<i32>(~countOneBits(_wgslsmith_clamp_i32(2147483647i, -74514i, -5157i)), _wgslsmith_clamp_i32(2147483647i, -1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 0i, -2147483647i), vec3<i32>(1i, 1i, 1i))), 14064i, -_wgslsmith_div_i32(~(-4374i), ~0i));
    var_0 = -vec4<i32>(24006i, var_0.x, firstTrailingBit(-var_0.x), _wgslsmith_sub_i32(-var_0.x, firstLeadingBit(var_0.x))) | countOneBits(-vec4<i32>(var_0.x, var_0.x, 1i, _wgslsmith_clamp_i32(var_0.x, -1i, var_0.x)));
    global0 = array<Struct_1, 7>();
    var_0 = firstLeadingBit(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, 0i, var_0.x, -2147483647i), vec4<i32>(41516i, var_0.x, var_0.x, -2147483647i))) << (vec4<u32>(_wgslsmith_add_u32(8760u, u_input.a), 1u & u_input.a, firstLeadingBit(4294967295u), u_input.a) % vec4<u32>(32u))) >> ((_wgslsmith_mult_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a))), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 0u), abs(vec4<u32>(u_input.a, u_input.a, 32272u, 0u)))) >> ((vec4<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 13693u, u_input.a, u_input.a), vec4<u32>(1246u, u_input.a, u_input.a, 27412u)), 105184u, ~0u) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, 25348u), vec4<u32>(29944u, u_input.a, u_input.a, 23647u)) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var_0 = ~(-select(select(vec4<i32>(1835i, var_0.x, var_0.x, var_0.x), vec4<i32>(1i, var_0.x, 16444i, var_0.x), false), vec4<i32>(var_0.x, -23272i, var_0.x, 0i), arg_1)) >> (~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 55303u), vec2<u32>(14007u, 22135u)), u_input.a), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 8930u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) & _wgslsmith_mult_u32(58068u, 1u), abs(1u | u_input.a)) % vec4<u32>(32u));
    return vec2<i32>(~(-47775i), -var_0.x);
}

fn func_2() -> vec2<u32> {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    var var_0 = -(~func_3(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1138f, 546f, -849f, 202f)))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, false, false), all(vec2<bool>(false, false))), global0[_wgslsmith_index_u32(44876u, 7u)]));
    var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(-func_3(global0[_wgslsmith_index_u32(1u, 7u)], vec4<bool>(false, true, false, false), Struct_1(vec4<f32>(-1202f, -1194f, 279f, -1000f))), firstTrailingBit(vec2<i32>(firstTrailingBit(var_0.x), ~(-2147483647i)))), ~vec2<i32>(_wgslsmith_add_i32(max(1i, 2147483647i), _wgslsmith_div_i32(var_0.x, -12254i)), func_3(Struct_1(vec4<f32>(455f, -536f, 592f, -1317f)), vec4<bool>(true, true, true, true), Struct_1(vec4<f32>(335f, -1000f, 339f, -1366f))).x), -vec2<i32>(2147483647i, -1i));
    var_0 = vec2<i32>(var_0.x, -2838i);
    return ~_wgslsmith_mult_vec2_u32(select(~(~vec2<u32>(1u, u_input.a)), vec2<u32>(u_input.a, 0u), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, false), true)), firstTrailingBit(_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, u_input.a), ~vec2<u32>(u_input.a, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(56593u, 19138u), vec2<u32>(4294967295u, 41132u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = firstLeadingBit(~(-(~(-vec2<i32>(0i, 32167i)))));
    var var_2 = !(true & select(true && any(vec2<bool>(false, true)), true, true));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(513f - _wgslsmith_f_op_f32(ceil(1020f))), _wgslsmith_f_op_f32(abs(1202f)), 1110f, 816f)))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_3.x));
    let var_5 = var_1.x;
    var var_6 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_clamp_vec2_u32(func_1(u_input.a), func_2(), vec2<u32>(u_input.a, u_input.a)) ^ firstTrailingBit(min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)))) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 34763u), vec2<u32>(1u, 20134u)), ~_wgslsmith_add_u32(u_input.a, u_input.a)) % vec2<u32>(32u)));
}

