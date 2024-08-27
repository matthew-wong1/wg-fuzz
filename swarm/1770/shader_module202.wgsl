struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(-798f, 845f), vec2<f32>(-1082f, 266f), vec2<f32>(-1835f, 955f), vec2<f32>(-349f, -960f), vec2<f32>(-854f, -572f), vec2<f32>(-977f, -521f), vec2<f32>(1593f, 198f), vec2<f32>(1374f, -245f), vec2<f32>(-401f, -148f), vec2<f32>(-1687f, 714f), vec2<f32>(-1095f, 241f), vec2<f32>(1000f, -1000f), vec2<f32>(449f, -159f), vec2<f32>(-649f, 747f), vec2<f32>(2697f, 1072f), vec2<f32>(722f, -642f), vec2<f32>(-259f, -515f), vec2<f32>(-1333f, -724f));

var<private> global1: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(false, vec4<i32>(58406i, 18414i, i32(-2147483648), -39127i), Struct_2(4294967295u)), Struct_3(false, vec4<i32>(0i, i32(-2147483648), 0i, 59220i), Struct_2(1u)), Struct_3(true, vec4<i32>(-1i, 5703i, 0i, 1i), Struct_2(4294967295u)), Struct_3(true, vec4<i32>(5708i, -23393i, -48769i, 1i), Struct_2(15905u)), Struct_3(false, vec4<i32>(2147483647i, 0i, 44435i, 0i), Struct_2(7361u)), Struct_3(true, vec4<i32>(0i, i32(-2147483648), -27616i, 0i), Struct_2(4294967295u)), Struct_3(false, vec4<i32>(6178i, 1i, 1i, 8629i), Struct_2(8046u)), Struct_3(true, vec4<i32>(i32(-2147483648), -14929i, -32639i, 2260i), Struct_2(1u)), Struct_3(false, vec4<i32>(0i, 45383i, -21590i, i32(-2147483648)), Struct_2(68221u)), Struct_3(true, vec4<i32>(i32(-2147483648), 0i, 28544i, 1i), Struct_2(23674u)), Struct_3(false, vec4<i32>(1i, 25285i, 2147483647i, 0i), Struct_2(0u)), Struct_3(false, vec4<i32>(2147483647i, i32(-2147483648), -2557i, -1i), Struct_2(61227u)), Struct_3(false, vec4<i32>(31218i, 16409i, 1i, 44211i), Struct_2(12762u)), Struct_3(true, vec4<i32>(-8816i, 1i, 24222i, 27291i), Struct_2(4294967295u)), Struct_3(false, vec4<i32>(2147483647i, 7118i, -19016i, 36901i), Struct_2(14060u)), Struct_3(false, vec4<i32>(0i, 0i, -49565i, 1i), Struct_2(1u)), Struct_3(true, vec4<i32>(1538i, -19515i, 37686i, -36644i), Struct_2(46670u)), Struct_3(false, vec4<i32>(i32(-2147483648), 0i, -1i, -17410i), Struct_2(0u)), Struct_3(false, vec4<i32>(1i, -26742i, 0i, 1i), Struct_2(444u)), Struct_3(true, vec4<i32>(1i, 0i, -1i, -1i), Struct_2(27060u)), Struct_3(true, vec4<i32>(i32(-2147483648), -4161i, 15646i, i32(-2147483648)), Struct_2(29034u)), Struct_3(false, vec4<i32>(-1i, 35195i, 10360i, i32(-2147483648)), Struct_2(4294967295u)), Struct_3(false, vec4<i32>(2147483647i, -37114i, 26223i, -6577i), Struct_2(0u)), Struct_3(false, vec4<i32>(1i, i32(-2147483648), -1i, -1i), Struct_2(0u)), Struct_3(false, vec4<i32>(2147483647i, 35802i, 2147483647i, -71198i), Struct_2(0u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<u32> {
    global1 = array<Struct_3, 25>();
    global1 = array<Struct_3, 25>();
    var var_0 = vec2<bool>(true, (-1001f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -786f))) | ((2147483647i >= _wgslsmith_sub_i32(u_input.a, 29769i)) && all(vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.d, 0i), -u_input.a), 10169i), abs(_wgslsmith_mult_i32(1i, u_input.d)), 13084i << (_wgslsmith_div_u32(firstTrailingBit(2575u), u_input.b.x) % 32u)), vec3<i32>(abs(-_wgslsmith_sub_i32(u_input.d, u_input.d)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.d, i32(-1i) * -2147483647i, -2147483647i), select(vec4<i32>(u_input.a, u_input.d, u_input.a, 1i), vec4<i32>(1i, u_input.a, 16212i, 2147483647i), var_0.x)), -u_input.a));
    global1 = array<Struct_3, 25>();
    return vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c & 0u, 4294967295u), vec2<u32>(~u_input.c, u_input.c)), u_input.b.x & _wgslsmith_dot_vec2_u32(~vec2<u32>(36050u, 0u), (vec2<u32>(u_input.c, 1u) | vec2<u32>(0u, 128720u)) >> (abs(u_input.b.zy) % vec2<u32>(32u))), 4294967295u, select(60087u, ~_wgslsmith_dot_vec3_u32(~u_input.b, ~vec3<u32>(u_input.c, u_input.b.x, 1962u)), select(var_0.x, all(vec4<bool>(var_0.x, false, true, var_0.x)), true)));
}

