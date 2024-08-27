struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: Struct_1,
    d: Struct_3,
    e: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(-1000f, -259f), vec2<f32>(478f, -444f), vec2<f32>(184f, 1299f), vec2<f32>(1028f, 1000f), vec2<f32>(1483f, 296f), vec2<f32>(1825f, -338f), vec2<f32>(841f, 1089f), vec2<f32>(250f, 933f), vec2<f32>(517f, -695f), vec2<f32>(310f, 1000f));

var<private> global2: f32 = 393f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_5) -> vec3<i32> {
    var var_0 = Struct_2(min(countOneBits(~_wgslsmith_mod_u32(35695u, arg_0.d)), reverseBits(87804u << (arg_0.d % 32u))), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, -179f, arg_0.c.x, 255f) - vec4<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, -738f)))))), ~(-vec2<i32>(arg_0.b.x, 2147483647i)) & -(~arg_0.b.xz), vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, ~0u), _wgslsmith_clamp_u32(arg_0.d, u_input.a.x | u_input.a.x, ~5125u), u_input.a.x, _wgslsmith_sub_u32(arg_0.d, arg_0.d) | (19782u & u_input.a.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1280f, arg_0.c.x, 186f, -764f) + vec4<f32>(-1532f, -398f, -237f, 115f)))), ~(~(vec2<i32>(arg_0.b.x, arg_0.b.x) ^ arg_0.b.zy)), vec4<u32>(select(38514u, 4294967295u, global0[_wgslsmith_index_u32(28847u, 15u)]), 6776u, 4294967295u, arg_0.d) >> (u_input.a % vec4<u32>(32u))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(1005f, _wgslsmith_f_op_f32(max(arg_0.c.x, -594f)))), _wgslsmith_f_op_f32(floor(arg_0.c.x)), 333f, -748f), arg_0.b.yy, min(abs(abs(u_input.a)), u_input.a)), reverseBits(~_wgslsmith_clamp_vec2_u32(u_input.a.ww, abs(u_input.a.ww), u_input.a.yx & u_input.a.wx)));
    global0 = array<bool, 15>();
    let var_1 = Struct_2(u_input.a.x, var_0.b, var_0.d, Struct_1(_wgslsmith_div_vec4_f32(var_0.c.a, var_0.c.a), vec2<i32>(-1i, var_0.d.b.x), var_0.c.c), _wgslsmith_sub_vec2_u32(vec2<u32>(~arg_0.d, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.zwz, u_input.a.xzy), ~u_input.a.yxw)), countOneBits(u_input.a.yz)));
    var_0 = Struct_2(firstLeadingBit(_wgslsmith_mod_u32(reverseBits(_wgslsmith_div_u32(arg_0.d, 0u)), ~1212u)), var_0.d, Struct_1(vec4<f32>(-1032f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1756f, arg_0.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1270f)))), _wgslsmith_f_op_f32(791f * arg_0.c.x)), _wgslsmith_sub_vec2_i32(var_0.b.b, max(arg_0.b.yy, -vec2<i32>(0i, 2147483647i))), var_0.d.c), var_1.d, vec2<u32>(_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(var_0.b.c, var_0.c.c)), ~vec4<u32>(arg_0.d, 1u, 20401u, arg_0.d)), _wgslsmith_sub_u32(~abs(u_input.a.x), arg_0.d)));
    var var_2 = 192f;
    return arg_0.b;
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = Struct_4(func_3(Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.wyy, vec3<u32>(42240u, u_input.a.x, 33624u), u_input.a.www), ~vec3<u32>(38826u, u_input.a.x, u_input.a.x)), 15u)], vec3<i32>(-19402i, u_input.b, firstTrailingBit(-1i)), vec3<f32>(-1249f, _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(1330f - 470f)), u_input.a.x)), Struct_3(-1368f, abs(abs(-22030i)), reverseBits(_wgslsmith_div_u32(34769u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 9927u, u_input.a.x)))), _wgslsmith_dot_vec4_i32(-vec4<i32>(-9354i, u_input.b, u_input.b, -6990i), vec4<i32>(~u_input.b, u_input.b, firstLeadingBit(1i), u_input.b))), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-291f, -1807f, -222f, -1443f))))), -select(vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(-1i, 15113i), true & arg_0), ~vec4<u32>(~0u, ~u_input.a.x, ~u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1132f, _wgslsmith_f_op_f32(-1429f + -446f)))), -_wgslsmith_div_i32(-35307i, u_input.b) >> (11901u % 32u), 0u >> (countOneBits(reverseBits(1u)) % 32u), _wgslsmith_add_i32(2147483647i, -1i)), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(540f, -798f, -354f, 1786f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1309f, -1000f, 804f, 651f))))), ~_wgslsmith_add_vec2_i32(-vec2<i32>(-1i, 1i), -vec2<i32>(2147483647i, -53213i)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a.x, 21009u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 3186u, 1u)), u_input.a & u_input.a) ^ _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(1u, 0u, 56035u, u_input.a.x)), _wgslsmith_div_vec4_u32(u_input.a, u_input.a))));
    global2 = _wgslsmith_f_op_f32(-var_0.d.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.a.wxx + var_0.c.a.xww), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1161f, -1789f, -205f), var_0.c.a.xzy, global0[_wgslsmith_index_u32(4294967295u, 15u)])))))));
    var var_2 = Struct_4(~var_0.a, Struct_3(-884f, _wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec3_i32(var_0.a, vec3<i32>(u_input.b, var_0.b.b, 2147483647i))), 48540i, max(u_input.b, reverseBits(10427i))), ~_wgslsmith_dot_vec2_u32(u_input.a.xx & vec2<u32>(30577u, 10048u), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.e.c.x, var_0.c.c.x), u_input.a.xx)), i32(-1i) * -10686i), Struct_1(var_0.c.a, -vec2<i32>(-u_input.b, _wgslsmith_sub_i32(49779i, 58169i)), var_0.c.c), Struct_3(-1226f, var_0.b.b, max(1u, var_0.c.c.x), max(~_wgslsmith_mult_i32(13277i, u_input.b), -2147483647i)), var_0.e);
    let var_3 = !all(!vec4<bool>(false, var_0.e.a.x >= 1321f, true, select(true, global0[_wgslsmith_index_u32(0u, 15u)], arg_0)));
    return 35076i;
}

