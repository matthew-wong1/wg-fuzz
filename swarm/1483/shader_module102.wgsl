struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<i32>, 28>;

var<private> global2: i32 = 2147483647i;

var<private> global3: vec2<i32>;

var<private> global4: array<bool, 19> = array<bool, 19>(true, false, true, true, true, false, true, true, false, true, true, false, true, true, true, false, true, false, false);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = -(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -5783i, global3.x, global3.x), vec4<i32>(-30229i, u_input.a, -20005i, global3.x)), u_input.a), select(global1[_wgslsmith_index_u32(4294967295u, 28u)] >> (vec2<u32>(10084u, 4294967295u) % vec2<u32>(32u)), global1[_wgslsmith_index_u32(1u, 28u)], vec2<bool>(true, global4[_wgslsmith_index_u32(88758u, 19u)]))) << (vec2<u32>(select(_wgslsmith_add_u32(3394u, 0u), 1u, global4[_wgslsmith_index_u32(34234u, 19u)]), countOneBits(_wgslsmith_mod_u32(1u, 52817u))) % vec2<u32>(32u)));
    var var_1 = any(select(!vec3<bool>(global4[_wgslsmith_index_u32(36072u, 19u)], global4[_wgslsmith_index_u32(0u, 19u)], false), vec3<bool>(true, !global4[_wgslsmith_index_u32(6941u, 19u)], true), !(!vec3<bool>(global4[_wgslsmith_index_u32(0u, 19u)], true, true)))) || !global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), 19u)];
    var var_2 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(7010u, 57879u)), countOneBits(~vec2<u32>(60292u, 2238u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1518f, 1235f, -217f, 1076f)))))), ~firstTrailingBit(0u) & abs(0u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2308f * -108f) - _wgslsmith_f_op_f32(402f + 758f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))) + -921f));
    global2 = var_0.x;
    global0 = -1286f;
    return !vec3<bool>(global4[_wgslsmith_index_u32(var_2.a, 19u)], true, all(select(!vec4<bool>(global4[_wgslsmith_index_u32(27349u, 19u)], global4[_wgslsmith_index_u32(var_2.c, 19u)], false, global4[_wgslsmith_index_u32(var_2.a, 19u)]), !vec4<bool>(false, global4[_wgslsmith_index_u32(var_2.a, 19u)], global4[_wgslsmith_index_u32(var_2.c, 19u)], global4[_wgslsmith_index_u32(var_2.a, 19u)]), true)));
}

