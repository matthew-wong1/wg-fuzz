struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(141388u, 36330u, 4294967295u);

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(36804u, 20136u, 0u, 7956u), vec4<u32>(4294967295u, 4294967295u, 0u, 40248u), vec4<u32>(4294967295u, 0u, 1u, 40139u), vec4<u32>(11330u, 0u, 54039u, 1u), vec4<u32>(4294967295u, 1u, 83997u, 1179u), vec4<u32>(34685u, 26034u, 66739u, 22042u), vec4<u32>(31412u, 20873u, 22744u, 0u), vec4<u32>(1u, 1u, 11756u, 51511u), vec4<u32>(12201u, 0u, 1u, 0u));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>) -> vec3<f32> {
    global1 = select(!select(!select(vec3<bool>(arg_1.x, true, false), vec3<bool>(true, true, global1.x), true), vec3<bool>(false, true, global1.x), arg_0.x <= _wgslsmith_f_op_f32(-arg_0.x)), select(vec3<bool>(true, true, true), select(select(!vec3<bool>(true, global1.x, arg_1.x), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, true, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true)), !arg_1.x), vec3<bool>(true, arg_1.x, true), vec3<bool>(true, global1.x, true)), select(!select(vec3<bool>(global1.x, true, arg_1.x), vec3<bool>(arg_1.x, false, global1.x), vec3<bool>(arg_1.x, arg_1.x, true)), !vec3<bool>(global1.x, global1.x, arg_1.x), vec3<bool>(all(vec4<bool>(arg_1.x, arg_1.x, global1.x, false)), all(global1.zz), false))), any(!vec2<bool>(!arg_1.x, arg_1.x)));
    let var_0 = select(~_wgslsmith_clamp_u32(global0.x, 110431u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), ~vec3<u32>(4294967295u, u_input.a.x, 58498u))), _wgslsmith_dot_vec3_u32(select(_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, global0.x, u_input.a.x), vec3<u32>(1u, 51738u, 45058u)), max(max(vec3<u32>(15167u, u_input.a.x, global0.x), vec3<u32>(global0.x, u_input.a.x, u_input.a.x)), ~vec3<u32>(1u, u_input.a.x, u_input.a.x)), vec3<bool>(arg_1.x, true, all(vec2<bool>(arg_1.x, false)))), vec3<u32>(~4294967295u, 27221u, select(~13352u, global0.x, all(vec2<bool>(arg_1.x, arg_1.x))))), global1.x);
    let var_1 = 4294967295u;
    var var_2 = arg_0.x;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.yzz * vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(step(-2083f, arg_0.x)), _wgslsmith_f_op_f32(-1719f + -134f))), 1832f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_0))), arg_0.zxy, vec4<bool>(!arg_1.x, firstLeadingBit(1i) <= -_wgslsmith_dot_vec4_i32(vec4<i32>(26954i, -1i, 55789i, 0i), vec4<i32>(0i, 0i, -31601i, 16825i)), arg_1.x, true));
    return var_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_1) -> bool {
    global1 = !vec3<bool>(global1.x, arg_0.e.x, true || all(!vec4<bool>(false, arg_3.e.x, global1.x, arg_0.e.x)));
    var var_0 = arg_3.a.xx;
    var var_1 = arg_0;
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.d.x - _wgslsmith_f_op_f32(round(-1769f)))));
    return all(select(vec3<bool>(true, false, true), var_2.e.zxz, arg_0.e.xzz));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-901f - _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) - -557f))));
    global1 = select(vec3<bool>(true, any(vec4<bool>(true, all(vec3<bool>(global1.x, true, global1.x)), true, !arg_0)), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -136f, arg_1.x)), -1496f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, arg_1.x, -1000f, var_0), vec4<f32>(var_0, -1064f, var_0, -1386f), global1.x)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, 1000f, -640f), vec3<f32>(-1110f, var_0, arg_1.x)), !vec4<bool>(false, global1.x, arg_0, false)), global0.zx, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(u_input.a.x, global0.x, 33930u) & vec3<u32>(0u, global0.x, 51687u)), Struct_1(_wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(1747f, var_0, arg_1.x, 261f), vec2<bool>(global1.x, true))), -552f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -540f, var_0, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1842f, arg_1.x)), vec4<bool>(global1.x, arg_0, global1.x, false)))), select(vec3<bool>(_wgslsmith_f_op_f32(-arg_1.x) == var_0, global0.x <= global0.x, !global1.x), vec3<bool>(any(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, global1.x, false), vec3<bool>(false, true, false))), all(vec2<bool>(arg_0, global1.x)), false), vec3<bool>(global1.x, arg_0 | (true & arg_0), all(global1.xz))), !vec3<bool>(all(vec2<bool>(arg_0, global1.x)), !(false & arg_0), false));
    let var_1 = !(!select(select(!vec4<bool>(global1.x, arg_0, global1.x, true), select(vec4<bool>(false, false, true, global1.x), vec4<bool>(global1.x, arg_0, true, true), vec4<bool>(false, global1.x, false, global1.x)), true), !vec4<bool>(arg_0, false, global1.x, true), vec4<bool>(true, true | arg_0, !arg_0, true)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1.x, var_0)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x)))), _wgslsmith_f_op_f32(round(arg_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0)), _wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_div_f32(-1207f, -390f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, 1000f, arg_1.x, arg_1.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, -2337f, arg_1.x, var_0)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, 711f, -782f), vec3<f32>(1000f, var_0, 1742f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) - _wgslsmith_f_op_f32(-arg_1.x))))), !select(!select(vec4<bool>(true, var_1.x, var_1.x, arg_0), vec4<bool>(false, var_1.x, true, global1.x), true), var_1, 1f > _wgslsmith_f_op_f32(round(var_0))));
    var_2 = Struct_1(var_2.d, -1000f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x + var_0), _wgslsmith_f_op_f32(trunc(var_0))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.c.x, var_2.b, -1761f, var_2.a.x), vec4<f32>(var_2.a.x, 308f, -343f, var_0), vec4<bool>(var_2.e.x, true, arg_0, arg_0))))) * var_2.c), var_2.c.zzx, select(!var_1, vec4<bool>(arg_0, !all(var_1.wy), 332f == _wgslsmith_f_op_f32(sign(667f)), !(!arg_0)), var_2.e));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.d - _wgslsmith_f_op_vec3_f32(-var_2.a))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-936f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -855f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1579f * -491f) - _wgslsmith_f_op_f32(453f * -483f))) + _wgslsmith_f_op_vec3_f32(func_2(!global1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1446f, 379f) + vec2<f32>(-664f, -264f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1021f, 643f) - vec2<f32>(-1414f, -220f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -768f))), -113f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(790f, 290f, 102f, 1316f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(true, vec2<f32>(1f, 1f))))), select(!(!vec4<bool>(false, true, arg_0, global1.x)), !(!(!vec4<bool>(arg_0, false, arg_0, false))), true));
    var var_1 = !(!global1.zy);
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_2(var_0.e.x, var_0.c.xx)), var_0.a));
    var var_3 = _wgslsmith_clamp_vec2_i32(firstTrailingBit(~(abs(vec2<i32>(-5063i, 0i)) << (~u_input.a % vec2<u32>(32u)))), -(firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-15444i, 0i), vec2<i32>(39638i, 40740i))) ^ select(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i), global1.x)), -countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, -2147483647i))));
    var var_4 = !var_0.e.zz;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -200f), _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(-1433f, -332f, 617f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1546f)), _wgslsmith_f_op_vec4_f32(var_0.c + var_0.c), var_0.d, var_0.e);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    let var_0 = -69598i;
    let var_1 = 2147483647i;
    global1 = select(arg_1.e.wzw, !vec3<bool>(all(vec3<bool>(global1.x, arg_1.e.x, arg_2.e.x)), arg_2.e.x, true), any(select(vec3<bool>(arg_0.e.x, false, arg_2.e.x | arg_2.e.x), !arg_2.e.xww, all(!vec3<bool>(global1.x, arg_2.e.x, true)))));
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_0.a.x))))));
    return all(!(!func_1(func_4(Struct_1(var_2.a, 742f, arg_1.c, vec3<f32>(-1632f, -1181f, 1051f), vec4<bool>(var_2.e.x, var_2.e.x, true, true)), vec2<u32>(4294967295u, global0.x), global0.x, var_2)).e.zz));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(!func_5(Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1024f, 592f, 177f), vec3<f32>(198f, -319f, 2255f))), _wgslsmith_f_op_f32(min(-177f, 432f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-903f, 103f, 1902f, -1371f) - vec4<f32>(1604f, -1376f, -316f, -1257f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1973f, -158f, 133f) - vec3<f32>(-486f, 830f, -2296f)), vec4<bool>(true, true, false, global1.x)), func_1(!global1.x), Struct_1(vec3<f32>(601f, -779f, -532f), 235f, func_1(global1.x).c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-858f, 132f, 2762f)), !vec4<bool>(false, global1.x, global1.x, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1655f, -1292f, 391f), vec3<f32>(-203f, -779f, 191f))))), -_wgslsmith_clamp_i32(0i, _wgslsmith_clamp_i32(20575i, 1i, 1i), -1i) > 13316i, true);
    global2 = array<vec4<u32>, 9>();
    var var_0 = func_1(1423f < func_1(true).c.x);
    var var_1 = func_1(var_0.e.x);
    let var_2 = var_0.e.x;
    var_0 = func_1(all(select(var_1.e, !vec4<bool>(var_1.e.x, global1.x, true, var_0.e.x), var_1.e.x)) | true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mod_u32(~(~u_input.a.x), global0.x), ~abs(_wgslsmith_sub_u32(4294967295u, global0.x)), global0.x), 59733u, global0.x, vec2<f32>(_wgslsmith_f_op_f32(min(-1368f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-872f, var_0.d.x, var_1.e.x))))), _wgslsmith_f_op_vec3_f32(func_2(false, var_1.c.xw)).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1801f))));
}

