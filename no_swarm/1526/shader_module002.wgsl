struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, false);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    var var_0 = vec4<i32>(-25305i, -205i, -9520i, u_input.d);
    let var_1 = Struct_2(!vec2<bool>(false, arg_2), vec3<i32>(arg_0.a.x, i32(-1i) * -2147483647i, 0i), arg_1, u_input.a, ~(~countOneBits(~u_input.b.xww)));
    var var_2 = _wgslsmith_sub_u32(u_input.a, u_input.b.x);
    return select(select(select(vec4<bool>(true, arg_2, any(vec2<bool>(global1.x, true)), false), vec4<bool>(false, arg_2, true, true), arg_2 | true), !(!vec4<bool>(arg_2, false, arg_2, global1.x)), ~38566u >= u_input.b.x), vec4<bool>(false, any(select(select(vec4<bool>(var_1.a.x, var_1.a.x, true, true), vec4<bool>(global1.x, global1.x, var_1.a.x, false), vec4<bool>(false, var_1.a.x, global1.x, global1.x)), vec4<bool>(true, false, var_1.a.x, false), vec4<bool>(var_1.a.x, global1.x, true, false))), true, global1.x), !select(vec4<bool>(any(vec2<bool>(arg_2, true)), true, !arg_2, var_1.a.x | var_1.a.x), select(vec4<bool>(arg_2, global1.x, false, arg_2), vec4<bool>(arg_2, true, true, global1.x), !vec4<bool>(var_1.a.x, arg_2, global1.x, false)), (var_1.a.x & global1.x) | true));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec3<f32> {
    var var_0 = u_input.b.x;
    let var_1 = vec3<bool>(!global1.x, !(-4104i == _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, arg_0, arg_0), u_input.c), -u_input.c)), true);
    var_0 = u_input.a;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * arg_1), -739f) - 1394f) * 473f), 916f, arg_1, arg_1);
    var_0 = u_input.a;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-886f))), _wgslsmith_f_op_f32(sign(arg_1)), -1099f);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_i32(-min(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a.x, 1i), arg_2.a.xy)), -firstTrailingBit(u_input.d) << (~1u % 32u)) & 10177i;
    var var_1 = _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-114f * arg_3.x) + arg_1) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_3(3946i, arg_3.x)).x, arg_3.x)))));
    var_1 = -699f;
    var_1 = 865f;
    let var_2 = select(global0[_wgslsmith_index_u32(abs(abs(1u)), 21u)], select(global0[_wgslsmith_index_u32(u_input.a, 21u)], vec3<bool>(all(!vec4<bool>(global1.x, global1.x, true, global1.x)), 1u != _wgslsmith_mod_u32(7467u, u_input.b.x), true == !global1.x), any(global1.xw)), global1.x);
    return select(!(!(!(!vec4<bool>(true, global1.x, global1.x, false)))), select(select(!vec4<bool>(false, global1.x, false, var_2.x), !vec4<bool>(global1.x, var_2.x, true, true), true), !select(select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(false, global1.x, global1.x, var_2.x), vec4<bool>(true, false, true, false)), select(vec4<bool>(var_2.x, true, true, false), vec4<bool>(true, false, global1.x, var_2.x), vec4<bool>(true, true, var_2.x, var_2.x)), !vec4<bool>(var_2.x, global1.x, true, false)), !select(vec4<bool>(false, false, false, false), vec4<bool>(global1.x, true, false, var_2.x), vec4<bool>(true, true, var_2.x, false))), var_2.x);
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = 1u;
    global1 = select(!(!func_2(Struct_1(u_input.c), Struct_1(vec3<i32>(-27837i, u_input.c.x, 0i)), any(vec2<bool>(global1.x, global1.x)))), func_4(Struct_1(u_input.c), arg_0.x, Struct_1(vec3<i32>(-40953i, firstTrailingBit(u_input.d), u_input.c.x)), _wgslsmith_f_op_vec3_f32(func_3(i32(-1i) * -1i, arg_0.x))), !select(!select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(true, global1.x, false, global1.x)), vec4<bool>(true, u_input.c.x < 1i, global1.x, true), !global1.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-820f, _wgslsmith_f_op_f32(arg_0.x * -759f))), arg_0.x) * _wgslsmith_f_op_f32(floor(-266f)));
    var var_2 = -u_input.d;
    let var_3 = true;
    return Struct_1(_wgslsmith_mult_vec3_i32(-min(vec3<i32>(u_input.d, -26060i, u_input.d), vec3<i32>(u_input.d, 1i, u_input.c.x)) & select(vec3<i32>(u_input.c.x, -2147483647i, u_input.d), u_input.c, true), select(u_input.c, vec3<i32>(u_input.c.x, firstTrailingBit(u_input.d), firstTrailingBit(u_input.c.x)), select(!global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 4294967295u, 11885u), u_input.b), 21u)], any(vec4<bool>(false, false, var_3, false))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(!func_4(arg_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1483f), -1262f, false)), Struct_1(vec3<i32>(u_input.d, arg_1.a.x, u_input.d)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-681f, 306f, -352f)))).zx, select(vec3<i32>(arg_1.a.x, 0i, -27158i) >> (u_input.b.zxw % vec3<u32>(32u)), abs(select(arg_0.a, vec3<i32>(arg_0.a.x, 15208i, -25436i), global1.x)), global0[_wgslsmith_index_u32(~u_input.a, 21u)]) << (firstTrailingBit(u_input.b.wwy) % vec3<u32>(32u)), func_1(vec3<f32>(662f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1863f)) + _wgslsmith_f_op_f32(step(119f, 219f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1257f + 902f))))), ~(u_input.a << (u_input.a % 32u)), firstTrailingBit(_wgslsmith_mult_vec3_u32(u_input.b.zwz, select(reverseBits(u_input.b.xzx), u_input.b.zxz, !vec3<bool>(global1.x, false, global1.x)))));
    var_0 = Struct_2(!vec2<bool>(!(global1.x | false), !func_2(var_0.c, Struct_1(arg_0.a), true).x), arg_0.a, Struct_1(abs(arg_0.a)), 67715u, vec3<u32>(~(~_wgslsmith_sub_u32(u_input.b.x, 27075u)), ~var_0.e.x, abs(_wgslsmith_add_u32(max(var_0.d, u_input.a), ~u_input.a))));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-13984i, -2147483647i) << (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u)), vec2<i32>(var_0.b.x, -1i)), var_0.b.x, firstTrailingBit(u_input.c.x)), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.d, 1i, _wgslsmith_add_i32(-1i, arg_0.a.x), countOneBits(-1i)), _wgslsmith_add_vec4_i32(vec4<i32>(-10870i, 0i, arg_0.a.x, -37170i), vec4<i32>(-1i, 0i, -1i, arg_1.a.x)) << (abs(u_input.b) % vec4<u32>(32u)))), abs(-vec4<i32>(arg_0.a.x, 0i, 32513i, _wgslsmith_div_i32(arg_1.a.x, -1i))));
    let var_2 = true;
    let var_3 = countOneBits(var_0.d);
    return Struct_1(reverseBits(var_0.b ^ -vec3<i32>(-37844i, u_input.d, 4983i)));
}