fn func_1(arg_0: Struct_5) -> Struct_1 {
    var var_0 = -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, 4549i, 9459i) >> (u_input.a % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(-16138i, u_input.b, u_input.b, u_input.b)), func_2(all(vec2<bool>(true, arg_0.a)) | false), -2147483647i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, 8311i, 50167i, -15826i) << (u_input.a % vec4<u32>(32u))), -abs(vec4<i32>(2147483647i, arg_0.b.x, u_input.b, 0i))));
    let var_1 = 53508u;
    let var_2 = min(max(var_1 ^ 0u, select(12455u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), ~u_input.a.zz), any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(53799u, 15u)], arg_0.a, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), vec4<bool>(arg_0.a, arg_0.a, global0[_wgslsmith_index_u32(arg_0.d, 15u)], global0[_wgslsmith_index_u32(39774u, 15u)]), arg_0.a)))), arg_0.d);
    global2 = arg_0.c.x;
    var_0 = _wgslsmith_add_vec4_i32(-vec4<i32>(var_0.x, _wgslsmith_dot_vec2_i32(arg_0.b.xz, ~vec2<i32>(0i, 2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 24259i, 27442i, -1i), vec4<i32>(var_0.x, var_0.x, arg_0.b.x, arg_0.b.x)), _wgslsmith_add_i32(_wgslsmith_mod_i32(9860i, 24223i), u_input.b)), (vec4<i32>(1i, _wgslsmith_mult_i32(arg_0.b.x, arg_0.b.x), u_input.b, -2147483647i) | -(~vec4<i32>(14122i, arg_0.b.x, var_0.x, arg_0.b.x))) ^ vec4<i32>(2147483647i, func_2(global0[_wgslsmith_index_u32(var_2 ^ arg_0.d, 15u)]), 50245i, ~64242i));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-229f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.c.x, _wgslsmith_f_op_f32(exp2(arg_0.c.x)), arg_0.a)) - -723f), _wgslsmith_f_op_f32(-arg_0.c.x), 2011f), func_3(arg_0).xy, select(u_input.a, ~abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_2, 0u, u_input.a.x, var_1), vec4<u32>(8044u, 12942u, 100517u, 21022u))), select(!vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(arg_0.a || false, all(vec2<bool>(global0[_wgslsmith_index_u32(var_1, 15u)], arg_0.a)), true, false), !arg_0.a)));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_1) -> f32 {
    global0 = array<bool, 15>();
    var var_0 = -u_input.b;
    var var_1 = u_input.b;
    let var_2 = vec4<bool>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, arg_3.c.x), ~arg_3.c) > arg_3.c.x, select(any(!select(vec2<bool>(global0[_wgslsmith_index_u32(arg_2.x, 15u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(arg_3.c.x, 15u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 15u)]))), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(u_input.a.xwz, arg_0, false), ~vec3<u32>(1u, arg_2.x, 28153u)), 15u)], global0[_wgslsmith_index_u32(38969u, 15u)]), true, true);
    var var_3 = vec4<i32>(arg_3.b.x, _wgslsmith_div_i32(33283i, func_2(true)), _wgslsmith_add_i32(max(abs(1i), 0i), _wgslsmith_div_i32(min(arg_3.b.x ^ -27849i, u_input.b), 2147483647i)), _wgslsmith_dot_vec2_i32(arg_3.b, select(vec2<i32>(-6477i, 11510i), _wgslsmith_mod_vec2_i32(vec2<i32>(39158i, 44511i), arg_3.b), true)) >> (~14496u % 32u));
    return arg_3.a.x;
}

