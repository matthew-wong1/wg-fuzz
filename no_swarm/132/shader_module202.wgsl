struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
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

var<private> global0: array<vec4<bool>, 7>;

var<private> global1: array<Struct_5, 18> = array<Struct_5, 18>(Struct_5(Struct_1(true), Struct_4(vec3<f32>(-1211f, -1000f, 1981f))), Struct_5(Struct_1(false), Struct_4(vec3<f32>(187f, 1976f, -1683f))), Struct_5(Struct_1(false), Struct_4(vec3<f32>(675f, -941f, 996f))), Struct_5(Struct_1(true), Struct_4(vec3<f32>(-1141f, -1313f, 1248f))), Struct_5(Struct_1(false), Struct_4(vec3<f32>(124f, -2100f, -1127f))), Struct_5(Struct_1(false), Struct_4(vec3<f32>(1106f, -230f, -426f))), Struct_5(Struct_1(false), Struct_4(vec3<f32>(338f, -465f, -1000f))), Struct_5(Struct_1(true), Struct_4(vec3<f32>(-484f, 827f, -667f))), Struct_5(Struct_1(false), Struct_4(vec3<f32>(1147f, -686f, -1347f))), Struct_5(Struct_1(true), Struct_4(vec3<f32>(307f, -428f, 500f))), Struct_5(Struct_1(false), Struct_4(vec3<f32>(1073f, -466f, 1479f))), Struct_5(Struct_1(false), Struct_4(vec3<f32>(1576f, -201f, 997f))), Struct_5(Struct_1(false), Struct_4(vec3<f32>(266f, -591f, 1640f))), Struct_5(Struct_1(true), Struct_4(vec3<f32>(-306f, -2074f, 1407f))), Struct_5(Struct_1(true), Struct_4(vec3<f32>(-1175f, -1000f, -754f))), Struct_5(Struct_1(true), Struct_4(vec3<f32>(221f, 1608f, 136f))), Struct_5(Struct_1(true), Struct_4(vec3<f32>(-1000f, -245f, -806f))), Struct_5(Struct_1(false), Struct_4(vec3<f32>(1017f, 258f, 207f))));

