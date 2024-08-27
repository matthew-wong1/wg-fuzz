struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec2<bool>(false, false), 30193u, Struct_1(69670u, 4294967295u, vec3<i32>(-17602i, -1488i, 970i)), -754f), Struct_2(vec2<bool>(false, false), 4294967295u, Struct_1(0u, 38318u, vec3<i32>(1i, -18694i, 2147483647i)), -210f), Struct_2(vec2<bool>(true, true), 4294967295u, Struct_1(49057u, 0u, vec3<i32>(2147483647i, -15888i, 29198i)), -176f), Struct_2(vec2<bool>(true, true), 52133u, Struct_1(450u, 4294967295u, vec3<i32>(1i, i32(-2147483648), -43784i)), -148f), Struct_2(vec2<bool>(true, true), 1u, Struct_1(17081u, 58527u, vec3<i32>(i32(-2147483648), -1325i, i32(-2147483648))), 355f), Struct_2(vec2<bool>(true, false), 1u, Struct_1(0u, 0u, vec3<i32>(0i, -35853i, 2147483647i)), -1280f), Struct_2(vec2<bool>(true, false), 1389u, Struct_1(1u, 24481u, vec3<i32>(0i, -1i, 20499i)), 785f), Struct_2(vec2<bool>(true, true), 0u, Struct_1(4294967295u, 28375u, vec3<i32>(-2338i, 15024i, i32(-2147483648))), -549f), Struct_2(vec2<bool>(false, false), 61235u, Struct_1(37361u, 0u, vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i)), -388f));

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> u32 {
    return 1u;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    global1 = !vec4<bool>(false, !all(vec2<bool>(global1.x, arg_1.a.x)) | !any(global1.wwz), true, global1.x);
    let var_0 = Struct_1(func_3(3483u, Struct_3(arg_0.a, -1i), arg_1.c, -1114f), countOneBits(countOneBits(abs(arg_1.b)) >> (arg_2 % 32u)), _wgslsmith_sub_vec3_i32(arg_1.c.c, ~(~arg_1.c.c)));
    var var_1 = Struct_1(arg_2, max(_wgslsmith_dot_vec3_u32(vec3<u32>(43937u, arg_1.c.a, 1u), vec3<u32>(u_input.a, arg_2, u_input.a)), ~_wgslsmith_clamp_u32(var_0.b, 35259u, 71403u)) << (~u_input.a % 32u), vec3<i32>(~max(2147483647i, -1i) >> (0u % 32u), countOneBits(arg_1.c.c.x), var_0.c.x));
    let var_2 = ~var_1.c.zy;
    var var_3 = Struct_2(vec2<bool>((true || select(false, arg_1.a.x, global1.x)) & !all(vec2<bool>(arg_1.a.x, false)), any(global1.yww)), _wgslsmith_clamp_u32(abs(~16505u), func_3(_wgslsmith_mult_u32(~u_input.a, min(42031u, 34263u)), Struct_3(abs(var_2), -2974i), var_0, arg_1.d), ~1u), var_0, arg_1.d);
    return arg_1.c;
}

