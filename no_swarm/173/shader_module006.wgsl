struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<bool>(false, true, true), vec3<u32>(1u, 27950u, 0u), vec4<u32>(26181u, 4294967295u, 1u, 4294967295u), 57804u, vec4<u32>(47872u, 1u, 0u, 9566u)), Struct_1(vec3<bool>(true, false, true), vec3<u32>(48397u, 1u, 21811u), vec4<u32>(15502u, 4294967295u, 31520u, 15017u), 1346u, vec4<u32>(23109u, 1u, 1u, 56797u)), Struct_1(vec3<bool>(false, false, false), vec3<u32>(23154u, 59035u, 19195u), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), 1u, vec4<u32>(4294967295u, 6485u, 1u, 1u)), Struct_1(vec3<bool>(false, false, true), vec3<u32>(1u, 28252u, 1u), vec4<u32>(4294967295u, 0u, 1u, 0u), 33616u, vec4<u32>(20276u, 57896u, 18445u, 22132u)), Struct_1(vec3<bool>(true, true, true), vec3<u32>(1u, 0u, 13830u), vec4<u32>(28539u, 45986u, 17798u, 94017u), 4294967295u, vec4<u32>(26739u, 88330u, 1u, 1u)));

var<private> global1: array<vec4<u32>, 27>;

var<private> global2: Struct_3 = Struct_3(-238f, vec3<u32>(17765u, 59757u, 1u), 1000f, vec2<i32>(2147483647i, 73771i));

var<private> global3: array<i32, 3> = array<i32, 3>(-17563i, 2147483647i, 2147483647i);

