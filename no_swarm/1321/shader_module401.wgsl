struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
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

var<private> global0: vec4<f32> = vec4<f32>(1000f, 1264f, 1000f, -1671f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> vec3<bool> {
    return vec3<bool>(true, true, true);
}

fn func_3() -> bool {
    global0 = vec4<f32>(-1055f, global0.x, 2573f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)), global0.x)), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-global0.x), any(func_1())))));
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(573f, -863f, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 286f, global0.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, 978f, -875f, 869f))))))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -1383f)), _wgslsmith_f_op_f32(trunc(154f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(max(-1555f, global0.x))), _wgslsmith_f_op_f32(abs(-1499f))))), func_1().x));
    let var_0 = false;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-global0.x)))))), !(!(!vec4<bool>(false, var_0, var_0, var_0))), firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.c.x, 1i), vec3<i32>(u_input.c.x, u_input.a.x, u_input.a.x)) | ~u_input.c.x, -2147483647i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global0.x, -493f)), global0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(round(-168f)), !var_0)))), !select(var_0, !var_0, false || var_0))), vec4<bool>(select(var_0, any(!vec4<bool>(var_0, true, var_0, false)), !var_0), !any(select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), true)), select(true, func_1().x, any(vec4<bool>(false, false, var_0, true)) || (u_input.a.x > -441i)), true));
    var_1 = Struct_1(149f, select(select(!select(vec4<bool>(true, true, var_1.b.x, true), vec4<bool>(true, var_0, true, true), var_0), select(vec4<bool>(true, var_1.e.x, false, true), var_1.e, var_1.b.x), !(!vec4<bool>(var_1.b.x, var_1.b.x, false, var_1.b.x))), !(!(!vec4<bool>(var_1.b.x, true, var_1.e.x, true))), vec4<bool>(!all(vec4<bool>(true, true, false, var_1.b.x)), true, var_0, (-14127i << (u_input.b % 32u)) > countOneBits(-1i))), var_1.c & _wgslsmith_sub_vec2_i32(u_input.a, (var_1.c & u_input.c.zx) ^ reverseBits(u_input.a)), var_1.a, select(!var_1.e, select(var_1.e, var_1.e, var_1.e), var_1.e));
    return false;
}

fn func_2() -> vec3<bool> {
    var var_0 = any(vec3<bool>(true, true, true));
    var var_1 = vec4<bool>(!any(vec2<bool>(true, true)), select(1i < (i32(-1i) * -u_input.a.x), select(false, any(vec3<bool>(false, true, true)), all(vec4<bool>(true, true, true, true))), true), false, true);
    var_0 = func_1().x;
    var_0 = true;
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, -2181f), _wgslsmith_f_op_f32(-global0.x))), -1208f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))), -270f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, global0.x, -1000f, global0.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, global0.x, 719f))))))));
    return !vec3<bool>(func_3(), !all(vec2<bool>(var_1.x, false)) != true, select(true, true, func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = !vec3<bool>(!all(select(var_0.zy, var_0.zy, true)), any(func_2()) || !func_2().x, true);
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(global0.x, global0.x)), _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(-global0.x), global0.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, global0.x, 1000f, -418f))))));
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -751f, 718f) + vec4<f32>(666f, -393f, global0.x, global0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(global0.x, 2153f, global0.x, global0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 641f, -1700f, 292f) + vec4<f32>(1735f, global0.x, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 404f, -227f, 646f)), vec4<f32>(1107f, global0.x, 1000f, 1000f))))))));
    let var_1 = ~firstTrailingBit(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b, u_input.b, 4294967295u)), ~vec3<u32>(u_input.b, 1u, u_input.b)) ^ vec3<u32>(4294967295u, min(u_input.b, u_input.b), 0u));
    var_0 = !vec3<bool>(func_3(), true, (_wgslsmith_clamp_i32(u_input.a.x, u_input.c.x, u_input.a.x) >= ~67272i) || true);
    var_0 = !(!(!select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(true, var_0.x, var_0.x), var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(var_1.x, 0u, 4294967295u | var_1.x, u_input.b ^ u_input.b) << (vec4<u32>(_wgslsmith_mod_u32(14005u, 4294967295u), ~1u, u_input.b, u_input.b) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32((vec4<u32>(var_1.x, 33012u, 77035u, u_input.b) << (vec4<u32>(15914u, 28647u, 4294967295u, u_input.b) % vec4<u32>(32u))) ^ select(vec4<u32>(var_1.x, 34969u, 29180u, 56817u), vec4<u32>(1u, u_input.b, u_input.b, u_input.b), true), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_1.x, u_input.b, 0u), vec4<u32>(u_input.b, 0u, u_input.b, 25404u)) | vec4<u32>(24441u, 0u, 22360u, u_input.b)), vec4<bool>(all(func_2()), var_0.x, 4294967295u == max(0u, var_1.x), false)));
}

