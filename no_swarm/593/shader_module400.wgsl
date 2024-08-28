struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    var_0 = false;
    let var_1 = vec2<u32>(0u, 4294967295u);
    var_0 = true;
    var var_2 = Struct_1(vec4<bool>(_wgslsmith_add_i32(abs(2147483647i), -u_input.b.x) == (i32(-1i) * -u_input.a.x), all(vec4<bool>(true, all(vec4<bool>(true, true, false, false)), true, all(vec3<bool>(true, true, false)))), all(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), any(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-483f, 173f, 867f) + vec3<f32>(1000f, -223f, -204f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, -1763f, -1461f))), 889f);
    return Struct_1(var_2.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-785f, var_2.b.x)))) * var_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(215f)), _wgslsmith_f_op_f32(var_2.c + 893f)) + -1630f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-221f - _wgslsmith_div_f32(155f, var_2.b.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(exp2(var_2.b.x)))), var_2.b.x)));
}

fn func_3() -> vec4<bool> {
    var var_0 = firstLeadingBit(min(~(-45699i), -1i));
    var var_1 = Struct_1(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, true, true)), func_2().a, !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true)), _wgslsmith_f_op_vec3_f32(func_2().b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(331f, 842f, -194f), vec3<f32>(1000f, 1888f, 1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(638f, -1200f, 1450f))))), _wgslsmith_div_f32(func_2().b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -762f))));
    var var_2 = var_1.b.x;
    var var_3 = abs(vec2<i32>(-18230i, u_input.b.x ^ countOneBits(u_input.d.x))) >> (~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.c), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(49707u, 1942u)))) % vec2<u32>(32u));
    var_3 = u_input.d.zy;
    return !select(vec4<bool>(var_1.a.x, var_1.a.x, func_2().a.x, any(var_1.a)), !(!select(var_1.a, vec4<bool>(false, false, var_1.a.x, true), var_1.a)), !(!select(var_1.a, vec4<bool>(true, true, false, false), var_1.a.x)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>) -> bool {
    let var_0 = vec3<u32>(~firstTrailingBit(countOneBits(0u)), 0u, u_input.c) << (firstLeadingBit(vec3<u32>(_wgslsmith_add_u32(arg_2.x, 65012u), arg_2.x & 0u, ~1u)) % vec3<u32>(32u));
    var var_1 = 1000f;
    var_1 = -1936f;
    let var_2 = 1838u;
    let var_3 = func_2();
    return !var_3.a.x;
}

fn func_1() -> bool {
    var var_0 = func_2();
    var var_1 = func_2();
    let var_2 = func_2();
    var var_3 = Struct_1(!var_2.a, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))), -1000f, -1000f), var_2.c);
    let var_4 = !func_4(-144f, Struct_1(func_3(), vec3<f32>(_wgslsmith_div_f32(628f, var_0.c), _wgslsmith_f_op_f32(exp2(var_0.c)), _wgslsmith_div_f32(508f, var_2.c)), _wgslsmith_f_op_f32(ceil(var_0.c))), ~_wgslsmith_add_vec2_u32(vec2<u32>(92703u, 1u), vec2<u32>(55230u, u_input.c)) >> (((vec2<u32>(u_input.c, 33665u) ^ vec2<u32>(1u, 38230u)) << (~vec2<u32>(u_input.c, 61537u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return !any(vec3<bool>(!(true || var_2.a.x), var_4, all(var_1.a)));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<i32>) -> f32 {
    var var_0 = Struct_1(!select(vec4<bool>(false, true, arg_0.x, arg_0.x & arg_0.x), func_2().a, !select(vec4<bool>(false, true, true, arg_0.x), vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, true, arg_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-997f, 949f), 160f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2161f * -609f) + _wgslsmith_f_op_f32(f32(-1f) * -1172f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-219f * 411f)))), _wgslsmith_f_op_f32(f32(-1f) * -308f));
    let var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(_wgslsmith_div_i32(u_input.d.x, u_input.b.x)), 1i, abs(firstTrailingBit(-9168i))), arg_1.xxx), -38167i, -min((2147483647i << (0u % 32u)) << (_wgslsmith_add_u32(u_input.c, 0u) % 32u), -34816i), arg_1.x);
    var_0 = Struct_1(vec4<bool>(!any(vec2<bool>(var_0.a.x, var_0.a.x)), var_0.a.x, -2383f != var_0.b.x, false), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -240f), _wgslsmith_f_op_f32(min(444f, var_0.c)), 335f), -1681f);
    let var_2 = vec3<bool>(true, func_4(_wgslsmith_f_op_f32(f32(-1f) * -150f), func_2(), ~vec2<u32>(_wgslsmith_add_u32(1u, u_input.c), ~4294967295u)), var_0.a.x);
    let var_3 = vec2<f32>(538f, _wgslsmith_f_op_f32(f32(-1f) * -1144f));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1467f)))) * _wgslsmith_f_op_f32(f32(-1f) * -906f)), _wgslsmith_f_op_f32(min(600f, _wgslsmith_f_op_f32(func_5(vec2<bool>(func_1(), true), -(~u_input.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-497f + 633f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1996f - -225f), -770f, true)))));
    var var_1 = 1i;
    var_1 = ~(-2147483647i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) + -533f));
    let var_3 = 223f;
    let var_4 = vec2<bool>(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, u_input.c)), vec2<u32>(u_input.c, 4294967295u))) != u_input.c, all(!func_2().a));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.c, ~reverseBits(1u)) & max(vec2<u32>(_wgslsmith_div_u32(u_input.c, 1u), _wgslsmith_div_u32(u_input.c, u_input.c)), vec2<u32>(0u, u_input.c | 31708u)), _wgslsmith_div_vec2_u32(~vec2<u32>(75134u, 19934u) & reverseBits(reverseBits(vec2<u32>(u_input.c, u_input.c))), select(firstLeadingBit(vec2<u32>(3449u, 4294967295u)), vec2<u32>(~1u, u_input.c), var_4.x)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~(-u_input.b.x), u_input.b.x & _wgslsmith_add_i32(u_input.b.x, u_input.b.x), -69668i), abs(u_input.a.x) & _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-64924i, u_input.d.x, u_input.b.x)), vec3<i32>(u_input.a.x, u_input.d.x, -2147483647i))));
}

