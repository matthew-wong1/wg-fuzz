struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(0i, 2147483647i), vec2<i32>(-25049i, 2147483647i), vec2<i32>(i32(-2147483648), -18996i), vec2<i32>(-28987i, 2147483647i), vec2<i32>(-1i, 33128i), vec2<i32>(33998i, 897i), vec2<i32>(1796i, 0i), vec2<i32>(0i, 12144i), vec2<i32>(-21856i, 1i), vec2<i32>(-2860i, 49087i), vec2<i32>(0i, -12377i), vec2<i32>(2147483647i, -33061i), vec2<i32>(0i, -22400i), vec2<i32>(1i, 2147483647i), vec2<i32>(-16933i, 1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(27115i, 4335i), vec2<i32>(0i, 0i), vec2<i32>(2147483647i, -21048i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-13213i, -30359i), vec2<i32>(-28253i, -54266i), vec2<i32>(-13393i, 1i), vec2<i32>(2147483647i, 1i), vec2<i32>(1i, 22706i), vec2<i32>(-1i, -51293i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(2147483647i, 0i), vec2<i32>(0i, 60260i), vec2<i32>(1i, 2147483647i));

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_3, 13>;

var<private> global3: array<Struct_3, 20>;

var<private> global4: array<vec2<bool>, 7>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: f32) -> vec4<i32> {
    var var_0 = _wgslsmith_dot_vec2_i32(-u_input.b, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, 12407i) | vec2<i32>(u_input.b.x, 4681i), _wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(u_input.c, -7726i)), global0[_wgslsmith_index_u32(u_input.a.x << (1u % 32u), 31u)])) ^ u_input.c;
    global3 = array<Struct_3, 20>();
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + -1204f))), _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(190f, 1100f))), vec2<f32>(arg_2, 1000f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 2971f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2148f, -1505f), vec2<f32>(-229f, 1724f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(146f, arg_2) - vec2<f32>(1266f, -1070f))))), global1.x));
    global0 = array<vec2<i32>, 31>();
    let var_2 = ~1u;
    return -vec4<i32>(((i32(-1i) * -1i) >> (u_input.a.x % 32u)) | u_input.c, _wgslsmith_add_i32(u_input.c, -_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -2147483647i)), u_input.c, 2147483647i);
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    global1 = vec3<bool>(false == global1.x, global1.x, false);
    var var_0 = select(~func_3(!vec3<bool>(global1.x, true, global1.x), u_input.a, _wgslsmith_f_op_f32(sign(arg_0.b.x))), _wgslsmith_add_vec4_i32(abs(vec4<i32>(13398i, u_input.b.x, arg_0.d.x, arg_0.d.x) | vec4<i32>(u_input.b.x, u_input.b.x, u_input.c, 0i)), ~vec4<i32>(1i, 1i, arg_0.c.x, u_input.b.x) | -vec4<i32>(u_input.b.x, u_input.c, arg_0.c.x, u_input.c)), vec4<bool>(!all(vec4<bool>(global1.x, global1.x, global1.x, false)), global1.x, ~23936u >= ~u_input.a.x, false)) ^ vec4<i32>(-37302i, arg_0.c.x, -u_input.b.x, ~abs(firstLeadingBit(-1i)));
    let var_1 = ~u_input.c;
    var var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(73936u, 4294967295u, u_input.a.x, 34280u), vec4<u32>(u_input.a.x, 42354u, u_input.a.x, 7312u)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, 46397u, u_input.a.x) ^ vec4<u32>(u_input.a.x, 1102u, u_input.a.x, 40479u)) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(~u_input.a.x, u_input.a.x << (u_input.a.x % 32u), 4294967295u, 0u))), 39108u, ~countOneBits(_wgslsmith_div_u32(abs(u_input.a.x), ~u_input.a.x)));
    let var_3 = Struct_2(Struct_1(arg_0.d.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b)))), ~(var_0.wz & _wgslsmith_clamp_vec2_i32(u_input.b, vec2<i32>(1i, 0i), vec2<i32>(var_1, u_input.b.x))), -(~arg_0.d)), Struct_1(-1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b + vec2<f32>(-684f, 697f))), global0[_wgslsmith_index_u32(~(~var_2.x ^ 47400u), 31u)], var_0.xxz), select(vec4<u32>(1515u << (firstTrailingBit(1u) % 32u), ~min(0u, 59776u), 1u, _wgslsmith_sub_u32(~3418u, firstTrailingBit(4294967295u))), vec4<u32>(u_input.a.x, ~0u, 0u, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(121097u, 0u, var_2.x), vec3<u32>(u_input.a.x, u_input.a.x, var_2.x)))), vec4<bool>(all(global4[_wgslsmith_index_u32(15914u, 7u)]), global1.x, global1.x, all(vec2<bool>(global1.x, false)))), _wgslsmith_f_op_vec2_f32(-arg_0.b));
    return _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(4294967295u, var_2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 18071u, u_input.a.x), vec3<u32>(1u, 37944u, u_input.a.x)), ~var_2.x), max(abs(max(vec3<u32>(1u, 8949u, var_3.c.x), vec3<u32>(20140u, var_3.c.x, 1u))), var_3.c.yxw)), max(var_3.c.xwy, ~vec3<u32>(var_2.x, ~51589u, countOneBits(1u))));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<f32>, arg_3: vec3<u32>) -> Struct_4 {
    let var_0 = arg_2.x;
    let var_1 = Struct_2(Struct_1(reverseBits(u_input.c), arg_2.yy, vec2<i32>(_wgslsmith_sub_i32(-21090i, max(arg_0.x, arg_0.x)), -49334i), ~(-vec3<i32>(u_input.b.x, u_input.c, arg_0.x))), Struct_1(36168i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-878f, _wgslsmith_f_op_f32(-var_0))), vec2<i32>(_wgslsmith_mult_i32(1i, 31876i), -(0i >> (1u % 32u))), -vec3<i32>(u_input.b.x, u_input.b.x, -14832i) << (arg_3 % vec3<u32>(32u))), countOneBits(vec4<u32>(u_input.a.x, ~94229u, arg_3.x, arg_3.x) | ((vec4<u32>(1u, 0u, arg_3.x, arg_3.x) >> (vec4<u32>(0u, arg_3.x, arg_3.x, arg_3.x) % vec4<u32>(32u))) ^ vec4<u32>(arg_3.x, 30731u, arg_3.x, arg_3.x))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1527f * arg_2.x), _wgslsmith_div_f32(var_0, -734f)))), -138f));
    global1 = vec3<bool>(true, global1.x, true);
    var var_2 = i32(-1i) * -31209i;
    var var_3 = false;
    return Struct_4(Struct_3(Struct_1(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-30536i, -2147483647i, -74017i), var_1.a.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.b + vec2<f32>(1101f, -640f)) + _wgslsmith_f_op_vec2_f32(-var_1.b.b)), _wgslsmith_mult_vec2_i32(global0[_wgslsmith_index_u32(~1u, 31u)], firstLeadingBit(vec2<i32>(1i, 31556i))), vec3<i32>(-1i, 25916i, -48192i))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.a.b.x, arg_2.d.x)))), -1547f), _wgslsmith_div_f32(arg_1.b.b.x, -560f));
    global1 = vec3<bool>(true, !(arg_2.a.d.x < arg_2.b.a), arg_2.c.x < u_input.a.x);
    global0 = array<vec2<i32>, 31>();
    var var_1 = arg_2;
    let var_2 = arg_1;
    return _wgslsmith_div_i32(65534i, _wgslsmith_add_i32(min(u_input.c, -arg_1.b.d.x ^ 0i), u_input.c));
}

