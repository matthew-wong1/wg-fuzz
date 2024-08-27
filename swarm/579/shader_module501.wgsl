struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: bool) -> i32 {
    global0 = array<bool, 5>();
    var var_0 = countOneBits(vec4<i32>(2147483647i, abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, -23773i, u_input.c.x, 18687i), vec4<i32>(u_input.a.x, 50567i, -2147483647i, u_input.c.x))), select(0i, firstTrailingBit(_wgslsmith_mod_i32(u_input.a.x, 32188i)), false), _wgslsmith_mod_i32(min(12296i, u_input.c.x), firstTrailingBit(max(u_input.a.x, u_input.a.x)))));
    let var_1 = Struct_3(Struct_1(1836f, u_input.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1190f))) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - 127f), _wgslsmith_f_op_f32(select(113f, 355f, false)), any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 5u)], arg_3, true))))), 86094u);
    return ~u_input.a.x;
}

fn func_2(arg_0: Struct_3) -> bool {
    global0 = array<bool, 5>();
    var var_0 = Struct_4(abs(max(~_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, 19563i, u_input.a.x)), -u_input.a.x)), vec4<i32>(_wgslsmith_add_i32(countOneBits(-1i), ~func_3(31168u, 1u, arg_0.a.b, false)), 1i, u_input.c.x | ~(u_input.c.x >> (arg_0.a.b % 32u)), firstTrailingBit(u_input.a.x)));
    var_0 = Struct_4(1i, var_0.b);
    global0 = array<bool, 5>();
    var var_1 = -236f;
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> vec3<u32> {
    var var_0 = Struct_2(-48469i, _wgslsmith_mod_vec4_u32(~(~vec4<u32>(4294967295u, 11613u, 0u, 4294967295u)), ~vec4<u32>(~arg_0.b, 29941u, _wgslsmith_add_u32(0u, arg_0.b), _wgslsmith_mult_u32(16459u, arg_1.b))), vec4<f32>(_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(f32(-1f) * -4080f)), arg_1.a, arg_1.a, 454f));
    var var_1 = _wgslsmith_add_i32(i32(-1i) * -762i, -39612i) | (arg_2.x ^ -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x, 0i, arg_2.x), var_0.a));
    var var_2 = 7106i;
    var_2 = _wgslsmith_mod_i32(~var_0.a, i32(-1i) * -arg_2.x);
    var_0 = Struct_2(_wgslsmith_add_i32(-min(u_input.a.x, 43064i) | _wgslsmith_mult_i32(var_0.a << (var_0.b.x % 32u), ~2938i), i32(-1i) * -36624i), var_0.b, var_0.c);
    return ~vec3<u32>(abs(_wgslsmith_dot_vec3_u32(var_0.b.yzx, vec3<u32>(50251u, arg_0.b, 20693u))), _wgslsmith_sub_u32(~u_input.b, firstTrailingBit(27417u)), ~(~4294967295u)) & max(countOneBits(_wgslsmith_add_vec3_u32(select(var_0.b.zyy, vec3<u32>(42203u, arg_1.b, 4294967295u), vec3<bool>(false, false, true)), var_0.b.wwz)), ~var_0.b.xwy);
}

fn func_1(arg_0: bool) -> bool {
    global0 = array<bool, 5>();
    let var_0 = _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, u_input.b, 28913u), func_4(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + 746f))), 1u, func_2(Struct_3(Struct_1(-2047f, 60898u, true), 15949u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-252f, -1000f))), ~0u, all(vec3<bool>(false, false, global0[_wgslsmith_index_u32(2495u, 5u)]))), ~vec3<i32>(_wgslsmith_mod_i32(-58760i, 8854i), 1i, max(u_input.c.x, u_input.c.x))));
    var var_1 = Struct_4(-2147483647i, select(vec4<i32>(~u_input.c.x, 1i, ~_wgslsmith_add_i32(u_input.c.x, u_input.c.x), -abs(1i)), vec4<i32>(-33079i, -_wgslsmith_mod_i32(u_input.a.x, -10830i), _wgslsmith_div_i32(firstLeadingBit(0i), 2147483647i), ~(i32(-1i) * -31498i)), !all(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 5u)]), vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0)))));
    global0 = array<bool, 5>();
    var_1 = Struct_4(var_1.b.x, var_1.b);
    return !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.x, func_4(Struct_1(1415f, var_0.x, arg_0), Struct_1(507f, u_input.b, arg_0), var_1.b.xxz).x | 0u), u_input.b), 5u)];
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = true;
    var_0 = arg_0.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1578f, -1000f, arg_0.a))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, 1000f) + vec3<f32>(-1542f, -418f, -1213f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, 1047f, arg_0.a) * vec3<f32>(-1518f, -1615f, arg_0.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a, -1909f, arg_0.a), vec3<f32>(1454f, 700f, -1093f), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.b, 5u)], true, true))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, 738f, arg_0.a) - vec3<f32>(arg_0.a, -1000f, 729f)) - vec3<f32>(-123f, 463f, 566f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(996f, 1000f, arg_0.a), vec3<f32>(arg_0.a, 644f, arg_0.a))))), select(!vec3<bool>(!global0[_wgslsmith_index_u32(32851u, 5u)], arg_0.c == true, any(vec2<bool>(arg_0.c, global0[_wgslsmith_index_u32(u_input.b, 5u)]))), vec3<bool>(arg_0.c, arg_0.c, arg_0.c), func_2(Struct_3(Struct_1(arg_0.a, 4294967295u, false), u_input.b)))));
    var var_2 = Struct_4(u_input.a.x, countOneBits(vec4<i32>(1i, 55006i, u_input.c.x, u_input.a.x)));
    var var_3 = Struct_4(var_2.a, -var_2.b);
    return ~_wgslsmith_clamp_u32(~countOneBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(max(u_input.b, 108372u), ~arg_0.b, ~u_input.b, func_4(Struct_1(-942f, arg_0.b, true), Struct_1(468f, u_input.b, false), vec3<i32>(u_input.a.x, var_2.a, var_3.a)).x), ~(vec4<u32>(u_input.b, 48377u, 27797u, u_input.b) & vec4<u32>(u_input.b, u_input.b, arg_0.b, 50371u))), arg_0.b);
}

