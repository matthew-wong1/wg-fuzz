struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(1u, 41459u, 4294967295u, 23364u, 1u, 20132u, 4294967295u, 4294967295u, 66811u, 4294967295u, 0u);

var<private> global1: array<Struct_1, 6>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = select(vec4<u32>(_wgslsmith_clamp_u32(u_input.c, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.e, 9203u), ~vec2<u32>(1u, u_input.c)), 11u)], global0[_wgslsmith_index_u32(0u, 11u)]), 4294967295u, ~_wgslsmith_mod_u32(abs(global0[_wgslsmith_index_u32(u_input.c, 11u)]), ~80194u), global0[_wgslsmith_index_u32(4294967295u, 11u)] ^ u_input.e), select(vec4<u32>(abs(~1u), _wgslsmith_mod_u32(21449u, firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 11u)])), firstLeadingBit(firstLeadingBit(u_input.c)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1u, 17264u))), ~vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e, u_input.e, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 11u)], 11u)], 11u)]), 11u)], ~52193u, global0[_wgslsmith_index_u32(u_input.e, 11u)], 66476u), false), !any(vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 0u), var_0.zz ^ ~vec2<u32>(1u, ~1u));
    let var_2 = true;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -265f), any(vec4<bool>(false, var_2, false, !(u_input.a == u_input.a))), _wgslsmith_mod_i32(-2147483647i, -firstLeadingBit(u_input.b ^ u_input.b)), var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -170f))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1220f - _wgslsmith_f_op_f32(trunc(1744f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f), var_3.a)), !select(var_2, -12869i >= ~var_3.c, true), 20584i, var_3.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(923f * 1403f))))) * var_3.a));
    return !(!(reverseBits(_wgslsmith_mult_i32(var_4.c, 0i)) <= 16934i));
}

fn func_2(arg_0: vec3<i32>) -> vec2<bool> {
    var var_0 = select(_wgslsmith_mod_u32(u_input.c >> (18614u % 32u), _wgslsmith_mod_u32(1u, 461u)), _wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(u_input.c, 11u)]) | ~_wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(u_input.c, 11u)]), ~max(~12589u, countOneBits(14968u))), all(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))));
    let var_1 = func_3();
    let var_2 = ~select(vec4<i32>(_wgslsmith_mod_i32(2147483647i, -2147483647i), ~(-55167i), -arg_0.x, ~arg_0.x), ~(~vec4<i32>(-2147483647i, 73801i, -7126i, -1i)), true | !var_1) ^ _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 2147483647i), -vec4<i32>(u_input.d, u_input.a, u_input.d, 8748i), vec4<bool>(false, false, var_1, var_1)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, u_input.b, arg_0.x, -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, 0i, 0i, -8308i), vec4<i32>(1i, u_input.a, arg_0.x, u_input.b), vec4<i32>(arg_0.x, 2147483647i, 27055i, -26151i)))), vec4<i32>(-1i) * -vec4<i32>(arg_0.x, 2147483647i, u_input.d, 32131i));
    let var_3 = select(!vec4<bool>(var_1, true, !(!var_1), var_1), select(vec4<bool>(var_1, var_1, select(u_input.c, 20875u, false) == global0[_wgslsmith_index_u32(firstLeadingBit(1u), 11u)], var_1), !select(vec4<bool>(var_1, var_1, var_1, var_1), select(vec4<bool>(false, var_1, var_1, true), vec4<bool>(var_1, var_1, true, var_1), var_1), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, var_1, var_1), false)), vec4<bool>(func_3(), any(select(vec3<bool>(var_1, false, false), vec3<bool>(var_1, false, var_1), vec3<bool>(true, var_1, var_1))), !var_1, var_1)), select(vec4<bool>(true, var_1, var_1, true), vec4<bool>(2147483647i != _wgslsmith_mult_i32(var_2.x, -125i), var_1, true, false), vec4<bool>(true, any(!vec2<bool>(var_1, var_1)), var_1, false)));
    var_0 = 4294967295u;
    return !var_3.xz;
}

