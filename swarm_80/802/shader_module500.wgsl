struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(vec4<bool>(true, true, false, false), -550f, -39636i), Struct_1(vec4<bool>(false, false, false, false), -991f, 1i)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), 1105f, -10901i), Struct_1(vec4<bool>(false, false, true, false), 576f, -41066i)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), 1000f, -15500i), Struct_1(vec4<bool>(true, true, true, false), 354f, 0i)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), 1000f, 2147483647i), Struct_1(vec4<bool>(true, false, true, true), 515f, -24747i)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), -1000f, 23230i), Struct_1(vec4<bool>(false, true, false, true), -652f, 1i)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), -965f, -1i), Struct_1(vec4<bool>(true, false, false, false), 713f, 2825i)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), 1184f, 2147483647i), Struct_1(vec4<bool>(true, true, false, true), -396f, 11801i)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), -1811f, 18420i), Struct_1(vec4<bool>(true, true, false, true), 775f, 2147483647i)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), -391f, -554i), Struct_1(vec4<bool>(true, false, false, true), -444f, -1i)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), 748f, 55028i), Struct_1(vec4<bool>(false, false, false, false), -775f, -22i)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), 846f, i32(-2147483648)), Struct_1(vec4<bool>(false, true, false, false), 232f, -22238i)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), -1149f, 0i), Struct_1(vec4<bool>(true, false, false, true), 1167f, -20447i)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), -2120f, 8112i), Struct_1(vec4<bool>(true, true, true, true), -515f, -34214i)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), 285f, 1i), Struct_1(vec4<bool>(false, true, true, true), 718f, 26512i)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), 2313f, i32(-2147483648)), Struct_1(vec4<bool>(true, true, true, true), 1968f, -17066i)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), -928f, -2343i), Struct_1(vec4<bool>(false, false, true, true), 419f, 1i)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), -833f, i32(-2147483648)), Struct_1(vec4<bool>(false, false, false, false), 194f, -1i)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(733f, arg_3.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_3.b)), _wgslsmith_f_op_f32(max(arg_3.b, arg_3.b))))), -678f)), -667f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(1746f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1494f) - _wgslsmith_f_op_f32(354f + arg_3.b)), arg_3.a.x))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(875f * _wgslsmith_f_op_f32(arg_3.b + _wgslsmith_f_op_f32(f32(-1f) * -110f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, var_0.x))));
    var var_2 = u_input.c.yzz;
    var var_3 = -267f;
    let var_4 = Struct_2(arg_3, arg_3);
    return vec3<u32>(1u, _wgslsmith_mult_u32(~4294967295u, arg_1), 37527u);
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    let var_1 = Struct_1(vec4<bool>(select(var_0, var_0, !(!var_0)), !any(global0[_wgslsmith_index_u32(0u, 16u)]) | var_0, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-104f - -1432f) - 762f), u_input.a.x);
    let var_2 = _wgslsmith_clamp_vec3_u32(~(~_wgslsmith_mult_vec3_u32(u_input.c.wzy, u_input.c.zxw)) ^ u_input.c.xzz, u_input.c.wwx >> (firstLeadingBit(max(vec3<u32>(0u, 11794u, u_input.c.x) | vec3<u32>(u_input.b, 4294967295u, 0u), func_3(53409i, 23546u, vec4<i32>(-61597i, -65825i, 2147483647i, u_input.a.x), var_1))) % vec3<u32>(32u)), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.b), vec3<u32>(u_input.b, 4294967295u, u_input.b)) << (~vec3<u32>(u_input.b, 22691u, u_input.b) % vec3<u32>(32u))));
    var var_3 = var_1;
    global0 = array<vec2<bool>, 16>();
    return var_1;
}

fn func_1() -> f32 {
    let var_0 = Struct_4(Struct_2(func_2(), Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false), func_2().a), 180f, _wgslsmith_div_i32(62998i, -u_input.a.x))), Struct_3(_wgslsmith_sub_u32(abs(u_input.b), ~1u), abs(-27304i), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(265f, 1169f, 158f, 383f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-404f, -1964f, -519f, -787f))), 18357i > u_input.a.x)))), ~_wgslsmith_add_i32(u_input.d, -1i), any(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)))), 4294967295u, global1[_wgslsmith_index_u32(~u_input.c.x << (0u % 32u), 17u)], global1[_wgslsmith_index_u32(1u, 17u)]);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(721f)))));
    let var_2 = Struct_1(!(!var_0.e.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c.x)), ~(-39951i));
    let var_3 = Struct_3(~u_input.b, firstLeadingBit(-53903i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b.c)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.b.c, var_0.b.c) - var_0.b.c), vec4<f32>(_wgslsmith_div_f32(-1842f, 1533f), _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(trunc(var_1)), _wgslsmith_f_op_f32(sign(var_0.a.b.b)))))), -65698i, true);
    let var_4 = var_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.b)))))) + _wgslsmith_f_op_f32(step(var_4.d.b.b, -1231f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(802f * -2140f), _wgslsmith_f_op_f32(f32(-1f) * -1224f), true))))));
    let var_2 = Struct_2(func_2(), Struct_1(vec4<bool>(func_2().a.x, true, false, all(vec2<bool>(true, true))), 634f, -2147483647i));
    var var_3 = select(vec4<i32>(var_2.b.c, ~(u_input.d << (u_input.c.x % 32u)) >> ((17912u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), u_input.c.xw)) % 32u), 1i, -2147483647i), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, var_2.b.c, 50341i, 1i), vec4<i32>(47932i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.x, u_input.a.x, 1i), vec4<i32>(u_input.d, -1i, 33101i, u_input.d)), 0i, -u_input.d)), -min(_wgslsmith_div_i32(-2147483647i, var_2.b.c), 2147483647i), min(u_input.a.x, ~_wgslsmith_sub_i32(-11493i, -12573i)), _wgslsmith_sub_i32(var_0.x, ~18427i)), any(vec3<bool>(!(true | var_2.a.a.x), all(vec2<bool>(var_2.a.a.x, true)), true)));
    var_3 = ~vec4<i32>(-firstTrailingBit(_wgslsmith_mult_i32(u_input.d, var_0.x)), ~1i, ~firstLeadingBit(reverseBits(var_2.a.c)), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1730f);
}

