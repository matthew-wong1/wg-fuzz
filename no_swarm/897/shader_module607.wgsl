struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: f32) -> vec4<bool> {
    var var_0 = false;
    var_0 = false;
    var var_1 = ~vec4<u32>(4294967295u, 40390u, u_input.a.x, _wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(39624u, 17458u, 4294967295u, 1u), vec4<u32>(9184u, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(1u, u_input.a.x, u_input.a.x, 15625u) % vec4<u32>(32u)))));
    var_0 = false;
    let var_2 = -1005f;
    return select(vec4<bool>(false, !(!select(true, true, true)), false, true), !select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, var_1.x < 40655u, true, true)), vec4<bool>(true && (select(2147483647i, -1i, false) == _wgslsmith_dot_vec3_i32(vec3<i32>(6504i, -1i, 0i), vec3<i32>(19558i, 8807i, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2, -260f, true))) == var_2, any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-arg_0) <= _wgslsmith_f_op_f32(select(861f, arg_0, true))));
}

fn func_3(arg_0: f32, arg_1: bool) -> vec4<i32> {
    let var_0 = vec2<i32>(1i, i32(-1i) * -(0i & select(-155i, -2147483647i, arg_1)));
    var var_1 = Struct_1(-338f, all(select(vec3<bool>(arg_0 > 262f, true, arg_1), !(!vec3<bool>(true, arg_1, true)), vec3<bool>(!arg_1, any(vec4<bool>(true, arg_1, arg_1, true)), arg_1))), -_wgslsmith_div_vec2_i32(var_0, -var_0 | vec2<i32>(1i, var_0.x)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0, -1199f)))), var_1.b, vec2<i32>(min(10059i, -123249i), -14149i));
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(927f)) * _wgslsmith_f_op_f32(-2251f - _wgslsmith_f_op_f32(-arg_0))) * var_1.a), false, _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(var_1.c, min(~var_0, var_0)), _wgslsmith_div_vec2_i32(var_1.c, var_0)));
    var var_2 = all(!select(vec2<bool>(true, true), vec2<bool>(true, true), !(true & var_1.b)));
    return abs(min(-(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_0.x, 23271i, -2197i), vec4<i32>(-11615i, var_1.c.x, var_1.c.x, var_0.x)) & (vec4<i32>(-2147483647i, -11446i, 1i, 328i) ^ vec4<i32>(2147483647i, -20744i, var_1.c.x, -1i))), -abs(vec4<i32>(var_0.x, 2147483647i, -9249i, var_0.x))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1;
    var var_1 = arg_1;
    var var_2 = i32(-1i) * -2147483647i;
    var_1 = Struct_1(621f, !select(!arg_1.b && true, var_1.a > _wgslsmith_div_f32(arg_0.x, arg_1.a), true), ~_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.c.x, abs(var_1.c.x)), _wgslsmith_mod_vec2_i32(-arg_1.c, vec2<i32>(var_0.c.x, -1i) ^ arg_1.c)));
    let var_3 = min(select(-firstLeadingBit(firstTrailingBit(vec4<i32>(-1i, arg_1.c.x, -2147483647i, var_0.c.x))), func_3(arg_1.a, var_1.b), all(!select(vec4<bool>(var_0.b, var_1.b, true, var_1.b), vec4<bool>(false, var_0.b, var_1.b, true), arg_1.b))), min(vec4<i32>(_wgslsmith_mult_i32(var_1.c.x, _wgslsmith_mod_i32(var_0.c.x, -21018i)), var_0.c.x, arg_1.c.x ^ -arg_1.c.x, _wgslsmith_add_i32(-27785i << (u_input.a.x % 32u), _wgslsmith_div_i32(-2147483647i, -1i))), vec4<i32>(-abs(var_0.c.x), 6870i, _wgslsmith_mod_i32(arg_1.c.x, var_0.c.x), 1i)));
    return max(abs(0i), func_3(-1003f, var_0.b).x);
}

