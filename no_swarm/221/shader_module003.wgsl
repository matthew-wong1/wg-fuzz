struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
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

var<private> global0: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec2<bool>(false, true), Struct_1(false, true, vec4<bool>(true, true, false, true), 21613i), vec2<i32>(1i, 2147483647i), Struct_1(true, false, vec4<bool>(false, false, true, false), 27969i), 25816u), Struct_3(vec2<bool>(false, false), Struct_1(true, true, vec4<bool>(true, false, true, false), 0i), vec2<i32>(-3903i, 0i), Struct_1(true, true, vec4<bool>(true, true, false, false), -1i), 0u), Struct_3(vec2<bool>(true, true), Struct_1(false, true, vec4<bool>(true, false, false, true), -36306i), vec2<i32>(1i, -1517i), Struct_1(false, false, vec4<bool>(false, true, false, false), 2147483647i), 18161u), Struct_3(vec2<bool>(true, false), Struct_1(false, true, vec4<bool>(false, true, true, false), i32(-2147483648)), vec2<i32>(0i, -26284i), Struct_1(true, false, vec4<bool>(true, false, true, true), 2147483647i), 69054u), Struct_3(vec2<bool>(false, false), Struct_1(true, true, vec4<bool>(false, true, true, false), 14118i), vec2<i32>(10057i, -17842i), Struct_1(true, true, vec4<bool>(true, true, false, false), 6673i), 3226u), Struct_3(vec2<bool>(false, false), Struct_1(false, true, vec4<bool>(false, false, false, false), 14300i), vec2<i32>(-1i, 1i), Struct_1(true, false, vec4<bool>(true, false, true, false), 41894i), 4294967295u), Struct_3(vec2<bool>(true, false), Struct_1(false, false, vec4<bool>(false, false, false, false), -59122i), vec2<i32>(2147483647i, -56308i), Struct_1(false, false, vec4<bool>(true, true, false, false), -9022i), 29079u), Struct_3(vec2<bool>(true, false), Struct_1(true, false, vec4<bool>(false, true, false, false), 45126i), vec2<i32>(-1i, 0i), Struct_1(false, false, vec4<bool>(true, true, true, true), 0i), 53323u), Struct_3(vec2<bool>(false, false), Struct_1(false, true, vec4<bool>(true, true, true, false), 2147483647i), vec2<i32>(0i, 2147483647i), Struct_1(true, true, vec4<bool>(true, false, false, true), 25103i), 1u), Struct_3(vec2<bool>(true, true), Struct_1(false, true, vec4<bool>(false, true, false, true), 32525i), vec2<i32>(14456i, -9091i), Struct_1(false, true, vec4<bool>(true, false, true, false), -12047i), 36769u), Struct_3(vec2<bool>(false, true), Struct_1(false, true, vec4<bool>(false, false, true, true), -36967i), vec2<i32>(1i, 0i), Struct_1(true, true, vec4<bool>(false, false, true, true), 9910i), 0u), Struct_3(vec2<bool>(false, true), Struct_1(false, false, vec4<bool>(false, false, true, true), -40441i), vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(false, false, vec4<bool>(true, true, true, true), 0i), 4294967295u), Struct_3(vec2<bool>(true, false), Struct_1(true, false, vec4<bool>(true, true, false, true), -7350i), vec2<i32>(-14986i, -1i), Struct_1(false, true, vec4<bool>(true, true, true, true), 2147483647i), 27816u), Struct_3(vec2<bool>(true, false), Struct_1(false, false, vec4<bool>(false, false, false, false), 53907i), vec2<i32>(-1i, 28628i), Struct_1(true, false, vec4<bool>(true, false, true, true), i32(-2147483648)), 0u), Struct_3(vec2<bool>(false, false), Struct_1(true, false, vec4<bool>(true, true, true, true), 0i), vec2<i32>(1i, 5238i), Struct_1(false, false, vec4<bool>(true, false, false, false), 0i), 70905u), Struct_3(vec2<bool>(false, false), Struct_1(false, false, vec4<bool>(false, false, true, true), -38098i), vec2<i32>(5117i, -1i), Struct_1(false, true, vec4<bool>(true, true, false, false), 2147483647i), 1u), Struct_3(vec2<bool>(true, false), Struct_1(true, true, vec4<bool>(false, false, true, false), 49506i), vec2<i32>(12185i, 2147483647i), Struct_1(false, true, vec4<bool>(false, false, false, true), i32(-2147483648)), 4294967295u), Struct_3(vec2<bool>(false, true), Struct_1(true, true, vec4<bool>(true, true, true, false), i32(-2147483648)), vec2<i32>(i32(-2147483648), 1i), Struct_1(false, true, vec4<bool>(false, false, true, true), 0i), 4294967295u), Struct_3(vec2<bool>(false, false), Struct_1(true, true, vec4<bool>(true, false, true, false), 0i), vec2<i32>(0i, 17510i), Struct_1(false, true, vec4<bool>(true, false, true, true), 28818i), 16231u), Struct_3(vec2<bool>(false, true), Struct_1(true, false, vec4<bool>(false, true, false, true), -1i), vec2<i32>(i32(-2147483648), -1i), Struct_1(false, true, vec4<bool>(false, false, false, false), -68654i), 0u), Struct_3(vec2<bool>(false, false), Struct_1(true, true, vec4<bool>(true, false, false, false), 2147483647i), vec2<i32>(38599i, -1i), Struct_1(true, true, vec4<bool>(true, true, true, true), -6487i), 55041u), Struct_3(vec2<bool>(true, true), Struct_1(false, true, vec4<bool>(true, true, true, true), i32(-2147483648)), vec2<i32>(-22203i, 0i), Struct_1(true, false, vec4<bool>(true, false, true, true), 12268i), 9276u), Struct_3(vec2<bool>(true, true), Struct_1(false, true, vec4<bool>(false, true, true, false), 0i), vec2<i32>(2147483647i, 15331i), Struct_1(true, true, vec4<bool>(false, true, false, true), -66458i), 0u), Struct_3(vec2<bool>(true, true), Struct_1(true, false, vec4<bool>(true, true, false, true), -34505i), vec2<i32>(i32(-2147483648), 0i), Struct_1(true, false, vec4<bool>(true, true, true, true), -20360i), 59366u), Struct_3(vec2<bool>(true, false), Struct_1(true, false, vec4<bool>(true, false, false, true), 0i), vec2<i32>(i32(-2147483648), 9451i), Struct_1(false, false, vec4<bool>(false, false, true, false), -13055i), 34805u), Struct_3(vec2<bool>(false, true), Struct_1(true, true, vec4<bool>(false, false, true, false), -38154i), vec2<i32>(-42496i, -38940i), Struct_1(false, false, vec4<bool>(false, true, true, false), 71830i), 1u), Struct_3(vec2<bool>(false, false), Struct_1(false, true, vec4<bool>(false, true, true, true), 38791i), vec2<i32>(54550i, -36662i), Struct_1(true, true, vec4<bool>(true, true, true, true), 7778i), 0u), Struct_3(vec2<bool>(false, false), Struct_1(true, false, vec4<bool>(false, false, true, true), 2147483647i), vec2<i32>(2147483647i, -1i), Struct_1(false, true, vec4<bool>(false, false, true, true), 0i), 8366u), Struct_3(vec2<bool>(true, false), Struct_1(false, true, vec4<bool>(true, false, false, false), -1i), vec2<i32>(-1i, 1i), Struct_1(true, true, vec4<bool>(true, true, true, true), -57368i), 43765u), Struct_3(vec2<bool>(false, true), Struct_1(true, false, vec4<bool>(true, true, false, true), i32(-2147483648)), vec2<i32>(i32(-2147483648), 1i), Struct_1(false, true, vec4<bool>(true, false, true, false), -26024i), 48482u), Struct_3(vec2<bool>(false, false), Struct_1(false, false, vec4<bool>(true, true, false, true), 3112i), vec2<i32>(0i, 22825i), Struct_1(true, false, vec4<bool>(false, false, true, false), -59294i), 78625u), Struct_3(vec2<bool>(false, true), Struct_1(false, false, vec4<bool>(true, false, true, false), 1i), vec2<i32>(i32(-2147483648), -1i), Struct_1(false, true, vec4<bool>(false, false, true, true), 18331i), 46708u));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<f32> {
    global0 = array<Struct_3, 32>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(172f * -807f) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-908f - 511f)))), Struct_1(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), true, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true))), -min(u_input.c, abs(0i))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec4<bool>(false, false, true, true)))), !any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -170f), _wgslsmith_f_op_f32(step(-869f, -1000f))))))), countOneBits(select(~vec2<u32>(0u, u_input.b.x), abs(u_input.b), vec2<bool>(true, false)) >> (u_input.b % vec2<u32>(32u))));
    let var_1 = u_input.b.x;
    let var_2 = abs(vec3<u32>(1u, var_0.e.x, ~(~_wgslsmith_mult_u32(u_input.b.x, 249u))));
    global0 = array<Struct_3, 32>();
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-316f, -540f)))) + -1879f), _wgslsmith_f_op_f32(f32(-1f) * -1323f), _wgslsmith_f_op_f32(-1848f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.d * -749f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.d, var_0.d)))), var_0.c.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: vec3<f32>) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 32u)];
    var var_1 = ~(~var_0.e);
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(-(~u_input.a.zyx), vec3<i32>(u_input.a.x, u_input.c, i32(-1i) * -26871i)), ~var_0.c.x, select(u_input.a.x, u_input.a.x, arg_1.x), _wgslsmith_dot_vec3_i32(~u_input.a.zzx, abs(_wgslsmith_add_vec3_i32(u_input.a.wzw, u_input.a.zxw)))), u_input.a);
    var_1 = ~0u;
    var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(~15829u), 32u)];
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>, arg_3: vec2<f32>) -> vec4<u32> {
    var var_0 = vec4<bool>(true, arg_0.c.x, select(true, arg_0.a, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, -1558f, arg_3.x)), select(select(vec4<bool>(arg_0.b, false, true, arg_1), vec4<bool>(arg_0.a, arg_0.c.x, arg_0.c.x, false), false), !vec4<bool>(true, arg_0.b, true, false), select(false, false, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) + vec3<f32>(arg_3.x, arg_3.x, -247f)))), all(select(vec3<bool>(arg_1, true, u_input.b.x > u_input.b.x), vec3<bool>(true, true, true), all(select(vec4<bool>(arg_0.b, true, arg_1, true), arg_0.c, false)))));
    var_0 = arg_0.c;
    let var_1 = _wgslsmith_f_op_vec3_f32(func_3()).x;
    var_0 = vec4<bool>(!(_wgslsmith_f_op_f32(floor(arg_3.x)) > -633f), false, arg_0.b, !(!var_0.x));
    var var_2 = arg_0;
    return ~select(~(~(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 0u))), vec4<u32>(u_input.b.x, abs(~0u), 7067u, _wgslsmith_add_u32(u_input.b.x, ~4294967295u)), var_2.c.x & any(!var_2.c));
}

