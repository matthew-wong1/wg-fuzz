struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2314f;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(1i, 691f, vec4<f32>(-433f, -569f, -414f, -559f), vec2<f32>(242f, 1353f), 62631i), Struct_1(i32(-2147483648), -1647f, vec4<f32>(547f, -608f, 523f, -1671f), vec2<f32>(1074f, 667f), -28282i), Struct_1(i32(-2147483648), 672f, vec4<f32>(1124f, 2442f, 818f, 2227f), vec2<f32>(-1596f, -458f), i32(-2147483648)), Struct_1(13913i, 1759f, vec4<f32>(583f, -2482f, -753f, 141f), vec2<f32>(-378f, 1377f), 2147483647i), Struct_1(1i, -541f, vec4<f32>(2278f, -343f, -204f, -323f), vec2<f32>(-376f, -596f), -1i), Struct_1(-4004i, 1000f, vec4<f32>(672f, 622f, 683f, 189f), vec2<f32>(814f, -1000f), 2147483647i), Struct_1(-72213i, -1000f, vec4<f32>(487f, 1000f, -376f, -799f), vec2<f32>(221f, -1661f), 0i), Struct_1(i32(-2147483648), 750f, vec4<f32>(-185f, -538f, 1000f, -160f), vec2<f32>(-386f, 523f), 1i), Struct_1(-4108i, -612f, vec4<f32>(765f, 104f, -555f, -902f), vec2<f32>(-582f, -1000f), 0i), Struct_1(-4819i, -1000f, vec4<f32>(2994f, -660f, -1007f, 101f), vec2<f32>(248f, 113f), 2147483647i), Struct_1(7253i, -1000f, vec4<f32>(-1612f, 229f, -189f, 275f), vec2<f32>(-1376f, 541f), 1i), Struct_1(0i, -1641f, vec4<f32>(-1506f, 989f, -1017f, -1000f), vec2<f32>(1235f, 1000f), 1i), Struct_1(1i, 484f, vec4<f32>(791f, -1269f, -1924f, -2009f), vec2<f32>(1820f, -621f), -26923i), Struct_1(i32(-2147483648), -862f, vec4<f32>(-190f, 392f, -704f, -1342f), vec2<f32>(1000f, 371f), 28047i), Struct_1(27672i, 1563f, vec4<f32>(1045f, 146f, -116f, -196f), vec2<f32>(1046f, 254f), -451i), Struct_1(31463i, -1000f, vec4<f32>(2616f, 716f, -102f, 716f), vec2<f32>(1000f, 180f), 0i));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    var var_0 = true;
    let var_1 = Struct_3(_wgslsmith_mod_vec4_i32(u_input.b, u_input.b) | vec4<i32>(select(16092i, -9346i, any(vec2<bool>(arg_0, false))), -2147483647i, reverseBits(1i), -2147483647i), Struct_1(~42022i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1013f)), _wgslsmith_f_op_f32(trunc(1f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-454f, 1109f, -293f, 664f) - vec4<f32>(1145f, 1525f, -2098f, -1453f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1310f, 163f, 128f, 2196f), vec4<f32>(2008f, 2750f, -500f, -325f), arg_0)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-298f))), _wgslsmith_f_op_f32(step(-303f, _wgslsmith_f_op_f32(-1438f - 178f)))), min(2147483647i, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.a), firstTrailingBit(65705i)))), _wgslsmith_f_op_f32(f32(-1f) * -656f));
    return firstLeadingBit(~((firstLeadingBit(vec4<i32>(27285i, 11666i, var_1.a.x, -2147483647i)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) ^ _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a, u_input.b.x, 2147483647i, 51729i), u_input.b)));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_mod_vec3_u32(select(vec3<u32>(_wgslsmith_sub_u32(arg_0 >> (69597u % 32u), arg_3.b), 28439u, ~20859u), vec3<u32>(arg_0, ~arg_3.b, arg_0), (arg_2.x & true) || (any(vec2<bool>(arg_2.x, arg_2.x)) | any(vec4<bool>(arg_2.x, true, true, false)))), firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(14742u, 4294967295u, arg_0), vec3<u32>(arg_3.b, arg_3.b, 15590u)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, arg_3.b, 106999u), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 50583u, 4294967295u), vec3<u32>(53886u, 66446u, arg_3.b))) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_add_vec4_i32(arg_1.a, vec4<i32>(2147483647i, 0i, ~11211i, ~(-1i)))) & (13155i >> (arg_3.b % 32u));
    let var_2 = arg_2.x;
    global1 = array<Struct_1, 16>();
    let var_3 = Struct_3(func_3(true), Struct_1(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.a.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, arg_3.a.x, _wgslsmith_f_op_f32(sign(-450f)), _wgslsmith_div_f32(arg_3.a.x, arg_1.c)) - vec4<f32>(arg_1.b.d.x, _wgslsmith_f_op_f32(sign(arg_1.b.b)), -320f, _wgslsmith_f_op_f32(-arg_1.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, _wgslsmith_f_op_f32(select(358f, -1262f, false))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.a.xw * vec2<f32>(arg_3.a.x, arg_3.a.x)), _wgslsmith_f_op_vec2_f32(max(arg_3.a.yx, vec2<f32>(-777f, 344f))))), min(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.a.x, 33467i, -1i, var_1), u_input.b), ~vec4<i32>(u_input.a, var_1, -18887i, 5696i)), _wgslsmith_sub_i32(-2147483647i ^ var_1, ~u_input.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.c, _wgslsmith_f_op_f32(-arg_3.a.x), !(arg_3.a.x == 1084f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_1.b.b))))));
    return _wgslsmith_add_i32(~(-43058i), var_3.b.e);
}

