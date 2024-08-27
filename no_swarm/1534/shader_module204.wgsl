struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(1000f, -607f));

var<private> global1: array<vec3<f32>, 29>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(951f, 1538f, global0.a.x)))))) * _wgslsmith_div_vec3_f32(vec3<f32>(1555f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -975f)), global1[_wgslsmith_index_u32(1u, 29u)])), _wgslsmith_f_op_vec3_f32(round(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), vec3<u32>(arg_0.x, 1u, arg_0.x)), arg_0.x & arg_0.x), 29u)]))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-1957f + _wgslsmith_f_op_f32(-global0.a.x))) - var_0.zx));
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(0u, 4294967295u >> (0u % 32u)))))));
    let var_1 = var_0;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1298f + 326f))) * 1813f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(reverseBits(vec2<u32>(24331u, 1u)))).x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a.x * 680f))))), _wgslsmith_f_op_f32(480f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(var_1.a.x + 1264f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a.x - 284f), var_0.a.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1118f, 451f), -1215f)))));
    let var_3 = ~(~abs(vec4<u32>(1u, 1u, 1u, 1u)));
    var_2 = global1[_wgslsmith_index_u32(var_3.x, 29u)];
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2343f, _wgslsmith_f_op_f32(max(1090f, var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, _wgslsmith_div_f32(1000f, -746f)))));
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_2());
    var var_1 = Struct_1(global0.a);
    let var_2 = -arg_0;
    let var_3 = true;
    var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_2()).zy))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(0u, 9229u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a - vec2<f32>(789f, -1701f))), select(vec2<bool>(false, var_3), select(vec2<bool>(var_3, false), vec2<bool>(true, var_3), vec2<bool>(true, var_3)), var_3)))));
    return 35216u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.a.x, -777f))));
    let var_1 = -_wgslsmith_mod_vec2_i32(vec2<i32>(38436i, -u_input.a.x), ~_wgslsmith_add_vec2_i32(u_input.a.yz, ~vec2<i32>(-1i, -1i)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x * -886f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(1000f - -1390f))), _wgslsmith_f_op_f32(var_0.a.x - -1385f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -1260f)) * global0.a.x)), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1517f)), 1f, all(vec2<bool>(true, false)))) + _wgslsmith_f_op_f32(1000f * 1f)));
    let var_3 = Struct_1(var_0.a);
    let var_4 = vec4<u32>(1u, max(4294967295u, 1u), 23419u, ~_wgslsmith_div_u32(~func_1(2147483647i), func_1(u_input.a.x)));
    global0 = var_3;
    var var_5 = any(vec4<bool>(any(vec4<bool>(false, false, true, true)) && true, true, false, !all(vec2<bool>(true, true))));
    let var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, ~_wgslsmith_mult_u32(var_4.x, var_4.x)), ~(-vec2<i32>(abs(1i), reverseBits(-2142i))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(var_0.a, _wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(var_4.x, var_4.x) & var_4.zw)), any(vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_vec2_f32(-var_2.xz))), _wgslsmith_dot_vec4_u32(vec4<u32>(~(~0u), 64120u, _wgslsmith_mult_u32(49102u, var_4.x) | reverseBits(25240u), 19698u), ~max(~vec4<u32>(2990u, 0u, var_4.x, var_4.x), select(var_4, vec4<u32>(var_4.x, var_4.x, var_4.x, 4294967295u), true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1052f)), all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)))))));
}

