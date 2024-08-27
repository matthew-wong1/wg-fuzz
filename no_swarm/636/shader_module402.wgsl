struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_3,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_4) -> u32 {
    let var_0 = arg_2.c;
    let var_1 = all(vec3<bool>(!(u_input.a.x == -37768i), true && (true & var_0.a.d.x), arg_1.x)) != !(!(!(0u == var_0.a.a.x)));
    let var_2 = Struct_2(vec3<u32>(arg_2.c.a.a.x, u_input.b.x, u_input.b.x), firstTrailingBit(firstTrailingBit(~(vec4<i32>(u_input.a.x, u_input.a.x, var_0.a.b.x, arg_2.a.d) >> (vec4<u32>(var_0.a.a.x, 1u, arg_2.c.a.a.x, 0u) % vec4<u32>(32u))))), 698f, vec2<bool>(false, any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, var_0.a.d.x, var_1, var_0.a.d.x), true), vec4<bool>(true, true, arg_1.x, var_1), vec4<bool>(arg_2.a.b.x, var_0.a.d.x, var_0.a.d.x, false)))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.b.x, var_0.a.b.x, -2147483647i, 2564i), var_0.a.e), select(-1i, var_0.a.b.x, false)) & -20599i, firstTrailingBit(~(~(-1i))), min(arg_2.a.c.x, max(arg_2.c.a.b.x, -2147483647i) & var_0.a.b.x), -u_input.a.x));
    return reverseBits(var_0.a.a.x);
}

fn func_2() -> u32 {
    return _wgslsmith_mod_u32(~(~func_3(-218f, select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), Struct_4(Struct_1(u_input.b.x, vec2<bool>(true, false), vec2<i32>(-46926i, u_input.a.x), u_input.a.x, vec4<u32>(58377u, 1u, u_input.b.x, 24032u)), vec2<u32>(4294967295u, u_input.b.x), Struct_3(Struct_2(u_input.b.xxw, vec4<i32>(-15795i, -2147483647i, 1i, 0i), -468f, vec2<bool>(false, false), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x))), vec3<f32>(1802f, -1206f, 1324f)))), 4294967295u);
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> f32 {
    let var_0 = select(select(select(!(!vec3<bool>(arg_1.c.a.d.x, arg_1.a.b.x, false)), !(!vec3<bool>(arg_1.c.a.d.x, arg_1.a.b.x, arg_1.a.b.x)), select(select(vec3<bool>(true, false, arg_1.c.a.d.x), vec3<bool>(false, true, arg_1.c.a.d.x), vec3<bool>(arg_1.c.a.d.x, true, arg_1.c.a.d.x)), vec3<bool>(arg_1.a.b.x, arg_1.c.a.d.x, true), arg_1.a.b.x)), vec3<bool>(select(true, 1348f >= arg_1.d.x, all(vec2<bool>(false, true))), any(vec3<bool>(arg_1.a.b.x, true, true)), arg_1.c.a.d.x), arg_1.c.a.d.x), vec3<bool>(arg_1.c.a.d.x, arg_1.c.a.d.x, false || any(!vec4<bool>(true, arg_1.c.a.d.x, true, true))), select(select(!(!vec3<bool>(true, arg_1.a.b.x, arg_1.a.b.x)), vec3<bool>(all(vec4<bool>(arg_1.a.b.x, true, arg_1.a.b.x, false)), true, all(vec4<bool>(arg_1.a.b.x, true, true, false))), arg_1.c.a.d.x), select(!select(vec3<bool>(false, false, arg_1.c.a.d.x), vec3<bool>(arg_1.a.b.x, arg_1.a.b.x, arg_1.c.a.d.x), arg_1.c.a.d.x), select(vec3<bool>(arg_1.c.a.d.x, arg_1.a.b.x, arg_1.a.b.x), vec3<bool>(arg_1.c.a.d.x, arg_1.a.b.x, true), select(vec3<bool>(arg_1.a.b.x, false, arg_1.a.b.x), vec3<bool>(true, arg_1.c.a.d.x, true), vec3<bool>(false, false, true))), !select(vec3<bool>(false, true, arg_1.a.b.x), vec3<bool>(arg_1.c.a.d.x, true, arg_1.a.b.x), vec3<bool>(arg_1.a.b.x, arg_1.c.a.d.x, arg_1.a.b.x))), vec3<bool>(arg_1.c.a.d.x, true, !any(vec3<bool>(true, false, true)))));
    let var_1 = reverseBits(_wgslsmith_div_i32(1i, abs(u_input.a.x))) ^ arg_1.a.d;
    var var_2 = vec3<u32>(firstLeadingBit(arg_1.c.a.a.x), ~4294967295u, _wgslsmith_clamp_u32(~u_input.b.x, arg_1.b.x, ~46306u));
    var var_3 = arg_1.c.a;
    var_3 = Struct_2(max(arg_1.c.a.a, vec3<u32>(_wgslsmith_div_u32(u_input.b.x, 1u), 1u, _wgslsmith_mult_u32(u_input.b.x, var_2.x))) | (_wgslsmith_add_vec3_u32(vec3<u32>(var_3.a.x, 0u, var_3.a.x) & arg_1.c.a.a, vec3<u32>(0u, 24698u, u_input.b.x)) | _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, var_3.a.x, var_3.a.x), vec3<u32>(u_input.b.x, 65610u, 37462u))), select(vec4<i32>(-_wgslsmith_dot_vec4_i32(var_3.e, vec4<i32>(2147483647i, 15009i, var_3.e.x, 2147483647i)), var_1, ~(-1i), 1i), vec4<i32>(-arg_1.c.a.b.x, -var_3.b.x, 41571i, select(1i, var_3.e.x, arg_1.a.b.x)) << (~vec4<u32>(arg_1.b.x, var_3.a.x, 13438u, 68275u) % vec4<u32>(32u)), 366f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c))), 186f, vec2<bool>(any(!(!vec4<bool>(true, false, false, arg_1.c.a.d.x))), -_wgslsmith_dot_vec2_i32(var_3.b.yy, arg_1.c.a.e.yy) >= max(-u_input.a.x, ~35047i)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_3.b.x, u_input.a.x, -var_3.e.x, 2147483647i), vec4<i32>(max(arg_1.a.c.x, select(-2147483647i, var_1, true)), 1i, u_input.a.x, var_1)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, 276f)) * _wgslsmith_f_op_f32(-arg_1.c.a.c)));
}

