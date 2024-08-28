struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    let var_0 = u_input.a;
    var var_1 = true;
    let var_2 = u_input.a.x;
    var var_3 = false;
    let var_4 = Struct_3(Struct_1(!select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), any(vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(696f, 1743f, 1634f, 1137f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 79373u), vec2<u32>(9082u, 4694u)) << (select(abs(vec2<u32>(37438u, 1u)), ~vec2<u32>(81314u, 54585u), vec2<bool>(true, true)) % vec2<u32>(32u)), vec2<bool>(true, true), _wgslsmith_add_u32(select(_wgslsmith_div_u32(59099u, 31082u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 55628u), vec2<u32>(0u, 59804u)), false), 44926u)), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-533f, -206f)))), _wgslsmith_f_op_f32(-1000f * -1291f), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_add_vec2_u32(vec2<u32>(reverseBits(41281u), 14384u), ~vec2<u32>(1u, 0u) | firstTrailingBit(vec2<u32>(20487u, 58762u))), vec2<bool>(true, true), ~1u));
    return var_4.a.c.x;
}

fn func_2() -> u32 {
    return func_3() | max(_wgslsmith_clamp_u32(~23521u, _wgslsmith_sub_u32(4294967295u, ~85668u), 1u), ~select(abs(1u), _wgslsmith_mod_u32(40087u, 14988u), true));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = 558f;
    var var_1 = vec3<u32>(~(~(~func_2())), 1u, 4294967295u);
    let var_2 = Struct_2(vec3<bool>(true, true, false), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -600f)))), vec3<f32>(150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))), var_0))), select(select(vec3<bool>(false, any(vec2<bool>(true, true)), all(vec2<bool>(false, true))), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), all(vec4<bool>(true, false, true, false))), vec3<bool>(any(vec2<bool>(true, true)), false, !(1u > var_1.x)), vec3<bool>(true, true, true)), Struct_1(vec4<bool>(true, true, !any(vec4<bool>(true, true, false, false)), any(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0, -1139f, var_0) + vec4<f32>(var_0, var_0, var_0, var_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(892f, -557f, var_0, -769f), vec4<f32>(var_0, var_0, var_0, var_0)) - vec4<f32>(var_0, 783f, var_0, var_0)))), var_1.xz, vec2<bool>(true, true), ~abs(var_1.x)));
    var var_3 = Struct_1(vec4<bool>(true, any(!select(var_2.d.a.yz, vec2<bool>(true, var_2.c.x), true)), false, var_2.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.b.x, 1221f, -1325f, 268f)), vec2<u32>(~abs(_wgslsmith_add_u32(16418u, var_2.d.c.x)), var_1.x), var_2.d.a.yy, 1u);
    return Struct_3(var_2.d, 0u, var_2.b.x, -1000f, var_2.d);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_4) -> u32 {
    let var_0 = reverseBits(_wgslsmith_mod_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -4186i, 1i), vec3<i32>(1i, u_input.a.x, u_input.a.x)), vec3<i32>(~firstTrailingBit(u_input.a.x), firstTrailingBit(u_input.a.x), reverseBits(9335i))));
    let var_1 = 28073u;
    var var_2 = Struct_5(Struct_4(arg_1.c, !vec2<bool>(false, any(vec2<bool>(arg_2.d.c.x, arg_0.x))), true, Struct_2(select(arg_0.yyy, vec3<bool>(true, false, arg_1.a.d.x), vec3<bool>(false, false, false)), vec3<f32>(-412f, arg_2.d.b.x, arg_1.e.b.x), arg_1.e.a.wxz, arg_1.a)));
    let var_3 = arg_1;
    var var_4 = Struct_5(arg_2);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~4294967295u);
    let var_1 = vec3<u32>(~4294967295u, 1u, ~1u);
    var_0 = _wgslsmith_clamp_u32(select(~var_1.x, var_1.x, true), _wgslsmith_mult_u32(var_1.x & _wgslsmith_div_u32(6503u, 38011u), ~var_1.x), max(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, 83665u, _wgslsmith_div_u32(var_1.x, 25370u)), 22828u, 0u), 0u));
    var var_2 = func_4(vec4<bool>(all(vec3<bool>(true, false, all(vec3<bool>(true, false, false)))), !all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), all(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false)), true), func_1(u_input.a.x), Struct_4(-1250f, vec2<bool>(true, false), all(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), true)), Struct_2(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(136f, 466f, 1236f), vec3<f32>(363f, 339f, -822f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-771f, 2293f, 724f)))), vec3<bool>(true, true, true), Struct_1(vec4<bool>(false, false, false, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-553f, 812f, 651f, 323f)), var_1.zx | var_1.zy, select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), reverseBits(var_1.x)))));
    var_2 = func_1(_wgslsmith_mult_i32(u_input.a.x, -u_input.a.x)).b;
    var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(4294967295u, var_1.x), ~_wgslsmith_mod_u32(var_1.x, var_1.x), (15510u ^ var_1.x) & ~4291u, 102923u), vec4<u32>(func_2(), var_1.x | firstTrailingBit(var_1.x), ~var_1.x, var_1.x)), ~_wgslsmith_div_vec4_u32(select(~vec4<u32>(52278u, var_1.x, var_1.x, var_1.x), abs(vec4<u32>(0u, var_1.x, var_1.x, var_1.x)), true), ~vec4<u32>(var_1.x, 30863u, var_1.x, 84528u) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_1.x, var_1.x, var_1.x), vec4<u32>(var_1.x, var_1.x, var_1.x, 10331u))));
    var_0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_1.x, ~(~var_1.x)), _wgslsmith_mult_u32(var_1.x, var_1.x)) & var_1.x;
    var var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2088f - _wgslsmith_f_op_f32(sign(1876f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 626f))), -208f), _wgslsmith_clamp_i32(-1i, -8086i, -33380i) | u_input.a.x);
}

