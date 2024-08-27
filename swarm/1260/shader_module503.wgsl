struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 11>;

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(-622f, Struct_1(vec3<u32>(34917u, 4294967295u, 40473u), 1i, -1984f, false)), Struct_2(-1428f, Struct_1(vec3<u32>(87155u, 1u, 8977u), -92949i, 293f, false)), Struct_2(-894f, Struct_1(vec3<u32>(4294967295u, 9099u, 3813u), 0i, 1434f, true)), Struct_2(-278f, Struct_1(vec3<u32>(0u, 1u, 4294967295u), 34109i, 1236f, true)), Struct_2(638f, Struct_1(vec3<u32>(18728u, 416u, 29215u), -19699i, 955f, true)), Struct_2(-732f, Struct_1(vec3<u32>(6216u, 86561u, 1u), i32(-2147483648), -1221f, false)), Struct_2(749f, Struct_1(vec3<u32>(0u, 1u, 4294967295u), 2147483647i, -949f, true)));

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<u32>(35663u, 4294967295u, 1u), i32(-2147483648), -1000f, true), Struct_1(vec3<u32>(25866u, 4294967295u, 18891u), 1i, 1739f, false), Struct_1(vec3<u32>(1u, 33121u, 56117u), 3607i, 503f, false), Struct_1(vec3<u32>(14185u, 30711u, 5940u), 0i, 2716f, true), Struct_1(vec3<u32>(1u, 31234u, 1u), 23176i, 666f, true), Struct_1(vec3<u32>(1u, 61393u, 2345u), -12597i, -470f, false), Struct_1(vec3<u32>(0u, 0u, 31566u), 106693i, -500f, false), Struct_1(vec3<u32>(0u, 0u, 7276u), 32899i, -1397f, false), Struct_1(vec3<u32>(15293u, 19084u, 11298u), 0i, 316f, true), Struct_1(vec3<u32>(36309u, 58542u, 4294967295u), -22567i, 103f, true), Struct_1(vec3<u32>(40295u, 4294967295u, 10942u), -1i, 674f, true), Struct_1(vec3<u32>(11830u, 4294967295u, 8882u), 15234i, 687f, true), Struct_1(vec3<u32>(50592u, 4294967295u, 4294967295u), 2147483647i, 794f, false), Struct_1(vec3<u32>(62483u, 4294967295u, 72157u), 0i, -626f, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(floor(1649f));
    global2 = array<Struct_2, 7>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(295f, _wgslsmith_f_op_f32(-var_0)), var_0) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-204f, 760f)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, arg_2.c))))))), vec2<f32>(arg_2.c, -1000f));
    return -(vec4<i32>(-1i) * -abs(vec4<i32>(0i, 2147483647i, arg_2.b, 0i)));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> vec4<u32> {
    global0 = global2[_wgslsmith_index_u32(countOneBits(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a, global0.b.a.zz), ~10297u)) | _wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, 4294967295u), ~1u, u_input.d), 7u)];
    let var_0 = global2[_wgslsmith_index_u32(arg_0.b.a.x, 7u)];
    var var_1 = global2[_wgslsmith_index_u32(var_0.b.a.x, 7u)];
    let var_2 = _wgslsmith_f_op_f32(-1251f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-305f, -576f))))))));
    global2 = array<Struct_2, 7>();
    return vec4<u32>(~abs(arg_0.b.a.x), u_input.d & arg_0.b.a.x, ~_wgslsmith_div_u32(max(_wgslsmith_dot_vec3_u32(var_1.b.a, global0.b.a), 87435u | u_input.b.x), abs(global0.b.a.x & 69364u)), arg_0.b.a.x);
}

fn func_3() -> vec4<bool> {
    var var_0 = u_input.d;
    global2 = array<Struct_2, 7>();
    var_0 = ~_wgslsmith_clamp_u32(~((u_input.b.x & global0.b.a.x) & ~40336u), 48491u, ~min(~global0.b.a.x, u_input.d));
    var var_1 = -443f;
    var var_2 = global0.b.b;
    return !(!vec4<bool>(global0.b.c > _wgslsmith_f_op_f32(-global0.a), true, true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(40511u, u_input.a.x), min(11183u, u_input.b.x)), 11u)]));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>) -> Struct_2 {
    global3 = array<Struct_1, 14>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.c)) - _wgslsmith_f_op_f32(-global0.a)) + global0.b.c);
    global3 = array<Struct_1, 14>();
    var var_1 = vec3<u32>(90673u, ~u_input.d, 1u);
    global1 = array<bool, 11>();
    return Struct_2(-446f, global3[_wgslsmith_index_u32(var_1.x, 14u)]);
}

