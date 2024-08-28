struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<f32>(-124f, -1044f, -155f, -749f), vec3<i32>(-44111i, 1i, -1i)), Struct_1(vec4<f32>(-956f, 804f, -1055f, -1015f), vec3<i32>(-19222i, -1i, 1i)), Struct_1(vec4<f32>(-1000f, -493f, -2033f, 353f), vec3<i32>(1i, 95451i, -75239i)), Struct_1(vec4<f32>(250f, -543f, -1128f, 187f), vec3<i32>(31314i, i32(-2147483648), -6089i)), Struct_1(vec4<f32>(212f, 2234f, 104f, 361f), vec3<i32>(26126i, i32(-2147483648), -27862i)), Struct_1(vec4<f32>(-490f, -199f, -1017f, -385f), vec3<i32>(-9590i, -1i, -63338i)), Struct_1(vec4<f32>(-1462f, -984f, 1000f, -1103f), vec3<i32>(-1273i, 39815i, 1i)), Struct_1(vec4<f32>(-1479f, -753f, 1277f, 1000f), vec3<i32>(i32(-2147483648), 31533i, -32516i)), Struct_1(vec4<f32>(932f, -352f, -528f, -916f), vec3<i32>(1i, 35695i, 80777i)), Struct_1(vec4<f32>(1819f, 835f, 953f, -708f), vec3<i32>(26803i, 1i, -11426i)), Struct_1(vec4<f32>(890f, -563f, 1359f, -460f), vec3<i32>(i32(-2147483648), 50941i, -23612i)), Struct_1(vec4<f32>(1524f, 593f, -123f, -1053f), vec3<i32>(43511i, 21725i, -49769i)), Struct_1(vec4<f32>(1000f, -511f, 1154f, 2021f), vec3<i32>(1i, 2147483647i, 1i)), Struct_1(vec4<f32>(1702f, 525f, 1104f, -961f), vec3<i32>(2147483647i, 14197i, 1i)), Struct_1(vec4<f32>(-1000f, -480f, 445f, 1253f), vec3<i32>(-1i, 2236i, -1i)), Struct_1(vec4<f32>(266f, 359f, -350f, -1360f), vec3<i32>(-59532i, 2147483647i, 28851i)), Struct_1(vec4<f32>(-345f, -1046f, 453f, -417f), vec3<i32>(-1i, 2147483647i, 1i)), Struct_1(vec4<f32>(1767f, 285f, 1446f, 871f), vec3<i32>(34921i, -1i, -1i)), Struct_1(vec4<f32>(772f, 896f, 1223f, 615f), vec3<i32>(23958i, 2147483647i, -29791i)), Struct_1(vec4<f32>(-151f, -951f, 1027f, 1696f), vec3<i32>(5268i, 0i, 2147483647i)), Struct_1(vec4<f32>(-981f, -1000f, -499f, -311f), vec3<i32>(-1i, -17252i, -22083i)), Struct_1(vec4<f32>(1699f, -1206f, 803f, -1306f), vec3<i32>(-17116i, -49569i, 0i)), Struct_1(vec4<f32>(-550f, -342f, 761f, 671f), vec3<i32>(-1i, i32(-2147483648), 38409i)), Struct_1(vec4<f32>(-922f, 1844f, -1175f, -133f), vec3<i32>(0i, -9272i, 17575i)));

var<private> global1: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(24296u, 1u, 0u, 8340u), vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<u32>(1u, 1u, 13824u, 1u), vec4<u32>(34953u, 4294967295u, 3785u, 20518u), vec4<u32>(4294967295u, 1u, 66571u, 0u), vec4<u32>(17752u, 1u, 4294967295u, 55614u), vec4<u32>(52097u, 31540u, 38473u, 0u), vec4<u32>(1u, 4294967295u, 0u, 51511u), vec4<u32>(84157u, 4294967295u, 0u, 4294967295u), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(23383u, 0u, 0u, 8477u), vec4<u32>(11174u, 4294967295u, 1u, 30554u), vec4<u32>(4294967295u, 37598u, 0u, 0u), vec4<u32>(0u, 11543u, 0u, 36256u));

var<private> global2: vec3<u32>;

var<private> global3: Struct_1;