fn func_5(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = ~arg_1.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-679f, -1000f)))), _wgslsmith_f_op_f32(1f * arg_0))) - _wgslsmith_f_op_f32(max(935f, _wgslsmith_f_op_f32(round(485f))))));
    var var_2 = false;
    global2 = 1375f;
    let var_3 = all(vec3<bool>(true, true, !all(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(23409u, 15u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), vec2<bool>(true, false)))));
    return func_1(Struct_5(true, ~vec3<i32>(~32842i, firstTrailingBit(u_input.b), u_input.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, arg_0, 146f), vec3<f32>(-895f, 1912f, arg_0)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(func_4(vec3<u32>(0u, u_input.a.x, u_input.a.x), 1000f, vec2<u32>(21955u, 10576u), Struct_1(vec4<f32>(var_1, -548f, arg_0, var_1), vec2<i32>(u_input.b, u_input.b), u_input.a))), _wgslsmith_f_op_f32(f32(-1f) * -939f)), true)), _wgslsmith_sub_u32(58783u, _wgslsmith_mult_u32(1u, 21476u) ^ var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 10>();
    global1 = array<vec2<f32>, 10>();
    let var_0 = u_input.a.x;
    var var_1 = Struct_2(1u, func_5(_wgslsmith_f_op_f32(func_4(vec3<u32>(52353u, countOneBits(106886u), _wgslsmith_div_u32(1u, 18115u)), 1256f, vec2<u32>(var_0 << (59724u % 32u), ~8610u), func_1(Struct_5(false, vec3<i32>(u_input.b, -23980i, -68979i), vec3<f32>(935f, -1247f, 1300f), u_input.a.x)))), abs(_wgslsmith_mod_vec2_u32(~u_input.a.xz, min(u_input.a.xw, vec2<u32>(u_input.a.x, var_0))))), Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-258f)), 1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1094f, -417f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-668f * 2000f)), 1173f), abs(vec2<i32>(-2147483647i, firstTrailingBit(1i))), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2689f))), _wgslsmith_mod_vec2_u32(u_input.a.zz, select(u_input.a.wx, vec2<u32>(0u, 9400u), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]))).c), Struct_1(_wgslsmith_f_op_vec4_f32(func_1(Struct_5(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], vec3<i32>(u_input.b, 43916i, -15602i), vec3<f32>(854f, 518f, 997f), 9850u)).a * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -734f, -380f, 833f))))), -(abs(vec2<i32>(u_input.b, -11278i)) & _wgslsmith_add_vec2_i32(vec2<i32>(8442i, u_input.b), vec2<i32>(u_input.b, u_input.b))), ~reverseBits(firstTrailingBit(vec4<u32>(u_input.a.x, 1u, var_0, var_0)))), vec2<u32>(46105u, var_0));
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(_wgslsmith_div_i32(firstLeadingBit(0i), var_1.d.b.x << (var_0 % 32u)), firstTrailingBit(firstLeadingBit(u_input.b)), var_1.c.b.x), u_input.b, vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(Struct_5(false, vec3<i32>(u_input.b, var_1.c.b.x, u_input.b), var_1.b.a.ywx, 15375u)).a.x + var_1.b.a.x), var_1.d.a.x)), _wgslsmith_f_op_f32(func_4(vec3<u32>(~41412u, ~var_1.b.c.x, 4294967295u), _wgslsmith_f_op_f32(min(var_1.c.a.x, var_1.c.a.x)), var_1.e, Struct_1(_wgslsmith_f_op_vec4_f32(var_1.c.a - var_1.c.a), func_3(Struct_5(false, vec3<i32>(var_1.d.b.x, u_input.b, var_1.b.b.x), var_1.b.a.zyx, 14367u)).zx, ~var_1.c.c))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1878f) + _wgslsmith_f_op_f32(-var_1.b.a.x)))), func_5(var_1.b.a.x, vec2<u32>(27556u, 4294967295u)).b.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.c.a.x, 886f), vec2<f32>(var_1.d.a.x, 1209f), vec2<bool>(global0[_wgslsmith_index_u32(0u, 15u)], true))), vec2<f32>(373f, var_1.b.a.x))) * vec2<f32>(_wgslsmith_f_op_f32(step(737f, -1000f)), _wgslsmith_f_op_f32(1000f - var_1.c.a.x))), vec2<f32>(var_1.b.a.x, _wgslsmith_f_op_f32(-1037f + var_1.b.a.x)))));
}