fn func_2(arg_0: u32) -> u32 {
    global1 = array<vec2<i32>, 28>();
    let var_0 = select(select(vec3<bool>(true, any(select(vec4<bool>(global4[_wgslsmith_index_u32(arg_0, 19u)], global4[_wgslsmith_index_u32(arg_0, 19u)], true, global4[_wgslsmith_index_u32(arg_0, 19u)]), vec4<bool>(global4[_wgslsmith_index_u32(30948u, 19u)], false, global4[_wgslsmith_index_u32(0u, 19u)], false), vec4<bool>(global4[_wgslsmith_index_u32(arg_0, 19u)], false, true, global4[_wgslsmith_index_u32(arg_0, 19u)]))), !global4[_wgslsmith_index_u32(89970u, 19u)]), func_3(), vec3<bool>(all(select(vec3<bool>(global4[_wgslsmith_index_u32(arg_0, 19u)], global4[_wgslsmith_index_u32(arg_0, 19u)], false), vec3<bool>(false, true, true), vec3<bool>(false, global4[_wgslsmith_index_u32(4172u, 19u)], false))), !(global3.x == global3.x), !(global3.x == -2147483647i))), vec3<bool>(!any(!vec3<bool>(true, false, global4[_wgslsmith_index_u32(arg_0, 19u)])), !global4[_wgslsmith_index_u32(51985u >> (arg_0 % 32u), 19u)] != (_wgslsmith_f_op_f32(-757f + 761f) != _wgslsmith_f_op_f32(ceil(-812f))), all(select(select(vec3<bool>(false, global4[_wgslsmith_index_u32(arg_0, 19u)], global4[_wgslsmith_index_u32(arg_0, 19u)]), vec3<bool>(global4[_wgslsmith_index_u32(arg_0, 19u)], true, true), false), !vec3<bool>(global4[_wgslsmith_index_u32(3798u, 19u)], global4[_wgslsmith_index_u32(arg_0, 19u)], global4[_wgslsmith_index_u32(42807u, 19u)]), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 19u)], true, global4[_wgslsmith_index_u32(4294967295u, 19u)])))), global4[_wgslsmith_index_u32(5809u, 19u)]);
    global0 = 112f;
    var var_1 = global4[_wgslsmith_index_u32(24413u, 19u)] & true;
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(992f))))))));
    return firstTrailingBit(min(23188u, arg_0));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(func_2(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(53132u, 94322u), vec2<u32>(1u, 1u)), ~_wgslsmith_div_u32(0u, 4294967295u))), vec4<f32>(_wgslsmith_f_op_f32(select(303f, 1155f, all(vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(416f, -905f, !global4[_wgslsmith_index_u32(12992u, 19u)]))), -849f, _wgslsmith_f_op_f32(652f - 1f)), countOneBits(~4294967295u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1106f + 174f))))));
    let var_1 = var_0.c;
    global4 = array<bool, 19>();
    var var_2 = Struct_1(_wgslsmith_clamp_u32(~var_0.a, 30644u, min(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.c, var_0.c), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(var_0.a, 120142u))), max(~var_0.a, ~0u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d - -2517f) * _wgslsmith_f_op_f32(ceil(var_0.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.d * 1198f), var_0.b.x)), 523f, var_0.b.x) * vec4<f32>(var_0.b.x, 3078f, -467f, _wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(var_0.b.x + 688f)))), ~4294967295u, var_0.d);
    let var_3 = var_2.b.zww;
    return Struct_1(52009u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-711f)), var_2.d, -589f, _wgslsmith_f_op_f32(ceil(var_0.b.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b) + _wgslsmith_f_op_vec4_f32(floor(var_0.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_2.b))))), ~reverseBits(var_0.c), var_0.d);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec4<i32>((_wgslsmith_add_i32(global3.x, -9603i) << (func_2(arg_0.c) % 32u)) << (12245u % 32u), 0i, u_input.a, _wgslsmith_clamp_i32(-1i, i32(-1i) * -10980i, u_input.a)) >> (vec4<u32>(arg_0.c, ~(~arg_0.a), min(_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, arg_0.a), select(arg_0.c, arg_0.c, global4[_wgslsmith_index_u32(973u, 19u)])), ~(arg_0.a >> (arg_0.a % 32u))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 36682u, arg_0.c, 63833u), vec4<u32>(arg_0.a, 56693u, 30756u, 0u))) % vec4<u32>(32u));
    var var_1 = vec2<i32>(((1i << (arg_0.c % 32u)) & 0i) & _wgslsmith_sub_i32(u_input.a, min(i32(-1i) * -36378i, ~(-1i))), firstTrailingBit(u_input.a));
    global1 = array<vec2<i32>, 28>();
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-739f, arg_0.d), arg_0.b.zx) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-939f, arg_0.b.x) * arg_0.b.xx)) + vec2<f32>(-1000f, 134f)) + vec2<f32>(_wgslsmith_f_op_f32(ceil(-713f)), arg_0.d))));
    global3 = _wgslsmith_mult_vec2_i32(select(global1[_wgslsmith_index_u32(arg_0.c, 28u)], global1[_wgslsmith_index_u32(1u, 28u)], (~var_0.x >> (0u % 32u)) < var_1.x), firstLeadingBit(min(vec2<i32>(-1i) * -vec2<i32>(-22089i, var_1.x), -global1[_wgslsmith_index_u32(0u, 28u)] >> (vec2<u32>(arg_0.c, arg_0.a) % vec2<u32>(32u)))));
    return Struct_1(_wgslsmith_sub_u32(func_1().a, _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0.a, 1u), select(0u, arg_0.c, global4[_wgslsmith_index_u32(arg_0.c, 19u)]))) ^ ~(1u & (83288u | arg_0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(round(373f)), -1944f, -1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(357f, _wgslsmith_div_f32(251f, var_2.x), _wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(ceil(-857f))))), arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(1619f * arg_0.b.x)))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~arg_0.a, reverseBits(arg_0.a)), 28u)];
    var var_1 = select(vec2<bool>(true, global4[_wgslsmith_index_u32(arg_0.c, 19u)]), !select(select(select(vec2<bool>(global4[_wgslsmith_index_u32(0u, 19u)], global4[_wgslsmith_index_u32(4294967295u, 19u)]), vec2<bool>(false, global4[_wgslsmith_index_u32(arg_0.c, 19u)]), false), vec2<bool>(true, true), !global4[_wgslsmith_index_u32(100589u, 19u)]), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(global4[_wgslsmith_index_u32(16749u, 19u)], true)), !vec2<bool>(global4[_wgslsmith_index_u32(62958u, 19u)], global4[_wgslsmith_index_u32(17071u, 19u)]), vec2<bool>(true, true)), true), select(any(select(select(vec4<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 19u)], global4[_wgslsmith_index_u32(1u, 19u)], true), vec4<bool>(true, global4[_wgslsmith_index_u32(1u, 19u)], false, true), vec4<bool>(global4[_wgslsmith_index_u32(arg_0.a, 19u)], global4[_wgslsmith_index_u32(arg_0.c, 19u)], global4[_wgslsmith_index_u32(arg_0.c, 19u)], global4[_wgslsmith_index_u32(arg_0.a, 19u)])), vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, true, global4[_wgslsmith_index_u32(1u, 19u)]), vec4<bool>(true, false, global4[_wgslsmith_index_u32(4294967295u, 19u)], true), vec4<bool>(true, true, global4[_wgslsmith_index_u32(93183u, 19u)], global4[_wgslsmith_index_u32(43092u, 19u)])))), false, any(!(!vec3<bool>(global4[_wgslsmith_index_u32(68514u, 19u)], false, false)))));
    var var_2 = 2147483647i;
    var_1 = vec2<bool>(false, all(select(!select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(true, false, var_1.x, false)), select(select(vec4<bool>(global4[_wgslsmith_index_u32(arg_0.c, 19u)], var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, global4[_wgslsmith_index_u32(54918u, 19u)], true)), !vec4<bool>(false, true, false, global4[_wgslsmith_index_u32(arg_0.a, 19u)]), false), true)));
    var var_3 = -vec2<i32>(-max(_wgslsmith_dot_vec4_i32(vec4<i32>(-26657i, u_input.a, var_0.x, -8782i), vec4<i32>(u_input.a, -2147483647i, -1i, global3.x)), global3.x), 1i);
    return Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0.b))), ~2409u, _wgslsmith_f_op_f32(-func_4(func_1()).d));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = i32(-1i) * -6933i;
    var var_0 = -max(2841i, global3.x);
    global3 = global1[_wgslsmith_index_u32(abs(~0u), 28u)];
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))) * -439f);
    var var_1 = func_5(func_4(func_1()));
    global1 = array<vec2<i32>, 28>();
    let var_2 = global3.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec4<i32>((abs(u_input.a) << (~var_1.a % 32u)) << (select(59336u, var_1.a << (46113u % 32u), false) % 32u), _wgslsmith_mod_i32(-2147483647i, -(i32(-1i) * -44196i)), global3.x, _wgslsmith_sub_i32(-31600i, 1i)), var_1.c, vec2<u32>(_wgslsmith_clamp_u32(var_1.a, var_1.c << (var_1.c % 32u), 34665u), max(~var_1.a, 1u)) >> (firstLeadingBit(~select(vec2<u32>(1u, 4294967295u), vec2<u32>(var_1.a, 4294967295u), vec2<bool>(global4[_wgslsmith_index_u32(var_1.a, 19u)], global4[_wgslsmith_index_u32(83381u, 19u)]))) % vec2<u32>(32u)));
}

