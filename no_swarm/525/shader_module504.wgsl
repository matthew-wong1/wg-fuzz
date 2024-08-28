struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1() -> Struct_1 {
    return Struct_1(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1373f, -101f))))))) - vec2<f32>(-1478f, 878f)), u_input.b.x);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> bool {
    let var_0 = -13666i;
    let var_1 = Struct_1(true, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.b.x, arg_1.b.x))), 1u);
    var var_2 = Struct_1(all(vec2<bool>(any(!vec3<bool>(true, arg_1.a, var_1.a)), any(vec3<bool>(true, var_1.a, var_1.a)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.b.x, -283f))), _wgslsmith_mod_u32(49075u, 1u << (~var_1.c % 32u)));
    let var_3 = true;
    var_2 = var_1;
    return true;
}

fn func_2() -> f32 {
    var var_0 = ~126379u;
    let var_1 = ~(~u_input.b.www);
    var_0 = u_input.b.x;
    var var_2 = ~u_input.b.xz;
    var var_3 = select(select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), func_3(-1i, Struct_1(false, vec2<f32>(-171f, -535f), 0u))), vec2<bool>(true, true), max(var_2.x, 4294967295u) != ~var_1.x), vec2<bool>(true, true), true), vec2<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -199f));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool, arg_3: bool) -> vec4<i32> {
    let var_0 = vec2<i32>(firstTrailingBit(~u_input.a), select(arg_1.x, -2147483647i, false));
    let var_1 = vec4<bool>(any(select(select(select(vec4<bool>(true, arg_2, true, arg_2), vec4<bool>(arg_0.a, arg_2, true, arg_0.a), true), !vec4<bool>(arg_2, false, arg_3, arg_0.a), select(vec4<bool>(false, arg_0.a, true, arg_0.a), vec4<bool>(arg_2, arg_2, false, false), vec4<bool>(arg_0.a, arg_2, arg_3, true))), vec4<bool>(false != arg_0.a, !arg_3, arg_0.a, false), false)), true, true, select(false, arg_0.a, arg_2));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-26043i, -2147483647i & max(-2147483647i << (arg_0.c % 32u), var_0.x)), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-13772i, arg_1.x), select(arg_1, vec2<i32>(arg_1.x, -1i), arg_2)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 1i, -2147483647i), vec3<i32>(71179i, arg_1.x, -1i)), 2615i)));
    let var_3 = vec2<i32>(22459i, 2147483647i);
    var_2 = u_input.a;
    return max(min(select(firstTrailingBit(vec4<i32>(arg_1.x, 1i, 1i, 1i)), abs(vec4<i32>(var_3.x, arg_1.x, arg_1.x, var_0.x)), false), _wgslsmith_mod_vec4_i32(firstLeadingBit(select(vec4<i32>(arg_1.x, 0i, var_3.x, u_input.a), vec4<i32>(9105i, var_0.x, -1i, 0i), var_1)), countOneBits(abs(vec4<i32>(0i, u_input.a, -21374i, -1i))))), ~_wgslsmith_div_vec4_i32(firstLeadingBit(~vec4<i32>(var_0.x, var_3.x, u_input.a, -1i)), min(abs(vec4<i32>(var_0.x, -14701i, -2147483647i, 0i)), vec4<i32>(var_3.x, 1i, 9045i, -39230i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = ~2880u;
    var var_2 = func_1();
    let var_3 = _wgslsmith_f_op_f32(-var_2.b.x);
    let var_4 = var_2.b;
    var_0 = u_input.b.x;
    var var_5 = _wgslsmith_clamp_vec4_i32(func_4(func_1(), abs(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, u_input.a)))), _wgslsmith_f_op_f32(func_2()) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_4.x))), any(select(select(vec4<bool>(var_2.a, true, true, false), vec4<bool>(false, false, var_2.a, var_2.a), vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.a)), vec4<bool>(true, true, true, true), select(vec4<bool>(var_2.a, var_2.a, var_2.a, false), vec4<bool>(var_2.a, true, var_2.a, false), vec4<bool>(true, false, var_2.a, var_2.a))))), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(func_4(Struct_1(false, var_2.b, var_2.c), vec2<i32>(1i, u_input.a), true, true), vec4<i32>(u_input.a, 2147483647i, 0i, 1i)) ^ firstTrailingBit(~vec4<i32>(1i, -1i, u_input.a, u_input.a)), firstLeadingBit(~vec4<i32>(29140i, u_input.a, -1i, u_input.a))), -select(vec4<i32>(2147483647i | u_input.a, u_input.a, u_input.a << (u_input.b.x % 32u), min(u_input.a, u_input.a)), abs(vec4<i32>(u_input.a, -41757i, u_input.a, u_input.a)), vec4<bool>(false, select(var_2.a, false, true), var_2.a, !var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, var_5.x);
}

