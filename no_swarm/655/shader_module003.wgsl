struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec2<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_5, arg_3: f32) -> f32 {
    global0 = array<vec3<bool>, 3>();
    global0 = array<vec3<bool>, 3>();
    global0 = array<vec3<bool>, 3>();
    global0 = array<vec3<bool>, 3>();
    global0 = array<vec3<bool>, 3>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1293f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), arg_3)) + arg_1.c);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    global0 = array<vec3<bool>, 3>();
    global0 = array<vec3<bool>, 3>();
    let var_0 = _wgslsmith_f_op_f32(func_3(4294967295u, arg_1, Struct_5(!all(select(arg_2.b.b.xxx, vec3<bool>(arg_2.c.b, arg_2.b.b.x, false), arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c + _wgslsmith_div_f32(arg_1.c, 895f)) + _wgslsmith_f_op_f32(min(1f, -806f))))));
    var var_1 = u_input.a;
    let var_2 = vec3<u32>(~_wgslsmith_div_u32(~u_input.a << (1u % 32u), u_input.b.x), _wgslsmith_add_u32(u_input.b.x, _wgslsmith_clamp_u32(u_input.a, ~(u_input.a | 33606u), 4294967295u << (u_input.a % 32u))), 24332u >> (_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(u_input.a, 39856u, 1u, 16747u)), ~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))) % 32u));
    return Struct_1(vec2<bool>(arg_2.e, !arg_1.b), arg_1.b, 1081f);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = 1430f;
    global0 = array<vec3<bool>, 3>();
    global0 = array<vec3<bool>, 3>();
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(round(arg_1.a.c)), arg_1, arg_1.a, arg_1.a, arg_1.a.a.x), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, _wgslsmith_clamp_i32(2147483647i, _wgslsmith_div_i32(0i, u_input.c), 0i)), vec2<i32>(abs(0i), ~_wgslsmith_clamp_i32(57134i, u_input.c, 1i))), _wgslsmith_f_op_vec2_f32(-arg_2), arg_2.x, func_2(arg_2.x, func_2(_wgslsmith_f_op_f32(round(arg_1.a.c)), arg_1.a, Struct_3(-1770f, arg_1, func_2(391f, arg_1.a, Struct_3(arg_1.a.c, Struct_2(arg_1.a, arg_1.b), Struct_1(arg_1.b.zx, arg_1.a.b, 1264f), Struct_1(vec2<bool>(false, arg_1.b.x), true, arg_2.x), true), u_input.c), func_2(arg_2.x, Struct_1(arg_1.b.yw, arg_1.a.a.x, 117f), Struct_3(-2191f, arg_1, Struct_1(arg_1.a.a, false, arg_1.a.c), arg_1.a, true), 2147483647i), arg_0), firstLeadingBit(u_input.c >> (u_input.a % 32u))), Struct_3(-1000f, arg_1, Struct_1(vec2<bool>(arg_0, arg_1.b.x), false, -1000f), Struct_1(arg_1.b.zz, !arg_0, 498f), arg_1.b.x), u_input.c));
    var var_2 = Struct_3(arg_2.x, arg_1, Struct_1(vec2<bool>(false, all(vec4<bool>(true, var_1.e.a.x, var_1.e.a.x, var_1.a.b.b.x)) || any(var_1.a.b.b)), all(!vec4<bool>(arg_1.b.x, false, var_1.a.c.b, arg_0)) || !(!arg_0), arg_2.x), Struct_1(!arg_1.b.xz, arg_1.a.b, _wgslsmith_f_op_f32(-arg_1.a.c)), all(vec4<bool>(true, all(!vec4<bool>(var_1.e.b, false, var_1.e.b, var_1.a.d.a.x)), arg_1.b.x | false, arg_0)));
    return Struct_2(var_1.e, var_2.b.b);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_4) -> Struct_5 {
    var var_0 = Struct_4(arg_3.a, _wgslsmith_div_vec2_i32(arg_3.b, _wgslsmith_add_vec2_i32(arg_3.b ^ -vec2<i32>(arg_3.b.x, u_input.c), -vec2<i32>(25098i, -23302i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.c), _wgslsmith_f_op_vec2_f32(arg_3.c * vec2<f32>(-1315f, arg_3.e.c))), _wgslsmith_f_op_vec2_f32(round(arg_3.c))))), _wgslsmith_f_op_f32(-arg_3.a.b.a.c), func_4(select(true, arg_2.x, !(arg_1.a.b & arg_0.b)), Struct_2(func_4(func_2(arg_0.c, Struct_1(vec2<bool>(arg_0.b, arg_0.b), arg_2.x, -205f), Struct_3(-980f, arg_1, Struct_1(arg_1.b.wz, true, arg_0.c), arg_1.a, false), u_input.c).b, func_4(true, Struct_2(arg_1.a, arg_3.a.b.b), vec2<f32>(arg_1.a.c, -528f)), vec2<f32>(arg_3.a.a, 1205f)).a, vec4<bool>(arg_1.b.x, any(arg_0.a), u_input.c < u_input.c, arg_3.e.a.x || arg_3.e.a.x)), vec2<f32>(_wgslsmith_f_op_f32(sign(678f)), arg_0.c)).a);
    global0 = array<vec3<bool>, 3>();
    var_0 = arg_3;
    let var_1 = arg_3;
    var var_2 = Struct_5(var_0.a.b.a.c > _wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(-arg_3.a.c.c)));
    return Struct_5(max(arg_3.b.x, -27136i) != u_input.c);
}

