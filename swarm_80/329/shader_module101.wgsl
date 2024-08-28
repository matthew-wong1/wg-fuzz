struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> vec4<i32> {
    var var_0 = arg_0;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1515f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1178f), _wgslsmith_f_op_f32(min(147f, -627f)))) + _wgslsmith_f_op_f32(trunc(1449f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1088f), 1282f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1836f + -279f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(step(-576f, _wgslsmith_f_op_f32(-363f + -2803f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(582f, -592f)))), -841f);
    let var_2 = arg_0;
    var_0 = arg_0;
    var var_3 = Struct_2(Struct_1(-var_0.c.x, var_0.b, countOneBits(max(var_2.c, arg_0.c) | ~var_0.c)), arg_0, Struct_1(~_wgslsmith_dot_vec4_i32(var_0.c, ~var_2.c), select(vec4<bool>(all(vec3<bool>(arg_0.b.x, true, false)), all(arg_0.b.yyz), all(vec3<bool>(false, var_0.b.x, false)), false), vec4<bool>(var_1.x >= 284f, arg_0.b.x | false, true | arg_0.b.x, any(var_0.b.zww)), all(vec4<bool>(var_0.b.x, true, var_2.b.x, var_2.b.x))), vec4<i32>(~(arg_0.c.x >> (u_input.c % 32u)), reverseBits(_wgslsmith_div_i32(arg_1.x, -53189i)), -(i32(-1i) * -684i), -2147483647i)), var_2.b.yx);
    return var_0.c;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(1u, u_input.c, 51263u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 32357u, 21244u) | vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, 1u)), reverseBits(49347u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1u, u_input.c) ^ vec4<u32>(29723u, u_input.c, 4087u, 4294967295u), ~vec4<u32>(16014u, 46148u, 46421u, 4294967295u))), ~vec4<u32>(abs(u_input.c), u_input.c & u_input.c, _wgslsmith_div_u32(u_input.c, u_input.c), firstTrailingBit(u_input.c))));
    var var_1 = Struct_1(arg_0.a >> (u_input.c % 32u), arg_0.b, _wgslsmith_sub_vec4_i32(-vec4<i32>(-50523i, arg_0.c.x, u_input.b.x, u_input.a.x), arg_0.c) | arg_0.c);
    var_1 = arg_0;
    var var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(var_1.c, _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a, 0i, -1775i, u_input.a.x), vec4<i32>(37087i, var_1.c.x, 2147483647i, 2147483647i))) & _wgslsmith_sub_i32(~2147483647i, abs(u_input.a.x)), !var_1.b, select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(arg_0.c.x, 25079i, 0i, u_input.a.x), vec4<i32>(-7210i, 250i, u_input.b.x, -2147483647i), arg_0.c), func_3(arg_0, reverseBits(vec2<i32>(14933i, u_input.a.x))), all(select(arg_0.b, arg_0.b, arg_0.b.x)))), Struct_1(u_input.b.x, select(var_1.b, arg_0.b, arg_0.b), vec4<i32>(u_input.a.x, -2147483647i, 16984i, 13127i)), arg_0, select(select(!(!var_1.b.xw), vec2<bool>(all(arg_0.b.xyw), arg_1), !var_1.b.x), var_1.b.zy, !vec2<bool>(!var_1.b.x, arg_1)));
    let var_3 = Struct_2(Struct_1(u_input.b.x, vec4<bool>(!all(vec3<bool>(true, arg_0.b.x, arg_0.b.x)), any(vec3<bool>(true, arg_1, var_1.b.x)), !any(var_1.b.wx), var_2.c.b.x), var_2.a.c), var_2.a, arg_0, !vec2<bool>(!all(var_1.b.yz), arg_0.b.x));
    return arg_0;
}

