struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-799f, 1892f, -667f, 181f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-152f, 1317f, 1937f, 196f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1280f, -1216f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f))));
    var var_1 = (min(~_wgslsmith_clamp_vec4_u32(vec4<u32>(16687u, u_input.d, u_input.a.x, 12129u), vec4<u32>(9709u, 0u, 0u, u_input.d), vec4<u32>(u_input.a.x, u_input.d, u_input.d, u_input.d)), vec4<u32>(1u, 1u, 3366u, u_input.d)) & (vec4<u32>(66536u, _wgslsmith_div_u32(u_input.d, 4294967295u), _wgslsmith_add_u32(65338u, u_input.d), 4294967295u) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 16494u, u_input.d), min(vec4<u32>(u_input.d, u_input.a.x, 4294967295u, u_input.d), vec4<u32>(1698u, 82u, 47744u, 5783u))) % vec4<u32>(32u)))) << (firstTrailingBit(select(abs(vec4<u32>(0u, 0u, 4294967295u, 0u)), ~(~vec4<u32>(29085u, 8253u, u_input.d, 1u)), select(true, true, true))) % vec4<u32>(32u));
    var var_2 = -2147483647i;
    let var_3 = vec3<i32>(reverseBits(arg_0.x), arg_0.x, firstLeadingBit(-(u_input.b << (u_input.d % 32u)) ^ _wgslsmith_sub_i32(u_input.c, firstTrailingBit(arg_0.x))));
    return _wgslsmith_div_u32(u_input.d, _wgslsmith_dot_vec4_u32(~(min(vec4<u32>(u_input.a.x, u_input.d, u_input.a.x, var_1.x), vec4<u32>(var_1.x, var_1.x, 32714u, 0u)) >> (select(vec4<u32>(0u, u_input.a.x, u_input.d, 58214u), vec4<u32>(u_input.a.x, 49689u, 1u, u_input.a.x), true) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, var_1.x, var_1.x, 94679u) >> (vec4<u32>(0u, var_1.x, 2720u, 83995u) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, 4294967295u, u_input.d, u_input.d)), firstLeadingBit(~vec4<u32>(var_1.x, 61301u, 0u, var_1.x)), vec4<u32>(1u, ~1u, u_input.d, _wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.zz)))));
}

fn func_2(arg_0: vec2<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2690f, _wgslsmith_f_op_f32(-753f * 1370f), _wgslsmith_f_op_f32(-865f * 1000f)))));
    var var_1 = func_3(_wgslsmith_div_vec2_i32(select(_wgslsmith_sub_vec2_i32(u_input.e.zy, u_input.e.zy), vec2<i32>(u_input.c, -23286i), select(!arg_0, vec2<bool>(false, arg_0.x), true)), abs(u_input.e.xx)));
    let var_2 = ~(~func_3(u_input.e.xy));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(231f, 1000f))), 1271f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -641f)), -1534f))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<u32> {
    let var_0 = ~0u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(true, true)))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(476f + arg_0.a), 1297f, arg_1.a, _wgslsmith_f_op_f32(-arg_2.x))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, var_1.x, -265f, -824f)))))));
    let var_2 = ~vec4<u32>(u_input.d, 1u, 1u, (u_input.d & min(0u, var_0)) ^ firstTrailingBit(_wgslsmith_clamp_u32(u_input.d, u_input.d, u_input.d)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1856f - arg_2.x) - _wgslsmith_f_op_f32(f32(-1f) * -1528f)))), -378f)));
    return _wgslsmith_mult_vec3_u32(max(select(u_input.a | vec3<u32>(var_2.x, 4294967295u, 577u), ~u_input.a, true) | vec3<u32>(countOneBits(var_0), ~5325u, ~6152u), vec3<u32>(abs(func_3(u_input.e.zy)), var_0 | var_2.x, ~var_0)), ~((u_input.a ^ _wgslsmith_mult_vec3_u32(vec3<u32>(var_0, var_0, 1u), u_input.a)) & select(vec3<u32>(45340u, var_2.x, var_0), var_2.xwz, vec3<bool>(false, false, false))));
}

fn func_4(arg_0: vec3<u32>) -> vec4<bool> {
    let var_0 = vec3<bool>(!(!any(vec4<bool>(true, true, true, true))), true, all(!vec2<bool>(true, all(vec3<bool>(false, false, true)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1373f))) - -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1188f, _wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(false, false))).x, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -533f))) - -403f);
    let var_2 = vec2<i32>(-u_input.e.x, 16960i);
    var var_3 = ~countOneBits(_wgslsmith_sub_vec2_i32(~vec2<i32>(var_2.x, 2147483647i) | firstLeadingBit(u_input.e.yz), u_input.e.yz >> (select(arg_0.yz, vec2<u32>(u_input.d, arg_0.x), var_0.zz) % vec2<u32>(32u))));
    var_3 = ~(~vec2<i32>(2147483647i, -1i));
    return vec4<bool>(!(_wgslsmith_dot_vec2_u32(u_input.a.xy, ~arg_0.zy) <= arg_0.x), true, any(vec2<bool>(!var_0.x, var_0.x)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(func_4(func_1(Struct_1(-753f), Struct_1(-1000f), vec2<f32>(631f, 158f))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    var var_1 = -1i;
    var_0 = func_4(select(abs(vec3<u32>(1u, u_input.d, 26719u)) ^ (vec3<u32>(u_input.a.x, 1064u, u_input.d) & u_input.a), u_input.a, var_0.zwy) & countOneBits(vec3<u32>(1u, u_input.a.x << (0u % 32u), 4294967295u)));
    let var_2 = select(!vec4<bool>(all(vec2<bool>(false, var_0.x)), 5545u != _wgslsmith_mult_u32(0u, u_input.d), true, true), !vec4<bool>(var_0.x, true, true, all(select(vec3<bool>(true, false, var_0.x), var_0.zxz, var_0.x))), true);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-425f * _wgslsmith_f_op_f32(min(1757f, _wgslsmith_f_op_vec4_f32(func_2(!var_2.zw)).x))));
    let var_4 = false;
    var_0 = select(vec4<bool>(var_4, var_0.x, false, !(u_input.d != ~21902u)), select(vec4<bool>(true, func_4(u_input.a).x, false, (var_4 | true) && true), var_2, true), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, 1u, 0u)), ~(~u_input.a)), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, u_input.a) ^ u_input.a, u_input.a), !((u_input.a.x >> (u_input.a.x % 32u)) != (u_input.d >> (32848u % 32u)))), vec2<i32>(-1i) * -vec2<i32>(u_input.e.x | -4195i, 1i), _wgslsmith_mult_i32(-38896i, _wgslsmith_mod_i32(-9485i, u_input.e.x)), _wgslsmith_mult_i32(2147483647i, _wgslsmith_mult_i32(0i, -u_input.b)));
}

