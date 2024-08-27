struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.x * 1276f), 1f, arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1446f)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 160f)), arg_1.x, arg_1.x, _wgslsmith_f_op_f32(778f + _wgslsmith_f_op_f32(step(arg_1.x, -2004f))))), 1118f, any(select(vec4<bool>(true, any(vec2<bool>(false, true)), true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true)))));
    var var_1 = var_0.c;
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_1.x, arg_1.x, -414f) - var_0.a)))), -1350f, false);
    let var_2 = Struct_3(var_0.a, 289f, var_0.c);
    let var_3 = 1495u;
    return u_input.a;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1158f)) - 1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1065f + 811f))))))));
    let var_1 = Struct_2(arg_0.a);
    var_0 = _wgslsmith_f_op_f32(-214f * _wgslsmith_f_op_f32(ceil(1f)));
    var var_2 = (all(!select(vec4<bool>(var_1.a.b.x, arg_1.x, false, true), vec4<bool>(true, true, false, arg_2.x), vec4<bool>(false, arg_1.x, arg_1.x, var_1.a.b.x))) != all(select(var_1.a.b, !vec3<bool>(false, true, arg_1.x), true))) || (_wgslsmith_mult_i32(firstTrailingBit(-9448i << (1u % 32u)), -28128i) < u_input.a);
    var var_3 = true;
    return _wgslsmith_mod_u32((~reverseBits(arg_0.a.a.x) | u_input.b) | _wgslsmith_add_u32(20941u, 0u), abs(~_wgslsmith_mult_u32(abs(arg_0.a.a.x), u_input.c.x << (36866u % 32u))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = Struct_1(vec2<u32>(max(~_wgslsmith_div_u32(0u, 1u), u_input.c.x), arg_2.a.x), arg_2.b);
    let var_1 = false;
    var var_2 = vec3<i32>(countOneBits(-u_input.a >> (49853u % 32u)), ~(-1i ^ reverseBits(_wgslsmith_mod_i32(u_input.a, u_input.a))), abs(~_wgslsmith_clamp_i32(reverseBits(u_input.a), _wgslsmith_div_i32(u_input.a, u_input.a), u_input.a | 0i)));
    var var_3 = firstLeadingBit(reverseBits(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 3995i), ~var_2.zz, var_2.xz)));
    var_0 = arg_2;
    return arg_0;
}

fn func_1() -> f32 {
    var var_0 = func_4(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-880f, 1029f, -819f, -285f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(755f, 771f, 1770f, -388f) * vec4<f32>(892f, 1468f, 152f, 1620f)) + vec4<f32>(-527f, 728f, -142f, -198f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -1000f))) + -1332f), !(func_2(u_input.c.x, vec3<f32>(-1000f, -1000f, 1738f)) == -2147483647i)), vec3<u32>(_wgslsmith_add_u32(select(u_input.b, ~43389u, all(vec4<bool>(false, true, true, false))), 8339u << (1u % 32u)), _wgslsmith_mod_u32(~(~26406u), _wgslsmith_add_u32(func_3(Struct_2(Struct_1(u_input.c, vec3<bool>(true, false, true))), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), u_input.b)), 0u), Struct_1(u_input.c, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), false), all(vec2<bool>(false, true)))));
    var var_1 = !var_0.c;
    let var_2 = Struct_1(~vec2<u32>(43797u, func_3(Struct_2(Struct_1(u_input.c, vec3<bool>(false, true, var_0.c))), !vec3<bool>(false, var_0.c, var_0.c), select(vec3<bool>(false, var_0.c, true), vec3<bool>(var_0.c, true, false), false))), select(select(!(!vec3<bool>(var_0.c, true, false)), !(!vec3<bool>(var_0.c, var_0.c, false)), select(select(vec3<bool>(var_0.c, true, false), vec3<bool>(false, false, true), vec3<bool>(var_0.c, true, var_0.c)), select(vec3<bool>(var_0.c, false, false), vec3<bool>(false, var_0.c, false), vec3<bool>(true, true, false)), vec3<bool>(var_0.c, false, false))), select(!vec3<bool>(var_0.c, true, var_0.c), vec3<bool>(true, var_0.c, !var_0.c), true), select(!vec3<bool>(var_0.c, false, false), select(vec3<bool>(false, false, var_0.c), vec3<bool>(true, true, true), false), true)));
    var var_3 = 16550u | ~firstLeadingBit(min(1u << (u_input.c.x % 32u), u_input.c.x ^ 0u));
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -298f), -515f)), _wgslsmith_f_op_f32(select(var_0.b, var_0.b, true)))), var_0.a.x, !(!any(select(vec2<bool>(true, var_2.b.x), var_2.b.yy, var_0.c))));
    return _wgslsmith_div_f32(var_4.a.x, var_4.a.x);
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = (-2147483647i ^ _wgslsmith_sub_i32(firstTrailingBit(i32(-1i) * -31355i), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(25933i, -1i, u_input.a, -47428i)), -1i))) << (89346u % 32u);
    var var_1 = Struct_1(reverseBits(u_input.c), vec3<bool>(false, arg_1.a.b.x, !(_wgslsmith_sub_u32(u_input.b, arg_1.a.a.x) <= ~22862u)));
    var var_2 = func_4(Struct_3(vec4<f32>(1f, 1f, 1f, 1f), -1000f, true), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(select(var_1.a.x, 0u, arg_1.a.b.x), max(4294967295u, arg_0), reverseBits(arg_1.a.a.x)), vec3<u32>(u_input.b, 4294967295u, 10847u)), vec3<u32>(26831u, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 3101u, 53337u, 45533u), vec4<u32>(1u, 1u, 32869u, arg_0))), _wgslsmith_mult_u32(14137u | arg_0, _wgslsmith_clamp_u32(76888u, arg_0, 1u)))), Struct_1(reverseBits(min(var_1.a, arg_1.a.a) & vec2<u32>(u_input.c.x, 4294967295u)), !vec3<bool>(true, arg_3.x, true)));
    var var_3 = arg_1.a;
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, -2426f)), _wgslsmith_f_op_f32(floor(var_2.a.x)), -132f, var_2.a.x))), var_2.b, var_2.c || arg_2.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<i32>(u_input.a, 12645i, -u_input.a, 2147483647i);
    let var_1 = func_5(u_input.b, Struct_2(Struct_1(vec2<u32>(20424u, u_input.b) << (u_input.c % vec2<u32>(32u)), vec3<bool>(true, true, true))), vec2<bool>(any(vec4<bool>(true, true, true, true)), false), vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), any(vec3<bool>(false, false, true)))), true, !(_wgslsmith_f_op_f32(step(1575f, 485f)) < _wgslsmith_f_op_f32(func_1()))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_i32(-5112i, 1538i) << (_wgslsmith_add_u32(42865u, _wgslsmith_clamp_u32(var_1.a.a.x, 75435u, var_1.a.a.x)) % 32u), countOneBits(u_input.a ^ (var_0.x << (1u % 32u)))));
}

