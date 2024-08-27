struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    var var_0 = Struct_3(Struct_1(true, vec2<bool>(true, true), 1020f, select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -1390f, 628f, 193f), vec4<f32>(267f, 1318f, 1418f, 182f))), vec4<f32>(-1000f, 1193f, -122f, -1232f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-324f, -905f, _wgslsmith_f_op_f32(495f - -757f), _wgslsmith_f_op_f32(1000f + 1583f)))), _wgslsmith_f_op_f32(f32(-1f) * -130f), Struct_1(all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), vec2<bool>(!all(vec2<bool>(false, false)), true), 869f, vec3<bool>(true, true, true)));
    var_0 = Struct_3(var_0.d, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-1019f + _wgslsmith_f_op_f32(ceil(-445f))), var_0.a.a)), _wgslsmith_f_op_f32(-507f - _wgslsmith_div_f32(-658f, _wgslsmith_f_op_f32(max(1757f, var_0.c)))), 1191f, -148f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.d.c, var_0.d.c), _wgslsmith_div_f32(var_0.c, var_0.a.c)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.c)))))), Struct_1(var_0.a.d.x, vec2<bool>(false, var_0.a.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.c)))), vec3<bool>(true, true, true)));
    var_0 = Struct_3(var_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.c, var_0.b.x, var_0.a.c, 1000f) * vec4<f32>(2202f, 310f, 595f, -1068f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.c, 426f, var_0.b.x, var_0.b.x) * vec4<f32>(var_0.d.c, 845f, var_0.c, 1425f))) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.d.c + var_0.b.x), var_0.b.x)), -918f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.d.c))), var_0.d.c)), 387f, var_0.a);
    var_0 = Struct_3(Struct_1(any(!(!vec4<bool>(false, true, true, var_0.a.a))), !(!(!vec2<bool>(true, var_0.a.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1827f)) * var_0.c)), vec3<bool>(true, all(vec4<bool>(false, false, var_0.a.b.x, true)), all(var_0.d.b))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_0.b)) - var_0.b), var_0.b)), -503f, Struct_1(!(_wgslsmith_f_op_f32(var_0.c - 508f) < -1088f), !vec2<bool>(var_0.d.b.x, true), _wgslsmith_f_op_f32(var_0.c + var_0.c), !select(!var_0.d.d, select(vec3<bool>(var_0.d.d.x, true, var_0.d.d.x), var_0.a.d, false), !var_0.d.a)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.c), var_0.d.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(203f))) + 502f), -739f, var_0.a.a)));
    return !all(!vec4<bool>(any(vec2<bool>(var_0.a.d.x, true)), all(vec3<bool>(var_0.d.b.x, var_0.d.d.x, var_0.d.a)), var_0.a.b.x, u_input.a.x < 26769i));
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_3(Struct_1(true, vec2<bool>(all(vec2<bool>(true, false)), any(vec3<bool>(true, true, true))), 242f, vec3<bool>(func_3(), true, all(vec3<bool>(true, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-352f))))), -1850f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(475f, -404f) * -230f), 1548f), -1000f, Struct_1(true, select(vec2<bool>(true, false), vec2<bool>(true, true), true), -655f, vec3<bool>(true, true, true)));
    var_0 = Struct_3(var_0.d, vec4<f32>(195f, _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.c, 418f) + -1223f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1000f, var_0.d.c)))) - -461f), var_0.b.x), var_0.c, Struct_1(true, !var_0.d.d.xx, 482f, !vec3<bool>(true, select(false, true, var_0.d.a), !var_0.d.d.x)));
    var_0 = Struct_3(Struct_1(210f < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -167f))), var_0.a.d.xz, var_0.d.c, !var_0.d.d), _wgslsmith_f_op_vec4_f32(step(var_0.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.c, var_0.d.c, var_0.b.x, var_0.a.c)))))), var_0.a.c, Struct_1(var_0.a.d.x, vec2<bool>(all(vec3<bool>(var_0.d.b.x, var_0.a.d.x, var_0.a.a)), all(!vec2<bool>(false, var_0.d.a))), -2121f, var_0.a.d));
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(-1062f, -1175f, var_0.c, var_0.c)), _wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(565f, var_0.c, -507f, var_0.d.c)))), _wgslsmith_f_op_vec4_f32(var_0.b - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c, var_0.c, var_0.a.c, -624f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1644f, var_0.b.x, 788f, var_0.a.c)) * var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.c + var_0.d.c), -635f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -388f) * -207f)))), var_0.d);
    let var_1 = Struct_2(_wgslsmith_sub_vec2_i32(~reverseBits(firstLeadingBit(u_input.a)), vec2<i32>(-2147483647i, u_input.a.x)));
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(836f))), _wgslsmith_f_op_f32(-292f * -1133f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b.x, -906f))))));
}

