struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(-25408i, 5348i, 10262i), vec3<i32>(-1889i, 33001i, 28484i), vec3<i32>(-451i, 30823i, 2147483647i), vec3<i32>(8299i, 53146i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), -51101i));

var<private> global1: vec4<i32>;

var<private> global2: bool = true;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<u32> {
    let var_0 = firstTrailingBit(arg_0.a.x << ((_wgslsmith_sub_u32(_wgslsmith_div_u32(0u, arg_0.a.x), 87907u) | u_input.c.x) % 32u));
    var var_1 = _wgslsmith_dot_vec3_u32(u_input.c.yyz, ~vec3<u32>(_wgslsmith_clamp_u32(~u_input.c.x, ~81102u, ~u_input.c.x), reverseBits(var_0 | 4294967295u), reverseBits(firstTrailingBit(u_input.b))));
    var_1 = 1u;
    var var_2 = arg_0.c;
    var_1 = u_input.c.x;
    return firstTrailingBit(~vec4<u32>(~var_0, u_input.a, arg_0.a.x, ~u_input.c.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> bool {
    let var_0 = firstLeadingBit(~(-abs(28418i)));
    let var_1 = arg_2;
    let var_2 = arg_1;
    global2 = 4294967295u < arg_2.a.x;
    var var_3 = _wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(~17667u, _wgslsmith_add_u32(~u_input.c.x, ~var_1.a.x), min(max(87589u, var_2.a.x), 0u), 1u ^ ~u_input.c.x) & (_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, arg_1.a.x, 36216u, arg_1.a.x), select(arg_1.a, vec4<u32>(1u, var_1.a.x, arg_2.a.x, 0u), vec4<bool>(false, var_1.c, true, arg_2.c))) ^ ~var_1.a));
    return all(vec4<bool>(!(!any(vec2<bool>(arg_1.c, var_2.c))), true, false, arg_1.c));
}

fn func_2(arg_0: vec4<i32>) -> bool {
    global0 = array<vec3<i32>, 5>();
    return true == func_4(reverseBits(-_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.x, -2147483647i), arg_0.zx)), Struct_1(u_input.c, -arg_0.x >> (4294967295u % 32u), true), Struct_1(func_3(Struct_1(vec4<u32>(u_input.c.x, 20337u, 0u, u_input.b), u_input.d, true), vec4<i32>(global1.x, -7818i, arg_0.x, u_input.d)), _wgslsmith_mult_i32(-21820i, -41775i), all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))), -(vec2<i32>(-1i) * -arg_0.wz));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> i32 {
    var var_0 = vec2<i32>(global1.x, -23449i);
    var var_1 = arg_0;
    var var_2 = Struct_1(~reverseBits(abs(~u_input.c)), -25289i ^ -var_0.x, func_2(vec4<i32>(global1.x, ~var_0.x, _wgslsmith_sub_i32(global1.x, u_input.d), _wgslsmith_mult_i32(global1.x, 1i)) ^ ~countOneBits(vec4<i32>(1i, 21018i, -2147483647i, 32420i))));
    let var_3 = Struct_1(abs(vec4<u32>(_wgslsmith_dot_vec4_u32(abs(u_input.c), var_2.a), abs(_wgslsmith_mult_u32(var_2.a.x, 0u)), func_3(Struct_1(var_2.a, var_0.x, false), -vec4<i32>(var_0.x, -1i, u_input.d, 15437i)).x, arg_1.a.x)), select(1i, max(global1.x, ~(arg_1.b | 0i)), var_2.c), all(select(select(arg_0, vec2<bool>(arg_1.c, arg_0.x), vec2<bool>(true, var_1.x)), vec2<bool>(false, var_2.c), !var_2.c)) && (firstLeadingBit(10799i) >= ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.b, u_input.d, u_input.d), vec4<i32>(u_input.d, 1i, -45861i, global1.x))));
    var var_4 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(select(0u, 42744u, true), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, 9513u, 51665u), arg_1.a.xyw), 87806u, 56494u), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(var_2.a, arg_1.a), ~arg_1.a)), var_3.a), ~(-13385i), 282f != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1357f, 1119f)))));
    return _wgslsmith_sub_i32(countOneBits(-global1.x), _wgslsmith_mult_i32(~_wgslsmith_mult_i32(37950i, -1i & var_0.x), 2147483647i));
}

