struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: bool,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec4<u32>) -> u32 {
    let var_0 = -2147483647i;
    let var_1 = Struct_2(~(-arg_1.yz), !(!select(select(vec3<bool>(arg_2.d.x, arg_2.b.x, arg_2.e.x), arg_2.a.a, arg_2.a.a), vec3<bool>(true, true, true), !arg_2.a.a.x)), var_0, vec3<i32>(arg_1.x, 43730i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 20945i, 2147483647i), vec3<i32>(var_0, arg_1.x, -49248i)), -56614i, -u_input.c.x), vec4<i32>(1i, 2147483647i, ~21092i, -var_0))), arg_3.xw);
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(159f)) * _wgslsmith_f_op_f32(round(1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1039f))))));
    let var_3 = (vec3<u32>(~_wgslsmith_mod_u32(arg_0.x, 4294967295u), 1u, _wgslsmith_sub_u32(arg_2.c.x & arg_0.x, countOneBits(36679u))) & select(vec3<u32>(0u, 4294967295u, ~u_input.d.x), u_input.a, arg_2.a.a)) ^ ~((select(vec3<u32>(var_1.e.x, var_1.e.x, u_input.d.x), vec3<u32>(u_input.d.x, u_input.a.x, 1u), vec3<bool>(arg_2.d.x, var_1.b.x, arg_2.b.x)) >> (reverseBits(arg_2.c.yyz) % vec3<u32>(32u))) | vec3<u32>(_wgslsmith_sub_u32(33936u, 1u), arg_0.x ^ 4294967295u, arg_3.x));
    var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.x)) - -128f), 1720f), 1860f);
    return ~var_1.e.x;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2583f);
    let var_1 = Struct_4(!vec4<bool>(!(-3589i > u_input.b.x), true, all(select(vec4<bool>(true, arg_0.b.x, arg_0.b.x, arg_2), vec4<bool>(false, false, arg_2, false), vec4<bool>(arg_2, true, false, arg_0.b.x))), arg_2), Struct_3(Struct_1(vec3<bool>(all(arg_0.b), arg_2, arg_2)), arg_0.b.zz, vec4<u32>(~func_3(vec4<u32>(26816u, arg_1, arg_0.e.x, 33587u), vec3<i32>(u_input.b.x, u_input.b.x, -6001i), Struct_3(Struct_1(vec3<bool>(arg_2, arg_2, arg_0.b.x)), vec2<bool>(true, false), vec4<u32>(u_input.d.x, 1u, 1u, 32050u), vec2<bool>(arg_2, true), vec2<bool>(arg_2, true)), vec4<u32>(0u, 1u, arg_1, 32206u)), arg_0.e.x, arg_0.e.x | arg_1, ~1u), !(!arg_0.b.xy), select(select(!arg_0.b.zx, !vec2<bool>(arg_0.b.x, true), select(arg_0.b.yy, vec2<bool>(true, arg_2), vec2<bool>(arg_0.b.x, arg_2))), vec2<bool>(!arg_2, all(arg_0.b.yz)), _wgslsmith_f_op_f32(-var_0) <= _wgslsmith_f_op_f32(trunc(-1283f)))), arg_2, _wgslsmith_f_op_f32(946f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0))) + _wgslsmith_f_op_f32(trunc(var_0)))), arg_0.c & countOneBits(8337i));
    var var_2 = Struct_2(min(~vec2<i32>(abs(arg_0.c), ~u_input.b.x), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(u_input.c.x, -1i)), -arg_0.a), firstTrailingBit(u_input.c.wx | arg_0.d.yy))), !vec3<bool>(true | arg_2, true, var_1.e < 1i), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(reverseBits(arg_0.a) | vec2<i32>(-2147483647i, 0i), arg_0.a), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 15611i, 0i), arg_0.d)), vec3<i32>(arg_0.c, firstLeadingBit(~var_1.e), _wgslsmith_div_i32(u_input.c.x, 0i)), vec2<u32>(arg_0.e.x, arg_1));
    let var_3 = var_1.b.c.yww;
    var var_4 = Struct_1(var_2.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_1.d))))))));
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-630f, -1000f, -2453f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(302f, 503f, 1567f) * vec3<f32>(-1139f, 179f, -131f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, -682f, var_0.x))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(vec2<i32>(u_input.c.x, u_input.c.x), vec3<bool>(false, arg_0.a.x, false), u_input.b.x, u_input.c.zwz, vec2<u32>(4294967295u, 11506u)), u_input.a.x, true)) - _wgslsmith_f_op_f32(max(1130f, var_0.x))) - _wgslsmith_f_op_f32(select(545f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(286f, -219f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) * 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -692f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, var_0.x, 1000f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, 186f, var_0.x)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-990f, var_0.x, -1897f)))));
    var var_1 = u_input.a.x;
    var_1 = u_input.a.x;
    return ~u_input.d.x >= _wgslsmith_div_u32(u_input.d.x, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true))), select(vec4<bool>(-2147483647i <= u_input.c.x, true, any(vec3<bool>(true, false, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), true), vec4<bool>(true, all(vec4<bool>(true, true, false, false)), all(vec2<bool>(true, true)), false)), select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, all(vec2<bool>(true, true))), vec4<bool>(true, any(vec4<bool>(true, true, false, false)), true, true)), !vec4<bool>(true, all(vec3<bool>(false, true, true)), func_1(Struct_1(vec3<bool>(true, false, false))), true), vec4<bool>(true, any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), false)), !(u_input.d.x != 1443u), (1i | u_input.b.x) != u_input.c.x)), false);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_add_i32(u_input.b.x, abs(~(-1i))), abs(u_input.b.x ^ u_input.c.x) & ~u_input.c.x, 7356i, firstLeadingBit(_wgslsmith_mod_i32(2147483647i, reverseBits(u_input.b.x)))), u_input.c.xz, ~(~u_input.d.x));
}

