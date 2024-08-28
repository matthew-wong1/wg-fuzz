struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<bool>, 20>;

var<private> global2: f32 = -379f;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>) -> vec4<f32> {
    var var_0 = _wgslsmith_div_f32(-529f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1f, _wgslsmith_div_f32(311f, -1160f))))));
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(309f, -566f, -433f, -1000f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-972f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(376f, -1540f)) - -247f), _wgslsmith_f_op_f32(-794f + -1058f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-838f + -1285f))))));
    var var_3 = vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, _wgslsmith_mult_u32(global0.x, 85556u), _wgslsmith_add_u32(arg_0.x, global0.x), 1u), vec4<u32>(1u ^ global0.x, arg_0.x, min(0u, arg_0.x), ~24058u)), abs(firstLeadingBit(_wgslsmith_clamp_u32(1u, arg_0.x, _wgslsmith_sub_u32(86648u, global0.x)))), _wgslsmith_mult_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(78416u, global0.x), ~vec2<u32>(global0.x, global0.x))), global0.x));
    let var_4 = vec4<u32>(0u, 58858u, global0.x, arg_0.x);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-700f)) * var_2.x), 1480f, _wgslsmith_div_f32(var_2.x, 1f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(342f * -1114f) - -1750f)))));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: u32) -> vec3<f32> {
    let var_0 = firstLeadingBit(_wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, 76005u, arg_0.b), vec4<u32>(global0.x, 19050u, arg_3, arg_3)), abs(vec4<u32>(arg_0.b, 0u, arg_3, 35496u))), vec4<u32>(31443u & _wgslsmith_add_u32(global0.x, arg_0.b), ~(~87822u), _wgslsmith_dot_vec2_u32(firstTrailingBit(global0.xx), global0.xy), _wgslsmith_add_u32(arg_0.b, global0.x))));
    global0 = var_0.wzw;
    var var_1 = 26421u;
    var_1 = _wgslsmith_dot_vec4_u32(var_0, vec4<u32>(min(32226u, abs(global0.x)), reverseBits(arg_3 << (~7348u % 32u)), 12642u << (select(~global0.x, _wgslsmith_div_u32(arg_0.b, global0.x), any(global1[_wgslsmith_index_u32(arg_0.b, 20u)])) % 32u), 4294967295u));
    global2 = _wgslsmith_f_op_f32(arg_1.x + arg_1.x);
    return arg_1.wyx;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1573f, 1320f, 109f) + vec3<f32>(578f, -992f, 1611f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1823f, 1675f) - vec3<f32>(-1072f, 1161f, 1422f)))) + _wgslsmith_f_op_vec3_f32(func_4(Struct_5(-u_input.a.x, 0u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(291f, -662f, 1101f, -718f) - vec4<f32>(1373f, 1000f, 585f, -1545f)), _wgslsmith_f_op_vec4_f32(func_3(global0.yy)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true))), -vec3<i32>(u_input.a.x, 1i, 16923i), countOneBits(~3678u))))));
    var var_1 = vec2<i32>(-u_input.b, _wgslsmith_mult_i32(u_input.b, min(select(-34222i, 1i, true), 11621i)));
    var_1 = u_input.a;
    var_1 = abs(u_input.a);
    var var_2 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))) < _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, 1676f), -692f)));
    return var_1.x;
}

fn func_5(arg_0: f32, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))))), -arg_1.yy);
    let var_1 = global0.yx & firstLeadingBit(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, global0.x), global0.zz), abs(~global0.zx)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1200f)));
    let var_2 = var_0.b.x;
    return Struct_2(global0.x, var_0);
}

