struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 13>;

var<private> global1: array<Struct_1, 4>;

var<private> global2: i32 = -48711i;

var<private> global3: bool;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_4) -> vec3<bool> {
    var var_0 = Struct_1(firstLeadingBit(_wgslsmith_add_i32(0i, i32(-1i) * -2147483647i)));
    global1 = array<Struct_1, 4>();
    var var_1 = 154f;
    global0 = array<vec3<i32>, 13>();
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a.xy - arg_3.b.xw) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_1) - -516f), 820f))));
    return vec3<bool>(!any(vec2<bool>(select(false, false, true), true)), false, !all(vec4<bool>(true, 4294967295u > arg_3.d.x, true, true)));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(_wgslsmith_add_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(22934u, 0u))), _wgslsmith_clamp_vec2_u32(abs(firstTrailingBit(vec2<u32>(1u, 1u))), abs(vec2<u32>(76032u, 4294967295u)), vec2<u32>(5975u, 57887u))));
    let var_1 = !select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), func_3(Struct_3(vec3<f32>(991f, -1464f, -413f)), -2123f, var_0.a, Struct_4(vec2<f32>(814f, 218f), vec4<f32>(-1000f, -1141f, -1320f, -337f), -1000f, vec2<u32>(u_input.a, u_input.a)))), vec3<bool>(all(vec2<bool>(false, false)), true, all(vec4<bool>(true, false, true, true))), true), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(func_3(Struct_3(vec3<f32>(1875f, -1016f, -102f)), 1217f, vec2<u32>(u_input.a, var_0.a.x), Struct_4(vec2<f32>(-898f, 2014f), vec4<f32>(-562f, -706f, -1276f, -558f), 1679f, var_0.a)), vec3<bool>(true, false, false), vec3<bool>(true, true, true))));
    let var_2 = Struct_5(1u, !select(vec3<bool>(var_1.x, !var_1.x, true), var_1, vec3<bool>(var_1.x, true, true)), -(~(-2147483647i)));
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -853f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(196f)), -1673f)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-871f, -1001f)))), _wgslsmith_f_op_f32(f32(-1f) * -1226f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(678f)) - 146f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-812f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1234f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1552f + 888f) * _wgslsmith_f_op_f32(627f + -396f))))), ~_wgslsmith_mult_vec2_u32(max(vec2<u32>(34790u, 16293u), var_0.a), abs(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), vec2<u32>(u_input.a, 10867u)))));
    global2 = var_2.c;
    return var_2.c;
}

fn func_1() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-174f, -2321f, -1932f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1170f, 676f, 1923f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-943f - 253f), _wgslsmith_f_op_f32(f32(-1f) * -249f), _wgslsmith_f_op_f32(max(-1288f, -105f))) * vec3<f32>(1f, 1f, 1f)))));
    var var_1 = vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, 44683i), countOneBits(vec3<i32>(2147483647i, 44761i, -1i)))), 48030i, func_2(), ~(-18074i)) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(abs(u_input.a), 3092u, ~38871u, ~4294967295u), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(1u, 56958u, 6013u, u_input.a)), vec4<u32>(u_input.a, 0u, u_input.a, 1u))) % vec4<u32>(32u));
    var var_2 = ~8840i;
    let var_3 = Struct_1(_wgslsmith_clamp_i32(abs(min(var_1.x, select(-1i, var_1.x, true))), -countOneBits(select(var_1.x, var_1.x, false)), var_1.x));
    let var_4 = Struct_4(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1057f * -419f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -482f) + vec4<f32>(var_0.x, var_0.x, -1000f, -1000f)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -251f), -805f, -630f, _wgslsmith_f_op_f32(abs(var_0.x))))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_mult_vec2_u32((vec2<u32>(24743u, u_input.a) & countOneBits(vec2<u32>(71356u, u_input.a))) >> (~(vec2<u32>(u_input.a, 0u) & vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, 57132u))));
    return ~_wgslsmith_sub_vec4_u32((abs(vec4<u32>(var_4.d.x, u_input.a, 0u, var_4.d.x)) >> (~vec4<u32>(4294967295u, u_input.a, 1u, 40998u) % vec4<u32>(32u))) << (reverseBits(vec4<u32>(var_4.d.x, 50732u, 4294967295u, 0u) << (vec4<u32>(45076u, var_4.d.x, u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), ~var_4.d.x, _wgslsmith_sub_u32(u_input.a, 4294967295u), abs(66610u)));
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: vec2<f32>, arg_3: vec4<u32>) -> Struct_3 {
    global3 = true;
    global3 = arg_1;
    var var_0 = -2147483647i;
    let var_1 = abs(vec3<i32>(~firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_0.c), vec2<i32>(-2147483647i, -1i))), ~abs(~arg_0.c), max(19342i, 1i)));
    var var_2 = ~countOneBits(-global0[_wgslsmith_index_u32(~0u, 13u)]);
    return Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.x, 1108f, -860f))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1310f + 1801f), _wgslsmith_f_op_f32(arg_2.x * arg_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 845f, 663f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_5(0u, vec3<bool>(any(vec2<bool>(false, false)), true, any(vec3<bool>(true, true, false))), firstLeadingBit(22368i)), true, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -502f)), 118f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(988f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -583f)))), func_1());
    var var_1 = select(vec2<bool>(false, 293f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), var_0.a.x)), select(func_3(Struct_3(vec3<f32>(605f, var_0.a.x, var_0.a.x)), -1387f, ~vec2<u32>(35393u, 1309u), Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-550f, -222f) - var_0.a.zy), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1325f, -253f, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(trunc(345f)), vec2<u32>(14712u, 65396u))).yy, vec2<bool>(true, true), u_input.a != func_1().x), false);
    var var_2 = vec3<bool>(var_1.x, !var_1.x == var_1.x, true);
    var_2 = select(!(!(!(!vec3<bool>(false, true, var_2.x)))), !(!vec3<bool>(true, false, all(vec2<bool>(var_1.x, true)))), var_2.x);
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(var_0.a.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 744f))))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -531f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 126f) - _wgslsmith_f_op_f32(689f - var_0.a.x))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.yz - var_0.a.yx), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.x, var_0.a.x), vec2<f32>(var_0.a.x, -201f), var_1.x)))))));
    let var_4 = ~(~102488u);
    let var_5 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(_wgslsmith_f_op_f32(round(var_3.x)), _wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -433f))))));
    global2 = -23468i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -abs(-63307i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_5.a.x, func_3(Struct_3(vec3<f32>(var_5.a.x, var_0.a.x, 244f)), var_3.x, vec2<u32>(30045u, u_input.a), Struct_4(vec2<f32>(var_5.a.x, 590f), vec4<f32>(var_0.a.x, var_5.a.x, var_5.a.x, -259f), var_0.a.x, vec2<u32>(1u, 57388u))).x)) * var_3.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, 1f, true)) * var_3.x)), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(Struct_5(var_4, vec3<bool>(false, true, true), 0i), false, vec2<f32>(541f, var_0.a.x), vec4<u32>(24396u, 1u, 4294967295u, u_input.a)).a.x - var_0.a.x))), 809f), _wgslsmith_f_op_f32(sign(-2009f)));
}

