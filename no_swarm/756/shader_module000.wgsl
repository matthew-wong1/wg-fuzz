struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<i32>) -> i32 {
    let var_0 = vec3<u32>(max(_wgslsmith_dot_vec4_u32(arg_0.c.a, ~arg_0.c.a), abs(arg_0.c.a.x)), u_input.d.x, _wgslsmith_clamp_u32(18382u, arg_0.b.x, _wgslsmith_dot_vec4_u32(u_input.d >> (vec4<u32>(73471u, 0u, arg_0.a.a.x, arg_0.c.a.x) % vec4<u32>(32u)), u_input.d)));
    var var_1 = ~1i;
    let var_2 = select(arg_1.yx, vec2<bool>(arg_0.a.b, true), !(!any(vec2<bool>(arg_1.x, arg_0.a.b)) & (_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, -20641i, 45592i), vec3<i32>(35121i, u_input.c.x, -81874i)) > (8711i | u_input.c.x))));
    var var_3 = -vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x) ^ _wgslsmith_mod_i32(arg_2.x, u_input.a.x), select(firstLeadingBit(-1i), ~(-2147483647i), arg_0.d & false)), -2147483647i);
    var var_4 = Struct_2(arg_0.a, (~vec4<u32>(var_0.x, 96661u, arg_0.a.a.x, 0u) ^ abs(~arg_0.c.a)) | countOneBits(abs(u_input.b)), arg_0.a, select(arg_0.a.b, !(!all(vec4<bool>(var_2.x, arg_1.x, false, true))), arg_0.d));
    return u_input.a.x;
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_1.a;
    var var_1 = Struct_2(var_0, arg_1.c.a, var_0, all(select(vec4<bool>(true, true, false, any(vec4<bool>(arg_0, true, false, true))), !(!vec4<bool>(var_0.b, arg_1.a.b, arg_1.a.b, arg_0)), false)));
    var_1 = arg_1;
    let var_2 = -25121i;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(arg_1.a.c * var_1.c.c)), var_0.c, -1503f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c, 121f, arg_1.a.c, 311f), vec4<f32>(-1072f, var_1.a.c, var_0.c, -1000f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.c, var_0.c, var_1.c.c, var_1.a.c)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a.c, arg_1.a.c, 147f, 822f)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.c), 1140f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.c * var_1.c.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1053f)) + _wgslsmith_f_op_f32(abs(var_1.c.c)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-207f, -243f, -279f, -302f) * vec4<f32>(arg_1.c.c, 776f, 320f, var_1.c.c)))))));
    return Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, firstTrailingBit(var_1.c.a.x), min(var_1.c.a.x, 39196u)), vec4<u32>(21616u, var_1.c.a.x ^ (13539u ^ var_0.a.x), ~var_0.a.x ^ 114654u, 26352u)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, 1i), max(~var_2, -var_2)) <= func_3(Struct_2(var_0, ~var_0.a, Struct_1(arg_1.a.a, var_1.c.b, arg_1.c.c), !arg_1.d), vec3<bool>(var_0.b | arg_1.d, any(vec4<bool>(var_0.b, true, false, var_0.b)), var_0.b), select(vec2<i32>(4867i, -7449i), firstLeadingBit(vec2<i32>(-22132i, 2147483647i)), var_0.b)), _wgslsmith_f_op_f32(-var_1.a.c));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-359f, arg_0.c.c) - vec2<f32>(arg_2.c, -1637f)))))));
    var var_1 = max(_wgslsmith_mult_vec2_u32(u_input.b.yz, ~(~_wgslsmith_mod_vec2_u32(arg_2.a.yz, vec2<u32>(arg_0.a.a.x, 11063u)))), ~vec2<u32>(~(~6406u), arg_2.a.x));
    var_1 = ~(~select(_wgslsmith_sub_vec2_u32(~arg_0.a.a.xy, _wgslsmith_mod_vec2_u32(arg_2.a.yx, arg_0.a.a.wy)), u_input.d.zx, !arg_0.d));
    let var_2 = -vec2<i32>(u_input.c.x, ~(~u_input.c.x) & func_3(Struct_2(Struct_1(vec4<u32>(arg_0.a.a.x, u_input.d.x, 1u, arg_2.a.x), false, arg_2.c), arg_2.a, Struct_1(vec4<u32>(4294967295u, var_1.x, arg_0.b.x, 48408u), true, arg_0.c.c), false), !vec3<bool>(arg_1, true, arg_2.b), u_input.c ^ u_input.c));
    var var_3 = abs(vec4<i32>(~min(var_2.x, u_input.c.x), -u_input.c.x, ~(~(-u_input.a.x)), min(u_input.a.x, ~1i)));
    return -1792f;
}

