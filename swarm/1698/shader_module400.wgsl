struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: vec3<u32> = vec3<u32>(24735u, 53360u, 4294967295u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_mult_i32(-1i, global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(global1.x, 25u)], u_input.a), u_input.a ^ 25262i) << (abs(~vec3<u32>(55012u, global1.x, 0u)) % vec3<u32>(32u)), ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(u_input.a, u_input.a)), -1i, -35085i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(trunc(294f))) + _wgslsmith_div_f32(_wgslsmith_div_f32(-2077f, arg_0), -1697f))), 2147483647i, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-402f, arg_0))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(arg_0 * -313f)))))));
    global0 = array<i32, 25>();
    var_0 = Struct_2(Struct_1(var_0.a.a, 1i, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.x), -715f)))), arg_0, _wgslsmith_mod_i32(u_input.a ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0[_wgslsmith_index_u32(0u, 25u)]), vec2<i32>(9254i, 11228i)) >> (abs(55116u) % 32u)), u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(238f, arg_0), _wgslsmith_f_op_vec2_f32(-var_0.d))) - var_0.d));
    let var_2 = var_0.a;
    return !(!select(vec4<bool>(var_0.a.a.x == -29444i, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: i32) -> bool {
    var var_0 = vec3<bool>(false, true, 29410u <= _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~arg_1, firstLeadingBit(global1.x), 4294967295u), 5552u));
    return !(!(countOneBits(_wgslsmith_div_u32(u_input.b.x, 1u)) >= _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global1.x, 101686u), ~1u, _wgslsmith_add_u32(arg_1, global1.x))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = arg_1.x;
    let var_1 = ~(~(-(vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 25u)]) >> (u_input.b % vec2<u32>(32u)))) << ((firstLeadingBit(~global1.yx) << (~(vec2<u32>(u_input.b.x, 25028u) ^ vec2<u32>(14384u, 0u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_2 = Struct_2(Struct_1(vec3<i32>(11942i, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(38176u, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)], u_input.a, u_input.a), vec4<i32>(var_1.x, 1i, 35084i, -15877i))), reverseBits(global0[_wgslsmith_index_u32(global1.x, 25u)] >> (global1.x % 32u))), max(u_input.a, var_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1210f)), -297f, !var_0))))), _wgslsmith_f_op_f32(f32(-1f) * -1835f), -var_1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(104f, arg_2.x) - vec2<f32>(-302f, 1191f)), vec2<f32>(arg_2.x, arg_2.x)))) - arg_2));
    var var_3 = _wgslsmith_div_u32(~62298u, ~0u);
    var_3 = _wgslsmith_mod_u32(37313u, global1.x);
    return Struct_2(Struct_1(var_2.a.a, -30670i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3200f * -1114f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.c)) + -1000f) - arg_2.x), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.b.x, global1.x)), ~global1.zy), firstTrailingBit(vec2<u32>(0u, global1.x)) | vec2<u32>(global1.x, u_input.b.x)), abs(~(~global1.x))), 25u)], vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.x) - _wgslsmith_f_op_f32(-arg_2.x)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec2<i32>) -> vec2<f32> {
    global1 = reverseBits(vec3<u32>(~(0u & (0u | arg_0.x)), 0u, global1.x));
    var var_0 = func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d.x - -2231f) * arg_2.a.c)), vec4<bool>(false || all(vec3<bool>(true, true, true)), !select(func_3(vec2<f32>(arg_2.d.x, 1000f), 4294967295u, -1i), true, true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1352f + -1163f), _wgslsmith_f_op_f32(-arg_2.b))) > -1000f, !(!any(vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.d.x)) - -891f))));
    var var_1 = vec3<f32>(arg_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-234f - -750f)), var_0.a.c);
    var_0 = Struct_2(Struct_1(reverseBits(vec3<i32>(u_input.a, select(0i, 1i, true), -19213i)), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-861f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d.x)))), arg_2.b, false)), 0i, var_1.zy);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2939f));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x + arg_2.d.x) - _wgslsmith_f_op_f32(f32(-1f) * -310f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-640f, 638f)) * var_0.b), var_2)), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-481f - -623f), -279f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(569f, -1453f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1163f, -166f)) - _wgslsmith_f_op_f32(f32(-1f) * -1136f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(561f, var_0.x)), _wgslsmith_f_op_vec2_f32(func_1(global1.zx, vec4<i32>(global0[_wgslsmith_index_u32(1u, 25u)], u_input.a, u_input.a, 55097i), Struct_2(Struct_1(vec3<i32>(-29679i, global0[_wgslsmith_index_u32(4294967295u, 25u)], u_input.a), 0i, var_0.x), var_0.x, -2147483647i, vec2<f32>(-918f, -2085f)), vec2<i32>(17822i, 2147483647i)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(526f, var_0.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-886f, 2356f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1200f, var_0.x), vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(func_1(u_input.b, vec4<i32>(-1i, global0[_wgslsmith_index_u32(60777u, 25u)], u_input.a, global0[_wgslsmith_index_u32(1u, 25u)]), Struct_2(Struct_1(vec3<i32>(u_input.a, -1i, 2147483647i), u_input.a, var_0.x), 1646f, -2147483647i, vec2<f32>(-517f, var_0.x)), vec2<i32>(-13525i, u_input.a))), vec2<bool>(false, false)))), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, true)), u_input.a != global0[_wgslsmith_index_u32(0u, 25u)]), func_2(385f).yw)))));
    var var_2 = _wgslsmith_f_op_f32(min(var_1.x, var_1.x));
    let var_3 = Struct_1(-(vec3<i32>(u_input.a, u_input.a, u_input.a) | (-vec3<i32>(u_input.a, 2147483647i, -18226i) << (~vec3<u32>(u_input.b.x, 0u, global1.x) % vec3<u32>(32u)))), -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(657f)) - _wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -626f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1056f)), var_1.x, true)), max(43668u, u_input.b.x) < ~global1.x))));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1364f, 2314f)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1558f, var_0.x))))), vec2<f32>(_wgslsmith_div_f32(-249f, var_3.c), _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(var_3.c * 1203f), true))))) + vec2<f32>(667f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(188f, var_0.x)) * var_0.x)));
    let var_5 = func_4(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false))), vec4<bool>(414f > _wgslsmith_f_op_f32(var_3.c - _wgslsmith_div_f32(var_1.x, var_1.x)), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))) > var_0.x, ~(-2147483647i) == _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, var_3.a.x, var_3.a.x), var_3.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c, _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(abs(-686f)), func_3(vec2<f32>(var_0.x, var_1.x), u_input.b.x, -1i))))));
    var var_6 = var_5;
    var var_7 = any(vec3<bool>(var_3.c >= 129f, true, true));
    global0 = array<i32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(global1.x, global1.x), ~61289u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 1u), vec2<u32>(47826u, global1.x))), ~select(vec3<u32>(global1.x, 22964u, global1.x), vec3<u32>(4294967295u, 7333u, 1u), vec3<bool>(false, true, false)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_4.x, -1000f), var_5.d.x, true)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_6.b * -1420f), var_1.x, true))), 836f, var_6.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(u_input.b, vec4<i32>(var_5.c, var_6.c, 57417i, -2147483647i), Struct_2(var_6.a, var_5.b, 48458i, var_6.d), vec2<i32>(0i, u_input.a)))), var_5.d))), 6373u, reverseBits(78300u));
}

