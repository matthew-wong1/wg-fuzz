struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_1;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: Struct_1 = Struct_1(vec3<bool>(false, true, false), 15816u);

var<private> global4: array<vec3<i32>, 17>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(vec3<bool>(true | (-935f <= _wgslsmith_f_op_f32(step(1829f, 1000f))), false, true), u_input.a.x);
    var var_1 = arg_0;
    global1 = arg_2;
    let var_2 = select(!vec4<bool>(false, true, !(0u < var_0.b), any(vec2<bool>(true, true))), !(!vec4<bool>(var_0.a.x, any(vec4<bool>(true, var_0.a.x, var_0.a.x, arg_1)), true, any(vec2<bool>(false, var_1.x)))), vec4<bool>(select(global2.x, any(vec2<bool>(true, arg_2.a.x)), true), all(vec4<bool>(1u <= global0.x, var_0.a.x, arg_1, !global1.a.x)), select(true, !(arg_2.a.x && global3.a.x), true), any(select(arg_2.a.zy, !vec2<bool>(global2.x, var_0.a.x), global2.x))));
    var var_3 = min(~vec2<i32>(1i, 1i), select(-min(vec2<i32>(7425i, -1i), vec2<i32>(18493i, -2147483647i)), vec2<i32>(firstTrailingBit(6271i) & 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(16765i, -1i), _wgslsmith_sub_vec2_i32(vec2<i32>(25945i, 0i), vec2<i32>(34330i, 0i)))), var_0.a.yz));
    return u_input.a;
}

fn func_2() -> vec4<u32> {
    var var_0 = vec2<u32>(abs(~global3.b | (_wgslsmith_mod_u32(global0.x, global0.x) & abs(3616u))), _wgslsmith_mult_u32(0u, 4294967295u ^ ~min(global1.b, global1.b)));
    let var_1 = var_0.x & ~(59772u >> (global3.b % 32u));
    var var_2 = Struct_1(select(vec3<bool>(global3.a.x, any(!vec3<bool>(global3.a.x, global3.a.x, true)), all(!vec3<bool>(global1.a.x, false, global2.x))), vec3<bool>(false && all(vec4<bool>(global3.a.x, true, false, true)), true, !any(vec2<bool>(global3.a.x, global3.a.x))), global1.a), max(min(firstLeadingBit(global0.x), 0u), _wgslsmith_add_u32(_wgslsmith_div_u32(global1.b, global0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.b, 11689u), vec2<u32>(0u, global0.x)))) << (global0.x % 32u));
    var var_3 = Struct_1(global3.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(abs(func_3(global1.a, false, Struct_1(vec3<bool>(var_2.a.x, global3.a.x, true), 93567u))), vec4<u32>(global1.b, func_3(var_2.a, false, Struct_1(vec3<bool>(true, global3.a.x, true), 4294967295u)).x, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(77309u, 0u, var_0.x, global3.b)), var_2.b)), var_0.x));
    let var_4 = Struct_1(vec3<bool>(true, true, false), _wgslsmith_mult_u32(var_1, ~1u));
    return firstLeadingBit(~vec4<u32>(firstTrailingBit(u_input.a.x | var_4.b), 0u, min(global1.b, ~u_input.a.x), 22645u));
}

fn func_1() -> f32 {
    let var_0 = ~(~vec4<i32>(-1i, -31587i, max(-1i, -2147483647i), _wgslsmith_add_i32(-1i, -5004i))) >> (~_wgslsmith_div_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-619f - 205f)) - _wgslsmith_f_op_f32(f32(-1f) * -696f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -632f)), _wgslsmith_f_op_f32(121f - _wgslsmith_f_op_f32(174f - 639f)), -3488f);
    var var_2 = 1692f;
    var var_3 = _wgslsmith_add_vec2_i32(~var_0.yy, var_0.yx);
    global0 = countOneBits(func_2());
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(806f * -1000f))))), 855f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-426f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1428f - 350f) - _wgslsmith_f_op_f32(-309f + 548f)), -519f, _wgslsmith_f_op_f32(-185f - -226f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1103f, _wgslsmith_f_op_f32(-1f), -1159f, 2169f) - vec4<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -971f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1617f)), _wgslsmith_f_op_f32(179f + 1556f)), _wgslsmith_f_op_f32(965f + -528f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1898f, -1376f))))), -vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 2147483647i), vec2<i32>(34102i, 81195i)), 1i, _wgslsmith_clamp_i32(~29256i, firstLeadingBit(49166i), _wgslsmith_sub_i32(-2147483647i, -1268i))), global0.yy);
}

