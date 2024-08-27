struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> u32 {
    var var_0 = select(vec3<u32>(firstTrailingBit(u_input.a.x | _wgslsmith_sub_u32(global1.b.x, global1.b.x)), global0.a.c.b.x >> (~abs(15834u) % 32u), global0.b.b >> (~_wgslsmith_clamp_u32(global1.b.x, 30907u, global0.a.c.b.x) % 32u)), countOneBits(arg_0.b.b), global1.a.x);
    let var_1 = vec4<bool>(select(!(arg_0.a.x | arg_0.a.x) == arg_0.a.x, select(any(select(arg_0.b.a.yx, arg_0.a.xx, vec2<bool>(false, false))), _wgslsmith_f_op_f32(f32(-1f) * -633f) <= global0.b.e, false), arg_0.b.a.x), false, !((i32(-1i) * -2147483647i) > ~_wgslsmith_mod_i32(-1i, global0.b.d.x)), all(select(vec3<bool>(all(vec2<bool>(true, true)), true, true), select(select(global1.a.zxy, vec3<bool>(arg_0.b.a.x, global1.a.x, false), true), arg_0.a.wwz, false), arg_0.b.a.x)));
    var var_2 = Struct_4(global1.a, arg_0.b);
    var var_3 = Struct_5(global0.a, arg_0.a, global0.a.d.x, arg_0.b);
    var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(global0.b.c.b, var_3.a.c.b), arg_0.b.b);
    return 48471u;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<bool>) -> vec4<bool> {
    return vec4<bool>(false, false & (any(!global1.a) | !(arg_2 == -52796i)), true, ~(~global0.b.c.b.x) > ~func_3(Struct_4(vec4<bool>(false, arg_3.x, arg_0.x, arg_1.a.x), global0.b.c), arg_1.b.x));
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_1(!select(select(vec4<bool>(false, arg_0.a.x, false, false), vec4<bool>(false, arg_0.c.a.x, false, arg_0.c.a.x), select(global0.a.a, arg_0.c.a, vec4<bool>(true, true, global0.b.a.x, global0.a.a.x))), func_2(!global1.a.xyz, global0.a.c, u_input.b | 2147483647i, !vec3<bool>(global0.b.a.x, global0.a.a.x, global1.a.x)), true), u_input.a);
    let var_1 = Struct_5(Struct_2(select(vec4<bool>(arg_0.a.x, !global1.a.x, !var_0.a.x, any(vec2<bool>(arg_0.c.a.x, false))), vec4<bool>(true, true, any(vec3<bool>(false, arg_0.c.a.x, global1.a.x)), true), arg_0.c.a), 0u, Struct_1(select(global1.a, !global0.a.c.a, arg_0.d.x > u_input.e), var_0.b), firstTrailingBit(vec2<i32>(global0.a.d.x, u_input.c.x) >> (select(vec2<u32>(1u, var_0.b.x), global1.b.xy, vec2<bool>(arg_0.a.x, true)) % vec2<u32>(32u))), 1f), vec4<bool>(true, all(!global0.a.c.a.xx), global1.a.x, !global0.b.c.a.x), -countOneBits(1i), Struct_1(arg_0.c.a, arg_0.c.b));
    var var_2 = _wgslsmith_clamp_i32(arg_0.d.x | _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.d.x, 63400i), 7983i ^ global0.c.x), abs(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.e, var_1.c, u_input.c.x), -global0.c.x, ~global0.b.d.x)), _wgslsmith_dot_vec2_i32(var_1.a.d, vec2<i32>(max(var_1.a.d.x, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(15613i, 0i), u_input.c.xy)))) | _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(arg_0.d.x, global0.b.d.x, 0i) | select(u_input.d, vec3<i32>(0i, var_1.c, -1i), global1.a.yyy)), u_input.d);
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1085f)), var_1.a.e, _wgslsmith_div_f32(arg_0.e, 364f)));
    var var_4 = vec4<u32>(_wgslsmith_clamp_u32(arg_0.b, _wgslsmith_sub_u32(~4294967295u, var_1.d.b.x), abs(global1.b.x)), 4294967295u, 1u, 10838u) ^ ~reverseBits(abs(vec4<u32>(1u, 20818u, 1u, 35172u)));
    return ~(~(~_wgslsmith_clamp_u32(arg_0.c.b.x, 12431u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.c.b.x;
    var var_1 = !any(vec4<bool>(false, any(!global1.a.yz), global0.b.c.a.x, global1.a.x));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(global0.b.e + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.e + 947f))))), 107f);
    var var_3 = ~(vec4<u32>(func_1(Struct_2(vec4<bool>(true, true, global0.a.a.x, false), u_input.a.x, global0.a.c, vec2<i32>(1i, 0i), 462f)), _wgslsmith_dot_vec3_u32(vec3<u32>(14575u, 46283u, global1.b.x), select(vec3<u32>(u_input.a.x, 50216u, global1.b.x), vec3<u32>(global0.a.c.b.x, global0.a.b, 1u), global0.a.c.a.xxx)), _wgslsmith_sub_u32(4294967295u, ~global0.b.c.b.x), _wgslsmith_sub_u32(0u, global1.b.x) & global0.a.b) >> ((vec4<u32>(global0.a.c.b.x, reverseBits(17819u), _wgslsmith_add_u32(55760u, global0.a.c.b.x), u_input.a.x) << (_wgslsmith_add_vec4_u32(vec4<u32>(0u, 24594u, global0.a.b, global0.b.c.b.x), vec4<u32>(global1.b.x, 30157u, u_input.a.x, 52040u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_4 = -2147483647i;
    let var_5 = ~(~abs(29306u));
    global1 = Struct_1(!vec4<bool>(!(global0.a.c.a.x || global0.a.a.x), true, global0.b.a.x | (false || global0.a.a.x), select(true, all(global1.a.yx), global0.b.a.x)), reverseBits(global1.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_2.x))))), ~(~min(~vec4<u32>(1u, global0.b.c.b.x, var_5, 19844u), firstLeadingBit(vec4<u32>(var_5, u_input.a.x, 56473u, 0u)))), u_input.d, global0.b.d.x, -2147483647i);
}

