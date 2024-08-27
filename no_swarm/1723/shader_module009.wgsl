struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: bool) -> u32 {
    var var_0 = -(~firstLeadingBit(arg_1.x));
    var_0 = arg_1.x | -33440i;
    var var_1 = -2147483647i;
    var var_2 = Struct_2(Struct_1(select(select(vec2<bool>(arg_2, true), select(vec2<bool>(arg_2, true), vec2<bool>(true, arg_2), vec2<bool>(arg_2, false)), true), select(vec2<bool>(arg_2, arg_2), !vec2<bool>(true, arg_2), vec2<bool>(true, false)), arg_2), arg_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(-714f, -1586f, arg_0.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -417f)))), -516f, 6854u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)), _wgslsmith_f_op_f32(max(277f, _wgslsmith_f_op_f32(arg_0.x - 1f))), true)), Struct_1(select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2 | true, all(vec4<bool>(arg_2, arg_2, false, arg_2))), select(!vec2<bool>(arg_2, arg_2), !vec2<bool>(false, arg_2), vec2<bool>(true, false))), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1138f, -754f, -446f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2004f, arg_0.x, arg_0.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 814f)))), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-786f)) - _wgslsmith_f_op_f32(-arg_0.x))), ~15552u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, arg_0.x, -1594f, 929f), vec4<f32>(887f, arg_0.x, -262f, 895f))))))), Struct_1(!vec2<bool>(any(vec2<bool>(true, false)), true), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, 471f), vec3<f32>(1130f, arg_0.x, arg_0.x))))), _wgslsmith_f_op_f32(-arg_0.x), 4294967295u));
    var_0 = u_input.a;
    return ~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.c.e, 37767u, 0u, 0u), vec4<u32>(39241u, var_2.c.e, 72448u, var_2.e.e) ^ vec4<u32>(var_2.c.e, 4294967295u, 40254u, var_2.a.e)), 65328u | _wgslsmith_div_u32(var_2.a.e, 4294967295u)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> f32 {
    var var_0 = Struct_4(vec4<i32>(u_input.a, u_input.a, -_wgslsmith_sub_i32(u_input.a, -27938i), -2147483647i << ((_wgslsmith_mod_u32(24041u, 16747u) & arg_1.x) % 32u)), abs(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), ~vec3<i32>(0i, 27209i, u_input.a), vec3<i32>(-1i, 14427i, u_input.a) << (vec3<u32>(30463u, 4294967295u, arg_1.x) % vec3<u32>(32u))), ~select(vec3<i32>(u_input.a, u_input.a, -59658i), vec3<i32>(-41335i, 2147483647i, -1345i), arg_0.c.a.x))), 1u);
    var_0 = Struct_4(select(-(~(~vec4<i32>(4801i, 1i, -1i, 1i))), reverseBits(_wgslsmith_add_vec4_i32(-vec4<i32>(-25653i, 10654i, 77211i, 50696i), var_0.a)), !arg_0.e.a.x), abs(var_0.b), _wgslsmith_add_u32(~(~abs(var_0.c)), arg_1.x));
    var_0 = Struct_4(var_0.a, abs(-(vec3<i32>(11608i, var_0.a.x, var_0.a.x) | vec3<i32>(var_0.a.x, 1i, var_0.b.x)) >> (min(min(vec3<u32>(1u, 55460u, arg_1.x), vec3<u32>(arg_1.x, arg_0.c.e, arg_1.x)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_1.x, var_0.c), vec3<u32>(arg_1.x, 39015u, var_0.c))) % vec3<u32>(32u))), _wgslsmith_mod_u32(~(~_wgslsmith_div_u32(6183u, 1890u)), 26519u));
    let var_1 = Struct_1(select(select(select(arg_0.e.a, arg_0.e.a, arg_0.a.a), select(arg_0.e.a, arg_0.a.a, true), true), arg_0.e.a, vec2<bool>((var_0.a.x & u_input.a) == _wgslsmith_div_i32(43491i, var_0.a.x), arg_0.a.a.x)), false, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(105f + 1116f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.c.d)))), 311f, 600f), _wgslsmith_f_op_f32(-1091f * arg_0.d.x), ~22591u);
    var_0 = Struct_4(select(-reverseBits(vec4<i32>(var_0.b.x, u_input.a, -14049i, 1728i)), var_0.a, vec4<bool>(true, var_1.a.x & arg_0.c.a.x, true, any(vec4<bool>(arg_0.a.b, var_1.b, arg_0.c.a.x, false)))) | ~vec4<i32>(max(1i, var_0.a.x), ~u_input.a, firstTrailingBit(-2147483647i), ~var_0.b.x), vec3<i32>(firstTrailingBit(u_input.a), -var_0.a.x, -40607i), ~_wgslsmith_clamp_u32(1u, ~firstLeadingBit(var_0.c), min(~var_0.c, ~arg_1.x)));
    return _wgslsmith_f_op_f32(arg_0.a.d - _wgslsmith_f_op_f32(-var_1.c.x));
}

