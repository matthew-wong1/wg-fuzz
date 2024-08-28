struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(2147483647i, 15064i), vec2<i32>(i32(-2147483648), 16462i), vec2<i32>(-11786i, 17837i), vec2<i32>(-3072i, -2678i), vec2<i32>(57446i, -1i), vec2<i32>(25759i, 0i), vec2<i32>(-1i, -2538i), vec2<i32>(20008i, 2147483647i), vec2<i32>(i32(-2147483648), -37475i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-21248i, i32(-2147483648)), vec2<i32>(-9304i, -1i), vec2<i32>(-12086i, 2147483647i), vec2<i32>(-51320i, 0i), vec2<i32>(-12663i, 3249i), vec2<i32>(2147483647i, -13430i), vec2<i32>(-35869i, 27028i), vec2<i32>(0i, -148i), vec2<i32>(-1i, 2147483647i), vec2<i32>(43532i, -3103i), vec2<i32>(2147483647i, -1i), vec2<i32>(-18558i, 0i), vec2<i32>(57955i, -1i), vec2<i32>(0i, -1i), vec2<i32>(1i, 9548i), vec2<i32>(i32(-2147483648), 42182i), vec2<i32>(2147483647i, 11569i), vec2<i32>(4003i, -58482i), vec2<i32>(1i, -33700i));

var<private> global1: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(-1i, 53161i, 1140i), vec3<i32>(11681i, 0i, 1i), vec3<i32>(1i, 62529i, 6121i), vec3<i32>(-16444i, 29468i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), 14915i), vec3<i32>(46431i, 1i, 45708i), vec3<i32>(0i, -1i, i32(-2147483648)), vec3<i32>(2147483647i, 28333i, i32(-2147483648)), vec3<i32>(30490i, -22120i, 1i), vec3<i32>(-3245i, -2202i, 57914i), vec3<i32>(2147483647i, 1i, 48853i), vec3<i32>(-1i, i32(-2147483648), 1i), vec3<i32>(i32(-2147483648), 1i, -1i), vec3<i32>(i32(-2147483648), -9751i, -1i), vec3<i32>(-34851i, 15004i, i32(-2147483648)), vec3<i32>(14432i, 57152i, -13103i), vec3<i32>(2147483647i, -13368i, -31669i), vec3<i32>(-42344i, -13262i, 2147483647i), vec3<i32>(3355i, 1i, 2147483647i), vec3<i32>(0i, 0i, 22540i), vec3<i32>(-709i, 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 30374i, 2147483647i), vec3<i32>(2147483647i, 8820i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 29119i, 0i), vec3<i32>(46138i, 18702i, 11028i), vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(-1i, -15389i, 0i), vec3<i32>(-26770i, 10550i, -15884i), vec3<i32>(31566i, 2147483647i, 2147483647i));

