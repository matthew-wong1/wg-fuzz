struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec3<i32>(2147483647i, -12387i, -37622i), i32(-2147483648)), Struct_2(vec3<i32>(i32(-2147483648), 19087i, 22067i), 0i), Struct_2(vec3<i32>(-1i, 33606i, 39570i), 2147483647i), Struct_2(vec3<i32>(-12776i, 0i, 1i), -1i), Struct_2(vec3<i32>(0i, -15344i, -65753i), -1i), Struct_2(vec3<i32>(1i, i32(-2147483648), -24557i), 1i), Struct_2(vec3<i32>(-26406i, i32(-2147483648), -26270i), 35344i), Struct_2(vec3<i32>(i32(-2147483648), 1i, -1i), 0i), Struct_2(vec3<i32>(i32(-2147483648), -90929i, 1i), -1i), Struct_2(vec3<i32>(1i, i32(-2147483648), -28899i), 0i), Struct_2(vec3<i32>(18580i, 17953i, -14830i), -1i), Struct_2(vec3<i32>(26067i, -16753i, -10368i), -19854i), Struct_2(vec3<i32>(-1i, -39649i, -10318i), -14123i), Struct_2(vec3<i32>(-7389i, 44517i, 2147483647i), 0i), Struct_2(vec3<i32>(1i, 46066i, 1i), 0i), Struct_2(vec3<i32>(-49591i, -36165i, i32(-2147483648)), 1i), Struct_2(vec3<i32>(0i, -40271i, -41590i), 7254i), Struct_2(vec3<i32>(1i, 1i, -5249i), -1i), Struct_2(vec3<i32>(46150i, 1i, 0i), 0i), Struct_2(vec3<i32>(13600i, 1i, 1i), 15620i), Struct_2(vec3<i32>(1i, -36347i, 34111i), 0i), Struct_2(vec3<i32>(0i, 1i, 32809i), 24997i), Struct_2(vec3<i32>(i32(-2147483648), 28286i, -7592i), 0i), Struct_2(vec3<i32>(32634i, 2147483647i, -57987i), 19935i), Struct_2(vec3<i32>(0i, 2147483647i, -22964i), i32(-2147483648)), Struct_2(vec3<i32>(2147483647i, 54299i, 0i), -10403i), Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), i32(-2147483648)), Struct_2(vec3<i32>(47917i, 0i, i32(-2147483648)), 2165i), Struct_2(vec3<i32>(56712i, i32(-2147483648), 16933i), 57698i), Struct_2(vec3<i32>(-1i, 2657i, -21467i), i32(-2147483648)), Struct_2(vec3<i32>(-1i, 27959i, -11983i), i32(-2147483648)));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: bool) -> f32 {
    var var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b) ^ vec3<u32>(~29424u << (~u_input.b.x % 32u), max(u_input.b.x, max(1u, u_input.b.x)), u_input.b.x), vec3<u32>(u_input.b.x, ~10098u, select(4294967295u, ~59622u, arg_3)));
    var var_1 = -2147483647i;
    let var_2 = arg_1.b.xx;
    var var_3 = vec2<i32>(u_input.d.x, 23237i);
    let var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-1661f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1208f - 1089f) * _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1892f, -371f, arg_2.x), vec3<f32>(401f, arg_2.x, -593f)))))));
    return arg_2.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec2<i32>) -> vec3<bool> {
    let var_0 = Struct_1(u_input.b.yx, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1322f - _wgslsmith_div_f32(942f, -510f)) - _wgslsmith_f_op_f32(func_3(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_3(true, vec3<bool>(true, false, true), 2147483647i, global0[_wgslsmith_index_u32(21614u, 31u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(-683f, -640f, -1000f, 2491f) - vec4<f32>(-498f, -1000f, 1522f, -1000f)), true))), 1f));
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    var var_1 = var_0;
    return !select(!vec3<bool>(true, true, all(vec4<bool>(false, false, false, false))), vec3<bool>(true, true, true), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true));
}

