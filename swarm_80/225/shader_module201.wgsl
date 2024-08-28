struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 0u, 4294967295u, 0u);

var<private> global1: Struct_4;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> vec3<u32> {
    let var_0 = global1.c;
    global0 = ~vec4<u32>(0u, ~44986u, reverseBits(arg_1.x), u_input.b);
    let var_1 = _wgslsmith_mod_vec4_i32(-(min(u_input.a, -vec4<i32>(0i, -2147483647i, 2147483647i, arg_0)) | u_input.a), _wgslsmith_clamp_vec4_i32(-max(vec4<i32>(-2147483647i, -1i, global1.d, global1.a), reverseBits(vec4<i32>(-42009i, u_input.a.x, arg_0, -51669i))), -_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(global1.d, global1.e.e.x, global1.a, -1568i)), -vec4<i32>(arg_0, 32848i, 0i, 1i)), u_input.a));
    let var_2 = arg_0;
    let var_3 = var_1.x & firstTrailingBit(_wgslsmith_div_i32(var_1.x, _wgslsmith_clamp_i32(~u_input.a.x, firstLeadingBit(50190i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, global1.e.e.x), var_1.xz))));
    return min(~vec3<u32>(global1.e.a.x, 4294967295u, ~1u), ~vec3<u32>(4294967295u ^ global0.x, ~(~u_input.b), ~countOneBits(global0.x)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_4) -> vec3<i32> {
    var var_0 = _wgslsmith_clamp_i32(arg_2.d, min(-1i, u_input.a.x), firstTrailingBit(~firstLeadingBit(global1.a))) >= ~_wgslsmith_mod_i32(global1.e.e.x, u_input.a.x);
    let var_1 = Struct_4(_wgslsmith_mod_i32(-(_wgslsmith_mod_i32(global1.d, 2147483647i) ^ _wgslsmith_add_i32(1i, arg_2.e.e.x)), global1.a), global1.b, _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)))), u_input.a.x, Struct_1(vec3<u32>(~min(global0.x, 4294967295u), abs(_wgslsmith_dot_vec2_u32(global1.e.a.zx, global0.yy)), arg_1.a.x & global1.e.a.x), arg_2.e.b, select(select(select(vec3<bool>(arg_2.e.c.x, true, true), vec3<bool>(global1.e.c.x, arg_2.e.c.x, arg_2.e.c.x), arg_1.c.x), select(vec3<bool>(global1.e.c.x, true, arg_1.c.x), vec3<bool>(arg_2.e.c.x, arg_2.e.c.x, global1.e.c.x), global1.e.c.x), vec3<bool>(true, arg_1.c.x, false)), !arg_1.c, !global1.e.c.x | true), arg_0.x, vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(24554i, -1i), _wgslsmith_mod_i32(u_input.a.x, 51520i)), global1.e.e.x)));
    var var_2 = _wgslsmith_f_op_f32(round(-1641f));
    let var_3 = select(~abs(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 2147483647i, -35572i, 14687i), vec4<i32>(var_1.d, arg_1.e.x, -2147483647i, u_input.a.x)))), u_input.a, vec4<bool>(true, !all(!vec4<bool>(arg_2.e.c.x, true, false, true)), select(all(vec2<bool>(var_1.e.c.x, true)), select(var_1.e.c.x, global1.e.c.x, arg_2.e.c.x), var_1.e.c.x) & arg_1.c.x, false));
    global0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, firstLeadingBit(~_wgslsmith_clamp_u32(0u, arg_1.a.x, arg_1.a.x)), abs(1u), select(1u | global0.x, _wgslsmith_add_u32(1u, 59626u), var_1.e.c.x) | _wgslsmith_dot_vec3_u32(func_3(u_input.a.x, arg_1.a.yx), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_1.a.x, global1.e.a.x), vec3<u32>(global1.e.a.x, arg_1.a.x, 4294967295u)))), _wgslsmith_sub_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 4294967295u, 28673u, 1u), vec4<u32>(42040u, 14114u, 52731u, arg_2.e.a.x))) << (abs(vec4<u32>(80100u, arg_2.e.a.x, 2020u, 0u) << (vec4<u32>(53652u, 4294967295u, 31176u, arg_2.e.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~vec4<u32>(arg_2.e.a.x, 92654u, arg_2.e.a.x, global0.x) | vec4<u32>(53889u, 4294967295u, 1u, 1u))), vec4<u32>(arg_2.e.a.x, (u_input.b << (~28632u % 32u)) << (35319u % 32u), 56137u, func_3(0i << (var_1.e.a.x % 32u), arg_2.e.a.xx | vec2<u32>(arg_1.a.x, 7047u)).x & 75729u));
    return vec3<i32>(~61896i, (~(~var_1.d) << (global0.x % 32u)) >> ((~(~1u) << (_wgslsmith_mult_u32(~var_1.e.a.x, _wgslsmith_clamp_u32(arg_1.a.x, arg_1.a.x, arg_1.a.x)) % 32u)) % 32u), 10544i);
}

