struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 13>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global2: i32 = 2079i;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> vec3<bool> {
    let var_0 = true;
    var var_1 = u_input.b;
    var var_2 = i32(-1i) * -(~(~u_input.a.x));
    var_1 = u_input.b;
    var var_3 = ~select(vec2<u32>(u_input.b, u_input.b & u_input.b), countOneBits(global0[_wgslsmith_index_u32(~u_input.b, 13u)]), select(!global1.wz, vec2<bool>(true, var_0), !select(vec2<bool>(false, global1.x), vec2<bool>(false, false), true)));
    return !(!select(!vec3<bool>(var_0, var_0, var_0), select(select(vec3<bool>(true, true, global1.x), global1.yzy, var_0), select(vec3<bool>(global1.x, false, false), vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, false, var_0)), !var_0), true));
}

fn func_3() -> vec2<f32> {
    let var_0 = vec3<bool>(true, true, any(vec3<bool>(!(!global1.x), all(!vec3<bool>(true, global1.x, true)), global1.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -932f), -591f) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-844f, 1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-618f, 719f) - vec2<f32>(-1000f, 653f))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1633f, -1028f) + vec2<f32>(-1553f, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), false))));
    var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1227f, var_1.x) * vec2<f32>(680f, var_1.x))), vec2<f32>(_wgslsmith_f_op_f32(min(217f, var_1.x)), _wgslsmith_f_op_f32(floor(255f))), true)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(332f, -1353f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(163f, 1000f))), any(vec2<bool>(false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x + var_1.x))), var_1.x))), ~1i, global1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1217f, var_1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - vec2<f32>(-742f, var_1.x)))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -781f))))));
    let var_3 = _wgslsmith_mod_vec4_u32(~abs(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b)) >> (select(vec4<u32>(28920u, u_input.b, ~8608u, ~1u), firstLeadingBit(vec4<u32>(6006u, 85642u, u_input.b, u_input.b) >> (vec4<u32>(29096u, 61050u, u_input.b, 42330u) % vec4<u32>(32u))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, var_0.x, true, false), vec4<bool>(false, var_0.x, false, var_0.x)), global1.x)) % vec4<u32>(32u)), ~vec4<u32>(u_input.b << (_wgslsmith_div_u32(u_input.b, 31280u) % 32u), 0u, u_input.b, ~4294967295u));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1233f, var_2.b)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.b, var_1.x)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1035f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x)))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(var_2.a))))));
}

fn func_2(arg_0: bool) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_3()))), -525f, u_input.a.x, global1.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(733f, 575f)), _wgslsmith_f_op_f32(170f - 1212f)) * _wgslsmith_div_vec2_f32(vec2<f32>(654f, -677f), vec2<f32>(1f, 1f))))));
    global0 = array<vec2<u32>, 13>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(177f * var_0.e.x), var_0.e.x, true)), _wgslsmith_f_op_f32(-var_0.a.x)), global1.wy)));
    var_0 = Struct_1(var_0.e, _wgslsmith_f_op_f32(-var_0.b), -abs(var_0.c >> (firstLeadingBit(u_input.b) % 32u)), var_0.c <= u_input.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.a, vec2<f32>(-1746f, var_0.e.x), global1.x))))));
    let var_2 = all(vec4<bool>(false, true, true, func_1().x)) || all(select(global1.wxx, !(!vec3<bool>(global1.x, true, true)), arg_0));
    return global1.wxz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = select(func_1(), global1.xxz, func_2(any(!global1.zzx) & func_1().x));
    var var_2 = !(!global1.xyz);
    global1 = !vec4<bool>(global1.x, select(true, var_2.x, !global1.x), !all(select(vec4<bool>(true, var_2.x, var_1.x, true), vec4<bool>(global1.x, false, false, false), false)), var_1.x);
    let var_3 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(746f, 406f) - vec2<f32>(917f, 1149f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(485f, -606f) + vec2<f32>(-563f, 707f)), vec2<bool>(true, true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(897f, 794f), vec2<f32>(-1368f, -618f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-497f, -1572f), vec2<f32>(187f, 1646f))))), vec2<f32>(-1091f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(977f)), _wgslsmith_f_op_f32(abs(-363f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-657f)), _wgslsmith_div_f32(573f, -1721f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -286f)))))), _wgslsmith_dot_vec2_i32(vec2<i32>(~abs(u_input.c.x), -2147483647i), vec2<i32>(max(-u_input.a.x, var_0.x), abs(var_0.x))), global1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-730f, 1280f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(196f, -1038f), vec2<f32>(-355f, 418f), vec2<bool>(global1.x, true)))) * vec2<f32>(_wgslsmith_f_op_f32(199f * -166f), _wgslsmith_f_op_f32(f32(-1f) * -1521f)))));
    var var_4 = all(vec3<bool>(false, func_2(var_1.x).x, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-897f)), ~u_input.a, i32(-1i) * -countOneBits(u_input.a.x), select(-_wgslsmith_add_vec4_i32(vec4<i32>(var_3.c, 2147483647i, -2147483647i, 1i), vec4<i32>(u_input.a.x, var_0.x, -1i, var_0.x)), ~select(vec4<i32>(65696i, 2147483647i, var_3.c, var_0.x), vec4<i32>(-17058i, u_input.c.x, u_input.c.x, var_3.c), vec4<bool>(var_2.x, global1.x, var_2.x, global1.x)), vec4<bool>(true, any(vec3<bool>(global1.x, true, false)), func_2(false).x, var_1.x)) ^ -vec4<i32>(-2147483647i << (u_input.b % 32u), i32(-1i) * -1i, -34820i, u_input.c.x & 1i), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(729f, 736f, var_3.e.x)))))))));
}