fn func_4(arg_0: vec3<i32>) -> u32 {
    global1 = array<Struct_1, 16>();
    var var_0 = _wgslsmith_dot_vec3_i32(arg_0 >> (vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(7818u, 21411u), vec2<u32>(43281u, 0u)), 4294967295u), ~countOneBits(49572u), min(18601u, 0u) << (1u % 32u)) % vec3<u32>(32u)), min(-u_input.b.zzw, -_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b.yyz, u_input.b.wzz), ~u_input.b.www)));
    global1 = array<Struct_1, 16>();
    global1 = array<Struct_1, 16>();
    let var_1 = vec3<i32>(-2147483647i, u_input.b.x, 0i);
    return 32243u;
}

fn func_1() -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(513f * -1000f)));
    let var_0 = vec3<u32>(func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(func_2(0u, Struct_3(u_input.b, global1[_wgslsmith_index_u32(101630u, 16u)], -470f), vec3<bool>(false, false, true), Struct_2(vec4<f32>(152f, 285f, 1805f, 1306f), 3126u)), -9511i, 1i), vec3<i32>(abs(u_input.a), _wgslsmith_div_i32(2147483647i, u_input.a), 2147483647i))), ~(~_wgslsmith_dot_vec2_u32(max(vec2<u32>(7096u, 13657u), vec2<u32>(0u, 4294967295u)), reverseBits(vec2<u32>(59895u, 36747u)))), 1u);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_1 = vec3<i32>(u_input.a, _wgslsmith_mod_i32(-_wgslsmith_add_i32(-26384i, ~u_input.a), u_input.a), select(firstLeadingBit(-u_input.a) << (countOneBits(_wgslsmith_mult_u32(1u, 0u)) % 32u), -_wgslsmith_sub_i32(firstLeadingBit(737i), ~u_input.a), true));
    let var_2 = select(!(!vec3<bool>(true, true, all(vec3<bool>(false, true, true)))), !(!vec3<bool>(true, true, u_input.b.x <= u_input.a)), any(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), true))));
    return Struct_3(vec4<i32>(-var_1.x, var_1.x, u_input.b.x, u_input.b.x), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~countOneBits(var_0.xy), select(vec2<u32>(var_0.x, 0u), vec2<u32>(var_0.x, 20067u), var_2.xy)), 16u)], _wgslsmith_f_op_f32(475f + 1000f));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.c - -1000f)));
    global1 = array<Struct_1, 16>();
    let var_0 = vec2<i32>(~_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(2147483647i, -23658i, u_input.b.x, -4565i)), min(vec4<i32>(-1i, 1516i, 75548i, 1i), func_3(false))), 1i);
    global0 = -1642f;
    var var_1 = arg_0.b.c.yz;
    return func_1();
}

fn func_6(arg_0: u32, arg_1: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_div_i32(2147483647i, ~arg_1.b.e);
    let var_1 = arg_1.b.c.xwx;
    var var_2 = var_0;
    let var_3 = arg_1.b.c;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_1.b.c.xwy))) - _wgslsmith_div_vec3_f32(arg_1.b.c.yyy, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(557f, -252f, -611f)))))));
    return arg_1;
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_3 {
    global1 = array<Struct_1, 16>();
    let var_0 = _wgslsmith_dot_vec2_i32(arg_1.a.xz, abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(func_5(Struct_3(arg_1.a, global1[_wgslsmith_index_u32(46483u, 16u)], -1282f), Struct_2(vec4<f32>(arg_1.c, arg_1.c, arg_1.b.c.x, 1119f), 1u), Struct_2(arg_0, 16296u), vec2<i32>(2147483647i, arg_1.a.x)).b.e, 721i), vec2<i32>(u_input.a & u_input.b.x, -43328i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -57224i) & arg_1.a.wx, arg_1.a.xw | vec2<i32>(18784i, 1i)))));
    let var_1 = Struct_3(u_input.b, arg_1.b, arg_0.x);
    var var_2 = func_1().b;
    let var_3 = arg_1.b.c.zww;
    return var_1;
}

