struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28>;

var<private> global1: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(1u, 37086u, 10143u, 921u), vec4<u32>(55317u, 63356u, 0u, 1u), vec4<u32>(0u, 0u, 49814u, 12610u), vec4<u32>(0u, 5641u, 4294967295u, 0u), vec4<u32>(0u, 75442u, 4294967295u, 75848u), vec4<u32>(1u, 1u, 111037u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 60896u), vec4<u32>(1u, 4294967295u, 5773u, 5379u), vec4<u32>(0u, 0u, 25009u, 1u), vec4<u32>(13033u, 1u, 0u, 1u), vec4<u32>(65162u, 0u, 36950u, 68316u), vec4<u32>(1u, 1u, 40721u, 22283u), vec4<u32>(1u, 1u, 65408u, 27042u), vec4<u32>(0u, 84718u, 1u, 4294967295u), vec4<u32>(78326u, 69288u, 0u, 0u), vec4<u32>(0u, 28237u, 2572u, 33243u), vec4<u32>(0u, 1u, 0u, 34011u), vec4<u32>(28104u, 1u, 1u, 99088u), vec4<u32>(4294967295u, 32658u, 0u, 14736u));

var<private> global2: array<Struct_2, 32>;

var<private> global3: array<bool, 24> = array<bool, 24>(true, false, true, false, false, true, true, false, false, false, true, true, false, false, false, true, true, true, false, true, false, false, false, false);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: Struct_4) -> bool {
    var var_0 = select(firstLeadingBit(-28939i), reverseBits(-u_input.a), false);
    global1 = array<vec4<u32>, 19>();
    let var_1 = Struct_4(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-arg_3.b)), _wgslsmith_f_op_f32(floor(arg_3.a)));
    var var_2 = vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(17045u, 40837u, 0u)), firstLeadingBit(vec3<u32>(arg_1.a, arg_1.a, arg_1.a))), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.a, 6665u | arg_1.a, ~11375u), ~(vec3<u32>(73462u, 37065u, 0u) & vec3<u32>(arg_1.a, arg_1.a, 4294967295u)))), 24u)], !global3[_wgslsmith_index_u32(~32135u, 24u)] || any(select(!vec2<bool>(arg_1.b.x, true), arg_1.b.zw, all(arg_1.b.xwz))), false, all(!arg_1.b.yxw));
    let var_3 = (_wgslsmith_mult_vec4_u32(~global1[_wgslsmith_index_u32(arg_1.a, 19u)], ~(~global1[_wgslsmith_index_u32(arg_1.a, 19u)])) | global1[_wgslsmith_index_u32(0u, 19u)]) >> (abs(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.a, 4294967295u, arg_1.a, 4294967295u), vec4<u32>(1u, 1u, arg_1.a, arg_1.a)), 19u)]) % vec4<u32>(32u));
    return !(!any(!vec3<bool>(var_2.x, false, true)));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    global2 = array<Struct_2, 32>();
    let var_0 = vec3<u32>(select(reverseBits(38079u), ~reverseBits(_wgslsmith_mod_u32(4294967295u, 4294967295u)), true), 1u, _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), 0u), ~14733u));
    var var_1 = Struct_1(44116u, select(vec4<bool>(true, true, u_input.a > min(-47721i, -1i), func_3(arg_0, Struct_1(var_0.x, vec4<bool>(global3[_wgslsmith_index_u32(0u, 24u)], false, arg_0, true)), true, Struct_4(-540f, -1000f))), select(!(!vec4<bool>(true, false, true, global3[_wgslsmith_index_u32(var_0.x, 24u)])), vec4<bool>(false, true, global3[_wgslsmith_index_u32(var_0.x, 24u)], arg_0 && global3[_wgslsmith_index_u32(19661u, 24u)]), !(false || arg_0)), vec4<bool>(true, true, true, true)));
    let var_2 = arg_2;
    let var_3 = Struct_4(1570f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1769f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(155f, -336f, var_1.b.x)))))));
    return Struct_2(_wgslsmith_sub_vec4_i32(var_2.a, (countOneBits(vec4<i32>(2147483647i, -20423i, arg_1.x, arg_1.x)) ^ vec4<i32>(0i, -2147483647i, 57602i, 2147483647i)) >> (abs(~vec4<u32>(var_0.x, 0u, 4294967295u, var_0.x)) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_4) -> vec4<i32> {
    global3 = array<bool, 24>();
    global0 = array<vec3<f32>, 28>();
    let var_0 = _wgslsmith_sub_vec4_u32(select(min(abs(vec4<u32>(12444u, arg_1.x, 25312u, arg_1.x)), global1[_wgslsmith_index_u32(abs(1u), 19u)]), vec4<u32>(arg_1.x, 56205u, 14620u, ~arg_1.x), select(vec4<bool>(true, global3[_wgslsmith_index_u32(arg_1.x, 24u)], false, global3[_wgslsmith_index_u32(arg_1.x, 24u)]), !vec4<bool>(true, global3[_wgslsmith_index_u32(3219u, 24u)], global3[_wgslsmith_index_u32(41637u, 24u)], true), vec4<bool>(true, global3[_wgslsmith_index_u32(arg_1.x, 24u)], true, true))), _wgslsmith_div_vec4_u32(abs(global1[_wgslsmith_index_u32(arg_1.x, 19u)] | vec4<u32>(1u, arg_1.x, arg_1.x, 0u)), vec4<u32>(arg_1.x, arg_1.x, arg_1.x << (arg_1.x % 32u), 28231u))) | ~max(~global1[_wgslsmith_index_u32(min(2468u, 1u), 19u)], vec4<u32>(arg_1.x, ~arg_1.x, arg_1.x, ~arg_1.x));
    return arg_0.a;
}

fn func_5(arg_0: f32, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> u32 {
    var var_0 = 368f;
    var var_1 = 3313i;
    let var_2 = arg_3;
    let var_3 = max(select(~vec3<u32>(1u, 1u, 1u), vec3<u32>(16131u, _wgslsmith_clamp_u32(166890u, 0u, 1u), _wgslsmith_clamp_u32(1u, 4294967295u, 1256u)), vec3<bool>(true, true, arg_0 >= 774f)) << (vec3<u32>(_wgslsmith_mod_u32(4294967295u, ~20888u), abs(51987u), ~(~0u)) % vec3<u32>(32u)), ~abs(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(26023u, 0u, 43608u), vec3<u32>(8714u, 4294967295u, 0u), vec3<u32>(36841u, 22649u, 22930u)), vec3<u32>(1u, 1u, 1u))));
    let var_4 = firstLeadingBit(-1i);
    return 10240u;
}

fn func_1() -> i32 {
    global0 = array<vec3<f32>, 28>();
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-594f - -1324f))))));
    let var_1 = -1i | u_input.a;
    var var_2 = func_5(var_0, vec4<i32>(-36017i, ~10144i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, firstTrailingBit(1i), 1i, u_input.a), func_4(func_2(true, vec4<i32>(u_input.a, -45160i, 5753i, var_1), Struct_2(vec4<i32>(u_input.a, 0i, var_1, -2147483647i))), vec3<u32>(4294967295u, 0u, 14523u), 0i, Struct_4(var_0, -177f))), ~u_input.a), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(370f, var_0, var_0) * vec3<f32>(874f, -541f, 168f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, 1500f, 1372f), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(0u, 28u)]))))))), ~vec3<i32>(~(-28026i), _wgslsmith_dot_vec2_i32(~vec2<i32>(-1294i, u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(-21272i, var_1), vec2<i32>(-74289i, var_1))), u_input.a));
    global2 = array<Struct_2, 32>();
    return abs(-53079i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<i32>(54525i, ~2147483647i, reverseBits(_wgslsmith_div_i32(-28266i, 2147483647i)), -u_input.a >> (1u % 32u)) | ~vec4<i32>(~u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a), abs(u_input.a), func_1()));
    var var_1 = Struct_2(vec4<i32>(var_0.a.x, u_input.a, u_input.a, -abs(1i)));
    var var_2 = select(!(!select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 24u)], true, global3[_wgslsmith_index_u32(0u, 24u)], global3[_wgslsmith_index_u32(67513u, 24u)]), !vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 24u)], global3[_wgslsmith_index_u32(61356u, 24u)], global3[_wgslsmith_index_u32(1u, 24u)], false), global3[_wgslsmith_index_u32(65753u, 24u)] || false)), select(!select(!vec4<bool>(true, global3[_wgslsmith_index_u32(55415u, 24u)], global3[_wgslsmith_index_u32(19658u, 24u)], false), !vec4<bool>(global3[_wgslsmith_index_u32(0u, 24u)], global3[_wgslsmith_index_u32(17954u, 24u)], global3[_wgslsmith_index_u32(1487u, 24u)], global3[_wgslsmith_index_u32(0u, 24u)]), true), select(select(select(vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 24u)], true, true), vec4<bool>(global3[_wgslsmith_index_u32(88311u, 24u)], global3[_wgslsmith_index_u32(20454u, 24u)], global3[_wgslsmith_index_u32(4294967295u, 24u)], global3[_wgslsmith_index_u32(1u, 24u)]), false), select(vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 24u)], false, global3[_wgslsmith_index_u32(0u, 24u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 24u)], global3[_wgslsmith_index_u32(1u, 24u)], global3[_wgslsmith_index_u32(13440u, 24u)]), false), !global3[_wgslsmith_index_u32(1u, 24u)]), !vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 24u)], true, false), true), true), vec4<bool>(false, any(vec3<bool>(true, false, true)), (true && global3[_wgslsmith_index_u32(40840u, 24u)]) || global3[_wgslsmith_index_u32(1u, 24u)], global3[_wgslsmith_index_u32(abs(1u), 24u)]));
    var var_3 = Struct_3(select(!vec4<bool>(any(var_2.yxy), false, var_2.x && false, true), select(select(select(vec4<bool>(var_2.x, global3[_wgslsmith_index_u32(4294967295u, 24u)], true, var_2.x), vec4<bool>(var_2.x, true, true, false), true), select(vec4<bool>(var_2.x, true, false, var_2.x), vec4<bool>(false, var_2.x, false, global3[_wgslsmith_index_u32(4294967295u, 24u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 24u)], var_2.x, true)), true), !vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 24u)], false, true), false), !(!select(vec4<bool>(false, global3[_wgslsmith_index_u32(65059u, 24u)], true, true), vec4<bool>(var_2.x, false, global3[_wgslsmith_index_u32(4294967295u, 24u)], false), true))));
    global2 = array<Struct_2, 32>();
    var_2 = select(select(!(!vec4<bool>(global3[_wgslsmith_index_u32(14475u, 24u)], false, global3[_wgslsmith_index_u32(48099u, 24u)], false)), var_3.a, select(vec4<bool>(any(var_3.a), var_3.a.x, true, var_2.x), var_3.a, var_2.x)), vec4<bool>(func_3(!var_2.x && func_3(var_3.a.x, Struct_1(76210u, var_3.a), false, Struct_4(1026f, -144f)), Struct_1(_wgslsmith_div_u32(0u, 21273u), !vec4<bool>(var_2.x, var_3.a.x, global3[_wgslsmith_index_u32(492u, 24u)], true)), true, Struct_4(_wgslsmith_f_op_f32(1130f + -1094f), _wgslsmith_f_op_f32(1999f - -919f))), false, any(!select(var_2.zzy, vec3<bool>(global3[_wgslsmith_index_u32(8806u, 24u)], false, false), var_3.a.yxw)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(abs(99982u), 19u)], min(abs(global1[_wgslsmith_index_u32(3587u, 19u)]), global1[_wgslsmith_index_u32(1u, 19u)])), 24u)]), true);
    global1 = array<vec4<u32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1274f, -1000f, false))) >= _wgslsmith_f_op_f32(f32(-1f) * -842f), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, var_1.a.x, 4826i), -var_0.a), select(vec4<i32>(-16880i, -12150i, 9036i, var_0.a.x), var_1.a ^ vec4<i32>(var_0.a.x, var_1.a.x, -7987i, 1i), func_3(var_3.a.x, Struct_1(35530u, var_3.a), var_3.a.x, Struct_4(1000f, 105f)))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~26212u, ~4294967295u, max(1u, 8401u), ~4294967295u), select(vec4<u32>(94031u, 1u, 50235u, 6789u), _wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)]), global3[_wgslsmith_index_u32(15078u, 24u)] | true)), 32u)]).a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-630f, -707f))))), _wgslsmith_add_vec3_u32(vec3<u32>(~(~35640u), 1u, 32040u), vec3<u32>(1u, 1u, 1u)));
}

