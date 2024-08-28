struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 31> = array<i32, 31>(0i, -42548i, 0i, 49307i, 4452i, -35875i, -23521i, -1554i, -28684i, 0i, -1i, 65136i, 35788i, 1473i, 25498i, i32(-2147483648), 1i, -32258i, 1i, -1i, 1i, 505i, -1i, -37139i, 0i, -13938i, -1i, 6078i, 48102i, 1i, 37360i);

var<private> global2: vec4<f32> = vec4<f32>(-1432f, -667f, -2208f, 396f);

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<bool>(true, false), vec4<i32>(-25438i, 16093i, 4791i, 19629i), vec4<f32>(316f, 1438f, -1446f, -767f), true));

var<private> global4: Struct_3;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: u32) -> f32 {
    global3 = array<Struct_1, 1>();
    var var_0 = u_input.c.yz;
    var var_1 = var_0.x;
    return 1597f;
}

fn func_1() -> Struct_2 {
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), -395f)), global2.x, _wgslsmith_f_op_f32(global4.c.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.b)))))), _wgslsmith_div_f32(-226f, global2.x));
    global0 = ~(~u_input.b ^ _wgslsmith_mod_u32(u_input.b, ~u_input.b)) ^ 4294967295u;
    global0 = _wgslsmith_mod_u32(~_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b, u_input.b), u_input.b >> (u_input.b % 32u)) >> (u_input.b % 32u), u_input.b);
    var var_0 = _wgslsmith_f_op_f32(global2.x + 1000f);
    var var_1 = ~vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 31u)], -20097i >> (max(u_input.b ^ u_input.b, u_input.b << (4294967295u % 32u)) % 32u));
    return Struct_2(true);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_3(true != any(!vec3<bool>(arg_1.a, true, arg_1.a)), Struct_1(global4.b.a, firstLeadingBit(min(_wgslsmith_div_vec4_i32(global4.b.b, vec4<i32>(global1[_wgslsmith_index_u32(arg_0.x, 31u)], global4.b.b.x, 0i, -25795i)), ~u_input.c)), global4.c, ~(~0u) <= reverseBits(u_input.b | 4294967295u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.c.x, 124f, -585f, global4.c.x))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.c.x, 309f, 763f, global2.x), vec4<f32>(-1785f, global2.x, global2.x, global4.b.c.x)))))))), ~(~(~(-arg_2.x))));
    let var_1 = global2.wzx;
    let var_2 = Struct_3(select(true, -2147483647i > (_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], 0i, -5010i), global4.b.b.xxz) ^ global1[_wgslsmith_index_u32(~1u, 31u)]), !(!arg_1.a) == global4.b.a.x), global4.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4.b.c)))) + var_0.b.c), ~firstLeadingBit(~reverseBits(-44056i)));
    var var_3 = vec3<bool>(true, all(select(select(select(vec4<bool>(var_0.b.a.x, arg_1.a, false, var_0.a), vec4<bool>(false, true, var_2.b.d, true), arg_1.a), vec4<bool>(true, var_2.b.a.x, var_0.a, var_2.a), select(vec4<bool>(var_2.a, true, var_0.a, var_0.a), vec4<bool>(var_2.b.a.x, global4.a, var_2.a, var_2.b.a.x), true)), select(vec4<bool>(false, var_0.b.a.x, var_0.a, global4.b.d), !vec4<bool>(true, true, var_0.a, var_0.b.a.x), vec4<bool>(true, true, false, arg_1.a)), select(select(vec4<bool>(true, true, true, arg_1.a), vec4<bool>(true, false, arg_1.a, false), vec4<bool>(global4.b.d, var_0.a, false, global4.b.a.x)), !vec4<bool>(false, false, var_0.b.a.x, true), any(vec2<bool>(false, arg_1.a))))), !(!func_1().a) | var_0.a);
    global0 = 0u;
    return func_1();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_3 {
    global3 = array<Struct_1, 1>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global4.c.x)), _wgslsmith_f_op_f32(-global2.x), !arg_0.a)), 1484f));
    let var_1 = Struct_1(!select(vec2<bool>(all(global4.b.a), true), vec2<bool>(global4.b.b.x >= global1[_wgslsmith_index_u32(u_input.b, 31u)], false), global4.b.a), -select(-(arg_3 ^ arg_3), vec4<i32>(0i, abs(global4.d), reverseBits(u_input.c.x), 23698i), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1000f)))), -981f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(884f + 800f))), 552f) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-360f * var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * var_0.x), -1548f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) - var_0.x))), !global4.a);
    let var_2 = 1i;
    return Struct_3(u_input.b != 16909u, var_1, _wgslsmith_f_op_vec4_f32(exp2(global4.b.c)), u_input.a);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_3) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.b.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x)))))), arg_2.b.c.x, global4.c.x);
    var var_1 = _wgslsmith_mult_vec3_u32(min(reverseBits(~(vec3<u32>(4294967295u, u_input.b, 8640u) << (vec3<u32>(u_input.b, 55041u, 0u) % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(0u, 21327u, u_input.b) % vec3<u32>(32u))), vec3<u32>(~u_input.b, u_input.b >> (10617u % 32u), _wgslsmith_sub_u32(4294967295u, 4294967295u)), select(select(vec3<u32>(45985u, 11089u, u_input.b), vec3<u32>(u_input.b, 1u, u_input.b), vec3<bool>(arg_1.a, arg_1.a, arg_2.b.d)), ~vec3<u32>(u_input.b, 28133u, u_input.b), select(vec3<bool>(arg_2.b.a.x, arg_2.b.a.x, arg_1.a), vec3<bool>(arg_2.a, global4.b.a.x, arg_2.a), vec3<bool>(true, true, true))))), ~_wgslsmith_add_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(21616u, u_input.b, 0u), vec3<u32>(14539u, 1u, u_input.b), vec3<u32>(27178u, 4294967295u, 0u))), abs(vec3<u32>(914u, 15767u, u_input.b)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.b, 1u, 16797u)) % vec3<u32>(32u))));
    let var_2 = vec2<u32>(reverseBits(_wgslsmith_add_u32(var_1.x, u_input.b)), ((reverseBits(u_input.b) >> (_wgslsmith_clamp_u32(u_input.b, 35630u, 11684u) % 32u)) | _wgslsmith_add_u32(var_1.x, _wgslsmith_div_u32(u_input.b, var_1.x))) & u_input.b);
    let var_3 = arg_1;
    global4 = func_4(Struct_2(false), var_3, Struct_2(abs(arg_0.x) >= select(-1i, 26259i, true)), u_input.c);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(-1i | abs(global1[_wgslsmith_index_u32(u_input.b, 31u)] & _wgslsmith_clamp_i32(-8564i, 4213i, -5710i)), func_5(firstTrailingBit(vec3<i32>(global1[_wgslsmith_index_u32(14943u, 31u)], 1290i, global4.d)), Struct_2(global4.b.d), func_4(func_1(), func_1(), func_3(vec4<u32>(4294967295u, u_input.b, 37796u, 7959u), Struct_2(global4.a), global4.b.b.yyz), ~u_input.c)) >> (~abs(47989u) % 32u));
    let var_1 = func_5(reverseBits(max(_wgslsmith_div_vec3_i32(global4.b.b.zxw, vec3<i32>(7112i, 4996i, u_input.c.x)) << (vec3<u32>(u_input.b, 11212u, 12621u) % vec3<u32>(32u)), vec3<i32>(firstLeadingBit(var_0), -58245i, 1i))), Struct_2(true), Struct_3(true, Struct_1(!global4.b.a, abs(vec4<i32>(-29483i, -8543i, 4521i, -13596i)), _wgslsmith_f_op_vec4_f32(global4.c * _wgslsmith_f_op_vec4_f32(-vec4<f32>(888f, 1313f, 1249f, global4.b.c.x))), false), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global4.b.c))), _wgslsmith_mod_i32(-global1[_wgslsmith_index_u32(34557u, 31u)], global4.d)));
    var var_2 = Struct_2(global4.b.a.x);
    global2 = vec4<f32>(520f, _wgslsmith_div_f32(-143f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b.c.x + -127f))), _wgslsmith_f_op_f32(f32(-1f) * -583f), _wgslsmith_f_op_f32(global2.x - -1144f));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, -502f, true))), ~(~vec4<u32>(u_input.b, 1u, 1u, 61971u) | _wgslsmith_div_vec4_u32(~vec4<u32>(0u, 1u, u_input.b, 21463u), min(vec4<u32>(u_input.b, u_input.b, 31760u, u_input.b), vec4<u32>(u_input.b, 0u, 19309u, u_input.b)))), abs(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 69570u, 4294967295u, 4294967295u), vec4<u32>(83194u, 4294967295u, u_input.b, u_input.b)), u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c.x - _wgslsmith_f_op_f32(global4.c.x - -2122f))), global2.x, global4.b.c.x, -572f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(205f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-755f + 330f))))));
}

