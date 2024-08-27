struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(606f, -2757f, 928f);

var<private> global1: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(vec4<i32>(0i, 23726i, 1i, 0i), 362f, vec3<i32>(0i, 11497i, -7066i)), Struct_4(vec4<i32>(1i, 88022i, -1i, -54793i), 1000f, vec3<i32>(1i, 34563i, 10199i)), Struct_4(vec4<i32>(1i, -16821i, 52766i, -55877i), -362f, vec3<i32>(i32(-2147483648), -5293i, -11202i)), Struct_4(vec4<i32>(-16887i, 1i, 0i, 2147483647i), -155f, vec3<i32>(-22274i, 1i, i32(-2147483648))), Struct_4(vec4<i32>(35092i, -686i, 2147483647i, 1i), -436f, vec3<i32>(-1i, i32(-2147483648), -1830i)), Struct_4(vec4<i32>(39227i, 0i, 6930i, 2147483647i), 1544f, vec3<i32>(i32(-2147483648), 1i, -9230i)), Struct_4(vec4<i32>(5099i, i32(-2147483648), 11300i, 48i), -105f, vec3<i32>(-11878i, -1i, 26642i)), Struct_4(vec4<i32>(25941i, 2147483647i, -25744i, -8822i), 593f, vec3<i32>(39100i, i32(-2147483648), 7294i)), Struct_4(vec4<i32>(-1i, 13434i, 6299i, 19239i), -723f, vec3<i32>(i32(-2147483648), -46019i, 2147483647i)), Struct_4(vec4<i32>(22516i, 7825i, -32738i, -17918i), 1571f, vec3<i32>(0i, -2080i, -26494i)));

var<private> global2: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true));

var<private> global3: bool;