fn func_2() -> Struct_4 {
    let var_0 = abs(func_4(_wgslsmith_f_op_vec3_f32(-global1.e.b.yzx), Struct_1(func_3(2147483647i, ~vec2<u32>(global1.e.a.x, 58989u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global1.e.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1179f, global1.c, global1.b, 117f)))), !select(global1.e.c, vec3<bool>(global1.e.c.x, true, true), global1.e.c.x), -767f, ~_wgslsmith_sub_vec2_i32(global1.e.e, u_input.a.xy)), Struct_4(abs(-32315i), global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(926f - global1.b) + _wgslsmith_f_op_f32(step(global1.b, global1.c))), min(abs(u_input.a.x), -14044i), global1.e)));
    global1 = Struct_4(func_4(global1.e.b.wwy, global1.e, Struct_4(abs(min(-1i, u_input.a.x)), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2529f)) * _wgslsmith_f_op_f32(f32(-1f) * -227f)), global1.e.e.x, Struct_1(global0.wwy, vec4<f32>(2010f, -219f, global1.b, 1072f), select(global1.e.c, vec3<bool>(false, false, global1.e.c.x), vec3<bool>(global1.e.c.x, global1.e.c.x, false)), global1.c, -vec2<i32>(u_input.a.x, global1.e.e.x)))).x, global1.b, _wgslsmith_f_op_f32(select(global1.b, _wgslsmith_f_op_f32(f32(-1f) * -1922f), true)), global1.a, Struct_1(global0.wxw, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.e.d, _wgslsmith_f_op_f32(round(global1.e.d)), _wgslsmith_f_op_f32(-1192f - 1323f), _wgslsmith_f_op_f32(-global1.e.d)))), !global1.e.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global1.e.d))), select(min(var_0.xy, select(var_0.zy, vec2<i32>(u_input.a.x, var_0.x), global1.e.c.x)), vec2<i32>(var_0.x, -2082i), global1.e.c.xx)));
    var var_1 = Struct_4(1i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(887f, _wgslsmith_f_op_f32(global1.e.b.x + -999f)) - _wgslsmith_f_op_f32(exp2(global1.b))), global1.b)), _wgslsmith_f_op_f32(floor(-946f)), 1i, global1.e);
    let var_2 = Struct_4(global1.e.e.x, var_1.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, global1.c) + global1.b), _wgslsmith_sub_i32(abs(reverseBits(2147483647i)), func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, global1.b, global1.b), var_1.e.b.yyy), vec3<f32>(-572f, var_1.b, var_1.b))), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(22198u, 0u, var_1.e.a.x), vec3<u32>(u_input.b, 4294967295u, global0.x)), _wgslsmith_f_op_vec4_f32(-var_1.e.b), !var_1.e.c, var_1.b, ~global1.e.e), Struct_4(1i, -472f, _wgslsmith_f_op_f32(var_1.c * global1.b), global1.a, global1.e)).x), var_1.e);
    var var_3 = global1.e;
    return Struct_4(var_1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.c))), var_3.d, -6710i, var_1.e);
}

fn func_1() -> i32 {
    global1 = func_2();
    var var_0 = reverseBits(u_input.b);
    let var_1 = -18760i;
    let var_2 = firstLeadingBit(~vec4<u32>(~global1.e.a.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global0.x, u_input.b, 21088u, 0u)), vec4<u32>(global1.e.a.x, 27092u, 39483u, 104804u) >> (vec4<u32>(1u, u_input.b, global1.e.a.x, 70305u) % vec4<u32>(32u))), ~(~global0.x), func_2().e.a.x));
    var var_3 = func_2();
    return _wgslsmith_clamp_i32(~(i32(-1i) * -_wgslsmith_div_i32(-1i, var_1)), ~var_3.e.e.x, i32(-1i) * -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a << (4294967295u % 32u), func_1(), func_2().e.e.x), vec3<i32>(global1.e.e.x, 2147483647i, firstTrailingBit(global1.d))), global1.e.d, -1374f, ~abs(20641i), Struct_1(vec3<u32>(u_input.b >> (73743u % 32u), global1.e.a.x, 0u) | select(vec3<u32>(76595u, 95292u, 1u), ~global0.yxx, false), global1.e.b, global1.e.c, 407f, firstLeadingBit(max(u_input.a.yx, global1.e.e) ^ ~global1.e.e)));
    let var_1 = global1.e.a.x;
    global0 = firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.b, global1.e.a.x, var_0.e.a.x, 37431u)), vec4<u32>(0u, _wgslsmith_add_u32(var_0.e.a.x, global1.e.a.x), 1u, 4294967295u)), 24471u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(~10401u, _wgslsmith_sub_u32(0u, global0.x)), vec2<u32>(abs(0u), var_0.e.a.x | 0u))));
    global1 = Struct_4(~global1.a, 1487f, 680f, ~countOneBits((1i | global1.e.e.x) & (i32(-1i) * -15146i)), global1.e);
    var var_2 = Struct_5(~var_0.e.a.x, min(max(vec4<u32>(1u, u_input.b, 1695u, u_input.b), vec4<u32>(41515u, global1.e.a.x, var_0.e.a.x, 0u) >> (vec4<u32>(u_input.b, 95733u, 0u, 43276u) % vec4<u32>(32u))) << (~(~vec4<u32>(global1.e.a.x, var_0.e.a.x, global1.e.a.x, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(var_0.e.a.x, 51607u, func_2().e.a.x, u_input.b)), Struct_2(func_3(abs(-global1.e.e.x), vec2<u32>(u_input.b, _wgslsmith_div_u32(global0.x, 1u))).x, vec4<bool>(!var_0.e.c.x, !(global1.e.c.x & true), global1.e.a.x > 0u, false), _wgslsmith_f_op_vec3_f32(-global1.e.b.xxy)));
    var_2 = Struct_5(global1.e.a.x, vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, var_0.e.a.x), u_input.b) ^ ~_wgslsmith_div_u32(var_0.e.a.x, 882u), 1u, global1.e.a.x, 74123u), Struct_2(~var_2.b.x, var_2.c.b, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global1.e.b.x)), _wgslsmith_f_op_f32(var_2.c.c.x - -423f))), -1452f, var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.b, ~(~(u_input.b >> (global0.x % 32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, abs(global0.x), global0.x, global0.x), var_2.b)));
}

