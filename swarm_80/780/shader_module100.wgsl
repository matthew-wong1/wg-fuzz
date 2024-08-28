struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_2,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 20>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -952f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-109f)) + _wgslsmith_f_op_f32(f32(-1f) * -716f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-869f, -1000f) * -532f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-506f)), 312f))))));
    let var_1 = all(vec4<bool>(all(vec2<bool>(true, true)), true, true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1032f))))));
    let var_2 = Struct_4(Struct_1(select(!select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), false), vec2<bool>(!var_1, var_1), !select(vec2<bool>(true, var_1), vec2<bool>(false, true), vec2<bool>(false, true))), _wgslsmith_clamp_u32(~u_input.b.x, u_input.b.x, 26808u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(230f, 773f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(727f, 526f))), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2141f))), -(u_input.a << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))), ~_wgslsmith_sub_vec3_i32(u_input.a.zww, select(vec3<i32>(u_input.a.x, 2147483647i, -49149i), vec3<i32>(u_input.a.x, -37444i, u_input.a.x), false)) & ~min(vec3<i32>(0i, u_input.a.x, 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 36087i, 3426i), u_input.a.xzy)));
    let var_3 = Struct_3(0u, Struct_2(vec3<bool>(select(any(vec2<bool>(var_1, true)), var_1, false || var_1), !any(var_2.a.a), _wgslsmith_f_op_f32(trunc(var_2.b.x)) > _wgslsmith_div_f32(var_2.b.x, 1717f)), !(!var_1 | (var_1 | true))), firstTrailingBit(-(_wgslsmith_div_i32(-5847i, 9681i) >> ((4294967295u << (u_input.b.x % 32u)) % 32u))));
    return var_1;
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_2(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), false), (_wgslsmith_dot_vec3_u32(u_input.b.wzz, ~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)) << ((0u << (u_input.b.x % 32u)) % 32u)) < u_input.b.x);
    let var_1 = var_0.b;
    global0 = array<vec4<bool>, 20>();
    var var_2 = u_input.b.zx;
    let var_3 = Struct_2(select(vec3<bool>(var_0.b, true, var_0.a.x), select(var_0.a, !var_0.a, vec3<bool>(func_3(), all(vec2<bool>(var_0.b, true)), !var_0.a.x)), !all(var_0.a)), var_0.a.x | all(var_0.a));
    return _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2336f, _wgslsmith_f_op_f32(ceil(-827f)), any(global0[_wgslsmith_index_u32(var_2.x, 20u)]))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(192f + 1178f)))), -1190f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-840f - 858f), 1349f)))), 1974f)));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 654f, -1000f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1544f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-1261f)), _wgslsmith_f_op_f32(min(1609f, -1747f)), _wgslsmith_f_op_f32(386f + 147f), _wgslsmith_div_f32(1000f, -236f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-389f, _wgslsmith_f_op_f32(-621f - _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -295f) * _wgslsmith_f_op_f32(ceil(1081f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1125f, var_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -962f))), var_0.x) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_2()))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-186f - 1789f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2()).x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, arg_0)) - _wgslsmith_f_op_f32(var_0.x + var_0.x)))));
    let var_1 = Struct_2(select(select(select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, true, arg_0), !vec3<bool>(arg_0, arg_0, true)), !select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, false)), any(vec3<bool>(arg_0, arg_0, arg_0)) | (arg_0 & arg_0)), !vec3<bool>(all(vec2<bool>(arg_0, arg_0)), arg_0, all(vec2<bool>(false, false))), any(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, arg_0, arg_0), arg_0)) | (select(u_input.a.x, -49505i, true) > -37033i)), arg_0);
    var var_2 = Struct_4(Struct_1(vec2<bool>(!(u_input.b.x != 11210u), true), 34810u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(249f * _wgslsmith_f_op_f32(-var_0.x))), -479f), 1188f, _wgslsmith_div_vec4_i32(u_input.a, -select(vec4<i32>(-1i, -387i, u_input.a.x, -1i), u_input.a, vec4<bool>(false, true, false, arg_0))), u_input.a.wyw);
    return -944f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(0u, u_input.b.x);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true))) * 289f), -331f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-861f - _wgslsmith_f_op_f32(f32(-1f) * -1485f))) - _wgslsmith_f_op_f32(min(-655f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(360f, 739f))))));
    var var_2 = u_input.b.x;
    var var_3 = ~vec4<u32>(~65026u, ~_wgslsmith_dot_vec4_u32(~u_input.b, ~vec4<u32>(u_input.b.x, 25203u, u_input.b.x, 0u)), _wgslsmith_mult_u32(u_input.b.x | 17004u, ~4294967295u) >> (_wgslsmith_sub_u32(select(4294967295u, 29625u, false), 7613u) % 32u), ~u_input.b.x);
    var_0 = ~_wgslsmith_add_u32(11788u, abs(_wgslsmith_dot_vec2_u32(u_input.b.xw, vec2<u32>(30681u, u_input.b.x)) ^ 1u));
    var var_4 = ~abs(1u);
    var var_5 = any(!select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, false, func_3(), func_3())));
    var var_6 = Struct_3(4294967295u, Struct_2(vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true)) | true), -67749i | max(~u_input.a.x, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(258f, u_input.b.x, -1874f, u_input.a);
}

