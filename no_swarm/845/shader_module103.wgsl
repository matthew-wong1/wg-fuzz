struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: f32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec3<i32>,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 6>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    global1 = array<Struct_3, 6>();
    return abs(~_wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(4294967295u, 0u)), vec2<u32>(~7128u, ~2333u)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(func_3(), abs(~(~(~8809u))));
    var var_1 = Struct_3(~min(vec4<u32>(1u, 1u, 1u, 1u), abs(abs(vec4<u32>(4294967295u, 29305u, 4294967295u, 27680u)))), any(!arg_0.a.xz), 1u, Struct_2(Struct_1(!arg_0.a, abs(-arg_0.b), _wgslsmith_f_op_f32(-1007f - _wgslsmith_f_op_f32(-arg_0.e.x)), !any(vec2<bool>(arg_0.d, false)), arg_0.e), vec3<f32>(-906f, arg_0.c, 2092f), vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(455f * arg_0.c), -129f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-173f)), _wgslsmith_f_op_f32(f32(-1f) * -1837f)), -1000f, _wgslsmith_f_op_f32(-arg_0.e.x), 792f))));
    let var_2 = abs(_wgslsmith_mod_u32(countOneBits(~(4294967295u << (var_1.a.x % 32u))), 4294967295u));
    var var_3 = Struct_3(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, 0u), vec2<u32>(34605u, var_2)) & ~var_1.a.x, var_2, ~(13330u >> (1u % 32u)), ~var_1.c), false, ~var_2, var_1.d, _wgslsmith_f_op_vec4_f32(max(var_1.e, var_1.e)));
    let var_4 = all(!select(select(vec4<bool>(var_1.d.a.d, arg_0.a.x, true, arg_0.d), arg_0.a, arg_0.a.x), select(var_1.d.a.a, vec4<bool>(var_1.b, true, var_3.b, false), vec4<bool>(true, false, var_1.b, var_1.d.a.d)), true)) != any(select(vec4<bool>(false != var_3.d.a.d, true, arg_0.a.x, true), !vec4<bool>(var_3.d.a.d, var_1.b, true, var_3.d.a.a.x), vec4<bool>(false, false, var_1.b, true)));
    return var_1.d.a;
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_4(Struct_2(func_2(Struct_1(select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(true, true, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), vec4<i32>(-28582i, 4576i, u_input.a, u_input.a) | vec4<i32>(0i, 1i, u_input.a, u_input.a), _wgslsmith_f_op_f32(621f * -1007f), -181i > u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1414f, 1339f, 451f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1017f, 195f))), _wgslsmith_f_op_f32(f32(-1f) * -432f), _wgslsmith_f_op_f32(sign(-556f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(192f, 506f, 1000f)))))), arg_0.x, vec3<i32>(firstLeadingBit(u_input.a), min(~(-u_input.a), 0i), u_input.a), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1017f, 1000f))), func_2(func_2(Struct_1(vec4<bool>(false, arg_0.x, true, arg_0.x), vec4<i32>(u_input.a, u_input.a, 0i, -28525i), 955f, false, vec3<f32>(1000f, -160f, 1379f)))).c))), ~(~_wgslsmith_mod_u32(1u, 4294967295u)));
    global0 = false;
    global1 = array<Struct_3, 6>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(494f, _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * var_0.a.a.e.x)))), var_0.d.x);
    var var_2 = -u_input.a;
    return Struct_2(var_0.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d.yyx), vec3<f32>(var_0.a.c.x, -382f, 1353f))))), _wgslsmith_f_op_vec3_f32(-var_0.a.c));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_mult_vec4_u32(abs(vec4<u32>(max(arg_1.a.x, arg_0.c), firstLeadingBit(6862u), arg_1.c | 4294967295u, arg_0.a.x)) & ~arg_1.a, _wgslsmith_sub_vec4_u32(~(vec4<u32>(arg_1.c, 1u, 0u, arg_1.c) | select(arg_0.a, vec4<u32>(arg_1.c, arg_0.a.x, 0u, arg_0.a.x), vec4<bool>(arg_2, false, arg_0.b, arg_2))), vec4<u32>(_wgslsmith_sub_u32(67159u, ~arg_0.c), _wgslsmith_add_u32(max(arg_1.c, 1u), _wgslsmith_add_u32(arg_1.a.x, 68850u)), 2823u, _wgslsmith_mod_u32(arg_0.a.x, arg_1.a.x))));
    var var_1 = arg_1.d;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-2047f))))))));
    let var_3 = Struct_1(vec4<bool>(true, true, false, any(vec4<bool>(true, arg_0.d.a.a.x, false, arg_0.c >= 0u))), vec4<i32>(-_wgslsmith_mult_i32(-1i, ~arg_0.d.a.b.x), arg_3.a.b.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_1.d.a.b.xz, arg_3.a.b.zy), ~(-56698i)), ~(~(-2147483647i))), -2147483647i), 1275f, arg_3.a.d, vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), func_2(arg_1.d.a).e.x, _wgslsmith_f_op_f32(145f * arg_1.e.x)));
    let var_4 = arg_3.a.c;
    return select(vec2<bool>(all(vec2<bool>(select(arg_1.d.a.a.x, arg_2, arg_1.d.a.a.x), all(var_1.a.a))), arg_3.a.a.x), !select(arg_1.d.a.a.wz, arg_0.d.a.a.yx, !all(arg_0.d.a.a.ww)), select(false, func_2(func_1(select(arg_0.d.a.a.yw, var_3.a.xz, arg_0.d.a.a.zz)).a).d, !(true | all(arg_3.a.a))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_4) -> bool {
    let var_0 = Struct_1(arg_3.a.a.a, countOneBits(arg_3.a.a.b), _wgslsmith_f_op_f32(-func_1(func_4(global1[_wgslsmith_index_u32(arg_3.e >> (18813u % 32u), 6u)], Struct_3(vec4<u32>(53572u, 0u, arg_0.x, 0u), false, arg_3.e, Struct_2(Struct_1(vec4<bool>(false, true, true, true), arg_3.a.a.b, arg_3.a.b.x, arg_3.b, arg_3.a.a.e), vec3<f32>(arg_3.d.x, -847f, -461f), arg_3.a.a.e), vec4<f32>(424f, arg_3.d.x, arg_3.d.x, arg_3.d.x)), func_2(arg_3.a.a).d, func_1(arg_1))).c.x), !arg_1.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d.x) - _wgslsmith_f_op_f32(-719f * _wgslsmith_f_op_f32(max(-273f, 1932f)))), arg_3.d.x, arg_3.d.x));
    global1 = array<Struct_3, 6>();
    global1 = array<Struct_3, 6>();
    let var_1 = !var_0.a;
    let var_2 = -314f;
    return (!arg_3.b | !var_1.x) && !all(!vec3<bool>(false, var_0.a.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-605f - -1453f) + _wgslsmith_f_op_f32(max(638f, -690f))))) + -432f);
    let var_1 = vec2<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true);
    global0 = all(!vec4<bool>(true, false, select(true, any(var_1), !var_1.x), true));
    global0 = func_5(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), 51388u), select(func_4(Struct_3(vec4<u32>(1u, 1u, 1u, 1u), true, ~1u, func_1(var_1), vec4<f32>(603f, -1474f, -886f, -3032f)), Struct_3(firstTrailingBit(vec4<u32>(20578u, 1u, 37977u, 21594u)), all(vec4<bool>(false, var_1.x, false, false)), ~4019u, func_1(var_1), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-214f, -738f, -217f, -2052f), vec4<f32>(1003f, 1190f, 164f, -219f)))), min(32806i, u_input.a) == _wgslsmith_div_i32(u_input.a, u_input.a), Struct_2(Struct_1(vec4<bool>(false, true, false, var_1.x), vec4<i32>(-77759i, u_input.a, -9291i, u_input.a), 657f, var_1.x, vec3<f32>(-458f, 1082f, 1753f)), vec3<f32>(1f, 1f, 1f), func_2(Struct_1(vec4<bool>(true, false, var_1.x, false), vec4<i32>(u_input.a, 0i, 0i, -1i), -960f, false, vec3<f32>(-1088f, -1064f, -1589f))).e)), func_2(Struct_1(func_2(Struct_1(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), -301f, var_1.x, vec3<f32>(-421f, 540f, -184f))).a, ~vec4<i32>(u_input.a, -1i, 43109i, 2147483647i), func_2(Struct_1(vec4<bool>(var_1.x, false, false, true), vec4<i32>(u_input.a, -2147483647i, u_input.a, -1i), 100f, var_1.x, vec3<f32>(-469f, -345f, -1000f))).e.x, any(var_1), func_2(Struct_1(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<i32>(1i, 2147483647i, -1i, 1i), 410f, false, vec3<f32>(-828f, 921f, 1000f))).e)).a.yw, !vec2<bool>(any(vec4<bool>(true, true, var_1.x, var_1.x)), var_1.x)), abs(-8559i), Struct_4(func_1(vec2<bool>(true, true)), !all(select(vec3<bool>(true, true, true), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, false, var_1.x))), vec3<i32>(11724i, ~_wgslsmith_sub_i32(-47661i, u_input.a), _wgslsmith_add_i32(0i, u_input.a)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 690f), -1006f), _wgslsmith_f_op_f32(ceil(-1431f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1168f)), _wgslsmith_f_op_f32(1000f + 183f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -780f))), abs(4294967295u)));
    global0 = !func_1(var_1).a.d;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -869f), -951f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(303f, 1296f, 1000f, 371f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-547f, 995f, -2162f, 747f), vec4<f32>(-364f, 315f, 804f, 626f), var_1.x)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1400f, 1047f) - -132f), -864f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(538f)) + _wgslsmith_f_op_f32(f32(-1f) * -1371f)))));
}

