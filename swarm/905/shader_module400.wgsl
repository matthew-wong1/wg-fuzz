struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(0u, i32(-2147483648), false, Struct_1(true, vec3<bool>(false, true, false), vec2<i32>(0i, -44615i)));

var<private> global1: vec2<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32) -> vec4<i32> {
    let var_0 = vec3<i32>(1i, ~(abs(select(global0.b, 2147483647i, global0.d.b.x)) | u_input.a.x), -(~(~u_input.d) << ((~1u ^ ~global1.x) % 32u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(abs(arg_0))) + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1120f - arg_0)))) + arg_0);
    global0 = Struct_3(firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a, global0.a), u_input.c, u_input.e.zx), vec2<u32>(global1.x, global0.a)), _wgslsmith_add_u32(abs(global0.a), reverseBits(global1.x)))), u_input.a.x, select(global0.a > 15089u, !global0.c, all(global0.d.b)), global0.d);
    global0 = Struct_3(0u, var_0.x, global0.d.b.x, global0.d);
    global1 = ~(vec2<u32>(~(~global0.a), 1u) >> (u_input.e.zz % vec2<u32>(32u)));
    return firstTrailingBit(-vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, var_0.x), u_input.a), -2147483647i, u_input.d, select(global0.b, -var_0.x, global0.d.b.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = -14817i;
    var var_1 = -(~func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1013f), _wgslsmith_f_op_f32(f32(-1f) * -729f))));
    global0 = Struct_3(firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.e, vec3<u32>(59810u, u_input.b.x, 3473u)), ~(~vec3<u32>(global1.x, global0.a, 0u)))), ~_wgslsmith_dot_vec2_i32(func_3(223f).xw | var_1.ww, vec2<i32>(var_1.x & u_input.d, ~17928i)), (global0.c & false) || !select(any(vec3<bool>(global0.c, false, false)), global0.d.a, global0.c), Struct_1(true, global0.d.b, global0.d.c));
    global1 = vec2<u32>(~_wgslsmith_div_u32(u_input.b.x, _wgslsmith_add_u32(4294967295u, u_input.b.x)), global0.a);
    let var_2 = u_input.e.x;
    return Struct_1(true, global0.d.b, -global0.d.c);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: f32) -> Struct_3 {
    global1 = u_input.e.yz;
    var var_0 = Struct_2(Struct_1(true, vec3<bool>(_wgslsmith_f_op_f32(arg_2 - 180f) <= 1381f, all(vec4<bool>(true, false, true, false)), true || (false | arg_1)), reverseBits(-global0.d.c >> (u_input.e.yx % vec2<u32>(32u)))), func_2(), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2)) * _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(abs(-160f))) * _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(604f, arg_2, true)))))));
    let var_1 = Struct_3(1u, abs(_wgslsmith_mod_i32(max(65693i, var_0.b.c.x) | -var_0.b.c.x, var_0.b.c.x)), all(vec3<bool>(firstTrailingBit(14668u) < ~1u, false, all(vec3<bool>(false, global0.c, var_0.a.a)))), Struct_1(!(u_input.c.x <= 1u), var_0.a.b, global0.d.c));
    let var_2 = arg_2;
    var var_3 = Struct_2(func_2(), Struct_1(all(vec4<bool>(false, var_0.b.b.x, true, arg_1)) && any(select(vec2<bool>(true, false), vec2<bool>(arg_1, arg_1), global0.c)), !select(!var_1.d.b, !vec3<bool>(var_1.c, false, true), var_1.d.b), vec2<i32>(-1i) * -var_1.d.c), var_0.c);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(~1u, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1046f)))))));
    global0 = Struct_3(max(u_input.b.x, ~(~min(global1.x, global0.a))), -1i, !global0.c, Struct_1(global0.c, !global0.d.b, reverseBits(vec2<i32>(-18965i, -1i) ^ func_2().c)));
    global1 = u_input.c;
    global1 = vec2<u32>(firstLeadingBit(0u), _wgslsmith_mod_u32(17925u, select(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 0u) << (vec2<u32>(global1.x, 9578u) % vec2<u32>(32u)), select(vec2<u32>(global0.a, global1.x), vec2<u32>(u_input.e.x, global1.x), false)), u_input.c.x ^ global1.x, global0.d.b.x)));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 578f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1045f, 552f)), _wgslsmith_f_op_f32(f32(-1f) * -277f)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(739f, -955f), -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(683f, -1380f)) * _wgslsmith_f_op_f32(254f - 527f))))) - _wgslsmith_f_op_f32(-1f));
    global1 = vec2<u32>(_wgslsmith_mult_u32(global0.a, ~8419u), _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_add_u32(global0.a, ~18624u)), _wgslsmith_sub_u32(32237u, firstLeadingBit(~55786u))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1941f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(510f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(511f))), -670f))), max(global0.d.c.x, ~_wgslsmith_div_i32(1i, func_2().c.x)), 54102u);
}