fn func_6(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global1 = !vec4<bool>(global1.x, true, arg_3, false);
    let var_0 = abs(u_input.b.xx);
    var var_1 = abs(4294967295u | ~var_0.x);
    var var_2 = vec2<bool>(true, false);
    let var_3 = vec3<u32>(max(68542u, arg_1) << (_wgslsmith_mult_u32(2313u << (~u_input.b.x % 32u), 4294967295u) % 32u), ~_wgslsmith_add_u32(arg_1, ~var_0.x ^ select(1u, arg_1, false)), ~var_0.x);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_div_f32(-632f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-273f - _wgslsmith_f_op_f32(abs(1000f))))), ~u_input.b.x, func_5(func_1(vec3<f32>(1f, 1f, 1f)), Struct_1(select(vec3<i32>(u_input.c.x, u_input.c.x, -15028i), ~vec3<i32>(2147483647i, u_input.c.x, 0i), true))), ~countOneBits(func_5(Struct_1(vec3<i32>(0i, u_input.d, u_input.c.x)), Struct_1(u_input.c)).a.x) > ~(~2147483647i));
    let var_1 = ~(-(abs(var_0.a) | var_0.a)) & vec3<i32>(_wgslsmith_add_i32(-62442i, 2147483647i), ~(14276i | ~u_input.c.x), u_input.c.x);
    var var_2 = -34337i;
    let var_3 = Struct_1(var_1);
    var_0 = Struct_1(func_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1905f, 747f, -717f))))).a);
    let var_4 = Struct_2(global1.wx, var_0.a, Struct_1(var_3.a), _wgslsmith_add_u32(~(28546u << ((u_input.a & 4294967295u) % 32u)), ~u_input.a), u_input.b.xxz);
    let var_5 = func_1(vec3<f32>(1f, -470f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-157f, _wgslsmith_f_op_f32(f32(-1f) * -174f))))));
    let var_6 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-438f, -288f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1542f, 397f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-239f, 386f))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -864f) * _wgslsmith_f_op_f32(abs(-665f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(582f, 1000f))))), vec2<bool>(all(vec4<bool>(func_4(var_4.c, 2108f, var_3, vec3<f32>(2658f, 233f, -702f)).x, any(vec4<bool>(true, true, true, true)), var_4.d < var_4.e.x, global1.x)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xw, ~countOneBits(vec3<u32>(abs(u_input.a), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), u_input.a << (4294967295u % 32u))), vec4<u32>(~u_input.b.x, abs(_wgslsmith_div_u32(17588u, u_input.b.x)), ~u_input.b.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(select(14857u, 4294967295u, false), ~1u), 18946u)));
}

