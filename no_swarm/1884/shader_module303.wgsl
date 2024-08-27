struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    global0 = Struct_3(0u, _wgslsmith_div_i32(1i, max(u_input.d.x, global0.b)));
    global0 = Struct_3(global0.a, 14294i);
    global0 = Struct_3(~52734u, max(_wgslsmith_sub_i32(-2147483647i, firstTrailingBit(57554i)), global0.b));
    let var_0 = Struct_2(u_input.d.x);
    let var_1 = select(!select(_wgslsmith_dot_vec2_i32(u_input.b.ww, u_input.d.wy) <= (i32(-1i) * -2147483647i), !all(vec2<bool>(false, true)), false), !all(vec2<bool>(all(vec3<bool>(true, true, true)), true)), false);
    return 0u;
}

fn func_2() -> Struct_1 {
    global0 = Struct_3(4294967295u, _wgslsmith_mod_i32(-_wgslsmith_add_i32(global0.b, -23125i), -1i));
    var var_0 = true;
    return Struct_1(func_3(), ~(~(-_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(-1i, u_input.d.x, global0.b, global0.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1239f + -695f), _wgslsmith_f_op_f32(abs(700f)), _wgslsmith_f_op_f32(min(984f, -1543f))) * vec3<f32>(-674f, _wgslsmith_f_op_f32(684f + -767f), 1f)) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1273f, 531f) - vec3<f32>(-2088f, -342f, -1112f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-281f, 192f, 199f), vec3<f32>(1423f, 1308f, -451f), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(314f, 264f, 263f)))), u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_3 {
    global0 = Struct_3(u_input.c, global0.b);
    let var_0 = _wgslsmith_dot_vec4_u32(abs(~(~(~vec4<u32>(global0.a, u_input.c, 58200u, u_input.c)))), ~reverseBits(~(vec4<u32>(arg_0.a, global0.a, 37480u, 35724u) & vec4<u32>(global0.a, 18490u, 1u, 46711u))));
    var var_1 = _wgslsmith_mod_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, var_0, global0.a), vec4<u32>(global0.a, arg_0.a, 1u, arg_0.a) >> (vec4<u32>(39937u, global0.a, 0u, 60994u) % vec4<u32>(32u))) | firstLeadingBit(min(vec4<u32>(u_input.c, u_input.a.x, var_0, 44976u), vec4<u32>(50077u, u_input.a.x, 46988u, global0.a)))), vec4<u32>(arg_0.a, global0.a, 4294967295u, _wgslsmith_add_u32(_wgslsmith_sub_u32(func_2().a, 99716u >> (global0.a % 32u)), 1u)));
    var var_2 = vec4<i32>(2147483647i, ~_wgslsmith_dot_vec3_i32(func_2().d.yzw, _wgslsmith_clamp_vec3_i32(abs(u_input.d.yyx), vec3<i32>(global0.b, u_input.b.x, arg_0.b.x) | vec3<i32>(21640i, 0i, -10579i), arg_0.b.xxw)), _wgslsmith_dot_vec2_i32(u_input.d.xx << (min(select(u_input.a, u_input.a, true), abs(u_input.a)) % vec2<u32>(32u)), abs(vec2<i32>(global0.b, global0.b))), _wgslsmith_sub_i32(u_input.d.x ^ (~global0.b >> (0u % 32u)), ~arg_0.d.x));
    let var_3 = Struct_4(arg_0, _wgslsmith_mult_vec4_i32(arg_0.d, min(vec4<i32>(-arg_0.d.x, global0.b, 31226i, i32(-1i) * -1i), vec4<i32>(u_input.b.x, var_2.x, -1i | u_input.b.x, -arg_0.b.x))), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), ~arg_0.b.x < var_2.x), arg_1.x);
    return Struct_3(max(~51701u, ~(global0.a ^ global0.a)), ~(-6917i));
}

fn func_1(arg_0: vec4<u32>) -> StorageBuffer {
    global0 = func_4(func_2(), vec2<f32>(-928f, func_2().c.x));
    var var_0 = 58832u;
    let var_1 = vec4<bool>(any(vec3<bool>(true, any(vec4<bool>(false, true, false, true)), !(45818u < u_input.a.x))), all(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), true, true & any(vec4<bool>(true, true, true, false)))), _wgslsmith_mod_i32(2147483647i, max(global0.b, -1i)) == global0.b, true);
    global0 = func_4(func_2(), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-510f, 1131f) * vec2<f32>(2238f, 488f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -590f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1427f, 1000f)) + vec2<f32>(-1161f, -1431f))))));
    var var_2 = Struct_2(~reverseBits(-2147483647i));
    return StorageBuffer(-u_input.d.x, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(abs(_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.a.x, 4294967295u, 85667u, 0u), vec4<u32>(u_input.c, global0.a, u_input.a.x, u_input.a.x), vec4<bool>(false, false, false, true)), _wgslsmith_add_vec4_u32(vec4<u32>(14960u, global0.a, 0u, 4294967295u), vec4<u32>(8654u, u_input.a.x, 115220u, 0u))) & abs(~vec4<u32>(global0.a, global0.a, 32325u, 65487u))));
}