fn func_5(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(-global0.a)) - 2411f) > -334f;
    global0 = Struct_2(global0.b.c, Struct_1(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.b.a.x, global0.b.a.x, arg_0.b.a.x) >> (u_input.b.wxy % vec3<u32>(32u)), vec3<u32>(10177u, 1u, u_input.a.x))), -3114i, 1789f, !arg_0.b.d));
    var var_1 = func_4(-(firstLeadingBit(~vec4<i32>(global0.b.b, u_input.c, arg_0.b.b, global0.b.b)) ^ max(vec4<i32>(arg_0.b.b, arg_0.b.b, 35588i, 6793i), select(vec4<i32>(2147483647i, 64739i, global0.b.b, 38669i), vec4<i32>(arg_0.b.b, 1i, 1i, 2147483647i), vec4<bool>(arg_0.b.d, false, false, false)))), ~(_wgslsmith_sub_vec4_u32(~vec4<u32>(34087u, arg_0.b.a.x, 1u, 60886u), vec4<u32>(4294967295u, 0u, 4294967295u, arg_0.b.a.x)) >> (firstLeadingBit(vec4<u32>(u_input.b.x, 1077u, 0u, global0.b.a.x)) % vec4<u32>(32u)))).b;
    global0 = Struct_2(_wgslsmith_f_op_f32(abs(-335f)), Struct_1(global0.b.a, 21240i, -866f, false));
    let var_2 = ~_wgslsmith_mult_u32(0u, reverseBits(1u));
    return vec4<f32>(-897f, -1555f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1478f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-555f, 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(-var_1.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(global0.a * var_1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 14>();
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(func_4(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.c, -2147483647i, 19895i), func_1(global0.b.a.x, false, Struct_1(vec3<u32>(u_input.b.x, 4294967295u, 8722u), global0.b.b, -1000f, true))), vec4<i32>(global0.b.b, global0.b.b, -1i, 0i) >> (u_input.b % vec4<u32>(32u))), select(firstLeadingBit(func_2(global2[_wgslsmith_index_u32(11451u, 7u)], -2017i)), u_input.b, !func_3()))));
    global3 = array<Struct_1, 14>();
    let var_1 = _wgslsmith_sub_vec3_i32(-firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(40719i, global0.b.b, global0.b.b)), ~abs(~firstLeadingBit(vec3<i32>(2147483647i, global0.b.b, -2147483647i))));
    let var_2 = select(vec4<i32>(-_wgslsmith_sub_i32(global0.b.b, u_input.c), reverseBits(global0.b.b), global0.b.b, global0.b.b), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global0.b.b, 8526i, var_1.x), ~vec4<i32>(6074i, -2147483647i, -2147483647i, 1i), vec4<i32>(72832i, 1i, u_input.c, u_input.c) << (u_input.b % vec4<u32>(32u))) | ((vec4<i32>(-6264i, u_input.c, 1i, -1i) & vec4<i32>(-1i, 5767i, -18196i, u_input.c)) >> (vec4<u32>(u_input.d, u_input.a.x, global0.b.a.x, 0u) % vec4<u32>(32u))), vec4<i32>(func_4(-vec4<i32>(-1i, u_input.c, u_input.c, -33552i), select(u_input.b, vec4<u32>(3156u, u_input.a.x, 35890u, 59774u), true)).b.b, ~(u_input.c ^ 38076i), min(69701i, global0.b.b) << (_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(1u, 1u, u_input.d, global0.b.a.x)) % 32u), select(-2147483647i, _wgslsmith_mod_i32(30736i, 2147483647i), true))), vec4<bool>(~(-u_input.c) <= _wgslsmith_mult_i32(-2147483647i, u_input.c), (true | func_3().x) & true, global1[_wgslsmith_index_u32(u_input.d, 11u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(25820u, func_2(Struct_2(global0.a, global0.b), _wgslsmith_sub_i32(-2147483647i, u_input.c)).x), 11u)]));
    let var_3 = -reverseBits(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_0.zx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_5(Struct_2(var_0.x, Struct_1(global0.b.a, u_input.c, global0.a, global0.b.d)))).xz))), _wgslsmith_f_op_vec4_f32(max(var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global0.a, _wgslsmith_f_op_f32(global0.b.c + 190f), -393f)))), -2523f);
}

