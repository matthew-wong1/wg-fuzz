struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(false, vec3<u32>(51201u, 0u, 7700u), vec3<f32>(559f, -1191f, -571f), vec2<f32>(1103f, -2518f), vec4<bool>(true, true, false, true)), Struct_2(false, vec3<u32>(25628u, 0u, 1u), vec3<f32>(295f, 1528f, 1080f), vec2<f32>(-100f, -913f), vec4<bool>(false, false, true, false)), Struct_2(true, vec3<u32>(1u, 4294967295u, 22864u), vec3<f32>(889f, 759f, 1000f), vec2<f32>(-567f, -665f), vec4<bool>(true, true, false, false)), Struct_2(false, vec3<u32>(4294967295u, 30798u, 24400u), vec3<f32>(-291f, 1000f, -1000f), vec2<f32>(-474f, 1044f), vec4<bool>(false, false, true, false)), Struct_2(false, vec3<u32>(55798u, 15743u, 4294967295u), vec3<f32>(803f, -1000f, -2431f), vec2<f32>(-132f, -1764f), vec4<bool>(true, true, false, true)), Struct_2(false, vec3<u32>(4294967295u, 45865u, 0u), vec3<f32>(559f, 1937f, -455f), vec2<f32>(-484f, -2029f), vec4<bool>(true, true, false, true)), Struct_2(true, vec3<u32>(2321u, 37612u, 28389u), vec3<f32>(262f, 1901f, -1208f), vec2<f32>(-906f, -808f), vec4<bool>(true, true, false, true)), Struct_2(true, vec3<u32>(1u, 4294967295u, 4294967295u), vec3<f32>(792f, -930f, -1000f), vec2<f32>(-433f, -373f), vec4<bool>(true, true, false, false)), Struct_2(true, vec3<u32>(53186u, 82438u, 0u), vec3<f32>(-187f, 1576f, -1621f), vec2<f32>(-1000f, -1682f), vec4<bool>(false, true, false, false)), Struct_2(false, vec3<u32>(4294967295u, 0u, 0u), vec3<f32>(-277f, 601f, -921f), vec2<f32>(-1298f, 2045f), vec4<bool>(true, false, false, false)), Struct_2(true, vec3<u32>(1u, 0u, 17694u), vec3<f32>(1631f, 121f, -874f), vec2<f32>(327f, 1353f), vec4<bool>(true, false, true, true)), Struct_2(true, vec3<u32>(1u, 4294967295u, 14680u), vec3<f32>(-396f, 891f, 1000f), vec2<f32>(-1254f, -598f), vec4<bool>(true, true, true, true)), Struct_2(false, vec3<u32>(8358u, 4294967295u, 1u), vec3<f32>(-193f, -118f, -2152f), vec2<f32>(-916f, 231f), vec4<bool>(true, false, false, false)), Struct_2(false, vec3<u32>(4294967295u, 31248u, 1u), vec3<f32>(-144f, -180f, 804f), vec2<f32>(-2714f, 622f), vec4<bool>(false, false, true, false)), Struct_2(true, vec3<u32>(1u, 26685u, 0u), vec3<f32>(114f, -1577f, 954f), vec2<f32>(-1000f, 1543f), vec4<bool>(false, true, true, false)), Struct_2(true, vec3<u32>(31512u, 30468u, 0u), vec3<f32>(963f, -1000f, -510f), vec2<f32>(-1000f, 1110f), vec4<bool>(false, true, false, false)), Struct_2(false, vec3<u32>(27966u, 77622u, 32832u), vec3<f32>(-378f, 1234f, -104f), vec2<f32>(1000f, -367f), vec4<bool>(false, false, false, true)), Struct_2(true, vec3<u32>(18166u, 1u, 40595u), vec3<f32>(1205f, 589f, 1030f), vec2<f32>(1201f, -801f), vec4<bool>(false, false, false, true)), Struct_2(true, vec3<u32>(0u, 44271u, 51170u), vec3<f32>(-1000f, 2348f, 339f), vec2<f32>(-1107f, 689f), vec4<bool>(true, false, false, false)), Struct_2(true, vec3<u32>(24293u, 55177u, 4294967295u), vec3<f32>(-792f, -2725f, -1303f), vec2<f32>(1308f, -1000f), vec4<bool>(false, true, true, true)), Struct_2(false, vec3<u32>(31991u, 1u, 12505u), vec3<f32>(-405f, -137f, 369f), vec2<f32>(180f, -811f), vec4<bool>(true, false, true, true)), Struct_2(false, vec3<u32>(68604u, 0u, 1u), vec3<f32>(804f, -217f, -824f), vec2<f32>(1075f, 948f), vec4<bool>(true, false, true, false)), Struct_2(true, vec3<u32>(21086u, 1225u, 17267u), vec3<f32>(-156f, -199f, 1903f), vec2<f32>(-1152f, -115f), vec4<bool>(true, true, true, true)), Struct_2(false, vec3<u32>(1u, 28368u, 40341u), vec3<f32>(-189f, -234f, 701f), vec2<f32>(914f, 406f), vec4<bool>(true, false, false, true)), Struct_2(false, vec3<u32>(47632u, 7444u, 0u), vec3<f32>(-1000f, -1000f, 507f), vec2<f32>(-409f, 268f), vec4<bool>(false, true, false, false)), Struct_2(false, vec3<u32>(110511u, 1u, 1u), vec3<f32>(-560f, -738f, 634f), vec2<f32>(-176f, 1066f), vec4<bool>(true, true, true, false)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>) -> vec4<f32> {
    var var_0 = arg_0.e.xwy;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1328f - -903f));
    global0 = array<Struct_2, 26>();
    let var_2 = vec2<i32>(0i, arg_2.x & _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_clamp_i32(-11314i, _wgslsmith_mult_i32(-2147483647i, -1i), _wgslsmith_add_i32(0i, 1i))));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-826f, -1472f, arg_0.c.x, 311f), vec4<f32>(-868f, 419f, -2288f, arg_0.d.x))))))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = array<Struct_2, 26>();
    var var_0 = Struct_2(!((arg_0.a ^ ~1i) < _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.d, u_input.c.x), 4053i)), ~arg_0.c.zyy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b.zyz * _wgslsmith_div_vec3_f32(arg_0.b.wwx, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(228f, -336f, -831f)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_0.b.yz), _wgslsmith_f_op_vec2_f32(-arg_0.b.xz))), !(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)))));
    global0 = array<Struct_2, 26>();
    var_0 = Struct_2(var_0.a, abs(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(44965u, arg_0.c.x, 0u), ~arg_0.c.xyw))), _wgslsmith_f_op_vec3_f32(select(arg_0.b.xzx, vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x + var_0.d.x), -1148f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.b.x)) - _wgslsmith_f_op_f32(round(var_0.d.x)))), vec3<bool>(!(false && var_0.a), all(select(var_0.e, vec4<bool>(var_0.a, true, var_0.e.x, var_0.e.x), vec4<bool>(var_0.e.x, var_0.a, var_0.e.x, false))), arg_0.c.x < _wgslsmith_mod_u32(4102u, var_0.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, arg_0.b.x))))), vec4<bool>(all(select(select(var_0.e, vec4<bool>(false, var_0.a, var_0.e.x, var_0.a), false), !vec4<bool>(var_0.a, var_0.e.x, var_0.a, true), true)), !(u_input.c.x > -2147483647i), all(!var_0.e), !any(select(var_0.e, vec4<bool>(false, false, var_0.a, var_0.a), var_0.e.x))));
    var var_1 = global0[_wgslsmith_index_u32(0u & var_0.b.x, 26u)];
    return abs(_wgslsmith_div_u32(max(39141u, _wgslsmith_clamp_u32(~var_0.b.x, arg_0.c.x >> (var_0.b.x % 32u), var_1.b.x)), 0u));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(11613i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1592f), 319f, -2036f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -523f) * 1081f), -1726f))), _wgslsmith_sub_vec4_u32(vec4<u32>(min(46032u, 10448u), 13636u, func_3(Struct_1(-6771i, vec4<f32>(-1047f, -1479f, 221f, -1000f), vec4<u32>(1u, 82491u, 4294967295u, 12961u), 4294967295u)), ~1u), max(vec4<u32>(40551u, func_3(Struct_1(u_input.a, vec4<f32>(-2006f, 799f, -2334f, -200f), vec4<u32>(25040u, 30200u, 1u, 0u), 56136u)), _wgslsmith_div_u32(51430u, 11431u), ~1u), _wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, 8670u, 20289u, 4294967295u), vec4<u32>(0u, 41435u, 25467u, 35514u), false), ~vec4<u32>(0u, 4294967295u, 24652u, 4294967295u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), max(vec3<u32>(0u, 6864u, 14879u), vec3<u32>(5316u, 0u, 114550u))) | ~(~countOneBits(4294967295u)));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(sign(-438f));
    let var_3 = u_input.b;
    var var_4 = Struct_2(select(true, (var_0.d < 1u) & true, false), vec3<u32>(~(~var_0.d << ((var_0.d | 36835u) % 32u)), var_0.c.x & abs(~4294967295u), 4294967295u), vec3<f32>(var_1.b.x, 712f, _wgslsmith_f_op_f32(abs(var_0.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(var_1.b.x)), 470f)) - _wgslsmith_f_op_vec4_f32(func_1(Struct_2(any(vec4<bool>(false, false, false, false)), var_0.c.zwx, vec3<f32>(var_1.b.x, 369f, -351f), var_1.b.xx, select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true))), firstLeadingBit(4294967295u >> (var_0.d % 32u)), vec2<i32>(_wgslsmith_mod_i32(var_0.a, var_1.a), -u_input.c.x))).zw), vec4<bool>(!(u_input.b.x < _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c.x), var_3.zx)), false, any(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))) && any(vec3<bool>(false, false, false))));
    return Struct_2(all(vec2<bool>(var_4.e.x, var_4.a)), var_4.b | ~(vec3<u32>(1u, 10866u, 1u) ^ ~var_4.b), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1077f, -278f, -649f), _wgslsmith_f_op_vec3_f32(min(var_0.b.wwx, vec3<f32>(318f, var_0.b.x, -208f))), select(var_4.e.wxx, var_4.e.yyy, var_4.a))) + var_4.c), _wgslsmith_f_op_vec3_f32(-var_0.b.wxw))), _wgslsmith_f_op_vec2_f32(-var_1.b.wy), select(select(vec4<bool>(var_4.a || var_4.a, false, false, !var_4.a), vec4<bool>(any(vec4<bool>(var_4.a, var_4.a, false, true)), false, all(vec4<bool>(var_4.e.x, true, true, var_4.e.x)), true), all(select(var_4.e.xzz, var_4.e.yyz, var_4.a))), vec4<bool>(_wgslsmith_f_op_f32(862f * var_2) == _wgslsmith_f_op_f32(f32(-1f) * -470f), !(var_0.a != -41849i), var_4.a, var_4.e.x), false));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> i32 {
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.xz;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-147f, -558f, 1023f)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(var_1.xy))));
    let var_3 = Struct_1(i32(-1i) * -7735i, _wgslsmith_f_op_vec4_f32(func_1(global0[_wgslsmith_index_u32(1u, 26u)], 19713u, select(abs(u_input.c), abs(var_0 & vec2<i32>(u_input.a, u_input.d)), vec2<bool>(true, true)))), reverseBits(vec4<u32>(~_wgslsmith_div_u32(0u, 4294967295u), ~_wgslsmith_div_u32(58255u, 20524u), countOneBits(max(1u, 58907u)), 84124u)), 4294967295u);
    let var_4 = _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, var_0.x), vec2<i32>(_wgslsmith_div_i32(var_0.x, -2147483647i), func_4(func_2(), global0[_wgslsmith_index_u32(func_3(var_3), 26u)], true))), vec2<i32>(var_3.a, -var_0.x));
    var var_5 = vec2<bool>(all(vec3<bool>(false, false, !all(vec3<bool>(true, false, false)))), true);
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b.x, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, var_0.x), ~vec2<i32>(~(-2147483647i), _wgslsmith_sub_i32(-39278i, -22831i)), ~vec2<i32>(-2147483647i, var_0.x) ^ -(u_input.c & vec2<i32>(var_3.a, -2147483647i))));
}

