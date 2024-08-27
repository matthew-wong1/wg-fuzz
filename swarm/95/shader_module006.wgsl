struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<bool>(false, false, true), -27418i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = 1012f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -260f), _wgslsmith_f_op_f32(select(-1385f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-737f * -1000f) + -2490f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1553f, 796f) - _wgslsmith_f_op_f32(sign(1064f)))), true)));
    let var_1 = 1382f;
    var var_2 = Struct_1(!arg_0.a, u_input.b);
    let var_3 = global0[_wgslsmith_index_u32(10604u, 1u)];
    return _wgslsmith_mult_i32(_wgslsmith_mod_i32(-u_input.b, arg_0.b), i32(-1i) * -1i);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<u32>) -> vec2<bool> {
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    let var_0 = _wgslsmith_mult_u32(0u, ~(~arg_3.x));
    var var_1 = true;
    return vec2<bool>(true, max(u_input.e.x, 1u) < _wgslsmith_add_u32(reverseBits(var_0) & ~u_input.e.x, u_input.e.x));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> f32 {
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, arg_1.b, arg_2), abs(reverseBits((vec3<i32>(2147483647i, -2147483647i, 2147483647i) ^ vec3<i32>(23272i, u_input.a.x, arg_2)) & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, arg_1.b, u_input.d), vec3<i32>(arg_2, -10102i, 38701i)))));
    var var_1 = 4294967295u;
    var_0 = arg_1.b;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -823f), _wgslsmith_f_op_f32(-2392f * _wgslsmith_f_op_f32(-957f + 1055f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(805f - 397f)), 1070f)), 598f))));
}

fn func_2() -> StorageBuffer {
    let var_0 = Struct_1(!vec3<bool>(35935u != _wgslsmith_mod_u32(u_input.c.x, 22000u), _wgslsmith_f_op_f32(ceil(1077f)) <= -2330f, true), -53251i);
    let var_1 = vec4<f32>(-966f, _wgslsmith_f_op_f32(func_4(select(select(func_3(var_0.a.xx, vec2<bool>(var_0.a.x, var_0.a.x), Struct_1(var_0.a, u_input.b), vec4<u32>(0u, u_input.e.x, u_input.c.x, 1u)), var_0.a.zz, !vec2<bool>(var_0.a.x, true)), var_0.a.zz, vec2<bool>(!var_0.a.x, 2147483647i > var_0.b)), var_0, _wgslsmith_div_i32(-2627i, min(var_0.b, var_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -357f), 365f))) * -919f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(671f, _wgslsmith_f_op_f32(-313f + 1766f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(573f, -525f)))) - _wgslsmith_f_op_f32(-779f * _wgslsmith_f_op_f32(174f + 633f)))));
    var var_2 = vec4<u32>(4294967295u, 1u, reverseBits(abs(~0u)), u_input.c.x);
    let var_3 = max(~_wgslsmith_add_vec4_u32(~(~vec4<u32>(var_2.x, 4294967295u, u_input.c.x, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, u_input.c.x, var_2.x, u_input.e.x), vec4<u32>(u_input.c.x, 1u, 1u, var_2.x)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, var_2.x, u_input.e.x), vec4<u32>(24800u, u_input.e.x, 1u, u_input.e.x)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(13579u, 442u, abs(var_2.x), _wgslsmith_dot_vec2_u32(u_input.e.zy, ~vec2<u32>(0u, u_input.c.x))), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(26963u, 4294967295u, 51807u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 67302u, 31955u, u_input.e.x), vec4<u32>(var_2.x, 57092u, 0u, 100571u))), ~(~vec4<u32>(0u, 62057u, 43821u, u_input.e.x)))));
    var var_4 = 45031u;
    return StorageBuffer(var_3, vec3<f32>(_wgslsmith_f_op_f32(1274f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-730f)))), _wgslsmith_f_op_f32(func_4(vec2<bool>(true, false | var_0.a.x), var_0, u_input.b)), -241f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(countOneBits(56911i), -u_input.d | u_input.a.x, 0i, func_1(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~1u, ~u_input.e.x), 1u)]));
    var var_1 = !all(vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), true));
    let var_2 = 34466u;
    let x = u_input.a;
    s_output = func_2();
}

