struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = true;
    let var_1 = 14417u;
    return countOneBits(~firstLeadingBit(1u));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_u32(u_input.d, _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.d, func_3()), _wgslsmith_sub_u32(_wgslsmith_mod_u32(58746u, u_input.d), func_3())), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 0u) >> (vec2<u32>(u_input.d, 1u) % vec2<u32>(32u)), ~vec2<u32>(arg_0, arg_0)) << (_wgslsmith_div_u32(1u, arg_0) % 32u)));
    var_0 = _wgslsmith_dot_vec2_u32(~(~_wgslsmith_sub_vec2_u32(abs(vec2<u32>(3812u, 4294967295u)), vec2<u32>(arg_0, arg_0) >> (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)))), vec2<u32>(~0u, u_input.c));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1114f, _wgslsmith_f_op_f32(ceil(1000f)))));
    var_0 = firstLeadingBit(~(_wgslsmith_mult_u32(57783u, u_input.c) << ((arg_0 & arg_0) % 32u))) | 4294967295u;
    var var_2 = var_1 >= _wgslsmith_f_op_f32(floor(1f));
    return Struct_1(u_input.d, ~arg_0, vec4<i32>(24841i, u_input.b.x, 0i, -_wgslsmith_dot_vec2_i32(u_input.a.wy, vec2<i32>(u_input.a.x, u_input.a.x)) >> (firstTrailingBit(u_input.c) % 32u)));
}

fn func_1(arg_0: Struct_4) -> i32 {
    let var_0 = vec2<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, arg_0.a.x, u_input.b.x) << (vec4<u32>(23888u, u_input.c, 42182u, u_input.d) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, reverseBits(arg_0.a.x), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_0.c.c.x, arg_0.c.c.x, 0i), arg_0.c.c)))), _wgslsmith_mult_i32(~arg_0.a.x << (u_input.d % 32u), ~(~(u_input.a.x >> (arg_0.d % 32u)))));
    var var_1 = arg_0.c;
    let var_2 = -35722i;
    var var_3 = func_2(_wgslsmith_mult_u32(~(~select(arg_0.c.a, 68130u, false)), ~var_1.a));
    var var_4 = Struct_2((_wgslsmith_clamp_i32(1i, _wgslsmith_mult_i32(2147483647i, arg_0.a.x), 1i) | 1i) << (~20824u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(max(148f, -888f))))) > -891f, arg_0.a.zz, _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(min(vec3<u32>(1u, 7914u, var_1.a), countOneBits(vec3<u32>(arg_0.d, 1u, 0u))), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 24504u, arg_0.d), vec3<u32>(arg_0.c.a, var_3.a, u_input.d), vec3<u32>(u_input.d, var_1.b, 45192u)))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.d, 55186u, u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, var_3.a, arg_0.c.a, 0u), vec4<u32>(arg_0.b, var_1.a, arg_0.b, var_3.b))), _wgslsmith_mod_u32(var_3.b, u_input.c), func_3() << (~0u % 32u))));
    return ~2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(-(u_input.b.x ^ u_input.a.x) >= (-(~u_input.b.x) >> (u_input.c % 32u)), true, true);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2065f, -1225f) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -598f)), -114f)));
    let var_2 = Struct_3(vec3<i32>(~(~2726i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(5563i, 0i, 1i, u_input.b.x), u_input.a)), _wgslsmith_mult_i32(func_1(Struct_4(u_input.a.wxy, u_input.d, Struct_1(114775u, u_input.c, vec4<i32>(-1i, u_input.b.x, u_input.a.x, u_input.a.x)), 18033u)), ~(-1i)) << (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 23801u, u_input.d), vec3<u32>(0u, 0u, 1u)), max(vec3<u32>(4294967295u, u_input.c, 1u), vec3<u32>(u_input.c, 50118u, u_input.d))) % 32u), -23006i), _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(_wgslsmith_add_u32(u_input.c, u_input.d), ~u_input.d, u_input.c & 0u)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, 9488u), vec3<u32>(12933u, u_input.c, u_input.d)))), max(-u_input.a.x, -88i), false);
    let var_3 = select(!vec3<bool>(true, select(var_0.x && true, any(vec4<bool>(true, true, var_0.x, true)), all(vec4<bool>(true, var_0.x, var_2.d, var_2.d))), all(select(vec4<bool>(var_0.x, true, var_2.d, var_2.d), vec4<bool>(false, true, true, false), var_2.d))), !select(!select(vec3<bool>(false, var_2.d, var_2.d), vec3<bool>(var_2.d, var_0.x, var_0.x), var_2.d), vec3<bool>(true, all(var_0.xy), false), select(true, !var_2.d, any(vec4<bool>(false, true, true, true)))), true);
    var_0 = !select(var_3, vec3<bool>(var_3.x, !(var_2.c == var_2.c), any(var_3)), any(vec3<bool>(var_3.x, true, var_3.x)));
    let var_4 = ~vec4<u32>(~u_input.d | var_2.b.x, u_input.c, func_2(~u_input.c ^ _wgslsmith_add_u32(16509u, 92721u)).a, var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 3452u, ~(~var_2.b.x)), var_4.www), 1u);
}