fn func_1() -> vec3<f32> {
    let var_0 = true;
    let var_1 = ~vec2<u32>(0u, 42219u);
    let var_2 = vec2<i32>(func_5(!vec2<bool>(true, func_2(vec4<i32>(0i, global1.x, 11475i, u_input.d))), Struct_1(vec4<u32>(countOneBits(1u), 0u, 1u, 147525u), -44259i, _wgslsmith_mod_i32(global1.x, 13651i) <= _wgslsmith_mult_i32(-1i, 24386i))), max(~_wgslsmith_clamp_i32(global1.x, abs(-2147483647i), 1i), global1.x));
    let var_3 = -vec3<i32>(global1.x, -9906i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(global1.x, 0i, u_input.d), reverseBits(firstLeadingBit(var_2.x))));
    global0 = array<vec3<i32>, 5>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-230f, -692f, -954f), vec3<f32>(-495f, 1000f, -243f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, -1076f) + vec3<f32>(-468f, 1187f, 928f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-511f, -720f, 547f), vec3<f32>(494f, -806f, -1274f), vec3<bool>(var_0, var_0, var_0)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1649f, 573f, -1678f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(477f, -120f, -696f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-649f, -454f, 136f)), vec3<f32>(-1769f, 1096f, -1098f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(883f, 601f, 1760f)) + vec3<f32>(_wgslsmith_f_op_f32(-207f + 871f), -245f, _wgslsmith_f_op_f32(max(-349f, -1639f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -678f), _wgslsmith_f_op_f32(f32(-1f) * -204f), 255f))));
    var var_1 = global1.x;
    let var_2 = func_3(Struct_1(u_input.c, ~max(1i, 1i), ~u_input.d == _wgslsmith_sub_i32(-global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.d, 4079i), vec4<i32>(3897i, u_input.d, 2147483647i, global1.x)))), _wgslsmith_sub_vec4_i32(vec4<i32>(max(func_5(vec2<bool>(false, false), Struct_1(u_input.c, -23843i, true)), global1.x | 5150i), _wgslsmith_div_i32(~(-2147483647i), u_input.d), reverseBits(_wgslsmith_add_i32(-3198i, 1i)), 0i), select(vec4<i32>(-1i) * -vec4<i32>(u_input.d, 117716i, global1.x, 1i), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 1i, global1.x, 46881i), vec4<i32>(2147483647i, global1.x, 39836i, -1i))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)))));
    var var_3 = Struct_1(vec4<u32>(~(~4294967295u) >> (var_2.x % 32u), u_input.a, ~4294967295u, 19858u), -countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, -1i, -30453i), -global0[_wgslsmith_index_u32(u_input.b, 5u)])), !select(func_4(global1.xx, Struct_1(vec4<u32>(6630u, var_2.x, var_2.x, 4294967295u), u_input.d, false), Struct_1(vec4<u32>(60767u, var_2.x, 43674u, 10545u), u_input.d, true), _wgslsmith_div_vec2_i32(global1.xx, global1.yy)), true, true));
    var var_4 = Struct_1(var_2, countOneBits(-4679i), func_4(global1.xz, Struct_1(~(~vec4<u32>(4294967295u, var_2.x, var_2.x, var_2.x)), countOneBits(var_3.b), true), Struct_1(_wgslsmith_add_vec4_u32(select(vec4<u32>(40996u, u_input.b, var_3.a.x, var_3.a.x), var_3.a, var_3.c), ~u_input.c), 57580i, var_0.x < _wgslsmith_f_op_f32(f32(-1f) * -127f)), firstLeadingBit(vec2<i32>(u_input.d, 5697i))));
    let var_5 = Struct_1(select(vec4<u32>(37517u, 12099u, ~abs(31072u), 21038u), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(max(u_input.c, vec4<u32>(var_2.x, 51418u, 41106u, 14861u)), ~var_2), var_4.a >> (_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(var_3.a.x, 1u, 4294967295u, 0u)) % vec4<u32>(32u))), var_3.c), (-2147483647i ^ u_input.d) | firstLeadingBit(_wgslsmith_sub_i32(var_4.b, i32(-1i) * -62245i)), false);
    let var_6 = vec3<i32>(-2147483647i, -89246i, 32830i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, firstTrailingBit(global1.x), ~u_input.c.x, var_3.a, ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.x, var_2.x, u_input.b, var_2.x), vec4<u32>(var_2.x, u_input.c.x, 26894u, 4294967295u)), 10710u, 34499u, ~4294967295u) & vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 1868u, 4294967295u, 44776u) >> (vec4<u32>(u_input.b, var_5.a.x, var_4.a.x, 4294967295u) % vec4<u32>(32u)), var_2 ^ var_4.a), var_3.a.x, 75019u));
}

