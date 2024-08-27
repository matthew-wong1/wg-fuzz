struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = array<Struct_1, 29>();
    var var_0 = _wgslsmith_mult_vec4_i32(countOneBits(-(vec4<i32>(u_input.a.x, u_input.a.x, arg_0.d, 10373i) << (~vec4<u32>(62650u, u_input.d, 1u, 1u) % vec4<u32>(32u)))), vec4<i32>(abs(abs(arg_0.d & -1i)), -7382i, 43853i, u_input.c));
    var var_1 = select(!(!vec4<bool>(true, all(vec2<bool>(false, false)), any(vec4<bool>(false, true, true, false)), true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, select(false, true, true), true, true), true && any(vec2<bool>(true, false))), true), all(!vec2<bool>(false, arg_0.b.c.d <= 0u)));
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_sub_u32(0u, _wgslsmith_add_u32(_wgslsmith_add_u32(arg_0.a.x, u_input.d), ~u_input.d)), 43062u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.c.b.b, arg_0.c.c.b)) + _wgslsmith_div_vec3_f32(arg_0.b.b.b, vec3<f32>(-1979f, arg_0.c.b.c, arg_0.b.c.c)))), arg_0.b.c.b, !vec3<bool>(!var_1.x, any(vec3<bool>(true, var_1.x, true)), !var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.x + arg_0.b.c.b.x))), _wgslsmith_mod_u32(4294967295u, arg_0.a.x));
    let var_3 = arg_0;
    return 94458u;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> Struct_2 {
    return Struct_2(max(firstTrailingBit(select(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 44184u), vec3<u32>(20086u, u_input.d, 4294967295u)), vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<bool>(true, arg_0.x, true))), vec3<u32>(_wgslsmith_mult_u32(u_input.d, 0u), 18699u, select(countOneBits(u_input.d), u_input.d, !arg_0.x))), global0[_wgslsmith_index_u32(~(~0u) ^ _wgslsmith_mod_u32(func_3(Struct_3(vec2<u32>(6759u, u_input.d), Struct_2(vec3<u32>(u_input.d, 49055u, 0u), global0[_wgslsmith_index_u32(u_input.d, 29u)], global0[_wgslsmith_index_u32(u_input.d, 29u)]), Struct_2(vec3<u32>(56546u, u_input.d, u_input.d), global0[_wgslsmith_index_u32(u_input.d, 29u)], Struct_1(vec2<u32>(48485u, 0u), vec3<f32>(arg_1, -707f, arg_1), arg_1, 1u)), -7194i, vec2<f32>(arg_1, arg_1))), min(41593u, ~0u)), 29u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(~(~u_input.d), 9294u), min(u_input.d, 403u)), 29u)]);
}

fn func_4(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(-668f));
    let var_1 = vec2<bool>(select(any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), any(vec4<bool>(false, true, true, true)))), true, all(vec2<bool>(true, true))), select(any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(true, false, true))), select(true, false, true), true));
    var var_2 = Struct_3(vec2<u32>(~arg_0.c.a.x, arg_0.b.d), func_2(!select(select(vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, false, true)), !vec4<bool>(false, var_1.x, var_1.x, var_1.x), select(vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(true, var_1.x, true, true), true)), _wgslsmith_f_op_f32(-arg_0.c.c)), arg_0, 8431i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -282f), _wgslsmith_f_op_f32(step(868f, _wgslsmith_f_op_f32(-arg_0.b.c)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.b.b.yz, arg_0.b.b.xx, false)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.c.c, arg_0.c.b.x)))))));
    var_2 = Struct_3(vec2<u32>(arg_0.c.d, var_2.b.c.a.x), func_2(vec4<bool>(all(select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(true, var_1.x, false, false), vec4<bool>(var_1.x, false, true, false))), all(vec2<bool>(false, false)), var_1.x, false), -1919f), arg_0, _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_clamp_i32(-45052i, u_input.a.x & u_input.b.x, -2147483647i), ~0i) | 0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(var_2.c.b.c, -2714f)), _wgslsmith_f_op_f32(arg_0.b.c * arg_0.c.c)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(702f, var_2.e.x)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1204f, arg_0.b.c)))))));
    let var_3 = ~vec3<i32>(~((-1i & u_input.c) | var_2.d), u_input.a.x, u_input.b.x);
    return _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 0u, var_2.b.b.d, 5969u), vec4<u32>(49675u, 15362u, 4294967295u, 1u)))), ~vec4<u32>(abs(arg_0.a.x), _wgslsmith_mod_u32(18057u, 86454u), _wgslsmith_dot_vec4_u32(vec4<u32>(20910u, 1u, u_input.d, 4271u), vec4<u32>(4294967295u, arg_0.a.x, 8802u, 2208u)), ~arg_0.b.d), firstTrailingBit(countOneBits(vec4<u32>(arg_0.a.x, arg_0.a.x, 1u, var_2.c.b.a.x) ^ vec4<u32>(arg_0.b.d, u_input.d, u_input.d, u_input.d)))), countOneBits(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 4294967295u, 4294967295u, 0u), select(vec4<u32>(0u, 4294967295u, var_2.b.b.d, 1u), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), all(vec4<bool>(true, var_1.x, var_1.x, var_1.x))))));
}

