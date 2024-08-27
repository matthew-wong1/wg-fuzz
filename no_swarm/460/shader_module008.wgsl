struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true));

var<private> global1: array<bool, 18>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_3, arg_3: vec2<f32>) -> vec4<u32> {
    let var_0 = arg_0;
    var var_1 = 4294967295u;
    global0 = array<vec4<bool>, 5>();
    let var_2 = arg_1;
    let var_3 = -firstLeadingBit(firstLeadingBit(13867i));
    return arg_2.a.b;
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    let var_0 = 32376u << (abs(0u) % 32u);
    var var_1 = Struct_3(Struct_2(Struct_1(max(vec3<u32>(4294967295u, 4294967295u, var_0) >> (vec3<u32>(2308u, var_0, arg_0.x) % vec3<u32>(32u)), u_input.b), -3263f, firstTrailingBit(-1i), arg_0.x), select(~(~vec4<u32>(u_input.c, 0u, 35711u, arg_0.x)), func_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -1571f, -359f, -1723f), vec4<f32>(560f, -1242f, -1386f, 1101f))), -47806i, Struct_3(Struct_2(Struct_1(vec3<u32>(var_0, 21564u, 53749u), 1034f, 41287i, u_input.b.x), vec4<u32>(4294967295u, arg_0.x, var_0, u_input.c), Struct_1(vec3<u32>(27989u, 4294967295u, 99767u), 1000f, -2147483647i, 1u), Struct_1(vec3<u32>(arg_0.x, var_0, 0u), 826f, 36818i, u_input.b.x), vec4<i32>(0i, -2147483647i, 2147483647i, -1i)), vec2<u32>(4294967295u, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(230f, -596f))), !global1[_wgslsmith_index_u32(u_input.b.x, 18u)]), Struct_1(u_input.b, 2145f, 1i, arg_0.x), Struct_1(vec3<u32>(var_0, _wgslsmith_mult_u32(arg_0.x, var_0), ~u_input.a), _wgslsmith_f_op_f32(round(-1749f)), 1i, 37367u), _wgslsmith_add_vec4_i32(-vec4<i32>(-1i, 2147483647i, 0i, -2147483647i), vec4<i32>(-1i, -33586i, -1i, -1i) >> (vec4<u32>(40242u, 4294967295u, 1u, arg_0.x) % vec4<u32>(32u))) << (~vec4<u32>(1u, 2046u, arg_0.x, arg_0.x) % vec4<u32>(32u))), vec2<u32>(abs(~u_input.b.x), abs(select(u_input.c, 71059u, global1[_wgslsmith_index_u32(86556u, 18u)]))) << (~vec2<u32>(_wgslsmith_mod_u32(47064u, var_0), u_input.c) % vec2<u32>(32u)));
    var var_2 = 1i;
    var var_3 = Struct_4(vec3<u32>(40618u, var_1.a.a.d, select(var_0, var_0, all(select(vec3<bool>(true, global1[_wgslsmith_index_u32(34562u, 18u)], false), vec3<bool>(global1[_wgslsmith_index_u32(40268u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], true), vec3<bool>(global1[_wgslsmith_index_u32(var_0, 18u)], false, global1[_wgslsmith_index_u32(83738u, 18u)]))))), var_1.a, 1i);
    let var_4 = _wgslsmith_mod_u32(~5187u, ~var_0);
    return var_1.a.a.b;
}