var<private> global4: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(45805u, 0u, 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> u32 {
    global2 = array<vec3<bool>, 28>();
    var var_0 = arg_0.c;
    var var_1 = arg_1;
    var var_2 = ~_wgslsmith_clamp_vec2_i32(~arg_0.b, vec2<i32>(_wgslsmith_add_i32(min(54778i, arg_0.a.b), arg_1.b), i32(-1i) * -2126i), arg_0.b);
    let var_3 = ~arg_1.b;
    return arg_0.c.b.b;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = 4294967295u;
    let var_1 = vec4<u32>(82216u, u_input.b, ~24814u, var_0);
    let var_2 = false;
    global1 = array<Struct_4, 10>();
    global1 = array<Struct_4, 10>();
    return Struct_2(func_3(Struct_5(Struct_2(var_0, -arg_0.x, reverseBits(1u), ~84770u, global0.x), -(~vec2<i32>(arg_0.x, 39798i)), Struct_3(arg_0, Struct_1(global0.x, 4294967295u, var_2, var_2)), var_2), Struct_2(var_0, 44481i, 1732u, _wgslsmith_mult_u32(9244u, ~u_input.a), global0.x), -165f, var_2), ~arg_0.x, ~(~(~var_0)), 69147u, global0.x);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, arg_0.e, -917f))) + vec3<f32>(global0.x, global0.x, -1451f)) + vec3<f32>(-196f, arg_0.e, global0.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 1091f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-382f, arg_0.e, arg_0.e) - vec3<f32>(-553f, global0.x, global0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, -581f, 1033f)))))));
    let var_1 = Struct_3(vec2<i32>(u_input.c, _wgslsmith_dot_vec2_i32(firstLeadingBit(arg_1.xy), vec2<i32>(~0i, arg_0.b ^ 53426i))), Struct_1(-477f, 4294967295u, false, true));
    let var_2 = func_2(_wgslsmith_clamp_vec2_i32(arg_1.xy << (~min(vec2<u32>(0u, arg_0.d), vec2<u32>(18940u, 0u)) % vec2<u32>(32u)), (var_1.a << (countOneBits(vec2<u32>(1u, arg_0.c)) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_mult_u32(var_1.b.b, 7992u), arg_0.c) % vec2<u32>(32u)), arg_1.zy << (~vec2<u32>(arg_0.a, 4294967295u) % vec2<u32>(32u))));
    var var_3 = Struct_4(vec4<i32>(firstTrailingBit(-29990i), -86806i, 7137i, abs(firstLeadingBit(var_2.b))), 696f, vec3<i32>(_wgslsmith_mult_i32(0i, 13014i), _wgslsmith_mult_i32(var_2.b, reverseBits(select(arg_0.b, var_1.a.x, false))), func_2(abs(_wgslsmith_div_vec2_i32(vec2<i32>(-6890i, 19501i), var_1.a))).b));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_0.e)))), _wgslsmith_f_op_f32(-var_1.b.a), global0.x);
    return 225f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-279i, u_input.c, -2147483647i, -(~(firstTrailingBit(-1i) & u_input.c)));
    global4 = array<vec3<u32>, 2>();
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -444f, _wgslsmith_f_op_f32(abs(global0.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(u_input.b, u_input.c, u_input.a, u_input.b, global0.x), var_0.xxy)) * _wgslsmith_f_op_f32(999f - -170f)), -1000f, 1009f)));
    var var_1 = Struct_3(_wgslsmith_div_vec2_i32(var_0.wx, -vec2<i32>(2147483647i, var_0.x)) ^ var_0.xy, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) - -816f)), u_input.b, all(vec2<bool>(u_input.a < 14u, true)), !(u_input.b >= 1u)));
    let var_2 = vec4<i32>(~var_1.a.x, u_input.c, countOneBits(~((var_1.a.x & u_input.c) | _wgslsmith_add_i32(var_0.x, u_input.c))), -var_1.a.x);
    var var_3 = Struct_4(_wgslsmith_add_vec4_i32(var_0, vec4<i32>(_wgslsmith_add_i32(u_input.c, var_0.x), -1i, var_1.a.x, u_input.c)) >> (select(~max(vec4<u32>(21570u, u_input.a, var_1.b.b, 25400u), vec4<u32>(0u, 4294967295u, u_input.a, 7667u)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, var_1.b.b, var_1.b.b), vec4<u32>(1u, 0u, u_input.b, 41056u)), abs(vec4<u32>(46686u, var_1.b.b, 9842u, 0u))), true) % vec4<u32>(32u)), -1152f, var_0.zxz);
    let var_4 = ~vec2<i32>(_wgslsmith_clamp_i32(-var_1.a.x << (_wgslsmith_clamp_u32(var_1.b.b, u_input.a, u_input.a) % 32u), ~(i32(-1i) * -30588i), max(min(u_input.c, var_0.x), var_2.x)), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(global0.yx, firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.b.b, _wgslsmith_mult_u32(u_input.b, u_input.b), func_3(Struct_5(Struct_2(u_input.a, 42892i, 1u, u_input.a, global0.x), var_3.c.zy, Struct_3(vec2<i32>(var_1.a.x, var_0.x), Struct_1(var_3.b, var_1.b.b, var_1.b.c, true)), var_1.b.c), Struct_2(u_input.b, 20220i, var_1.b.b, var_1.b.b, 279f), var_1.b.a, true)), vec3<u32>(~1u, ~4294967295u, var_1.b.b))), ~global4[_wgslsmith_index_u32(select(firstLeadingBit(0u), 1u, any(!vec2<bool>(var_1.b.c, var_1.b.d))), 2u)], ~(~select(vec2<u32>(6770u, 4294967295u), vec2<u32>(138994u, var_1.b.b), vec2<bool>(var_1.b.d, false))) >> (~abs(vec2<u32>(0u, u_input.a) << (vec2<u32>(var_1.b.b, 46235u) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.b * global0.x), _wgslsmith_f_op_f32(-var_3.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a + 1322f) + _wgslsmith_f_op_f32(round(1000f))), (var_1.b.c | var_1.b.c) == !var_1.b.c)) - var_3.b));
}

