struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_1, 15>;

var<private> global3: array<vec4<u32>, 3>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1328f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.a.a.x, _wgslsmith_f_op_f32(round(arg_1.a.a.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1542f * arg_1.a.a.x))), arg_1.a.a.x, 252f));
    let var_1 = max(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, 4281u), ~_wgslsmith_add_u32(37135u, u_input.a.x)), ~vec2<u32>(~u_input.a.x, ~34273u)), ~firstLeadingBit(vec2<u32>(36800u, 1u & u_input.a.x)));
    global1 = vec3<bool>(all(!(!(!arg_1.a.d))), !global1.x, all(vec4<bool>(all(!vec3<bool>(true, global1.x, true)), true, global1.x, true)));
    global0 = array<Struct_1, 12>();
    global2 = array<Struct_1, 15>();
    return ~(_wgslsmith_add_vec4_u32(~(u_input.a | u_input.a), u_input.a) << ((global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(43279u, 0u, 45145u)), 3u)] | (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 13090u), vec4<u32>(4294967295u, 4294967295u, 36349u, var_1.x)) | u_input.a)) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec4<u32>) -> vec2<f32> {
    let var_0 = vec2<bool>(any(vec2<bool>(any(vec2<bool>(true, false)), false)), ~(~_wgslsmith_sub_u32(u_input.a.x, arg_0.x)) == u_input.a.x);
    let var_1 = ~(~_wgslsmith_div_u32(_wgslsmith_mult_u32(17722u, _wgslsmith_dot_vec2_u32(arg_0.yw, vec2<u32>(0u, u_input.a.x))), ~(~arg_0.x)));
    global1 = !select(select(select(select(vec3<bool>(false, false, var_0.x), vec3<bool>(global1.x, var_0.x, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), !vec3<bool>(var_0.x, false, false)), select(select(vec3<bool>(global1.x, global1.x, var_0.x), vec3<bool>(false, global1.x, true), global1.x), vec3<bool>(false, var_0.x, false), all(vec3<bool>(false, var_0.x, global1.x))), !select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, true, false), false)), select(!select(vec3<bool>(true, false, false), vec3<bool>(global1.x, false, false), vec3<bool>(true, false, global1.x)), !select(vec3<bool>(false, false, false), vec3<bool>(global1.x, var_0.x, true), global1.x), !select(vec3<bool>(global1.x, false, false), vec3<bool>(var_0.x, false, global1.x), vec3<bool>(var_0.x, false, global1.x))), var_0.x);
    global3 = array<vec4<u32>, 3>();
    let var_2 = vec2<i32>(u_input.b, _wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -2147483647i)), u_input.b, max(-2861i | u_input.b, ~u_input.b))) | _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -(vec2<i32>(-3051i, u_input.b) << (vec2<u32>(55830u, arg_0.x) % vec2<u32>(32u))), ~(~vec2<i32>(1i, u_input.b)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -2458f)) + _wgslsmith_div_vec2_f32(vec2<f32>(1656f, 498f), vec2<f32>(-335f, 684f)))))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1524f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1000f, -617f))))))));
}

