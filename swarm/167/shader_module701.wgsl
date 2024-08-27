struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(-1000f, -386f, 1825f, 406f, -1000f, 2127f, 565f, 1617f, 2503f, 585f, 1000f, -1379f, -697f, -456f, -371f, 665f);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(369f, _wgslsmith_f_op_f32(-165f + _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(19538u, 16u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-116f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 16u)], -258f, -953f) * vec3<f32>(1010f, -1144f, global0[_wgslsmith_index_u32(0u, 16u)]))))))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = array<f32, 16>();
    let var_0 = Struct_4(Struct_3(firstTrailingBit(vec4<i32>(-2147483647i, 1i, -1i, u_input.a) ^ -vec4<i32>(u_input.a, 1i, 15106i, u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(arg_0, 16u)], global0[_wgslsmith_index_u32(arg_0, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], 816f)) - vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], 777f, global0[_wgslsmith_index_u32(arg_0, 16u)], -1601f)) + vec4<f32>(_wgslsmith_f_op_f32(floor(-612f)), _wgslsmith_f_op_f32(f32(-1f) * -376f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 16u)] * -232f), 1007f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))), Struct_1(_wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(true, true, true, true), min(vec2<i32>(-23856i, u_input.a), vec2<i32>(2147483647i, 2147483647i)))), _wgslsmith_mult_i32(u_input.a << (76265u % 32u), 0i), u_input.c, max(u_input.a, 31353i), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), vec2<bool>(true, true)));
    var var_1 = all(vec4<bool>(var_0.a.d.e.x, var_0.a.e.x, !var_0.a.d.e.x, all(select(vec3<bool>(true, var_0.a.e.x, false), select(vec3<bool>(var_0.a.d.e.x, var_0.a.d.e.x, var_0.a.d.e.x), var_0.a.d.e.xwy, vec3<bool>(true, var_0.a.e.x, var_0.a.d.e.x)), 6989u < var_0.a.d.c))));
    let var_2 = firstLeadingBit(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(arg_0, 13279u, 4523u, arg_0), ~vec4<u32>(arg_0, 0u, 1u, 1u)), abs((vec4<u32>(u_input.b.x, 20366u, var_0.a.d.c, arg_0) >> (vec4<u32>(1u, 2116u, u_input.b.x, 29708u) % vec4<u32>(32u))) & (vec4<u32>(var_0.a.d.c, 81688u, 19482u, 0u) ^ vec4<u32>(1u, arg_0, arg_0, 4294967295u)))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.a.b), select(var_0.a.d.e, vec4<bool>(select(all(var_0.a.d.e), false, any(var_0.a.d.e.yyz)), var_0.a.e.x, true, any(vec2<bool>(var_0.a.e.x, var_0.a.e.x))), !var_0.a.d.e), var_2);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_5) -> i32 {
    global0 = array<f32, 16>();
    let var_0 = Struct_1(arg_1.a.yyy, u_input.a << (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(arg_2.a.c, 4294967295u), u_input.b.x, firstLeadingBit(u_input.d)), countOneBits(arg_2.c.zzz)) % 32u), min((firstTrailingBit(20149u) << (~arg_2.b.c % 32u)) | u_input.b.x, 1u), _wgslsmith_dot_vec2_i32(arg_0.xy >> (select(u_input.b, vec2<u32>(0u, u_input.c), true) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(-arg_0.yx >> (~arg_2.c.yz % vec2<u32>(32u)), arg_0.yz)), arg_1.b);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.a.a.x, -945f, global0[_wgslsmith_index_u32(0u, 16u)]), vec3<f32>(-651f, -173f, arg_2.b.a.x)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, -1000f, var_0.a.x) * _wgslsmith_f_op_vec3_f32(exp2(arg_1.a.xzz)))))), u_input.a, 42478u, -1i ^ reverseBits(arg_0.x), arg_2.a.e);
    global0 = array<f32, 16>();
    let var_2 = (arg_2.c.wx >> (~(~arg_2.c.xx & firstLeadingBit(arg_2.c.xy)) % vec2<u32>(32u))) >> (vec2<u32>(min(_wgslsmith_clamp_u32(14978u, ~arg_2.c.x, _wgslsmith_mod_u32(1u, 66008u)), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.d, var_1.c), ~arg_1.c)), _wgslsmith_mult_u32(~(~35226u), u_input.b.x)) % vec2<u32>(32u));
    return 5846i >> (func_2(arg_1.c).c % 32u);
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: u32) -> Struct_4 {
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    var var_0 = arg_0.d.e.x;
    var var_1 = abs(_wgslsmith_sub_vec4_i32(-max(arg_0.a, vec4<i32>(-7556i, 1i, arg_0.a.x, -7822i)), -(-arg_0.a ^ ~arg_0.a)));
    let var_2 = Struct_5(arg_0.d, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2329f) + _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(arg_2, 16u)], -180f))), 502f, global0[_wgslsmith_index_u32(0u, 16u)]), select(vec4<bool>(true, arg_0.d.e.x | true, true, arg_0.e.x), !vec4<bool>(arg_0.e.x, arg_0.e.x, arg_0.d.e.x, arg_0.e.x), true), ~(~(699u & u_input.b.x))), vec4<u32>(15409u, ~(~arg_0.d.c) << (~(~u_input.b.x) % 32u), 0u, ~countOneBits(max(arg_2, 1u))));
    return Struct_4(Struct_3(_wgslsmith_add_vec4_i32(~(-vec4<i32>(-42608i, arg_0.a.x, -1i, 1i)), vec4<i32>(firstTrailingBit(var_2.a.d), ~(-67953i), arg_1, ~(-14676i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_2.b.a, var_2.b.a, true))), -1336f, Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1142f, var_2.b.a.x), _wgslsmith_div_vec3_f32(vec3<f32>(726f, var_2.a.a.x, var_2.b.a.x), var_2.b.a.xyz)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, arg_1, 97902i), -vec3<i32>(arg_0.a.x, 40167i, 7648i)), func_2(_wgslsmith_mod_u32(76672u, 48366u)).c, ~0i, var_2.b.b), !vec2<bool>(var_2.b.b.x, any(arg_0.d.e))));
}