var<private> global4: Struct_1 = Struct_1(vec4<f32>(589f, -839f, -902f, 205f), vec3<i32>(-1i, 25652i, i32(-2147483648)));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: i32, arg_3: vec3<bool>) -> i32 {
    global0 = array<Struct_1, 24>();
    global1 = array<vec4<u32>, 14>();
    let var_0 = Struct_2(countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.x, 7325u) | vec3<u32>(9499u, global2.x, global2.x), firstLeadingBit(vec3<u32>(31724u, global2.x, global2.x)))), ~vec2<i32>(global3.b.x, 0i), _wgslsmith_f_op_f32(-global3.a.x));
    global0 = array<Struct_1, 24>();
    global2 = ~firstTrailingBit(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(global2.x, var_0.a, var_0.a) | vec3<u32>(41178u, var_0.a, 21995u)), (vec3<u32>(global2.x, var_0.a, var_0.a) >> (vec3<u32>(1u, 14744u, 0u) % vec3<u32>(32u))) ^ select(vec3<u32>(global2.x, global2.x, global2.x), vec3<u32>(global2.x, 0u, global2.x), arg_3.x), ~vec3<u32>(var_0.a, 118835u, 4294967295u)));
    return ~(~reverseBits(_wgslsmith_dot_vec2_i32(~global3.b.xz, firstTrailingBit(u_input.d.yx))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = vec4<i32>(func_3(u_input.d, !arg_0.x && arg_0.x, global3.b.x, !vec3<bool>(true, false, arg_0.x)) ^ global3.b.x, global4.b.x, global3.b.x, -17749i);
    let var_1 = global4.a.x;
    var var_2 = Struct_2(global2.x, _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(36267i, -7140i), countOneBits(vec2<i32>(var_0.x, u_input.c))), _wgslsmith_add_vec2_i32(reverseBits(-global4.b.yy), var_0.xz)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-721f - 1000f))), _wgslsmith_f_op_f32(-775f * global4.a.x)));
    let var_3 = vec4<u32>(~1u, ~var_2.a, var_2.a, var_2.a);
    global2 = ~vec3<u32>(0u, firstLeadingBit(var_3.x), 0u);
    return Struct_2(4294967295u, var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -528f))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec2<i32>(-2147483647i >> (firstTrailingBit(global2.x ^ 0u) % 32u), -(~1i));
    global0 = array<Struct_1, 24>();
    var var_1 = firstTrailingBit(6457u | select(~reverseBits(global2.x), arg_3.a, any(select(vec2<bool>(true, true), vec2<bool>(true, false), true))));
    let var_2 = global2.x;
    let var_3 = func_2(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(true, true, false)))), vec2<bool>(true, true), true));
    return func_2(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1629f + 513f) * arg_3.c) < arg_3.c, any(vec4<bool>(true, true, var_3.a < 13749u, true))));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> i32 {
    global0 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * global3.a.x));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(674f - arg_2))), _wgslsmith_f_op_f32(abs(global4.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -607f)), _wgslsmith_f_op_f32(min(-344f, global3.a.x))), u_input.d.xxw);
    var var_2 = true && ((func_4(global0[_wgslsmith_index_u32(48933u, 24u)], u_input.d, _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(21334i, global4.b.x, u_input.a, arg_1.b.x)), func_2(vec2<bool>(arg_0, true))).c >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(step(785f, -513f)), all(vec2<bool>(true, false))))) | (arg_0 || (_wgslsmith_clamp_u32(47897u, global2.x, arg_1.a) < global2.x)));
    let var_3 = global0[_wgslsmith_index_u32(abs(global2.x), 24u)];
    return var_3.b.x;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec3<i32>(reverseBits(abs(70336i)), 44986i, func_5(!(true & (global2.x <= 0u)), func_4(arg_2, _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-7892i, -83048i, 16730i, -21848i)), -vec4<i32>(-2147483647i, global4.b.x, 1i, global4.b.x)), arg_2.b.x, func_2(vec2<bool>(true, true))), global4.a.x, global2.x));
    var var_1 = arg_2;
    var var_2 = (global2.x & ~_wgslsmith_div_u32(global2.x ^ global2.x, global2.x & 1u)) & (13720u | (27832u | global2.x));
    let var_3 = Struct_2(_wgslsmith_dot_vec3_u32(min(reverseBits(vec3<u32>(global2.x, 1u, global2.x)), vec3<u32>(62790u, global2.x, global2.x) & vec3<u32>(global2.x, global2.x, global2.x)) << (max(~vec3<u32>(6607u, global2.x, global2.x), min(vec3<u32>(global2.x, global2.x, 1u), vec3<u32>(116842u, 0u, global2.x))) % vec3<u32>(32u)), abs(_wgslsmith_add_vec3_u32(vec3<u32>(global2.x, global2.x, 1u), vec3<u32>(global2.x, 8558u, global2.x))) & ~vec3<u32>(4294967295u, global2.x, 34071u)), vec2<i32>(-8002i, ~(~1i)), var_1.a.x);
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2.a), _wgslsmith_mod_vec3_i32(vec3<i32>(-15800i, global3.b.x, 26050i), vec3<i32>((u_input.b.x | -2147483647i) ^ -25339i, 3536i, abs(firstLeadingBit(0i)))));
    return Struct_2(abs(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(39078u, 1u, 54070u, var_3.a), global1[_wgslsmith_index_u32(1u, 14u)], vec4<bool>(true, false, true, true)), vec4<u32>(~var_3.a, 24135u, var_3.a, ~var_3.a))), vec2<i32>(arg_2.b.x, var_1.b.x) & firstLeadingBit(vec2<i32>(var_1.b.x, _wgslsmith_clamp_i32(var_1.b.x, -1i, 10069i))), arg_0);
}

