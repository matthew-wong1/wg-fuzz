struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
    c: u32,
    d: vec3<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec3<i32>,
    e: vec2<u32>,
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: i32) -> u32 {
    let var_0 = 9338u;
    var var_1 = -(~(~(-26378i)));
    var_1 = ~2147483647i;
    var var_2 = -arg_1 & ~max(arg_1, arg_1);
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 + 242f), arg_0)), _wgslsmith_f_op_f32(1000f + -310f) > arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - 232f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), _wgslsmith_f_op_f32(1330f - _wgslsmith_f_op_f32(floor(arg_0))))) + vec4<f32>(-598f, arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1318f * _wgslsmith_f_op_f32(max(arg_0, arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) * _wgslsmith_f_op_f32(floor(arg_0))))));
    return _wgslsmith_dot_vec2_u32(~(~firstTrailingBit(vec2<u32>(var_0, var_0))), ~(~vec2<u32>(4294967295u, var_0))) << (~var_0 % 32u);
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> bool {
    let var_0 = Struct_4(-_wgslsmith_clamp_i32(firstTrailingBit(22255i), u_input.a.x, -1i), select(~func_3(279f, 1i), _wgslsmith_div_u32(~arg_0.x, 29565u) ^ 15477u, true));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(-1421f)), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a.x, ~22485i), ~var_0.a), true, vec3<bool>(true, (true | all(vec4<bool>(false, false, true, true))) | true, true), ~min(vec2<i32>(4600i, -var_0.a), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 2147483647i), u_input.a.xx)));
    var var_2 = Struct_2(u_input.a.zz, var_1, Struct_1(var_1.a, -36612i, true, select(select(select(vec3<bool>(true, var_1.c, true), vec3<bool>(true, true, var_1.d.x), var_1.c), select(var_1.d, vec3<bool>(var_1.c, var_1.c, true), vec3<bool>(false, var_1.d.x, true)), var_1.d.x), vec3<bool>(var_1.d.x, true, true), _wgslsmith_dot_vec2_i32(var_1.e, u_input.a.yx) < _wgslsmith_mult_i32(-27118i, u_input.a.x)), -countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a, -54717i), var_1.e, u_input.a.xy))));
    let var_3 = -(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-18374i << (arg_0.x % 32u), 2147483647i), var_1.e, _wgslsmith_mult_vec2_i32(vec2<i32>(-14500i, u_input.a.x), var_2.c.e)));
    var_2 = Struct_2(vec2<i32>(2147483647i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a.x, var_3.x << (arg_0.x % 32u)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.a), var_2.a), var_2.c.e.x))), var_2.c, var_1);
    return any(select(select(!vec4<bool>(true, var_2.c.d.x, true, false), !vec4<bool>(var_2.b.d.x, var_2.c.c, var_1.c, false), select(vec4<bool>(var_1.d.x, var_1.d.x, var_1.d.x, true), vec4<bool>(false, var_2.c.c, true, false), vec4<bool>(true, var_2.c.d.x, var_2.b.c, true))), vec4<bool>(var_2.c.c, any(!vec4<bool>(true, var_1.d.x, false, false)), all(vec2<bool>(var_2.b.d.x, false)), !var_1.c), true));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> vec2<bool> {
    let var_0 = select(vec4<bool>(any(vec4<bool>(u_input.a.x > arg_0.e.x, arg_0.d.x & arg_0.d.x, !arg_0.c, true)), -arg_0.e.x < 0i, !func_2(vec3<u32>(1u, 7474u, 6921u), 4294967295u) | (arg_0.d.x || all(arg_0.d.yx)), false), vec4<bool>(!(-1741f == _wgslsmith_f_op_f32(-arg_0.a)), arg_0.d.x, false, arg_0.c), !vec4<bool>(func_2(vec3<u32>(1u, 1u, 1u), ~108957u), arg_0.d.x, !any(vec2<bool>(true, true)), any(vec3<bool>(true, true, arg_0.c))));
    var var_1 = _wgslsmith_mult_u32(countOneBits(countOneBits(~4294967295u)), ~1u);
    var var_2 = Struct_3(countOneBits(vec3<u32>(4294967295u, _wgslsmith_add_u32(6474u, firstLeadingBit(1u)), _wgslsmith_sub_u32(~30706u, 18765u))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.a, -243f))), -(~reverseBits(arg_0.b)), var_0.x, select(vec3<bool>(true, u_input.a.x == 9667i, func_2(vec3<u32>(1u, 13210u, 1u), 1u)), select(var_0.zxw, !vec3<bool>(false, arg_0.c, var_0.x), var_0.yyy), _wgslsmith_f_op_f32(-arg_0.a) <= -1508f), u_input.a.zz), arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(729f, -752f) - -560f))), arg_0.c | true);
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -362f))) - _wgslsmith_f_op_f32(trunc(var_2.b.a))), _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(trunc(-1279f)))));
    var_1 = _wgslsmith_div_u32(4294967295u, 18140u);
    return !select(vec2<bool>(false, false), select(select(arg_0.d.xx, !vec2<bool>(false, var_0.x), all(var_0)), var_0.wx, ~66302i < countOneBits(u_input.a.x)), !(!all(arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(func_1(Struct_1(1022f, -2147483647i, true, vec3<bool>(true, true, true), u_input.a.yz), _wgslsmith_clamp_vec4_i32(vec4<i32>(18429i, 2147483647i, u_input.a.x, 0i), vec4<i32>(-2147483647i, u_input.a.x, 1i, -65758i), vec4<i32>(0i, u_input.a.x, -1i, -1i))), !select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(all(vec4<bool>(true, true, true, false)), false)), !(!vec2<bool>(all(vec3<bool>(true, true, true)), true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(~vec3<u32>(28436u, 36723u, 9455u), 0u)));
    let var_1 = ~(-(vec4<i32>(0i, -u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, 16315i, 29362i), vec4<i32>(0i, u_input.a.x, u_input.a.x, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 2147483647i), vec4<i32>(-60669i, u_input.a.x, 14400i, u_input.a.x))) >> (vec4<u32>(min(1u, 14318u), ~1u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 15963u, 31055u), vec4<u32>(4294967295u, 61137u, 0u, 38503u))) % vec4<u32>(32u))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-159f, -1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-863f)) * 1f)), u_input.a.x, !(!(var_0.x & true)), !(!(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, false, false)))), ~firstTrailingBit(-max(vec2<i32>(0i, 14751i), u_input.a.yy)));
    var var_3 = vec4<u32>(0u, max(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(62191u, 1u, 10986u), vec3<u32>(61118u, 1u, 70441u))), 1u), 1u, _wgslsmith_mod_u32(~reverseBits(1u), 1u));
    var_0 = vec2<bool>(var_2.d.x || var_2.c, var_2.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.a, 540f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2456f, var_2.a) * vec2<f32>(var_2.a, 1419f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(176f, var_2.a), vec2<f32>(739f, var_2.a))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, var_2.a) + vec2<f32>(1000f, -1026f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-828f - -707f)), _wgslsmith_add_vec3_i32(vec3<i32>(-firstTrailingBit(29466i), -1i, _wgslsmith_mod_i32(min(12787i, var_2.e.x), var_2.b)), -(vec3<i32>(u_input.a.x, u_input.a.x, 3128i) << (_wgslsmith_add_vec3_u32(vec3<u32>(39835u, 11189u, 4094u), var_3.zyz) % vec3<u32>(32u)))), vec2<u32>(var_3.x, (31394u ^ _wgslsmith_add_u32(85140u, var_3.x)) << (~_wgslsmith_dot_vec2_u32(var_3.zw, var_3.yz) % 32u)));
}

