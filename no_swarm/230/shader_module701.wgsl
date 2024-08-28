struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
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

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(-2373i, 23606i, vec4<f32>(121f, -471f, -1127f, -1678f), false);

var<private> global2: Struct_1;

var<private> global3: vec2<f32> = vec2<f32>(915f, 2208f);

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> u32 {
    global3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x + global3.x), 530f), 571f);
    var var_0 = Struct_1(global0.b, -2147483647i | arg_0.a, arg_1.c, any(vec3<bool>(select(false, false, arg_1.d) || arg_0.d, all(vec2<bool>(true, true)), all(vec3<bool>(false, true, false)))));
    return ~u_input.a;
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> i32 {
    let var_0 = Struct_1(~(~(-2147483647i) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a, 4294967295u, 25532u), _wgslsmith_add_vec4_u32(vec4<u32>(9377u, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) % 32u)), _wgslsmith_mod_i32(~(-countOneBits(2147483647i)), _wgslsmith_div_i32(select(-5662i, 1i, global4.d), global2.a | global1.a) >> (_wgslsmith_mult_u32(u_input.a ^ 53512u, 21008u) % 32u)), global4.c, global0.d);
    global0 = var_0;
    var var_1 = abs(vec4<i32>(-14304i, -7700i >> (u_input.a % 32u), -global2.a | 1i, global2.a));
    return reverseBits(2147483647i);
}

fn func_1(arg_0: u32, arg_1: u32) -> vec2<u32> {
    let var_0 = u_input.e;
    var var_1 = 4294967295u;
    var var_2 = Struct_1(_wgslsmith_div_i32(~(-global2.b), 1i) >> ((firstTrailingBit(func_2(Struct_1(51537i, -1i, vec4<f32>(global4.c.x, global2.c.x, global1.c.x, global3.x), false), Struct_1(13871i, u_input.e.x, global1.c, false), 9955u)) ^ 17152u) % 32u), _wgslsmith_add_i32(2069i, _wgslsmith_div_i32(-global4.a, u_input.c.x)), global2.c, false);
    let var_3 = Struct_1(global4.b, global4.b, vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.c.x))), global2.c.x, 409f), false);
    let var_4 = Struct_1(countOneBits(1i), select(func_3(global0.c.x, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.c.x, var_3.c.x, -1607f, global2.c.x)))), -30436i, true), var_3.c, !global0.d);
    return ((vec2<u32>(_wgslsmith_mult_u32(arg_1, 4294967295u), ~1u) << (~(vec2<u32>(93108u, 19444u) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))) & (_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, u_input.a), vec2<u32>(arg_1, arg_0)), abs(vec2<u32>(4294967295u, arg_0))) | vec2<u32>(_wgslsmith_sub_u32(18454u, arg_0), firstLeadingBit(1u)))) & min(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(arg_1, arg_0), reverseBits(vec2<u32>(arg_1, arg_1)))), ~(vec2<u32>(arg_0, arg_0) >> (firstLeadingBit(vec2<u32>(45257u, 4294967295u)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~2488u, 18324u), vec2<u32>(u_input.a >> (1u % 32u), _wgslsmith_div_u32(4450u, 36522u))), _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.a, u_input.a), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 0u), func_1(4294967295u, 4294967295u)))), ~(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 4294967295u) ^ vec2<u32>(u_input.a, 14709u), vec2<u32>(u_input.a, u_input.a)) << (reverseBits(~vec2<u32>(56308u, 6692u)) % vec2<u32>(32u))));
    global3 = global2.c.xy;
    global4 = Struct_1(firstLeadingBit(~(~(-25076i)) << ((var_0.x >> (4294967295u % 32u)) % 32u)), _wgslsmith_mult_i32(u_input.c.x, 35219i), global4.c, -797f == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global2.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(3194u, u_input.a, var_0.x, u_input.a), vec4<u32>(5098u, 4294967295u, 34293u, 5144u))), ~var_0.x, u_input.a, func_1(abs(_wgslsmith_div_u32(u_input.a, u_input.a)), 20479u).x));
}