fn func_2() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(3543u, 18u)];
    global0 = array<vec2<f32>, 18>();
    let var_1 = ~max(countOneBits(_wgslsmith_div_vec4_u32(func_3(), max(vec4<u32>(u_input.b.x, 45175u, u_input.c, u_input.c), vec4<u32>(u_input.c, 52102u, 17450u, u_input.b.x)))), vec4<u32>(_wgslsmith_mod_u32(~u_input.b.x, ~4294967295u), firstLeadingBit(4294967295u), u_input.b.x, ~u_input.c >> ((1u & u_input.c) % 32u)));
    let var_2 = Struct_2(var_1.x);
    let var_3 = Struct_1(~var_1.xy, true);
    return u_input.d;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: u32) -> vec3<i32> {
    let var_0 = -1255f;
    global1 = array<Struct_3, 25>();
    global1 = array<Struct_3, 25>();
    let var_1 = (~vec3<u32>(~1u, ~arg_2, abs(1u)) ^ u_input.b) | vec3<u32>(1u, 0u, arg_0.x);
    let var_2 = vec2<u32>(34734u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_2, var_1.x, 29383u)), vec3<u32>(4294967295u >> (0u % 32u), arg_0.x, _wgslsmith_sub_u32(4294967295u, arg_2))) | u_input.b.x);
    return vec3<i32>(func_2(), ~(-19997i), _wgslsmith_div_i32(u_input.a ^ _wgslsmith_mult_i32(8112i, ~(-37174i)), func_2()));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32) -> vec4<u32> {
    var var_0 = Struct_2(~u_input.b.x);
    let var_1 = var_0.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(735f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1218f, arg_1))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-687f, -1215f, _wgslsmith_f_op_f32(min(arg_1, arg_1)))))), vec3<f32>(-108f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))), -322f)));
    var var_3 = Struct_2(44836u);
    let var_4 = vec3<u32>(100056u, firstTrailingBit(var_3.a), var_0.a);
    return max(_wgslsmith_mod_vec4_u32(firstTrailingBit(select(vec4<u32>(var_3.a, 12203u, 64587u, var_4.x), vec4<u32>(u_input.c, var_0.a, 51832u, 5371u), true)), countOneBits(select(vec4<u32>(161056u, u_input.b.x, 4294967295u, var_4.x), vec4<u32>(36869u, 83334u, 0u, var_4.x), vec4<bool>(true, true, false, true)))), abs(select(vec4<u32>(var_0.a, 18615u, u_input.b.x, var_4.x), vec4<u32>(var_0.a, 1u, 1u, var_3.a) ^ vec4<u32>(u_input.c, 1359u, 8521u, var_0.a), true))) | ~(~(~(vec4<u32>(var_3.a, 4294967295u, 1u, 52680u) & vec4<u32>(111490u, 16111u, 37145u, var_3.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(countOneBits(_wgslsmith_mod_vec3_u32(u_input.b, min(vec3<u32>(u_input.b.x, u_input.c, u_input.c), u_input.b))), vec3<bool>(any(vec2<bool>(true, true)), true, true), 34968u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-363f, 885f, false)))))));
    var var_1 = 34550u >> (1u % 32u);
    let var_2 = reverseBits(~(func_3() & vec4<u32>(abs(var_0.x), 15144u, 13660u, u_input.c)));
    let var_3 = 1f;
    let x = u_input.a;
    s_output = StorageBuffer(~select(select(vec4<u32>(0u, var_0.x, var_2.x, var_0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 84019u, var_2.x, u_input.c), var_2, var_2), true), ~vec4<u32>(var_2.x, u_input.b.x, var_2.x, var_2.x) ^ (var_2 ^ var_2), all(vec4<bool>(true, true, true, true))), reverseBits(vec4<u32>(0u, firstLeadingBit(0u), ~70396u, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3)))));
}