fn func_1() -> Struct_4 {
    let var_0 = vec2<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)));
    let var_1 = false;
    let var_2 = var_0;
    let var_3 = vec2<i32>(u_input.a.x, -1i);
    let var_4 = _wgslsmith_f_op_vec2_f32(func_2());
    return Struct_4(Struct_2(vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(2473i, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_1();
    var var_2 = u_input.a;
    var_2 = vec2<i32>(~func_1().a.a.x, ~54869i);
    var var_3 = Struct_3(Struct_1(true, select(select(select(vec2<bool>(var_0, false), vec2<bool>(false, false), vec2<bool>(var_0, false)), !vec2<bool>(var_0, true), var_0), vec2<bool>(false, select(var_0, false, true)), true), 1162f, select(vec3<bool>(false, true, true), select(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, false, var_0)), select(vec3<bool>(false, true, var_0), vec3<bool>(true, var_0, var_0), vec3<bool>(true, true, var_0)), true), vec3<bool>(var_1.a.a.x != var_2.x, !var_0, false && var_0))), vec4<f32>(-1217f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(376f)), _wgslsmith_f_op_f32(f32(-1f) * -240f)), 671f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1883f, 606f, var_0)), -185f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(819f))) * 438f)), Struct_1(true, vec2<bool>(var_0, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -874f))), !select(!vec3<bool>(var_0, false, var_0), vec3<bool>(true, true, true), select(true, var_0, var_0))));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(var_3.b.xx)), vec2<f32>(-1891f, var_3.c))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-589f, var_3.a.c)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_3.b.xw))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.c, var_3.a.c))))));
    var_3 = Struct_3(Struct_1(all(vec4<bool>(false, true, true, false)), var_3.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2()).x), vec3<bool>(var_3.d.b.x, select(true, false, true), any(select(vec4<bool>(true, var_3.a.b.x, false, false), vec4<bool>(var_3.a.a, var_3.d.d.x, var_0, var_0), false)))), vec4<f32>(-544f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.c - -217f)) * _wgslsmith_f_op_f32(-1701f - _wgslsmith_div_f32(var_4.x, 373f))), _wgslsmith_f_op_f32(trunc(var_4.x)), _wgslsmith_f_op_f32(-429f * _wgslsmith_f_op_f32(f32(-1f) * -1459f))), var_4.x, Struct_1(false, vec2<bool>(!any(vec3<bool>(false, false, false)), var_3.d.a && var_0), var_4.x, select(select(var_3.d.d, vec3<bool>(var_0, true, false), false), !(!var_3.d.d), 1648f >= _wgslsmith_f_op_f32(-var_4.x))));
    var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_3.b.xx + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(1000f - var_4.x), var_3.d.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~vec3<u32>(~49147u, 4294967295u >> (1u % 32u), ~21693u), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, countOneBits(52567u), 1u), vec3<u32>(1u, 1u, 1u))), _wgslsmith_f_op_vec4_f32(-var_3.b));
}