fn func_4(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_2(func_2(arg_0.a, ~func_3(arg_0.c, arg_0.a.c.wy).x > ~_wgslsmith_sub_i32(arg_0.a.c.x, arg_0.c.a)), func_2(Struct_1(u_input.b.x, !(!arg_0.c.b), _wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.a.x, -18943i, u_input.a.x, 4672i), vec4<i32>(2147483647i, u_input.a.x, u_input.b.x, u_input.b.x)), ~arg_0.b.c)), true), arg_0.b, vec2<bool>(any(arg_0.b.b.xy), all(!vec4<bool>(true, false, false, arg_0.b.b.x))));
    var_0 = arg_0;
    var var_1 = _wgslsmith_mod_i32(-21305i, ~abs(_wgslsmith_clamp_i32(1i, 1i, arg_0.c.c.x))) << (_wgslsmith_add_u32(~(1u & firstLeadingBit(u_input.c)), 12710u) % 32u);
    var_1 = -23031i;
    let var_2 = !arg_0.c.b;
    return 249f;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec4<i32>(_wgslsmith_add_i32(firstTrailingBit(0i), -39486i), select(~arg_1.c.x, u_input.a.x, false) & -3999i, -_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_1.c.xzx, arg_1.c.yzz, u_input.a), vec3<i32>(u_input.a.x, -57383i, 28215i) ^ select(u_input.b, arg_1.c.wzx, vec3<bool>(false, arg_1.b.x, true))), u_input.b.x);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1059f);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1006f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(-1887f, 1000f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1377f)) + _wgslsmith_f_op_f32(f32(-1f) * -205f))) * 1000f);
    var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(-284f, _wgslsmith_f_op_f32(func_4(Struct_2(func_2(Struct_1(arg_1.c.x, arg_1.b, vec4<i32>(arg_1.c.x, var_0.x, arg_1.c.x, var_0.x)), arg_1.b.x), arg_1, Struct_1(-12969i, vec4<bool>(arg_1.b.x, true, false, arg_1.b.x), var_0), vec2<bool>(false, arg_1.b.x))))), 453f);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1277f)), _wgslsmith_f_op_f32(floor(-786f)), arg_1.b.x && true)));
    return func_2(Struct_1(i32(-1i) * -_wgslsmith_mult_i32(38460i, 0i), select(!select(vec4<bool>(arg_1.b.x, true, arg_1.b.x, true), arg_1.b, true), vec4<bool>(func_2(Struct_1(-36781i, vec4<bool>(true, false, false, arg_1.b.x), var_0), arg_1.b.x).b.x, true, !arg_1.b.x, false), vec4<bool>(true, -2450i == var_0.x, !arg_1.b.x, true)), vec4<i32>(reverseBits(u_input.a.x), -2147483647i, max(arg_1.a, -26252i), -1i) | (select(var_0, vec4<i32>(22i, arg_1.a, -1i, 4054i), arg_1.b.x) >> (vec4<u32>(93728u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u)))), true);
}

