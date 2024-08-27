struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 6>;

var<private> global2: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(-870f, -1094f, 1578f, 1859f), vec4<f32>(-1249f, 909f, -1858f, 792f), vec4<f32>(1219f, -1310f, -1382f, -1407f), vec4<f32>(427f, -260f, 309f, 741f), vec4<f32>(1120f, -540f, -780f, 840f), vec4<f32>(-231f, -756f, 525f, -342f), vec4<f32>(-1358f, 266f, 1335f, -498f), vec4<f32>(-1976f, -646f, 1145f, -938f), vec4<f32>(877f, 1000f, 522f, 1418f), vec4<f32>(-196f, 1000f, 2296f, -1420f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -33014i, -global0.b.x << (select(u_input.b, 4294967295u, false) % 32u)) << (arg_1.d.wz % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(~global0.b.xz, vec2<i32>(-1i) * -reverseBits(u_input.c.zy)));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1320f, global0.c.x, arg_1.c.c.x, global0.c.x))) - vec4<f32>(global0.c.x, global0.c.x, -221f, -1000f)))), ~_wgslsmith_sub_i32(-2147483647i, 1i) >> ((arg_1.d.x ^ arg_1.d.x) % 32u), arg_1.e, arg_1.d, arg_1.e), Struct_1(vec4<bool>(true, -1i <= -global0.b.x, 238f >= global0.c.x, true), min(vec3<i32>(-1i, global0.b.x, arg_1.b), vec3<i32>(~global0.b.x, ~var_0.x, abs(global0.b.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.c), global0.c, true)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global0.c)))), false), !select(vec3<bool>(arg_0.x, all(vec3<bool>(arg_0.x, false, true)), true), !vec3<bool>(true, global0.a.x, false), arg_0.x));
    global0 = Struct_1(select(var_1.a.e.a, select(arg_0, select(vec4<bool>(var_1.c.x, var_1.c.x, arg_1.c.d, true), arg_0, all(arg_0.xz)), !select(vec4<bool>(false, arg_1.e.a.x, false, var_1.c.x), var_1.a.c.a, var_1.a.c.a)), all(vec3<bool>(false, arg_1.e.d | false, var_1.a.e.d))), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(max(u_input.c.zyy, _wgslsmith_add_vec3_i32(vec3<i32>(global0.b.x, var_1.a.e.b.x, var_0.x), vec3<i32>(-26266i, global0.b.x, 21868i))), u_input.c.zww, var_1.a.c.b), max(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 0i, -62412i), ~vec3<i32>(var_0.x, var_0.x, 2147483647i)), ~countOneBits(vec3<i32>(2147483647i, -29138i, arg_1.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c)), !arg_1.e.a.x);
    var var_2 = -(-select(~global0.b.x, -11514i, all(arg_0.xw)) | global0.b.x);
    var var_3 = var_1.a.e.c.x;
    return !(!(!vec3<bool>(arg_0.x, global0.d, true)));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>) -> f32 {
    let var_0 = 43722u;
    global1 = array<vec3<f32>, 6>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global2[_wgslsmith_index_u32(u_input.b, 10u)])) * _wgslsmith_f_op_vec4_f32(floor(global2[_wgslsmith_index_u32(u_input.b, 10u)])))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 24337u), 10u)])), -70033i, Struct_1(!select(select(vec4<bool>(global0.d, false, global0.a.x, arg_0), vec4<bool>(false, false, false, false), false), select(global0.a, global0.a, global0.a), true), vec3<i32>(-9809i, 2147483647i, u_input.c.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(global0.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-207f, -843f)))), vec2<bool>(true, global0.a.x))), ~_wgslsmith_mod_u32(var_0, var_0) < countOneBits(~1u)), max(max(vec4<u32>(25809u, var_0, u_input.b, u_input.b), max(vec4<u32>(2232u, var_0, var_0, 89040u), vec4<u32>(23976u, var_0, var_0, var_0))), _wgslsmith_sub_vec4_u32(vec4<u32>(67138u, u_input.b, var_0, 55051u) ^ vec4<u32>(45435u, u_input.b, 4294967295u, var_0), vec4<u32>(var_0, var_0, 0u, u_input.b))) ^ _wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, u_input.b, var_0, 1u), vec4<u32>(u_input.b, 0u, var_0, 4294967295u)), ~max(vec4<u32>(52621u, var_0, 0u, var_0), vec4<u32>(56057u, u_input.b, 4294967295u, u_input.b))), Struct_1(vec4<bool>(true | arg_0, false, any(vec2<bool>(arg_0, true)), false), ~select(vec3<i32>(14401i, global0.b.x, -17129i), -vec3<i32>(1i, 2147483647i, u_input.c.x), var_0 > u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2034f, global0.c.x) - vec2<f32>(-1144f, global0.c.x)))), arg_0));
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1437f, 314f, 144f, var_1.a.x))) + vec4<f32>(341f, 2096f, global0.c.x, -1000f))), countOneBits(0i >> (u_input.b % 32u)), Struct_1(var_1.c.a, firstLeadingBit(u_input.c.yxy & vec3<i32>(u_input.c.x, u_input.c.x, -63350i)), vec2<f32>(_wgslsmith_f_op_f32(global0.c.x - -646f), _wgslsmith_f_op_f32(global0.c.x * var_1.c.c.x)), select(var_1.e.a.x, global0.a.x, any(vec3<bool>(false, false, arg_0)))), min(vec4<u32>(9606u, ~var_1.d.x, firstTrailingBit(u_input.b), 0u), _wgslsmith_add_vec4_u32(vec4<u32>(13699u, var_1.d.x, 4294967295u, 48324u), vec4<u32>(var_1.d.x, 4294967295u, 40466u, var_0))), Struct_1(var_1.e.a, vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.c.x), global0.b.xz), reverseBits(u_input.a)), _wgslsmith_f_op_vec2_f32(ceil(var_1.e.c)), true)), var_1.e, vec3<bool>(func_3(vec4<bool>(true && var_1.e.d, false, false, arg_1.x), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.c.x, global0.c.x, 144f, 401f)), -15557i, Struct_1(var_1.e.a, global0.b, global0.c, global0.a.x), var_1.d, Struct_1(global0.a, u_input.c.wzx, vec2<f32>(252f, -117f), false))).x, global0.d, !(abs(-39521i) != _wgslsmith_div_i32(global0.b.x, 11514i))));
    var_1 = Struct_2(var_2.a.a, 1i, var_1.c, ~(~vec4<u32>(19671u, 4294967295u, ~0u, _wgslsmith_div_u32(4294967295u, var_0))), Struct_1(!vec4<bool>(true, any(vec2<bool>(true, true)), any(var_2.a.e.a.zxw), true), max(vec3<i32>(~(-1i), -1i, ~8572i), -(var_1.c.b & vec3<i32>(-1i, 600i, -1i))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global0.c - vec2<f32>(471f, var_2.b.c.x)))))), all(!vec2<bool>(false, var_2.b.a.x))));
    return _wgslsmith_f_op_f32(f32(-1f) * -454f);
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: f32) -> u32 {
    var var_0 = Struct_1(!(!select(!vec4<bool>(global0.d, true, global0.d, true), !global0.a, !global0.a)), countOneBits(vec3<i32>(~(-2147483647i), global0.b.x >> (95566u % 32u), select(-1i, u_input.a, global0.a.x)) << (vec3<u32>(27469u, arg_1.x, firstLeadingBit(4294967295u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 228f)), _wgslsmith_f_op_f32(func_4(true, func_3(vec4<bool>(true, global0.a.x, true, false), Struct_2(vec4<f32>(-1000f, 565f, -697f, arg_2), global0.b.x, Struct_1(global0.a, vec3<i32>(-18732i, 2147483647i, 1i), vec2<f32>(502f, 633f), global0.a.x), arg_1, Struct_1(vec4<bool>(false, false, true, global0.a.x), vec3<i32>(global0.b.x, global0.b.x, 0i), vec2<f32>(-136f, 271f), false)))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global0.c * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, 1000f), global0.c, global0.a.x)))))), false | (~18621i > _wgslsmith_sub_i32(abs(-37802i), u_input.a)));
    var var_1 = vec3<u32>(arg_1.x, 1u, 0u);
    var var_2 = var_0.a.wwz;
    global2 = array<vec4<f32>, 10>();
    var var_3 = _wgslsmith_f_op_f32(-535f + _wgslsmith_f_op_f32(-1367f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(527f, 1596f)) + -1000f) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2, 608f), _wgslsmith_f_op_f32(global0.c.x + -1280f))))));
    return u_input.b;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_u32(abs(~(~arg_1.d >> (~vec4<u32>(arg_0.a.d.x, 39502u, 10765u, u_input.b) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_u32(vec4<u32>(31757u, 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 85194u, u_input.b, 25779u), arg_0.a.d), arg_0.a.d.x), vec4<u32>(min(0u, _wgslsmith_div_u32(1u, arg_0.a.d.x)), 4294967295u & ~u_input.b, _wgslsmith_div_u32(func_2(arg_0.a.c.c.x, arg_1.d, -431f), firstTrailingBit(arg_0.a.d.x)), u_input.b)));
    let var_1 = -2147483647i;
    global0 = Struct_1(!vec4<bool>(!arg_1.c.a.x, true, true, true || arg_0.b.a.x), vec3<i32>(~_wgslsmith_add_i32(arg_1.c.b.x, 1i), u_input.a, i32(-1i) * -35859i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.a.a.xz), _wgslsmith_f_op_vec2_f32(-arg_2), true)), true);
    global2 = array<vec4<f32>, 10>();
    let var_2 = all(arg_1.c.a.zyw);
    return Struct_2(vec4<f32>(189f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + -212f)), _wgslsmith_div_f32(global0.c.x, _wgslsmith_div_f32(arg_1.a.x, -456f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_1.e.c.x, global0.c.x)), 500f))), var_1, Struct_1(vec4<bool>(var_2, select(!var_2, true, true), !(arg_0.a.c.a.x || false), true), arg_0.a.e.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-938f, 422f), _wgslsmith_f_op_vec2_f32(arg_2 + vec2<f32>(arg_1.c.c.x, 255f)))))), all(vec2<bool>(true, global0.a.x || false))), ~(~_wgslsmith_sub_vec4_u32(~arg_0.a.d, countOneBits(vec4<u32>(2680u, 135410u, 1u, 1u)))), arg_0.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32) -> f32 {
    let var_0 = Struct_3(func_1(Struct_3(Struct_2(arg_0.a, -2147483647i ^ arg_2, Struct_1(vec4<bool>(arg_1.a.c.a.x, global0.a.x, true, false), vec3<i32>(global0.b.x, 2147483647i, 31153i), vec2<f32>(arg_1.a.e.c.x, global0.c.x), global0.d), arg_1.a.d, func_1(arg_1, Struct_2(arg_1.a.a, 1i, arg_1.b, arg_1.a.d, Struct_1(arg_1.a.e.a, vec3<i32>(35955i, arg_0.c.b.x, -1i), vec2<f32>(arg_1.b.c.x, arg_0.e.c.x), arg_0.e.a.x)), vec2<f32>(global0.c.x, arg_1.a.e.c.x)).e), func_1(Struct_3(Struct_2(arg_0.a, global0.b.x, arg_1.a.c, arg_0.d, arg_0.e), Struct_1(arg_0.e.a, global0.b, arg_0.c.c, true), arg_1.c), func_1(arg_1, Struct_2(global2[_wgslsmith_index_u32(4294967295u, 10u)], arg_1.b.b.x, Struct_1(arg_1.b.a, vec3<i32>(18976i, global0.b.x, u_input.c.x), vec2<f32>(arg_1.b.c.x, arg_0.a.x), false), vec4<u32>(26269u, arg_1.a.d.x, u_input.b, 1u), arg_1.a.c), global0.c), _wgslsmith_f_op_vec2_f32(global0.c - global0.c)).c, arg_0.e.a.yyx), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.c.x), _wgslsmith_f_op_f32(max(global0.c.x, 588f)), -840f, _wgslsmith_div_f32(-537f, arg_1.a.a.x)), 17280i, Struct_1(!arg_0.e.a, vec3<i32>(arg_1.b.b.x, -18724i, u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.c.c.x, 1113f)), true), ~arg_1.a.d, arg_0.c), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.e.c - global0.c), _wgslsmith_f_op_vec2_f32(trunc(global0.c)), vec2<bool>(arg_0.c.a.x, arg_1.c.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(arg_0.e.c, vec2<f32>(282f, global0.c.x)))), arg_1.b.a.yz))), func_1(arg_1, Struct_2(vec4<f32>(-629f, arg_0.a.x, -1000f, -688f), global0.b.x, Struct_1(!vec4<bool>(false, arg_0.e.d, arg_0.c.a.x, true), ~vec3<i32>(-35870i, -1i, arg_2), vec2<f32>(arg_0.c.c.x, global0.c.x), false), vec4<u32>(~arg_1.a.d.x, ~arg_1.a.d.x, arg_0.d.x, 4544u), func_1(arg_1, Struct_2(arg_1.a.a, 32711i, Struct_1(arg_0.c.a, u_input.c.wwz, arg_0.a.zy, global0.a.x), arg_1.a.d, arg_0.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.c.x, -724f) + arg_0.c.c)).c), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(-215f)), _wgslsmith_f_op_f32(f32(-1f) * -488f)), vec2<f32>(global0.c.x, 730f), all(!vec4<bool>(arg_0.e.d, arg_0.c.a.x, false, arg_0.c.a.x))))).c, arg_0.c.a.wzw);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_1.a.a * _wgslsmith_f_op_vec4_f32(-var_0.a.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-335f, 2218f, arg_1.a.c.c.x, global0.c.x))), select(global0.a.x, select(true, false, global0.a.x), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(u_input.b, 10u)] * arg_1.a.a) + arg_0.a)), arg_0.c.d)), ~49403i, func_1(Struct_3(var_0.a, arg_0.c, vec3<bool>(!arg_0.c.d, arg_0.c.a.x, true)), Struct_2(arg_0.a, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.e.b.x, var_0.a.b, arg_2), arg_0.e.b)), func_1(Struct_3(Struct_2(global2[_wgslsmith_index_u32(arg_1.a.d.x, 10u)], arg_2, var_0.b, arg_1.a.d, arg_1.a.e), Struct_1(vec4<bool>(arg_0.e.d, false, true, false), vec3<i32>(arg_2, 3329i, 2147483647i), arg_0.e.c, var_0.a.e.d), arg_1.c), Struct_2(vec4<f32>(arg_0.a.x, arg_1.a.c.c.x, 443f, 112f), var_0.b.b.x, Struct_1(global0.a, var_0.a.e.b, vec2<f32>(var_0.b.c.x, var_0.b.c.x), arg_1.c.x), vec4<u32>(var_0.a.d.x, 0u, arg_0.d.x, 44842u), Struct_1(vec4<bool>(arg_1.c.x, global0.a.x, false, true), var_0.b.b, vec2<f32>(1000f, var_0.b.c.x), arg_1.a.c.a.x)), vec2<f32>(1000f, arg_1.a.c.c.x)).e, select(~vec4<u32>(arg_1.a.d.x, arg_1.a.d.x, u_input.b, 4294967295u), vec4<u32>(4294967295u, var_0.a.d.x, 4294967295u, 13867u), !arg_1.b.a), var_0.b), arg_0.c.c).e, max(max(vec4<u32>(u_input.b & arg_1.a.d.x, _wgslsmith_clamp_u32(var_0.a.d.x, 4294967295u, arg_0.d.x), select(36968u, arg_0.d.x, false), ~var_0.a.d.x), select(vec4<u32>(39766u, var_0.a.d.x, u_input.b, u_input.b), ~vec4<u32>(var_0.a.d.x, 43369u, var_0.a.d.x, u_input.b), vec4<bool>(arg_0.c.d, global0.a.x, false, arg_0.c.a.x))), var_0.a.d | var_0.a.d), var_0.a.e);
    var var_2 = var_1.c.b;
    return var_0.a.c.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(173f)) - 742f), global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(Struct_3(Struct_2(global2[_wgslsmith_index_u32(1u, 10u)], u_input.a, Struct_1(global0.a, vec3<i32>(global0.b.x, u_input.c.x, -19914i), vec2<f32>(global0.c.x, global0.c.x), true), vec4<u32>(37778u, 38149u, 0u, 4294967295u), Struct_1(global0.a, vec3<i32>(u_input.c.x, 86087i, global0.b.x), vec2<f32>(global0.c.x, -617f), global0.a.x)), Struct_1(global0.a, u_input.c.zyy, global0.c, false), global0.a.zxx), Struct_2(vec4<f32>(268f, -1000f, 151f, global0.c.x), global0.b.x, Struct_1(vec4<bool>(global0.a.x, global0.a.x, global0.d, true), u_input.c.xwx, vec2<f32>(598f, 340f), true), vec4<u32>(u_input.b, 4294967295u, u_input.b, 80914u), Struct_1(global0.a, vec3<i32>(global0.b.x, global0.b.x, u_input.c.x), global0.c, global0.a.x)), vec2<f32>(global0.c.x, global0.c.x)), Struct_3(Struct_2(global2[_wgslsmith_index_u32(u_input.b, 10u)], global0.b.x, Struct_1(vec4<bool>(global0.d, false, global0.a.x, global0.d), vec3<i32>(u_input.c.x, 8423i, u_input.c.x), vec2<f32>(649f, global0.c.x), global0.d), vec4<u32>(4294967295u, u_input.b, 57644u, 61871u), Struct_1(vec4<bool>(true, false, global0.d, global0.d), vec3<i32>(u_input.c.x, global0.b.x, 1550i), global0.c, global0.d)), Struct_1(global0.a, global0.b, global0.c, global0.a.x), vec3<bool>(true, global0.a.x, global0.d)), global0.b.x))) - -1462f));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(1u, 10u)] - vec4<f32>(var_1.x, global0.c.x, 876f, 475f)), _wgslsmith_f_op_vec4_f32(trunc(global2[_wgslsmith_index_u32(4294967295u, 10u)]))), u_input.a & ~u_input.a, Struct_1(global0.a, abs(vec3<i32>(u_input.c.x, -15988i, -6493i)), _wgslsmith_f_op_vec2_f32(max(global0.c, vec2<f32>(global0.c.x, var_1.x))), true), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(85893u, 1u, 12019u, 1u)), Struct_1(vec4<bool>(global0.d, false, true, true), _wgslsmith_sub_vec3_i32(global0.b, u_input.c.xwx), _wgslsmith_f_op_vec2_f32(vec2<f32>(906f, global0.c.x) - vec2<f32>(-418f, var_1.x)), !global0.d)), Struct_3(func_1(Struct_3(Struct_2(vec4<f32>(-1063f, 1802f, 1049f, var_1.x), global0.b.x, Struct_1(vec4<bool>(true, global0.a.x, global0.d, global0.a.x), global0.b, vec2<f32>(-1980f, 1062f), global0.a.x), vec4<u32>(u_input.b, 8132u, u_input.b, u_input.b), Struct_1(vec4<bool>(global0.a.x, true, false, false), global0.b, var_1.xz, false)), Struct_1(vec4<bool>(false, false, global0.a.x, global0.a.x), vec3<i32>(global0.b.x, global0.b.x, -1i), vec2<f32>(global0.c.x, var_1.x), true), vec3<bool>(false, global0.a.x, false)), func_1(Struct_3(Struct_2(vec4<f32>(global0.c.x, global0.c.x, global0.c.x, var_1.x), 69249i, Struct_1(global0.a, global0.b, vec2<f32>(global0.c.x, global0.c.x), false), vec4<u32>(u_input.b, 4294967295u, 1u, 28447u), Struct_1(global0.a, global0.b, var_1.yy, global0.d)), Struct_1(vec4<bool>(global0.d, global0.d, global0.a.x, false), vec3<i32>(1i, 2147483647i, u_input.c.x), vec2<f32>(global0.c.x, 514f), global0.a.x), vec3<bool>(false, true, global0.d)), Struct_2(vec4<f32>(global0.c.x, var_1.x, var_1.x, 153f), global0.b.x, Struct_1(vec4<bool>(false, true, true, true), vec3<i32>(global0.b.x, -19303i, global0.b.x), var_1.xy, global0.a.x), vec4<u32>(0u, u_input.b, u_input.b, u_input.b), Struct_1(vec4<bool>(false, global0.d, true, true), vec3<i32>(u_input.a, 61601i, u_input.a), vec2<f32>(-1042f, 795f), global0.d)), vec2<f32>(global0.c.x, 233f)), _wgslsmith_f_op_vec2_f32(-global0.c)), func_1(Struct_3(Struct_2(vec4<f32>(-1156f, var_1.x, 1061f, global0.c.x), -27905i, Struct_1(vec4<bool>(true, false, global0.a.x, true), vec3<i32>(u_input.a, 6225i, 2147483647i), vec2<f32>(global0.c.x, 1599f), true), vec4<u32>(u_input.b, 4294967295u, u_input.b, 0u), Struct_1(global0.a, vec3<i32>(-2147483647i, u_input.a, -1i), vec2<f32>(var_1.x, -124f), true)), Struct_1(vec4<bool>(true, global0.a.x, true, false), u_input.c.yyx, global0.c, global0.d), global0.a.xwx), Struct_2(vec4<f32>(var_1.x, 427f, global0.c.x, -1344f), 14322i, Struct_1(global0.a, vec3<i32>(130i, global0.b.x, u_input.a), var_1.zz, true), vec4<u32>(59373u, 1u, 4294967295u, u_input.b), Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(u_input.c.x, 2147483647i, global0.b.x), vec2<f32>(-469f, var_1.x), true)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(197f, var_1.x)))).e, vec3<bool>(global0.d && true, true && global0.d, true)), ~(-2147483647i))));
    var var_3 = Struct_1(vec4<bool>(false, true, ~global0.b.x <= -2147483647i, false), func_1(Struct_3(func_1(Struct_3(Struct_2(vec4<f32>(-1259f, 1000f, 1146f, 193f), 2147483647i, Struct_1(vec4<bool>(true, global0.d, true, false), vec3<i32>(global0.b.x, global0.b.x, global0.b.x), vec2<f32>(var_2, global0.c.x), true), vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), Struct_1(vec4<bool>(global0.a.x, true, true, global0.a.x), vec3<i32>(-2147483647i, global0.b.x, 5070i), vec2<f32>(global0.c.x, -1386f), global0.d)), Struct_1(vec4<bool>(global0.d, true, true, false), vec3<i32>(u_input.a, -2147483647i, global0.b.x), global0.c, global0.a.x), global0.a.xzx), Struct_2(vec4<f32>(var_2, global0.c.x, -288f, var_2), u_input.a, Struct_1(global0.a, global0.b, vec2<f32>(var_2, var_1.x), true), vec4<u32>(u_input.b, 56961u, u_input.b, u_input.b), Struct_1(vec4<bool>(global0.a.x, false, global0.d, global0.d), vec3<i32>(2147483647i, 1i, 30385i), global0.c, false)), _wgslsmith_f_op_vec2_f32(-global0.c)), func_1(Struct_3(Struct_2(global2[_wgslsmith_index_u32(u_input.b, 10u)], -1i, Struct_1(global0.a, global0.b, global0.c, global0.a.x), vec4<u32>(u_input.b, 4294967295u, 1u, 0u), Struct_1(global0.a, u_input.c.zxx, var_1.xz, true)), Struct_1(vec4<bool>(global0.a.x, global0.a.x, true, true), u_input.c.xyy, vec2<f32>(global0.c.x, 794f), global0.d), global0.a.xyz), Struct_2(vec4<f32>(global0.c.x, global0.c.x, -1900f, 2562f), u_input.a, Struct_1(vec4<bool>(global0.a.x, global0.d, false, false), vec3<i32>(global0.b.x, 2147483647i, u_input.c.x), vec2<f32>(-741f, 350f), true), vec4<u32>(767u, 51566u, 28754u, 0u), Struct_1(global0.a, global0.b, var_1.zy, global0.a.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, 242f), vec2<f32>(-1000f, 941f), global0.a.wy))).e, select(!global0.a.xyz, vec3<bool>(true, global0.a.x, global0.d), global0.a.yxz)), func_1(Struct_3(Struct_2(global2[_wgslsmith_index_u32(u_input.b, 10u)], global0.b.x, Struct_1(vec4<bool>(false, global0.d, true, false), global0.b, global0.c, false), vec4<u32>(u_input.b, u_input.b, 43574u, u_input.b), Struct_1(global0.a, vec3<i32>(1620i, 33825i, 31473i), global0.c, true)), func_1(Struct_3(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 10u)], u_input.c.x, Struct_1(global0.a, global0.b, var_1.xy, true), vec4<u32>(1089u, u_input.b, u_input.b, u_input.b), Struct_1(vec4<bool>(global0.a.x, global0.d, global0.a.x, true), u_input.c.xzx, vec2<f32>(1000f, var_1.x), false)), Struct_1(vec4<bool>(global0.a.x, global0.d, global0.a.x, global0.a.x), u_input.c.xyw, global0.c, false), vec3<bool>(true, false, global0.d)), Struct_2(global2[_wgslsmith_index_u32(u_input.b, 10u)], u_input.c.x, Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(58263i, u_input.c.x, global0.b.x), vec2<f32>(var_2, 1945f), global0.a.x), vec4<u32>(1u, u_input.b, u_input.b, u_input.b), Struct_1(vec4<bool>(false, global0.a.x, global0.a.x, false), vec3<i32>(21291i, 14844i, -7167i), global0.c, global0.d)), vec2<f32>(1435f, global0.c.x)).c, vec3<bool>(true, true, true)), func_1(Struct_3(Struct_2(global2[_wgslsmith_index_u32(u_input.b, 10u)], global0.b.x, Struct_1(vec4<bool>(global0.d, global0.d, global0.d, true), vec3<i32>(53715i, 2147483647i, global0.b.x), var_1.zy, global0.a.x), vec4<u32>(4294967295u, u_input.b, 1u, u_input.b), Struct_1(vec4<bool>(false, global0.d, true, global0.d), global0.b, vec2<f32>(global0.c.x, var_2), global0.a.x)), Struct_1(vec4<bool>(true, global0.d, true, true), u_input.c.wzw, global0.c, global0.a.x), global0.a.wwy), Struct_2(global2[_wgslsmith_index_u32(48356u, 10u)], u_input.a, Struct_1(global0.a, vec3<i32>(-2147483647i, u_input.a, -2147483647i), vec2<f32>(1003f, global0.c.x), global0.d), vec4<u32>(0u, 4294967295u, 59514u, u_input.b), Struct_1(global0.a, global0.b, vec2<f32>(541f, -107f), false)), _wgslsmith_f_op_vec2_f32(var_1.yz - vec2<f32>(181f, global0.c.x))), _wgslsmith_f_op_vec2_f32(min(var_1.xy, _wgslsmith_f_op_vec2_f32(round(global0.c))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(174f, 134f) - vec2<f32>(-453f, global0.c.x)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1455f, -702f), var_1.xx, global0.d))))).e.b, vec2<f32>(var_2, 749f), false);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-466f - global0.c.x), -259f, _wgslsmith_f_op_f32(var_1.x - global0.c.x), _wgslsmith_f_op_f32(step(177f, 193f))), global0.b.x | _wgslsmith_dot_vec2_i32(u_input.c.yw, vec2<i32>(36568i, var_3.b.x)), func_1(Struct_3(Struct_2(vec4<f32>(-137f, var_2, var_2, var_3.c.x), -2147483647i, Struct_1(vec4<bool>(true, false, true, true), var_3.b, var_3.c, true), vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), Struct_1(global0.a, vec3<i32>(-2147483647i, var_3.b.x, -1i), vec2<f32>(var_2, 352f), true)), Struct_1(vec4<bool>(global0.a.x, true, var_3.a.x, false), vec3<i32>(-2147483647i, global0.b.x, -2147483647i), var_3.c, global0.d), var_3.a.zzy), func_1(Struct_3(Struct_2(vec4<f32>(-1396f, var_2, global0.c.x, 2784f), 29443i, Struct_1(vec4<bool>(true, true, true, false), var_3.b, vec2<f32>(var_3.c.x, global0.c.x), false), vec4<u32>(u_input.b, 3169u, 1u, u_input.b), Struct_1(vec4<bool>(true, var_3.d, var_3.a.x, var_3.a.x), var_3.b, global0.c, var_3.a.x)), Struct_1(vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x), u_input.c.www, var_1.zz, true), vec3<bool>(var_3.a.x, var_3.a.x, false)), Struct_2(global2[_wgslsmith_index_u32(u_input.b, 10u)], -2147483647i, Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(1i, 0i, 89529i), var_3.c, false), vec4<u32>(u_input.b, u_input.b, 6360u, 1u), Struct_1(var_3.a, var_3.b, vec2<f32>(-942f, var_3.c.x), true)), var_1.xy), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1.x) - vec2<f32>(global0.c.x, -188f))).c, ~min(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(u_input.b, 96758u, u_input.b, u_input.b)), func_1(Struct_3(Struct_2(global2[_wgslsmith_index_u32(5696u, 10u)], var_3.b.x, Struct_1(vec4<bool>(false, true, global0.a.x, global0.d), vec3<i32>(-1i, var_3.b.x, global0.b.x), vec2<f32>(var_3.c.x, 550f), false), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), Struct_1(global0.a, vec3<i32>(-1i, global0.b.x, u_input.a), var_1.xx, true)), Struct_1(var_3.a, vec3<i32>(0i, var_3.b.x, 685i), vec2<f32>(var_3.c.x, -397f), global0.d), global0.a.yyz), Struct_2(vec4<f32>(global0.c.x, -552f, var_2, var_2), 1i, Struct_1(vec4<bool>(global0.a.x, false, true, var_3.a.x), var_3.b, vec2<f32>(1690f, -1746f), global0.a.x), vec4<u32>(u_input.b, 39601u, 50689u, u_input.b), Struct_1(global0.a, var_3.b, global0.c, global0.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(199f, var_1.x) * global0.c)).c), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(ceil(global2[_wgslsmith_index_u32(u_input.b, 10u)])), 2147483647i, func_1(Struct_3(Struct_2(global2[_wgslsmith_index_u32(u_input.b, 10u)], -33477i, Struct_1(var_3.a, u_input.c.wzx, var_3.c, var_3.d), vec4<u32>(36811u, u_input.b, 1u, 113657u), Struct_1(vec4<bool>(true, true, false, global0.a.x), var_3.b, var_1.xz, false)), Struct_1(var_3.a, vec3<i32>(0i, global0.b.x, var_3.b.x), vec2<f32>(1401f, var_2), var_3.a.x), var_3.a.yxx), Struct_2(global2[_wgslsmith_index_u32(76851u, 10u)], 1i, Struct_1(vec4<bool>(false, true, false, var_3.d), vec3<i32>(-42304i, -2147483647i, global0.b.x), var_3.c, var_3.d), vec4<u32>(10974u, u_input.b, 43493u, u_input.b), Struct_1(vec4<bool>(var_3.a.x, var_3.d, true, true), var_3.b, vec2<f32>(var_1.x, -641f), true)), vec2<f32>(1011f, 445f)).e, _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 48479u, 7607u, u_input.b), vec4<u32>(27147u, u_input.b, 4294967295u, u_input.b)), func_1(Struct_3(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 10u)], -4045i, Struct_1(vec4<bool>(var_3.d, true, var_3.a.x, true), u_input.c.xxw, var_3.c, false), vec4<u32>(45021u, 13468u, 0u, u_input.b), Struct_1(global0.a, vec3<i32>(-1964i, 1i, u_input.a), vec2<f32>(723f, 787f), global0.a.x)), Struct_1(var_3.a, vec3<i32>(var_3.b.x, 2147483647i, var_3.b.x), var_3.c, global0.a.x), global0.a.zwy), Struct_2(global2[_wgslsmith_index_u32(u_input.b, 10u)], 26941i, Struct_1(global0.a, vec3<i32>(9578i, -2147483647i, u_input.c.x), vec2<f32>(var_2, -433f), global0.a.x), vec4<u32>(52958u, 19259u, 4294967295u, u_input.b), Struct_1(global0.a, var_3.b, vec2<f32>(global0.c.x, -1427f), global0.d)), vec2<f32>(-770f, -395f)).c), func_1(Struct_3(Struct_2(global2[_wgslsmith_index_u32(19793u, 10u)], u_input.a, Struct_1(vec4<bool>(var_3.d, false, true, false), global0.b, var_1.zz, true), vec4<u32>(u_input.b, 1u, u_input.b, 40774u), Struct_1(vec4<bool>(var_3.a.x, global0.a.x, global0.d, true), vec3<i32>(-1i, 35477i, -22848i), vec2<f32>(var_1.x, 298f), global0.a.x)), Struct_1(var_3.a, global0.b, vec2<f32>(var_3.c.x, var_1.x), false), vec3<bool>(false, global0.d, var_3.d)), Struct_2(vec4<f32>(var_3.c.x, 542f, global0.c.x, var_1.x), -1i, Struct_1(vec4<bool>(true, true, var_3.d, false), vec3<i32>(global0.b.x, var_3.b.x, var_3.b.x), var_3.c, var_3.d), vec4<u32>(u_input.b, u_input.b, 31033u, u_input.b), Struct_1(vec4<bool>(true, var_3.a.x, false, true), vec3<i32>(-1i, 2147483647i, 1i), vec2<f32>(-1157f, 123f), global0.a.x)), global0.c).e, var_3.a.zzy), u_input.c.x)));
    let var_5 = Struct_2(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(~0u << (_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, 0u), 4294967295u) % 32u), 10u)]), ~_wgslsmith_div_i32(-2748i, ~var_3.b.x), Struct_1(select(var_3.a, var_3.a, all(var_3.a.zx)), var_3.b, _wgslsmith_f_op_vec2_f32(-var_1.zy), true), firstLeadingBit(~(~vec4<u32>(u_input.b, 77667u, u_input.b, u_input.b))), func_1(Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(269f, -118f, var_4, global0.c.x) - global2[_wgslsmith_index_u32(u_input.b, 10u)]), 29883i & global0.b.x, func_1(Struct_3(Struct_2(vec4<f32>(-364f, var_2, var_3.c.x, var_2), -2147483647i, Struct_1(vec4<bool>(false, var_3.a.x, true, true), var_3.b, vec2<f32>(var_2, -261f), false), vec4<u32>(23451u, 20062u, u_input.b, 4294967295u), Struct_1(global0.a, var_3.b, global0.c, global0.d)), Struct_1(var_3.a, vec3<i32>(u_input.c.x, 1i, u_input.a), var_1.yy, var_3.a.x), global0.a.xxx), Struct_2(global2[_wgslsmith_index_u32(u_input.b, 10u)], u_input.a, Struct_1(vec4<bool>(true, global0.d, global0.d, false), global0.b, vec2<f32>(1925f, 201f), global0.d), vec4<u32>(u_input.b, 56513u, 4294967295u, 62457u), Struct_1(vec4<bool>(true, global0.a.x, global0.d, false), global0.b, vec2<f32>(-478f, global0.c.x), var_3.d)), var_1.xz).e, ~vec4<u32>(4294967295u, 26583u, u_input.b, u_input.b), Struct_1(var_3.a, vec3<i32>(-46045i, 29173i, 78647i), var_1.yx, var_3.a.x)), func_1(Struct_3(Struct_2(vec4<f32>(1383f, var_4, var_1.x, var_1.x), -1i, Struct_1(vec4<bool>(false, global0.d, global0.a.x, var_3.a.x), global0.b, vec2<f32>(global0.c.x, global0.c.x), false), vec4<u32>(u_input.b, 1u, u_input.b, 0u), Struct_1(var_3.a, u_input.c.zww, vec2<f32>(2386f, global0.c.x), false)), Struct_1(var_3.a, global0.b, vec2<f32>(477f, 1000f), false), vec3<bool>(true, false, false)), Struct_2(global2[_wgslsmith_index_u32(u_input.b, 10u)], 25639i, Struct_1(vec4<bool>(var_3.d, true, false, var_3.d), var_3.b, vec2<f32>(var_1.x, var_2), false), vec4<u32>(47627u, u_input.b, 17605u, u_input.b), Struct_1(vec4<bool>(var_3.a.x, false, global0.d, var_3.a.x), u_input.c.zzy, var_3.c, global0.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-771f, global0.c.x))).c, vec3<bool>(global0.a.x, true, var_3.a.x)), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(29158u, 10u)]) - _wgslsmith_f_op_vec4_f32(exp2(global2[_wgslsmith_index_u32(u_input.b, 10u)]))), func_1(Struct_3(Struct_2(vec4<f32>(var_4, 282f, var_3.c.x, -897f), u_input.a, Struct_1(vec4<bool>(false, true, var_3.d, global0.a.x), vec3<i32>(-9339i, global0.b.x, -10080i), vec2<f32>(-325f, var_3.c.x), true), vec4<u32>(u_input.b, 20793u, u_input.b, u_input.b), Struct_1(var_3.a, vec3<i32>(-1i, u_input.a, global0.b.x), vec2<f32>(var_1.x, var_2), false)), Struct_1(var_3.a, u_input.c.wwx, vec2<f32>(var_4, 1000f), var_3.d), global0.a.zyy), Struct_2(global2[_wgslsmith_index_u32(u_input.b, 10u)], -1i, Struct_1(var_3.a, vec3<i32>(u_input.a, var_3.b.x, 1i), var_1.yx, true), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), Struct_1(global0.a, vec3<i32>(2147483647i, var_3.b.x, -1i), vec2<f32>(119f, -483f), true)), vec2<f32>(-672f, var_2)).e.b.x << (43311u % 32u), Struct_1(vec4<bool>(global0.a.x, global0.d, global0.d, true), var_3.b, vec2<f32>(685f, 146f), false), ~firstTrailingBit(vec4<u32>(44302u, 90089u, u_input.b, 63418u)), Struct_1(vec4<bool>(global0.a.x, var_3.d, true, true), -var_3.b, var_1.xx, !var_3.d)), _wgslsmith_f_op_vec2_f32(-global0.c)).e);
    var var_6 = u_input.b;
    let var_7 = var_5.c.b.yx;
    let x = u_input.a;
    s_output = StorageBuffer(-abs(~(-1i)) << (~firstTrailingBit(u_input.b) % 32u), ~_wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, global0.b.x), -(var_3.b.x << (u_input.b % 32u))));
}

