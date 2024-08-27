struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    global0 = true;
    let var_0 = Struct_1(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, false, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(378f, -1776f) - vec2<f32>(905f, 1305f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1087f, -1783f))))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(414f + -792f), -574f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(150f - 175f)))), _wgslsmith_f_op_f32(f32(-1f) * -221f), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-811f, var_0.b.x)), _wgslsmith_f_op_vec2_f32(-var_0.b))) + var_0.b) + var_0.b);
    var var_2 = var_0;
    var_2 = Struct_1(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1524f), var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -957f)));
    return _wgslsmith_f_op_f32(1000f * var_1.x);
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = arg_0;
    let var_2 = u_input.b;
    var_0 = arg_0;
    return _wgslsmith_f_op_f32(func_3(~(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(19526u, 75662u), vec2<u32>(69931u, 60414u), vec2<u32>(0u, 20396u))))));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<u32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-491f, -565f, arg_0)) * _wgslsmith_f_op_f32(-1448f + -600f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1741f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(arg_0, true, arg_0, arg_1.x), vec2<f32>(-2539f, -1821f), -1725f)))))))));
    var var_1 = vec2<i32>(u_input.a, ~(abs(min(31727i, -13004i)) >> (1u % 32u)));
    global0 = false;
    global0 = _wgslsmith_f_op_f32(-var_0) == -1127f;
    var_1 = -u_input.c.yz;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -826f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, -1142f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0)), vec2<f32>(230f, var_0))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(938f, 150f) + vec2<f32>(var_0, -269f))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_vec2_f32(func_1(all(arg_0), select(vec2<bool>(false, true), vec2<bool>(!arg_0.x, all(arg_2.a.zw)), arg_0.x), ~vec2<u32>(~21403u, ~46610u))).x);
    var var_1 = arg_1;
    var var_2 = abs(abs(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 7516u), vec2<u32>(10922u, 0u)) & ~select(vec2<u32>(101606u, 60228u), vec2<u32>(49243u, 1u), true)));
    var var_3 = _wgslsmith_sub_i32(countOneBits(0i) >> (var_2.x % 32u), -19068i);
    var_3 = arg_3;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec2<bool>(false, true), Struct_1(vec4<bool>(true, true, select(true, true, select(false, true, false)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(false, select(vec2<bool>(true, true), vec2<bool>(true, true), false), max(vec2<u32>(4294967295u, 3338u), vec2<u32>(4294967295u, 0u))))), _wgslsmith_f_op_f32(ceil(1909f))), Struct_1(!vec4<bool>(false, any(vec2<bool>(true, true)), true, any(vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(958f, 240f) * vec2<f32>(1000f, -1632f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1464f, -1606f))))), -1028f), u_input.a);
    let var_1 = func_4(vec2<bool>(true, var_0.a.x), func_4(var_0.a.yx, func_4(var_0.a.zx, func_4(!vec2<bool>(var_0.a.x, false), func_4(vec2<bool>(true, true), Struct_1(vec4<bool>(false, false, var_0.a.x, true), vec2<f32>(-245f, 864f), -226f), Struct_1(var_0.a, vec2<f32>(var_0.c, 1727f), -544f), u_input.c.x), Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), var_0.b, 686f), 31118i), func_4(!vec2<bool>(var_0.a.x, true), func_4(var_0.a.zy, Struct_1(var_0.a, var_0.b, 195f), Struct_1(var_0.a, vec2<f32>(481f, 957f), var_0.b.x), -29441i), func_4(vec2<bool>(false, true), Struct_1(var_0.a, var_0.b, 1136f), Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), var_0.b, 753f), u_input.a), _wgslsmith_clamp_i32(u_input.c.x, 18474i, u_input.a)), ~reverseBits(u_input.c.x)), Struct_1(func_4(!vec2<bool>(var_0.a.x, var_0.a.x), func_4(var_0.a.zw, Struct_1(vec4<bool>(true, var_0.a.x, true, true), var_0.b, 1217f), Struct_1(vec4<bool>(true, true, false, true), var_0.b, -812f), 44411i), Struct_1(var_0.a, var_0.b, -119f), 1i).a, vec2<f32>(-897f, -797f), -393f), -25552i), Struct_1(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c - 955f) * 974f), var_0.b.x), 1047f), abs(u_input.c.x)).a;
    global0 = !any(!select(!vec2<bool>(var_0.a.x, var_0.a.x), !vec2<bool>(var_1.x, var_1.x), false & var_1.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(func_4(select(var_0.a.wz, var_1.zx, var_1.xy), func_4(vec2<bool>(true, true), Struct_1(var_0.a, var_0.b, var_0.c), Struct_1(var_1, vec2<f32>(2387f, var_0.b.x), var_0.b.x), u_input.c.x), func_4(var_0.a.xy, Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), var_0.b, var_0.b.x), Struct_1(var_0.a, var_0.b, var_0.b.x), u_input.b.x), _wgslsmith_sub_i32(-11728i, 1i)).b.x, func_4(vec2<bool>(var_1.x, false), func_4(var_0.a.yy, Struct_1(var_0.a, var_0.b, -1903f), Struct_1(vec4<bool>(false, false, var_0.a.x, var_0.a.x), vec2<f32>(var_0.b.x, var_0.c), var_0.c), u_input.a), func_4(var_0.a.zz, Struct_1(var_0.a, vec2<f32>(883f, var_0.c), var_0.c), Struct_1(var_0.a, var_0.b, 1697f), u_input.c.x), -2147483647i & u_input.b.x).b.x)), 331f)) + var_0.c);
    let var_3 = Struct_1(vec4<bool>((select(false, true, false) && var_1.x) || (false || var_0.a.x), var_0.a.x, !var_0.a.x, var_0.a.x), _wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(ceil(var_0.b))), var_2);
    var var_4 = var_3;
    var var_5 = vec2<bool>(true, true);
    var var_6 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, ~_wgslsmith_mod_u32(34234u, 34247u), abs(abs(4294967295u)), ~(~0u)), ~select(~vec4<u32>(82881u, 4294967295u, 151u, 1u), vec4<u32>(1u, 24670u, 49845u, 0u), var_0.a), vec4<u32>(2683u | firstTrailingBit(0u), 0u, ~0u, 29907u & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 6940u, 76179u, 4294967295u), vec4<u32>(115993u, 0u, 38362u, 16651u))));
    var_0 = Struct_1(vec4<bool>(var_5.x, true, false, var_0.a.x), var_4.b, _wgslsmith_f_op_f32(-373f - var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(1254f, _wgslsmith_f_op_f32(-var_0.b.x), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.c) - var_0.c)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_2, var_0.b.x), _wgslsmith_f_op_f32(func_3(var_6.wx)), _wgslsmith_f_op_f32(func_3(var_6.wy)), var_0.c) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.c, var_3.b.x, var_4.c, var_0.b.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-229f, 1000f, 104f, var_2), vec4<f32>(1207f, -1737f, var_3.b.x, 728f)))))), var_6.wy, -1i);
}

