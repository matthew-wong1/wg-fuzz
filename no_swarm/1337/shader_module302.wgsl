struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(25998i, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_3(i32(-2147483648), vec2<i32>(-22991i, 2147483647i)), Struct_3(i32(-2147483648), vec2<i32>(-29829i, -18004i)), Struct_3(-28558i, vec2<i32>(40514i, -1i)), Struct_3(0i, vec2<i32>(-29838i, -7678i)), Struct_3(-8558i, vec2<i32>(0i, -8687i)), Struct_3(0i, vec2<i32>(-15685i, 1i)), Struct_3(-26128i, vec2<i32>(1i, 1113i)), Struct_3(2147483647i, vec2<i32>(1i, 32348i)), Struct_3(28841i, vec2<i32>(1i, 2147483647i)), Struct_3(2147483647i, vec2<i32>(-31572i, 26595i)), Struct_3(i32(-2147483648), vec2<i32>(13586i, i32(-2147483648))), Struct_3(i32(-2147483648), vec2<i32>(1i, -30102i)), Struct_3(2147483647i, vec2<i32>(2147483647i, -109i)), Struct_3(2147483647i, vec2<i32>(-1i, 44i)), Struct_3(-1i, vec2<i32>(-92091i, -34772i)), Struct_3(74341i, vec2<i32>(1i, 7836i)), Struct_3(-48518i, vec2<i32>(-9073i, -3042i)), Struct_3(2147483647i, vec2<i32>(43919i, 0i)), Struct_3(1i, vec2<i32>(2147483647i, 13477i)), Struct_3(-47163i, vec2<i32>(23192i, 17998i)), Struct_3(7380i, vec2<i32>(0i, 7835i)), Struct_3(-61577i, vec2<i32>(-15503i, 1i)), Struct_3(9833i, vec2<i32>(1i, 690i)), Struct_3(-46966i, vec2<i32>(-66492i, 29741i)), Struct_3(i32(-2147483648), vec2<i32>(1i, -4016i)), Struct_3(0i, vec2<i32>(-1i, 0i)), Struct_3(0i, vec2<i32>(-6041i, i32(-2147483648))), Struct_3(0i, vec2<i32>(1i, -33698i)), Struct_3(19633i, vec2<i32>(4089i, 37537i)), Struct_3(21079i, vec2<i32>(-25528i, 2147483647i)));

var<private> global1: Struct_3 = Struct_3(0i, vec2<i32>(1i, 53460i));

var<private> global2: Struct_1;

var<private> global3: vec3<f32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = !select(vec4<bool>(true, true, all(select(vec4<bool>(arg_0.a.a, arg_0.a.a, false, global2.a), vec4<bool>(global2.a, false, arg_0.a.a, arg_0.a.a), true)), any(select(vec3<bool>(arg_0.a.a, false, arg_0.a.a), vec3<bool>(true, false, arg_0.a.a), vec3<bool>(false, false, global2.a)))), !select(!vec4<bool>(global2.a, false, false, arg_0.a.a), !vec4<bool>(true, arg_0.a.a, true, arg_0.a.a), vec4<bool>(arg_0.a.a, false, false, arg_0.a.a)), vec4<bool>(arg_0.a.a, false, all(!vec4<bool>(false, arg_0.a.a, arg_0.a.a, true)), countOneBits(arg_0.b.x) < select(u_input.c.x, 54485i, true)));
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-633f, global3.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(abs(global3.x)))), _wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, global3.x, -1133f), _wgslsmith_f_op_vec3_f32(vec3<f32>(205f, global3.x, global3.x) * vec3<f32>(global3.x, -106f, global3.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, 674f) - vec3<f32>(968f, global3.x, 978f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(205f, 628f, global3.x), vec3<f32>(2693f, global3.x, global3.x), var_0.xxw))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-277f, global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))));
    let var_1 = ~u_input.b;
    var_0 = select(select(select(vec4<bool>(4294967295u < var_1, false, arg_0.a.a, var_0.x), select(select(vec4<bool>(global2.a, false, global2.a, false), vec4<bool>(var_0.x, var_0.x, false, true), true), select(vec4<bool>(var_0.x, true, global2.a, false), vec4<bool>(true, var_0.x, false, true), vec4<bool>(global2.a, true, global2.a, var_0.x)), false || var_0.x), select(vec4<bool>(global2.a, var_0.x, arg_0.a.a, global2.a), vec4<bool>(global2.a, false, var_0.x, true), true)), !vec4<bool>(true, var_0.x, global2.a, true), !vec4<bool>(!var_0.x, all(vec2<bool>(true, false)), 26931u != var_1, arg_0.a.a)), !vec4<bool>(all(vec3<bool>(arg_0.a.a, true, var_0.x)), var_0.x, any(!var_0.xy), any(var_0.zwy)), select(!select(!vec4<bool>(var_0.x, arg_0.a.a, false, false), select(vec4<bool>(true, false, global2.a, false), vec4<bool>(global2.a, arg_0.a.a, var_0.x, global2.a), vec4<bool>(false, arg_0.a.a, false, arg_0.a.a)), arg_0.a.a), select(select(vec4<bool>(arg_0.a.a, false, true, var_0.x), select(vec4<bool>(global2.a, global2.a, false, true), vec4<bool>(false, false, true, global2.a), arg_0.a.a), vec4<bool>(arg_0.a.a, true, true, var_0.x)), vec4<bool>(1i <= global1.a, arg_0.a.a || false, true || arg_0.a.a, true), select(!vec4<bool>(arg_0.a.a, arg_0.a.a, true, true), vec4<bool>(arg_0.a.a, false, true, var_0.x), var_0.x)), !select(!vec4<bool>(global2.a, true, global2.a, global2.a), !vec4<bool>(false, arg_0.a.a, false, false), select(vec4<bool>(arg_0.a.a, global2.a, true, global2.a), vec4<bool>(arg_0.a.a, arg_0.a.a, false, var_0.x), vec4<bool>(var_0.x, global2.a, arg_0.a.a, global2.a)))));
    let var_2 = u_input.a;
    return u_input.c.x;
}