fn func_6(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: u32) -> Struct_5 {
    return Struct_5(arg_0.a);
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> Struct_2 {
    global0 = array<vec3<bool>, 3>();
    let var_0 = func_6(func_5(Struct_1(!select(vec2<bool>(false, false), vec2<bool>(arg_1, arg_0.x), false), any(select(arg_0.yx, arg_0.xy, false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1376f, 2248f))))), func_4(true, Struct_2(func_2(380f, Struct_1(arg_0.zw, true, 1191f), Struct_3(914f, Struct_2(Struct_1(arg_0.zw, true, 1539f), vec4<bool>(false, true, false, true)), Struct_1(arg_0.zx, arg_0.x, -921f), Struct_1(vec2<bool>(arg_1, arg_0.x), arg_0.x, 1090f), arg_1), 64521i), !arg_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(499f, 1000f))), vec2<bool>(!arg_1, any(arg_0.xy)), Struct_4(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -2224f), Struct_2(Struct_1(arg_0.wz, false, -433f), vec4<bool>(true, true, false, arg_0.x)), Struct_1(vec2<bool>(false, arg_1), arg_0.x, 826f), Struct_1(vec2<bool>(true, arg_1), false, -1251f), func_4(arg_0.x, Struct_2(Struct_1(vec2<bool>(false, arg_0.x), arg_0.x, 1429f), arg_0), vec2<f32>(1510f, -1000f)).b.x), (vec2<i32>(0i, u_input.c) & vec2<i32>(u_input.c, -25509i)) << (u_input.b.yy % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(857f, -649f), vec2<f32>(-1281f, 311f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(546f)) + _wgslsmith_f_op_f32(f32(-1f) * -690f)), Struct_1(!arg_0.yw, arg_1, _wgslsmith_f_op_f32(floor(1677f))))), ~(vec3<i32>(~2147483647i, _wgslsmith_clamp_i32(u_input.c, 30418i, 2147483647i), i32(-1i) * -1i) | -vec3<i32>(65638i, 2147483647i, -2147483647i)), ~(~(u_input.a | 4294967295u)));
    var var_1 = -531f;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -736f) * 818f), Struct_2(func_4(arg_0.x, Struct_2(Struct_1(vec2<bool>(false, true), false, 1558f), vec4<bool>(false, true, true, false)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-738f, -1018f) + vec2<f32>(-858f, -1677f)), vec2<f32>(397f, 1177f))).a, select(arg_0, arg_0, arg_0.x)), Struct_1(arg_0.zz, !arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-639f, -1024f)))))), Struct_1(!vec2<bool>(var_0.a, var_0.a), 1u <= u_input.b.x, 244f), !func_6(var_0, min(~vec3<i32>(u_input.c, 1i, 0i), firstTrailingBit(vec3<i32>(-1i, 1i, 40137i))), ~u_input.a).a);
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-923f))));
    return func_4(false, func_4(any(!func_4(arg_0.x, var_2.b, vec2<f32>(var_2.a, -442f)).b.ww), func_4(!func_2(219f, Struct_1(vec2<bool>(false, var_0.a), arg_0.x, var_2.c.c), Struct_3(2282f, var_2.b, Struct_1(vec2<bool>(arg_1, false), var_0.a, -673f), var_2.d, arg_0.x), 3318i).b, func_4(true, var_2.b, vec2<f32>(105f, -170f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c.c, var_2.d.c) * vec2<f32>(var_2.a, var_2.b.a.c)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(712f, var_2.a), vec2<f32>(var_2.d.c, -1004f))), false))), vec2<f32>(func_2(_wgslsmith_f_op_f32(min(var_2.b.a.c, -854f)), func_2(var_2.c.c, Struct_1(arg_0.zx, true, var_2.b.a.c), Struct_3(-291f, Struct_2(var_2.c, vec4<bool>(false, true, true, false)), var_2.d, Struct_1(arg_0.xx, true, var_2.b.a.c), var_2.c.b), u_input.c), Struct_3(-280f, Struct_2(Struct_1(var_2.c.a, var_0.a, var_2.d.c), arg_0), Struct_1(var_2.c.a, true, 561f), Struct_1(vec2<bool>(false, false), arg_0.x, 1187f), false), -u_input.c).c, var_2.c.c)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c.c, 178f) - vec2<f32>(var_2.c.c, var_2.b.a.c))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.c.c, _wgslsmith_f_op_f32(step(-169f, -1032f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -215f))))), func_2(_wgslsmith_f_op_f32(-var_2.b.a.c), var_2.b.a, Struct_3(-242f, Struct_2(Struct_1(arg_0.zx, true, 911f), arg_0), Struct_1(vec2<bool>(true, true), arg_0.x, -1079f), var_2.c, u_input.a > 8848u), 1i).a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(select(vec4<bool>(true, any(vec2<bool>(false, true)), true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, false))), vec4<bool>(!all(vec4<bool>(false, false, false, true)), false, select(false, false, all(vec2<bool>(true, true))), true), !vec4<bool>(all(vec3<bool>(false, true, false)), all(vec3<bool>(false, true, true)), true, any(global0[_wgslsmith_index_u32(0u, 3u)]))), true);
    let var_1 = 1236f;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(291f, -992f, var_0.a.c), vec3<f32>(var_1, 890f, 1334f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(787f, var_0.a.c, var_1), vec3<f32>(var_0.a.c, 1567f, var_0.a.c), true)), false))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c * 595f) - var_1), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.c)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1, -245f, var_0.a.c)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-1i, _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-25249i, -57816i), vec2<i32>(11331i, u_input.c), vec2<i32>(u_input.c, u_input.c)), vec2<i32>(2147483647i, 1i)), u_input.c)), ~(~0u));
}

