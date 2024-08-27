struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(17579u, Struct_1(vec4<u32>(0u, 22147u, 69155u, 4294967295u), vec2<i32>(-11583i, 0i), 1i), Struct_1(vec4<u32>(49554u, 41690u, 4294967295u, 7329u), vec2<i32>(-1i, 1i), 1i)), Struct_2(4294967295u, Struct_1(vec4<u32>(30333u, 1u, 0u, 4294967295u), vec2<i32>(0i, 1i), -9149i), Struct_1(vec4<u32>(0u, 70847u, 4294967295u, 2655u), vec2<i32>(-23421i, i32(-2147483648)), 0i)), Struct_2(1920u, Struct_1(vec4<u32>(18215u, 0u, 24218u, 1u), vec2<i32>(0i, -4475i), -67940i), Struct_1(vec4<u32>(1u, 48048u, 0u, 1u), vec2<i32>(-13223i, 1i), 0i)), Struct_2(0u, Struct_1(vec4<u32>(0u, 94125u, 79658u, 59883u), vec2<i32>(46098i, -28119i), -70000i), Struct_1(vec4<u32>(14849u, 4294967295u, 4294967295u, 27504u), vec2<i32>(-38593i, i32(-2147483648)), 9698i)), Struct_2(4294967295u, Struct_1(vec4<u32>(17804u, 8762u, 0u, 23557u), vec2<i32>(1i, 1i), 91656i), Struct_1(vec4<u32>(82476u, 4294967295u, 4294967295u, 4294967295u), vec2<i32>(i32(-2147483648), -289i), -20775i)), Struct_2(0u, Struct_1(vec4<u32>(31265u, 7905u, 0u, 58978u), vec2<i32>(i32(-2147483648), 1i), 2147483647i), Struct_1(vec4<u32>(60993u, 29672u, 35816u, 10642u), vec2<i32>(-1i, -1i), i32(-2147483648))));

var<private> global1: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true));

var<private> global2: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true));

var<private> global3: Struct_4;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<f32>) -> vec2<i32> {
    global2 = array<vec4<bool>, 23>();
    let var_0 = Struct_1(countOneBits(vec4<u32>(29910u, global3.a, 22359u, global3.e)), vec2<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(global3.c, global3.c, -1i, u_input.a)) & max(vec4<i32>(11914i, global3.c, -2147483647i, global3.c), u_input.b), _wgslsmith_mod_vec4_i32(select(vec4<i32>(1i, 52462i, global3.c, -54001i), u_input.b, global3.d.a), _wgslsmith_div_vec4_i32(vec4<i32>(-8033i, global3.c, global3.c, -26852i), u_input.b))), global3.c), 0i);
    var var_1 = _wgslsmith_add_u32(~_wgslsmith_sub_u32(~var_0.a.x, 9067u), firstTrailingBit(~_wgslsmith_sub_u32(4294967295u, 4294967295u))) & abs(1u);
    global3 = Struct_4(1u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1982f) - _wgslsmith_f_op_f32(f32(-1f) * -2297f)), -431f, global3.b.x), var_0.c, Struct_3(~_wgslsmith_dot_vec3_i32(u_input.b.yyw, vec3<i32>(global3.c, -21089i, global3.c)) >= _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, global3.c, 0i, 5291i), u_input.b), select(u_input.a, 2147483647i, false))), _wgslsmith_sub_u32(~1u, global3.e));
    let var_2 = _wgslsmith_dot_vec2_i32(~countOneBits(_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(-1i, global3.c)), max(var_0.b, u_input.b.zw), firstLeadingBit(vec2<i32>(u_input.a, 2147483647i)))), firstLeadingBit(min(abs(vec2<i32>(1i, var_0.c)), -(~vec2<i32>(u_input.b.x, 991i)))));
    return abs(u_input.b.zx);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = !((arg_0 && true) & all(!vec3<bool>(false, false, arg_0)));
    let var_1 = arg_1.a.wwy;
    let var_2 = ~(~max(firstLeadingBit(_wgslsmith_div_u32(arg_1.a.x, 16689u)), ~(~88289u)));
    let var_3 = Struct_1(_wgslsmith_mult_vec4_u32(arg_1.a, countOneBits(vec4<u32>(abs(1u), _wgslsmith_add_u32(0u, var_2), var_2 << (arg_1.a.x % 32u), 29541u))), arg_1.b, -21613i);
    let var_4 = _wgslsmith_sub_vec4_u32(vec4<u32>(var_3.a.x, _wgslsmith_add_u32(4294967295u, arg_1.a.x), _wgslsmith_mult_u32(0u, ~1u), var_1.x), var_3.a);
    return max(vec2<u32>(abs(min(1u, _wgslsmith_div_u32(var_1.x, 4294967295u))), var_4.x ^ _wgslsmith_sub_u32(var_1.x, 6596u)), arg_1.a.xx);
}

