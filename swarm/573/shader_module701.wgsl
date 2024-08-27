struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> vec3<i32> {
    var var_0 = 2147483647i;
    var_0 = 20490i | _wgslsmith_div_i32(u_input.a, abs(-10514i));
    var_0 = 11565i;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2395f - -1485f) * -165f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1010f, 1989f) * _wgslsmith_f_op_f32(-807f * -1265f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -469f), -2423f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(729f - -277f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3301f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(734f, 902f, -536f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(106f, 148f, 565f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(822f, -2592f, -1445f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-439f, -2486f, -1450f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(608f, -624f, -1036f))))));
    var var_2 = !(!select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)), true));
    return -max(_wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a)), -select(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(2147483647i, u_input.a, u_input.a), var_2.x)), max(vec3<i32>(-14891i, 0i, u_input.a) ^ vec3<i32>(u_input.a, 0i, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(1i, u_input.a, -55941i))) << (vec3<u32>(~32046u, 1u, 28965u) % vec3<u32>(32u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3) -> vec3<i32> {
    let var_0 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(_wgslsmith_f_op_f32(floor(461f)) != _wgslsmith_f_op_f32(-110f + -2183f), true | any(vec3<bool>(true, true, true)), false, true), !select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), true))), select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, false, true), true), vec4<bool>(true, all(vec2<bool>(true, false)), true, true)), vec4<bool>(false, all(vec4<bool>(false, false, false, false)), any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), all(vec4<bool>(true, true, true, true))), any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, false, false, true), true))), !(!all(vec3<bool>(true, true, false))));
    let var_1 = Struct_2(Struct_1(arg_1.c.a, 60912i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1430f, -233f, _wgslsmith_f_op_f32(min(-460f, 497f)), -502f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(580f, 630f, 454f, 749f), vec4<f32>(2719f, 1302f, 890f, 511f), false))))), countOneBits(~select(countOneBits(vec3<u32>(4294967295u, arg_1.d, 1u)), abs(vec3<u32>(0u, 12824u, 11444u)), select(var_0.xzx, var_0.xyz, vec3<bool>(var_0.x, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2459f)) - _wgslsmith_f_op_f32(f32(-1f) * -809f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1943f, _wgslsmith_f_op_f32(floor(-1370f))))))));
    var var_2 = var_1.c.zz >> (~vec2<u32>(reverseBits(abs(var_1.c.x)), abs(_wgslsmith_sub_u32(var_1.c.x, arg_1.d))) % vec2<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d, 1163f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.x - var_1.d), _wgslsmith_f_op_f32(exp2(var_1.d)))), _wgslsmith_f_op_f32(-var_1.d)));
    let var_4 = var_0.x;
    return ~vec3<i32>(firstTrailingBit(arg_0.x), arg_1.b, ~(u_input.a >> (~1u % 32u)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, firstTrailingBit(71468i), _wgslsmith_mod_i32(-13330i, -19103i)), max(vec3<i32>(firstTrailingBit(1i), ~(-83561i), ~(-41876i)), vec3<i32>(u_input.a, ~u_input.a, 2147483647i))), select(-func_2(), -(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)) | func_3(vec3<i32>(14292i, -2147483647i, u_input.a), Struct_3(53736u, u_input.a, Struct_1(vec4<i32>(-1i, 2147483647i, u_input.a, u_input.a), u_input.a), 23115u))), false));
    var var_1 = !(!all(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))));
    var var_2 = vec4<bool>(true, all(vec4<bool>(!any(vec2<bool>(false, false)), !any(vec4<bool>(true, false, false, true)), false && all(vec4<bool>(true, true, true, false)), true)), any(!vec3<bool>(true, all(vec2<bool>(false, false)), true)), true);
    let var_3 = 13802u;
    var_1 = !var_2.x;
    return Struct_1(~vec4<i32>(~(-4802i | var_0.x), countOneBits(_wgslsmith_sub_i32(1i, var_0.x)), -u_input.a, -1i), _wgslsmith_mult_i32(~(-(u_input.a | u_input.a)), 62536i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_4(vec3<u32>(1u, ~_wgslsmith_sub_u32(~1u, ~2276u), 0u), func_1());
    let var_2 = Struct_2(Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.b >> (var_1.a.x % 32u), -1i, _wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(-35603i, var_1.b.b, var_1.b.b, 4396i)), u_input.a), select(vec4<i32>(var_0.b, var_0.b, -2147483647i, 27484i), var_0.a, true)), -1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1202f, -988f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1880f), _wgslsmith_f_op_f32(round(1855f))), _wgslsmith_f_op_f32(ceil(-1057f)), _wgslsmith_f_op_f32(f32(-1f) * -256f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(867f, -881f, 535f, 2000f), vec4<f32>(215f, -359f, 1000f, -1000f)) + vec4<f32>(166f, 153f, 447f, -766f)))), var_1.a, -375f);
    var var_3 = func_2().zz >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(~var_1.a.x, 0u), var_1.a.xz) % vec2<u32>(32u));
    var_3 = ~(~var_2.a.a.zy);
    let x = u_input.a;
    s_output = StorageBuffer(func_1().a.zxw);
}