fn func_1() -> Struct_3 {
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -171f);
    global0 = ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(0u), global0.x, 4294967295u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, global0.x), vec3<u32>(1u, global0.x, global0.x)), ~(~vec3<u32>(global0.x, global0.x, 4294967295u))));
    global0 = ~(select(vec3<u32>(global0.x, ~1u, 0u), vec3<u32>(global0.x, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 1u), vec4<u32>(51114u, global0.x, 4294967295u, global0.x))), true) >> (((firstTrailingBit(vec3<u32>(0u, 46385u, 57517u)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, 37961u, global0.x), vec3<u32>(4294967295u, global0.x, global0.x))) << (vec3<u32>(~global0.x, ~44312u, _wgslsmith_mult_u32(global0.x, 19891u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_0 = Struct_3(-1i, func_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(740f * -257f)))), vec4<i32>(u_input.b, -28842i, _wgslsmith_sub_i32(-1i, func_2()), 2147483647i << (global0.x % 32u))), func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))), _wgslsmith_add_vec4_i32(vec4<i32>(-30375i, 0i, reverseBits(u_input.a.x), firstLeadingBit(-17363i)), vec4<i32>(-1i) * -vec4<i32>(1i, -2147483647i, u_input.b, u_input.a.x))).b);
    let var_1 = firstTrailingBit(var_0.c.b.x) ^ ~(-57480i);
    return Struct_3(abs(u_input.b << (reverseBits(var_0.b.a) % 32u)), func_5(var_0.c.a.x, (vec4<i32>(var_1, -27266i, -21515i, 1i) | vec4<i32>(u_input.a.x, -19719i, 1i, 10263i)) | ~select(vec4<i32>(var_0.b.b.b.x, 1i, u_input.a.x, -2147483647i), vec4<i32>(26883i, var_0.a, -79082i, -8956i), vec4<bool>(true, true, false, true))), var_0.b.b);
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_3) -> vec4<f32> {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-380f)) - -1721f);
    var var_0 = arg_1.b.b;
    let var_1 = min(1u, 1u);
    global0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(~0u, _wgslsmith_mult_u32(arg_1.b.a, _wgslsmith_clamp_u32(1u, 4294967295u, 0u))), _wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_dot_vec3_u32(~(vec3<u32>(24399u, global0.x, 37415u) | vec3<u32>(var_1, arg_1.b.a, global0.x)), vec3<u32>(global0.x, global0.x, abs(arg_1.b.a)))), vec3<u32>(global0.x, firstLeadingBit(1u), select(global0.x, 0u, true)), vec3<u32>(0u, func_5(_wgslsmith_f_op_f32(-var_0.a.x), (vec4<i32>(var_0.b.x, u_input.b, 1i, -27983i) >> (vec4<u32>(39870u, arg_1.b.a, 23499u, 82753u) % vec4<u32>(32u))) | (vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, -43628i) | vec4<i32>(-2147483647i, u_input.a.x, u_input.b, 2614i))).a, 36013u));
    var_0 = arg_1.c;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-983f, arg_0.x, arg_0.x, arg_0.x))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, -353f, 1000f, var_0.a.x), vec4<f32>(1095f, 1105f, -2345f, arg_1.c.a.x), true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, arg_1.c.a.x, arg_1.b.b.a.x, -397f) * vec4<f32>(2564f, -391f, var_0.a.x, -130f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1420f, var_0.a.x, 1309f, var_0.a.x) * vec4<f32>(-404f, -1279f, 377f, -584f)))), vec4<bool>(5829i >= _wgslsmith_clamp_i32(var_0.b.x, arg_1.a, -25883i), select(false, false, true) && any(vec4<bool>(false, true, false, false)), all(vec3<bool>(true, true, true)), any(vec3<bool>(false, true, false)) | (0u < global0.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(2059f, -1424f), -1850f, arg_0.x, _wgslsmith_f_op_vec3_f32(func_4(Struct_5(var_0.b.x, var_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, arg_0.x, arg_1.c.a.x)), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.x, -2205i, u_input.b), vec3<i32>(var_0.b.x, arg_1.b.b.b.x, -45001i)), _wgslsmith_mod_u32(var_1, global0.x))).x) * vec4<f32>(arg_0.x, 433f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.b.a.x) + func_5(-699f, vec4<i32>(var_0.b.x, arg_1.c.b.x, 57633i, 1i)).b.a.x), _wgslsmith_div_f32(arg_1.c.a.x, _wgslsmith_f_op_f32(-arg_0.x)))));
}

fn func_7(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_3) -> i32 {
    global2 = -842f;
    global1 = array<vec3<bool>, 20>();
    global0 = ~arg_1.zwz;
    global2 = 1000f;
    var var_0 = global0.x;
    return _wgslsmith_div_i32(2147483647i, ~arg_3.c.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(1216f, 1f);
    let var_1 = abs(vec4<i32>(u_input.a.x, func_7(_wgslsmith_f_op_vec4_f32(func_6(vec2<f32>(2833f, 1542f), func_1())), ~countOneBits(vec4<u32>(4294967295u, 47480u, global0.x, global0.x)), func_1().b.b.a.x, func_1()), -abs(-u_input.b), firstLeadingBit(min(u_input.a.x, u_input.b | -17016i))));
    global0 = firstTrailingBit(vec3<u32>(firstLeadingBit(~(~global0.x)), global0.x, 0u));
    let var_2 = Struct_4(true, ~_wgslsmith_div_i32(func_5(-636f, vec4<i32>(11581i, 35628i, var_1.x, u_input.a.x)).b.b.x, firstTrailingBit(-var_1.x)), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -996f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_1));
    let var_3 = vec2<bool>(true, any(!vec3<bool>(var_2.a, all(vec4<bool>(var_2.a, true, true, true)), 4294967295u > var_2.c.a)));
    let var_4 = !vec4<bool>(true, var_3.x, true, var_3.x);
    global1 = array<vec3<bool>, 20>();
    global0 = ~vec3<u32>(27567u, ~_wgslsmith_div_u32(min(0u, 1u), _wgslsmith_div_u32(global0.x, global0.x)), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(361f, var_2.c.b.a.x))), _wgslsmith_div_vec4_i32(var_1, countOneBits(vec4<i32>(u_input.b, var_1.x, 11046i, 9532i)))).a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(firstLeadingBit(1u), ~global0.x, ~global0.x, _wgslsmith_mod_u32(var_2.c.a, var_2.c.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_6(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(968f, var_0.x)))), Struct_3(var_1.x, var_2.c, var_2.c.b))).x, func_5(var_0.x, var_1).b.a.x)), abs(var_1), _wgslsmith_f_op_f32(step(883f, var_0.x)));
}