fn func_2() -> vec2<f32> {
    global0 = array<Struct_1, 12>();
    var var_0 = u_input.b;
    let var_1 = u_input.b;
    global3 = array<vec4<u32>, 3>();
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(firstTrailingBit(~(~0u)) << (_wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(u_input.a.x, firstLeadingBit(u_input.a.x))) % 32u), 12u)]);
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a.a + var_2.a.a)))), _wgslsmith_f_op_vec2_f32(func_4(select(select(u_input.a, func_3(vec2<i32>(var_1, -11869i), Struct_3(var_2.a)), vec4<bool>(true, var_2.a.d.x, false, var_2.a.d.x)), max(vec4<u32>(u_input.a.x, u_input.a.x, 11880u, 46418u), vec4<u32>(42364u, u_input.a.x, 0u, 1u) & global3[_wgslsmith_index_u32(u_input.a.x, 3u)]), any(!vec3<bool>(true, false, global1.x)))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>) -> vec4<bool> {
    let var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-333f, 636f) + _wgslsmith_f_op_vec2_f32(func_2())))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1021f, 930f), vec2<f32>(952f, -768f)))))), max(vec3<i32>(i32(-1i) * -u_input.b, u_input.b, u_input.b), min(countOneBits(~vec3<i32>(u_input.b, u_input.b, arg_0.x)), select(-vec3<i32>(2147483647i, -53530i, 25848i), firstTrailingBit(vec3<i32>(arg_1.x, arg_0.x, u_input.b)), !vec3<bool>(var_0, var_0, false)))), all(!select(vec4<bool>(false, true, true, true), !vec4<bool>(var_0, global1.x, false, true), select(vec4<bool>(true, true, false, var_0), vec4<bool>(global1.x, true, true, false), true))), !vec4<bool>(false, !all(vec4<bool>(true, var_0, var_0, false)), !all(vec4<bool>(var_0, var_0, global1.x, var_0)), true));
    var var_2 = Struct_3(global2[_wgslsmith_index_u32(~u_input.a.x, 15u)]);
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.a.x, var_2.a.a.x) * _wgslsmith_div_vec2_f32(var_1.a, vec2<f32>(var_2.a.a.x, -318f))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x))))), var_1.b, var_2.a.c, var_1.d);
    let var_3 = Struct_2(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(1u, firstTrailingBit(u_input.a.x)), ~73871u), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, var_1.a.x), var_1.a)), vec3<i32>((1i << (u_input.a.x % 32u)) & _wgslsmith_dot_vec2_i32(vec2<i32>(13138i, arg_1.x), vec2<i32>(-18130i, arg_0.x)), u_input.b ^ -74320i, _wgslsmith_mod_i32(abs(-2147483647i), var_2.a.b.x)), var_0, var_2.a.d), u_input.a.x, _wgslsmith_clamp_i32(1i, i32(-1i) * -1i, u_input.b) | 2147483647i);
    return select(vec4<bool>(((31484i <= arg_1.x) && false) && (var_2.a.c & true), var_1.d.x, any(!vec3<bool>(true, true, var_3.b.c)), _wgslsmith_f_op_f32(sign(var_2.a.a.x)) > _wgslsmith_f_op_f32(-var_3.b.a.x)), select(vec4<bool>(true, global1.x, true, all(vec3<bool>(true, var_0, var_3.b.d.x))), select(vec4<bool>(select(var_3.b.d.x, var_3.b.d.x, var_0), true, 751f < var_3.b.a.x, false), !select(vec4<bool>(true, var_3.b.d.x, true, var_3.b.c), var_3.b.d, vec4<bool>(true, var_3.b.c, var_3.b.d.x, var_3.b.d.x)), var_0), select(vec4<bool>(true, global1.x, false, true), select(var_3.b.d, !var_1.d, false), !(!vec4<bool>(var_3.b.d.x, false, false, var_2.a.d.x)))), select(select(var_1.d, select(var_3.b.d, !vec4<bool>(false, false, false, var_1.c), !vec4<bool>(true, false, false, var_0)), true), select(var_3.b.d, vec4<bool>(true, var_0, select(var_2.a.c, true, false), true), select(!vec4<bool>(true, true, true, var_1.c), !var_2.a.d, var_1.d)), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1052f, -228f, -1419f, 1015f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -1007f, -1670f, 583f))), func_1(vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, -1i)))))));
    let var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 12u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(round(var_0.ywx));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, var_0.x, -1799f, 1021f), vec4<f32>(var_2.x, var_2.x, -1259f, var_0.x), var_1.d))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 268f, var_1.a.x, var_1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(654f, var_0.x, 407f, 1142f))))))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 845f, _wgslsmith_f_op_f32(exp2(var_0.x)), 2909f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1621f - var_0.x) + _wgslsmith_f_op_f32(sign(var_0.x))), var_1.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.a.x + var_2.x), var_0.x, any(vec4<bool>(global1.x, global1.x, global1.x, false)))), _wgslsmith_f_op_f32(-var_1.a.x))));
    var var_3 = vec3<bool>(all(vec2<bool>(all(!vec4<bool>(true, global1.x, false, var_1.d.x)), false)), global1.x, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_2.x, vec4<i32>(u_input.b, u_input.b, max(abs(var_1.b.x) | (i32(-1i) * -1i), 11559i), ~abs(2147483647i) & ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 3234i, u_input.b), var_1.b)), -(~(-105911i)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1002f, -904f, -1146f, var_0.x) * vec4<f32>(var_0.x, var_2.x, -1928f, 836f)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -846f), vec4<f32>(-170f, -662f, 669f, var_0.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2485f, var_1.a.x, 298f, var_0.x) * vec4<f32>(var_2.x, var_2.x, var_0.x, var_0.x)))))))));
}

