struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(328f, -1000f), vec2<f32>(-1150f, -783f), vec2<f32>(-1103f, 2144f), vec2<f32>(-2020f, 715f), vec2<f32>(1047f, 374f), vec2<f32>(-1144f, 247f), vec2<f32>(-281f, -844f), vec2<f32>(338f, -315f), vec2<f32>(-603f, 215f), vec2<f32>(2251f, -603f), vec2<f32>(174f, 817f), vec2<f32>(1260f, -1410f), vec2<f32>(-1245f, 1465f), vec2<f32>(1755f, -778f), vec2<f32>(-1689f, -854f), vec2<f32>(619f, 537f), vec2<f32>(-548f, 426f), vec2<f32>(-112f, -1145f), vec2<f32>(405f, 867f), vec2<f32>(1000f, 1470f), vec2<f32>(1149f, 358f), vec2<f32>(-587f, 285f), vec2<f32>(203f, 388f));

var<private> global2: array<i32, 17> = array<i32, 17>(0i, -15425i, -38785i, -23180i, 34058i, -31709i, -10314i, 0i, i32(-2147483648), 0i, 1i, -45658i, 1i, 1i, -28084i, -15727i, 7221i);

var<private> global3: vec3<i32> = vec3<i32>(2147483647i, 30710i, -43282i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> bool {
    let var_0 = Struct_2(countOneBits(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, global2[_wgslsmith_index_u32(1u, 17u)] ^ global3.x), u_input.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global0.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -632f) * _wgslsmith_f_op_f32(min(-965f, -1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1301f - 2007f)))));
    global2 = array<i32, 17>();
    var var_1 = min(_wgslsmith_dot_vec4_i32(u_input.a, -(~vec4<i32>(-48511i, u_input.d.x, 8961i, global3.x))), ~(-_wgslsmith_dot_vec3_i32(u_input.a.wzx >> (vec3<u32>(arg_1, arg_1, 40209u) % vec3<u32>(32u)), vec3<i32>(2147483647i, -65638i, u_input.d.x))));
    var var_2 = all(select(vec3<bool>(true, true, true), vec3<bool>(true, select(false, true, true) != true, true), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))));
    let var_3 = vec3<bool>(true, u_input.b.x == ~(~arg_1), !select(false, true, any(vec3<bool>(false, false, false))));
    return !(global3.x <= 1i);
}

fn func_2() -> vec2<f32> {
    global3 = u_input.a.yyz;
    let var_0 = select(vec3<bool>(true, false, all(vec4<bool>(true, all(vec4<bool>(true, false, false, false)), func_3(u_input.a.zyx, 4294967295u), true))), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), vec3<bool>(true, true, true), true), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), false), vec3<bool>(all(vec4<bool>(false, false, false, false)), true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec3<bool>(~u_input.b.x >= 4294967295u, true, true && any(vec3<bool>(false, false, true)))), vec3<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(true, false), false)), true, true));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) * _wgslsmith_f_op_f32(trunc(global0.x))))), global0.x) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(u_input.b.x, 23u)] * global1[_wgslsmith_index_u32(u_input.b.x, 23u)]) * _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(11544u, 23u)])))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1090f, -1085f, global0.x), vec3<f32>(510f, global0.x, -937f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(989f, global0.x, global0.x) + vec3<f32>(758f, global0.x, global0.x)))))));
    var var_2 = countOneBits(~vec4<u32>(select(4068u, u_input.b.x, var_0.x), u_input.b.x, u_input.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(20829u, u_input.b.x)), select(vec2<u32>(13553u, 4294967295u), vec2<u32>(1u, u_input.b.x), var_0.x))));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zx))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1899f)) + global0.x), -892f, global0.x, global0.x), vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(211f, 575f) + _wgslsmith_f_op_f32(1115f + global0.x)), _wgslsmith_f_op_f32(2010f * _wgslsmith_f_op_f32(floor(-1603f))), global0.x)));
    var var_1 = Struct_2(~1i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1863f + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-3439f))))))));
    let var_2 = global3.zy;
    global0 = _wgslsmith_f_op_vec2_f32(func_2());
    let var_3 = -1i;
    return Struct_1(select(abs(_wgslsmith_div_u32(u_input.b.x, u_input.b.x)) ^ ~72154u, u_input.b.x, arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))) * var_1.b)), vec3<bool>(select(false || arg_0, true, !func_3(vec3<i32>(-2707i, var_3, var_3), 0u)), arg_0, arg_0), all(select(select(!vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), vec2<bool>(false, true)), vec2<bool>(arg_0, arg_0 == true), all(vec4<bool>(arg_0, false, true, true)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~1i, -1824f);
    var_0 = Struct_2(0i, global0.x);
    var_0 = Struct_2(u_input.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-var_0.b))) * 1539f) * 108f));
    let var_1 = func_1(var_0.a < ~global2[_wgslsmith_index_u32(~min(50085u, u_input.b.x), 17u)]);
    global3 = -(~(-max(vec3<i32>(global2[_wgslsmith_index_u32(91060u, 17u)], global3.x, u_input.c.x), ~u_input.a.wxx)));
    let var_2 = Struct_2(u_input.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))));
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(1438u, 23u)])))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(822f, var_2.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(889f, _wgslsmith_f_op_vec2_f32(func_2()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(2146f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(472f, -692f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.x, 1774f))), false)) - vec2<f32>(var_3.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-205f - -1113f), _wgslsmith_f_op_f32(var_0.b + var_0.b))))));
}