fn func_8(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<u32>) -> vec2<f32> {
    global0 = arg_0.c;
    var var_0 = Struct_2(arg_1.b.c, select(arg_2.x, arg_2.x >> (abs(arg_2.x) % 32u), all(vec2<bool>(true, true))));
    let var_1 = arg_0.b.c.x;
    let var_2 = Struct_3(firstTrailingBit(abs(vec4<i32>(arg_1.a.x, u_input.a, max(arg_0.a.x, u_input.b.x), u_input.b.x))), func_6(0u, Struct_3(func_3(any(vec3<bool>(true, true, true))), func_6(var_0.b | arg_2.x, arg_0).b, _wgslsmith_f_op_f32(-var_1))).b, _wgslsmith_f_op_f32(arg_0.b.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1 - 545f), _wgslsmith_f_op_f32(-var_0.a.x))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.c, -1716f)))) - _wgslsmith_f_op_f32(-func_6(~arg_2.x, arg_1).b.d.x)) * -196f);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 1041f) - arg_0.b.c.yy), vec2<f32>(1326f, 1742f)))) + arg_0.b.c.yw);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1408f;
    let var_0 = all(vec2<bool>(true, true));
    global1 = array<Struct_1, 16>();
    global1 = array<Struct_1, 16>();
    global0 = 1897f;
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2092f)));
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_clamp_i32(min(u_input.b.x, u_input.a), _wgslsmith_div_i32(0i, u_input.a) ^ (u_input.b.x << (4294967295u % 32u)), (u_input.a << (4294967295u % 32u)) & -51100i), max(u_input.b.x | 1i, abs(u_input.b.x ^ 1i)), 59467i), -abs(vec4<i32>(0i, 0i, abs(u_input.a), u_input.a)));
    let var_2 = _wgslsmith_f_op_vec2_f32(func_8(Struct_3(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(55454i, -23454i, u_input.a, 2147483647i), ~var_1), ~max(vec4<i32>(var_1.x, var_1.x, -10770i, var_1.x), vec4<i32>(u_input.a, 2147483647i, var_1.x, u_input.b.x))), Struct_1(firstTrailingBit(~34837i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + -1573f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-925f, -1000f, -369f, 806f) - vec4<f32>(790f, -901f, 969f, 451f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-299f, 1000f, -1000f, -213f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(216f, 808f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(615f, -1000f))), ~_wgslsmith_mod_i32(u_input.b.x, 19898i)), _wgslsmith_f_op_f32(-1659f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-298f))))), func_7(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), func_6(~1u, func_5(func_1(), Struct_2(vec4<f32>(478f, 161f, 158f, -1000f), 16261u), Struct_2(vec4<f32>(-1495f, 860f, 196f, 109f), 1687u), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.b.x, 1i))))), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(42843u, 4294967295u)) | _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(1u, 1u)), vec2<u32>(4294967295u, 19756u))));
    let x = u_input.a;
    s_output = StorageBuffer(-1122f, vec3<f32>(func_5(Struct_3(~vec4<i32>(var_1.x, var_1.x, var_1.x, 15686i), func_7(vec4<f32>(var_2.x, var_2.x, 138f, var_2.x), Struct_3(vec4<i32>(0i, u_input.b.x, u_input.b.x, -10305i), global1[_wgslsmith_index_u32(32308u, 16u)], var_2.x)).b, _wgslsmith_f_op_f32(-var_2.x)), Struct_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-489f, 875f, var_2.x, var_2.x))), ~4294967295u), Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, -207f, 549f, 411f))), _wgslsmith_dot_vec2_u32(vec2<u32>(63021u, 18717u), vec2<u32>(1u, 0u))), select(vec2<i32>(var_1.x, u_input.b.x), u_input.b.zy, select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(false, var_0)))).c, 1236f, _wgslsmith_div_f32(func_6(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 77140u, 24816u), vec3<u32>(11412u, 18716u, 108251u)), func_7(vec4<f32>(-1290f, var_2.x, -601f, var_2.x), Struct_3(var_1, global1[_wgslsmith_index_u32(0u, 16u)], var_2.x))).c, var_2.x)), 3886u, var_2.x, max(~1u, 0u >> (firstLeadingBit(~1u) % 32u)));
}