var<private> global2: vec4<i32> = vec4<i32>(-1i, -1i, 11833i, 2147483647i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: i32, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(-1000f, 366f)), -1022f, _wgslsmith_f_op_f32(abs(-1913f)), _wgslsmith_f_op_f32(741f - -2382f)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * -1180f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(203f, -769f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -529f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1056f))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.zy + var_0.yx) + _wgslsmith_f_op_vec2_f32(step(var_0.zx, vec2<f32>(var_0.x, 1000f)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_0.zy + vec2<f32>(-1331f, -380f)))))));
    let var_2 = _wgslsmith_sub_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(~u_input.a, 66655u, ~u_input.b, ~66017u))), ~((vec4<u32>(30632u, u_input.a, 27455u, 0u) << (_wgslsmith_mult_vec4_u32(vec4<u32>(3374u, u_input.d, 79543u, u_input.d), vec4<u32>(27365u, 1u, 50409u, 4294967295u)) % vec4<u32>(32u))) ^ vec4<u32>(~1u, 0u, u_input.b, ~17982u)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(var_0.zx * _wgslsmith_f_op_vec2_f32(var_0.yy * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1646f, -1649f)) + _wgslsmith_f_op_vec2_f32(-var_1.a)))));
    var var_4 = arg_0;
    return ~firstLeadingBit(_wgslsmith_div_u32(4294967295u, ~0u));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-632f, 2401f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-433f, -397f)), all(!vec2<bool>(false, arg_0))))));
    let var_1 = _wgslsmith_mult_vec3_i32(~vec3<i32>(global2.x, -2147483647i ^ ~u_input.c, -2147483647i), global1[_wgslsmith_index_u32(func_3(!any(!vec3<bool>(true, arg_0, arg_0)), true, u_input.c, false), 29u)]);
    let var_2 = Struct_1(vec2<f32>(883f, var_0.a.x));
    var var_3 = reverseBits(2147483647i);
    global2 = firstLeadingBit(vec4<i32>(~abs(-1i), -55413i, _wgslsmith_mult_i32(-2147483647i, select(countOneBits(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 44507i, global2.x), var_1), all(vec2<bool>(true, arg_0)))), ~(~(27540i ^ u_input.c))));
    return u_input.b;
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<u32>(~(~0u), _wgslsmith_add_u32(func_2(true), ~(~(~1u))), ~u_input.a, ~44679u);
    var var_1 = ~(~(~_wgslsmith_add_vec3_u32(var_0.wyy, var_0.zww)) << (_wgslsmith_add_vec3_u32(var_0.wwz, ~var_0.xwy) % vec3<u32>(32u)));
    let var_2 = !any(select(vec2<bool>(all(vec4<bool>(true, true, false, true)), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), !all(vec2<bool>(true, true))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(720f, -1000f) + vec2<f32>(-1074f, 1161f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(437f, -858f), vec2<f32>(-352f, -897f), vec2<bool>(var_2, var_2)))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(368f, -862f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(656f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-454f, -2185f)), select(vec2<bool>(false, true), vec2<bool>(var_2, true), var_2))), false))));
    var var_4 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-175f + var_3.a.x))), _wgslsmith_f_op_f32(ceil(var_3.a.x))), var_3.a));
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: u32) -> Struct_1 {
    global1 = array<vec3<i32>, 29>();
    global1 = array<vec3<i32>, 29>();
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.c, _wgslsmith_mod_i32(_wgslsmith_add_i32(-44466i, -3i), ~global2.x), u_input.c, global2.x) & abs(firstTrailingBit(~vec4<i32>(u_input.c, global2.x, -2147483647i, 0i))), vec4<i32>(select((u_input.c & u_input.c) ^ _wgslsmith_mod_i32(18548i, 1i), u_input.c, false), abs(-1i), _wgslsmith_sub_i32(u_input.c, 2147483647i) ^ -_wgslsmith_mod_i32(-2147483647i, -2147483647i), _wgslsmith_sub_i32(firstTrailingBit(global2.x & -20746i), (global2.x | global2.x) & _wgslsmith_sub_i32(-1i, global2.x))));
    global1 = array<vec3<i32>, 29>();
    var_0 = 2147483647i;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(995f, 315f)) * _wgslsmith_f_op_f32(trunc(1000f))))));
    let var_1 = true;
    var var_2 = func_4(func_1(), var_1, _wgslsmith_f_op_f32(min(-970f, _wgslsmith_div_f32(func_1().a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(505f)), _wgslsmith_f_op_f32(1000f * 464f)))))), _wgslsmith_div_u32(_wgslsmith_add_u32(1u, _wgslsmith_add_u32(~0u, u_input.a | u_input.d)), 0u));
    var_2 = func_4(func_1(), var_1, -1387f, firstLeadingBit(abs(~u_input.b)));
    var var_3 = _wgslsmith_clamp_u32(u_input.b, _wgslsmith_dot_vec3_u32(min(firstLeadingBit(~vec3<u32>(4294967295u, u_input.d, u_input.a)), ~(~vec3<u32>(u_input.a, u_input.a, u_input.d))), vec3<u32>(_wgslsmith_div_u32(reverseBits(0u), 1u), _wgslsmith_mod_u32(20518u, u_input.d << (1u % 32u)), 22069u)), 0u);
    let var_4 = u_input.c;
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(396f, _wgslsmith_f_op_f32(495f * -425f))), _wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1071f + var_2.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.a.x)) - _wgslsmith_f_op_f32(var_2.a.x - -460f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a.x * 504f), _wgslsmith_f_op_f32(var_2.a.x + 1000f))), var_1)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(47581u << (~_wgslsmith_div_u32(0u, u_input.d) % 32u), u_input.a), ~(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, u_input.c, -1i, global2.x), ~vec4<i32>(-5286i, u_input.c, var_4, -39365i)) ^ global2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - -2596f), _wgslsmith_div_f32(-1792f, _wgslsmith_div_f32(857f, 568f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_2.a.x)))), !(!(!var_1)))));
}