fn func_4(arg_0: Struct_1) -> i32 {
    global0 = array<Struct_2, 9>();
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1440f) + 646f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -619f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(472f + -206f)))), -150f));
    let var_1 = Struct_2(select(select(select(!global1.yz, global1.xx, !global1.x), select(vec2<bool>(false, global1.x), global1.yx, true), vec2<bool>(true, global1.x)), !select(vec2<bool>(global1.x, true), vec2<bool>(true, false), vec2<bool>(global1.x, true)), select(vec2<bool>(true == global1.x, arg_0.a >= arg_0.a), global1.yz, !global1.x)), 1u, arg_0, var_0);
    global1 = select(select(!vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, any(select(vec3<bool>(true, false, var_1.a.x), global1.yxz, vec3<bool>(false, global1.x, global1.x)))), vec4<bool>(select(all(vec3<bool>(global1.x, true, true)), !global1.x, u_input.a <= 669u), select(var_1.a.x, any(vec3<bool>(global1.x, var_1.a.x, false)), all(global1.zww)), true, global1.x)), !(!select(!vec4<bool>(false, false, global1.x, var_1.a.x), select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(true, false, false, true), var_1.a.x), vec4<bool>(true, var_1.a.x, false, true))), -2147483647i >= var_1.c.c.x);
    let var_2 = func_2(Struct_3(firstLeadingBit(reverseBits(var_1.c.c.yy)), reverseBits(-1i)), Struct_2(select(select(vec2<bool>(global1.x, global1.x), select(var_1.a, var_1.a, global1.xw), global1.x & false), vec2<bool>(any(vec2<bool>(true, global1.x)), var_1.a.x), true), u_input.a, func_2(Struct_3(var_1.c.c.zy, -var_1.c.c.x), Struct_2(global1.yy, reverseBits(4294967295u), func_2(Struct_3(var_1.c.c.yy, var_1.c.c.x), Struct_2(vec2<bool>(var_1.a.x, global1.x), var_1.c.a, Struct_1(var_1.c.a, 1u, arg_0.c), var_1.d), 1u), _wgslsmith_f_op_f32(var_1.d + var_1.d)), select(abs(1u), 10781u, true)), -695f), 4294967295u);
    return arg_0.c.x;
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(u_input.a >> (4294967295u % 32u), u_input.a, vec3<i32>(1i, -10516i, 8756i));
    return Struct_3(_wgslsmith_mult_vec2_i32(vec2<i32>(func_4(func_2(Struct_3(vec2<i32>(var_0.c.x, 24374i), var_0.c.x), global0[_wgslsmith_index_u32(68768u, 9u)], u_input.a)), (-1i >> (u_input.a % 32u)) & firstLeadingBit(-38358i)), -firstTrailingBit(vec2<i32>(var_0.c.x, 1i)) & _wgslsmith_sub_vec2_i32(-vec2<i32>(0i, 10756i), var_0.c.xy)), _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_div_i32(2147483647i, var_0.c.x), _wgslsmith_dot_vec3_i32(var_0.c, var_0.c), var_0.c.x), vec3<i32>(-18452i, -1i, var_0.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(745f, -148f)) - -1763f)) * -1926f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(820f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(786f, -124f, true)), -1954f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(847f, -697f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1838f * 2039f)))));
    var var_2 = 4294967295u;
    var_2 = 4294967295u;
    var var_3 = func_2(Struct_3(_wgslsmith_sub_vec2_i32(~(vec2<i32>(-1i, var_0.b) ^ vec2<i32>(0i, -1i)), -(~vec2<i32>(var_0.a.x, var_0.b))), _wgslsmith_clamp_i32(-57068i & var_0.a.x, func_1().a.x, 1i) >> (min(_wgslsmith_mult_u32(1u, 11412u), ~5104u) % 32u)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 0u), 9u)], select(u_input.a, u_input.a, true));
    var var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(var_1)), var_1, select(vec3<bool>(!global1.x, global1.x, ~u_input.a <= ~48705u), select(global1.zxx, vec3<bool>(any(vec2<bool>(global1.x, global1.x)), any(vec2<bool>(global1.x, global1.x)), true), select(global1.wyz, vec3<bool>(true, global1.x, false), !vec3<bool>(true, global1.x, true))), !(!(!vec3<bool>(true, true, global1.x))))));
    var_2 = firstLeadingBit(27818u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, var_0.a.x, var_3.c.x) | var_3.c, var_3.c)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_sub_vec4_u32(min(~select(vec4<u32>(31307u, 1u, 1u, u_input.a), vec4<u32>(1u, 89892u, var_3.a, var_3.a), global1.x), vec4<u32>(86556u, u_input.a, u_input.a, var_3.b) | ~vec4<u32>(var_3.b, 86966u, u_input.a, 1u)), ~vec4<u32>(func_3(43206u, var_0, Struct_1(4270u, 91748u, var_3.c), 2050f), _wgslsmith_dot_vec4_u32(vec4<u32>(8008u, 0u, 1u, 4294967295u), vec4<u32>(4294967295u, u_input.a, u_input.a, 14191u)), countOneBits(var_3.a), 0u)));
}

