struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec3<i32> {
    var var_0 = reverseBits(u_input.b.x);
    var var_1 = Struct_3(false, firstLeadingBit(0u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1064f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(266f - 288f)))), 1220f), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !(!any(vec4<bool>(true, true, false, true)))));
    var var_2 = u_input.b.wyy;
    var_2 = ~u_input.b.xwx;
    var_0 = _wgslsmith_mod_u32(var_1.b, 4294967295u);
    return reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(_wgslsmith_add_i32(u_input.a, u_input.a)), ~2147483647i, -(-2147483647i >> (u_input.c % 32u))), _wgslsmith_div_vec3_i32(vec3<i32>(18096i, i32(-1i) * -99442i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -77576i, u_input.a, u_input.a), vec4<i32>(u_input.a, 0i, -2147483647i, -445i))), vec3<i32>(u_input.a, 2147483647i, -1i))));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = Struct_1(arg_0.d.x, arg_2.x, vec3<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(36643u, arg_0.b, u_input.c), vec3<u32>(arg_3.c.x, arg_0.b, arg_0.b) >> (arg_3.c % vec3<u32>(32u)))), _wgslsmith_div_u32(10795u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(19524u, 1u, 68141u), 1280u)), 29384u));
    let var_1 = firstTrailingBit(_wgslsmith_dot_vec3_i32(func_3(), (reverseBits(vec3<i32>(-2147483647i, -1i, u_input.a)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, 32135i, 3675i), vec3<i32>(0i, 2147483647i, arg_1))) << (~arg_3.c % vec3<u32>(32u))));
    var var_2 = arg_0;
    var_2 = Struct_3(false, ~1u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_0.c)), arg_0.c), !select(arg_0.d, select(select(var_2.d, vec3<bool>(true, true, var_2.d.x), vec3<bool>(true, false, true)), select(vec3<bool>(var_0.a, var_2.d.x, false), vec3<bool>(arg_3.a, false, false), true), arg_0.b == 4294967295u), true));
    var var_3 = _wgslsmith_mod_vec2_u32(var_0.c.xy, ~vec2<u32>(28413u, _wgslsmith_mult_u32(arg_3.c.x, 6855u))) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u));
    return func_3().yy;
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-295f, 944f))))), _wgslsmith_f_op_f32(f32(-1f) * -1250f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -615f, false)))), _wgslsmith_f_op_f32(ceil(723f)))));
    let var_1 = Struct_1(any(select(vec3<bool>(true, select(false, true, false), arg_0.x >= arg_0.x), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true))), all(vec3<bool>(true, true, _wgslsmith_f_op_f32(var_0.x + -1335f) != 878f)), ~u_input.b.wyx);
    let var_2 = Struct_1(select(var_1.a, all(select(select(vec2<bool>(var_1.b, true), vec2<bool>(false, var_1.b), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(false, true), vec2<bool>(var_1.b, var_1.b)))), var_1.a), abs(~u_input.a) < u_input.a, _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(4294967295u, u_input.b.x)), 18923u), vec3<u32>(1u, (0u | var_1.c.x) >> (~var_1.c.x % 32u), ~u_input.c)));
    var var_3 = ~arg_0.zy;
    var var_4 = Struct_2(Struct_1(true, var_1.a, ~var_1.c), -1157f, Struct_1(true, !var_1.b, ~(~var_2.c | u_input.b.xwz)), u_input.c);
    return Struct_1(true, !(!var_2.b), var_2.c);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(func_4(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), func_2(Struct_3(false, 4294967295u, vec2<f32>(768f, 1000f), vec3<bool>(false, true, false)), u_input.a, vec4<bool>(true, false, true, false), Struct_1(true, false, u_input.b.xzy))), func_2(Struct_3(true, 11141u, vec2<f32>(1733f, 447f), vec3<bool>(true, false, false)), -u_input.a, select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true), Struct_1(false, true, u_input.b.wyw)).x, 2147483647i, ~(u_input.a >> (u_input.c % 32u)))), 529f, Struct_1(true, false, vec3<u32>(u_input.c, _wgslsmith_sub_u32(u_input.c, u_input.c) ^ 36296u, 4294967295u)), 29195u);
    var var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(~select(~vec4<i32>(-2147483647i, u_input.a, -3469i, u_input.a), vec4<i32>(11953i, 49704i, 0i, 75383i), true), max(abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, 12598i), vec4<i32>(21231i, u_input.a, u_input.a, 2147483647i))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(34982i, -1i, 1174i, 0i)), u_input.a, u_input.a, -19429i))), -34773i);
    var_0 = Struct_2(func_4(-_wgslsmith_mod_vec4_i32(~vec4<i32>(1i, -2147483647i, -1i, var_1.x), ~vec4<i32>(-1i, u_input.a, u_input.a, 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0.b, var_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -621f))), 753f)) * _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_0.b)))))), var_0.a, firstLeadingBit(6998u));
    let var_2 = vec4<bool>((~_wgslsmith_add_u32(var_0.d, u_input.c) <= var_0.d) & var_0.c.a, all(select(select(select(vec4<bool>(var_0.a.b, false, var_0.c.a, false), vec4<bool>(var_0.c.b, var_0.a.b, true, false), vec4<bool>(false, var_0.a.b, false, var_0.c.a)), vec4<bool>(false, true, var_0.c.b, var_0.a.b), true), vec4<bool>(true, true, true, true), true)), false, var_0.c.a);
    let var_3 = var_2.wwz;
    return Struct_1(all(!select(var_3.zz, var_3.yx, !var_2.xx)), all(select(vec3<bool>(!var_3.x, !var_3.x, false), var_2.wyx, vec3<bool>(var_0.a.b, all(vec4<bool>(false, var_2.x, false, var_2.x)), false))), max(~((var_0.a.c << (vec3<u32>(1u, u_input.b.x, u_input.c) % vec3<u32>(32u))) >> ((var_0.c.c >> (var_0.a.c % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, var_0.d, 24142u), u_input.b.xxx), u_input.b.yxw, var_2.yzy), vec3<u32>(~1u, u_input.c, ~4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(214f * 252f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -717f)))), Struct_1(u_input.a == 28458i, !func_1().a, reverseBits(vec3<u32>(_wgslsmith_add_u32(u_input.b.x, 40631u), 1u, u_input.c >> (u_input.b.x % 32u)))), 4294967295u);
    var_0 = Struct_2(func_1(), 1000f, var_0.a, u_input.b.x);
    var var_1 = var_0.a;
    var var_2 = 4294967295u;
    var_0 = Struct_2(var_0.c, _wgslsmith_f_op_f32(sign(-309f)), func_1(), 82659u);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, -(~(~countOneBits(vec4<i32>(u_input.a, u_input.a, -1i, u_input.a)))));
}

