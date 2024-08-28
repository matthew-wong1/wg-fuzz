struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31>;

var<private> global1: array<f32, 1> = array<f32, 1>(-1143f);

var<private> global2: array<i32, 7> = array<i32, 7>(2147483647i, 0i, -32764i, 2147483647i, i32(-2147483648), 0i, 23747i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = Struct_2(63858i, Struct_1(1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(60286u, 1u)], -316f, 223f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(5348u, 1u)], global1[_wgslsmith_index_u32(3446u, 1u)], -257f) + vec3<f32>(-429f, global1[_wgslsmith_index_u32(37315u, 1u)], 449f)), _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(44836u, 1u)], global1[_wgslsmith_index_u32(23123u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)]), vec3<f32>(global1[_wgslsmith_index_u32(47118u, 1u)], global1[_wgslsmith_index_u32(1u, 1u)], 1899f)), any(vec3<bool>(true, false, false))))), 676f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-2195f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(6422u, 1u)] - -987f), _wgslsmith_f_op_f32(round(-1137f)), _wgslsmith_f_op_f32(f32(-1f) * -1553f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1369f, global1[_wgslsmith_index_u32(3300u, 1u)], global1[_wgslsmith_index_u32(1u, 1u)], 977f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2558f, global1[_wgslsmith_index_u32(39822u, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(5147u, 1u)]), vec4<f32>(global1[_wgslsmith_index_u32(43783u, 1u)], global1[_wgslsmith_index_u32(26087u, 1u)], global1[_wgslsmith_index_u32(40211u, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)]), vec4<bool>(true, false, true, false))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(300f)), _wgslsmith_f_op_f32(ceil(1162f)), 1349f, -1793f)), global1[_wgslsmith_index_u32(45374u, 1u)]);
    var var_1 = Struct_4(false, var_0.b.a & var_0.b.a);
    let var_2 = Struct_3(vec2<i32>(max(firstLeadingBit(~71622i), var_0.a), _wgslsmith_dot_vec3_i32(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -9618i, -26062i), u_input.a.yzy)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -26426i, var_0.a) | vec3<i32>(40175i, u_input.a.x, var_0.a), vec3<i32>(u_input.d, 13703i, var_0.a), u_input.b.xwz))), Struct_2(u_input.d, Struct_1(var_0.b.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(4828u, 48040u, var_1.b, var_0.b.a), vec4<u32>(var_0.b.a, var_0.b.a, var_0.b.a, var_0.b.a)) % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1019f, var_0.c, 2285f)) - vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], -1817f, 343f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.b.x, -1494f)) + var_0.b.e.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_0.b.e - var_0.b.d))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_0.b.e, var_0.b.d)), _wgslsmith_f_op_vec4_f32(var_0.b.e * var_0.b.e))), _wgslsmith_div_f32(_wgslsmith_div_f32(-562f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(52056u, 1u)] - var_0.b.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.b, 1u)]))))), all(vec2<bool>(true, var_1.a)), !all(!(!vec4<bool>(var_1.a, true, false, var_1.a))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-431f + var_0.b.b.x) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-411f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -272f))), -1000f)));
    let var_4 = !select(global0[_wgslsmith_index_u32(abs(18196u), 31u)], vec4<bool>(!select(true, var_1.a, var_1.a), var_2.c, false, !all(vec4<bool>(false, var_2.d, var_2.c, var_1.a))), !(!global0[_wgslsmith_index_u32(0u & var_0.b.a, 31u)]));
    return var_2.b.c;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: Struct_4) -> vec3<f32> {
    var var_0 = u_input.a.yyz;
    let var_1 = arg_2.b;
    let var_2 = ~(~_wgslsmith_mod_u32(1u, arg_0.x));
    global1 = array<f32, 1>();
    let var_3 = 1i;
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 1u)]), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-1268f + global1[_wgslsmith_index_u32(var_2, 1u)])))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-190f, arg_1.a.x, global1[_wgslsmith_index_u32(var_1, 1u)]) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-875f, 769f, arg_1.a.x)))))));
}

