struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec4<u32>(0u, 1u, 10540u, 22240u), -19809i, 643f, false, 0i), Struct_3(vec4<u32>(53874u, 53599u, 494u, 13408u), i32(-2147483648), -401f, false, -49188i), Struct_3(vec4<u32>(39459u, 18640u, 44483u, 27198u), 1529i, 1000f, false, 0i), Struct_3(vec4<u32>(79152u, 1u, 31528u, 1u), 37524i, 560f, false, -61262i), Struct_3(vec4<u32>(8025u, 85171u, 1u, 4294967295u), -1i, 1000f, false, -1i), Struct_3(vec4<u32>(4294967295u, 46601u, 15826u, 4294967295u), -11368i, 1045f, true, 40203i), Struct_3(vec4<u32>(18540u, 4194u, 55515u, 9437u), 0i, -375f, false, -20296i), Struct_3(vec4<u32>(53446u, 1u, 66361u, 16128u), -3517i, -197f, false, 107i), Struct_3(vec4<u32>(1u, 32486u, 4294967295u, 15328u), 0i, -467f, true, 11070i), Struct_3(vec4<u32>(0u, 50944u, 58115u, 16178u), 0i, -259f, true, -6282i), Struct_3(vec4<u32>(4294967295u, 25859u, 0u, 6528u), -1i, -770f, false, -54616i), Struct_3(vec4<u32>(11378u, 4294967295u, 1u, 1u), -4723i, -386f, false, 21513i), Struct_3(vec4<u32>(30585u, 4294967295u, 4294967295u, 70079u), 683i, -1000f, false, -36248i), Struct_3(vec4<u32>(26209u, 15035u, 23031u, 44523u), 0i, -473f, true, i32(-2147483648)), Struct_3(vec4<u32>(105682u, 1u, 1u, 9011u), -1i, 673f, true, 1i), Struct_3(vec4<u32>(0u, 0u, 21286u, 6960u), 15553i, 2005f, true, -1363i));

