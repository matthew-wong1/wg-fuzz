struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    global0 = vec4<i32>(_wgslsmith_div_i32(-1i, i32(-1i) * -2147483647i), select(_wgslsmith_div_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, global0.x, u_input.a), ~vec4<i32>(u_input.a, global0.x, -10966i, global0.x))), _wgslsmith_add_i32(firstTrailingBit(min(0i, 25430i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -10039i, u_input.a), vec3<i32>(1i, 16088i, global0.x))), ~countOneBits(0i) > countOneBits(_wgslsmith_dot_vec3_i32(global0.xzy, global0.wxx))), ~u_input.a, u_input.a);
    var var_0 = false;
    var var_1 = vec4<f32>(-192f, 136f, _wgslsmith_f_op_f32(select(1090f, -1438f, any(vec4<bool>(true, any(vec3<bool>(false, false, true)), true, true)))), 1000f);
    global0 = vec4<i32>(~global0.x, max(_wgslsmith_sub_i32(min(global0.x, u_input.a), _wgslsmith_clamp_i32(462i, global0.x, u_input.a)), u_input.a), 1i, 6690i) >> (~countOneBits(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 35431u, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 67414u, 39524u), vec4<u32>(1u, 1u, 4294967295u, 40516u)), firstLeadingBit(vec4<u32>(1u, 8614u, 85481u, 69174u)))) % vec4<u32>(32u));
    global0 = _wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, 0i), ~(~_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.a, global0.x, global0.x, u_input.a)), ~vec4<i32>(u_input.a, u_input.a, u_input.a, -307i))));
    return 0i;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(true, vec3<i32>(-52997i, _wgslsmith_mod_i32(2147483647i, arg_2.b.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_2.b.yx, select(vec2<i32>(arg_2.b.x, 1i), global0.zx, arg_2.a)), func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_2.c)))), _wgslsmith_f_op_f32(-arg_2.c))) - arg_2.c));
    let var_1 = vec2<i32>(max(~u_input.a, min(arg_2.b.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(arg_2.b), vec3<i32>(0i, global0.x, 2147483647i)))), -(15653i << (arg_1 % 32u)) ^ -abs(u_input.a));
    var var_2 = arg_2;
    global0 = vec4<i32>(var_0.b.x, _wgslsmith_dot_vec3_i32(~var_0.b, ~select(-var_2.b, ~var_0.b, any(vec4<bool>(arg_2.a, true, false, var_0.a)))), ~48183i, _wgslsmith_mod_i32(-23314i, var_2.b.x));
    var var_3 = arg_0.x;
    return ~20658u;
}

fn func_1() -> Struct_1 {
    var var_0 = !(!vec2<bool>(!all(vec2<bool>(false, false)), select(true, true, true)));
    let var_1 = Struct_1(!var_0.x, -global0.zwz, 1856f);
    let var_2 = select(~(~4294967295u << (func_2(vec2<f32>(var_1.c, -550f), 47815u, Struct_1(var_1.a, global0.yxy, -309f)) % 32u)), _wgslsmith_sub_u32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_1.c) + vec2<f32>(-663f, var_1.c)), ~0u, var_1), 1u), false) << (min(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~0u, 52503u), _wgslsmith_sub_u32(_wgslsmith_add_u32(8484u, 13222u), 1u), ~(~6610u)), ~min(firstLeadingBit(41095u), ~1u)) % 32u);
    var var_3 = select(select(vec3<bool>(!(var_0.x && true), var_1.a, all(vec2<bool>(false, var_0.x))), select(select(!vec3<bool>(false, true, var_0.x), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_1.a, var_1.a, var_0.x), false), !var_1.a), !(!vec3<bool>(var_1.a, var_1.a, true)), select(select(vec3<bool>(false, var_1.a, true), vec3<bool>(var_1.a, false, false), vec3<bool>(var_1.a, false, false)), vec3<bool>(true, true, false), false)), false), vec3<bool>(!select(var_0.x, false, var_0.x) && true, var_0.x, !var_1.a || true), !(!(!(-115f >= var_1.c))));
    var var_4 = firstTrailingBit(var_1.b);
    return Struct_1(!(!all(vec2<bool>(false, var_1.a))), -_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(21401i, 2147483647i, 44773i), vec3<i32>(var_4.x, global0.x, global0.x)), vec3<i32>(min(var_4.x, var_1.b.x), 17559i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), global0.wx))), _wgslsmith_f_op_f32(f32(-1f) * -604f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = ~17548u;
    var_1 = 4294967295u;
    var var_2 = firstLeadingBit(~4979u);
    var_2 = _wgslsmith_clamp_u32(~1u, func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.c)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.c, var_0.c))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(551f, 441f))), 1u, func_1()), ~abs(max(abs(6369u), select(4294967295u, 60094u, var_0.a))));
    var var_3 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c - -1274f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1261f))), _wgslsmith_f_op_f32(-var_0.c), select(94736u, ~_wgslsmith_mod_u32(6857u, max(34694u, 87992u)), var_0.a));
}