var<private> global4: array<i32, 26>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>, arg_3: f32) -> bool {
    global0 = array<Struct_1, 5>();
    let var_0 = ~_wgslsmith_add_vec3_u32(vec3<u32>(~arg_0.d, _wgslsmith_clamp_u32(4294967295u, ~54003u, arg_0.d), ~(~61737u)), ~global2.b);
    return arg_0.a.x;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> vec2<i32> {
    let var_0 = _wgslsmith_dot_vec3_i32(-(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(global2.b.x, 3u)], global4[_wgslsmith_index_u32(4294967295u, 26u)], -2147483647i), vec3<i32>(global4[_wgslsmith_index_u32(51323u, 26u)], global3[_wgslsmith_index_u32(5141u, 3u)], global3[_wgslsmith_index_u32(arg_0.b.x, 3u)]))) | vec3<i32>(u_input.a, ~global3[_wgslsmith_index_u32(global2.b.x, 3u)], global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.c.x, 21538u), 3u)])), ~(~countOneBits(-vec3<i32>(-2147483647i, 0i, u_input.a))));
    let var_1 = _wgslsmith_mult_vec3_u32(~firstTrailingBit(arg_0.b & global2.b), (firstLeadingBit(global2.b) | _wgslsmith_div_vec3_u32(firstLeadingBit(global2.b), _wgslsmith_sub_vec3_u32(arg_2.e.zzy, arg_0.b))) << (~select(select(global2.b, global2.b, arg_0.a.x), global2.b, true) % vec3<u32>(32u)));
    var var_2 = Struct_1(arg_2.a, min(abs(countOneBits(vec3<u32>(0u, global2.b.x, arg_2.d))), _wgslsmith_div_vec3_u32(var_1 >> (arg_0.b % vec3<u32>(32u)), abs(vec3<u32>(arg_2.b.x, var_1.x, arg_2.d))) & _wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.x, global2.b.x, var_1.x), ~vec3<u32>(var_1.x, 0u, 12427u))), _wgslsmith_mod_vec4_u32(select(abs(vec4<u32>(45941u, arg_0.c.x, 92598u, var_1.x) ^ global1[_wgslsmith_index_u32(global2.b.x, 27u)]), arg_0.e, all(arg_0.a.zx)), vec4<u32>(~(global2.b.x << (arg_0.d % 32u)), ~(~arg_0.b.x), _wgslsmith_div_u32(global2.b.x, global2.b.x), 1u)), _wgslsmith_mod_u32(4294967295u, 35623u) | _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, arg_0.e.x)), var_1.zx), global1[_wgslsmith_index_u32(arg_0.e.x & 0u, 27u)] << (firstLeadingBit(countOneBits(~arg_0.e)) % vec4<u32>(32u)));
    global1 = array<vec4<u32>, 27>();
    let var_3 = var_2.d;
    return vec2<i32>(-1i) * -global2.d;
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(global2.b.x, 5u)], !(!(~1i != -u_input.a)), global2.d.x);
    let var_1 = Struct_1(!vec3<bool>(var_0.a.a.x || true, true, false), global2.b, abs(~(~global1[_wgslsmith_index_u32(~var_0.a.d, 27u)])), _wgslsmith_mod_u32(35587u, 4294967295u), (_wgslsmith_div_vec4_u32(global1[_wgslsmith_index_u32(1u, 27u)] << (var_0.a.e % vec4<u32>(32u)), min(vec4<u32>(38469u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, var_0.a.e.x, var_0.a.b.x, 36406u))) & _wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(37227u, 27u)], vec4<u32>(1u, 0u, var_0.a.b.x, global2.b.x))) ^ vec4<u32>(_wgslsmith_mult_u32(4294967295u, countOneBits(var_0.a.e.x)), var_0.a.e.x, ~(~var_0.a.d), var_0.a.d));
    var var_2 = vec4<bool>(false, any(!vec2<bool>(var_1.a.x && false, true)), true, all(select(select(!vec3<bool>(var_0.a.a.x, false, true), !var_0.a.a, select(var_1.a, var_1.a, var_1.a.x)), vec3<bool>(true, func_2(Struct_1(var_1.a, global2.b, vec4<u32>(16233u, var_1.e.x, 0u, global2.b.x), 0u, vec4<u32>(4294967295u, 33927u, 4294967295u, 1u)), global2.c, vec3<f32>(-678f, global2.c, global2.c), -1090f), true), var_0.a.a)));
    global2 = Struct_3(_wgslsmith_f_op_f32(-397f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global2.a, global2.c))))))), reverseBits(vec3<u32>(_wgslsmith_add_u32(~16946u, ~var_1.c.x), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.x, 1u, global2.b.x), vec3<u32>(var_0.a.e.x, global2.b.x, var_1.d)))), _wgslsmith_div_f32(-471f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c, global2.c))), _wgslsmith_clamp_vec2_i32(global2.d, -func_3(var_0.a, _wgslsmith_f_op_f32(select(global2.a, global2.c, var_2.x)), var_1, _wgslsmith_f_op_f32(-global2.a)), vec2<i32>(_wgslsmith_sub_i32(12584i, var_0.c) << (38512u % 32u), u_input.a)));
    let var_3 = -(max(vec4<i32>(-1i, firstTrailingBit(1i), global4[_wgslsmith_index_u32(1u, 26u)], _wgslsmith_dot_vec2_i32(vec2<i32>(11525i, u_input.a), global2.d)), -vec4<i32>(-1i, global4[_wgslsmith_index_u32(4294967295u, 26u)], var_0.c, global3[_wgslsmith_index_u32(27662u, 3u)])) << (vec4<u32>(_wgslsmith_mod_u32(~var_1.c.x, ~global2.b.x), 4294967295u & (global2.b.x ^ 0u), ~4294967295u, ~6587u) % vec4<u32>(32u)));
    return var_2.wxx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, false))), vec2<bool>(true, true), true), vec2<bool>(true, true), !vec2<bool>(false, any(vec4<bool>(false, true, false, true)))), !vec2<bool>(any(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -1723f) < global2.c));
    global0 = array<Struct_1, 5>();
    global3 = array<i32, 3>();
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(29596i, global2.d.x), -(i32(-1i) * -global2.d.x)) & -global2.d.x;
    let var_2 = vec3<bool>(!func_2(Struct_1(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, true), false), firstTrailingBit(vec3<u32>(1u, global2.b.x, global2.b.x)), global1[_wgslsmith_index_u32(abs(106938u), 27u)], ~0u, abs(global1[_wgslsmith_index_u32(global2.b.x, 27u)])), -1033f, vec3<f32>(_wgslsmith_f_op_f32(1472f - global2.a), _wgslsmith_f_op_f32(round(1314f)), global2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1981f)) - 1f)), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~global2.b.x), min(vec3<i32>(global4[_wgslsmith_index_u32(94710u & global2.b.x, 26u)], u_input.a, _wgslsmith_mult_i32(u_input.a, -2147483647i)) & (vec3<i32>(global3[_wgslsmith_index_u32(66184u, 3u)], 17517i, u_input.a) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(-35619i, 1i, 0i), vec3<i32>(1i, 78528i, u_input.a))), min(vec3<i32>(min(global2.d.x, 70688i), global2.d.x << (global2.b.x % 32u), _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(20702u, 3u)], -43905i)), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, global4[_wgslsmith_index_u32(global2.b.x, 26u)]), vec3<i32>(-1i, global2.d.x, -2147483647i)), -vec3<i32>(u_input.a, 20919i, -2147483647i)))), -1569f, 11508i);
}