fn func_1(arg_0: i32) -> vec4<u32> {
    let var_0 = func_5(func_4(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, -20289i, countOneBits(u_input.b.x), u_input.b.x), firstLeadingBit(vec4<i32>(u_input.b.x, -1i, 34195i, 9225i))), false, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-492f, 1000f, 2715f)) + vec3<f32>(316f, 128f, 204f)))), abs(min(select(vec3<u32>(u_input.a.x, 43553u, 0u), vec3<u32>(1u, 0u, 4294967295u), vec3<bool>(global1.x, true, global1.x)), func_2(Struct_1(u_input.c, vec2<f32>(556f, 1000f), vec2<i32>(arg_0, u_input.b.x), vec3<i32>(12253i, u_input.c, -1i)))))), Struct_2(Struct_1(func_3(vec3<bool>(global1.x, false, global1.x), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 24386u), u_input.a), -1190f).x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, 1153f))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(942f, 856f)))), -(~vec2<i32>(u_input.c, -2387i)), select(vec3<i32>(u_input.c, 57953i, -13397i) >> (vec3<u32>(54900u, 0u, 1u) % vec3<u32>(32u)), select(vec3<i32>(u_input.b.x, 0i, -6481i), vec3<i32>(-2147483647i, u_input.b.x, u_input.c), vec3<bool>(false, global1.x, true)), !vec3<bool>(global1.x, global1.x, false))), func_4(-vec4<i32>(0i, arg_0, arg_0, -40231i) & vec4<i32>(2559i, -2147483647i, -2147483647i, u_input.b.x), !global1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 621f, 287f))), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)).a.a, ((vec4<u32>(u_input.a.x, 40088u, 21224u, 9360u) << (vec4<u32>(u_input.a.x, u_input.a.x, 14726u, u_input.a.x) % vec4<u32>(32u))) ^ countOneBits(vec4<u32>(48072u, u_input.a.x, u_input.a.x, u_input.a.x))) << (reverseBits(vec4<u32>(56956u, u_input.a.x, u_input.a.x, 1u) | vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1377f, -350f) * vec2<f32>(255f, -1078f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(361f, 101f), vec2<f32>(-1382f, -1000f))), _wgslsmith_div_vec2_f32(vec2<f32>(1569f, 1174f), vec2<f32>(1064f, 1000f)), select(vec2<bool>(global1.x, false), vec2<bool>(false, false), true))))), Struct_2(Struct_1(firstLeadingBit(-53616i), _wgslsmith_f_op_vec2_f32(vec2<f32>(-879f, 104f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -710f), vec2<f32>(832f, 163f), global1.x))), firstTrailingBit(abs(vec2<i32>(45592i, 44993i))), ~(-vec3<i32>(-2147483647i, 41281i, arg_0))), Struct_1(-arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(548f, 843f))), vec2<i32>(-1i) * -u_input.b, vec3<i32>(_wgslsmith_div_i32(-4813i, -19254i), u_input.b.x, arg_0)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, 32300u, 47197u, u_input.a.x), select(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u), false)) ^ min(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), countOneBits(vec4<u32>(45279u, u_input.a.x, 21512u, 4294967295u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1473f + -1188f), _wgslsmith_f_op_f32(f32(-1f) * -1220f)))));
    global1 = !vec3<bool>(global1.x, !(!all(vec4<bool>(global1.x, global1.x, false, global1.x))), true);
    let var_1 = any(select(vec3<bool>(!any(vec2<bool>(global1.x, global1.x)), true, true), select(select(!vec3<bool>(global1.x, global1.x, true), select(vec3<bool>(global1.x, true, false), vec3<bool>(true, global1.x, true), global1.x), !vec3<bool>(global1.x, true, true)), vec3<bool>(any(vec2<bool>(global1.x, true)), true, true), vec3<bool>(false, all(global4[_wgslsmith_index_u32(24236u, 7u)]), true)), !(!(!vec3<bool>(true, global1.x, global1.x)))));
    var var_2 = !(!select(vec3<bool>(true, select(global1.x, true, true), u_input.a.x > 12647u), vec3<bool>(all(vec4<bool>(true, false, false, true)), false, true), !(!vec3<bool>(var_1, var_1, false))));
    let var_3 = Struct_1(-2147483647i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(144f, -1862f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(306f, -1008f))))))), _wgslsmith_mod_vec2_i32(~vec2<i32>(-26871i, arg_0 & -1i), func_3(vec3<bool>(var_2.x, global1.x, select(true, var_1, var_2.x)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a, u_input.a), _wgslsmith_div_f32(565f, _wgslsmith_f_op_f32(f32(-1f) * -195f))).wz), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(0i, 13119i, arg_0), -vec3<i32>(-2147483647i, 29220i, -1i)), _wgslsmith_div_vec3_i32(vec3<i32>(var_0, u_input.b.x, var_0), vec3<i32>(28371i, u_input.b.x, -1i)) << ((vec3<u32>(u_input.a.x, 42494u, u_input.a.x) | vec3<u32>(4294967295u, u_input.a.x, 0u)) % vec3<u32>(32u))), vec3<i32>(-select(arg_0, 13883i, var_1), 2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0, 41071i, u_input.c, arg_0), -vec4<i32>(-6710i, -1i, var_0, -2147483647i)))));
    return countOneBits(_wgslsmith_mult_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 0u, 61143u, 48339u), vec4<u32>(u_input.a.x, 0u, 0u, 4294967295u), vec4<u32>(0u, u_input.a.x, 11187u, 0u)) & select(vec4<u32>(4294967295u, u_input.a.x, 59124u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x), vec4<bool>(global1.x, var_2.x, var_2.x, false)), ~vec4<u32>(u_input.a.x, 48881u, u_input.a.x, 18250u) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 3500u, u_input.a.x, 66718u), vec4<u32>(18803u, u_input.a.x, u_input.a.x, 13020u)), select(!vec4<bool>(false, global1.x, true, true), select(vec4<bool>(true, var_2.x, false, false), vec4<bool>(false, false, var_1, var_2.x), vec4<bool>(true, true, false, false)), global1.x)), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x) | vec4<u32>(0u, 1u, 22414u, 1u), vec4<u32>(4772u, 1u, 39773u, 4294967295u) << (vec4<u32>(1u, 0u, u_input.a.x, 4294967295u) % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 13>();
    let var_0 = -365f;
    var var_1 = Struct_4(global2[_wgslsmith_index_u32(9499u, 13u)]);
    var var_2 = var_1.a.a;
    var var_3 = func_1(_wgslsmith_add_i32(~(-6276i), var_2.a));
    var var_4 = 0u;
    var var_5 = vec3<u32>(var_3.x, _wgslsmith_div_u32(~var_3.x, u_input.a.x), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1726f, 1252f, -839f))), _wgslsmith_div_vec3_f32(vec3<f32>(1075f, var_1.a.a.b.x, var_0), vec3<f32>(var_1.a.a.b.x, 587f, -152f)))))));
}