fn func_4(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 * arg_0), vec4<f32>(-596f, arg_0.x, arg_0.x, 804f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(159f + 462f) * arg_0.x) * 782f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -930f), _wgslsmith_f_op_f32(1957f - arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x * arg_0.x))) + arg_0.x), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)))), !(!all(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 18u)])))));
    var var_1 = vec4<u32>(~abs(~u_input.c), ~(reverseBits(26395u) | (u_input.c << (u_input.b.x % 32u))) & (u_input.c & firstTrailingBit(u_input.a)), 4294967295u, u_input.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0));
    var var_3 = _wgslsmith_mult_vec3_i32(~(select(vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, 37383i, 10612i) >> (u_input.b % vec3<u32>(32u)), true) ^ vec3<i32>(0i, 2147483647i, _wgslsmith_div_i32(-2147483647i, 2147483647i))), -vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2505i, -26060i, -63427i, 2147483647i), vec4<i32>(-2147483647i, -12387i, -32969i, 24962i)), -49011i), 16968i, -16354i << (func_3(vec4<f32>(arg_0.x, var_0.x, 1487f, 1343f), -1i, Struct_3(Struct_2(Struct_1(vec3<u32>(11049u, 26109u, u_input.b.x), arg_0.x, 33463i, u_input.c), vec4<u32>(4294967295u, u_input.a, 0u, u_input.a), Struct_1(var_1.yzz, 787f, 31297i, 1u), Struct_1(u_input.b, -801f, -2147483647i, 0u), vec4<i32>(-1i, 51930i, -2147483647i, -24476i)), var_1.yx), vec2<f32>(517f, var_2.x)).x % 32u)));
    var var_4 = Struct_1(var_1.zyx, _wgslsmith_f_op_f32(-var_2.x), ~var_3.x, countOneBits(var_1.x & _wgslsmith_clamp_u32(1u, ~4294967295u, _wgslsmith_dot_vec3_u32(var_1.xxz, vec3<u32>(0u, 1u, var_1.x)))));
    return Struct_3(Struct_2(Struct_1(~vec3<u32>(var_4.a.x, 1u, 0u) << (min(vec3<u32>(4294967295u, 1u, 48685u), u_input.b) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2002f + 1165f) - var_0.x), var_3.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_4.a.x, 0u, 4294967295u), vec4<u32>(37246u, 54104u, u_input.a, var_1.x)), reverseBits(1u))), ~(vec4<u32>(16967u, 7185u, u_input.a, 0u) ^ vec4<u32>(1u, var_1.x, var_1.x, u_input.b.x)) >> (vec4<u32>(var_1.x << (1701u % 32u), 0u, var_1.x, var_4.d | 1u) % vec4<u32>(32u)), Struct_1(vec3<u32>(var_4.a.x, ~u_input.a, 4294967295u), var_4.b, -var_4.c, 1u), Struct_1((vec3<u32>(var_4.a.x, var_4.d, u_input.b.x) ^ vec3<u32>(var_1.x, 106346u, u_input.b.x)) >> (vec3<u32>(4294967295u, u_input.a, var_4.d) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(925f + arg_0.x)), 0i, 1u), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -2788i, ~(-35323i), ~15666i), vec4<i32>(var_3.x, 1i, var_4.c, -2147483647i) | (vec4<i32>(var_4.c, -15190i, var_4.c, 2147483647i) & vec4<i32>(var_3.x, -4226i, var_4.c, 2147483647i)))), var_1.xw >> ((~(var_1.xy & vec2<u32>(17527u, var_4.a.x)) << (vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.a, 1u), vec4<u32>(4294967295u, var_1.x, var_4.d, var_4.d))) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_1() -> f32 {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-447f, _wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.a, 32452u, u_input.a))), -2519f, -1359f))));
    global1 = array<bool, 18>();
    var_0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-724f, 229f, _wgslsmith_f_op_f32(step(153f, 720f)), _wgslsmith_f_op_f32(-var_0.a.a.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.c.b, -1000f, -911f, 973f) - vec4<f32>(var_0.a.d.b, 446f, var_0.a.c.b, 1000f)) + vec4<f32>(205f, var_0.a.c.b, var_0.a.c.b, 370f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.d.b, var_0.a.d.b, var_0.a.c.b, var_0.a.d.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(451f, var_0.a.c.b, 541f, var_0.a.d.b))))));
    var_0 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.c.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.a.c.b)), var_0.a.c.b, all(vec2<bool>(false, global1[_wgslsmith_index_u32(41029u, 18u)])))), -973f)));
    var var_1 = Struct_4(var_0.a.d.a & _wgslsmith_sub_vec3_u32(vec3<u32>(abs(16288u), u_input.b.x, ~u_input.a), ~reverseBits(var_0.a.a.a)), Struct_2(var_0.a.a, ~max(vec4<u32>(var_0.b.x, var_0.a.a.a.x, u_input.a, 18977u), firstLeadingBit(var_0.a.b)), func_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.c.b, var_0.a.c.b, 533f, var_0.a.d.b)))))).a.d, var_0.a.a, vec4<i32>(-func_4(vec4<f32>(-427f, -1737f, -425f, var_0.a.a.b)).a.e.x, 60930i, 16231i << (var_0.a.b.x % 32u), var_0.a.a.c)), 1i);
    return _wgslsmith_div_f32(-799f, _wgslsmith_f_op_f32(floor(954f)));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_3 {
    let var_0 = -525f;
    var var_1 = Struct_2(arg_2, vec4<u32>(select(_wgslsmith_div_u32(67921u, arg_2.a.x), arg_2.d, global1[_wgslsmith_index_u32(~4294967295u, 18u)]) << (~_wgslsmith_mod_u32(arg_2.d, 68578u) % 32u), arg_2.d, ~(~arg_1.a.x), 1u), arg_2, arg_2, vec4<i32>(~max(-50528i, arg_1.c), (arg_2.c | (arg_1.c << (arg_3 % 32u))) ^ 2147483647i, firstLeadingBit(0i), arg_2.c));
    global0 = array<vec4<bool>, 5>();
    var var_2 = arg_2;
    var var_3 = vec4<u32>(arg_3, ~u_input.c >> (func_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, arg_1.b, -645f, arg_2.b)))), -14324i, Struct_3(func_4(vec4<f32>(108f, -1054f, var_1.c.b, var_0)).a, abs(var_2.a.zz)), vec2<f32>(_wgslsmith_f_op_f32(var_2.b * 1224f), var_1.c.b)).x % 32u), 1u, ~(u_input.a << (_wgslsmith_div_u32(var_2.d, _wgslsmith_sub_u32(u_input.c, 0u)) % 32u)));
    return Struct_3(Struct_2(func_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, 386f, arg_1.b, var_1.c.b) + vec4<f32>(-1939f, -739f, 418f, arg_2.b))))).a.a, vec4<u32>(~15468u, 1u, firstLeadingBit(0u ^ arg_1.d), ~abs(92840u)), Struct_1(vec3<u32>(abs(arg_3), countOneBits(u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(12143u, 78180u, var_3.x, 13679u), var_1.b)), -1109f, max(abs(-21017i), arg_1.c), ~u_input.c), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-798f, -309f, var_2.b, 173f), vec4<f32>(-585f, var_0, -887f, -538f)))).a.c, var_1.e), _wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.b.x, arg_1.a.x), min(vec2<u32>(4294967295u, 68549u), arg_2.a.zz)), arg_1.a.xy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!any(global0[_wgslsmith_index_u32(4294967295u, 5u)]), Struct_1(~((u_input.b | vec3<u32>(39287u, u_input.b.x, 1u)) ^ firstLeadingBit(u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(1879f + 1568f)) + _wgslsmith_f_op_f32(func_1())), _wgslsmith_div_i32(~(~0i), ~abs(1i)), _wgslsmith_add_u32(reverseBits(u_input.b.x >> (108846u % 32u)), ~0u)), Struct_1((vec3<u32>(u_input.c, 1u, u_input.b.x) << (_wgslsmith_add_vec3_u32(vec3<u32>(20676u, u_input.a, 19126u), u_input.b) % vec3<u32>(32u))) ^ ~(~vec3<u32>(1u, 14779u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1946f + 1069f), 1000f)) * _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1191f))), 0i >> (u_input.a % 32u), ~(~u_input.a)), u_input.c);
    global0 = array<vec4<bool>, 5>();
    global1 = array<bool, 18>();
    var var_1 = Struct_5(var_0.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-845f, var_0.a.d.b, var_0.a.d.b, 1000f)))))), func_5(any(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(66396u, 18u)], global1[_wgslsmith_index_u32(u_input.a, 18u)], global1[_wgslsmith_index_u32(var_0.a.a.d, 18u)]))), func_4(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.d.b * var_0.a.c.b), -1598f, _wgslsmith_div_f32(var_0.a.d.b, var_0.a.d.b), _wgslsmith_f_op_f32(-var_0.a.d.b))).a.c, func_4(vec4<f32>(1f, _wgslsmith_f_op_f32(var_0.a.a.b + -1143f), var_0.a.d.b, var_0.a.d.b)).a.c, ~59021u));
    global0 = array<vec4<bool>, 5>();
    let var_2 = ~(~(~1u));
    global0 = array<vec4<bool>, 5>();
    var_1 = Struct_5(var_0.a.a, _wgslsmith_f_op_vec4_f32(-var_1.b), func_5(false, var_1.a, func_5(global1[_wgslsmith_index_u32(4294967295u, 18u)] | any(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(41418u, 18u)])), var_0.a.c, func_4(var_1.b).a.a, 59809u).a.d, ~var_1.c.b.x));
    global0 = array<vec4<bool>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(var_1.a.a, vec3<u32>(var_0.a.c.d, var_0.b.x, 0u)), vec3<u32>(0u, u_input.b.x, var_0.a.b.x))));
}

