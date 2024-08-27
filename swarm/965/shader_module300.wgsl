struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_3(Struct_2(Struct_1(true, vec4<bool>(true, true, true, true), vec2<bool>(true, true)), any(vec2<bool>(true, true)), ~vec2<u32>(12378u, ~1u)), 4294967295u, Struct_2(Struct_1(any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)), vec2<bool>(true, true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec2<u32>(u_input.d << (u_input.a.x % 32u), _wgslsmith_div_u32(u_input.d, 15050u)) >> (~(~vec2<u32>(0u, u_input.a.x)) % vec2<u32>(32u))));
    let var_1 = var_0.c.a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1224f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1013f * 127f), _wgslsmith_f_op_f32(abs(929f))))) + -387f) - _wgslsmith_f_op_f32(f32(-1f) * -592f));
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1670f, 361f), vec2<f32>(1985f, -489f))), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -618f), vec2<f32>(-381f, 1387f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1104f, 180f))), vec2<f32>(1329f, 715f)))))));
    var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_f_op_f32(var_3.x * -392f))), var_3.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3.x, var_3.x))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-227f, var_3.x)), vec2<f32>(-364f, var_3.x)))))));
    return ~u_input.a.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> i32 {
    var var_0 = ~(~select(select(vec3<u32>(u_input.a.x, u_input.a.x, u_input.d), vec3<u32>(24973u, u_input.a.x, 4294967295u), any(vec3<bool>(false, true, false))), vec3<u32>(firstLeadingBit(u_input.a.x), min(9362u, u_input.a.x), func_3()), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false))));
    let var_1 = true;
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
    let var_4 = _wgslsmith_f_op_f32(-arg_1);
    return 0i;
}

fn func_1(arg_0: f32) -> vec3<f32> {
    let var_0 = firstLeadingBit(u_input.c);
    var var_1 = !vec4<bool>(!(func_2(vec4<i32>(var_0, -16439i, var_0, var_0), -824f) >= 1i), !(_wgslsmith_mult_i32(u_input.b.x, -2147483647i) >= -49796i), true, (var_0 & -6137i) >= max(_wgslsmith_sub_i32(var_0, u_input.e.x), countOneBits(var_0)));
    var var_2 = _wgslsmith_mult_i32(u_input.c, -41i) < 28226i;
    var_1 = vec4<bool>(any(vec4<bool>(false, select(true, false, true), false, _wgslsmith_mod_i32(var_0, -2147483647i) == _wgslsmith_div_i32(u_input.b.x, -30391i))), arg_0 == arg_0, !(!(_wgslsmith_f_op_f32(-arg_0) == _wgslsmith_f_op_f32(ceil(-1104f)))), !all(vec4<bool>(arg_0 <= arg_0, select(var_1.x, var_1.x, var_1.x), any(vec3<bool>(var_1.x, var_1.x, true)), true)));
    var var_3 = -max(-vec3<i32>(var_0, var_0, ~var_0), vec3<i32>(u_input.b.x, firstLeadingBit(~var_0), 22711i));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-851f + _wgslsmith_f_op_f32(arg_0 + -244f)), _wgslsmith_f_op_f32(f32(-1f) * -933f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) * arg_0)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(arg_0, 1508f)) * vec3<f32>(_wgslsmith_f_op_f32(step(arg_0, arg_0)), _wgslsmith_f_op_f32(step(1000f, arg_0)), 1777f))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: u32) -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(true, select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true)), 1i == _wgslsmith_dot_vec2_i32(u_input.b, u_input.b)), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), false))), true, vec2<u32>(u_input.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, arg_1.x, 51187u) >> (vec3<u32>(u_input.d, 51167u, arg_0.x) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(arg_0.x, 1u, 21074u))) % 32u), u_input.d));
    var var_1 = min(38025u << (countOneBits(var_0.c.x) % 32u), arg_0.x);
    var var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, (~arg_0.x ^ 50531u) | max(arg_0.x, arg_1.x), arg_0.x), vec4<u32>(0u, ~var_0.c.x ^ ~arg_1.x, ~_wgslsmith_add_u32(1u, u_input.a.x), 4294967295u));
    let var_3 = var_0;
    var var_4 = ~arg_1.x;
    return _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-1280f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - arg_2.x) * _wgslsmith_f_op_f32(min(-268f, arg_2.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1(-864f)).x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -525f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1195f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-339f, -1431f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(106f, -471f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-695f, 882f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-756f + -169f))), -1179f)));
    var var_2 = u_input.d;
    var var_3 = ~vec2<i32>(-7495i, -2147483647i);
    var_1 = _wgslsmith_f_op_vec2_f32(func_4(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(1u, abs(u_input.a.x), 1u, 19127u), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.a.x, u_input.a.x, u_input.d), vec4<u32>(u_input.d, 863u, 0u, 91356u)), vec4<u32>(u_input.a.x, 0u, 46594u, u_input.a.x) & vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.d)))), select(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.d, u_input.d, u_input.a.x, u_input.d), vec4<u32>(u_input.a.x, 34087u, 3120u, u_input.a.x)) | _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.a.x, u_input.d, 100454u), vec4<u32>(58045u, u_input.a.x, 1u, u_input.d))), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(4343u, u_input.a.x, u_input.a.x, u_input.d)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(51629u, 2305u, u_input.a.x, u_input.d)), vec4<u32>(u_input.d, 1u, u_input.d, u_input.a.x)), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 16682u), vec4<u32>(u_input.d, 0u, u_input.a.x, u_input.d)))), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(var_1.x)))), _wgslsmith_mod_u32(reverseBits(abs(_wgslsmith_add_u32(u_input.d, u_input.a.x))), ~u_input.a.x)));
    var_3 = vec2<i32>(5642i, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.e.x, firstTrailingBit(var_3.x), max(-1i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-24156i, 0i), u_input.c, _wgslsmith_sub_i32(-1i, var_3.x), ~(-1i)), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_3.x, u_input.b.x, u_input.e.x, u_input.c), vec4<i32>(-1i, var_3.x, u_input.c, -2147483647i)), reverseBits(vec4<i32>(var_3.x, u_input.e.x, -12269i, var_3.x))))));
}

