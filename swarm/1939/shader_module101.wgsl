struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: array<u32, 3>;

var<private> global2: array<vec3<i32>, 7>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_4) -> vec2<u32> {
    let var_0 = arg_2.b.c.c;
    var var_1 = arg_2;
    var var_2 = _wgslsmith_clamp_vec4_i32(-abs(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(16908i, 1i, -23237i, -2147483647i), vec4<i32>(12438i, 1i, 1i, 13377i)), vec4<i32>(1i, 1i, 1i, 1i))), vec4<i32>(-(~(-22339i)), -firstLeadingBit(i32(-1i) * -16252i), abs(~(1i << (1u % 32u))), _wgslsmith_dot_vec2_i32(~vec2<i32>(9601i, -2147483647i), countOneBits(vec2<i32>(-14284i, -2147483647i))) ^ 26828i), vec4<i32>(countOneBits(~(-3452i) << (~arg_0.x % 32u)), ~_wgslsmith_div_i32(_wgslsmith_sub_i32(28940i, 0i), _wgslsmith_clamp_i32(-2147483647i, 54961i, -25435i)), reverseBits(1i), reverseBits(firstLeadingBit(16657i))));
    var var_3 = arg_0.xzw;
    var var_4 = var_1.b.c;
    return vec2<u32>(arg_2.b.b, firstTrailingBit(~abs(4294967295u << (var_1.b.b % 32u))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    global0 = array<u32, 11>();
    var var_0 = 0i;
    let var_1 = arg_0.x;
    global2 = array<vec3<i32>, 7>();
    global0 = array<u32, 11>();
    return Struct_2(Struct_1(!all(vec2<bool>(false, false)) || false, min(~(~vec4<u32>(1u, 0u, u_input.a.x, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(42898u, global1[_wgslsmith_index_u32(1u, 3u)], 0u, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(17641u, 3u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], 11u)], u_input.a.x, 53430u) | vec4<u32>(4294967295u, u_input.a.x, 4294967295u, global1[_wgslsmith_index_u32(1u, 3u)])))), _wgslsmith_dot_vec2_u32(u_input.a.yx, func_3(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(13936u, 11u)], 36407u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], 11u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)]), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)], 0u)), reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(58569u, 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 1u, global0[_wgslsmith_index_u32(36873u, 11u)]))), Struct_3(select(vec2<bool>(true, true), vec2<bool>(true, true), true), max(4294967295u, 1u), Struct_2(Struct_1(true, vec4<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)], 66156u)), 5958u, Struct_1(true, vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 3u)], 3u)], 0u, 1u, 0u)), vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xz)), Struct_4(262f, Struct_3(vec2<bool>(true, false), 1u, Struct_2(Struct_1(false, vec4<u32>(16934u, global0[_wgslsmith_index_u32(4294967295u, 11u)], 0u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)], 11u)])), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66927u, 3u)], 3u)], Struct_1(true, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], 11u)], global1[_wgslsmith_index_u32(11838u, 3u)], u_input.a.x, u_input.a.x)), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(46132u, 3u)]), u_input.a.xx)), _wgslsmith_f_op_vec3_f32(vec3<f32>(957f, arg_0.x, arg_0.x) + vec3<f32>(-334f, -896f, 1000f))))), Struct_1(!(true == any(vec4<bool>(false, true, false, false))), min(vec4<u32>(min(u_input.a.x, u_input.a.x), ~u_input.a.x, ~92987u, global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1u, 11u)], 3u)]), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 21656u, u_input.a.x, global1[_wgslsmith_index_u32(1u, 3u)]), ~vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.a.x, 3u)], 4294967295u, global0[_wgslsmith_index_u32(0u, 11u)])))), u_input.a.zx, func_3(max(~(~vec4<u32>(109073u, 0u, 0u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 3u)], 11u)])), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(64785u, 11u)], 4294967295u, u_input.a.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], 3u)]), vec4<u32>(global0[_wgslsmith_index_u32(44649u, 11u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)], 19931u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)], 3u)])), vec4<u32>(u_input.a.x, 4294967295u, 1u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9961u, 3u)], 11u)]))), Struct_3(vec2<bool>(true, true), func_3(~vec4<u32>(u_input.a.x, u_input.a.x, 34452u, 0u), Struct_3(vec2<bool>(false, true), global1[_wgslsmith_index_u32(1u, 3u)], Struct_2(Struct_1(true, vec4<u32>(44314u, 0u, 54583u, u_input.a.x)), u_input.a.x, Struct_1(true, vec4<u32>(4694u, 66807u, u_input.a.x, 1u)), u_input.a.yz, vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59039u, 11u)], 3u)]))), Struct_4(-252f, Struct_3(vec2<bool>(false, true), 18881u, Struct_2(Struct_1(false, vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(33955u, 11u)], 11669u, global1[_wgslsmith_index_u32(34175u, 3u)])), 1u, Struct_1(true, vec4<u32>(global0[_wgslsmith_index_u32(31874u, 11u)], u_input.a.x, 47038u, 4294967295u)), vec2<u32>(45064u, u_input.a.x), vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 3u)]))), vec3<f32>(arg_0.x, 669f, var_1))).x, Struct_2(Struct_1(true, vec4<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(18295u, 11u)], global0[_wgslsmith_index_u32(56232u, 11u)])), 1u, Struct_1(false, vec4<u32>(1u, u_input.a.x, 67789u, 44060u)), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(0u, 11u)]), u_input.a.yz)), Struct_4(-499f, Struct_3(vec2<bool>(true, true), 0u, Struct_2(Struct_1(false, vec4<u32>(1u, u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(1u, 3u)])), global1[_wgslsmith_index_u32(u_input.a.x, 3u)], Struct_1(true, vec4<u32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 3u)], 11u)], 1u, u_input.a.x, 37177u)), u_input.a.yz, vec2<u32>(global0[_wgslsmith_index_u32(31784u, 11u)], 0u))), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(select(-1004f, -155f, false)), -1318f))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1442f * 759f) + -858f), Struct_3(!vec2<bool>(any(vec2<bool>(false, false)), true), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 30659u), 11u)], func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1343f, arg_1.x, 1739f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.zzx + _wgslsmith_f_op_vec3_f32(exp2(arg_1.zxy))))));
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 11u)];
    var var_2 = 87923u;
    var var_3 = true || (-1864f <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-301f, arg_1.x) + 1000f))));
    let var_4 = _wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_sub_u32(~var_0.b.b, 86913u), ~func_3(var_0.b.c.c.b, Struct_3(vec2<bool>(false, true), 1u, var_0.b.c), Struct_4(arg_0.x, Struct_3(vec2<bool>(var_0.b.c.c.a, var_0.b.a.x), 0u, var_0.b.c), vec3<f32>(-806f, var_0.c.x, arg_0.x))).x), ~(~vec2<u32>(~23376u, _wgslsmith_add_u32(53627u, 25954u))));
    return Struct_1(true, ~(var_0.b.c.a.b ^ vec4<u32>(var_4.x << (global1[_wgslsmith_index_u32(113971u, 3u)] % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_4.x, var_4.x), u_input.a.yy), 30103u << (var_4.x % 32u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, global1[_wgslsmith_index_u32(var_4.x, 3u)]), 11u)])));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = vec4<bool>(true, any(select(select(!vec3<bool>(false, arg_0.c.a, true), select(vec3<bool>(true, true, true), vec3<bool>(false, arg_0.c.a, arg_0.a.a), vec3<bool>(arg_0.a.a, arg_0.a.a, arg_0.c.a)), vec3<bool>(arg_0.c.a, arg_0.c.a, arg_0.c.a)), select(select(vec3<bool>(true, true, arg_0.c.a), vec3<bool>(false, false, true), vec3<bool>(false, arg_0.c.a, true)), !vec3<bool>(arg_0.c.a, true, arg_0.a.a), select(vec3<bool>(true, arg_0.c.a, arg_0.a.a), vec3<bool>(arg_0.c.a, false, true), arg_0.c.a)), !select(vec3<bool>(arg_0.a.a, arg_0.c.a, arg_0.c.a), vec3<bool>(false, false, false), true))), select(!(true | arg_0.c.a), false, select(arg_0.c.a, arg_0.c.a, true)) || select(!(!arg_0.c.a), true, !arg_0.a.a), arg_0.a.a);
    var var_1 = 4294967295u;
    var var_2 = vec3<i32>(countOneBits(4221i), -(~(~countOneBits(-2147483647i))), abs(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 7u)] & global2[_wgslsmith_index_u32(68058u, 7u)]))));
    global2 = array<vec3<i32>, 7>();
    let var_3 = _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(min(-_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, var_2.x), vec2<i32>(var_2.x, var_2.x)), _wgslsmith_add_vec2_i32(vec2<i32>(var_2.x, 42015i), -vec2<i32>(var_2.x, 1892i))), -(~(-vec2<i32>(-2147483647i, var_2.x)))), ~(~var_2.yy));
    return func_2(vec4<f32>(_wgslsmith_f_op_f32(min(1287f, _wgslsmith_f_op_f32(f32(-1f) * -1110f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -921f) - 2375f), 1622f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1898f, -153f)), 569f)), 834f)), _wgslsmith_f_op_f32(round(-2908f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.yz;
    var var_1 = Struct_3(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(14918u, 11u)] | u_input.a.x, _wgslsmith_clamp_u32(4294967295u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31661u, 11u)], 3u)], 46422u))), 60651u), func_4(Struct_2(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1151f, -1400f, 743f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2247f, 2145f, 630f, 486f))), i32(-1i) * -2147483647i), global1[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(var_0.x, 11u)], ~4294967295u), 3u)], func_2(vec4<f32>(-357f, -163f, 866f, 1931f)).a, u_input.a.zy, ~(~vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 11u)])))));
    let var_2 = -abs(min(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(-44775i, 47425i, 46259i, 54214i), countOneBits(vec4<i32>(10572i, 1i, 24252i, 8014i)), !vec4<bool>(false, var_1.c.a.a, false, false))));
    var_1 = Struct_3(!vec2<bool>(true, all(select(vec4<bool>(var_1.c.a.a, var_1.a.x, false, true), vec4<bool>(var_1.c.c.a, true, true, false), vec4<bool>(true, var_1.c.c.a, true, true)))), ~global0[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(0u, 3u)], var_0.x), vec2<u32>(4294967295u, var_1.b))), 11u)], Struct_2(Struct_1(true, ~vec4<u32>(55583u, 65968u, var_1.b, 1u)), ~(~_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(1u, var_1.b))), func_4(Struct_2(func_4(Struct_2(Struct_1(var_1.c.c.a, vec4<u32>(global1[_wgslsmith_index_u32(78161u, 3u)], 20923u, var_1.b, 0u)), 10119u, Struct_1(var_1.c.a.a, vec4<u32>(4294967295u, var_0.x, 4294967295u, 7339u)), u_input.a.zy, vec2<u32>(1u, var_0.x))).c, func_2(vec4<f32>(-1000f, -116f, -343f, -214f)).b, var_1.c.c, var_0, vec2<u32>(global0[_wgslsmith_index_u32(12622u, 11u)], u_input.a.x))).c, ~(var_0 >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))) >> (~var_0 % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.a.x, 1u) | vec2<u32>(36785u, 33048u)), ~var_0)));
    let var_3 = func_4(var_1.c).a;
    var var_4 = ~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_3.b.x, 48263u ^ ~var_1.b, ~(~var_3.b.x)), vec4<u32>(firstTrailingBit(0u), ~0u, 4294967295u, 1u));
    global0 = array<u32, 11>();
    var var_5 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1659f, 1287f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1441f, -600f) - vec2<f32>(-458f, 2539f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(791f, _wgslsmith_f_op_f32(select(-1209f, -164f, var_3.a))))));
    var var_6 = Struct_2(Struct_1(all(!vec3<bool>(true, var_3.a, false)), vec4<u32>(54354u, _wgslsmith_div_u32(1u, abs(24681u)), ~var_0.x, ~_wgslsmith_add_u32(u_input.a.x, 0u))), abs(global0[_wgslsmith_index_u32(~func_2(vec4<f32>(-544f, 1083f, var_5.x, 135f)).a.b.x, 11u)] & _wgslsmith_dot_vec2_u32(select(vec2<u32>(var_3.b.x, var_0.x), vec2<u32>(u_input.a.x, 0u), var_3.a), vec2<u32>(58326u, global0[_wgslsmith_index_u32(var_0.x, 11u)]))), var_1.c.c, countOneBits(~var_4.xx), ~vec2<u32>(40653u, 30849u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.x, var_5.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_5.x)), _wgslsmith_f_op_f32(-var_5.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2551f + var_5.x))))), var_2.x, var_4.x);
}