fn func_6(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> Struct_2 {
    var var_0 = Struct_2(u_input.a.x, ~(~select(~vec4<u32>(arg_1, 70594u, arg_1, arg_2.b), ~vec4<u32>(21806u, arg_2.b, 1u, u_input.b), !vec4<bool>(arg_2.a.c, global0[_wgslsmith_index_u32(4294967295u, 5u)], true, false))), vec4<f32>(1678f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_0)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.a.a - -741f))), arg_2.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - arg_0)));
    var var_1 = u_input.a.x;
    var var_2 = Struct_3(arg_2.a, max(abs(~_wgslsmith_mult_u32(102041u, u_input.b)), ~firstTrailingBit(1u) << (~39296u % 32u)));
    var_0 = Struct_2(firstTrailingBit(countOneBits(countOneBits(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c)))), ~_wgslsmith_sub_vec4_u32(var_0.b, var_0.b & var_0.b) ^ var_0.b, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1577f), -1846f, arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.a, _wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(778f))))));
    global0 = array<bool, 5>();
    return Struct_2(_wgslsmith_mod_i32(-40712i, var_0.a), ~vec4<u32>(var_2.a.b | max(4294967295u, u_input.b), ~u_input.b, abs(var_0.b.x) | abs(4294967295u), _wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(59448u, arg_2.a.b, u_input.b, arg_2.b))), _wgslsmith_f_op_vec4_f32(var_0.c * _wgslsmith_f_op_vec4_f32(exp2(var_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(450f, func_5(Struct_1(-1409f, countOneBits(u_input.b), func_1(true))) | u_input.b, Struct_3(Struct_1(_wgslsmith_f_op_f32(-1434f - _wgslsmith_f_op_f32(f32(-1f) * -1245f)), ~u_input.b, true), _wgslsmith_clamp_u32(4294967295u, u_input.b, 4294967295u)));
    let var_1 = ~_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~(~vec4<i32>(-2147483647i, 48253i, u_input.c.x, 30632i)), ~vec4<i32>(u_input.a.x, -2147483647i, var_0.a, u_input.c.x)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(var_0.a, var_0.a, 42797i, 2147483647i), -vec4<i32>(var_0.a, 2147483647i, 10221i, u_input.a.x)), vec4<i32>(0i, u_input.c.x, u_input.a.x, 2147483647i) | reverseBits(vec4<i32>(12862i, var_0.a, var_0.a, -27933i))));
    let var_2 = Struct_4(_wgslsmith_sub_i32(var_1.x, func_3(u_input.b, ~7973u, ~51948u, any(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 5u)], true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 5u)], true), true)))), _wgslsmith_mod_vec4_i32(max(~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, 30116i, var_0.a), var_1), -vec4<i32>(-9347i, -40121i, var_1.x, var_1.x)), -select(countOneBits(vec4<i32>(21568i, 13648i, -2147483647i, var_1.x)), ~var_1, select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 5u)], false, true, global0[_wgslsmith_index_u32(0u, 5u)]), vec4<bool>(global0[_wgslsmith_index_u32(19540u, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(var_0.b.x, 5u)], true)))));
    let var_3 = vec3<u32>(u_input.b, select(9452u, _wgslsmith_add_u32(u_input.b, 44005u), true) | u_input.b, ~(~var_0.b.x) ^ countOneBits(~193761u)) >> (select(vec3<u32>(_wgslsmith_add_u32(var_0.b.x, 21561u), ~u_input.b, firstTrailingBit(~u_input.b)), firstLeadingBit(var_0.b.zyw), !select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 5u)], global0[_wgslsmith_index_u32(var_0.b.x, 5u)], global0[_wgslsmith_index_u32(4189u, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 5u)], true, true), !vec3<bool>(false, true, global0[_wgslsmith_index_u32(8801u, 5u)]))) % vec3<u32>(32u));
    global0 = array<bool, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_3.x ^ u_input.b, func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), 1u, Struct_3(Struct_1(var_0.c.x, u_input.b, global0[_wgslsmith_index_u32(u_input.b, 5u)]), _wgslsmith_div_u32(var_3.x, var_3.x))).b.x, 4294967295u, 1u), u_input.b, func_6(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_0.c.x)))), 35845u, Struct_3(Struct_1(_wgslsmith_div_f32(-555f, var_0.c.x), u_input.b, global0[_wgslsmith_index_u32(~18333u, 5u)]), 1u)).c.wyw, firstLeadingBit(var_1));
}