fn func_1() -> Struct_2 {
    var var_0 = true;
    var_0 = true;
    global0 = array<Struct_2, 31>();
    var_0 = any(select(!select(vec3<bool>(true, false, false), func_2(u_input.d, vec4<i32>(u_input.e, u_input.e, 0i, u_input.a), u_input.d), func_2(u_input.d, vec4<i32>(u_input.e, 38947i, u_input.d.x, -8939i), u_input.d)), vec3<bool>(any(vec2<bool>(true, true)), !func_2(u_input.d, vec4<i32>(u_input.a, u_input.c, u_input.c, 36435i), u_input.d).x, true), false));
    var var_1 = Struct_3(true, !(!func_2(countOneBits(u_input.d), -vec4<i32>(30486i, u_input.c, 36745i, -44149i), vec2<i32>(u_input.e, -85216i))), -1i, global0[_wgslsmith_index_u32(u_input.b.x >> (_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_add_u32(_wgslsmith_add_u32(37635u, 49307u), 46020u)) % 32u), 31u)]);
    return global0[_wgslsmith_index_u32(4294967295u, 31u)];
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_2 {
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    var var_0 = -11505i;
    global0 = array<Struct_2, 31>();
    var_0 = 0i;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 31>();
    var var_0 = Struct_3(true, !(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), all(vec2<bool>(false, false)))), u_input.d.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xy) % 32u), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1525f, 1387f), vec2<f32>(1250f, -2748f), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))))), func_1(), ~(~(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x) << (vec4<u32>(u_input.b.x, u_input.b.x, 28730u, 20321u) % vec4<u32>(32u))))));
    var_0 = Struct_3(!var_0.b.x, select(var_0.b, !vec3<bool>(13879i == var_0.d.b, false, var_0.a), var_0.b), -max(min(0i, var_0.c) | 1i, 2147483647i), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(830f, 581f)), Struct_2(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1246f, 1867f) - vec2<f32>(174f, 1000f)), func_1(), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x) << (vec4<u32>(90505u, 1u, u_input.b.x, 5546u) % vec4<u32>(32u))).a, u_input.e), reverseBits(vec4<u32>(abs(0u), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xy), ~u_input.b.x))));
    let var_1 = -25541i;
    var var_2 = Struct_4(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), max(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(92632u, u_input.b.x, u_input.b.x, 0u))), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) ^ 43997u, vec4<f32>(-951f, 737f, -701f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1115f + -354f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-116f - 392f) + 293f))));
    var var_3 = Struct_1(~(select(u_input.b.yy, u_input.b.zz, var_0.a) | select(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.zx, var_0.b.zx)) & ~_wgslsmith_mult_vec2_u32(~u_input.b.yx, u_input.b.zy), vec2<f32>(_wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(max(var_2.b.x, var_2.b.x))), 1273f));
    let x = u_input.a;
    s_output = StorageBuffer(320f, select(var_0.d.a.xy, vec2<i32>(var_0.c, u_input.a), !(!(!var_0.b.zy))), _wgslsmith_add_vec3_u32(countOneBits(~u_input.b | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.b.x), u_input.b)), _wgslsmith_mult_vec3_u32(abs(~u_input.b), abs(~vec3<u32>(4294967295u, 84993u, u_input.b.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)))), _wgslsmith_f_op_f32(var_2.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1134f - var_2.b.x) + -213f)))), vec4<u32>(_wgslsmith_div_u32(~var_3.a.x, 21092u), 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a, 4294967295u), ~(~var_3.a)), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.x, 92729u, var_3.a.x, var_2.a) | vec4<u32>(1u, 31366u, 45464u, 4294967295u), select(vec4<u32>(var_2.a, var_2.a, 68846u, 61120u), vec4<u32>(var_2.a, 29847u, u_input.b.x, u_input.b.x), var_0.a)))));
}