fn func_1(arg_0: vec2<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1209f - -1147f))) - _wgslsmith_f_op_f32(f32(-1f) * -2288f)), _wgslsmith_f_op_f32(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1446f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(622f)), _wgslsmith_f_op_f32(f32(-1f) * -476f), true))), Struct_4(Struct_1(func_2(), vec2<bool>(arg_0.x, arg_0.x), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 0i), u_input.a.yy), 3681i, firstLeadingBit(u_input.b)), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(u_input.b.x, u_input.b.x) & u_input.b.ww), Struct_3(Struct_2(vec3<u32>(89037u, 0u, 4294967295u), vec4<i32>(-2147483647i, 9856i, -1i, u_input.a.x), 732f, vec2<bool>(true, arg_0.x), vec4<i32>(-33213i, u_input.a.x, 0i, u_input.a.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1616f, -917f, -1000f) - vec3<f32>(809f, 385f, -149f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1880f, 1000f, 1648f)))))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(168f + 172f), Struct_4(Struct_1(u_input.b.x, arg_0, vec2<i32>(-59030i, -40813i), -28862i, vec4<u32>(29905u, 1u, 1u, 4294967295u)), vec2<u32>(u_input.b.x, u_input.b.x), Struct_3(Struct_2(u_input.b.wxw, vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), 343f, arg_0, vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x))), vec3<f32>(1357f, -881f, 828f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-803f - -1481f) * 2257f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(389f, 1000f)))) - -619f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-314f, 1205f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -404f) - 1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -110f))));
    let var_1 = Struct_3(Struct_2(~firstTrailingBit(~u_input.b.wzw), vec4<i32>(-(~(-42405i)), -firstLeadingBit(u_input.a.x), _wgslsmith_mult_i32(i32(-1i) * -2587i, max(1974i, u_input.a.x)), select(-1i, -u_input.a.x, false)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-372f, -674f))))), arg_0, -(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -17836i), vec4<i32>(1i, -36588i, u_input.a.x, u_input.a.x)))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -976f);
    return vec2<bool>(false, any(!var_1.a.d) || arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(32132u, func_1(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), u_input.b.x >= min(1u, 1u))), vec2<i32>(~u_input.a.x, abs(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), u_input.a.yy))), abs(_wgslsmith_mult_i32(countOneBits(u_input.a.x), -u_input.a.x) & _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -49715i)), u_input.b);
    var var_1 = Struct_4(Struct_1(26969u, var_0.b, firstLeadingBit(u_input.a.yx), u_input.a.x, vec4<u32>(var_0.e.x, select(abs(u_input.b.x), 64034u, all(vec3<bool>(false, false, var_0.b.x))), firstTrailingBit(_wgslsmith_div_u32(u_input.b.x, u_input.b.x)), abs(1u))), vec2<u32>(~(~81128u), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b.x, 14600u ^ u_input.b.x), ~(~u_input.b.x))), Struct_3(Struct_2(var_0.e.wwy, min(countOneBits(vec4<i32>(var_0.c.x, 0i, u_input.a.x, -1146i)), ~vec4<i32>(18985i, -31777i, 14281i, 0i)), 792f, select(var_0.b, vec2<bool>(false, false), var_0.b), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-35576i, 1i, -1i, var_0.d), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, -33553i, u_input.a.x, -1i))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(func_4(-730f, Struct_4(Struct_1(u_input.b.x, vec2<bool>(true, false), u_input.a.zz, -1i, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, var_0.a)), var_0.e.xx, Struct_3(Struct_2(vec3<u32>(36308u, 4294967295u, 1647u), vec4<i32>(var_0.c.x, -1i, -11568i, u_input.a.x), -2244f, var_0.b, vec4<i32>(var_0.d, u_input.a.x, u_input.a.x, 2147483647i))), vec3<f32>(-356f, 879f, 139f)))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -428f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -622f, -1034f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1495f, 1711f, -1355f), vec3<f32>(-458f, -1042f, 945f), false))))))));
    let var_2 = !select(!select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, var_0.b.x, false), vec4<bool>(true, var_1.a.b.x, false, var_0.b.x), false), false), vec4<bool>(any(!vec2<bool>(true, var_0.b.x)), all(select(vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x), vec4<bool>(var_1.a.b.x, true, false, var_1.c.a.d.x), var_1.a.b.x)), true, false), !(var_1.a.b.x || var_1.c.a.d.x) & !var_0.b.x);
    let var_3 = Struct_4(Struct_1(_wgslsmith_div_u32(~var_1.a.e.x, abs(~77058u)), var_0.b, ~var_1.c.a.e.wz, ~(-countOneBits(-1493i)), select(vec4<u32>(func_2(), 1u, var_1.a.e.x, select(var_1.b.x, 1u, false)), min(vec4<u32>(var_0.e.x, 77596u, u_input.b.x, u_input.b.x), ~vec4<u32>(1u, var_1.c.a.a.x, u_input.b.x, 0u)), true)), var_0.e.zz, Struct_3(var_1.c.a), var_1.d);
    var_1 = Struct_4(var_1.a, vec2<u32>(countOneBits(1u), var_3.c.a.a.x), var_1.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.d.x * -120f), 633f, false && var_3.a.b.x))), var_3.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.c.a.c - var_1.c.a.c))))));
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(vec3<i32>(var_4.a.c.x, var_1.c.a.e.x, _wgslsmith_mod_i32(-2147483647i, u_input.a.x)))), var_3.a.e);
}

