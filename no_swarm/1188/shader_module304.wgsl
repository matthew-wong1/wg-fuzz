struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: vec3<u32>,
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: vec3<bool>) -> Struct_1 {
    return Struct_1(!any(arg_2));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    let var_0 = ~u_input.a;
    var var_1 = _wgslsmith_f_op_f32(-arg_1);
    var var_2 = firstLeadingBit(-vec2<i32>(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, -11017i)));
    var var_3 = i32(-1i) * -var_2.x;
    var var_4 = Struct_3(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(trunc(542f))), func_2(!arg_0.a, Struct_3(_wgslsmith_f_op_f32(trunc(1f)), arg_0, -36183i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(925f, -811f, 537f)))), vec3<bool>(arg_0.a, !(!arg_0.a), true)), 1i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - arg_1)), -243f, arg_1));
    return Struct_2(func_2(arg_0.a, Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_4.a * arg_1), 1326f)), Struct_1(true), ~_wgslsmith_div_i32(34268i, -1i), var_4.d), select(vec3<bool>(arg_0.a, any(vec4<bool>(arg_0.a, arg_0.a, false, var_4.b.a)), false), !(!vec3<bool>(false, arg_0.a, true)), true)), arg_0, vec3<bool>(false, var_4.b.a, false), arg_0.a || arg_0.a, true);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec3<f32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = ~_wgslsmith_mod_u32(u_input.c, ~reverseBits(u_input.c)) != (59535u & select(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a), ~u_input.a), ~(~0u), !arg_1));
    let var_1 = Struct_1(false);
    var var_2 = -1i;
    let var_3 = func_2(false, Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -264f)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.x, -194f), _wgslsmith_f_op_f32(sign(arg_3.x))))), func_3(Struct_1(true), -1610f).a, u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_2 + arg_2))))), select(arg_0.c, vec3<bool>(true, any(select(vec4<bool>(var_0, false, false, var_0), vec4<bool>(arg_1, true, var_1.a, false), var_1.a)), _wgslsmith_f_op_f32(-924f * 842f) != _wgslsmith_f_op_f32(round(1000f))), vec3<bool>(true, false, var_1.a)));
    let var_4 = Struct_3(arg_3.x, Struct_1(arg_3.x != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_3.x))))), 1768i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_2 * arg_2), vec3<f32>(arg_2.x, -271f, arg_3.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(arg_2, arg_2)))))));
    return Struct_1(arg_0.b.a);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>) -> u32 {
    let var_0 = vec2<bool>(!(!func_2(arg_0.a, Struct_3(-675f, Struct_1(arg_0.a), u_input.b.x, vec3<f32>(-124f, 1539f, -1379f)), !vec3<bool>(arg_0.a, arg_0.a, arg_0.a)).a), any(select(select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), true), !(!vec3<bool>(true, arg_0.a, false)), !select(arg_0.a, true, false))));
    return 1u | abs(_wgslsmith_mod_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, u_input.c, arg_2.x), vec3<u32>(arg_2.x, 36760u, 23790u))), abs(~24835u)));
}

fn func_6(arg_0: u32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 121f) - 599f), 1153f, _wgslsmith_f_op_f32(f32(-1f) * -471f)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-944f, 1000f)), -955f, -195f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-833f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(818f, 223f, false)), _wgslsmith_f_op_f32(f32(-1f) * -814f))), 1511f)));
    let var_1 = 32804u;
    return Struct_3(_wgslsmith_f_op_f32(-251f + 1f), func_3(Struct_1(true), 352f).a, _wgslsmith_add_i32(-13901i, u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 1000f, var_0.x), vec3<f32>(var_0.x, -2042f, var_0.x), true)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(-824f, var_0.x, 2138f)))))));
}

fn func_1() -> vec2<f32> {
    var var_0 = vec3<u32>(0u, 1u, u_input.a.x);
    var var_1 = func_6(func_5(func_4(func_3(func_2(false, Struct_3(-1000f, Struct_1(true), u_input.b.x, vec3<f32>(-343f, 1408f, 262f)), vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(-752f * -741f)), !func_2(true, Struct_3(1168f, Struct_1(true), -2147483647i, vec3<f32>(1000f, 1417f, -354f)), vec3<bool>(true, false, true)).a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-239f, -1679f, -785f) * vec3<f32>(210f, 1000f, 879f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(362f, -1105f, -342f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-411f, 669f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(780f, 647f), vec2<f32>(1083f, 511f), true)))), u_input.b.x, u_input.a));
    var_1 = func_6(var_0.x);
    var var_2 = Struct_4(var_1.d.yy, !func_3(Struct_1(var_1.b.a), 1210f).c.xy);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(3087f, _wgslsmith_f_op_f32(f32(-1f) * -461f)), var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - _wgslsmith_f_op_f32(max(var_2.a.x, 479f))))));
    return _wgslsmith_f_op_vec2_f32(var_2.a + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_1.d.zy, var_1.d.xx)) * vec2<f32>(var_2.a.x, 225f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(483f, var_3.x) * var_1.d.yy) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2098f, 1429f)))), !var_2.b)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.d.xz))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_1());
    var var_1 = ~26575i;
    let var_2 = (u_input.c == min(34476u, ~_wgslsmith_mod_u32(12296u, u_input.c))) & func_3(func_6(~firstTrailingBit(u_input.c)).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) + _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(step(-1013f, -158f)))).d;
    var_1 = u_input.b.x | _wgslsmith_mod_i32(u_input.b.x, -3687i);
    var_1 = reverseBits(u_input.b.x) >> (u_input.c % 32u);
    var var_3 = Struct_3(1417f, Struct_1(!any(vec2<bool>(false, false))), _wgslsmith_dot_vec2_i32(u_input.b.yz, u_input.b.yy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 342f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 521f, var_0.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -2528f, var_0.x)))));
    let var_4 = vec2<i32>(u_input.b.x, firstLeadingBit(reverseBits(var_3.c))) & -u_input.b.xy;
    let x = u_input.a;
    s_output = StorageBuffer(471f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2030f, -559f, var_3.d.x, 1334f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-460f, 390f, var_0.x, var_3.a)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, 1000f, 2800f, 1796f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1126f), ~reverseBits(select(vec3<u32>(42893u, 48288u, u_input.c) << (vec3<u32>(u_input.a.x, 67855u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(32205u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), select(vec3<bool>(var_2, var_2, true), vec3<bool>(true, var_3.b.a, false), vec3<bool>(true, var_2, true)))));
}

