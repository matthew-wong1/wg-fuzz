struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

var<private> global1: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_3) -> i32 {
    let var_0 = reverseBits(7313u);
    let var_1 = vec3<u32>(29334u, 4294967295u, 0u);
    var var_2 = arg_0;
    var_2 = Struct_2(arg_0.a, 1u, ~(~select(4294967295u, var_2.b >> (u_input.b.x % 32u), true)));
    let var_3 = true;
    return _wgslsmith_dot_vec3_i32(-countOneBits(vec3<i32>(u_input.d.x, -1i, u_input.d.x)) & _wgslsmith_mod_vec3_i32(firstLeadingBit(select(vec3<i32>(-1i, 2147483647i, -10732i), vec3<i32>(u_input.a, u_input.d.x, -43137i), arg_0.a.b.x)), -min(vec3<i32>(u_input.d.x, 12859i, 1i), vec3<i32>(16734i, -63142i, u_input.d.x))), max(select(_wgslsmith_add_vec3_i32(vec3<i32>(202i, u_input.d.x, u_input.c.x), max(vec3<i32>(u_input.c.x, u_input.d.x, u_input.d.x), vec3<i32>(u_input.d.x, -2147483647i, -1i))), _wgslsmith_div_vec3_i32(abs(vec3<i32>(-10640i, u_input.a, u_input.c.x)), abs(vec3<i32>(u_input.c.x, u_input.c.x, u_input.a))), !select(vec3<bool>(var_3, global1.a.d, arg_2.a.d), vec3<bool>(arg_2.a.d, arg_0.a.e.x, true), vec3<bool>(true, var_2.a.b.x, var_3))), _wgslsmith_clamp_vec3_i32(firstLeadingBit(-vec3<i32>(u_input.a, u_input.a, 1i)), ~max(vec3<i32>(u_input.a, u_input.d.x, u_input.a), vec3<i32>(u_input.c.x, u_input.a, u_input.c.x)), max(~vec3<i32>(u_input.d.x, u_input.d.x, u_input.c.x), -vec3<i32>(19551i, u_input.c.x, 28726i)))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = global1.a;
    var var_1 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(~0i, 2147483647i, u_input.a) ^ vec3<i32>(1i, 1i, max(-2147483647i, arg_0)), _wgslsmith_clamp_vec3_i32(select(~vec3<i32>(arg_0, -1i, u_input.a), vec3<i32>(1i, arg_0, 14970i) ^ vec3<i32>(1i, arg_0, -2147483647i), var_0.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 3297i, arg_0), vec3<i32>(-1i, u_input.d.x, arg_0))), reverseBits(-vec3<i32>(u_input.d.x, u_input.c.x, u_input.d.x))), abs(vec3<i32>(-arg_0, ~u_input.a, -u_input.a)));
    var var_2 = !var_0.b;
    let var_3 = ~min(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, ~(-11243i), firstTrailingBit(30390i), ~u_input.c.x), vec4<i32>(-1i) * -vec4<i32>(var_1.x, var_1.x, u_input.d.x, 20687i)), vec4<i32>(-arg_0, func_3(Struct_2(global1.a, 1u, global1.c), vec3<f32>(1215f, 499f, -840f), global0[_wgslsmith_index_u32(39229u, 12u)]) << (~u_input.b.x % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d.x, arg_0), vec2<i32>(arg_0, 18589i)), abs(vec2<i32>(-42775i, -1i))), _wgslsmith_div_i32(u_input.c.x, 2147483647i)));
    var var_4 = var_0.b;
    return Struct_2(Struct_1(abs(~(~150312u)), global1.a.b, vec4<f32>(_wgslsmith_f_op_f32(-global1.a.c.x), -248f, global1.a.c.x, global1.a.c.x), !any(var_0.b), var_2.yxy), _wgslsmith_clamp_u32(4294967295u, ~firstLeadingBit(1u) | (var_0.a << (u_input.e % 32u)), 23372u), 0u);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = global1.a;
    var var_1 = Struct_3(arg_1.a);
    var_1 = global0[_wgslsmith_index_u32(arg_3.b, 12u)];
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.wx, _wgslsmith_clamp_vec2_u32(select(u_input.b.zz, u_input.b.zz, arg_3.a.e.xy), vec2<u32>(global1.a.a, u_input.b.x), u_input.b.zw)) << (~vec2<u32>(~76939u, var_1.a.a) % vec2<u32>(32u)), ~u_input.b.ww << (vec2<u32>(u_input.e, _wgslsmith_mult_u32(arg_3.b, 1u)) % vec2<u32>(32u))), 12u)];
    let var_3 = u_input.b.xwy;
    return func_2(abs(u_input.d.x));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: u32) -> u32 {
    var var_0 = Struct_2(arg_2.a.a, arg_2.b, global1.c);
    global1 = func_4(global1.a.c.x, func_2(-(~arg_1.x)), var_0.a.c.yyz, Struct_2(global1.a, reverseBits(_wgslsmith_div_u32(min(4294967295u, var_0.a.a), u_input.b.x)), ~(~countOneBits(4025u))));
    let var_1 = arg_0;
    let var_2 = Struct_3(func_2(62214i).a);
    let var_3 = arg_2;
    return ~min(~_wgslsmith_div_u32(1u, ~var_2.a.a), var_0.b);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global0 = array<Struct_3, 12>();
    let var_0 = vec4<u32>(~(~3199u), _wgslsmith_dot_vec4_u32(abs(u_input.b), u_input.b) >> ((max(select(4294967295u, u_input.e, arg_0.a.d), firstLeadingBit(37529u)) << ((_wgslsmith_dot_vec2_u32(u_input.b.zw, vec2<u32>(arg_0.c, 0u)) << (4294967295u % 32u)) % 32u)) % 32u), arg_0.c, u_input.b.x ^ func_4(_wgslsmith_f_op_f32(select(-1000f, arg_0.a.c.x, global1.a.b.x)), func_4(_wgslsmith_div_f32(global1.a.c.x, global1.a.c.x), Struct_2(arg_0.a, u_input.e, arg_0.c), _wgslsmith_f_op_vec3_f32(ceil(global1.a.c.ywz)), func_4(global1.a.c.x, Struct_2(global1.a, 4294967295u, global1.c), vec3<f32>(arg_0.a.c.x, 272f, arg_0.a.c.x), arg_0)), arg_0.a.c.xxz, arg_0).b);
    var var_1 = all(vec2<bool>(true, true));
    let var_2 = Struct_3(global1.a);
    global0 = array<Struct_3, 12>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(Struct_1(func_1(true, ~vec4<i32>(39900i, u_input.a, u_input.d.x, -1i), Struct_4(Struct_3(global1.a), 20007u, global1.a.c.x, vec3<i32>(u_input.d.x, u_input.a, 83425i)), 11813u), global1.a.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.a.c, global1.a.c)), false, !global1.a.b.wzx), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, u_input.e, u_input.e, 13142u)), ~global1.a.a), countOneBits(func_1(global1.a.d, vec4<i32>(u_input.d.x, u_input.a, -2147483647i, u_input.d.x), Struct_4(Struct_3(Struct_1(u_input.e, vec4<bool>(true, global1.a.d, global1.a.b.x, global1.a.d), global1.a.c, true, vec3<bool>(false, global1.a.d, global1.a.d))), 4294967295u, -1072f, vec3<i32>(u_input.a, 1i, u_input.a)), 4294967295u))), ~func_4(-974f, Struct_2(Struct_1(4294967295u, vec4<bool>(global1.a.e.x, true, true, false), vec4<f32>(global1.a.c.x, -1035f, global1.a.c.x, global1.a.c.x), true, global1.a.b.zyw), 19022u, global1.a.a), global1.a.c.wxz, Struct_2(Struct_1(1u, vec4<bool>(false, global1.a.b.x, global1.a.e.x, global1.a.e.x), vec4<f32>(global1.a.c.x, 1000f, global1.a.c.x, 578f), global1.a.e.x, global1.a.b.xzx), u_input.b.x, 4294967295u)).a.a << (4294967295u % 32u)));
    let var_1 = func_2(u_input.a).a;
    var var_2 = Struct_3(func_2(-countOneBits(1i)).a);
    global1 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(~select(u_input.b, u_input.b, var_0.a.b.x), vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, var_1.a), _wgslsmith_clamp_u32(var_1.a, var_2.a.a, 0u), 1u, countOneBits(33769u))), !global1.a.b, _wgslsmith_div_vec4_f32(func_5(Struct_2(Struct_1(u_input.b.x, vec4<bool>(var_0.a.b.x, false, var_0.a.e.x, true), var_0.a.c, false, vec3<bool>(true, var_2.a.b.x, var_2.a.b.x)), var_2.a.a, 1u)).a.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, global1.a.c.x, -1000f, -140f) * vec4<f32>(-1390f, global1.a.c.x, -2428f, -1964f))), true, vec3<bool>(true, !var_0.a.b.x, !func_4(global1.a.c.x, Struct_2(Struct_1(1u, var_1.b, vec4<f32>(-972f, var_2.a.c.x, global1.a.c.x, var_1.c.x), true, var_2.a.b.xyz), var_1.a, global1.a.a), var_0.a.c.zxy, Struct_2(var_1, 4294967295u, var_0.a.a)).a.e.x)), var_0.c, ~abs(global1.b));
    global1 = Struct_2(func_4(func_2(~func_3(Struct_2(Struct_1(4294967295u, global1.a.b, vec4<f32>(var_1.c.x, global1.a.c.x, var_1.c.x, var_1.c.x), global1.a.d, var_0.a.e), 19713u, var_1.a), vec3<f32>(-2385f, var_1.c.x, var_2.a.c.x), global0[_wgslsmith_index_u32(global1.a.a, 12u)])).a.c.x, func_4(var_0.a.c.x, Struct_2(var_0.a, _wgslsmith_div_u32(1u, var_1.a), firstTrailingBit(4294967295u)), global1.a.c.xxz, Struct_2(Struct_1(var_1.a, global1.a.b, var_0.a.c, false, vec3<bool>(true, false, var_2.a.e.x)), _wgslsmith_div_u32(0u, var_2.a.a), abs(var_0.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -215f), -740f, _wgslsmith_f_op_f32(234f + var_2.a.c.x))), Struct_2(func_5(Struct_2(Struct_1(u_input.e, var_0.a.b, vec4<f32>(var_2.a.c.x, var_1.c.x, var_2.a.c.x, var_1.c.x), global1.a.b.x, vec3<bool>(var_1.d, global1.a.d, true)), 70865u, 24803u)).a, _wgslsmith_sub_u32(0u, ~var_0.a.a), var_1.a)).a, var_0.b | max(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.a, u_input.e), vec3<u32>(var_0.b, 0u, var_2.a.a)), func_2(u_input.d.x).c), ~1u);
    var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_0.a.a, _wgslsmith_mod_u32(func_4(_wgslsmith_f_op_f32(exp2(global1.a.c.x)), Struct_2(Struct_1(var_2.a.a, vec4<bool>(false, true, var_0.a.e.x, false), global1.a.c, false, var_2.a.b.ywz), var_0.a.a, global1.b >> (global1.a.a % 32u)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_2.a.c.x * -406f), -1272f), func_4(var_1.c.x, func_5(Struct_2(Struct_1(var_0.b, vec4<bool>(false, true, var_2.a.b.x, var_0.a.e.x), global1.a.c, true, global1.a.b.yxx), var_1.a, 1u)), _wgslsmith_f_op_vec3_f32(-var_2.a.c.xxz), Struct_2(Struct_1(14676u, global1.a.b, vec4<f32>(1792f, 2220f, -152f, 451f), var_1.e.x, var_2.a.b.yzy), 0u, var_0.c))).a.a, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b, var_0.c), u_input.b.yx), 79345u))), 12u)];
    var var_3 = 179f;
    let var_4 = func_5(Struct_2(func_4(var_1.c.x, Struct_2(func_4(var_2.a.c.x, Struct_2(var_0.a, 28481u, var_0.b), vec3<f32>(-842f, var_1.c.x, var_1.c.x), Struct_2(var_2.a, 1u, u_input.e)).a, func_2(u_input.a).c, _wgslsmith_clamp_u32(0u, var_0.c, var_2.a.a)), vec3<f32>(global1.a.c.x, var_2.a.c.x, var_2.a.c.x), func_2(-73192i)).a, var_0.c, 4294967295u));
    var_3 = var_4.a.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(global1.c, _wgslsmith_div_u32(0u, var_4.a.a) & _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, 1u, 1u, 32449u))), 49059i, abs(~vec4<u32>(abs(global1.c), ~global1.a.a, u_input.b.x, 1u)), -min(u_input.d.x, ~(-2147483647i << (var_1.a % 32u))), _wgslsmith_sub_i32(~21041i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, global1.a.a), ~u_input.b.zwx) % 32u), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d.x, -60157i), max(vec2<i32>(u_input.d.x, u_input.c.x), u_input.d)), ~0i, -21909i)));
}

