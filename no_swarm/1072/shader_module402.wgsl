struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: bool;

var<private> global2: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = any(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), !arg_0)), arg_0, arg_0, arg_0));
    let var_1 = global0[_wgslsmith_index_u32(7901u, 9u)];
    let var_2 = ~(~(~(~vec2<u32>(var_1.a.a.x, 268u)))) >> (vec2<u32>(~_wgslsmith_clamp_u32(var_1.c.a.x, ~11754u, u_input.a), 42509u) % vec2<u32>(32u));
    global0 = array<Struct_2, 9>();
    let var_3 = Struct_2(Struct_1(vec2<u32>(_wgslsmith_add_u32(var_1.c.a.x << (1u % 32u), u_input.a), _wgslsmith_add_u32(~22845u, 1u)), -u_input.b.x >> (min(_wgslsmith_dot_vec3_u32(vec3<u32>(55144u, u_input.a, 89690u), vec3<u32>(var_2.x, 32320u, u_input.a)), u_input.c) % 32u)), ~var_1.b, Struct_1(~(~var_2), ~var_1.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1671f * var_1.d)));
    return -(~firstTrailingBit(min(u_input.b.x, u_input.b.x)) | u_input.d);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(func_3(false), u_input.d, u_input.b.x), ~_wgslsmith_clamp_i32(-2147483647i, arg_3.c.b, ~_wgslsmith_clamp_i32(arg_3.c.b, 0i, 10765i)), ~(-_wgslsmith_add_i32(-2147483647i, 9802i)));
    global2 = false;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-109f + _wgslsmith_div_f32(arg_3.d, 1000f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 943f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(617f, var_1, -453f)), vec3<f32>(arg_3.d, 1000f, -468f), true))), vec3<f32>(_wgslsmith_f_op_f32(max(1774f, 146f)), arg_0, arg_0), (0u | arg_1) > _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_3.b.x, u_input.a, u_input.a), ~vec4<u32>(4294967295u, u_input.c, arg_3.c.a.x, arg_1))))));
    var var_3 = Struct_2(arg_3.a, arg_3.b ^ countOneBits(countOneBits(_wgslsmith_sub_vec3_u32(arg_3.b, vec3<u32>(26677u, arg_1, arg_3.a.a.x)))), Struct_1(select(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(32855u, 10488u, 16171u, u_input.a), vec4<u32>(1u, arg_1, 64529u, 4294967295u)), _wgslsmith_clamp_u32(14158u, 92340u, arg_1)), ~firstTrailingBit(vec2<u32>(arg_1, arg_3.b.x)), vec2<bool>(true, false)), arg_3.c.b), arg_3.d);
    return vec2<u32>(countOneBits(_wgslsmith_div_u32(4294967295u, ~arg_1)), _wgslsmith_add_u32(~u_input.c, 87128u));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    var var_0 = Struct_2(arg_0.a, ~firstLeadingBit(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(arg_0.a.a.x, 26424u, u_input.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.c, arg_0.a.a.x), vec3<u32>(arg_0.a.a.x, u_input.c, 60525u)), select(vec3<u32>(0u, u_input.c, arg_0.a.a.x), vec3<u32>(7205u, 41789u, arg_0.a.a.x), false))), arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - _wgslsmith_div_f32(-3230f, -1384f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -603f)), 1f))));
    global1 = false;
    let var_1 = _wgslsmith_mod_i32(func_3(true), -_wgslsmith_clamp_i32(-var_0.a.b, var_0.a.b, firstTrailingBit(~arg_0.a.b)));
    let var_2 = arg_0.a;
    var var_3 = _wgslsmith_div_f32(var_0.d, -598f);
    return arg_0;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    global1 = !(!(!all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_0 = false;
    var var_1 = func_4(func_4(func_4(func_4(arg_2))));
    global2 = var_0 | true;
    var var_2 = ~vec4<i32>(_wgslsmith_sub_i32(~(-2147483647i), func_4(arg_1).a.b), 1i, arg_1.a.b, _wgslsmith_mult_i32(arg_1.a.b, ~(~(-2147483647i))));
    return arg_2.a;
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = func_5(select(vec4<u32>(u_input.a, u_input.a, abs(~arg_0.x), _wgslsmith_mod_u32(u_input.a, 3735u)), select(vec4<u32>(58711u, 4294967295u, u_input.c, arg_0.x), vec4<u32>(arg_0.x, u_input.c, u_input.a, 28340u) & vec4<u32>(u_input.a, arg_0.x, 78681u, u_input.a), false) ^ ~(vec4<u32>(32522u, arg_0.x, u_input.c, 43906u) >> (vec4<u32>(7787u, 10004u, u_input.a, u_input.a) % vec4<u32>(32u))), true), func_4(Struct_3(Struct_1(func_2(-1713f, 4294967295u, 379f, Struct_2(Struct_1(vec2<u32>(3496u, 4294967295u), u_input.d), vec3<u32>(0u, 0u, 4294967295u), Struct_1(vec2<u32>(0u, 93929u), u_input.d), 1030f)), ~u_input.d))), Struct_3(Struct_1(~(~vec2<u32>(u_input.c, 4294967295u)), select(u_input.d, u_input.b.x & u_input.b.x, select(false, true, true)))));
    var var_1 = !all(select(vec2<bool>(true, true), vec2<bool>(true, 4294967295u == arg_0.x), select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec3<bool>(true, true, true)))));
    let var_2 = Struct_3(func_5(countOneBits(~(~vec4<u32>(1u, 1u, 696u, 15531u))), Struct_3(var_0), func_4(func_4(Struct_3(var_0)))));
    var var_3 = ~(var_2.a.a.x << ((abs(max(u_input.a, 32517u)) << (arg_0.x % 32u)) % 32u));
    global2 = all(select(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), vec3<bool>(!(2147483647i < var_2.a.b), any(vec4<bool>(true, true, true, true)), true), any(vec2<bool>(false, true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(321f, 987f))))), _wgslsmith_f_op_f32(-264f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -895f) * _wgslsmith_f_op_f32(min(159f, 165f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 374f, -664f, 307f) + vec4<f32>(1000f, -1000f, 277f, 219f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-583f, -389f, 2391f, -294f) + vec4<f32>(-224f, 1160f, 1111f, 696f))))) * vec4<f32>(-186f, _wgslsmith_f_op_f32(func_1(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(22233u, u_input.a)) | vec2<u32>(1u, u_input.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1276f, -313f))))), _wgslsmith_f_op_f32(970f * 1737f)));
    var var_1 = -max(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_add_i32(u_input.d, ~u_input.d), firstLeadingBit(~u_input.b.x)), ~(-_wgslsmith_add_i32(u_input.d, u_input.b.x)));
    var var_2 = vec2<u32>(u_input.a, func_5(abs(vec4<u32>(1u << (u_input.a % 32u), 1u, 23305u, ~0u)), Struct_3(func_5(vec4<u32>(27748u, u_input.a, 1u, u_input.c), func_4(Struct_3(Struct_1(vec2<u32>(u_input.c, u_input.c), -68663i))), func_4(Struct_3(Struct_1(vec2<u32>(u_input.a, u_input.a), -24990i))))), Struct_3(Struct_1(vec2<u32>(u_input.c, u_input.a) | vec2<u32>(43681u, 73121u), u_input.b.x & -46400i))).a.x);
    var var_3 = _wgslsmith_clamp_vec3_i32(max(~max(vec3<i32>(-17547i, 1i, u_input.d), vec3<i32>(u_input.d, -1i, 1i)), vec3<i32>(func_3(true), u_input.d, countOneBits(2147483647i))), _wgslsmith_mult_vec3_i32(max(vec3<i32>(u_input.d, 43949i, -53843i), min(vec3<i32>(-13002i, -1i, 0i), vec3<i32>(2147483647i, 6228i, -1i))), ~vec3<i32>(u_input.d, -2147483647i, -2147483647i)), firstTrailingBit(firstTrailingBit(firstTrailingBit(vec3<i32>(1i, u_input.d, 39085i))))) & firstLeadingBit(abs(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) >> (firstLeadingBit(vec3<u32>(var_2.x, u_input.c, var_2.x)) % vec3<u32>(32u))));
    var_0 = vec4<f32>(-334f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-437f, 2273f, true)), var_0.x) + var_0.x), _wgslsmith_div_f32(493f, var_0.x), 1f);
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(846f, var_0.x, var_0.x, var_0.x))))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-281f, -830f, -681f, -248f), vec4<f32>(var_0.x, var_0.x, 223f, 1000f), false))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(480f, 774f, 875f, 298f), vec4<f32>(var_0.x, var_0.x, 489f, var_0.x))))))), 298f >= var_0.x));
    let var_4 = _wgslsmith_sub_vec3_u32(vec3<u32>(~(101836u << (var_2.x % 32u)), max(~(~40074u), _wgslsmith_mult_u32(~var_2.x, 1u)), 55458u), vec3<u32>(func_5(vec4<u32>(var_2.x, 23430u, 1u, 4294967295u), Struct_3(Struct_1(vec2<u32>(13908u, 37724u), u_input.d)), Struct_3(Struct_1(vec2<u32>(var_2.x, 0u), u_input.d))).a.x >> (~4294967295u % 32u), var_2.x, u_input.c) ^ ~_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(var_2.x, 1u, var_2.x)), max(vec3<u32>(89378u, 21782u, var_2.x), vec3<u32>(var_2.x, 41631u, 34814u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(abs(-vec2<i32>(var_3.x, u_input.b.x)), ~(-vec2<i32>(u_input.d, var_3.x)) & u_input.b), vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.x, var_4.x), vec2<u32>(var_4.x, var_2.x))), u_input.c), ~(_wgslsmith_sub_u32(4294967295u, var_2.x) << (~var_4.x % 32u)), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, u_input.a), var_4.x), u_input.a), countOneBits(reverseBits(select(abs(vec3<u32>(47271u, u_input.a, 8756u)), _wgslsmith_div_vec3_u32(var_4, var_4), any(vec2<bool>(false, false))))), _wgslsmith_mult_i32(var_3.x, reverseBits(u_input.d)), select(vec3<i32>(abs(2147483647i), max(var_3.x >> (74357u % 32u), -2147483647i), 2147483647i), vec3<i32>(-1i) * -(vec3<i32>(-1i, 0i, 1i) ^ vec3<i32>(1i, 30123i, u_input.b.x)), true));
}

