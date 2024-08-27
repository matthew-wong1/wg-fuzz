struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-259f, -916f, -164f);

var<private> global1: vec2<bool>;

var<private> global2: vec2<i32>;

var<private> global3: Struct_1 = Struct_1(vec4<f32>(-1000f, -1364f, 1000f, -146f), vec3<bool>(true, true, false));

var<private> global4: array<i32, 27> = array<i32, 27>(2147483647i, -11296i, 0i, -70251i, 2147483647i, -16312i, 2147483647i, 15117i, 2147483647i, 22426i, 2147483647i, 13600i, -5878i, 1i, 2147483647i, -24782i, -52160i, 7901i, 5365i, -1i, 2488i, 11992i, i32(-2147483648), 38543i, -78608i, -1i, 21322i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = vec2<i32>(global2.x, (global4[_wgslsmith_index_u32(~u_input.a.x ^ 1u, 27u)] >> (u_input.a.x % 32u)) | abs(abs(global2.x)));
    let var_1 = u_input.a.x;
    global1 = vec2<bool>(global3.b.x, global3.a.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(max(global0.x, -1501f)), true))));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(global3.a.yz))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, -1083f, _wgslsmith_f_op_f32(ceil(-322f))), global3.a.zxx, !global1.x)));
    return _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-198f + global3.a.x)) - _wgslsmith_f_op_f32(round(-882f))));
}

fn func_2() -> Struct_1 {
    global0 = global3.a.xyx;
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(global3.a.x, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.a.x))))), global3.a.zyz);
    let var_0 = vec3<i32>(16642i, ~2147483647i, 32725i);
    global0 = global3.a.xwz;
    let var_1 = vec3<bool>(global1.x, !global1.x, false);
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(776f, global0.x))), _wgslsmith_f_op_f32(-1126f * _wgslsmith_f_op_f32(func_3())), -1194f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1854f - 1001f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -605f) + global0.x)))), global3.b);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> bool {
    var var_0 = -27672i;
    global4 = array<i32, 27>();
    let var_1 = Struct_2(func_2(), select(select(select(select(vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(true, global1.x, false, global3.b.x)), vec4<bool>(global1.x, global1.x, true, global3.b.x), global1.x), select(!vec4<bool>(global3.b.x, true, true, false), !vec4<bool>(global3.b.x, true, true, global3.b.x), !global1.x), !global1.x), select(select(vec4<bool>(true, global3.b.x, global3.b.x, false), vec4<bool>(global1.x, global3.b.x, false, global1.x), global3.b.x || global1.x), select(vec4<bool>(global1.x, true, true, false), !vec4<bool>(global1.x, global1.x, global3.b.x, true), all(vec4<bool>(global3.b.x, true, true, false))), u_input.b < _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_1.x, arg_1.x), vec3<u32>(80002u, 50858u, 20696u))), true));
    var var_2 = Struct_3(func_2().b, var_1.a);
    var var_3 = _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~arg_1.zx | arg_1.yy, arg_1.xx), min(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(5888u, arg_1.x), _wgslsmith_div_u32(arg_1.x, 12848u)), ~79043u), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.zz, vec2<u32>(4294967295u, 4294967295u)), ~vec2<u32>(0u, arg_1.x))));
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-360f, global3.a.x), global3.a.zw, true))), vec2<f32>(-406f, 1087f), func_1(177f, u_input.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1071f, 501f))) + vec2<f32>(816f, global0.x))))));
    var var_1 = Struct_2(Struct_1(func_2().a, global3.b), select(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, global3.b.x, global1.x, global1.x), vec4<bool>(global3.b.x, false, false, global1.x)), vec4<bool>(false, false, global1.x, false), select(vec4<bool>(true, global3.b.x, true, global3.b.x), vec4<bool>(global3.b.x, global3.b.x, global3.b.x, false), vec4<bool>(true, false, global1.x, false))), select(vec4<bool>(global3.b.x, true, global3.b.x, true), select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(false, true, false, global1.x), vec4<bool>(true, global3.b.x, true, global3.b.x)), all(vec2<bool>(true, true))), !global3.b.x), vec4<bool>(!(!global1.x), global3.b.x, global1.x, !(!global3.b.x)), false));
    let var_2 = var_1.b.zw;
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.a.xx) * vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_0.x)))), 1875f))));
    var var_4 = Struct_3(vec3<bool>(var_1.b.x, all(!select(global3.b, global3.b, vec3<bool>(var_2.x, global1.x, false))), global3.b.x & all(!var_1.a.b.xy)), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(~(~0u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2().a * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1518f, -1897f, var_3.x) * vec4<f32>(global0.x, 1000f, -306f, 170f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global3.a.x)), -747f, _wgslsmith_div_f32(global0.x, var_4.b.a.x), _wgslsmith_f_op_f32(trunc(var_1.a.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_4.b.a)))));
}

