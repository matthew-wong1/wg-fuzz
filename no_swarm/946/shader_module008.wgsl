struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(33577u, 0u, 22303u, 39634u);

var<private> global1: Struct_2;

var<private> global2: vec2<u32>;

var<private> global3: array<Struct_3, 32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    global3 = array<Struct_3, 32>();
    var var_0 = ~88936u;
    var_0 = _wgslsmith_mod_u32(max(~global2.x, _wgslsmith_dot_vec2_u32(global0.xw, global0.xx) | _wgslsmith_sub_u32(u_input.a, 0u)), 60039u) << (1u % 32u);
    global3 = array<Struct_3, 32>();
    let var_1 = vec2<f32>(global1.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.a.x - _wgslsmith_f_op_f32(abs(-2272f))) - global1.b.a.x)));
    return firstLeadingBit(countOneBits(1u));
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_mod_u32(global0.x, global0.x >> (_wgslsmith_mod_u32(global0.x, _wgslsmith_mod_u32(24030u, func_3(vec3<u32>(0u, 56950u, global0.x)))) % 32u));
    let var_1 = global1.b;
    global3 = array<Struct_3, 32>();
    let var_2 = Struct_2(global1.a, global1.b);
    var var_3 = Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_2.b.a.x)), _wgslsmith_f_op_f32(step(-1510f, 491f)))), -634f)));
    return Struct_3(global0.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = vec3<bool>(true, true, all(select(vec3<bool>(false, arg_0.x, false), !vec3<bool>(arg_0.x, false, arg_0.x), !vec3<bool>(false, arg_0.x, arg_0.x))) && all(arg_0));
    var var_1 = arg_1;
    let var_2 = func_2(select(arg_0.xz, vec2<bool>(~13709u < _wgslsmith_mod_u32(global0.x, global0.x), var_0.x), vec2<bool>(var_0.x, ~0u > (u_input.a | 0u))));
    var var_3 = var_2.a;
    let var_4 = !(select(true, !(var_0.x || false), (u_input.b << (31607u % 32u)) > 1i) || false);
    return Struct_2(~select(arg_1, vec2<i32>(arg_1.x ^ 1i, abs(-69270i)), all(!arg_0.zyx)), global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 32>();
    global1 = func_1(select(select(vec4<bool>(true, any(vec3<bool>(false, false, false)), false, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(global1.b.a.x != -1435f, true, true, true)), vec4<bool>(false, select(global1.b.a.x <= 1815f, true, true), !all(vec3<bool>(false, false, false)), 6597u < _wgslsmith_mult_u32(0u, global2.x)), select(-359f >= _wgslsmith_f_op_f32(-global1.b.a.x), true, true || any(vec3<bool>(false, false, true)))), abs(vec2<i32>(global1.a.x, -global1.a.x)));
    let var_0 = _wgslsmith_mod_i32(17367i, 2147483647i);
    let var_1 = global0.x;
    let var_2 = vec4<u32>(u_input.a, abs(_wgslsmith_mod_u32(41701u, ~(~u_input.a))), 1u | _wgslsmith_mult_u32(func_2(vec2<bool>(true, false)).a, ~global0.x), _wgslsmith_mod_u32(global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(global2.x, global2.x), ~global0.x, 1u), global0.yzx)));
    global2 = vec2<u32>(_wgslsmith_clamp_u32(11955u, firstTrailingBit(firstLeadingBit(~u_input.a)), 4294967295u), ~1u);
    var var_3 = global1.b.a.x >= global1.b.a.x;
    global0 = vec4<u32>(global0.x >> (u_input.a % 32u), 56179u, ~(firstLeadingBit(global0.x) >> (firstTrailingBit(~1u) % 32u)), func_3(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~var_2.zww, select(vec3<u32>(0u, global2.x, var_2.x), var_2.zxw, false)), abs(global0.yyx))));
    let var_4 = max(min(countOneBits(vec4<i32>(var_0, global1.a.x, -30152i, reverseBits(-4300i))), reverseBits(countOneBits(vec4<i32>(-1i, u_input.b, -1i, var_0)))), abs(min(select(vec4<i32>(u_input.b, var_0, u_input.b, u_input.b), vec4<i32>(1i, 2147483647i, u_input.b, var_0), true), select(vec4<i32>(-2147483647i, u_input.b, 0i, var_0), vec4<i32>(global1.a.x, u_input.b, -2147483647i, 28793i), vec4<bool>(true, true, true, false))) | abs(vec4<i32>(global1.a.x, global1.a.x, global1.a.x, var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~_wgslsmith_sub_i32(global1.a.x, var_0), global1.a.x ^ -1i, 8193i));
}