fn func_2(arg_0: vec2<f32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec2<bool>(true, true), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(343f, arg_0.x, arg_0.x) + vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), arg_0.x, ~23179u), _wgslsmith_f_op_f32(exp2(arg_0.x)), Struct_1(vec2<bool>(true, false), true, vec3<f32>(arg_0.x, 1071f, arg_0.x), arg_0.x, func_3(vec2<f32>(arg_0.x, 202f), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), true)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1348f, -255f, 166f, arg_0.x), vec4<f32>(248f, arg_0.x, 213f, 388f))))), Struct_1(vec2<bool>(true, true), all(vec4<bool>(true, true, true, true)), vec3<f32>(arg_0.x, arg_0.x, 425f), -1727f, max(4294967295u, 22433u))), ~vec2<u32>(~25150u, ~1u))));
    let var_1 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), (~u_input.a >= -1i) || true), all(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1256f, arg_0.x, var_0)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(296f, -2573f, arg_0.x))))))), _wgslsmith_f_op_f32(arg_0.x * -1678f), ~min(max(_wgslsmith_clamp_u32(45562u, 792u, 21649u), abs(1u)), ~4294967295u));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1131f - arg_0.x))) + 778f));
    var var_3 = ~vec3<u32>(firstLeadingBit(abs(~var_1.e)), _wgslsmith_mult_u32(~(var_1.e ^ var_1.e), reverseBits(~var_1.e)), 84674u);
    let var_4 = Struct_4(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(2147483647i, -12253i, u_input.a, u_input.a), select(vec4<i32>(47147i, -14707i, 68426i, 0i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(false, false, true, false)) >> (firstLeadingBit(vec4<u32>(0u, var_3.x, 0u, 4294967295u)) % vec4<u32>(32u)), ~vec4<i32>(1i, u_input.a, 66673i, u_input.a) & -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec3<i32>(_wgslsmith_add_i32(u_input.a, ~u_input.a), ~(-20572i), _wgslsmith_mult_i32(2147483647i, u_input.a) | u_input.a) ^ (vec3<i32>(_wgslsmith_div_i32(0i, -7790i), _wgslsmith_add_i32(u_input.a, 41075i), ~(-2147483647i)) ^ min(vec3<i32>(u_input.a, -2147483647i, 0i), -vec3<i32>(20387i, u_input.a, u_input.a))), ~reverseBits(~_wgslsmith_mult_u32(1u, 4294967295u)));
    return Struct_4(vec4<i32>(~(-42793i), i32(-1i) * -max(-57454i, -28845i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_4.a.x, select(var_4.b.x, u_input.a, true)), vec2<i32>(~0i, u_input.a)), countOneBits(-1i) ^ var_4.b.x), ~var_4.b, var_4.c);
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1116f), -970f, _wgslsmith_f_op_f32(f32(-1f) * -429f))))));
    var var_1 = func_2(vec2<f32>(var_0.x, 220f));
    var var_2 = !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), !all(vec2<bool>(false, true))));
    var var_3 = vec4<bool>(false, !var_2.x, !var_2.x, var_2.x);
    let var_4 = Struct_1(vec2<bool>(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x - var_0.x))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -747f)))), ~4294967295u < (~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.c), vec2<u32>(var_1.c, var_1.c)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(48553u, var_1.c), ~vec2<u32>(var_1.c, 4294967295u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec2<bool>(true, var_3.x), var_2.x, vec3<f32>(var_0.x, 673f, 1021f), 294f, var_1.c), 1195f, Struct_1(var_3.xx, false, vec3<f32>(var_0.x, -1140f, -1018f), -787f, var_1.c), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_1(vec2<bool>(var_3.x, false), true, vec3<f32>(var_0.x, var_0.x, var_0.x), 1479f, 1u)), vec2<u32>(var_1.c, 1u) << (vec2<u32>(67205u, 17906u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(var_0.x + var_0.x), 19984u);
    return Struct_4(var_1.a | var_1.a, vec3<i32>(_wgslsmith_mult_i32(-countOneBits(-25699i), var_1.a.x), -10966i, -4134i), countOneBits(16420u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = select(!select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(false, true, true), true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), !select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, u_input.a > var_0.b.x), any(vec4<bool>(false, false, true, false))), vec3<bool>(true, true, all(vec4<bool>(-36080i < u_input.a, true, true, all(vec3<bool>(true, false, true))))));
    let var_2 = vec3<i32>(abs(u_input.a), select(firstLeadingBit(var_0.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(13155i, -1i), u_input.a, ~(-832i)), var_0.a.xxy), all(!(!vec2<bool>(false, var_1.x)))), -2147483647i);
    var_1 = !vec3<bool>(any(vec3<bool>(all(vec4<bool>(true, var_1.x, false, var_1.x)), var_1.x, false)), var_1.x, var_1.x);
    var_0 = Struct_4(abs(func_1().a), vec3<i32>(u_input.a >> (4294967295u % 32u), u_input.a, 0i), min(abs(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, var_0.c, 103611u, var_0.c)), abs(vec4<u32>(var_0.c, 1u, var_0.c, 37508u)))), ~var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(countOneBits(vec3<u32>(var_0.c, 55928u, 4294967295u))), var_0.a);
}