fn func_1() -> Struct_4 {
    global0 = array<f32, 16>();
    let var_0 = func_5(Struct_3(vec4<i32>(firstLeadingBit(select(0i, u_input.a, true)), u_input.a, func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 3590i, u_input.a), vec3<i32>(44263i, 57296i, 1i)), func_2(1u), Struct_5(Struct_1(vec3<f32>(-114f, global0[_wgslsmith_index_u32(4294967295u, 16u)], 963f), u_input.a, u_input.d, u_input.a, vec4<bool>(false, false, true, true)), Struct_2(vec4<f32>(-954f, global0[_wgslsmith_index_u32(u_input.c, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(u_input.c, 16u)]), vec4<bool>(true, true, true, false), 77613u), vec4<u32>(4294967295u, 4294967295u, u_input.b.x, u_input.c))), (-36438i << (u_input.c % 32u)) ^ u_input.a), vec4<f32>(global0[_wgslsmith_index_u32(11014u, 16u)], global0[_wgslsmith_index_u32(~u_input.d, 16u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-193f + -125f) * 1237f), -1000f), global0[_wgslsmith_index_u32(select(reverseBits(u_input.d), u_input.b.x, true), 16u)], Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 16u)], 1813f, global0[_wgslsmith_index_u32(4294967295u, 16u)]) + vec3<f32>(659f, global0[_wgslsmith_index_u32(u_input.b.x, 16u)], global0[_wgslsmith_index_u32(u_input.d, 16u)]))), -u_input.a, abs(1u), ~u_input.a, func_2(38378u).b), select(vec2<bool>(global0[_wgslsmith_index_u32(26030u, 16u)] >= 2460f, false), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true)), max(1i, countOneBits(2147483647i)), u_input.c);
    global0 = array<f32, 16>();
    var var_1 = func_5(Struct_3(vec4<i32>(_wgslsmith_mult_i32(u_input.a, 26000i ^ u_input.a), u_input.a, 2147483647i, u_input.a ^ _wgslsmith_sub_i32(-51184i, var_0.a.a.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_0.a.b, var_0.a.b)) - _wgslsmith_f_op_vec4_f32(-var_0.a.b)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(12486u, 16u)])), func_2(var_0.a.d.c).a.x)), Struct_1(var_0.a.d.a, _wgslsmith_sub_i32(-3320i, var_0.a.d.b ^ var_0.a.d.b), ~_wgslsmith_mod_u32(0u, u_input.c), -_wgslsmith_sub_i32(-27192i, var_0.a.d.d), select(vec4<bool>(false, true, var_0.a.e.x, true), func_5(Struct_3(vec4<i32>(u_input.a, var_0.a.a.x, u_input.a, 11612i), var_0.a.b, var_0.a.b.x, var_0.a.d, var_0.a.e), u_input.a, u_input.b.x).a.d.e, var_0.a.d.e)), select(vec2<bool>(true, !var_0.a.d.e.x), select(func_2(41520u).b.yw, !var_0.a.e, true), _wgslsmith_mod_u32(u_input.c, 49048u) != ~0u)), -(~(-4367i)), ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.d.c, 14405u, var_0.a.d.c, 5435u), vec4<u32>(var_0.a.d.c, var_0.a.d.c, u_input.b.x, u_input.d))))).a;
    var var_2 = all(!var_0.a.d.e.yxw);
    return func_5(var_0.a, abs(~abs(~1i)), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-273f, _wgslsmith_f_op_f32(f32(-1f) * -1047f))) + var_0.a.d.a.x);
    let var_2 = _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 16u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.c)) * _wgslsmith_f_op_f32(-func_1().a.d.a.x)) + var_0.a.b.x));
    var var_3 = var_0.a.d.a.x;
    var var_4 = func_1().a.d.c;
    var var_5 = 5871u;
    global0 = array<f32, 16>();
    var var_6 = firstTrailingBit(vec3<u32>(countOneBits(u_input.c), ~select(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 60586u), u_input.b), var_0.a.e.x), u_input.d));
    var var_7 = func_5(func_5(func_5(var_0.a, -31097i, ~_wgslsmith_dot_vec4_u32(vec4<u32>(42233u, var_6.x, 40219u, 164646u), vec4<u32>(var_0.a.d.c, var_6.x, 0u, var_0.a.d.c))).a, 2147483647i, var_6.x).a, 18168i, _wgslsmith_mult_u32(var_0.a.d.c, (~var_0.a.d.c | max(var_0.a.d.c, var_6.x)) ^ (~u_input.d ^ var_6.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a << ((~vec4<u32>(0u, var_6.x, var_6.x, u_input.c) << (countOneBits(~vec4<u32>(4294967295u, var_6.x, 22753u, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)), var_2, -78128i, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(400f, var_2, global0[_wgslsmith_index_u32(countOneBits(var_7.a.d.c), 16u)]))));
}

