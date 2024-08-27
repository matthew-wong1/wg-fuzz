struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>) -> vec4<bool> {
    let var_0 = vec3<bool>(any(!vec3<bool>(select(false, false, false), true, true)), true, false);
    global0 = arg_0.x;
    var var_1 = max(_wgslsmith_clamp_i32(43623i, 32613i, u_input.b.x), 0i);
    var_1 = u_input.a.x;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-351f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(898f - 150f) + _wgslsmith_div_f32(-717f, 1755f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-701f - -429f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(915f, 175f)))))), !(!(!vec2<bool>(var_0.x, true))), vec4<bool>(true, all(var_0), var_0.x, all(vec3<bool>(u_input.b.x != -8321i, any(var_0), var_0.x && false))));
    return select(!vec4<bool>(any(vec4<bool>(var_2.d.x, var_2.d.x, false, false)), var_2.c.x, select(var_2.d.x, all(vec2<bool>(true, var_2.c.x)), u_input.b.x < u_input.a.x), select(true, true, var_0.x) & false), vec4<bool>(!any(!var_0), var_0.x, var_2.c.x, !var_2.d.x), select(!vec4<bool>(any(vec4<bool>(var_0.x, var_2.c.x, true, false)), all(vec3<bool>(true, false, var_2.d.x)), true, any(vec2<bool>(false, false))), vec4<bool>(any(vec4<bool>(var_2.d.x, true, var_2.d.x, var_2.c.x)), false, true, var_0.x), false));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: i32, arg_3: vec3<u32>) -> bool {
    let var_0 = Struct_1(-479f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -796f)), 1449f, any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -990f)))), vec2<bool>(false, false || all(vec3<bool>(false, false, true))), select(func_3(vec2<u32>(0u, arg_3.x) << (~vec2<u32>(43628u, 16370u) % vec2<u32>(32u))), select(func_3(firstLeadingBit(vec2<u32>(arg_3.x, arg_3.x))), vec4<bool>(true, true, all(vec2<bool>(false, true)), true), all(vec4<bool>(true, true, true, true))), !vec4<bool>(true, any(vec3<bool>(false, false, true)), all(vec4<bool>(false, false, true, false)), true)));
    let var_1 = var_0;
    var var_2 = true;
    var_2 = all(vec3<bool>(!any(select(vec2<bool>(var_1.c.x, true), var_1.d.zw, var_1.d.x)), !(_wgslsmith_f_op_f32(select(-432f, var_1.a, var_0.d.x)) > -1000f), var_1.c.x && (any(var_1.d.zyz) || var_0.d.x)));
    var var_3 = var_0;
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -943f) - _wgslsmith_f_op_f32(sign(-123f)))) < _wgslsmith_f_op_f32(trunc(-1556f)), true);
    global0 = 12969u;
    let var_1 = true;
    let var_2 = Struct_1(_wgslsmith_div_f32(-1340f, _wgslsmith_f_op_f32(-1181f - _wgslsmith_f_op_f32(min(-1026f, _wgslsmith_f_op_f32(max(-501f, 1614f)))))), -855f, select(!var_0, !select(var_0, select(var_0, var_0, var_0), var_1 && true), var_0.x), vec4<bool>(!var_1 || true, func_2(-1000f, _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.yy, vec2<i32>(u_input.a.x, u_input.b.x)), u_input.b.zx & vec2<i32>(-61247i, u_input.a.x)), -2244i, firstLeadingBit(max(vec3<u32>(4294967295u, 1u, 74957u), vec3<u32>(89075u, 62078u, 36212u)))), true, !(u_input.b.x < ~0i)));
    return var_2;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> i32 {
    global0 = max(_wgslsmith_mult_u32(~(~arg_3.x), arg_3.x), ~arg_3.x & arg_3.x);
    let var_0 = func_1();
    global0 = arg_3.x;
    global0 = arg_3.x;
    let var_1 = ~vec4<u32>(_wgslsmith_add_u32(reverseBits(arg_3.x >> (arg_3.x % 32u)), 0u), ~arg_3.x, ~firstLeadingBit(_wgslsmith_add_u32(0u, arg_3.x)), arg_3.x);
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -547f)), func_1(), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(777f)) * _wgslsmith_div_f32(-375f, -251f))), 615f, func_1().d.ww, func_1().d), vec4<u32>(~(~1u), reverseBits(1u), _wgslsmith_div_u32(4294967295u, 1u), 4294967295u));
    global0 = ~0u;
    global0 = 4294967295u;
    global0 = _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(11134u, 1812u))), _wgslsmith_clamp_vec2_u32(min(firstTrailingBit(vec2<u32>(78436u, 0u)), vec2<u32>(47326u, 34959u)), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(48094u, 1u))), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 85727u), select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(33119u, 39517u), vec2<bool>(false, true))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-482f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -655f)), -1482f), vec2<bool>(func_2(_wgslsmith_f_op_f32(round(124f)), _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(var_0, 14269i)), firstTrailingBit(vec2<i32>(u_input.a.x, -2147483647i))), -1i, ~vec3<u32>(75889u, 34498u, 0u)), false), vec4<bool>(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, 1i) != _wgslsmith_dot_vec3_i32(abs(u_input.b), vec3<i32>(var_0, -15794i, -1i)), true, true, false));
    var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(1476f, -713f), vec2<f32>(var_1.a, var_1.b)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, 1772f), vec2<f32>(-1269f, var_1.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(select(vec2<u32>(50706u, 2689u), vec2<u32>(4294967295u, 4294967295u), false), vec2<u32>(82476u, 66322u)), vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(min(var_2.x, -1639f))))) + 381f), vec4<u32>(1u, 1u, 1u, 1u), -2147483647i);
}

