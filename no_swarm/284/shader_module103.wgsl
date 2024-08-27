struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: u32) -> bool {
    return any(select(!(!select(vec3<bool>(true, true, arg_1.x), vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, false))), !select(vec3<bool>(true, arg_1.x, false), select(vec3<bool>(arg_1.x, false, true), vec3<bool>(arg_1.x, false, false), vec3<bool>(false, arg_1.x, arg_1.x)), arg_1.x & arg_1.x), (arg_0 <= _wgslsmith_mult_u32(u_input.a, 43345u)) || !arg_1.x));
}

fn func_2() -> vec4<u32> {
    let var_0 = countOneBits(u_input.d);
    var var_1 = !select(select(vec2<bool>(all(vec4<bool>(false, true, true, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), true), vec2<bool>(func_3(select(u_input.a, u_input.a, true), vec2<bool>(true, true), ~u_input.a), _wgslsmith_div_i32(u_input.b, 29030i) < ~27164i), select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), true)));
    global0 = _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(~select(vec2<i32>(var_0.x, u_input.b), vec2<i32>(u_input.b, 12896i), var_1.x), u_input.d), var_0.x);
    return vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(1u & u_input.c, 1u), ~(u_input.c << (1u % 32u))), u_input.a, firstLeadingBit(~_wgslsmith_mult_u32(~31565u, u_input.a)), ~u_input.c);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> f32 {
    global0 = ~_wgslsmith_add_i32(u_input.e, _wgslsmith_dot_vec3_i32(abs(countOneBits(vec3<i32>(u_input.e, -1i, u_input.d.x))), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.b, u_input.d.x, 6592i), select(vec3<i32>(u_input.e, -2147483647i, -2147483647i), vec3<i32>(-1i, u_input.d.x, 4968i), false))));
    global0 = u_input.e;
    var var_0 = Struct_2(vec4<u32>(~8518u, 1092u >> ((arg_0 ^ arg_0) % 32u), ~4294967295u, arg_0) >> (~_wgslsmith_div_vec4_u32(func_2(), ~vec4<u32>(1198u, 1u, 1u, u_input.a)) % vec4<u32>(32u)), -(vec3<i32>(0i, abs(u_input.b), 2147483647i) | (vec3<i32>(-1i) * -vec3<i32>(u_input.b, 53833i, -11322i))), 32519u);
    var var_1 = Struct_2(var_0.a, -var_0.b, arg_0);
    global0 = firstTrailingBit(u_input.b & select(var_1.b.x, u_input.d.x, arg_1.a));
    return _wgslsmith_f_op_f32(-arg_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1000f != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -404f) - -550f) * _wgslsmith_f_op_f32(-1654f - _wgslsmith_f_op_f32(func_1(u_input.a, Struct_1(false, vec2<f32>(535f, -195f), 1455f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1040f * _wgslsmith_f_op_f32(round(1136f))))));
    var_0 = func_3(u_input.a, !(!vec2<bool>(all(vec2<bool>(true, false)), any(vec3<bool>(false, true, false)))), u_input.a);
    var var_1 = 1i;
    var_0 = all(vec2<bool>(select(!all(vec4<bool>(false, false, false, true)), true, !all(vec2<bool>(true, false))), false));
    var_1 = u_input.e;
    var var_2 = Struct_2(vec4<u32>(u_input.a, func_2().x, _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, u_input.a), countOneBits(~60776u)), abs(_wgslsmith_mod_u32(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(10176u, u_input.c, u_input.a, 1u), vec4<u32>(0u, u_input.c, 11554u, 4294967295u))))), vec3<i32>(0i, ~(~u_input.e), -_wgslsmith_mod_i32(2147483647i, 2147483647i)) & ~min(-vec3<i32>(u_input.b, u_input.b, 4817i), vec3<i32>(u_input.e, u_input.d.x, 0i)), u_input.a);
    let var_3 = !(!select(!func_3(u_input.a, vec2<bool>(true, true), 5892u), !all(vec2<bool>(true, false)), select(true, true, true)));
    let var_4 = Struct_2(~(_wgslsmith_mod_vec4_u32(max(vec4<u32>(var_2.a.x, 1u, var_2.c, var_2.a.x), var_2.a), countOneBits(vec4<u32>(var_2.a.x, 1u, 1u, u_input.a))) ^ var_2.a), ~countOneBits(select(select(var_2.b, var_2.b, var_3), var_2.b, false)), ~_wgslsmith_clamp_u32(u_input.a, firstLeadingBit(min(31269u, var_2.a.x)), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(var_2.a, (var_2.a << (var_2.a % vec4<u32>(32u))) | ~vec4<u32>(24671u, 8701u, 2463u, var_2.c)), vec4<u32>(~(~u_input.c), var_2.c, var_4.c, ~(var_4.c | 13664u)), _wgslsmith_mod_vec4_u32(func_2(), var_2.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1942f, _wgslsmith_f_op_f32(-2604f - _wgslsmith_div_f32(-174f, -270f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(364f + -501f)))), _wgslsmith_mult_vec4_u32(var_4.a, reverseBits(firstTrailingBit(vec4<u32>(5678u, u_input.c, var_2.a.x, 1u)))) ^ (_wgslsmith_mult_vec4_u32(var_2.a, vec4<u32>(34727u, 0u, 16858u, var_2.c) << (var_2.a % vec4<u32>(32u))) >> (~var_4.a % vec4<u32>(32u))));
}

