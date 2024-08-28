struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2>;

var<private> global1: bool;

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_4, 10>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> vec2<u32> {
    var var_0 = ~4294967295u;
    var_0 = arg_0.a.x;
    var_0 = arg_0.a.x;
    let var_1 = Struct_4(Struct_1(!any(vec3<bool>(true, true, true)), ~(min(4294967295u, arg_0.a.x) | _wgslsmith_mult_u32(arg_0.a.x, arg_0.a.x)), arg_0.a.zx), u_input.a);
    global1 = global2.x & !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_1.a.a, true, var_1.a.a), false));
    return ~_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~abs(var_1.a.c), var_1.a.c), ~var_1.a.c);
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(any(global2.wy), firstLeadingBit(arg_0.x), func_3(Struct_3(_wgslsmith_div_vec4_u32(select(vec4<u32>(arg_0.x, arg_0.x, 1u, arg_0.x), vec4<u32>(33949u, 93581u, arg_0.x, 57969u), vec4<bool>(false, true, false, global2.x)), arg_0)), ~(~_wgslsmith_div_i32(0i, u_input.a))));
    var var_1 = reverseBits(firstLeadingBit(vec2<i32>(1i, _wgslsmith_clamp_i32(1i, -u_input.c, ~u_input.c))));
    global0 = array<vec3<u32>, 2>();
    global2 = vec4<bool>(true, !(global2.x || false), all(vec4<bool>(var_0.a, true, true, ~var_1.x <= (1i & u_input.a))), _wgslsmith_f_op_f32(-1050f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1208f)) + 849f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1189f * 1000f)))));
    var var_2 = Struct_2(max(-_wgslsmith_div_i32(2147483647i, max(u_input.a, var_1.x)), ~var_1.x), Struct_1(false, ~var_0.b, vec2<u32>(~0u, _wgslsmith_sub_u32(func_3(Struct_3(vec4<u32>(9195u, arg_0.x, arg_0.x, 20189u)), -2147483647i).x, 21654u))), global2.yyz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(492f)))))), _wgslsmith_div_f32(441f, -1076f)));
    return var_2.b;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> vec3<bool> {
    global0 = array<vec3<u32>, 2>();
    global3 = array<Struct_4, 10>();
    global2 = vec4<bool>(all(!vec2<bool>(all(global2.yx), all(vec4<bool>(arg_0, true, true, global2.x)))), !(arg_0 | all(!global2.wy)), global2.x, all(vec4<bool>(-1i < u_input.c, !global2.x, all(vec2<bool>(arg_0, true)), arg_0)));
    let var_0 = 6175u <= ~_wgslsmith_add_u32(~_wgslsmith_add_u32(arg_1.x, 0u), ~0u);
    var var_1 = Struct_2(_wgslsmith_sub_i32(-2147483647i & _wgslsmith_sub_i32(~2147483647i, _wgslsmith_clamp_i32(u_input.a, u_input.b, u_input.a)), u_input.b), func_2(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 84607u), ~vec4<u32>(4333u, arg_1.x, arg_1.x, arg_1.x)), firstLeadingBit(vec4<u32>(arg_1.x, arg_1.x, 0u, arg_1.x)))), global2.xwx, _wgslsmith_f_op_f32(sign(-170f)));
    return select(!var_1.c, select(select(vec3<bool>(select(var_0, true, false), true, false), global2.xxz, !select(global2.wxw, var_1.c, global2.zzw)), vec3<bool>(false, all(var_1.c.yx) && arg_0, var_1.c.x), global2.wwy), var_1.c);
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<bool>, arg_3: f32) -> i32 {
    let var_0 = global2.x | arg_1;
    let var_1 = Struct_4(func_2(~vec4<u32>(_wgslsmith_mult_u32(33660u, 73200u), func_2(vec4<u32>(1u, 24814u, 0u, 60283u)).b, 15431u, 74191u)), -42161i);
    let var_2 = Struct_2(_wgslsmith_div_i32(_wgslsmith_sub_i32(var_1.b, firstLeadingBit(1i)), var_1.b & u_input.b), Struct_1(false, 58296u, ~min(var_1.a.c | var_1.a.c, firstLeadingBit(var_1.a.c))), vec3<bool>(all(vec3<bool>(arg_2.x, true, arg_0.x)) & !(var_1.a.b >= var_1.a.c.x), true, any(vec2<bool>(true, true))), arg_3);
    global3 = array<Struct_4, 10>();
    var var_3 = ~vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.b, var_2.a, var_2.a, var_1.b), vec4<i32>(var_1.b, 2147483647i, u_input.c, var_2.a) | vec4<i32>(var_1.b, -2147483647i, -48597i, 38476i)), var_2.a, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(8579i, var_1.b), vec2<i32>(var_2.a, 1i))) >> (vec4<u32>(_wgslsmith_mod_u32(var_1.a.b, ~(var_1.a.b >> (var_2.b.b % 32u))), var_2.b.c.x, var_2.b.b, ~(abs(1u) & ~var_1.a.c.x)) % vec4<u32>(32u));
    return select(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_2.a, u_input.a, u_input.b), vec4<i32>(-9098i, var_3.x, 2147483647i, -5038i)), vec4<i32>(var_2.a, 1395i, var_2.a, var_1.b), -vec4<i32>(var_2.a, 2147483647i, 2147483647i, -1i)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(18889i, -2147483647i, u_input.c, 6718i), ~vec4<i32>(-2147483647i, -70210i, 31719i, -28763i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.a, -15271i, var_1.b), vec4<i32>(u_input.c, var_1.b, 2147483647i, var_2.a), vec4<i32>(u_input.b, -35021i, u_input.a, 25957i))), vec4<i32>(reverseBits(u_input.a), 2147483647i, max(-29941i, 23794i), var_1.b)), var_3.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 10>();
    let var_0 = ~vec3<i32>(u_input.b, -_wgslsmith_sub_i32(_wgslsmith_add_i32(2147483647i, u_input.a), u_input.b), func_4(vec3<bool>(false != global2.x, all(vec4<bool>(false, false, global2.x, global2.x)), true), global2.x, func_1(false, ~vec2<u32>(23210u, 34958u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(296f - 734f))));
    global3 = array<Struct_4, 10>();
    let var_1 = true;
    let var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(func_2(vec4<u32>(3882u, 0u, 1u, 1u)).b, 51106u), vec2<u32>(1u, 1u)) | countOneBits(~(~43463u)), _wgslsmith_add_u32(1u, 1u), max(28404u, _wgslsmith_mult_u32(~(~16394u), ~4294967295u)));
    global0 = array<vec3<u32>, 2>();
    var var_3 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(4294967295u, var_2.x, 31059u, var_2.x) >> (vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x) % vec4<u32>(32u))), reverseBits(~vec4<u32>(4294967295u, 6606u, var_2.x, 636u))), _wgslsmith_add_u32(_wgslsmith_sub_u32(func_2(vec4<u32>(var_2.x, 39768u, var_2.x, var_2.x)).c.x, _wgslsmith_sub_u32(7634u, var_2.x)), _wgslsmith_dot_vec2_u32(select(var_2.zx, vec2<u32>(35402u, var_2.x), true), ~vec2<u32>(0u, var_2.x))), var_2.x, ~(~var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(100f, -216f))), 955f, _wgslsmith_f_op_f32(-1121f + _wgslsmith_f_op_f32(abs(-380f))), _wgslsmith_f_op_f32(f32(-1f) * -385f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-438f, -856f, -1013f, 1107f), vec4<f32>(-1372f, 1000f, -296f, 121f), var_1)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(676f, -1156f, 236f, -416f))))), !(!vec4<bool>(false, false, true, global2.x)))), 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -306f)) + 1351f));
}