fn func_1() -> Struct_1 {
    let var_0 = !any(select(vec3<bool>(0u < u_input.d.x, true, u_input.d.x <= u_input.b.x), vec3<bool>(true, true, true), any(vec3<bool>(false, true, true))));
    let var_1 = vec2<i32>(~_wgslsmith_add_i32(0i, -1i), 2147483647i);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-134f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1063f - -734f) - -135f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec4<u32>(u_input.b.x, 4294967295u, 39897u, u_input.d.x), var_0, -676f), vec4<u32>(u_input.b.x, u_input.d.x, 5603u, u_input.b.x), Struct_1(vec4<u32>(107903u, 56884u, 4294967295u, 45473u), true, -591f), true), true, func_2(var_0, Struct_2(Struct_1(vec4<u32>(69125u, 1696u, 0u, 4294967295u), true, 1153f), u_input.d, Struct_1(vec4<u32>(1u, u_input.b.x, u_input.d.x, u_input.b.x), true, 263f), var_0)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-895f, -1238f, false)) + _wgslsmith_div_f32(-237f, -814f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -829f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -346f)))), _wgslsmith_f_op_f32(-1143f * -190f)), 1423f);
    var var_3 = _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.d.x), u_input.d.wz), u_input.b.yy);
    var_3 = max(~u_input.d.zz, vec2<u32>(_wgslsmith_dot_vec4_u32(min(u_input.b, vec4<u32>(var_3.x, u_input.d.x, var_3.x, 24045u)), u_input.b) & var_3.x, ~(u_input.b.x << ((var_3.x >> (u_input.b.x % 32u)) % 32u))));
    return Struct_1(countOneBits(_wgslsmith_add_vec4_u32(u_input.b, func_2(true, Struct_2(Struct_1(u_input.b, false, -1204f), u_input.b, Struct_1(u_input.b, var_0, 1000f), true)).a)), !any(!(!vec3<bool>(var_0, var_0, true))), 1196f);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<u32>) -> bool {
    let var_0 = 27954i;
    let var_1 = func_1();
    var var_2 = Struct_2(Struct_1(func_1().a, any(select(vec3<bool>(var_1.b, arg_1.b, var_1.b), select(vec3<bool>(var_1.b, arg_1.b, arg_1.b), vec3<bool>(true, false, true), vec3<bool>(false, arg_1.b, var_1.b)), any(vec4<bool>(true, arg_1.b, true, true)))), _wgslsmith_f_op_f32(-var_1.c)), u_input.b, func_1(), all(!vec3<bool>(true, !arg_1.b, arg_1.b)));
    let var_3 = !arg_1.b;
    var_2 = Struct_2(var_2.a, vec4<u32>(~var_1.a.x, ~52866u, 0u, var_2.a.a.x), func_2(var_2.d, Struct_2(func_1(), vec4<u32>(u_input.d.x >> (4294967295u % 32u), arg_1.a.x, arg_0, 1u), var_1, arg_1.b)), var_2.a.c > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(807f, arg_1.c)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-989f + var_2.c.c) - _wgslsmith_f_op_f32(max(var_2.c.c, 218f)))));
    return true;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool) -> f32 {
    var var_0 = Struct_2(Struct_1(vec4<u32>(~64542u | _wgslsmith_dot_vec2_u32(arg_0.a.xx, vec2<u32>(93922u, arg_0.a.x)), _wgslsmith_mod_u32(arg_0.a.x | arg_0.a.x, arg_0.a.x), arg_0.a.x, ~u_input.b.x), all(!(!vec4<bool>(true, arg_0.b, false, arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c * arg_1.x) + -1007f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * -237f))), vec4<u32>(reverseBits(u_input.b.x), u_input.d.x | arg_0.a.x, ~4294967295u, ~firstTrailingBit(~15441u)), arg_0, arg_0.b);
    let var_1 = _wgslsmith_mult_vec2_i32(u_input.a, u_input.c >> ((select(countOneBits(vec2<u32>(arg_0.a.x, 51060u)), u_input.d.yw, !arg_0.b) | max(arg_0.a.xw, var_0.a.a.yy)) % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(exp2(var_0.c.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(Struct_1(u_input.b, func_5(22425u, func_1(), reverseBits(u_input.c.x), max(vec2<u32>(u_input.b.x, 0u), vec2<u32>(1u, u_input.b.x))), -217f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(139f, -1000f, -490f) * vec3<f32>(-527f, 657f, 160f))))), !all(vec4<bool>(true, true, true, false)))));
    let var_1 = func_2(!all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, false), 0u < u_input.d.x)), Struct_2(Struct_1(vec4<u32>(9125u, u_input.d.x, _wgslsmith_mult_u32(1u, 9539u), u_input.b.x & u_input.b.x), 23757i > firstTrailingBit(4380i), _wgslsmith_f_op_f32(abs(-315f))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 86989u, u_input.b.x, u_input.d.x), ~vec4<u32>(37932u, u_input.b.x, 1u, u_input.d.x), ~u_input.b) | ~u_input.b, Struct_1(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(9966u, u_input.d.x, 1u, u_input.b.x), vec4<u32>(1u, 1u, u_input.b.x, 4294967295u))), true, -1000f), true));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, -1031f, 405f, 1322f) * vec4<f32>(var_1.c, var_1.c, var_1.c, 1000f)) + vec4<f32>(var_1.c, var_1.c, var_1.c, 153f)))));
    let var_3 = abs(u_input.b.x >> (68269u % 32u));
    var_0 = 1020f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(func_2(false, Struct_2(var_1, vec4<u32>(var_1.a.x, 8612u, u_input.d.x, var_3), Struct_1(vec4<u32>(var_3, 38069u, u_input.b.x, var_1.a.x), false, -637f), true)).a.x >> (var_1.a.x % 32u), ~_wgslsmith_mod_u32(0u, ~var_1.a.x)), 1595f, var_2.x);
}