var<private> global2: vec2<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u) & ~arg_0, 18u)];
    let var_1 = select(!vec2<bool>(false, var_0.a.a), !select(select(vec2<bool>(true, true), vec2<bool>(true, var_0.a.a), false), !vec2<bool>(true, var_0.a.a), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), !(!vec2<bool>(var_0.a.a, var_0.a.a)), vec2<bool>(false == var_0.a.a, true)), !(!select(vec2<bool>(var_0.a.a, false), vec2<bool>(true, var_0.a.a), vec2<bool>(false, false))), u_input.c.x >= arg_3.x));
    var_0 = global1[_wgslsmith_index_u32(33999u, 18u)];
    global2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(385f, 1710f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_1.a.zx * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1411f, -1361f), vec2<f32>(508f, 376f), var_1)), arg_1.a.yz))))));
    var var_2 = arg_2.x;
    return global2.x;
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> f32 {
    let var_0 = Struct_1(true);
    var var_1 = !(!vec4<bool>(!any(global0[_wgslsmith_index_u32(21594u, 7u)]), (global2.x > arg_1.a.x) || var_0.a, any(vec2<bool>(var_0.a, var_0.a)), !any(vec3<bool>(var_0.a, var_0.a, var_0.a))));
    let var_2 = reverseBits(u_input.c.x);
    var var_3 = -36659i << (arg_0 % 32u);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1270f, 767f, arg_1.a.x, global2.x)), vec4<f32>(-511f, -209f, global2.x, 1331f)) * vec4<f32>(_wgslsmith_f_op_f32(-231f - -1256f), _wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-global2.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(269f, arg_1.a.x, 822f, 1000f) * vec4<f32>(global2.x, arg_1.a.x, arg_1.a.x, 408f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-870f, arg_1.a.x, global2.x, 1000f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(-arg_1.a.x), arg_1.a.x, _wgslsmith_f_op_f32(exp2(arg_1.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -824f, 1000f, arg_1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -2491f, -138f, 219f))))));
    return 1006f;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(func_4(abs(arg_0.x), Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1171f, _wgslsmith_f_op_f32(func_3(4294967295u, Struct_4(vec3<f32>(-587f, global2.x, global2.x)), u_input.c, u_input.a.zzw)), global2.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global2.x, global2.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -1038f, global2.x) + vec3<f32>(1393f, -391f, global2.x)))))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2454f - -558f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(firstTrailingBit(vec4<u32>(12176u, 4294967295u, 50986u, 4294967295u)), Struct_1(false))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0 - global2.x), -719f)) + vec2<f32>(-636f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(vec4<u32>(1u, 33952u, 77742u, 1u), Struct_1(true))))))));
    let var_0 = u_input.a.x;
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, arg_0, -1994f))));
    let var_2 = Struct_1(false);
    let var_3 = select(_wgslsmith_div_u32(_wgslsmith_mod_u32(88553u, min(min(8386u, 4294967295u), 4294967295u)), _wgslsmith_clamp_u32(~1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(29244u, 0u), vec2<u32>(68644u, 1u)), ~(~4294967295u))), 13702u, all(!vec2<bool>(var_2.a, !var_2.a)));
    return Struct_2(-392f, var_2, !var_2.a, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(global2.x), select(vec2<bool>(func_1(_wgslsmith_f_op_f32(abs(global2.x))).c, true), vec2<bool>(true, true), vec2<bool>(true, select(true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(604f, 626f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(2184f, global2.x) + vec2<f32>(724f, -1476f)), vec2<bool>(true, true))))), ~1u);
    let var_1 = !(!(!select(var_0.b, select(vec2<bool>(var_0.b.x, var_0.a.b.a), vec2<bool>(var_0.a.b.a, true), var_0.b.x), true)));
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, 1219f) + vec3<f32>(1113f, -770f, 1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, 399f, var_0.a.a))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.a, 1181f, _wgslsmith_f_op_f32(-1700f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.a.x * -1694f)))), _wgslsmith_f_op_f32(var_2.a.x * global2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c.x, global2.x, 905f, 769f))))))));
    var var_4 = var_0.a.b.a;
    var var_5 = Struct_3(func_1(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-480f - var_3.x)))), vec2<bool>(false, all(vec3<bool>(var_1.x, true, true & var_1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0.d, var_2, vec2<i32>(u_input.a.x, u_input.b.x), u_input.a.www)) - _wgslsmith_f_op_f32(select(var_2.a.x, -314f, var_0.b.x)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(var_2.a.x * 474f))), ~var_0.a.d & 65342u);
    let var_6 = _wgslsmith_f_op_f32(func_3(~select(1u, abs(_wgslsmith_div_u32(37010u, 43839u)), any(vec3<bool>(var_1.x, var_5.b.x, var_1.x))), Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1422f, global2.x, global2.x)))), max(~vec2<i32>(select(u_input.c.x, 2147483647i, true), 1i), vec2<i32>(reverseBits(0i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_5.a.d, var_0.d, var_0.a.d), vec3<u32>(var_0.d, var_0.d, var_0.d)) % 32u), u_input.b.x)), ~(select(_wgslsmith_mult_vec3_i32(vec3<i32>(-8837i, 14180i, u_input.b.x), u_input.a.xzy), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, -1i, -2147483647i), vec3<i32>(u_input.b.x, u_input.c.x, u_input.a.x)), true) & vec3<i32>(u_input.c.x, -17654i, _wgslsmith_dot_vec2_i32(vec2<i32>(19947i, u_input.b.x), u_input.b)))));
    var var_7 = any(select(select(!var_0.b, vec2<bool>(true, true), var_5.b.x), select(vec2<bool>(var_1.x || true, var_1.x), select(select(vec2<bool>(var_5.a.c, var_1.x), var_0.b, var_1), var_1, u_input.a.x < u_input.b.x), func_1(-760f).c), vec2<bool>((var_5.d >> (var_0.d % 32u)) != 50696u, any(select(vec4<bool>(true, false, true, false), global0[_wgslsmith_index_u32(var_5.d, 7u)], global0[_wgslsmith_index_u32(var_5.d, 7u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b.x);
}