fn func_2() -> vec3<f32> {
    global1 = Struct_3(_wgslsmith_dot_vec2_i32(global1.b, vec2<i32>(i32(-1i) * -31048i, func_3(Struct_2(Struct_1(global2.a), u_input.c.yyx)) | global1.a)), vec2<i32>(0i, _wgslsmith_div_i32(global1.a, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.c.x, 923i), global1.b.x))));
    let var_0 = max(reverseBits(~u_input.c ^ ~u_input.c), u_input.c);
    let var_1 = Struct_2(Struct_1(any(!vec3<bool>(global2.a, true, global2.a))), var_0.yzx);
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), ~(~_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 48559u), vec2<u32>(0u, 1u)))));
    global2 = var_1.a;
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.x, -358f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(242f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), 727f, _wgslsmith_f_op_f32(sign(-2022f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_1 {
    global2 = arg_1.a;
    global2 = Struct_1(all(select(vec2<bool>(global2.a, select(arg_1.a.a, true, false)), !(!vec2<bool>(arg_1.a.a, true)), vec2<bool>(!arg_1.a.a, true && global2.a))));
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, ~u_input.b), select(min(vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_mod_u32(u_input.a, u_input.a)), vec2<u32>(~4294967295u, _wgslsmith_sub_u32(0u, 0u))), vec2<u32>(abs(~1u), u_input.a), !(!(!vec2<bool>(arg_1.a.a, false)))));
    let var_1 = !select(vec2<bool>(true, global2.a), vec2<bool>(!arg_1.a.a, false), true);
    let var_2 = select(!vec4<bool>(any(!vec4<bool>(true, global2.a, var_1.x, false)), true, firstTrailingBit(global1.b.x) > _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.x, global1.b.x, 25438i), u_input.c.zzz), arg_1.a.a), select(vec4<bool>(any(!vec4<bool>(true, false, arg_1.a.a, false)), true, false, global1.a == 2147483647i), vec4<bool>(true, var_1.x, true && var_1.x, all(select(var_1, var_1, var_1.x))), false), true);
    return Struct_1(var_2.x);
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, _wgslsmith_div_f32(-1342f, global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-210f)) - _wgslsmith_f_op_f32(-global3.x))))));
    let var_1 = Struct_4(func_4(_wgslsmith_f_op_vec3_f32(func_2()), Struct_2(Struct_1(0u < u_input.b), u_input.c.yxy)), _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(~u_input.c.x, global1.b.x)), u_input.c.xx), select(~(-u_input.c), vec4<i32>(global1.a, u_input.c.x, min(u_input.c.x, 34888i), -2147483647i >> (u_input.a % 32u)), !vec4<bool>(global2.a, global2.a, true, false)) ^ ~(firstLeadingBit(vec4<i32>(-10654i, -1i, -82067i, global1.a)) | vec4<i32>(-2147483647i, u_input.c.x, 2147483647i, u_input.c.x)));
    var var_2 = select(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), var_1.a.a), select(!(!vec3<bool>(true, true, global2.a)), vec3<bool>(var_1.a.a | true, true, var_1.a.a), vec3<bool>(false, true, global2.a & false)), true), select(!select(select(vec3<bool>(false, var_1.a.a, global2.a), vec3<bool>(true, global2.a, var_1.a.a), vec3<bool>(true, var_1.a.a, false)), select(vec3<bool>(var_1.a.a, false, true), vec3<bool>(global2.a, false, var_1.a.a), true), any(vec3<bool>(global2.a, global2.a, global2.a))), !(!vec3<bool>(var_1.a.a, var_1.a.a, false)), global2.a), false);
    let var_3 = 1000f;
    let var_4 = ~(~(~_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, u_input.b), countOneBits(vec2<u32>(u_input.b, u_input.b)))));
    return Struct_3(_wgslsmith_mult_i32(i32(-1i) * -u_input.c.x, _wgslsmith_clamp_i32(global1.b.x, 1i, u_input.c.x) ^ ~(-10072i)), countOneBits(vec2<i32>(20009i, u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var var_1 = ~(-((i32(-1i) * -10288i) << (~(u_input.b | 4294967295u) % 32u)));
    global1 = func_1();
    var var_2 = Struct_1(func_4(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.x, _wgslsmith_f_op_f32(step(466f, global3.x)), global3.x))), Struct_2(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -638f, 892f) * vec3<f32>(global3.x, -1000f, 2049f)), Struct_2(Struct_1(global2.a), var_0.zyx)), vec3<i32>(-3455i & var_0.x, u_input.c.x, _wgslsmith_dot_vec2_i32(global1.b, u_input.c.zw)))).a);
    var var_3 = !(!(!(!vec4<bool>(true, true, true, global2.a))));
    global0 = array<Struct_3, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(func_3(Struct_2(func_4(vec3<f32>(2051f, -362f, global3.x), Struct_2(Struct_1(false), var_0.yzw)), ~(vec3<i32>(0i, global1.a, var_0.x) | u_input.c.wzx))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, global1.a, 1i, -1i) | _wgslsmith_mod_vec4_i32(vec4<i32>(global1.b.x, global1.a, global1.a, var_0.x), vec4<i32>(var_0.x, u_input.c.x, var_0.x, global1.b.x)), min(u_input.c, u_input.c) << (~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) % vec4<u32>(32u))) & u_input.c);
}