fn func_1() -> vec2<f32> {
    let var_0 = 1f;
    let var_1 = _wgslsmith_f_op_f32(floor(var_0));
    let var_2 = vec2<i32>(-1i, i32(-1i) * -(i32(-1i) * -1i));
    let var_3 = global1[_wgslsmith_index_u32(u_input.e, 6u)];
    var var_4 = select(!(!(!func_2(vec3<i32>(0i, 0i, u_input.d)))), select(!(!(!vec2<bool>(var_3.b, var_3.d))), select(!vec2<bool>(var_3.d, var_3.b), !select(vec2<bool>(false, var_3.b), vec2<bool>(var_3.b, false), vec2<bool>(var_3.b, false)), vec2<bool>(any(vec2<bool>(false, var_3.d)), false)), select(select(select(vec2<bool>(var_3.b, var_3.d), vec2<bool>(var_3.b, true), vec2<bool>(var_3.d, false)), vec2<bool>(false, var_3.b), func_2(vec3<i32>(-2147483647i, 2147483647i, -1i))), !vec2<bool>(var_3.b, var_3.d), select(!vec2<bool>(var_3.d, true), vec2<bool>(false, var_3.b), select(vec2<bool>(var_3.d, false), vec2<bool>(var_3.d, var_3.d), vec2<bool>(false, var_3.b))))), func_2(vec3<i32>(var_2.x, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 41308i, 1i), vec3<i32>(-40438i, 4643i, var_3.c)) << (u_input.e % 32u))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-590f - var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(min(var_0, 613f)))) * vec2<f32>(_wgslsmith_f_op_f32(-1965f - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: bool) -> vec4<i32> {
    global0 = array<u32, 11>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -305f) * 1189f))))), arg_2 && (all(select(vec3<bool>(arg_2, false, false), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(true, arg_2, arg_2))) || false), 2147483647i, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f + 2278f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1014f))))) * -1534f));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(559f, arg_0.x, -384f, var_0.e) + vec4<f32>(-1223f, 782f, -958f, 1539f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, 311f, arg_0.x, arg_0.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1000f, -832f, var_0.a))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1355f, var_0.e, -126f, arg_0.x), vec4<f32>(arg_0.x, -214f, arg_0.x, var_0.a)) + _wgslsmith_div_vec4_f32(vec4<f32>(249f, -919f, arg_0.x, 555f), vec4<f32>(-1031f, 672f, var_0.a, 282f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1736f), 327f, 1000f, var_0.a))), vec4<bool>(true, var_0.d, any(select(vec3<bool>(true, false, false), vec3<bool>(true, arg_2, true), vec3<bool>(arg_2, false, arg_2))), var_0.d)));
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-656f - arg_0.x)))), -241f), true, _wgslsmith_mod_i32(~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -9965i), vec3<i32>(u_input.a, -79317i, -2147483647i)), var_0.c), -(i32(-1i) * -6550i) | max(select(-2147483647i, u_input.d, arg_2), 2147483647i)), var_0.b, var_1.x);
    return countOneBits(-vec4<i32>(u_input.a, -2147483647i >> (u_input.c % 32u), 1i << (u_input.e % 32u), ~(-4803i)) & _wgslsmith_sub_vec4_i32(-reverseBits(vec4<i32>(u_input.b, var_2.c, var_0.c, var_0.c)), _wgslsmith_add_vec4_i32(-vec4<i32>(-30892i, -1i, u_input.b, var_0.c), ~vec4<i32>(var_2.c, -2147483647i, -34774i, var_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~0u);
    let var_1 = _wgslsmith_mult_vec4_i32(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())), 4294967295u, any(vec2<bool>(false, true)) & func_2(vec3<i32>(-22595i, -38836i, 54378i)).x), vec4<i32>(2147483647i, u_input.a, -21646i, u_input.d ^ 1i));
    global0 = array<u32, 11>();
    global1 = array<Struct_1, 6>();
    global0 = array<u32, 11>();
    global1 = array<Struct_1, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1499f, 813f), vec2<f32>(1414f, 1298f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-839f, -360f) - vec2<f32>(1548f, 435f))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(1805f)), _wgslsmith_div_f32(-907f, -1000f))) + vec2<f32>(-155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2401f - -781f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(602f, 618f, 505f) * vec3<f32>(-483f, 675f, -1800f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1052f, -763f, -823f)))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(110f, 968f, -715f), vec3<f32>(-1000f, -569f, -1324f), vec3<bool>(true, true, true)))))), max(1i, select(var_1.x, var_1.x, true)));
}

