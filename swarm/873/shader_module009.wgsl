struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 4294967295u;

var<private> global2: u32;

var<private> global3: f32 = -939f;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: u32) -> i32 {
    let var_0 = vec3<i32>(abs(15984i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.d.wzw, vec3<i32>(u_input.d.x, u_input.a, u_input.d.x)) ^ _wgslsmith_mod_vec3_i32(global0.c.zzz, global0.c.xzy), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, 49000i, -1i), vec3<i32>(-8165i, u_input.c, u_input.c))), global0.c.x);
    let var_1 = !all(!vec4<bool>(true, any(vec4<bool>(false, arg_0.x, true, true)), true, true));
    global2 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, arg_3, 19729u), arg_1), abs(reverseBits(arg_1))), 0u);
    var var_2 = _wgslsmith_sub_u32(4294967295u, ~_wgslsmith_add_u32(arg_3, abs(1u))) >> (abs(~(~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b))) % 32u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(499f))), _wgslsmith_f_op_f32(f32(-1f) * -808f))) - _wgslsmith_f_op_f32(min(-113f, 628f))));
    return _wgslsmith_add_i32(var_0.x, _wgslsmith_dot_vec3_i32(u_input.d.xzx, global0.c.wzz & vec3<i32>(-1i, 22890i, 1i)) & var_0.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: vec2<f32>) -> i32 {
    var var_0 = all(vec3<bool>(false, false, !(u_input.a <= func_3(vec4<bool>(false, true, false, true), u_input.b.xzw, vec3<u32>(u_input.b.x, global0.a.x, 75515u), 41346u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(353f))), arg_1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(637f, _wgslsmith_f_op_f32(-arg_1.x))))), 2017f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1268f), _wgslsmith_f_op_f32(869f + -690f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(651f))))));
    global2 = u_input.b.x ^ max(u_input.b.x, 1u);
    let var_2 = -19969i;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) * vec3<f32>(_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(arg_1.x * -2577f)), _wgslsmith_div_f32(-350f, 1853f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1227f, arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1898f)))));
    return u_input.c;
}

fn func_1() -> i32 {
    let var_0 = 15098i;
    var var_1 = Struct_2(Struct_1(u_input.b.wx, global0.a, global0.c, ~0u), reverseBits(~(~vec4<u32>(u_input.b.x, 6845u, u_input.b.x, global0.b.x))));
    global2 = ~1u;
    global2 = u_input.b.x;
    let var_2 = vec4<i32>(max(-(global0.c.x << (u_input.b.x % 32u)), -49661i) << (47306u % 32u), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(32556i & (-2147483647i << (global0.d % 32u)), var_0), _wgslsmith_mult_i32(func_2(vec2<u32>(u_input.b.x, 4294967295u), vec3<f32>(1014f, 1000f, 1194f), var_1.a.a, vec2<f32>(877f, 799f)) ^ -39906i, var_1.a.c.x), -47531i), _wgslsmith_div_i32(64162i, u_input.a), global0.c.x);
    return countOneBits(_wgslsmith_mod_i32(var_1.a.c.x, func_3(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), firstLeadingBit(var_1.b.wxx), vec3<u32>(u_input.b.x, u_input.b.x, 1u), var_1.b.x | 29194u)) & (i32(-1i) * -_wgslsmith_mult_i32(u_input.c, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(-31600i, ~_wgslsmith_add_i32(u_input.a, -1i)), func_1());
    let var_1 = _wgslsmith_add_vec4_u32(~u_input.b, _wgslsmith_mod_vec4_u32(~u_input.b, ~(~(~vec4<u32>(1u, 4294967295u, 36161u, 4294967295u)))));
    let var_2 = Struct_1(u_input.b.xz, vec2<u32>(global0.d, u_input.b.x), vec4<i32>(-2147483647i, firstLeadingBit(-_wgslsmith_dot_vec2_i32(u_input.d.zw, vec2<i32>(2147483647i, global0.c.x))), func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), vec3<u32>(1u, _wgslsmith_sub_u32(4294967295u, u_input.b.x), _wgslsmith_div_u32(4294967295u, 1u)), vec3<u32>(firstTrailingBit(0u), ~var_1.x, u_input.b.x), max(_wgslsmith_add_u32(global0.b.x, 0u), reverseBits(u_input.b.x))), -(~_wgslsmith_dot_vec3_i32(global0.c.yyx, vec3<i32>(u_input.d.x, var_0, 1949i)))), _wgslsmith_dot_vec3_u32(u_input.b.xyw, vec3<u32>(~global0.b.x, reverseBits(1u), 29874u)));
    let x = u_input.a;
    s_output = StorageBuffer(1130f);
}

