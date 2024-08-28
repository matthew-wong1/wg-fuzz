struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_1(-1070f, false, vec4<bool>(true, false, true, true), 607f, 1075f), 4294967295u, Struct_1(676f, true, vec4<bool>(false, true, false, true), 2442f, 559f)), Struct_3(Struct_1(-1629f, false, vec4<bool>(false, false, true, false), 2371f, 915f), 12138u, Struct_1(-284f, false, vec4<bool>(false, false, true, true), -1000f, -1068f)), Struct_3(Struct_1(-1857f, false, vec4<bool>(true, false, true, false), 303f, -659f), 45579u, Struct_1(-1380f, true, vec4<bool>(true, true, false, false), -434f, -1629f)), Struct_3(Struct_1(-1245f, true, vec4<bool>(true, false, false, true), -1232f, -148f), 4294967295u, Struct_1(-941f, true, vec4<bool>(true, true, true, true), -132f, 1643f)), Struct_3(Struct_1(-1257f, true, vec4<bool>(true, false, true, true), -640f, 698f), 30170u, Struct_1(1000f, true, vec4<bool>(true, false, false, false), -2019f, -1000f)), Struct_3(Struct_1(-1000f, true, vec4<bool>(false, true, true, false), -1000f, 328f), 1u, Struct_1(249f, true, vec4<bool>(true, false, false, false), -1095f, 983f)), Struct_3(Struct_1(678f, false, vec4<bool>(false, true, false, true), -1229f, 559f), 4294967295u, Struct_1(1022f, true, vec4<bool>(false, false, true, true), -1000f, 1000f)), Struct_3(Struct_1(527f, false, vec4<bool>(false, true, false, false), 1322f, -1000f), 0u, Struct_1(991f, false, vec4<bool>(false, false, true, false), 141f, -1209f)), Struct_3(Struct_1(-1148f, true, vec4<bool>(false, false, false, false), 338f, 2694f), 50722u, Struct_1(590f, true, vec4<bool>(true, true, false, true), 446f, 1474f)), Struct_3(Struct_1(-219f, false, vec4<bool>(false, false, false, false), -1000f, 661f), 8222u, Struct_1(119f, false, vec4<bool>(false, false, true, true), -950f, 1269f)), Struct_3(Struct_1(-2023f, true, vec4<bool>(true, true, false, true), 496f, -635f), 111937u, Struct_1(711f, true, vec4<bool>(true, true, true, true), 1288f, -2216f)), Struct_3(Struct_1(2547f, false, vec4<bool>(true, false, true, false), -522f, 130f), 63729u, Struct_1(957f, false, vec4<bool>(false, true, true, false), -1166f, 1000f)), Struct_3(Struct_1(212f, true, vec4<bool>(false, false, true, true), -209f, -752f), 42743u, Struct_1(867f, false, vec4<bool>(false, false, false, true), -1295f, 183f)), Struct_3(Struct_1(1249f, false, vec4<bool>(false, false, true, true), 940f, 277f), 87372u, Struct_1(495f, true, vec4<bool>(true, false, true, true), 395f, -225f)), Struct_3(Struct_1(-446f, true, vec4<bool>(false, false, true, true), 1064f, -808f), 1u, Struct_1(465f, false, vec4<bool>(true, false, true, false), 324f, 827f)), Struct_3(Struct_1(-2848f, true, vec4<bool>(false, true, false, true), 1229f, -1607f), 22826u, Struct_1(-816f, false, vec4<bool>(true, false, false, true), -2188f, -1000f)));

var<private> global2: Struct_3 = Struct_3(Struct_1(-1009f, false, vec4<bool>(false, true, false, true), 574f, -672f), 0u, Struct_1(-2252f, true, vec4<bool>(false, true, true, true), 356f, -1266f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> f32 {
    global2 = global1[_wgslsmith_index_u32(~1u, 16u)];
    let var_0 = global2.a.c.zxx;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1691f, 1010f, 1000f) * vec3<f32>(172f, 1738f, global2.a.d))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.e, 1345f, global2.a.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.e, global2.a.e, 1887f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-564f, global2.a.d, global2.a.a)))))));
    global0 = _wgslsmith_mult_vec3_i32(vec3<i32>(44190i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0.x, global0.x), vec3<i32>(-1i, 1i, global0.x)), _wgslsmith_mult_i32(global0.x, global0.x), _wgslsmith_mult_i32(-1i, -2147483647i)), ~global0.x >> (~u_input.a % 32u), _wgslsmith_mod_i32(~(-1i), ~global0.x)), global0.x), _wgslsmith_div_vec3_i32(-firstLeadingBit(vec3<i32>(global0.x, 16073i, 1i)), -vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-5630i, global0.x), global0.yy), 1i, _wgslsmith_mult_i32(global0.x, global0.x))));
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(round(1319f))));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    var var_0 = ~firstLeadingBit(select(~vec4<u32>(arg_0.x, arg_0.x, global2.b, arg_0.x), ~vec4<u32>(2639u, 4294967295u, arg_0.x, arg_0.x), select(!global2.c.c, !vec4<bool>(global2.a.b, true, global2.a.b, global2.c.b), global2.c.b)));
    var var_1 = ~(~select(firstLeadingBit(50830u ^ global2.b), 1u, 2043f >= global2.a.a));
    let var_2 = firstLeadingBit(var_0.x);
    global1 = array<Struct_3, 16>();
    var var_3 = firstLeadingBit(var_0.ww);
    return abs(_wgslsmith_add_u32(var_0.x, 33927u));
}

