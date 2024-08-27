struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25>;

var<private> global1: array<f32, 4> = array<f32, 4>(-791f, 769f, 669f, -1703f);

var<private> global2: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-389f, 1390f, -409f, 182f), vec4<f32>(-933f, 883f, 589f, -493f), vec4<f32>(-2683f, -528f, 213f, -156f), vec4<f32>(-1780f, -205f, -999f, 1411f), vec4<f32>(1096f, 537f, 2098f, 304f), vec4<f32>(-748f, 315f, -250f, -1060f), vec4<f32>(-772f, -1049f, 1282f, 1570f), vec4<f32>(-339f, 1000f, -1704f, -471f), vec4<f32>(214f, -1077f, 1000f, -1822f), vec4<f32>(-1751f, 393f, 467f, -665f), vec4<f32>(-629f, 1250f, 1740f, 546f), vec4<f32>(295f, -586f, -896f, -689f), vec4<f32>(-166f, -1876f, 922f, 353f), vec4<f32>(-1273f, -180f, -1511f, 799f), vec4<f32>(1473f, -338f, -566f, -471f), vec4<f32>(756f, -1056f, -956f, 510f), vec4<f32>(266f, -711f, 1000f, -1272f), vec4<f32>(-1759f, 907f, -1000f, 1398f), vec4<f32>(-1171f, -1000f, 793f, 987f), vec4<f32>(615f, 240f, -1210f, -1000f), vec4<f32>(-230f, -1324f, 364f, -955f), vec4<f32>(-1000f, -224f, 733f, 261f), vec4<f32>(-608f, 1387f, 681f, 1807f), vec4<f32>(-386f, -269f, -1237f, -1713f), vec4<f32>(-732f, 1507f, 779f, -676f), vec4<f32>(1140f, 429f, 1327f, -1255f), vec4<f32>(-818f, -1204f, -207f, 321f));

