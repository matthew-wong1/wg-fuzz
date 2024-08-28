struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<u32, 31> = array<u32, 31>(48336u, 123440u, 55748u, 4294967295u, 24331u, 8359u, 0u, 1u, 38913u, 1u, 90579u, 4294967295u, 0u, 0u, 33372u, 4294967295u, 1796u, 34449u, 60665u, 17361u, 4294967295u, 100302u, 0u, 19529u, 16990u, 18760u, 15517u, 4294967295u, 47429u, 44750u, 60925u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = Struct_1(u_input.a, -188f, firstTrailingBit(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 31u)], 58503u, 29415u, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u)), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)], u_input.a.x)), vec4<u32>(countOneBits(4294967295u), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~0u, 31u)] ^ u_input.a.x, 31u)], 31u)], _wgslsmith_mult_u32(~4294967295u, 1u)), ~(4294967295u >> (u_input.a.x % 32u)) << (~(global2[_wgslsmith_index_u32(u_input.a.x, 31u)] >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)] % 32u)) % 32u), 1u));
    global2 = array<u32, 31>();
    let var_1 = Struct_1(~_wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.a, var_0.c), ~(~var_0.a)), var_0.b, vec3<u32>(4294967295u, 1u, _wgslsmith_sub_u32(var_0.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 36123u), vec2<u32>(1590u, u_input.a.x)), select(vec2<u32>(6045u, 1315u), var_0.c.yx, vec2<bool>(false, true))))), _wgslsmith_div_vec4_u32(max(vec4<u32>(~30166u, u_input.a.x, reverseBits(1u), u_input.a.x), ~(~var_0.d)), ~var_0.d));
    var var_2 = all(select(!vec2<bool>(arg_0 <= -6340i, false), !vec2<bool>(false, !global1.x), select(select(select(vec2<bool>(true, true), vec2<bool>(global1.x, false), vec2<bool>(true, global1.x)), vec2<bool>(global1.x, false), global1.x), vec2<bool>(global1.x, global1.x), !vec2<bool>(global1.x, false))));
    var_0 = var_1;
    return false;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool) -> f32 {
    global1 = vec2<bool>(true && (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_1.b)), _wgslsmith_f_op_f32(min(arg_1.b, 1155f)))) != _wgslsmith_f_op_f32(-arg_1.b)), true);
    var var_0 = !vec4<bool>(arg_2, arg_1.b == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), global1.x, arg_1.b <= 937f);
    global2 = array<u32, 31>();
    let var_1 = 4294967295u;
    var var_2 = -1000f;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b)))) * 1014f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: u32, arg_3: u32) -> vec3<bool> {
    var var_0 = Struct_1(~arg_1, _wgslsmith_f_op_f32(select(-191f, _wgslsmith_f_op_f32(func_4(~arg_1.yz >> (vec2<u32>(arg_2, 4294967295u) % vec2<u32>(32u)), Struct_1(~vec3<u32>(global2[_wgslsmith_index_u32(420u, 31u)], 41256u, 0u), _wgslsmith_f_op_f32(-2009f - 918f), ~u_input.a, ~vec4<u32>(arg_2, global2[_wgslsmith_index_u32(57436u, 31u)], global2[_wgslsmith_index_u32(arg_1.x, 31u)], 4294967295u)), func_3(-55496i) || true)), any(!vec3<bool>(false, arg_0.x, arg_0.x)))), _wgslsmith_div_vec3_u32(~(~abs(arg_1)), firstLeadingBit(arg_1)), ~_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, 17327u, arg_1.x, 4294967295u)), vec4<u32>(~u_input.a.x, ~1u, min(arg_1.x, 10592u), arg_2)));
    var var_1 = _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -2147483647i, 2147483647i), vec3<i32>(u_input.b, u_input.b, u_input.b))), vec3<i32>(_wgslsmith_mod_i32(0i, u_input.b ^ (-11588i | u_input.b)), abs(_wgslsmith_mod_i32(u_input.b << (arg_2 % 32u), countOneBits(u_input.b))), ~(max(u_input.b, 5220i) ^ (u_input.b >> (1443u % 32u)))));
    var var_2 = !arg_0.zx;
    var var_3 = Struct_1(_wgslsmith_mult_vec3_u32(select(_wgslsmith_sub_vec3_u32(~u_input.a, ~var_0.a), vec3<u32>(0u ^ arg_1.x, var_0.a.x, 1u), !vec3<bool>(false, var_2.x, true)), _wgslsmith_add_vec3_u32(arg_1, vec3<u32>(arg_1.x, 38531u, var_0.a.x))), _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(-var_0.b))), vec3<u32>(u_input.a.x, ~firstTrailingBit(arg_2 ^ 52132u), ~(~(u_input.a.x & 0u))), ~select(var_0.d, var_0.d, vec4<bool>(func_3(10534i), any(vec2<bool>(arg_0.x, global1.x)), true, true)));
    var var_4 = vec3<i32>(min(countOneBits(max(min(u_input.b, u_input.b), u_input.b)), -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), -vec2<i32>(0i, -6707i))), 0i, _wgslsmith_mult_i32(~u_input.b, (~u_input.b << (var_0.a.x % 32u)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 44802i), vec2<i32>(u_input.b, -2147483647i))));
    return select(arg_0.wxw, vec3<bool>(arg_0.x, any(select(arg_0.yx, select(arg_0.yw, vec2<bool>(true, true), var_2.x), false)), any(!vec3<bool>(false, global1.x, false))), select(select(arg_0.yzx, vec3<bool>(true, true, true), var_2.x), vec3<bool>(any(!vec3<bool>(arg_0.x, global1.x, var_2.x)), true, global1.x), select(select(!vec3<bool>(global1.x, true, false), vec3<bool>(global1.x, true, global1.x), arg_0.zyy), select(select(arg_0.wxw, arg_0.yxz, vec3<bool>(arg_0.x, false, false)), !vec3<bool>(global1.x, global1.x, false), !global1.x), !arg_0.yxx)));
}