fn func_2() -> Struct_2 {
    let var_0 = ~global0.x;
    global1 = array<Struct_3, 16>();
    let var_1 = Struct_2(global2.a, all(!global2.c.c.zxx), select(_wgslsmith_f_op_f32(global2.a.a * _wgslsmith_f_op_f32(sign(-1080f))) < _wgslsmith_f_op_f32(1433f + -662f), func_3(vec4<u32>(5903u, 41435u, global2.b, 14146u)) >= global2.b, true), Struct_1(global2.a.d, true, !(!select(vec4<bool>(global2.c.b, true, global2.a.b, true), vec4<bool>(false, global2.a.b, true, global2.c.b), global2.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global2.a.e)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2.c.a, -319f)))), _wgslsmith_div_f32(global2.a.d, _wgslsmith_f_op_f32(-global2.c.e))), !(!global2.a.c.yx));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-2049f, var_1.a.e), var_1.d.a)), var_1.a.e >= _wgslsmith_f_op_f32(select(var_1.a.a, _wgslsmith_div_f32(var_1.d.e, var_1.a.d), global2.a.c.x)), select(select(vec4<bool>(false, true, var_1.b, global2.a.c.x), global2.a.c, !var_1.d.c), select(!var_1.a.c, select(vec4<bool>(false, global2.c.b, global2.c.b, true), global2.c.c, vec4<bool>(global2.c.b, true, var_1.d.c.x, global2.a.b)), global2.c.c), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.c.a)))), -1575f), 4294967295u != ~u_input.a, !any(global2.c.c), Struct_1(_wgslsmith_f_op_f32(abs(-1000f)), !global2.a.c.x, var_1.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.e) - 1106f) - -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.c.a, global2.c.e))), var_1.a.e))), vec2<bool>(global2.a.c.x, any(var_1.a.c) | false));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    global2 = global1[_wgslsmith_index_u32(1u, 16u)];
    let var_0 = global0.yz;
    var var_1 = func_2().a;
    let var_2 = func_2().a;
    let var_3 = any(!var_2.c.zyz);
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~0u;
    let var_1 = Struct_3(global2.a, func_4(global1[_wgslsmith_index_u32(5136u, 16u)], Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1456f), global2.c.b, global2.a.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.c.a), 724f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), func_2()), global2.a);
    var var_2 = ~(~(~vec3<u32>(93181u, var_0, global2.b) & ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, var_1.b), vec3<u32>(u_input.a, u_input.a, var_0))));
    global1 = array<Struct_3, 16>();
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.c.e, -1061f, global2.a.a, -601f), vec4<f32>(global2.c.d, global2.a.d, global2.a.d, 1305f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.c.e, global2.a.d, global2.a.d, var_1.c.d))), vec4<bool>(var_1.c.b, false, global2.a.c.x, true)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2315f, var_1.c.e, 140f, global2.a.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1659f, var_1.c.d, global2.c.a, -167f) + vec4<f32>(603f, 1525f, var_1.a.a, var_1.c.e)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.a, 361f, _wgslsmith_f_op_f32(exp2(global2.c.e)), _wgslsmith_f_op_f32(-var_1.c.e))), -687i > -(reverseBits(2147483647i) | _wgslsmith_sub_i32(global0.x, -2147483647i))));
    var_2 = select(~vec3<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0, 0u), vec3<u32>(global2.b, 78910u, 0u)), 0u, true || var_1.c.c.x), var_1.b >> (4294967295u % 32u), 0u), vec3<u32>(var_0, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a | global2.b, 48040u | var_2.x, 37938u, 1u), ~vec4<u32>(var_1.b, 4294967295u, 0u, var_2.x)), ~1u), global2.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-205f, _wgslsmith_f_op_f32(-func_2().a.d), var_3.x)), var_2.yz);
}

