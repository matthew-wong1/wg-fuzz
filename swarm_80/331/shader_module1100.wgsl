struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(868f, -2375f))), _wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1145f * arg_0.a.a)), _wgslsmith_f_op_f32(arg_0.a.a + -1000f))))));
    let var_0 = !all(vec3<bool>(true, true, true)) & true;
    var var_1 = 12329u;
    let var_2 = arg_1.x;
    return vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-872f * -159f), arg_0.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(521f)))));
}

fn func_2(arg_0: Struct_2) -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-207f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(arg_0.a), ~vec4<u32>(u_input.c.x, 4278u, 18609u, 63903u))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b, -466f))));
    var var_0 = !(!vec3<bool>(arg_0.a.c, false, !all(vec2<bool>(false, true))));
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.a.b, 253f), vec2<f32>(693f, global0.x))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), vec2<f32>(arg_0.a.a, -816f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.b, global0.x)), global0.x)), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(global0.x, -124f, true)), vec4<u32>(u_input.c.x, 1u, 4294967295u, u_input.c.x))).x, 859f)));
    let var_1 = vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(u_input.d.x, u_input.d.x), _wgslsmith_add_u32(u_input.d.x, 1u), ~0u >> (~(~1u) % 32u));
    var var_2 = 45010u;
    return !var_0.xy;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> vec2<f32> {
    var var_0 = all(select(func_2(Struct_2(Struct_1(2293f, arg_0.x, false))), func_2(Struct_2(arg_1)), arg_1.c));
    let var_1 = 69846i;
    let var_2 = _wgslsmith_dot_vec2_u32(select(u_input.c, _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(u_input.c.x, 0u)), vec2<u32>(u_input.c.x, u_input.c.x)), any(select(!vec4<bool>(arg_1.c, true, arg_1.c, arg_1.c), vec4<bool>(arg_1.c, arg_1.c, false, false), any(vec2<bool>(true, false))))), u_input.d.xx);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, 487f)) + _wgslsmith_f_op_vec2_f32(-arg_0))) + vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1.a)), _wgslsmith_f_op_f32(sign(arg_0.x)))) * vec2<f32>(1164f, _wgslsmith_f_op_f32(trunc(arg_1.b))));
    global0 = arg_0;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -651f))), 1246f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -993f)) + _wgslsmith_f_op_vec2_f32(func_1(vec2<f32>(global0.x, 150f), Struct_1(global0.x, 2158f, false), 49583u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(171f, _wgslsmith_f_op_f32(f32(-1f) * -861f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, 1382f), vec2<f32>(global0.x, global0.x))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, -1068f), vec2<f32>(-3038f, global0.x)), vec2<f32>(317f, 439f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, -1331f), vec2<f32>(-446f, global0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec2<f32>(-490f, global0.x), Struct_1(1297f, global0.x, false), 4294967295u)))))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1257f), _wgslsmith_f_op_f32(floor(443f)), all(vec2<bool>(!any(vec2<bool>(false, false)), any(vec3<bool>(true, true, true)))));
    var var_1 = true;
    var var_2 = ~vec3<u32>(~u_input.d.x, 440u, _wgslsmith_clamp_u32(59668u, reverseBits(min(4294967295u, u_input.c.x)), u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, max(firstLeadingBit(1i), -2147483647i), -32446i, vec2<u32>(_wgslsmith_add_u32(0u, 39856u), ~u_input.d.x));
}

