struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 53645i;

var<private> global1: Struct_1;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d.x | -8190i, 0i >> (u_input.b.x % 32u)), ~firstLeadingBit(~u_input.d.yz));
    return Struct_1(vec4<f32>(global1.a.x, -470f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global1.a.x)))), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * -257f) - _wgslsmith_f_op_f32(global1.a.x * 404f)))), vec3<u32>(~global1.c, abs(4294967295u), _wgslsmith_dot_vec2_u32(max(u_input.a.yz, u_input.b.yz) & _wgslsmith_div_vec2_u32(vec2<u32>(global1.b.x, u_input.a.x), u_input.a.yy), vec2<u32>(u_input.b.x, _wgslsmith_mod_u32(16281u, global1.c)))), ~(~(5468u | ~global1.c)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    global1 = arg_1;
    var var_0 = arg_1.b;
    global1 = arg_1;
    var var_1 = false;
    var_0 = global1.b;
    return -1i;
}

fn func_1(arg_0: vec2<f32>) -> vec3<u32> {
    global0 = u_input.d.x;
    let var_0 = min(vec3<u32>(1u, firstTrailingBit(firstLeadingBit(27182u)), global1.b.x), ~vec3<u32>(27796u, _wgslsmith_mod_u32(0u, global1.b.x), u_input.b.x) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(15862u, global1.c, global1.b.x), u_input.b, global1.b & select(u_input.b, vec3<u32>(41148u, u_input.a.x, global1.b.x), true)) % vec3<u32>(32u)));
    let var_1 = 91461i;
    let var_2 = vec4<bool>(true, true, !any(vec4<bool>(true, true, true, true)), true);
    global0 = -func_3(arg_0, func_2(var_2.x, _wgslsmith_div_vec3_f32(vec3<f32>(1205f, 1105f, -1660f), global1.a.xyw)), ~(-(~vec4<i32>(-1i, u_input.c, 8168i, var_1))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    global1 = Struct_1(vec4<f32>(global1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -344f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * 869f))), 230f, -375f), ~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.b.x, global1.c, global1.c)), global1.b), vec3<u32>(u_input.b.x, 1u, 0u) | ~global1.b), ~select(4294967295u, 0u, -2147483647i < var_0));
    global1 = Struct_1(global1.a, ~u_input.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(func_1(_wgslsmith_f_op_vec2_f32(max(global1.a.xy, global1.a.yw))), ~(~vec3<u32>(u_input.b.x, 0u, 1u))), ~(_wgslsmith_mult_u32(u_input.a.x, global1.c) >> (0u % 32u))));
    let var_1 = func_2(true, global1.a.zwx);
    let var_2 = !(!(all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))) && true));
    let var_3 = var_1;
    var var_4 = var_2;
    var var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global1.a, _wgslsmith_f_op_vec4_f32(var_3.a + vec4<f32>(927f, var_3.a.x, 1609f, -2773f)))))), var_3.b, 1u);
    let var_6 = !vec3<bool>(var_2, select(false, 1u <= var_3.c, !(var_5.a.x >= -510f)), select(false, all(!vec4<bool>(var_2, false, var_2, false)), false));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_3.a.wy)) * var_5.a.zx));
}