fn func_1(arg_0: i32) -> vec3<bool> {
    global0 = array<vec4<bool>, 31>();
    global1 = array<f32, 1>();
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_2(vec3<u32>(4294967295u, 4294967295u, 1u), Struct_5(vec4<f32>(398f, global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)], 1050f)), Struct_4(true, 6112u))))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1959f), _wgslsmith_f_op_f32(1258f * global1[_wgslsmith_index_u32(1u, 1u)]), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(44349u, 1u)])))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(916f, 1441f, global1[_wgslsmith_index_u32(31785u, 1u)])) + vec3<f32>(-659f, global1[_wgslsmith_index_u32(44988u, 1u)], 101f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-741f, global1[_wgslsmith_index_u32(0u, 1u)], -1798f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(786f, 629f, global1[_wgslsmith_index_u32(1329u, 1u)]))))), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1584f, -885f, global1[_wgslsmith_index_u32(49439u, 1u)])) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(48438u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(23310u, 1u)]) - vec3<f32>(-485f, 995f, global1[_wgslsmith_index_u32(1u, 1u)]))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(8995u, 1u)], -767f, global1[_wgslsmith_index_u32(14216u, 1u)]), vec3<f32>(global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(1u, 1u)], -234f))))))));
    global2 = array<i32, 7>();
    global0 = array<vec4<bool>, 31>();
    return vec3<bool>(all(vec2<bool>(false, true)), any(vec2<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), true)), all(select(vec3<bool>(all(vec3<bool>(true, true, true)), true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), true), select(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec3<bool>(true, any(!global0[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(24361u, 1u)] * global1[_wgslsmith_index_u32(52544u, 1u)]) >= 1842f), select(!func_1(u_input.e), func_1(~0i), vec3<bool>(true, true, true)), any(vec2<bool>(false, select(true, false, false)))), select(select(func_1(u_input.b.x >> (0u % 32u)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(false, true, true)), false || any(vec2<bool>(false, false))), !vec3<bool>(any(vec2<bool>(true, false)), true, true), any(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))), true);
    let var_1 = abs(-2147483647i);
    var var_2 = 2147483647i;
    var var_3 = Struct_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, 1i), vec2<i32>(u_input.c, global2[_wgslsmith_index_u32(firstTrailingBit(select(0u, 2170u, var_0.x)), 7u)]), -firstLeadingBit(u_input.b.wz)), Struct_2(global2[_wgslsmith_index_u32(1u, 7u)], Struct_1(~_wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 1u)], 1012f, global1[_wgslsmith_index_u32(1u, 1u)]) * vec3<f32>(228f, global1[_wgslsmith_index_u32(9578u, 1u)], 924f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-958f, global1[_wgslsmith_index_u32(7142u, 1u)], global1[_wgslsmith_index_u32(27254u, 1u)]) + vec3<f32>(-907f, 1000f, global1[_wgslsmith_index_u32(1u, 1u)]))), global1[_wgslsmith_index_u32(~reverseBits(4294967295u), 1u)], _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-151f, -371f, global1[_wgslsmith_index_u32(37252u, 1u)], 604f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(361f, global1[_wgslsmith_index_u32(11886u, 1u)], 420f, -1984f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 1u)], 452f, 763f, -996f)))), global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1337u, 0u), vec2<u32>(4294967295u, 15602u))), 1u)]), true, all(vec3<bool>(true | var_0.x, var_0.x, all(!vec4<bool>(var_0.x, false, false, true)))));
    global1 = array<f32, 1>();
    global2 = array<i32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_3.b.b.e, vec4<f32>(global1[_wgslsmith_index_u32(46636u, 1u)], global1[_wgslsmith_index_u32(675u, 1u)], var_3.b.b.d.x, -460f)) * _wgslsmith_f_op_vec4_f32(-var_3.b.b.d)) * var_3.b.b.d))));
}

