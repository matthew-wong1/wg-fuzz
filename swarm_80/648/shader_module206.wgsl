struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<bool, 20> = array<bool, 20>(false, false, false, true, true, true, true, false, true, false, false, true, false, true, false, false, false, false, true, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1() -> u32 {
    global1 = array<bool, 20>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(557f)), _wgslsmith_f_op_f32(766f + 1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1048f)), _wgslsmith_f_op_f32(134f - -1134f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -475f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(416f, 421f, 696f), vec3<f32>(-2307f, 833f, -354f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-431f, -1020f, 1094f) - vec3<f32>(349f, -690f, 1565f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(430f, 378f, -1058f))))))));
    var var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(abs(u_input.a)), 14u)];
    var_1 = Struct_1(~(vec3<u32>(var_1.a.x << (u_input.a % 32u), 1u, u_input.a) | var_1.a), _wgslsmith_div_f32(1768f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1641f - var_0.x)))))), 488f, var_1.e, vec4<bool>(var_1.d.x, any(vec3<bool>(true, true, true)), all(select(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(119203u, 20u)], var_1.e.x, false), var_1.e, !global1[_wgslsmith_index_u32(32236u, 20u)])), !global1[_wgslsmith_index_u32(25001u, 20u)]));
    let var_2 = ~var_1.a.zz;
    return u_input.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec2<f32> {
    var var_0 = all(vec3<bool>(true, true, true));
    var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 20u)];
    var var_1 = _wgslsmith_f_op_f32(1000f + 1f);
    global1 = array<bool, 20>();
    let var_2 = _wgslsmith_div_i32(-1i, 2147483647i);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c))) - _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(exp2(arg_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, 511f)), !(!arg_0.e.x)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(min(arg_1, arg_1), 14u)];
    global0 = array<Struct_1, 14>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(871f, -668f), vec2<f32>(var_0.b, 163f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, -482f) * vec2<f32>(-1229f, -1315f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, -863f)), vec2<bool>(global1[_wgslsmith_index_u32(26664u, 20u)], true)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(var_0.a, -338f, 945f, var_0.e, var_0.e), global0[_wgslsmith_index_u32(1u, 14u)], 42091u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(293f, var_0.c), vec2<f32>(var_0.c, var_0.b))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-751f, 1871f) + vec2<f32>(109f, 983f)))))));
    let var_2 = Struct_1(vec3<u32>(~1u, arg_1, 1u) ^ var_0.a, _wgslsmith_f_op_f32(sign(var_1.x)), var_1.x, var_0.d, !select(vec4<bool>(arg_2.x, var_0.d.x, false, global1[_wgslsmith_index_u32(4294967295u, 20u)]), var_0.d, select(var_0.d, select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 20u)], true, var_0.d.x, global1[_wgslsmith_index_u32(arg_1, 20u)]), vec4<bool>(var_0.e.x, global1[_wgslsmith_index_u32(var_0.a.x, 20u)], arg_2.x, true), true), false && arg_2.x)));
    var var_3 = !any(var_0.d);
    return Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(var_2.a, vec3<u32>(arg_1, u_input.a, var_0.a.x) | ~vec3<u32>(4294967295u, 39189u, var_0.a.x)), ~countOneBits(~vec3<u32>(u_input.a, arg_1, var_0.a.x))), _wgslsmith_div_f32(var_2.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-363f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, var_2.b, var_2.d.x)) * -369f))), 1f, vec4<bool>(!var_2.d.x, true, any(vec3<bool>(!var_2.e.x, true, var_2.d.x & var_0.d.x)), false), !(!vec4<bool>(all(vec2<bool>(true, var_0.d.x)), 506f >= var_1.x, true && var_0.e.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 14>();
    var var_0 = !select(vec2<bool>(true, true), !(!select(vec2<bool>(global1[_wgslsmith_index_u32(52377u, 20u)], true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 20u)], false), vec2<bool>(false, false))), global1[_wgslsmith_index_u32(func_1(), 20u)] != (_wgslsmith_sub_u32(u_input.a, u_input.a) <= ~1u));
    global0 = array<Struct_1, 14>();
    global1 = array<bool, 20>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, _wgslsmith_clamp_u32(~u_input.a & ~u_input.a, u_input.a, _wgslsmith_div_u32(firstLeadingBit(33790u), u_input.a))) >> (~(~u_input.a) % 32u), 14u)];
    let var_2 = firstTrailingBit(-countOneBits(vec3<i32>(-44856i, 1844i, -29352i)) ^ vec3<i32>(_wgslsmith_add_i32(69029i, -57935i), firstLeadingBit(-8621i), firstTrailingBit(2147483647i))) << (~((~vec3<u32>(var_1.a.x, u_input.a, 38833u) << (_wgslsmith_mod_vec3_u32(vec3<u32>(71624u, 45736u, u_input.a), var_1.a) % vec3<u32>(32u))) | abs(var_1.a)) % vec3<u32>(32u));
    var var_3 = func_2(var_2.xy, max(u_input.a, var_1.a.x), var_1.e.yz);
    var var_4 = var_1.d;
    var var_5 = global0[_wgslsmith_index_u32(~49929u, 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(2259f, var_3.c, ~var_1.a);
}