fn func_6(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    global2 = ~vec3<u32>(firstTrailingBit(22755u) >> (arg_1 % 32u), ~0u, arg_0.a) & select(reverseBits(vec3<u32>(arg_1, global2.x, arg_1)) ^ firstTrailingBit(vec3<u32>(22595u, 0u, 17551u)), max(~vec3<u32>(51904u, global2.x, global2.x), ~firstLeadingBit(vec3<u32>(arg_0.a, 54028u, arg_0.a))), vec3<bool>(false, true, true));
    return Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, -200f, _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(872f, arg_0.c), _wgslsmith_f_op_f32(floor(arg_0.c))))), _wgslsmith_f_op_vec4_f32(global4.a - global3.a))), countOneBits(~global4.b));
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    let var_0 = u_input.b.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(global4.a))))), vec3<i32>(31412i, -1920i, func_6(func_4(arg_0, _wgslsmith_sub_vec4_i32(vec4<i32>(global4.b.x, global3.b.x, global4.b.x, global4.b.x), vec4<i32>(global4.b.x, global4.b.x, arg_0.b.x, 2147483647i)), _wgslsmith_clamp_i32(12512i, 2147483647i, 17295i), Struct_2(global2.x, u_input.d.wz, 1173f)), ~(~global2.x)).b.x));
    var_1 = arg_0;
    let var_2 = reverseBits(countOneBits(~(~global2.x)) & 5345u);
    var var_3 = vec3<bool>(true, true, _wgslsmith_div_f32(func_6(Struct_2(global2.x, global4.b.zz, 893f), 1u).a.x, _wgslsmith_f_op_f32(-global4.a.x)) > _wgslsmith_f_op_f32(global4.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(163f - 473f))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(global4.a * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) * _wgslsmith_f_op_f32(round(264f))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(sign(1009f))), var_1.a.x)), _wgslsmith_div_vec3_i32(var_1.b, vec3<i32>(794i, reverseBits(_wgslsmith_dot_vec3_i32(arg_0.b, u_input.d.xwx)), -15004i)));
}

fn func_8(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = arg_1;
    global3 = arg_0;
    let var_1 = arg_3;
    let var_2 = arg_3.c;
    var var_3 = ~abs(_wgslsmith_mod_vec3_u32(~select(vec3<u32>(4294967295u, global2.x, 0u), vec3<u32>(35800u, var_1.a, arg_1), false), firstLeadingBit(vec3<u32>(4294967295u, var_1.a, 149741u)) << (vec3<u32>(4294967295u, arg_3.a, var_1.a) % vec3<u32>(32u))));
    return _wgslsmith_f_op_vec3_f32(min(global3.a.zwx, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(arg_2.a.wyz)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(global3.a.yzw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2, -1000f, global3.a.x), vec3<f32>(227f, 324f, -219f)))), true | all(vec3<bool>(true, false, false)))), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(true, true)), any(vec4<bool>(false, true, false, false))), select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(~global2.x), 24u)];
    let var_1 = global3.a.zw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_8(global0[_wgslsmith_index_u32(global2.x, 24u)], ~((global2.x >> (30458u % 32u)) | _wgslsmith_add_u32(global2.x, 63894u)), func_7(func_6(func_1(327f, vec4<i32>(u_input.e, var_0.b.x, global4.b.x, -26199i), global0[_wgslsmith_index_u32(global2.x, 24u)]), firstLeadingBit(global2.x))), Struct_2(global2.x, vec2<i32>(u_input.c << (63994u % 32u), _wgslsmith_clamp_i32(global3.b.x, global4.b.x, -685i)), global4.a.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_7(global0[_wgslsmith_index_u32(1u, 24u)]).a - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_f_op_vec4_f32(global3.a + var_0.a)))), global4.a)), 37967i, 2147483647i, ~vec2<u32>(~global2.x | func_1(var_1.x, u_input.d, Struct_1(var_0.a, vec3<i32>(var_0.b.x, 0i, u_input.e))).a, min(29242u >> (1u % 32u), _wgslsmith_div_u32(global2.x, 59503u))));
}

