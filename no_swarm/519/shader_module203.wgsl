struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(1u, select(~4294967295u, u_input.e.x, true) | ~u_input.b) & 107349u;
    let var_1 = Struct_1(-global0.a);
    return Struct_1(~7701i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    var var_0 = -738f;
    var var_1 = 1u;
    global0 = arg_0;
    let var_2 = Struct_1(max(-func_1().a, ~select(arg_1.a, arg_1.a, true) << (~1u % 32u)));
    return select(!vec3<bool>(any(vec4<bool>(true, true, true, true)), !(u_input.c.x < 24623u), (46545i < arg_1.a) || false), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), select(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), false), false);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = Struct_1(select(38159i, countOneBits(-1i), all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), false)) && !all(vec4<bool>(true, true, false, false))));
    var var_1 = arg_1;
    var_1 = Struct_1(~u_input.a);
    var var_2 = firstLeadingBit(~(var_0.a & _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, arg_1.a, global0.a), vec3<i32>(1i, var_0.a, arg_1.a), vec3<i32>(-46129i, 1i, 26393i)), abs(vec3<i32>(global0.a, 1i, var_1.a)))));
    global0 = func_1();
    return vec2<u32>(29222u, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-(~(vec3<i32>(-14702i, 2147483647i, 0i) << (vec3<u32>(u_input.c.x, 17405u, u_input.b) % vec3<u32>(32u)))) >> (select(u_input.e.wzx, ~(~vec3<u32>(u_input.d.x, u_input.d.x, u_input.e.x)), func_2(Struct_1(-2147483647i), func_1(), 1121f)) % vec3<u32>(32u)));
    let var_1 = var_0.yx << (_wgslsmith_mod_vec2_u32(~countOneBits(~u_input.e.ww), ~u_input.e.yz | _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(8235u, u_input.e.x)), vec2<u32>(1u, 12256u), func_3(u_input.b, Struct_1(81654i)))) % vec2<u32>(32u));
    let var_2 = func_1();
    var_0 = vec3<i32>(countOneBits(-24192i), 2147483647i, 54276i);
    var var_3 = 84842u;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_div_vec4_i32(-firstTrailingBit(vec4<i32>(var_1.x, -25908i, -41775i, var_0.x)), ~min(vec4<i32>(global0.a, 34093i, var_1.x, u_input.a), vec4<i32>(0i, 1i, var_0.x, var_2.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -145f) + _wgslsmith_div_f32(-216f, -412f)) - 1683f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-440f, -929f) * _wgslsmith_f_op_f32(max(1000f, -1703f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -799f) + _wgslsmith_f_op_f32(max(-837f, 659f))), _wgslsmith_f_op_f32(f32(-1f) * -1194f))), select(firstTrailingBit(vec3<i32>(var_1.x, var_1.x, var_2.a) | vec3<i32>(-39441i, 47398i, 2147483647i)), -(vec3<i32>(var_1.x, var_1.x, var_0.x) ^ vec3<i32>(24083i, -19768i, 5457i)), (u_input.b == u_input.d.x) || true) ^ min(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.a, u_input.a, -2147483647i) & vec3<i32>(u_input.a, global0.a, -18783i), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.a, var_0.x), vec3<i32>(23077i, var_2.a, 1i), vec3<i32>(-2147483647i, u_input.a, -2147483647i))), select(~vec3<i32>(var_1.x, 31921i, global0.a), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -54112i, global0.a), vec3<i32>(u_input.a, global0.a, u_input.a)), vec3<bool>(false, false, true))));
}