var<private> global1: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(33266u, 59865u, 4294967295u), vec3<u32>(1u, 1u, 0u), vec3<u32>(91050u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 84457u, 31622u), vec3<u32>(61730u, 61544u, 1u), vec3<u32>(71484u, 40827u, 67834u), vec3<u32>(7626u, 1u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 21139u, 6551u), vec3<u32>(4294967295u, 27129u, 4294967295u), vec3<u32>(23363u, 56254u, 14771u), vec3<u32>(50131u, 0u, 1u), vec3<u32>(22398u, 4294967295u, 1u), vec3<u32>(26334u, 1u, 37773u), vec3<u32>(1u, 53332u, 377u), vec3<u32>(4294967295u, 0u, 62034u), vec3<u32>(0u, 32655u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 40775u), vec3<u32>(0u, 43686u, 4294967295u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> vec2<f32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(arg_2.a.xy, arg_2.a.zy, true), reverseBits(vec2<u32>(arg_2.b, 75241u))), _wgslsmith_clamp_u32(max(arg_2.b, 49561u), _wgslsmith_clamp_u32(38984u, 0u, 47805u), ~2312u)), min(_wgslsmith_div_u32(select(abs(arg_2.b), arg_2.a.x, false), 0u), 15977u), arg_2.a.x), 16u)];
    var var_1 = false;
    let var_2 = _wgslsmith_mult_vec4_u32(select(min(~vec4<u32>(0u, 57640u, var_0.a.x, arg_2.b), vec4<u32>(~arg_2.b, var_0.a.x ^ 19730u, min(0u, var_0.a.x), arg_2.a.x | 1u)), var_0.a, false), ~var_0.a);
    global0 = array<Struct_3, 16>();
    var var_3 = arg_1.x;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(856f, _wgslsmith_f_op_f32(-1080f - 2459f)))) * arg_2.d.yy);
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(5037u, max(1u, 62806u))) ^ ~_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(46002u, 46703u), vec2<u32>(18576u, 4294967295u), vec2<u32>(0u, 16918u)), select(vec2<u32>(37245u, 96719u), vec2<u32>(8410u, 4294967295u), true)), vec2<u32>(_wgslsmith_mod_u32(1u, 34894u), 56152u));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(637f, 1323f))) + vec2<f32>(1059f, 1283f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1962f, -1425f), _wgslsmith_f_op_vec2_f32(func_3(true, vec4<i32>(arg_0, u_input.a.x, u_input.a.x, arg_0), Struct_1(vec4<u32>(17805u, var_0.x, var_0.x, 25042u), 22927u, u_input.a, vec4<f32>(606f, 333f, 313f, -904f)), -255f))) + vec2<f32>(_wgslsmith_f_op_f32(-182f - 423f), -1192f))));
    var var_2 = vec3<bool>(true, true, true);
    let var_3 = false;
    var var_4 = any(!select(vec3<bool>(24051i != u_input.b, 5546i < u_input.a.x, !var_2.x), !(!vec3<bool>(true, false, var_3)), !(!vec3<bool>(false, var_3, false))));
    return Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(select(var_0.x, 564u, true), firstLeadingBit(var_0.x), var_0.x, 7233u), ~(~vec4<u32>(var_0.x, 1u, 1u, 1u))), 1u, vec2<i32>(~_wgslsmith_mod_i32(u_input.b, 0i), -2147483647i), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 632f, var_1.x, 237f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, var_1.x, var_1.x, -1555f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1341f, 1142f, var_1.x, var_1.x) - vec4<f32>(var_1.x, 773f, -800f, var_1.x)))))), Struct_1(vec4<u32>(abs(var_0.x ^ var_0.x), 4294967295u, var_0.x | var_0.x, abs(~var_0.x)), firstTrailingBit(4294967295u), -vec2<i32>(arg_0, firstTrailingBit(-1i)), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1196f, 395f)), -131f)), 428f, -220f, var_1.x)), vec2<i32>(u_input.a.x, (u_input.a.x >> (0u % 32u)) & arg_0) << (countOneBits(_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(var_0.x, 33793u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(14422u, 0u), vec2<u32>(50226u, 15547u), vec2<u32>(0u, 63073u)))) % vec2<u32>(32u)), ~vec2<u32>(abs(var_0.x >> (var_0.x % 32u)), ~var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1722f)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> bool {
    global0 = array<Struct_3, 16>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.x * 766f) + 1f);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(f32(-1f) * -2748f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.d.x)) - _wgslsmith_f_op_f32(arg_1.d.x * 233f)))));
    var var_2 = ~(_wgslsmith_sub_u32(firstTrailingBit(13900u), 50915u) ^ ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b, 50747u, arg_1.a.x), global1[_wgslsmith_index_u32(arg_1.a.x, 19u)])));
    let var_3 = func_2(u_input.b);
    return select(true != !any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), false)), any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, false, all(vec4<bool>(true, true, false, false)), any(vec4<bool>(false, true, false, false))))), any(vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), any(vec3<bool>(true, true, true)) && false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 41146i;
    var var_1 = vec2<bool>(any(vec4<bool>(true, true, true, true)), true);
    let var_2 = select(select(vec3<bool>(func_1(1i, Struct_1(vec4<u32>(4294967295u, 1u, 31454u, 4294967295u), 1u, vec2<i32>(var_0, var_0), vec4<f32>(662f, -1340f, 189f, -1555f))) || (var_1.x | var_1.x), true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, var_1.x == var_1.x, false), var_1.x), select(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, var_0), vec3<i32>(u_input.b, var_0, var_0)) > 2147483647i, any(!vec3<bool>(true, var_1.x, true)), any(!vec2<bool>(var_1.x, false)))), select(select(select(select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, false, true), var_1.x), !vec3<bool>(var_1.x, var_1.x, false), false || var_1.x), vec3<bool>(!var_1.x, !var_1.x, true), select(vec3<bool>(false, false, true), vec3<bool>(true, var_1.x, true), select(vec3<bool>(true, var_1.x, true), vec3<bool>(true, var_1.x, var_1.x), var_1.x))), vec3<bool>(all(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x))), !select(var_1.x, var_1.x, var_1.x), !all(vec2<bool>(var_1.x, true))), select(vec3<bool>(var_1.x, all(vec4<bool>(var_1.x, false, true, var_1.x)), !var_1.x), select(vec3<bool>(var_1.x, false, false), vec3<bool>(true, false, var_1.x), !vec3<bool>(true, var_1.x, false)), vec3<bool>(!var_1.x, var_1.x, var_1.x))), select(select(select(!vec3<bool>(false, true, var_1.x), !vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false)), select(select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(false, var_1.x, true), var_1.x), select(vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false)), all(vec2<bool>(false, var_1.x))), true), vec3<bool>(true, false, true), var_1.x));
    let var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 1402i, (1i | u_input.a.x) | -14770i), min(vec3<i32>(firstTrailingBit(-3152i), u_input.b, reverseBits(var_0)), -(~vec3<i32>(-2147483647i, u_input.a.x, 3563i)))) << ((vec3<u32>(75402u, 1u, 41763u << (1u % 32u)) << (global1[_wgslsmith_index_u32(1u, 19u)] % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_4 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(78606u, 1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 19898u), vec2<u32>(1u, 1u))) & ~72266u;
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(func_2(2147483647i).b.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -851f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-258f + -1395f))) + func_2(1i).a.d.zxy));
    var var_6 = ~(~(_wgslsmith_dot_vec3_u32(vec3<u32>(25586u, 1u, 36095u) ^ global1[_wgslsmith_index_u32(4294967295u, 19u)], vec3<u32>(12323u, 14048u, 1u)) >> (_wgslsmith_sub_u32(firstLeadingBit(1u), 1u) % 32u)));
    var var_7 = select(vec4<bool>(any(vec4<bool>(!var_2.x, var_1.x && var_2.x, var_1.x & true, var_2.x)), all(vec3<bool>(var_2.x, false, true)), func_1(~(-1i), Struct_1(abs(vec4<u32>(52518u, 1u, 7604u, 0u)), abs(46212u), select(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(u_input.a.x, 25615i), false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-877f, 384f, 1109f, var_5.x)))), var_1.x), !vec4<bool>(true, var_1.x, true, _wgslsmith_f_op_f32(floor(-1262f)) != var_5.x), (i32(-1i) * -_wgslsmith_div_i32(var_3.x, var_3.x)) >= (i32(-1i) * -u_input.b));
    let var_8 = min(func_2(var_3.x ^ var_0).a.a.xx, countOneBits(func_2(var_3.x).a.a.zy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(firstLeadingBit(global1[_wgslsmith_index_u32(24428u, 19u)]), ~select(global1[_wgslsmith_index_u32(var_8.x, 19u)], vec3<u32>(var_8.x, 48648u, 80101u), var_7.xyx)) & var_8.x, vec3<f32>(var_5.x, _wgslsmith_f_op_f32(-590f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.x) * _wgslsmith_f_op_f32(select(var_5.x, -392f, true)))), _wgslsmith_f_op_vec2_f32(func_3(any(vec3<bool>(var_7.x, var_1.x, var_7.x)), vec4<i32>(u_input.b, u_input.b, 18912i, var_0), Struct_1(select(vec4<u32>(var_8.x, 4294967295u, 4346u, var_8.x), vec4<u32>(var_8.x, var_8.x, var_8.x, var_8.x), var_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_8.x, 47636u, 4987u), vec4<u32>(var_8.x, 1u, var_8.x, 4294967295u)), ~vec2<i32>(-2147483647i, -2147483647i), vec4<f32>(var_5.x, var_5.x, -405f, var_5.x)), 1f)).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x))), var_3.x);
}

