struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> vec2<i32> {
    let var_0 = Struct_2(firstLeadingBit(u_input.b), select(true, true, abs(max(38960u, u_input.b.x)) < firstLeadingBit(u_input.b.x << (4294967295u % 32u))), vec2<i32>(~arg_0, _wgslsmith_dot_vec4_i32(~vec4<i32>(-1772i, arg_0, 0i, arg_0), max(~vec4<i32>(arg_0, -6450i, -2147483647i, u_input.a), vec4<i32>(u_input.a, arg_0, 33458i, -30506i) << (u_input.b % vec4<u32>(32u))))));
    var var_1 = ~(~_wgslsmith_add_u32(~u_input.b.x, ~73323u) ^ u_input.b.x);
    var_1 = u_input.b.x;
    var var_2 = ~vec3<i32>(arg_0, ~1i, firstLeadingBit(arg_0 << (1u % 32u))) & select(-abs(vec3<i32>(-1i, arg_0, -42102i) ^ vec3<i32>(var_0.c.x, 2147483647i, u_input.a)), ~_wgslsmith_mod_vec3_i32(select(vec3<i32>(1i, arg_0, u_input.a), vec3<i32>(37076i, -1i, -12816i), false), ~vec3<i32>(u_input.a, 1i, arg_0)), false);
    var_2 = countOneBits(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(var_2.zy, vec2<i32>(u_input.a, 2147483647i)), firstTrailingBit(arg_0), arg_0), vec3<i32>(_wgslsmith_div_i32(var_2.x, var_0.c.x), reverseBits(1i), -var_2.x)), ~select(arg_0, -2147483647i, var_0.b) << (_wgslsmith_sub_u32(4294967295u, countOneBits(u_input.b.x)) % 32u), var_0.c.x));
    return var_0.c;
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_2(u_input.b, all(vec3<bool>(false, true & (1u == u_input.b.x), !all(vec3<bool>(true, false, false)))), firstTrailingBit(-func_3(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a))));
    let var_1 = firstLeadingBit(var_0.a.x) | _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.a.x, 1u, countOneBits(var_0.a.x), 416u)), var_0.a);
    var_0 = Struct_2(var_0.a, false, -(~var_0.c));
    var var_2 = !vec4<bool>(false, !any(vec2<bool>(var_0.b, var_0.b)) || !(var_0.b && var_0.b), all(select(vec4<bool>(false, true, true, true), vec4<bool>(var_0.b, true, true, false), u_input.a < var_0.c.x)), var_0.b);
    var var_3 = select(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-131f - -384f) * _wgslsmith_f_op_f32(step(328f, -472f))) >= _wgslsmith_f_op_f32(-882f - -406f), all(!(!vec4<bool>(true, var_2.x, var_0.b, false)))), vec2<bool>(!any(vec3<bool>(true, false, false)), var_0.b), select(vec2<bool>(!var_2.x, true), select(select(var_2.zz, select(vec2<bool>(true, var_2.x), vec2<bool>(false, var_2.x), vec2<bool>(false, var_2.x)), true), vec2<bool>(true, !var_2.x), !var_2.wx), vec2<bool>(true, all(vec3<bool>(false, false, false)))));
    return var_2.xw;
}

fn func_1() -> vec2<bool> {
    var var_0 = 0u;
    var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(23942u, 0u) | ~u_input.b.x, u_input.b.x, abs(u_input.b.x)), vec3<u32>(~32980u, 55937u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(75664u, u_input.b.x, 1u, 0u))) | select(u_input.b.xwz, ~u_input.b.wxx, true)) >> (52725u % 32u);
    var var_1 = -40695i & u_input.a;
    let var_2 = Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1111f, _wgslsmith_f_op_f32(f32(-1f) * -733f), -2309f))));
    var_0 = ~(~(~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x))) ^ ~31428u;
    return select(!func_2(), vec2<bool>(true, !any(vec2<bool>(true, true))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x + var_2.b.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -738f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<bool>(!(4294967295u < u_input.b.x), false), !func_1(), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, false))), func_2(), !func_1());
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~63886u, u_input.b.x, ~_wgslsmith_div_u32(u_input.b.x, u_input.b.x), countOneBits(~u_input.b.x)) ^ select(vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), reverseBits(31786u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 23817u), u_input.b), select(!vec4<bool>(var_0.x, false, true, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x && var_0.x)));
}

