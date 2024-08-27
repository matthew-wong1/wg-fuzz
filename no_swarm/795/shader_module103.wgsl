struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true));

var<private> global1: array<u32, 26> = array<u32, 26>(1u, 4294967295u, 0u, 4294967295u, 23142u, 23466u, 1u, 71864u, 10192u, 12012u, 73111u, 0u, 4294967295u, 1u, 1u, 1u, 67439u, 3483u, 69347u, 1u, 7844u, 40919u, 7452u, 4294967295u, 48823u, 0u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<i32>) -> u32 {
    global1 = array<u32, 26>();
    return u_input.a;
}

fn func_3(arg_0: i32) -> vec2<bool> {
    global1 = array<u32, 26>();
    var var_0 = ~u_input.e.xx;
    let var_1 = global0[_wgslsmith_index_u32(~(~58446u), 30u)];
    global0 = array<Struct_1, 30>();
    var var_2 = Struct_1(all(!vec3<bool>(true, var_1.a, true)));
    return vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(global1[_wgslsmith_index_u32(var_0.x, 26u)], 1u)) << ((u_input.d.yz >> (vec2<u32>(24452u, 33950u) % vec2<u32>(32u))) % vec2<u32>(32u)), ~reverseBits(vec2<u32>(u_input.b, u_input.b))), 26u)] <= 24316u, var_2.a);
}

fn func_4(arg_0: f32, arg_1: vec2<bool>) -> vec2<bool> {
    let var_0 = global0[_wgslsmith_index_u32(~38625u, 30u)];
    let var_1 = ~u_input.c.x;
    global1 = array<u32, 26>();
    global0 = array<Struct_1, 30>();
    global1 = array<u32, 26>();
    return func_3(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(select(u_input.c, vec3<i32>(36962i, u_input.c.x, u_input.c.x), vec3<bool>(arg_1.x, false, true)), vec3<i32>(u_input.c.x, u_input.c.x, var_1)), select(u_input.c | u_input.c, -vec3<i32>(var_1, -2147483647i, var_1), var_1 <= u_input.c.x)) ^ -57225i);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<f32>) -> vec4<bool> {
    var var_0 = (_wgslsmith_dot_vec3_u32(~min(vec3<u32>(arg_1.x, 2150u, 0u), u_input.e), u_input.e) & _wgslsmith_clamp_u32(4294967295u, reverseBits(func_2(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), global0[_wgslsmith_index_u32(4294967295u, 30u)], 42913u, vec4<i32>(-18393i, 1i, u_input.c.x, 2147483647i))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 4294967295u), 26u)])) << ((_wgslsmith_add_u32(0u, 1u) & (117749u ^ (1553u & u_input.d.x))) % 32u);
    var var_1 = select(func_4(369f, func_3(-_wgslsmith_add_i32(-56969i, 1i))), vec2<bool>(!arg_0.a, !arg_0.a), vec2<bool>(true, true));
    return select(!vec4<bool>((arg_2.x > arg_2.x) == true, all(vec2<bool>(true, false)) & var_1.x, arg_0.a, true), vec4<bool>(true, arg_0.a, arg_0.a, var_1.x | var_1.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~(~(1i & (u_input.c.x ^ u_input.c.x))), abs(u_input.c.x));
    var_0 = u_input.c.zz;
    var var_1 = vec4<bool>(!(var_0.x < 2147483647i), all(vec3<bool>(true, true, false)), true, !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let var_2 = func_1(Struct_1(var_1.x), vec2<u32>(global1[_wgslsmith_index_u32(u_input.e.x, 26u)], u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(859f, 1187f, -506f, -376f) * vec4<f32>(-504f, 1241f, 1188f, -1937f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -373f), _wgslsmith_f_op_f32(f32(-1f) * -1350f), 1355f, 1f)));
    let var_3 = -1041f;
    let var_4 = !var_1.yw;
    let var_5 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~0u | u_input.d.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), global1[_wgslsmith_index_u32(~17339u, 26u)])), u_input.d.zz & ~_wgslsmith_sub_vec2_u32(u_input.d.zx, vec2<u32>(28542u, 2098u))), select(_wgslsmith_mult_u32(19027u, 1u), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 0u) ^ u_input.d.x, var_2.x)), 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(112f, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1493f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3 * var_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), -940f))), firstLeadingBit(~_wgslsmith_mod_i32(var_0.x << (u_input.a % 32u), _wgslsmith_dot_vec2_i32(u_input.c.zx, u_input.c.yx))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(516f, _wgslsmith_f_op_f32(-1f)))));
}