fn func_4(arg_0: vec4<i32>, arg_1: i32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2040f + _wgslsmith_div_f32(-850f, _wgslsmith_div_f32(-1203f, 465f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-444f, -1404f))))))))));
    var var_1 = false;
    var var_2 = func_1(366f).xx;
    var var_3 = ~vec4<u32>(~reverseBits(~4294967295u), 4294967295u, ~0u, 69039u);
    let var_4 = arg_0.zxx;
    return firstLeadingBit(vec4<u32>(1u, _wgslsmith_sub_u32(~var_3.x, 0u), ~75367u, var_3.x) | ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, var_3.x, var_3.x, u_input.a.x) & vec4<u32>(var_3.x, 41463u, 0u, u_input.a.x), vec4<u32>(var_3.x, u_input.a.x, var_3.x, 0u)));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(656f * arg_0.a) - 710f), any(vec3<bool>(select(all(vec4<bool>(arg_0.b, arg_0.b, true, arg_0.b)), arg_0.b || true, !arg_0.b), (arg_0.c.x << (arg_2.x % 32u)) >= ~arg_0.c.x, !func_1(-1675f).x)), firstLeadingBit((arg_0.c ^ -arg_0.c) & arg_0.c));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-685f)))), any(!(!(!vec2<bool>(false, arg_0.b)))), _wgslsmith_sub_vec2_i32(select(vec2<i32>(abs(var_0.c.x), 1i), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.c.x, arg_0.c.x) >> (vec2<u32>(u_input.a.x, arg_1) % vec2<u32>(32u)), var_0.c & vec2<i32>(arg_0.c.x, 2147483647i)), (var_0.b && false) & var_0.b), firstTrailingBit(select(_wgslsmith_clamp_vec2_i32(var_0.c, vec2<i32>(var_0.c.x, -1i), vec2<i32>(-35025i, 2147483647i)), var_0.c >> (vec2<u32>(37163u, 1998u) % vec2<u32>(32u)), !vec2<bool>(var_0.b, arg_0.b)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(var_0.a + 511f))), any(!(!vec4<bool>(arg_0.b, var_0.b, var_0.b, true))), -abs(arg_0.c));
    let var_2 = func_3(_wgslsmith_div_f32(-918f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, var_0.a) * -1489f))), false).xy;
    let var_3 = var_1;
    return Struct_1(1519f, var_0.b, vec2<i32>(-7324i, ~var_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -770f), true == all(func_1(-663f)), _wgslsmith_mod_vec2_i32(~(-vec2<i32>(-18703i, 10386i)), vec2<i32>(~(-16544i), firstTrailingBit(-1i))) | vec2<i32>(1i, 1i));
    var var_1 = func_5(var_0, u_input.a.x, _wgslsmith_add_vec4_u32(func_4(vec4<i32>(-2147483647i, _wgslsmith_add_i32(35826i, -1i), func_2(vec3<f32>(-144f, -1177f, -2220f), var_0), 32305i), 0i), _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a.x, 45630u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), min(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 0u), vec4<u32>(u_input.a.x, 15264u, u_input.a.x, u_input.a.x))), select(abs(vec4<u32>(80757u, 75892u, 13985u, u_input.a.x)), abs(vec4<u32>(80892u, u_input.a.x, 4294967295u, u_input.a.x)), true))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(var_1.a)), var_0.a);
    let var_3 = func_5(func_5(func_5(func_5(func_5(var_0, 44875u, vec4<u32>(u_input.a.x, 36582u, 4294967295u, u_input.a.x)), u_input.a.x, abs(vec4<u32>(u_input.a.x, 4294967295u, 5811u, u_input.a.x))), ~max(u_input.a.x, u_input.a.x), select(vec4<u32>(0u, u_input.a.x, 1u, 1u), min(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 57618u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 49704u)), vec4<bool>(true, var_1.b, false, true))), u_input.a.x, _wgslsmith_clamp_vec4_u32((vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(73480u, u_input.a.x, u_input.a.x, 50410u)) | countOneBits(vec4<u32>(4294967295u, u_input.a.x, 1157u, u_input.a.x)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 8915u, 17036u, u_input.a.x), vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x))), ~vec4<u32>(0u, 97152u, u_input.a.x, u_input.a.x))), u_input.a.x, abs(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x) & abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 22782u, 16803u, 0u), vec4<u32>(57331u, u_input.a.x, u_input.a.x, u_input.a.x)))));
    var_1 = var_0;
    var var_4 = func_5(var_0, 22088u, ~(select(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), min(vec4<u32>(u_input.a.x, 0u, 11719u, u_input.a.x), vec4<u32>(32302u, u_input.a.x, u_input.a.x, u_input.a.x)), !vec4<bool>(var_3.b, var_0.b, false, false)) ^ abs(~vec4<u32>(93243u, 31185u, 59410u, 38446u))));
    var_4 = func_5(var_3, 4294967295u, max(vec4<u32>(0u, u_input.a.x ^ u_input.a.x, 1u, 0u), vec4<u32>(~u_input.a.x, ~0u, abs(u_input.a.x), _wgslsmith_sub_u32(0u, u_input.a.x))) | vec4<u32>(u_input.a.x, abs(u_input.a.x), ~u_input.a.x, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(u_input.a.x, 56798u, 43344u) << (u_input.a % vec3<u32>(32u))), max(~vec4<i32>(_wgslsmith_add_i32(10617i, 42494i), _wgslsmith_mult_i32(10694i, 30439i), 42742i, var_0.c.x ^ var_0.c.x), func_3(-1133f, any(!vec2<bool>(var_1.b, false)))), vec4<u32>(_wgslsmith_div_u32(~17387u, ~abs(u_input.a.x)), ~4294967295u ^ _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.a.x, 10097u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -1355f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, 296f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(709f, var_4.a) * vec2<f32>(-463f, var_1.a)))))), ~abs(~vec4<u32>(1u, u_input.a.x, 4294967295u, 4294967295u)));
}