fn func_1(arg_0: bool, arg_1: bool) -> u32 {
    global0 = array<Struct_1, 29>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1824f)) * _wgslsmith_f_op_f32(-213f + 664f))))), 277f);
    let var_1 = ~(~vec4<u32>(10487u | _wgslsmith_div_u32(0u, u_input.d), func_4(func_2(vec4<bool>(true, arg_0, false, arg_0), -1788f)), ~(~4294967295u), u_input.d));
    let var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(~min(abs(var_1.x), 9979u), _wgslsmith_div_u32(6280u, u_input.d)), ~abs(_wgslsmith_div_vec2_u32(var_1.zz, func_2(vec4<bool>(false, true, false, false), -648f).c.a)));
    var var_3 = 1i;
    return max(firstLeadingBit(min(firstLeadingBit(var_2.x), var_2.x)), 4294967295u) | 0u;
}

fn func_5(arg_0: vec2<bool>, arg_1: u32) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.d ^ min(~(arg_1 << (~arg_1 % 32u)), ~max(4294967295u, _wgslsmith_clamp_u32(44549u, 5204u, u_input.d))), 29u)];
    global0 = array<Struct_1, 29>();
    let var_1 = u_input.c;
    var var_2 = Struct_3(vec2<u32>(min(~firstLeadingBit(4294967295u), func_3(Struct_3(vec2<u32>(var_0.d, 41275u), Struct_2(vec3<u32>(u_input.d, arg_1, 4294967295u), Struct_1(vec2<u32>(u_input.d, arg_1), var_0.b, var_0.c, 10823u), Struct_1(var_0.a, vec3<f32>(var_0.b.x, var_0.b.x, 1908f), var_0.c, 70735u)), Struct_2(vec3<u32>(3375u, 4294967295u, var_0.a.x), global0[_wgslsmith_index_u32(0u, 29u)], Struct_1(var_0.a, vec3<f32>(-1000f, var_0.b.x, var_0.c), var_0.b.x, arg_1)), u_input.b.x, var_0.b.yy))), select(17823u, ~func_2(vec4<bool>(false, arg_0.x, true, arg_0.x), 217f).c.d, false)), Struct_2(firstLeadingBit(vec3<u32>(0u, 0u, 1u) & vec3<u32>(var_0.d, var_0.d, arg_1)), global0[_wgslsmith_index_u32(abs(~var_0.d), 29u)], Struct_1(_wgslsmith_div_vec2_u32(select(vec2<u32>(var_0.a.x, var_0.a.x), var_0.a, arg_0.x), _wgslsmith_add_vec2_u32(vec2<u32>(35089u, 114291u), vec2<u32>(u_input.d, 11799u))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, var_0.b.x, var_0.c), var_0.b), _wgslsmith_f_op_f32(1632f + _wgslsmith_f_op_f32(f32(-1f) * -379f)), countOneBits(func_1(true, arg_0.x)))), Struct_2(abs(firstLeadingBit(~vec3<u32>(arg_1, var_0.a.x, 10717u))), func_2(vec4<bool>(false, all(arg_0), true, any(vec3<bool>(false, arg_0.x, arg_0.x))), func_2(select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, true, arg_0.x, false)), var_0.c).c.c).c, Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.b, vec3<f32>(var_0.c, var_0.c, var_0.b.x), vec3<bool>(true, false, arg_0.x)))), _wgslsmith_f_op_f32(trunc(var_0.c)), arg_1)), 2147483647i, var_0.b.yz);
    global0 = array<Struct_1, 29>();
    return ~(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(58601u, 86592u, 0u, 0u), vec4<u32>(var_0.a.x, arg_1, u_input.d, 1u)), vec4<u32>(1u, 76532u, 36821u, arg_1)), var_2.a.x, ~(~var_2.a.x)) & 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(~u_input.d, func_5(vec2<bool>(any(vec2<bool>(false, true)), true), func_1(true, true)));
    let var_1 = u_input.a.zx;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(661f, -500f, -1725f, -173f), vec4<f32>(841f, -1582f, 497f, 1000f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(2010f, 606f, 632f, 1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1347f, -1000f, -908f, 748f))))));
    var var_3 = u_input.b.x;
    var var_4 = ~(~(_wgslsmith_mult_vec2_u32(~vec2<u32>(36067u, u_input.d), select(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(u_input.d, 106829u), vec2<bool>(true, true))) ^ _wgslsmith_clamp_vec2_u32(min(vec2<u32>(4294967295u, 34312u), vec2<u32>(u_input.d, 4294967295u)), firstLeadingBit(vec2<u32>(u_input.d, 5079u)), ~vec2<u32>(u_input.d, 4294967295u))));
    var var_5 = global0[_wgslsmith_index_u32(var_0.x, 29u)];
    var var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_5.c, _wgslsmith_f_op_f32(769f + var_5.b.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-146f, var_2.x) * var_5.b.zx), _wgslsmith_f_op_vec2_f32(var_5.b.zy * var_5.b.xy), select(vec2<bool>(false, true), vec2<bool>(false, true), true))), select(true, true, any(vec3<bool>(true, false, true))))))));
    let var_7 = func_2(!select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true), true), vec4<bool>(true, true, all(vec4<bool>(true, false, false, true)), false), false), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~(-(~(-1i))), ~countOneBits(max(u_input.c, var_1.x))), vec3<f32>(var_7.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_5.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.b.x * var_6.x)) * -1224f)), vec3<f32>(var_7.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -812f)), _wgslsmith_f_op_f32(func_2(vec4<bool>(true, false, false, true), var_7.b.b.x).c.b.x + _wgslsmith_f_op_f32(trunc(-1752f)))));
}