var<private> global3: vec3<u32> = vec3<u32>(90111u, 1u, 4294967295u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_3) -> u32 {
    var var_0 = ~vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~0u, 1u), arg_0.d), _wgslsmith_add_u32(~0u, 8442u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(40490u, arg_2.a, 1u), vec3<u32>(arg_1.x, arg_2.a, arg_2.a)) % 32u)));
    let var_1 = ~var_0.x;
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(arg_0.b.b, ~(arg_0.b.b | vec4<i32>(u_input.a, u_input.a, arg_0.b.a, -1i))), vec4<i32>(select(u_input.b.x, ~u_input.a, arg_0.a.x), (u_input.a >> (1u % 32u)) ^ abs(u_input.a), ~_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-1i, 1i)), ~_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.a, -13987i)))), arg_0.b.b);
    let var_3 = Struct_3(~(~(~arg_2.a)));
    var var_4 = Struct_2(!(!vec3<bool>(arg_0.a.x || true, var_1 != 4294967295u, arg_0.a.x)), arg_0.b, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(select(~var_3.a, abs(var_1), arg_0.a.x) << (abs(arg_1.x) % 32u), 4u)]), ~(~(~_wgslsmith_div_u32(2967u, global3.x))));
    return ~1u;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec2<u32>) -> vec4<u32> {
    var var_0 = countOneBits(vec2<u32>(global3.x, arg_0.x));
    let var_1 = -1i;
    global1 = array<f32, 4>();
    return vec4<u32>(~(func_3(Struct_2(global0[_wgslsmith_index_u32(arg_0.x, 25u)], Struct_1(u_input.a, vec4<i32>(1i, -2147483647i, var_1, u_input.a)), -1000f, var_0.x), arg_0.yxz, Struct_3(var_0.x)) | min(4294967295u >> (arg_3.x % 32u), global3.x)), 0u, 0u, ~global3.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_1 {
    global1 = array<f32, 4>();
    var var_0 = _wgslsmith_clamp_vec4_u32(arg_2, vec4<u32>(arg_0.x, arg_3.a, 1u, arg_0.x << (~(arg_3.a >> (18351u % 32u)) % 32u)), ~(~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(arg_2, arg_2), _wgslsmith_div_vec4_u32(vec4<u32>(43967u, 8960u, 1u, arg_0.x), vec4<u32>(arg_3.a, global3.x, 10277u, 25746u)))));
    var var_1 = countOneBits(i32(-1i) * -arg_1);
    let var_2 = arg_3;
    global3 = _wgslsmith_mult_vec3_u32(~reverseBits(func_2(arg_2, _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global3.x, 4u)], global1[_wgslsmith_index_u32(arg_0.x, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(arg_3.a, 4u)]), global2[_wgslsmith_index_u32(9721u, 27u)]), arg_3, arg_2.xx).zyy), ~vec3<u32>(39749u, abs(arg_2.x), 0u));
    return Struct_1(abs(arg_1), vec4<i32>(select(abs(_wgslsmith_div_i32(0i, u_input.a)), abs(2147483647i), true), max(countOneBits(-u_input.b.x), -(arg_1 & u_input.a)), u_input.b.x, u_input.b.x));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = func_4(min(~(_wgslsmith_mult_vec3_u32(vec3<u32>(5248u, arg_0, 64264u), vec3<u32>(arg_0, global3.x, 1u)) & (vec3<u32>(4294967295u, global3.x, 1733u) >> (vec3<u32>(arg_0, global3.x, 1u) % vec3<u32>(32u)))), vec3<u32>(arg_0, ~abs(14369u), global3.x)), _wgslsmith_sub_i32(38620i, u_input.a), ~min(~func_2(vec4<u32>(arg_0, 11525u, 15389u, 25581u), global2[_wgslsmith_index_u32(0u, 27u)], Struct_3(arg_0), global3.zy), vec4<u32>(0u << (arg_0 % 32u), ~global3.x, arg_0, abs(arg_0))), Struct_3(countOneBits(arg_0)));
    let var_1 = _wgslsmith_mult_u32(max(30948u, _wgslsmith_sub_u32(global3.x, global3.x)), firstLeadingBit(1u));
    global1 = array<f32, 4>();
    global1 = array<f32, 4>();
    var var_2 = -_wgslsmith_mult_vec4_i32(abs(var_0.b), vec4<i32>(var_0.b.x, 2147483647i, u_input.a, u_input.a) & _wgslsmith_mult_vec4_i32(var_0.b, var_0.b)) | var_0.b;
    return max(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(4294967295u, _wgslsmith_mult_u32(55743u, 64604u)), ~arg_0), countOneBits(select(countOneBits(global3.zz), ~global3.xx, true))), _wgslsmith_div_u32(~(45166u | max(var_1, 4294967295u)), abs(firstTrailingBit(40062u) ^ 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(func_1(39965u), firstTrailingBit(global3.x)), 27u)];
    let var_1 = select(vec4<bool>(true, (~u_input.a | u_input.b.x) == _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i) ^ vec2<i32>(u_input.b.x, u_input.a), u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 4u)] * 1639f) - _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(global3.x, 4u)]))) > var_0.x, 8573u <= _wgslsmith_dot_vec3_u32(min(vec3<u32>(global3.x, global3.x, 4294967295u), vec3<u32>(global3.x, global3.x, 4294967295u)), ~vec3<u32>(global3.x, 4294967295u, global3.x))), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false)), vec4<bool>(true, true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(select(vec3<u32>(_wgslsmith_div_u32(4294967295u, 1u), global3.x, func_3(Struct_2(vec3<bool>(var_1.x, true, true), Struct_1(-1i, vec4<i32>(u_input.b.x, u_input.a, 48119i, u_input.b.x)), 668f, 34929u), vec3<u32>(global3.x, global3.x, 30350u), Struct_3(global3.x))), vec3<u32>(84453u, 4294967295u, 2609u) ^ (vec3<u32>(0u, global3.x, global3.x) | vec3<u32>(4294967295u, global3.x, 1u)), false), 0i, vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(42396u, 45431u, 1u), ~vec3<u32>(11842u, global3.x, 4294967295u)), global3.x, ~_wgslsmith_div_u32(global3.x, global3.x), ~_wgslsmith_mod_u32(global3.x, global3.x)), Struct_3(firstLeadingBit(1u))).b, -(2147483647i >> (1u % 32u)), vec4<u32>(max(~global3.x << (countOneBits(global3.x) % 32u), 1u), global3.x, _wgslsmith_sub_u32(global3.x & global3.x, ~max(19885u, global3.x)), global3.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global3.x & global3.x, 4u)], _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(global3.x, 4u)])), 727f, _wgslsmith_f_op_f32(-391f - global1[_wgslsmith_index_u32(global3.x, 4u)])) - vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -438f), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -516f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(45632u, 27u)]) * vec4<f32>(-494f, global1[_wgslsmith_index_u32(global3.x, 4u)], -1000f, 1595f)))))), vec3<u32>(1u, global3.x >> (global3.x % 32u), global3.x & ~global3.x) | min(firstLeadingBit(vec3<u32>(global3.x, 0u, global3.x)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(global3.x, global3.x, 23335u), vec3<u32>(6638u, global3.x, 114273u)) % vec3<u32>(32u)), abs(func_2(vec4<u32>(4294967295u, global3.x, global3.x, global3.x), global2[_wgslsmith_index_u32(0u, 27u)], Struct_3(global3.x), global3.yx).zww)));
}

