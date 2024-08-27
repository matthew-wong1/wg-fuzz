struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0.a;
    global0 = select(all(vec3<bool>(true, false, true)) & all(vec2<bool>(true, true)), !any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))) && true, true);
    global0 = _wgslsmith_f_op_f32(-arg_0.c.x) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), 933f));
    var var_1 = vec2<bool>(!all(vec2<bool>(true, true)), ~u_input.e.x >= 33007u);
    var_1 = vec2<bool>(var_1.x, false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x) - -1046f))), -478f)));
}

fn func_2(arg_0: i32) -> vec3<bool> {
    let var_0 = 552f;
    let var_1 = Struct_1(4294967295u, 16002i, vec3<f32>(var_0, _wgslsmith_f_op_f32(591f - _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(1u | u_input.e.x, 16u)]))), -234f));
    let var_2 = var_1;
    var var_3 = ~_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(-var_1.b, ~max(var_1.b, var_1.b), arg_0));
    var var_4 = vec4<i32>(max(u_input.b, _wgslsmith_mod_i32(38380i, _wgslsmith_add_i32(0i, var_2.b))) << (abs(24004u ^ var_1.a) % 32u), 109879i, ~abs(-48945i), (-20680i << (~u_input.c % 32u)) & var_1.b);
    return !(!vec3<bool>(any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, false)), false));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global0 = any(!(!func_2(0i)));
    var var_0 = u_input.d;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.c.zx + vec2<f32>(-505f, 750f)), _wgslsmith_f_op_vec2_f32(floor(arg_0.c.yx))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.c.x, -142f), vec2<f32>(1424f, 461f))))))) - vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-305f - arg_0.c.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-857f * arg_0.c.x))))));
    var var_2 = vec3<bool>(u_input.a < 18543i, !any(vec2<bool>(false, true)), arg_0.c.x != var_1.x);
    let var_3 = var_0.x;
    return global1[_wgslsmith_index_u32(abs(23901u), 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global1 = array<Struct_1, 16>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-648f, -256f, -900f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-647f, -940f, -1514f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1078f, -445f) + vec3<f32>(-786f, -626f, -586f)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2272f * 1184f))), -362f, 1655f)));
    var var_2 = Struct_1(u_input.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, ~(-u_input.a), ~45223i), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.d.x, u_input.b, u_input.d.x, -31154i) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.b, -4575i), vec4<i32>(-22173i, 2147483647i, u_input.b, 0i)), vec4<i32>(u_input.d.x, -54198i, u_input.b, 1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-612f, var_1.x, 228f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2593f, -567f, var_1.x)))))));
    var_2 = Struct_1(19955u, _wgslsmith_sub_i32(~var_2.b, abs(_wgslsmith_mult_i32(u_input.b, _wgslsmith_add_i32(43775i, var_2.b)))), _wgslsmith_f_op_vec3_f32(var_2.c + vec3<f32>(1f, var_1.x, var_1.x)));
    let var_3 = var_1.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(var_2.c * vec3<f32>(_wgslsmith_f_op_f32(round(569f)), 789f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -580f))));
    var var_5 = u_input.d.xz;
    var var_6 = func_1(global1[_wgslsmith_index_u32(var_2.a, 16u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -363f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.c.x)) - 1541f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.zx);
}

