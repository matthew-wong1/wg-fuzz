struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> bool {
    let var_0 = Struct_2(arg_1, ~vec4<u32>(arg_0.x, arg_1.a.x >> (~1716u % 32u), _wgslsmith_clamp_u32(arg_1.a.x, 114094u, arg_0.x), ~1u), arg_1, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1390f, _wgslsmith_f_op_f32(1477f - -1811f), -107f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-277f, 1213f, 955f) * vec3<f32>(-1033f, -347f, -880f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-860f)), -145f, _wgslsmith_f_op_f32(trunc(700f)), _wgslsmith_f_op_f32(var_0.d.x - var_0.d.x)))));
    var var_2 = -1i;
    var_2 = u_input.a.x;
    let var_3 = _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-var_0.d.x)));
    return select(!any(select(select(vec2<bool>(arg_2, true), vec2<bool>(true, true), arg_2), vec2<bool>(arg_2, arg_2), !vec2<bool>(arg_2, arg_2))), arg_2 | true, all(vec3<bool>(false, true, !all(vec2<bool>(arg_2, true)))));
}

fn func_2() -> f32 {
    let var_0 = all(select(vec2<bool>(func_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(13612u, 68104u, 6128u), vec3<u32>(40932u, 1u, 0u), vec3<u32>(1u, 68488u, 38526u)), Struct_1(vec2<u32>(1u, 16893u)), true, firstTrailingBit(0u)), (u_input.a.x == -1i) || true), !vec2<bool>(all(vec3<bool>(false, true, true)), select(false, true, true)), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, true), true)));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(332f * _wgslsmith_div_f32(184f, 156f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1306f, 1359f, true)))))))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2069f - -117f) + _wgslsmith_f_op_f32(max(-443f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-106f + 375f) + _wgslsmith_f_op_f32(f32(-1f) * -1622f))))));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-973f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, 139f)), _wgslsmith_f_op_f32(-782f * -1245f))) - 2471f), _wgslsmith_f_op_f32(-818f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2280f), _wgslsmith_f_op_f32(f32(-1f) * -389f)))))));
    let var_3 = ~1u;
    return var_2;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -169f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2()))));
    let var_1 = _wgslsmith_mod_vec2_i32(firstLeadingBit(-arg_1.wx), ~(-_wgslsmith_mult_vec2_i32(~arg_1.xw, u_input.a.yx)));
    var var_2 = abs(-u_input.a);
    var_2 = ~vec4<i32>(var_2.x, _wgslsmith_mod_i32(64005i, -(~42388i)), 0i | _wgslsmith_clamp_i32(abs(var_2.x), -45861i, arg_0), abs(var_2.x));
    var var_3 = -2147483647i;
    return Struct_1(vec2<u32>(reverseBits(1u), firstTrailingBit(27223u)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec3<i32>) -> StorageBuffer {
    var var_0 = func_1(u_input.a.x, ~vec4<i32>(_wgslsmith_mult_i32(-91722i, 0i), -2147483647i, u_input.a.x, abs(-arg_2.x)));
    var var_1 = 577f;
    var var_2 = func_1(-2147483647i, -u_input.a);
    let var_3 = 1u;
    var var_4 = arg_0;
    return StorageBuffer(-u_input.a.x, ~(~var_4.b.ywx), ~max(~(vec2<i32>(-2147483647i, u_input.a.x) >> (vec2<u32>(30909u, var_2.a.x) % vec2<u32>(32u))), ~select(vec2<i32>(4461i, 2147483647i), u_input.a.xx, true)), _wgslsmith_clamp_vec4_u32(~(~(~var_4.b)), reverseBits(~var_4.b) >> (arg_0.b % vec4<u32>(32u)), arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(1u, _wgslsmith_div_u32(0u, _wgslsmith_div_u32(~0u, min(85642u, 285u))), 1u & (0u | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 15331u), vec3<u32>(54606u, 0u, 51289u))));
    var var_1 = _wgslsmith_add_u32(~reverseBits(var_0.x), var_0.x) >> (~var_0.x % 32u);
    var var_2 = ~1u;
    var_1 = ~1u;
    var_2 = min(var_0.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.x, var_0.x), var_0.x));
    let var_3 = var_0.x;
    var_1 = 1u;
    var_1 = 18510u;
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-169f))));
    let x = u_input.a;
    s_output = func_4(Struct_2(Struct_1(max(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 32494u), vec2<u32>(var_3, 4101u)), vec2<u32>(1u, var_3))), vec4<u32>(1u, firstLeadingBit(4294967295u), 64459u, ~1u), func_1(firstTrailingBit(14633i), ~vec4<i32>(u_input.a.x, -74609i, -46850i, u_input.a.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1615f + -503f)), var_4, var_4)), reverseBits(vec2<u32>(var_3, ~func_1(u_input.a.x, vec4<i32>(1i, 36201i, -42633i, u_input.a.x)).a.x)), ((-u_input.a.wyx >> (vec3<u32>(4294967295u, 4294967295u, 19549u) % vec3<u32>(32u))) | u_input.a.xwy) ^ ~(~firstTrailingBit(u_input.a.zxz)));
}

