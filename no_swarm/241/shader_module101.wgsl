struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(-36340i, 4294967295u, vec4<bool>(false, false, true, true)), vec4<bool>(false, false, true, false), vec2<u32>(1u, 34409u), Struct_1(-1i, 10180u, vec4<bool>(false, false, false, true)), Struct_1(27047i, 41347u, vec4<bool>(false, false, true, true))), Struct_2(Struct_1(12562i, 0u, vec4<bool>(false, true, false, false)), vec4<bool>(false, false, true, true), vec2<u32>(82571u, 0u), Struct_1(-63471i, 44436u, vec4<bool>(true, false, true, false)), Struct_1(2147483647i, 5863u, vec4<bool>(false, true, false, false))), Struct_2(Struct_1(-1i, 40049u, vec4<bool>(false, false, true, true)), vec4<bool>(false, false, false, true), vec2<u32>(4294967295u, 23257u), Struct_1(-1i, 31903u, vec4<bool>(true, true, true, false)), Struct_1(2147483647i, 1u, vec4<bool>(false, false, true, false))), Struct_2(Struct_1(0i, 1u, vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, true), vec2<u32>(0u, 59687u), Struct_1(-1i, 1u, vec4<bool>(false, false, true, true)), Struct_1(2147483647i, 20247u, vec4<bool>(false, false, false, false))), Struct_2(Struct_1(1i, 27861u, vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, false), vec2<u32>(19895u, 62525u), Struct_1(1i, 4294967295u, vec4<bool>(false, true, true, true)), Struct_1(4975i, 1u, vec4<bool>(true, false, false, false))), Struct_2(Struct_1(-2028i, 0u, vec4<bool>(true, true, true, false)), vec4<bool>(true, true, false, true), vec2<u32>(43390u, 124u), Struct_1(3948i, 16500u, vec4<bool>(false, false, false, false)), Struct_1(1i, 36882u, vec4<bool>(false, true, true, false))), Struct_2(Struct_1(27100i, 30087u, vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, false), vec2<u32>(24431u, 4294967295u), Struct_1(2147483647i, 0u, vec4<bool>(true, false, false, true)), Struct_1(2147483647i, 8872u, vec4<bool>(false, true, false, true))), Struct_2(Struct_1(-21422i, 16479u, vec4<bool>(true, false, true, false)), vec4<bool>(false, false, true, false), vec2<u32>(4294967295u, 1u), Struct_1(1i, 1u, vec4<bool>(true, true, true, false)), Struct_1(-43837i, 35353u, vec4<bool>(true, false, true, false))), Struct_2(Struct_1(-27792i, 4294967295u, vec4<bool>(true, false, true, false)), vec4<bool>(false, true, false, true), vec2<u32>(6330u, 1u), Struct_1(-40450i, 1u, vec4<bool>(false, true, false, true)), Struct_1(21829i, 0u, vec4<bool>(true, true, true, true))), Struct_2(Struct_1(-37063i, 4294967295u, vec4<bool>(false, true, false, false)), vec4<bool>(false, false, false, false), vec2<u32>(99003u, 23751u), Struct_1(-4046i, 4294967295u, vec4<bool>(false, false, true, true)), Struct_1(i32(-2147483648), 0u, vec4<bool>(true, false, false, true))), Struct_2(Struct_1(-1i, 4294967295u, vec4<bool>(true, false, false, false)), vec4<bool>(true, true, false, false), vec2<u32>(130897u, 1u), Struct_1(i32(-2147483648), 34533u, vec4<bool>(true, false, true, true)), Struct_1(-1i, 25498u, vec4<bool>(true, true, false, true))), Struct_2(Struct_1(i32(-2147483648), 109u, vec4<bool>(true, true, false, false)), vec4<bool>(false, false, true, true), vec2<u32>(1u, 68415u), Struct_1(20691i, 0u, vec4<bool>(true, false, false, false)), Struct_1(0i, 0u, vec4<bool>(false, true, false, true))), Struct_2(Struct_1(1i, 30447u, vec4<bool>(true, true, true, true)), vec4<bool>(false, false, false, false), vec2<u32>(27707u, 4294967295u), Struct_1(-34235i, 8851u, vec4<bool>(true, false, true, true)), Struct_1(-1i, 1u, vec4<bool>(false, true, false, false))), Struct_2(Struct_1(-1i, 1086u, vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, true), vec2<u32>(22399u, 23092u), Struct_1(i32(-2147483648), 16224u, vec4<bool>(false, true, false, false)), Struct_1(-1i, 4294967295u, vec4<bool>(true, false, false, true))), Struct_2(Struct_1(45987i, 0u, vec4<bool>(false, true, true, false)), vec4<bool>(false, true, true, true), vec2<u32>(1u, 7238u), Struct_1(1482i, 0u, vec4<bool>(true, true, false, false)), Struct_1(2147483647i, 1u, vec4<bool>(false, false, true, true))), Struct_2(Struct_1(-2233i, 1041u, vec4<bool>(false, false, false, false)), vec4<bool>(true, true, false, false), vec2<u32>(0u, 1u), Struct_1(-31968i, 0u, vec4<bool>(false, false, true, false)), Struct_1(1i, 56719u, vec4<bool>(true, false, false, false))), Struct_2(Struct_1(-20387i, 40117u, vec4<bool>(false, true, true, false)), vec4<bool>(false, true, true, false), vec2<u32>(31596u, 4294967295u), Struct_1(0i, 58153u, vec4<bool>(true, false, false, true)), Struct_1(i32(-2147483648), 4294967295u, vec4<bool>(true, true, false, true))), Struct_2(Struct_1(0i, 1u, vec4<bool>(true, true, false, false)), vec4<bool>(true, false, true, false), vec2<u32>(32982u, 0u), Struct_1(2147483647i, 4294967295u, vec4<bool>(false, true, false, false)), Struct_1(-11906i, 120054u, vec4<bool>(true, true, true, false))), Struct_2(Struct_1(1i, 57414u, vec4<bool>(true, true, false, false)), vec4<bool>(true, true, false, false), vec2<u32>(0u, 4294967295u), Struct_1(i32(-2147483648), 0u, vec4<bool>(false, true, false, true)), Struct_1(i32(-2147483648), 0u, vec4<bool>(true, false, false, false))), Struct_2(Struct_1(770i, 28251u, vec4<bool>(true, false, false, true)), vec4<bool>(false, true, true, true), vec2<u32>(7165u, 4294967295u), Struct_1(16254i, 5717u, vec4<bool>(false, false, false, true)), Struct_1(2147483647i, 1u, vec4<bool>(false, false, true, true))), Struct_2(Struct_1(-24341i, 4294967295u, vec4<bool>(true, false, true, true)), vec4<bool>(false, true, true, false), vec2<u32>(1u, 45851u), Struct_1(i32(-2147483648), 90532u, vec4<bool>(true, true, true, false)), Struct_1(i32(-2147483648), 4294967295u, vec4<bool>(false, false, false, false))), Struct_2(Struct_1(-1i, 16094u, vec4<bool>(false, false, false, false)), vec4<bool>(false, false, false, false), vec2<u32>(34115u, 21593u), Struct_1(-1i, 4294967295u, vec4<bool>(false, true, false, false)), Struct_1(53516i, 1u, vec4<bool>(true, true, false, false))), Struct_2(Struct_1(0i, 11010u, vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, true), vec2<u32>(1u, 8905u), Struct_1(-549i, 0u, vec4<bool>(true, false, false, true)), Struct_1(-9602i, 5069u, vec4<bool>(true, true, true, false))), Struct_2(Struct_1(34169i, 4294967295u, vec4<bool>(false, true, false, true)), vec4<bool>(false, true, false, true), vec2<u32>(0u, 4294967295u), Struct_1(2147483647i, 14516u, vec4<bool>(false, true, false, false)), Struct_1(-71298i, 1u, vec4<bool>(false, false, true, false))), Struct_2(Struct_1(2147483647i, 4294967295u, vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, true), vec2<u32>(15991u, 12717u), Struct_1(22286i, 1u, vec4<bool>(false, false, true, true)), Struct_1(-6042i, 38220u, vec4<bool>(true, true, true, true))));