fn func_5(arg_0: Struct_2) -> i32 {
    var var_0 = func_2(arg_0.c, true);
    var var_1 = func_1(~u_input.c, Struct_1(31061i, !(!select(vec4<bool>(true, false, arg_0.b.b.x, var_0.b.x), vec4<bool>(false, false, false, arg_0.a.b.x), arg_0.d.x)), var_0.c | _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, -1i, 0i, -2147483647i)), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 65715i)))).b.zwx;
    var_1 = !vec3<bool>(any(select(vec2<bool>(var_0.b.x, true), vec2<bool>(true, arg_0.b.b.x), arg_0.a.b.zx)), arg_0.c.b.x, _wgslsmith_mult_u32(u_input.c, ~u_input.c) <= 78047u);
    let var_2 = arg_0;
    var_1 = vec3<bool>(true, false, true);
    return _wgslsmith_mult_i32(select(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, u_input.b.x, 0i), var_0.c.yxw), func_2(arg_0.b, var_0.c.x >= -8090i).b.x), ~(-44423i)) >> (u_input.c % 32u);
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = arg_3.xy;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    var var_2 = ~(~abs(u_input.c));
    var var_3 = arg_2.b.c;
    var var_4 = ~_wgslsmith_div_i32(2147483647i, 1i);
    return Struct_2(func_2(Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-4952i, 0i), vec2<i32>(arg_1.a, 16102i)), min(u_input.b.xz, u_input.a.xx)), arg_2.b.b, select(select(arg_2.b.c, arg_1.c, arg_1.b), -vec4<i32>(var_3.x, -2147483647i, -2147483647i, 64101i), func_1(4294967295u, arg_1).b.x)), arg_2.b.b.x), func_2(Struct_1(var_3.x, vec4<bool>(arg_1.b.x, false, true, true), vec4<i32>(~2147483647i, _wgslsmith_sub_i32(arg_1.a, var_3.x), ~(-2147483647i), -2147483647i)), true), Struct_1(-3139i, !vec4<bool>(true, !arg_2.c.b.x, true, false), arg_1.c), !arg_1.b.xx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_6(_wgslsmith_f_op_f32(abs(361f)), Struct_1(func_5(Struct_2(Struct_1(u_input.a.x, vec4<bool>(true, true, var_0, false), vec4<i32>(0i, 20043i, u_input.a.x, u_input.a.x)), func_1(4294967295u, Struct_1(2147483647i, vec4<bool>(true, true, false, var_0), vec4<i32>(u_input.b.x, u_input.a.x, u_input.b.x, 1i))), func_1(u_input.c, Struct_1(u_input.b.x, vec4<bool>(false, false, true, var_0), vec4<i32>(11098i, u_input.b.x, u_input.a.x, 75315i))), select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0)))), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(var_0, true, false, false))), vec4<i32>(u_input.b.x, 1i, ~u_input.b.x, u_input.b.x)), Struct_2(func_2(Struct_1(u_input.a.x, !vec4<bool>(var_0, var_0, true, var_0), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, u_input.a.x, u_input.b.x), vec4<i32>(u_input.b.x, 77460i, -24082i, u_input.a.x))), var_0), func_1(u_input.c, func_2(func_1(u_input.c, Struct_1(u_input.a.x, vec4<bool>(true, var_0, true, true), vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.b.x))), true)), Struct_1(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, 24298i, u_input.a.x)), ~u_input.a), vec4<bool>(var_0, any(vec2<bool>(true, true)), var_0, true), ~firstLeadingBit(vec4<i32>(12455i, 0i, u_input.a.x, u_input.b.x))), !(!vec2<bool>(true, var_0))), vec3<f32>(1111f, _wgslsmith_f_op_f32(max(1000f, 972f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -987f), -928f))));
    let var_2 = vec3<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c, 60968u, ~1u, _wgslsmith_sub_u32(15205u, u_input.c)), countOneBits(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))), abs(u_input.c)) << (vec3<u32>(21611u, u_input.c, ~(_wgslsmith_sub_u32(u_input.c, 1543u) & 25923u)) % vec3<u32>(32u));
    var_1 = Struct_2(var_1.b, var_1.b, Struct_1(~var_1.a.c.x, !func_6(_wgslsmith_f_op_f32(f32(-1f) * -1501f), var_1.a, func_6(1041f, Struct_1(u_input.a.x, var_1.a.b, vec4<i32>(1i, u_input.b.x, -3090i, u_input.a.x)), Struct_2(Struct_1(23414i, var_1.b.b, vec4<i32>(u_input.b.x, 0i, -66852i, -29128i)), var_1.c, var_1.a, vec2<bool>(true, false)), vec3<f32>(240f, -882f, 226f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-139f, 237f, 1000f)))).a.b, var_1.b.c), !var_1.a.b.yz);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1229f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -217f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(278f, 1263f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(-34417i, var_1.a.b, vec4<i32>(0i, var_1.a.a, var_1.b.a, -61039i)), func_6(-693f, Struct_1(-1i, vec4<bool>(true, false, var_0, false), vec4<i32>(var_1.b.a, 0i, u_input.b.x, u_input.b.x)), Struct_2(var_1.b, var_1.c, var_1.a, var_1.b.b.xx), vec3<f32>(289f, -1000f, -658f)).c, var_1.b, !vec2<bool>(true, var_1.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -334f), _wgslsmith_f_op_f32(-214f * -738f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -163f)))));
    var_1 = Struct_2(var_1.a, var_1.c, func_2(Struct_1(abs(-2147483647i), vec4<bool>(!var_1.d.x, true, false, var_0), _wgslsmith_sub_vec4_i32(-var_1.c.c, var_1.b.c ^ vec4<i32>(u_input.a.x, -1i, u_input.b.x, u_input.b.x))), !var_1.b.b.x), var_1.a.b.zw);
    var_1 = func_6(var_3.x, func_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(46066i, u_input.b.x), _wgslsmith_mod_vec2_i32(u_input.b.zz, vec2<i32>(u_input.b.x, 0i))), vec4<bool>(77410u <= var_2.x, true, var_1.c.b.x & var_0, all(var_1.c.b.ywx)), ~vec4<i32>(var_1.c.a, var_1.c.a, var_1.b.c.x, 82099i)), any(var_1.a.b.zyw)), Struct_2(var_1.b, Struct_1(firstLeadingBit(var_1.c.c.x) & u_input.b.x, var_1.b.b, ~func_1(var_2.x, var_1.c).c), func_2(var_1.c, var_1.a.b.x), var_1.d), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * _wgslsmith_f_op_f32(var_3.x * -3723f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * -250f) * _wgslsmith_f_op_f32(f32(-1f) * -113f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1319f) * _wgslsmith_f_op_f32(max(2440f, -2258f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(-1248f, var_3.x)), _wgslsmith_f_op_f32(528f * 633f), _wgslsmith_f_op_f32(f32(-1f) * -1316f)), _wgslsmith_div_vec3_f32(var_3.yyx, vec3<f32>(var_3.x, -307f, var_3.x)), vec3<bool>(any(vec4<bool>(var_1.c.b.x, var_0, var_0, true)), true, var_0))), func_2(var_1.b, -1000f < _wgslsmith_f_op_f32(-var_3.x)).b.www)));
    let x = u_input.a;
    s_output = StorageBuffer(-561f, ~var_1.b.c.zy, var_1.a.c.x, ~vec3<i32>(-(~u_input.a.x), 40419i, u_input.b.x));
}

