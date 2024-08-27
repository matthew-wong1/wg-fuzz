struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_2(893f, Struct_1(40972u, 8143i, vec2<u32>(0u, 0u), vec4<i32>(-12126i, 2147483647i, 1i, 78448i)))), Struct_3(Struct_2(795f, Struct_1(54111u, 2147483647i, vec2<u32>(4294967295u, 25495u), vec4<i32>(2147483647i, i32(-2147483648), -10841i, i32(-2147483648))))), Struct_3(Struct_2(-1584f, Struct_1(1u, -1i, vec2<u32>(0u, 29806u), vec4<i32>(0i, 9322i, -10395i, i32(-2147483648))))), Struct_3(Struct_2(-927f, Struct_1(0u, -38742i, vec2<u32>(50321u, 0u), vec4<i32>(13966i, i32(-2147483648), 1i, 14346i)))), Struct_3(Struct_2(188f, Struct_1(25671u, -28683i, vec2<u32>(33672u, 4257u), vec4<i32>(24007i, 1i, -1908i, i32(-2147483648))))), Struct_3(Struct_2(-791f, Struct_1(0u, -1i, vec2<u32>(0u, 0u), vec4<i32>(1476i, -1i, -1897i, -1i)))), Struct_3(Struct_2(217f, Struct_1(0u, -3335i, vec2<u32>(41755u, 23315u), vec4<i32>(-13801i, -13445i, 22615i, 473i)))), Struct_3(Struct_2(1027f, Struct_1(4294967295u, 2147483647i, vec2<u32>(12395u, 1u), vec4<i32>(-9625i, -24629i, -7033i, -23548i)))), Struct_3(Struct_2(799f, Struct_1(4294967295u, 1i, vec2<u32>(0u, 1312u), vec4<i32>(2527i, 22010i, -5404i, -4088i)))), Struct_3(Struct_2(-928f, Struct_1(4294967295u, i32(-2147483648), vec2<u32>(4294967295u, 4294967295u), vec4<i32>(1i, 57265i, 1i, 1i)))), Struct_3(Struct_2(-642f, Struct_1(4294967295u, -5347i, vec2<u32>(0u, 1u), vec4<i32>(61058i, -5813i, 2147483647i, 1i)))), Struct_3(Struct_2(1426f, Struct_1(61268u, -1i, vec2<u32>(18709u, 1470u), vec4<i32>(19122i, 2147483647i, 2147483647i, 57386i)))), Struct_3(Struct_2(-1352f, Struct_1(1u, -18971i, vec2<u32>(4294967295u, 1u), vec4<i32>(2147483647i, 0i, -44306i, i32(-2147483648))))), Struct_3(Struct_2(-389f, Struct_1(1u, 22511i, vec2<u32>(5118u, 16120u), vec4<i32>(1i, -1i, -53751i, 0i)))), Struct_3(Struct_2(-637f, Struct_1(0u, 22340i, vec2<u32>(1u, 0u), vec4<i32>(-86824i, 32717i, 1i, 1i)))), Struct_3(Struct_2(444f, Struct_1(2225u, -53223i, vec2<u32>(1u, 1u), vec4<i32>(i32(-2147483648), 30218i, 2147483647i, -1i)))), Struct_3(Struct_2(-688f, Struct_1(0u, 1i, vec2<u32>(25622u, 18582u), vec4<i32>(-1i, 0i, -10931i, -1i)))), Struct_3(Struct_2(856f, Struct_1(26236u, -27017i, vec2<u32>(8652u, 4294967295u), vec4<i32>(0i, 1i, 1i, 29235i)))), Struct_3(Struct_2(-176f, Struct_1(52596u, 1i, vec2<u32>(58011u, 24603u), vec4<i32>(0i, 15302i, -18410i, 2147483647i)))), Struct_3(Struct_2(1338f, Struct_1(197u, -1i, vec2<u32>(8147u, 32900u), vec4<i32>(21077i, 1i, 16704i, 4061i)))), Struct_3(Struct_2(737f, Struct_1(64044u, 1i, vec2<u32>(33884u, 4294967295u), vec4<i32>(26636i, -28721i, 0i, 0i)))), Struct_3(Struct_2(-1765f, Struct_1(6913u, 2147483647i, vec2<u32>(4294967295u, 68712u), vec4<i32>(-36337i, 2147483647i, 2147483647i, 8273i)))));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    global0 = array<Struct_3, 22>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-2976f)))))))), Struct_1(~32548u, u_input.a ^ abs(35985i), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.b, u_input.b) & vec2<u32>(u_input.b, u_input.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.b), firstTrailingBit(vec2<u32>(u_input.b, 0u)))), -countOneBits(countOneBits(vec4<i32>(arg_0.x, arg_0.x, u_input.a, u_input.a)))));
    let var_1 = firstLeadingBit(~(arg_0 >> (select(vec3<u32>(var_0.b.a, u_input.b, var_0.b.c.x), vec3<u32>(26222u, var_0.b.a, 4294967295u), false) % vec3<u32>(32u)))) ^ firstTrailingBit(var_0.b.d.wyz);
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-259f * _wgslsmith_f_op_f32(max(134f, 949f))), var_0.b));
    var var_3 = select(-countOneBits(~(-vec2<i32>(20562i, 0i))), ~vec2<i32>(abs(u_input.a | 51515i), 0i), select(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), true), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, false), u_input.b >= 4294967295u), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), false)), false != (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 2511u, var_2.a.b.c.x), vec3<u32>(var_0.b.a, var_2.a.b.c.x, 40385u)) <= ~var_2.a.b.a)));
    return ~(~40230u);
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec2<i32>) -> vec4<i32> {
    var var_0 = true;
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(func_3(arg_2.d.zwz << (vec3<u32>(u_input.b, 61632u, arg_2.a) % vec3<u32>(32u))) & arg_2.a, 0u, ~max(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, arg_2.c.x, 4294967295u, 57270u), vec4<u32>(u_input.b, u_input.b, arg_2.a, 56152u)), 4294967295u), firstLeadingBit(_wgslsmith_dot_vec2_u32(arg_2.c, ~arg_2.c))), firstTrailingBit(~_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.b, 4294967295u, arg_2.c.x, 4294967295u), vec4<u32>(1u, 7465u, 4294967295u, 1u), true), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.c.x, u_input.b, arg_2.c.x, u_input.b), vec4<u32>(arg_2.a, 0u, arg_2.a, 13943u), vec4<u32>(arg_2.c.x, 43531u, u_input.b, u_input.b)))));
    return -select(arg_2.d, arg_2.d, all(vec2<bool>(true, true)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(2147483647i, 0i, arg_0.x)) | -arg_0.x, -1i & arg_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 98680i, arg_1.x), vec3<i32>(arg_0.x, arg_0.x, -26604i) >> (vec3<u32>(36269u, u_input.b, u_input.b) % vec3<u32>(32u))), firstTrailingBit(-80680i)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, arg_0.x, -1i, -1i) | -vec4<i32>(2147483647i, arg_0.x, arg_1.x, u_input.a), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1582f), arg_1, Struct_1(u_input.b, 20972i, vec2<u32>(0u, u_input.b), vec4<i32>(-24416i, 1i, -2147483647i, u_input.a)), arg_1.xz))), vec4<i32>(countOneBits(reverseBits(select(9939i, 16600i, false))), arg_1.x, ~(-2147483647i), _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, u_input.a), _wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(-2147483647i, 2147483647i))), ~(~15362i))));
    global0 = array<Struct_3, 22>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -680f), _wgslsmith_f_op_f32(floor(478f))), _wgslsmith_f_op_f32(1f - 2013f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(341f)) * _wgslsmith_f_op_f32(sign(1349f))))), 1372f));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-var_1.x))), var_1.x)), Struct_1(firstLeadingBit(min(0u, u_input.b) & u_input.b), _wgslsmith_dot_vec4_i32((vec4<i32>(var_0, u_input.a, 33130i, 52863i) ^ vec4<i32>(arg_0.x, 2147483647i, -1i, var_0)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, 3942i, var_0, -2147483647i), vec4<i32>(-1i, var_0, 0i, 2147483647i)), -vec4<i32>(arg_1.x, -49283i, var_0, u_input.a)), _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(u_input.b, u_input.b)) << (vec2<u32>(89325u, u_input.b) % vec2<u32>(32u)), abs(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), vec2<bool>(false, false)))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, 1i), ~(-2147483647i)), _wgslsmith_div_i32(-u_input.a, arg_0.x ^ u_input.a), ~(~u_input.a), ~2147483647i)));
    var var_3 = arg_1.x;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 14130u;
    global0 = array<Struct_3, 22>();
    let var_1 = Struct_1(firstTrailingBit(var_0), abs(u_input.a), select(max(vec2<u32>(u_input.b, 1u), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(36819u, u_input.b)), u_input.b | 1071u)), ~(~(~vec2<u32>(1u, u_input.b))), vec2<bool>(false, any(vec3<bool>(false, true, false)))), ~(~vec4<i32>(u_input.a, 2147483647i, 10665i ^ u_input.a, abs(0i))));
    let var_2 = ~var_1.b;
    var var_3 = min(vec4<i32>(var_2, abs(_wgslsmith_mult_i32(53454i, countOneBits(5287i))), ~func_1(var_1.d.zy, vec3<i32>(var_2, 0i, u_input.a)) ^ var_2, _wgslsmith_clamp_i32(9538i, func_1(vec2<i32>(var_2, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.b, 2147483647i, var_1.b), vec3<i32>(-4039i, u_input.a, -1i))), _wgslsmith_mult_i32(-var_1.d.x, i32(-1i) * -36682i))), ~(-(~countOneBits(var_1.d))));
    let x = u_input.a;
    s_output = StorageBuffer(-35980i);
}

