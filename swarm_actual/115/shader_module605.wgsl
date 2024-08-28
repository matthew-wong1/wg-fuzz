struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: bool,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(-21712i, i32(-2147483648)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec3<i32>) -> f32 {
    let var_0 = true;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(278f + _wgslsmith_div_f32(arg_1.x, arg_1.x)), _wgslsmith_dot_vec2_i32(u_input.b.wx, ~u_input.b.wz), all(vec2<bool>(-2147483647i != arg_3.x, all(select(arg_2.d.zw, arg_2.e.zy, vec2<bool>(var_0, false))))), arg_2.d, select(select(vec3<bool>(all(arg_2.d.wzy), any(arg_2.e), any(vec3<bool>(false, true, arg_2.c))), arg_2.e, !arg_2.d.ywy), select(!arg_2.d.xww, vec3<bool>(var_0, any(arg_2.e.yy), !arg_2.c), reverseBits(u_input.a) < 41298u), !vec3<bool>(!arg_2.c, var_0, false)));
    var_1 = arg_2;
    var var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-var_1.b, _wgslsmith_dot_vec4_i32(~u_input.b, vec4<i32>(-2147483647i, u_input.b.x, arg_2.b, 2147483647i)), _wgslsmith_clamp_i32(-2147483647i, 31435i, min(-11754i, u_input.b.x)), -var_1.b), vec4<i32>(i32(-1i) * -arg_3.x, max(reverseBits(arg_3.x), firstTrailingBit(u_input.b.x)), var_1.b, ~(-var_1.b))), reverseBits(vec4<i32>(-2147483647i ^ _wgslsmith_mod_i32(u_input.b.x, arg_3.x), _wgslsmith_mult_i32(2147483647i | u_input.b.x, var_1.b >> (38523u % 32u)), u_input.b.x, ~var_1.b)));
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-329f))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_5(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-335f * 638f)), _wgslsmith_f_op_f32(abs(520f)), 1532f)), Struct_3(_wgslsmith_div_f32(308f, _wgslsmith_f_op_f32(func_3(Struct_2(vec3<f32>(-579f, 494f, -506f)), vec2<f32>(-351f, 1133f), Struct_3(-338f, u_input.b.x, arg_0.x, vec4<bool>(arg_0.x, arg_0.x, false, false), vec3<bool>(true, arg_0.x, false)), vec3<i32>(-2147483647i, -39883i, 0i)))), _wgslsmith_mult_i32(-1i, 21278i), arg_0.x, vec4<bool>(any(!vec3<bool>(true, arg_0.x, arg_0.x)), true, !arg_0.x, any(!arg_0.zx)), vec3<bool>(!all(arg_0), true, arg_0.x)), Struct_4(Struct_1(vec4<u32>(arg_1.x, countOneBits(u_input.a), ~9663u, 104857u)), firstLeadingBit(u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(-754f + 1000f), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(1261f - -1480f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1075f)))), arg_0.x, _wgslsmith_mod_u32(u_input.a, 9263u)));
    let var_1 = var_0.c.a;
    let var_2 = var_0.c.a;
    var_0 = Struct_5(var_0.a, Struct_3(937f, 0i, false, select(!(!vec4<bool>(arg_0.x, true, false, false)), vec4<bool>(true, !arg_0.x, arg_0.x, true), select(var_0.b.d, !var_0.b.d, var_0.b.d)), !(!vec3<bool>(true, var_0.b.c, arg_0.x))), var_0.c);
    let var_3 = all(var_0.b.d);
    return var_0.c.a;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1261f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1223f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1057f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    global0 = array<vec2<i32>, 1>();
    global0 = array<vec2<i32>, 1>();
    global0 = array<vec2<i32>, 1>();
    let var_1 = u_input.b.yzz;
    return func_2(select(vec3<bool>(true, true, true), vec3<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)) < u_input.a, true, true), false), vec2<u32>(u_input.a, ~u_input.a));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -783f), ~1i, false, select(!vec4<bool>(select(true, false, true), true, true, true), vec4<bool>(false, true, all(vec3<bool>(true, true, true)), true), true), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, all(vec2<bool>(false, true))), _wgslsmith_div_u32(3040u, arg_0) < 4294967295u), select(vec3<bool>(true, arg_2.a.x > 4294967295u, false), vec3<bool>(true, true, true), ~arg_0 >= ~20315u), vec3<bool>(false, true, false)));
    global0 = array<vec2<i32>, 1>();
    var var_1 = Struct_4(func_2(!vec3<bool>(true, arg_0 < arg_2.a.x, !var_0.e.x), arg_2.a.xz), -8796i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -263f)), 1669f, _wgslsmith_f_op_f32(max(1110f, _wgslsmith_f_op_f32(ceil(arg_1)))), _wgslsmith_f_op_f32(max(arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(645f, var_0.a, var_0.a, -921f) + vec4<f32>(arg_1, arg_1, -954f, var_0.a)))), vec4<bool>(!any(var_0.e), all(vec4<bool>(var_0.c, var_0.e.x, var_0.c, true)), !var_0.c, select(var_0.d.x, select(false, var_0.d.x, false), var_0.d.x)))), any(var_0.d.zw), 21963u);
    var var_2 = select(select(var_0.e.zx, select(select(vec2<bool>(var_1.d, true), vec2<bool>(true, false), !var_1.d), var_0.d.zx, all(vec3<bool>(var_0.e.x, true, true)) | true), var_0.d.xz), vec2<bool>(all(vec4<bool>(true, true, var_0.e.x, any(vec4<bool>(true, var_1.d, var_1.d, var_0.d.x)))), !any(select(var_0.e, var_0.e, var_1.d))), select(var_0.d.zw, !(!var_0.e.xy), select(select(!var_0.e.yz, var_0.e.zy, select(vec2<bool>(var_1.d, false), vec2<bool>(var_0.c, false), var_0.d.x)), select(select(var_0.e.zz, var_0.e.zz, vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), var_0.e.yz), select(var_0.d.wy, var_0.d.zw, false)), vec2<bool>(false, var_1.d))));
    var var_3 = true;
    return Struct_1(min(var_1.a.a, ~select(vec4<u32>(arg_2.a.x, arg_0, arg_0, 0u), var_1.a.a, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 1>();
    var var_0 = Struct_4(func_4(17951u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -497f)), func_1()), -4306i, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -523f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1028f)), _wgslsmith_f_op_f32(1114f * 1882f))), any(vec4<bool>(false, false, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-100f - -937f)))), -469f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2113f - _wgslsmith_div_f32(-657f, 357f))))), true, u_input.a);
    var_0 = Struct_4(Struct_1(var_0.a.a), 11942i, vec4<f32>(_wgslsmith_f_op_f32(-878f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-449f, var_0.c.x)))), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(138f, var_0.c.x, 977f) * vec3<f32>(-507f, var_0.c.x, var_0.c.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.c.x, 822f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1417f, 999f), var_0.c.wy, var_0.d)), !vec2<bool>(var_0.d, true))), Struct_3(-1351f, u_input.b.x, select(var_0.d, true, var_0.d), !vec4<bool>(true, var_0.d, var_0.d, true), !vec3<bool>(true, false, var_0.d)), -vec3<i32>(u_input.b.x, -1i, 28037i))), _wgslsmith_f_op_f32(trunc(399f))), !var_0.d, u_input.a);
    var var_1 = reverseBits(u_input.b);
    var var_2 = var_0.a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x)) < var_0.c.x;
    let var_4 = Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.c.yzy)), Struct_3(_wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c.x, -453f)) - _wgslsmith_f_op_f32(1142f * 1105f))), -var_1.x, !(2147483647i != abs(var_1.x)), select(select(!vec4<bool>(true, var_0.d, false, true), select(vec4<bool>(true, var_0.d, false, true), vec4<bool>(var_3, false, false, true), vec4<bool>(var_3, var_0.d, var_0.d, false)), !vec4<bool>(var_0.d, var_0.d, false, false)), select(vec4<bool>(false, var_0.d, true, true), !vec4<bool>(false, true, true, var_3), var_0.d | var_0.d), any(vec4<bool>(var_3, true, var_0.d, true))), vec3<bool>(var_0.d, all(vec4<bool>(true, var_3, var_3, var_0.d)), any(!vec4<bool>(false, false, var_0.d, var_3)))), Struct_4(func_1(), _wgslsmith_add_i32(var_0.b, reverseBits(-24962i) << (u_input.a % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1244f, var_0.c.x, var_0.c.x, var_0.c.x))))) * var_0.c), false, 4095u));
    let var_5 = _wgslsmith_sub_i32(~var_4.c.b & -1i, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

