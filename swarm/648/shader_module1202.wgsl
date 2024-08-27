struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-25103i, -1i, -55040i, 37646i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    let var_0 = true;
    var var_1 = select(vec2<bool>(_wgslsmith_add_u32(102674u, u_input.b) == 44273u, true), vec2<bool>(true, 1i > global0.x), !(!vec2<bool>(all(vec3<bool>(var_0, var_0, true)), true)));
    var var_2 = select(u_input.b | u_input.b, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(0u, u_input.b, 55209u, u_input.b)), ~abs(vec4<u32>(u_input.c.x, 28152u, 6076u, u_input.c.x))), ~_wgslsmith_mod_u32(~u_input.a.x, 4294967295u)), any(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), false))));
    global0 = vec4<i32>(~global0.x, select(global0.x, -590i, false), i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(global0.xyx, vec3<i32>(-49683i, -2147483647i, global0.x)), global0.x, -7057i), ~global0.zzw)) | vec4<i32>(abs(abs(abs(-2147483647i))), firstLeadingBit(countOneBits(~global0.x)), max(global0.x ^ -14705i, _wgslsmith_add_i32(~11481i, 2147483647i)), global0.x);
    var_2 = ~((~u_input.b | ~_wgslsmith_sub_u32(0u, u_input.a.x)) & ~u_input.c.x);
    return select(select(vec4<bool>(true, select(var_0, all(vec2<bool>(var_0, var_0)), false), var_0, var_1.x), !vec4<bool>(var_0, true, true, true), (min(global0.x, global0.x) >> (~u_input.b % 32u)) >= -1i), select(select(!vec4<bool>(var_1.x, var_1.x, false, true), !(!vec4<bool>(var_0, false, true, true)), !(global0.x < global0.x)), select(select(select(vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, false, var_0, var_1.x)), select(vec4<bool>(var_1.x, true, false, var_0), vec4<bool>(true, var_0, true, var_0), vec4<bool>(var_0, var_1.x, var_1.x, var_1.x)), !vec4<bool>(false, true, var_1.x, var_0)), !(!vec4<bool>(var_0, var_1.x, false, true)), select(!vec4<bool>(false, false, var_0, var_0), select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(true, var_0, true, var_1.x), var_0), !var_0)), var_1.x), var_1.x || any(vec2<bool>(!var_1.x, false)));
}

fn func_2() -> vec4<i32> {
    var var_0 = global0.x;
    var var_1 = select(any(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), true))), !((u_input.c.x < 63406u) | any(vec3<bool>(false, false, true))) && all(vec4<bool>(true, true, true, global0.x <= 40737i)), true);
    var var_2 = all(func_3()) | (any(func_3().xy) || !any(vec2<bool>(true, false)));
    var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -195f);
    return ~vec4<i32>(global0.x, max(18684i, 15036i) << (0u % 32u), (1i << ((u_input.a.x & 2673u) % 32u)) | global0.x, global0.x);
}

fn func_1() -> vec2<i32> {
    global0 = -_wgslsmith_sub_vec4_i32(~abs(func_2()), ~select(vec4<i32>(global0.x, global0.x, global0.x, global0.x) | vec4<i32>(-1i, global0.x, global0.x, global0.x), vec4<i32>(0i, -51611i, global0.x, 0i), true));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(322f)));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(abs(var_0))));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -590f)));
    var var_3 = Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, any(vec3<bool>(false, false, true))), vec4<bool>(all(vec2<bool>(false, false)), false, true, global0.x >= -2147483647i)), select(vec4<bool>(false, all(vec2<bool>(false, false)), any(vec3<bool>(true, false, true)), true), func_3(), vec4<bool>(true, true, true, true)), false));
    return _wgslsmith_sub_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, global0.x), ~abs(vec2<i32>(global0.x, -61742i))), ~_wgslsmith_add_vec2_i32(-vec2<i32>(global0.x, 1763i), _wgslsmith_add_vec2_i32(global0.xz | vec2<i32>(-40599i, 1i), global0.yw)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 9875u;
    let var_1 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(select(func_1(), firstLeadingBit(vec2<i32>(global0.x, global0.x)), true), vec2<i32>(-_wgslsmith_add_i32(-4465i, -1i), 1i)), vec3<i32>(_wgslsmith_mult_i32(2147483647i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 4294967295u, 0u), u_input.c) % 32u), countOneBits(~var_1)), func_1().x, abs(_wgslsmith_mod_i32(abs(var_1), -1i ^ var_1))));
}