fn func_1() -> Struct_1 {
    global1 = vec2<bool>(global1.x, all(func_2(!select(vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(true, global1.x, global1.x, false)), u_input.a, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(45676u, 31u)] << (17049u % 32u), 72406u), min(abs(4729u), countOneBits(0u)))));
    global2 = array<u32, 31>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-984f, -237f, 163f, -1000f)))), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1321f, 1000f, 132f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1637f, -1503f, 1245f, -655f) - vec4<f32>(-376f, 211f, 576f, 500f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(300f, 156f, 964f, -1000f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-791f, -1340f, 883f, -408f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1806f, 351f, -2017f, -1301f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-261f + 1518f), -1928f, -1155f, _wgslsmith_f_op_f32(1434f + 976f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-126f, -1637f, -611f, -1152f), vec4<f32>(1435f, -1671f, -462f, -1064f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-214f, 156f, -1106f, 913f)))))));
    var var_1 = _wgslsmith_mod_u32(~(~8593u), 83718u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, -213f, -1904f)))))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -736f), var_0.x), select(select(func_2(vec4<bool>(global1.x, global1.x, true, global1.x), u_input.a, global2[_wgslsmith_index_u32(u_input.a.x, 31u)], u_input.a.x), vec3<bool>(global1.x, true, true), true || global1.x), select(select(vec3<bool>(global1.x, true, false), vec3<bool>(false, global1.x, true), global1.x), !vec3<bool>(false, global1.x, false), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, global1.x, false), global1.x)))));
    return Struct_1(countOneBits(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, 0u, 37783u), ~reverseBits(u_input.a))), 859f, u_input.a, ~abs(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)], u_input.a.x, 15123u, global2[_wgslsmith_index_u32(25864u, 31u)])));
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global2 = array<u32, 31>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.a, ~0u, func_1());
    var var_1 = abs(global2[_wgslsmith_index_u32(~func_5(vec3<u32>(~0u, _wgslsmith_add_u32(u_input.a.x, 79137u), ~u_input.a.x), 0u << (~4294967295u % 32u), func_5(vec3<u32>(var_0.d.x, var_0.c.x, 26665u), _wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(var_0.a.x, u_input.a.x)), Struct_1(u_input.a, 311f, var_0.a, vec4<u32>(var_0.c.x, 7777u, 0u, u_input.a.x)))).d.x, 31u)]);
    var var_2 = select(select(vec3<bool>(any(vec2<bool>(global1.x, false)), !global1.x, global1.x), vec3<bool>(!global1.x, true, global1.x), select(select(vec3<bool>(global1.x, global1.x, true), !vec3<bool>(global1.x, false, true), global1.x), !func_2(vec4<bool>(true, true, global1.x, global1.x), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53785u, 31u)], 31u)], 31u)], 0u), var_0.d.x, 13242u), !vec3<bool>(global1.x, false, true))), func_2(!vec4<bool>(func_3(u_input.b), global1.x, func_3(u_input.b), false), _wgslsmith_mod_vec3_u32(min(vec3<u32>(63180u, u_input.a.x, global2[_wgslsmith_index_u32(42564u, 31u)]), countOneBits(vec3<u32>(55579u, var_0.c.x, u_input.a.x))), ~reverseBits(vec3<u32>(u_input.a.x, var_0.a.x, 75306u))), firstLeadingBit(~u_input.a.x), ~_wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(u_input.a.x, var_0.c.x))), select(vec3<bool>(any(vec4<bool>(global1.x, true, false, global1.x)) == true, false, func_2(select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x), true), ~u_input.a, ~1u, var_0.d.x).x), vec3<bool>(!(!global1.x), any(func_2(vec4<bool>(true, true, global1.x, global1.x), u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)], u_input.a.x).zx), global1.x), !(abs(u_input.a.x) != (4294967295u | u_input.a.x))));
    var_2 = select(!vec3<bool>(!all(vec4<bool>(true, true, true, var_2.x)), ~global2[_wgslsmith_index_u32(26942u, 31u)] == (7943u ^ global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), true), select(!(!(!vec3<bool>(var_2.x, true, false))), select(vec3<bool>(global1.x, var_2.x, !var_2.x), !select(vec3<bool>(true, global1.x, var_2.x), vec3<bool>(false, var_2.x, false), true), select(vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(true, global1.x, false), vec3<bool>(true, true, true))), select(!(!vec3<bool>(false, false, var_2.x)), vec3<bool>(all(vec2<bool>(false, false)), u_input.b < u_input.b, global1.x | global1.x), !global1.x)), global1.x);
    var var_3 = -_wgslsmith_div_vec4_i32(-(~(-vec4<i32>(2147483647i, u_input.b, 1i, u_input.b))), vec4<i32>(firstLeadingBit(u_input.b << (28223u % 32u)), firstTrailingBit(-45097i), u_input.b, u_input.b));
    var var_4 = Struct_1(var_0.d.xyy, func_5(u_input.a, ~(~(~59458u)), Struct_1(vec3<u32>(abs(1u), ~var_0.c.x, ~4294967295u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, var_0.b) - _wgslsmith_f_op_f32(f32(-1f) * -722f)), _wgslsmith_add_vec3_u32(var_0.a, vec3<u32>(54879u, global2[_wgslsmith_index_u32(74944u, 31u)], u_input.a.x)) & (vec3<u32>(45088u, 10429u, var_0.c.x) >> (u_input.a % vec3<u32>(32u))), vec4<u32>(4771u, 1u ^ global2[_wgslsmith_index_u32(0u, 31u)], ~182273u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39608u, 31u)], 31u)]))).b, abs(min(var_0.d.zyx, _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, 113794u), vec3<u32>(var_0.c.x, u_input.a.x, global2[_wgslsmith_index_u32(1u, 31u)]))) << (_wgslsmith_mod_vec3_u32(var_0.a, _wgslsmith_div_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(1u, 31u)], u_input.a.x, 4294967295u), var_0.c)) % vec3<u32>(32u))), vec4<u32>(((86936u & global2[_wgslsmith_index_u32(1u, 31u)]) & _wgslsmith_clamp_u32(u_input.a.x, 1u, 57626u)) >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.d.x, 31u)], 31u)] % 32u), max(0u, 46498u), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, global2[_wgslsmith_index_u32(var_0.d.x, 31u)]), global2[_wgslsmith_index_u32(~u_input.a.x, 31u)]) & ~_wgslsmith_div_u32(26173u, 15676u), 78098u));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, _wgslsmith_f_op_f32(-var_4.b), min(abs(~min(var_3.wzz, vec3<i32>(43074i, u_input.b, -20591i))), var_3.wzx), var_0.d.yy);
}

