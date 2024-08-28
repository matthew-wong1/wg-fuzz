struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10>;

var<private> global1: f32;

var<private> global2: array<Struct_3, 26>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(u_input.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.e), _wgslsmith_div_f32(-781f, -836f))), ~firstLeadingBit(u_input.b), _wgslsmith_add_i32(arg_0.d, -u_input.a.x), _wgslsmith_f_op_f32(arg_0.e - -110f));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> i32 {
    var var_0 = Struct_1(u_input.b, _wgslsmith_f_op_f32(-arg_0.c.e), _wgslsmith_sub_vec4_u32(arg_0.c.a, vec4<u32>(1u, 89152u, func_2(Struct_1(u_input.b, arg_0.e.b, u_input.b, arg_0.e.d, arg_0.c.b)).a.x, 0u)), func_2(arg_0.e).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -548f) + _wgslsmith_f_op_f32(step(877f, -1004f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.c.e))));
    var var_2 = ~(vec2<i32>(~(~(-2147483647i)), var_0.d) >> ((vec2<u32>(u_input.b.x, 1u) & (u_input.b.yw & vec2<u32>(arg_1.x, u_input.b.x))) % vec2<u32>(32u)));
    let var_3 = ~_wgslsmith_sub_vec4_u32(select(u_input.b, vec4<u32>(arg_0.c.c.x, 38598u, 40813u, arg_1.x), vec4<bool>(arg_0.b, true, arg_0.b, arg_0.d.x)), vec4<u32>(reverseBits(var_0.c.x), ~arg_1.x, u_input.c, 0u)) >> (arg_0.c.c % vec4<u32>(32u));
    var_1 = _wgslsmith_f_op_f32(min(503f, arg_0.c.e));
    return select(-(~(-arg_0.e.d)), -43837i, !(!arg_0.b)) >> (46409u % 32u);
}

fn func_1() -> f32 {
    let var_0 = Struct_2(Struct_1(~vec4<u32>(u_input.b.x, 1u, 88140u, 91854u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1302f * 1f), -1475f)), vec4<u32>(min(select(u_input.c, 1u, false), 0u), 1u, _wgslsmith_div_u32(~4294967295u, 4294967295u), ~u_input.b.x), func_3(Struct_2(func_2(Struct_1(u_input.b, -376f, u_input.b, -1i, 1037f)), true, Struct_1(u_input.b, -708f, u_input.b, u_input.a.x, -158f), vec4<bool>(true, true, true, true), Struct_1(u_input.b, -361f, u_input.b, u_input.a.x, 938f)), u_input.b.xw), 716f), select(func_2(Struct_1(vec4<u32>(3758u, 4294967295u, u_input.c, u_input.c), 452f, u_input.b, -65339i, -361f)).d >> (0u % 32u), u_input.a.x, false) != (min(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), -18852i) & u_input.a.x), func_2(Struct_1(_wgslsmith_mod_vec4_u32(max(u_input.b, u_input.b), ~u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(714f)) - _wgslsmith_f_op_f32(sign(-1518f))), _wgslsmith_div_vec4_u32(countOneBits(u_input.b), u_input.b), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -349f)))), vec4<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), any(vec3<bool>(false, true, true)))), select(true, false, true), any(vec2<bool>(true, true)), any(vec4<bool>(false, true, true, true))), Struct_1(vec4<u32>(max(u_input.c, 1u) | u_input.c, _wgslsmith_clamp_u32(u_input.c, u_input.c, 0u) & u_input.c, 24929u, _wgslsmith_div_u32(u_input.b.x, u_input.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(637f, -1479f)), countOneBits(vec4<u32>(u_input.b.x, u_input.c, u_input.b.x, ~0u)), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1016f)))) - _wgslsmith_f_op_f32(-820f + _wgslsmith_f_op_f32(sign(-179f))))));
    var var_1 = var_0.d.wy;
    let var_2 = var_0.c.d;
    let var_3 = !(!var_0.d.xwz);
    let var_4 = !select(vec4<bool>(firstTrailingBit(u_input.a.x) <= -23231i, !var_3.x || var_3.x, (var_0.a.e == -205f) | true, -44772i <= _wgslsmith_dot_vec3_i32(vec3<i32>(11976i, -11182i, var_0.e.d), vec3<i32>(-1i, u_input.a.x, u_input.a.x))), !select(vec4<bool>(false, true, var_0.d.x, false), vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.b), true), all(select(vec3<bool>(var_3.x, true, true), !var_0.d.ywx, vec3<bool>(false, var_0.b, false))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1127f))))), var_0.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1())))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(568f, -513f, 736f, 510f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-258f, -313f, 812f, -174f), vec4<f32>(1000f, -1756f, -641f, -1247f), true))), select(true, true, true))), vec4<f32>(func_2(Struct_1(u_input.b, -602f, u_input.b, u_input.a.x, 143f)).b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1543f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 296f, -419f), !select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))))));
    let var_1 = Struct_3(vec4<i32>(u_input.a.x, ~(-1i) | -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(0i, u_input.a.x, 0i)), 0i, 2147483647i));
    let var_2 = Struct_2(func_2(func_2(Struct_1(u_input.b, 1132f, ~u_input.b, -u_input.a.x, var_0.x))), true, func_2(func_2(func_2(Struct_1(u_input.b, var_0.x, vec4<u32>(4294967295u, u_input.c, 42149u, 19669u), 1i, var_0.x)))), !(!vec4<bool>(true, select(true, true, false), true, true)), Struct_1(_wgslsmith_add_vec4_u32(u_input.b, ~vec4<u32>(0u, 0u, 20150u, 1u)), _wgslsmith_f_op_f32(140f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -412f) * -771f)), ~u_input.b, u_input.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)))));
    var var_3 = ~abs(abs(var_1.a.xwy));
    global2 = array<Struct_3, 26>();
    var var_4 = Struct_1(countOneBits(countOneBits(select(~u_input.b, ~vec4<u32>(u_input.b.x, var_2.c.a.x, 46805u, u_input.b.x), var_2.d.x))), _wgslsmith_f_op_f32(-1183f * _wgslsmith_f_op_f32(f32(-1f) * -1969f)), _wgslsmith_clamp_vec4_u32(~var_2.c.a, ~(~u_input.b), var_2.e.c), var_3.x, var_0.x);
    var var_5 = vec2<u32>(_wgslsmith_add_u32(countOneBits(51601u), 0u), max(var_2.e.c.x, ~_wgslsmith_mult_u32(52507u, ~4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1738f), var_4.e)), var_0.wy)), -17968i);
}