fn func_2() -> vec2<u32> {
    global0 = array<Struct_2, 6>();
    global3 = Struct_4(_wgslsmith_sub_u32(4294967295u, 1u), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(f32(-1f) * -521f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(495f, -1000f)), 565f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.b - global3.b)))), -u_input.a, Struct_3(!global3.d.a), global3.a);
    let var_0 = global3.b.x;
    global0 = array<Struct_2, 6>();
    global1 = array<vec4<bool>, 22>();
    return func_4(_wgslsmith_f_op_f32(f32(-1f) * -724f) < global3.b.x, Struct_1(_wgslsmith_div_vec4_u32(~vec4<u32>(global3.e, global3.a, global3.a, 0u), vec4<u32>(12729u, 8501u, 107958u, 7845u)), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, -1817f, 693f, -824f))), ~(-1i))) << (vec2<u32>(func_4(false | global3.d.a, Struct_1(~vec4<u32>(32118u, 0u, 19187u, global3.e), vec2<i32>(-2147483647i, -1i), abs(global3.c))).x, ~0u << (global3.a % 32u)) % vec2<u32>(32u));
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = -36135i;
    global0 = array<Struct_2, 6>();
    let var_1 = Struct_4(global3.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3.b.x * global3.b.x), global3.b.x, -733f))), -2147483647i, global3.d, 4294967295u);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-global3.b.x), var_1.b.x))) + vec3<f32>(_wgslsmith_f_op_f32(step(var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -918f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(sign(-885f))), 826f));
    let var_3 = ~(~4294967295u);
    return Struct_1(~arg_1.b.a, vec2<i32>(~firstTrailingBit(~u_input.b.x), 0i), -23331i);
}

fn func_1(arg_0: i32, arg_1: f32) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 6u)];
    global0 = array<Struct_2, 6>();
    let var_1 = max(_wgslsmith_mult_i32(-1427i, select(_wgslsmith_mod_i32(13740i, arg_0), arg_0, true)) | abs(min(abs(var_0.c.b.x), global3.c)), global3.c);
    var var_2 = Struct_1(select(var_0.b.a, ~(~(~vec4<u32>(0u, 23060u, global3.e, 4294967295u))), any(!select(vec2<bool>(false, global3.d.a), vec2<bool>(global3.d.a, false), global3.d.a))), ~select(_wgslsmith_sub_vec2_i32(~u_input.b.zx, -vec2<i32>(10649i, var_0.b.b.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(9598i, var_0.c.b.x), _wgslsmith_mod_vec2_i32(var_0.c.b, u_input.b.wz)), select(select(true, global3.d.a, false), true, !global3.d.a)), -18191i);
    var var_3 = func_5(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(func_2(), var_2.a.xx), var_2.a.xz), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.b.a.x, abs(22667u)), 6u)]);
    return _wgslsmith_f_op_f32(f32(-1f) * -257f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global3.a, 23418u), vec3<u32>(4294967295u, global3.e, global3.a)), min(vec3<u32>(4294967295u, global3.a, 0u), vec3<u32>(0u, 1u, global3.a))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.e, 1u, global3.a), vec3<u32>(20326u, global3.a, 1u))) | ~57063u);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(global3.c), _wgslsmith_dot_vec4_u32(~vec4<u32>(min(82220u, global3.e), _wgslsmith_div_u32(global3.e, 87473u), 4294967295u ^ global3.a, 31805u << (global3.e % 32u)), ~((vec4<u32>(84818u, 1u, global3.e, global3.e) << (vec4<u32>(global3.e, 4294967295u, global3.a, global3.e) % vec4<u32>(32u))) >> (vec4<u32>(global3.e, 0u, global3.e, global3.a) % vec4<u32>(32u)))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global3.e, 46624u, 0u) | vec4<u32>(global3.a, global3.a, global3.e, 6099u), vec4<u32>(global3.a, global3.a, 0u, 1u) ^ vec4<u32>(0u, 4294967295u, 1u, global3.e))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global3.c, global3.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-284f * global3.b.x) + _wgslsmith_f_op_f32(-global3.b.x)), global3.b.x, _wgslsmith_f_op_f32(ceil(-544f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-290f, _wgslsmith_f_op_f32(global3.b.x - global3.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1403f), global3.b.x) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.b.x, global3.b.x, -446f, global3.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, global3.b.x, -1217f, -1000f)), vec4<bool>(global3.d.a, global3.d.a, global3.d.a, global3.d.a)))))));
}