fn func_1() -> Struct_5 {
    global0 = array<Struct_3, 32>();
    let var_0 = firstTrailingBit(func_2(Struct_1(!any(vec4<bool>(false, false, false, true)), true, vec4<bool>(true, true, true, true), 5411i), true, u_input.a.xyx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(154f, -815f)))));
    return Struct_5(-(u_input.c | _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 7496i, u_input.a.x, -56356i), u_input.a), -35016i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1513f, _wgslsmith_f_op_f32(min(2656f, 1576f)))), Struct_1(!(!(-17892i < u_input.a.x)), true, select(vec4<bool>(any(vec4<bool>(true, false, false, true)), true, all(vec2<bool>(true, true)), true), vec4<bool>(u_input.a.x != -1i, false, true, func_4(vec3<f32>(683f, -1061f, -439f), vec4<bool>(false, true, true, true), vec3<f32>(1350f, -762f, -674f))), vec4<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(false, true, true)), any(vec2<bool>(true, true)), true)), ~(-_wgslsmith_div_i32(-1i, 6143i))), abs(_wgslsmith_clamp_vec3_u32(var_0.yxw, var_0.xyy, var_0.zyx)) >> (vec3<u32>(~(var_0.x | u_input.b.x), ~(~u_input.b.x), reverseBits(4294967295u)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 32>();
    global0 = array<Struct_3, 32>();
    global0 = array<Struct_3, 32>();
    var var_0 = func_1();
    var_0 = Struct_5(firstTrailingBit(func_1().c.d), _wgslsmith_f_op_vec3_f32(func_3()).zz, var_0.c, var_0.d);
    var var_1 = var_0.c.c.zy;
    let var_2 = func_1().c;
    var var_3 = _wgslsmith_f_op_f32(select(-259f, -2283f, (true || (var_1.x & true)) & all(vec3<bool>(var_1.x, true, var_2.c.x)))) <= var_0.b.x;
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(663f, var_0.b.x)) - _wgslsmith_f_op_f32(2849f + -815f)) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.b.x, var_4.b.x), _wgslsmith_f_op_f32(1000f + -1093f)))), var_0.b.x), -2147483647i);
}