var<private> global1: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(37260u, 1u, 13170u), vec3<u32>(0u, 11983u, 22719u), vec3<u32>(0u, 68919u, 4294967295u), vec3<u32>(85875u, 12827u, 0u), vec3<u32>(4294967295u, 46262u, 53411u), vec3<u32>(0u, 22819u, 1u), vec3<u32>(64297u, 4294967295u, 0u), vec3<u32>(12946u, 0u, 0u), vec3<u32>(1u, 44220u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 0u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<u32>) -> u32 {
    let var_0 = arg_2.x;
    let var_1 = Struct_2(arg_1.e, arg_0.a.c, ~vec2<u32>(abs(0u), ~(arg_0.d.b | 53293u)), arg_1.e, Struct_1(_wgslsmith_mod_i32(abs(arg_0.e.a), -1i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(16028u, 28788u), ~vec2<u32>(arg_0.e.b, 63837u)) % 32u), _wgslsmith_dot_vec2_u32(arg_2, ~arg_1.c), arg_1.b));
    var var_2 = Struct_2(Struct_1(2147483647i, 14631u, !(!(!vec4<bool>(true, arg_0.b.x, var_1.e.c.x, true)))), vec4<bool>(_wgslsmith_clamp_u32(~arg_0.e.b, arg_1.c.x, 85066u) < reverseBits(abs(4294967295u)), select(arg_1.d.c.x, !(true | var_1.d.c.x), true), (var_0 == _wgslsmith_mult_u32(var_1.e.b, 35438u)) | arg_0.e.c.x, !var_1.a.c.x), ~_wgslsmith_clamp_vec2_u32(arg_0.c, ~firstLeadingBit(var_1.c), _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, 38257u), ~arg_1.c, ~vec2<u32>(1u, 4294967295u))), arg_1.d, arg_0.d);
    global0 = array<Struct_2, 25>();
    let var_3 = vec4<f32>(-798f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1969f, 632f, arg_1.d.c.x)) + _wgslsmith_f_op_f32(round(-415f))), 1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-227f, 201f, var_2.b.x)), _wgslsmith_f_op_f32(select(-773f, -2146f, arg_1.e.c.x))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(714f, -911f, arg_0.e.c.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, 768f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(639f)), _wgslsmith_f_op_f32(791f - -919f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(149f, -270f)))));
    return firstTrailingBit(~(arg_2.x ^ _wgslsmith_sub_u32(arg_1.c.x, 53718u))) & max(~select(var_1.d.b, ~arg_1.d.b, any(arg_0.e.c.yz)), ~(~(arg_0.c.x | var_0)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -423f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-692f)), -791f)))));
    var var_1 = true;
    let var_2 = Struct_2(Struct_1(_wgslsmith_sub_i32(_wgslsmith_div_i32(min(u_input.a.x, -1i), u_input.e), u_input.b.x), 1u, vec4<bool>(true, true, true, func_3(Struct_2(Struct_1(33747i, 5972u, vec4<bool>(true, true, true, true)), vec4<bool>(true, false, false, false), vec2<u32>(1u, 4294967295u), Struct_1(-1i, 4294967295u, vec4<bool>(true, true, true, true)), Struct_1(-1i, 0u, vec4<bool>(true, false, false, false))), Struct_2(Struct_1(u_input.c.x, 0u, vec4<bool>(true, false, true, false)), vec4<bool>(false, false, true, true), vec2<u32>(19349u, 5654u), Struct_1(41068i, 1u, vec4<bool>(false, true, true, false)), Struct_1(u_input.d, 56953u, vec4<bool>(true, true, false, false))), vec2<u32>(5274u, 12062u)) == 4294967295u)), vec4<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), -28360i >= u_input.a.x)), true, true), _wgslsmith_div_vec2_u32(~max(firstTrailingBit(vec2<u32>(581u, 0u)), ~vec2<u32>(4294967295u, 58081u)), ~(~vec2<u32>(1u, 1u))), Struct_1(select(u_input.d, ~u_input.a.x, false), 4294967295u, select(vec4<bool>(true, var_0.x > var_0.x, true, any(vec4<bool>(true, true, false, true))), vec4<bool>(true, true, true, all(vec4<bool>(true, false, true, false))), true)), Struct_1(select(min(abs(-39407i), -3465i), reverseBits(33932i), var_0.x != var_0.x), 4294967295u, vec4<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), true, any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1831f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))) * -872f))));
    let var_4 = _wgslsmith_div_vec3_i32(vec3<i32>(min(_wgslsmith_sub_i32(u_input.e ^ -34395i, max(-22031i, 0i)), 1i), _wgslsmith_sub_i32(u_input.d, -2147483647i), -_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.a, 0i), u_input.b.xy)), ~abs(vec3<i32>(2147483647i >> (0u % 32u), ~u_input.a.x, -var_2.e.a)));
    return Struct_2(var_2.d, select(var_2.e.c, select(select(vec4<bool>(true, false, var_2.a.c.x, var_2.a.c.x), !vec4<bool>(var_2.e.c.x, false, true, false), vec4<bool>(var_2.b.x, true, var_2.b.x, true)), !(!var_2.d.c), var_2.d.c), ~var_2.a.b >= ~var_2.a.b), var_2.c ^ select(var_2.c, vec2<u32>(var_2.d.b >> (var_2.c.x % 32u), 1u), true), var_2.e, Struct_1(~(~var_2.e.a), var_2.d.b, var_2.d.c));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + 315f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -537f) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-174f, -878f)), -502f))), _wgslsmith_f_op_f32(f32(-1f) * -721f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2259f, 1626f) + -287f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-518f, -727f, arg_1.e.c.x)), _wgslsmith_f_op_f32(floor(1055f)))), _wgslsmith_f_op_f32(f32(-1f) * -1901f), _wgslsmith_f_op_f32(-925f * -663f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(146f, 756f, -1000f, -660f) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(777f, 1990f, -1936f, -936f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1213f, -571f, 1255f, 208f) * vec4<f32>(381f, -1321f, -694f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(617f, 431f, -324f, -1173f))))), arg_1.a.c)));
    global1 = array<vec3<u32>, 10>();
    let var_1 = _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(arg_1.d.b, firstTrailingBit(min(1707u, arg_1.c.x)))), ~vec2<u32>(reverseBits(23159u), 1u), ~arg_1.c);
    var var_2 = Struct_1(_wgslsmith_add_i32(arg_0.x, arg_1.a.a), ~0u, func_2().b);
    var var_3 = Struct_2(arg_1.e, !select(func_2().e.c, !vec4<bool>(var_2.c.x, false, true, var_2.c.x), select(arg_1.a.c, vec4<bool>(var_2.c.x, arg_1.e.c.x, arg_1.e.c.x, var_2.c.x), vec4<bool>(var_2.c.x, arg_1.e.c.x, var_2.c.x, false))), arg_1.c, arg_1.a, Struct_1(~((i32(-1i) * -28682i) & (var_2.a | arg_1.a.a)), 1u, vec4<bool>(var_2.c.x, var_2.c.x, !any(arg_1.a.c.yww), true)));
    return Struct_2(func_2().e, var_3.a.c, ~(~(arg_1.c >> (arg_1.c % vec2<u32>(32u)))) & _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.b, var_1.x >> (4294967295u % 32u)), ~(~vec2<u32>(var_3.a.b, 0u))), Struct_1(20343i & -(7467i << (var_3.a.b % 32u)), var_2.b, var_2.c), Struct_1(-48327i, ~(~max(4294967295u, arg_1.c.x)), select(vec4<bool>(all(var_3.e.c), false, arg_1.e.c.x, !var_2.c.x), var_2.c, var_2.c)));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: bool) -> bool {
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    var var_0 = arg_0.e;
    let var_1 = vec2<f32>(-1425f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -543f))))));
    var var_2 = vec2<i32>((i32(-1i) * -36021i) ^ countOneBits(u_input.c.x | -42446i), _wgslsmith_dot_vec3_i32(vec3<i32>(81214i, func_4(vec3<i32>(u_input.e, arg_2.a.a, u_input.a.x), func_4(u_input.b.yxw, Struct_2(arg_2.a, vec4<bool>(false, false, false, arg_0.a.c.x), vec2<u32>(var_0.b, var_0.b), Struct_1(var_0.a, 12762u, vec4<bool>(true, arg_2.d.c.x, arg_1.x, var_0.c.x)), arg_0.d))).a.a, 16035i), select(vec3<i32>(abs(u_input.e), _wgslsmith_sub_i32(arg_2.d.a, u_input.b.x), ~24655i), abs(~u_input.b.wzx), !(!vec3<bool>(true, true, var_0.c.x)))));
    return _wgslsmith_clamp_u32(62050u, max(~var_0.b, var_0.b), 27684u) < func_2().d.b;
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = Struct_1(-7692i, reverseBits(1u), vec4<bool>(func_5(func_4(u_input.c, func_2()), func_4(vec3<i32>(-2147483647i, 16396i, -12670i) >> (vec3<u32>(1u, 1u, 0u) % vec3<u32>(32u)), Struct_2(Struct_1(u_input.b.x, 0u, vec4<bool>(arg_0, arg_0, true, arg_0)), vec4<bool>(arg_0, arg_0, false, arg_0), vec2<u32>(51264u, 0u), Struct_1(u_input.d, 1u, vec4<bool>(true, arg_0, true, arg_0)), Struct_1(u_input.a.x, 16180u, vec4<bool>(arg_0, arg_0, true, true)))).e.c, Struct_2(Struct_1(u_input.c.x, 21577u, vec4<bool>(true, arg_0, false, arg_0)), !vec4<bool>(arg_0, arg_0, arg_0, arg_0), func_2().c, Struct_1(u_input.d, 1u, vec4<bool>(arg_0, arg_0, arg_0, arg_0)), Struct_1(2956i, 21592u, vec4<bool>(arg_0, false, false, arg_0))), arg_0), arg_0, all(vec3<bool>(true, true, false)), func_4(u_input.c, func_2()).d.c.x));
    let var_1 = min(44496u, 0u) & ~(~(firstTrailingBit(var_0.b) ^ (4294967295u << (var_0.b % 32u))));
    var var_2 = true;
    var var_3 = func_2().a;
    let var_4 = func_2();
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~((u_input.d ^ func_1(false)) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 71205u, 77354u), vec4<u32>(1u, 16287u, 5871u, 48640u)), vec4<u32>(0u, 0u, 20631u, 4294967295u)) % 32u)), _wgslsmith_div_u32(37370u, 4294967295u), !vec4<bool>(true, any(vec3<bool>(true, true, true)), true, false));
    var var_1 = global0[_wgslsmith_index_u32(~(~(var_0.b & _wgslsmith_sub_u32(var_0.b, 4294967295u))) | (~func_3(global0[_wgslsmith_index_u32(var_0.b, 25u)], global0[_wgslsmith_index_u32(~var_0.b, 25u)], ~vec2<u32>(37698u, 28968u)) | 27088u), 25u)];
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.b, ~var_0.b), 25u)];
    var var_2 = Struct_1(26667i, var_0.b, func_2().d.c);
    var var_3 = ~select(~var_1.c, var_1.c ^ ~(~var_1.c), ~var_0.b > var_0.b);
    var var_4 = var_0.c.zy;
    var var_5 = func_2().d;
    let var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(~(~var_1.c.x), 10u)] >> (~global1[_wgslsmith_index_u32(1u >> (~4294967295u % 32u), 10u)] % vec3<u32>(32u)));
}

