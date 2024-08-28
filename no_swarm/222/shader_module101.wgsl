struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: bool,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

var<private> global1: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(17098i, -19337i, 5124i, -50304i), vec4<i32>(40730i, 0i, 19318i, -23308i), vec4<i32>(i32(-2147483648), -22346i, 23888i, 0i), vec4<i32>(40563i, 1i, -9911i, i32(-2147483648)), vec4<i32>(2147483647i, -1i, -16100i, 28860i), vec4<i32>(0i, i32(-2147483648), 2147483647i, 0i), vec4<i32>(2147483647i, -3880i, 2875i, 45469i), vec4<i32>(1i, 17570i, -17357i, 40426i), vec4<i32>(-25141i, -37052i, 1694i, i32(-2147483648)), vec4<i32>(-1i, 1i, -13227i, 2147483647i), vec4<i32>(0i, 35769i, -57398i, 28657i), vec4<i32>(1i, 58525i, -19829i, -159i), vec4<i32>(23271i, 3163i, 0i, 1i), vec4<i32>(2147483647i, i32(-2147483648), -33076i, 2147483647i), vec4<i32>(2147483647i, -1i, 0i, -1i), vec4<i32>(46451i, 0i, 1i, -79543i), vec4<i32>(i32(-2147483648), 34937i, -1i, -14784i), vec4<i32>(-1i, 2147483647i, -1i, 2147483647i), vec4<i32>(2147483647i, 37726i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-14318i, 2147483647i, 0i, 37945i), vec4<i32>(i32(-2147483648), 31751i, 1i, -44255i), vec4<i32>(108424i, -13535i, -14333i, i32(-2147483648)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    global1 = array<vec4<i32>, 22>();
    return -1835f;
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<bool>(!select(any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false))), !all(vec4<bool>(false, false, false, false)), any(vec3<bool>(false, false, true))), true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1599f)), _wgslsmith_f_op_f32(func_3(u_input.a.zzy)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(191f)) + 118f)));
    let var_1 = !(!var_0.x);
    var var_2 = _wgslsmith_div_vec3_u32(~vec3<u32>(~(~u_input.a.x), firstTrailingBit(~u_input.a.x), 52083u), u_input.a.xzw);
    global0 = array<Struct_2, 13>();
    var_2 = min(firstLeadingBit(~vec3<u32>(46952u, var_2.x, u_input.a.x) >> (vec3<u32>(1u, 8801u, var_2.x) % vec3<u32>(32u))), vec3<u32>(var_2.x, _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, 4294967295u), var_2.x), countOneBits(var_2.x))) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.a.x, countOneBits(u_input.a.x), ~var_2.x), ~(~vec3<u32>(u_input.a.x, 48225u, var_2.x))), ~(~vec3<u32>(u_input.a.x, var_2.x, var_2.x)) & vec3<u32>(var_2.x, _wgslsmith_div_u32(var_2.x, u_input.a.x), var_2.x), countOneBits(vec3<u32>(0u, 28911u, var_2.x) >> (u_input.a.yyw % vec3<u32>(32u)))) % vec3<u32>(32u));
    return Struct_2(Struct_1(~global1[_wgslsmith_index_u32(~(~0u), 22u)], ~_wgslsmith_sub_vec3_u32(u_input.a.yyy, vec3<u32>(1u, 48010u, u_input.a.x)), !(!(var_0.x && var_1)), _wgslsmith_div_vec2_u32(var_2.xx, ~u_input.a.xw), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-526f, -212f)))))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(0i, 45487i)), vec2<i32>(1i, 1i)), _wgslsmith_add_i32(~reverseBits(34932i), countOneBits(~38430i))), abs(~min(var_2.x, 1u)), vec2<u32>(_wgslsmith_mod_u32(6102u, ~u_input.a.x) << (~(u_input.a.x << (8243u % 32u)) % 32u), var_2.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, u_input.a.x), vec2<u32>(u_input.a.x, 13365u)) % 32u)), 1i | (select(1i, 0i, true) >> (abs(25412u & u_input.a.x) % 32u)));
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_1 {
    global1 = array<vec4<i32>, 22>();
    let var_0 = func_2();
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 13u)];
    var var_2 = any(select(!vec2<bool>(all(vec4<bool>(var_1.a.c, var_1.a.c, var_0.a.c, false)), var_1.a.c), vec2<bool>(false, var_1.a.c), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(select(vec2<bool>(var_0.a.c, false), vec2<bool>(true, true), vec2<bool>(true, var_0.a.c)), vec2<bool>(false, true), select(vec2<bool>(false, arg_0), vec2<bool>(var_0.a.c, true), vec2<bool>(var_1.a.c, var_1.a.c))), select(!vec2<bool>(var_1.a.c, false), !vec2<bool>(false, arg_0), 2147483647i >= var_1.e))));
    var var_3 = vec3<u32>(_wgslsmith_add_u32(abs(4294967295u), ~u_input.a.x), var_1.a.b.x, var_1.a.d.x);
    return var_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = func_1(arg_3.a.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -676f), arg_0.a.e.x))).a.zyx;
    var var_1 = func_1(select(!arg_3.a.c, true, arg_3.a.c), arg_0.a.e.x);
    let var_2 = arg_0;
    global0 = array<Struct_2, 13>();
    var_0 = vec3<i32>(arg_0.a.a.x << (max(17877u, func_1(true, _wgslsmith_f_op_f32(-arg_0.a.e.x)).d.x) % 32u), _wgslsmith_sub_i32(-(~52877i), ~_wgslsmith_sub_i32(2147483647i, 16968i) & var_1.a.x), var_2.e >> (select(~u_input.a.x, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(40670u, 0u, arg_3.a.d.x), arg_3.a.b)), true) % 32u));
    return vec2<u32>(_wgslsmith_div_u32(1u, max(~u_input.a.x, max(arg_0.a.d.x, 13633u))), _wgslsmith_dot_vec3_u32(func_1(false, arg_2.x).b, arg_0.a.b)) ^ vec2<u32>(arg_0.d.x, ~1u);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_1;
    global0 = array<Struct_2, 13>();
    let var_1 = var_0;
    var var_2 = _wgslsmith_mod_i32(countOneBits(arg_2.a.x), 31686i);
    global0 = array<Struct_2, 13>();
    return global0[_wgslsmith_index_u32((select(_wgslsmith_dot_vec3_u32(~vec3<u32>(44522u, var_1.d.x, 4294967295u), vec3<u32>(14577u, arg_1.d.x, arg_0.x) >> (vec3<u32>(arg_1.b.x, arg_1.b.x, var_0.d.x) % vec3<u32>(32u))), _wgslsmith_add_u32(var_1.b.x, _wgslsmith_clamp_u32(10746u, 28621u, 36494u)), true) ^ func_2().c) | _wgslsmith_mod_u32(var_0.d.x, var_0.d.x), 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~func_4(Struct_2(func_1(false, 399f), -1529i, 1u << (u_input.a.x % 32u), vec2<u32>(30656u, 1u), abs(29133i)), _wgslsmith_add_vec3_i32(~vec3<i32>(-3119i, -6121i, 2147483647i), vec3<i32>(1i, 1i, 1i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-905f, -322f)), Struct_2(func_2().a, _wgslsmith_sub_i32(30302i, 18429i), countOneBits(1u), abs(vec2<u32>(u_input.a.x, u_input.a.x)), firstLeadingBit(-8547i))), Struct_1(-(~(~global1[_wgslsmith_index_u32(u_input.a.x, 22u)])), ~u_input.a.xyy | func_1(all(vec4<bool>(true, false, true, false)), 415f).b, true, u_input.a.zy, vec2<f32>(func_2().a.e.x, _wgslsmith_f_op_f32(f32(-1f) * -253f))), Struct_1(firstTrailingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(0u, 22u)], vec4<i32>(2147483647i, 14064i, 32420i, -22381i)), ~vec4<i32>(-2147483647i, 23094i, 0i, -8507i))), ~u_input.a.zxx, func_2().a.c & select(true, false, true), func_4(func_2(), vec3<i32>(_wgslsmith_mod_i32(2147483647i, 2147483647i), _wgslsmith_add_i32(-23576i, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 24668i), vec2<i32>(2147483647i, 204i))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1000f) - vec2<f32>(839f, -737f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-584f, 472f), vec2<f32>(-652f, -467f), true)), vec2<bool>(false, true))), global0[_wgslsmith_index_u32(~countOneBits(71112u), 13u)]), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(3031f, -620f)), vec2<f32>(211f, 1185f))))));
    let var_1 = select(vec2<bool>(var_0.a.c, true), !(!vec2<bool>(any(vec3<bool>(var_0.a.c, var_0.a.c, true)), true)), select(vec2<bool>(true, any(!vec4<bool>(var_0.a.c, var_0.a.c, true, var_0.a.c))), select(!(!vec2<bool>(false, var_0.a.c)), select(vec2<bool>(true, var_0.a.c), !vec2<bool>(var_0.a.c, var_0.a.c), vec2<bool>(true, true)), var_0.a.c), select(!vec2<bool>(true, var_0.a.c), select(!vec2<bool>(true, var_0.a.c), vec2<bool>(true, var_0.a.c), select(vec2<bool>(true, var_0.a.c), vec2<bool>(var_0.a.c, var_0.a.c), false)), !var_0.a.c && var_0.a.c)));
    global1 = array<vec4<i32>, 22>();
    let var_2 = ~func_5(firstTrailingBit(max(var_0.d, ~vec2<u32>(var_0.a.d.x, 1u))), var_0.a, var_0.a).b;
    global1 = array<vec4<i32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, var_0.a.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(206f, 1437f, var_0.a.e.x, var_0.a.e.x) - vec4<f32>(var_0.a.e.x, var_0.a.e.x, -659f, var_0.a.e.x))))));
}

