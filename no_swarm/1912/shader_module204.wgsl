struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 13> = array<f32, 13>(2043f, -1571f, 1035f, 704f, -647f, -419f, 1000f, -1037f, 1000f, -230f, -224f, -380f, 1000f);

var<private> global2: vec3<bool>;

var<private> global3: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(1000f, 317f, -1512f, -1282f), vec4<f32>(-601f, -233f, -149f, 394f), vec4<f32>(-314f, -1183f, 1640f, 998f), vec4<f32>(-1125f, 728f, -1242f, 483f), vec4<f32>(-406f, 1358f, -1301f, -609f), vec4<f32>(1977f, 1062f, 492f, 2420f), vec4<f32>(-1007f, -493f, 954f, -1414f), vec4<f32>(570f, -1204f, 341f, -469f), vec4<f32>(-392f, 1114f, 119f, 746f), vec4<f32>(-1130f, 861f, -1000f, 1017f), vec4<f32>(518f, -264f, -320f, 753f), vec4<f32>(634f, -1000f, -594f, 412f), vec4<f32>(262f, 541f, 960f, 2494f), vec4<f32>(926f, -692f, -1605f, -1000f), vec4<f32>(1336f, 203f, -783f, 383f), vec4<f32>(-1186f, 1441f, -276f, 480f), vec4<f32>(-390f, 871f, 613f, -963f), vec4<f32>(-178f, -1000f, -702f, -1886f));

var<private> global4: Struct_4 = Struct_4(vec4<bool>(false, false, false, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    var var_0 = global0.a;
    var_0 = Struct_1(global2.x, select(select(global2.xy, select(!vec2<bool>(global2.x, global4.a.x), vec2<bool>(false, true), global4.a.x), all(global4.a)), select(select(vec2<bool>(var_0.c.x, true), vec2<bool>(global0.a.a, var_0.b.x), select(vec2<bool>(global4.a.x, global4.a.x), global2.xy, vec2<bool>(false, false))), !var_0.b, false), !global4.a.x), var_0.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-321f + 2528f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(8826u, 13u)]), 1578f, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(49873u, 13u)]))))));
    let var_2 = select(_wgslsmith_div_vec4_i32(max(-vec4<i32>(arg_0, u_input.a, -10342i, 37489i), countOneBits(_wgslsmith_clamp_vec4_i32(u_input.c, u_input.c, u_input.c))), u_input.c), u_input.c, !(!(!global4.a)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 0u) << (countOneBits(0u) % 32u), 18u)]), _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(19975u), ~46027u, ~51272u), 18u)] - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(731f, 2349f, var_1.x, 1000f))))) + global3[_wgslsmith_index_u32(max(62665u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(false, false, false, global4.a.x)))), 18u)]);
    return select(vec2<bool>(!global4.a.x, any(global2.yx)), vec2<bool>(true, global0.a.a), !global0.a.b.x);
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    global2 = !(!vec3<bool>(any(select(arg_3.c, global4.a.wwz, global4.a.x)), true, false));
    let var_0 = arg_3;
    let var_1 = 4294967295u;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(755f)), -350f) * global1[_wgslsmith_index_u32(arg_2.x, 13u)]), global1[_wgslsmith_index_u32(min(reverseBits(arg_2.x) & arg_2.x, 4294967295u), 13u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1657f + _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(var_1, 13u)], 1494f))))), global1[_wgslsmith_index_u32(~(~1u), 13u)], _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-655f, global1[_wgslsmith_index_u32(var_1, 13u)])) - global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1, var_1), 13u)]), 1f))));
    global0 = Struct_2(Struct_1(!all(vec2<bool>(false, true)), func_3(u_input.c.x), select(!var_0.c, !vec3<bool>(global2.x, true, global2.x), true)));
    return global0.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_4 {
    global1 = array<f32, 13>();
    global1 = array<f32, 13>();
    global3 = array<vec4<f32>, 18>();
    let var_0 = true;
    var var_1 = Struct_4(vec4<bool>(func_3(reverseBits(firstLeadingBit(u_input.c.x))).x, func_2(Struct_4(vec4<bool>(false, false, true, global2.x)), u_input.b, vec4<u32>(1u, 1u, 1u, 1u), Struct_1(true, select(vec2<bool>(false, arg_2.x), global0.a.c.zz, false), !vec3<bool>(arg_0.a.c.x, global0.a.a, true))).c.x, false, true));
    return Struct_4(vec4<bool>(true, true, any(vec3<bool>(true, false, all(arg_1.c))), select(true, var_0, true != (u_input.a < -11243i))));
}

fn func_1() -> Struct_4 {
    var var_0 = all(global4.a);
    global4 = func_4(Struct_2(func_2(Struct_4(select(vec4<bool>(false, false, false, true), global4.a, global4.a)), ~reverseBits(u_input.a), select(vec4<u32>(36935u, 0u, 0u, 1822u), ~vec4<u32>(45738u, 71425u, 14313u, 64830u), !vec4<bool>(global4.a.x, true, false, false)), Struct_1(global0.a.c.x, !global0.a.c.zx, global4.a.wyx))), global0.a, global4.a.xzx);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(63959u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(696u, 13u)], 1000f)), vec4<f32>(-1129f, 103f, global1[_wgslsmith_index_u32(56970u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)]), global4.a)) * global3[_wgslsmith_index_u32(_wgslsmith_div_u32(18456u, 46603u) << (1u % 32u), 18u)]) + vec4<f32>(_wgslsmith_f_op_f32(-2956f * _wgslsmith_f_op_f32(trunc(-508f))), -323f, global1[_wgslsmith_index_u32(reverseBits(0u), 13u)], -1684f)));
    var var_2 = _wgslsmith_add_i32(firstLeadingBit(29171i), _wgslsmith_mult_i32(select(~_wgslsmith_dot_vec3_i32(u_input.c.wxw, vec3<i32>(u_input.c.x, u_input.b, -1i)), -u_input.b, func_3(-u_input.a).x), u_input.a));
    let var_3 = func_4(Struct_2(global0.a), Struct_1(global0.a.b.x || true, vec2<bool>(true, -u_input.b != 1i), vec3<bool>(global0.a.a && true, false, global2.x)), select(vec3<bool>(true, global2.x, !(true || global2.x)), vec3<bool>(!global0.a.a, ~u_input.c.x >= 0i, !any(vec3<bool>(false, false, global2.x))), global0.a.c));
    return Struct_4(vec4<bool>(global0.a.a, !(4294967295u != _wgslsmith_dot_vec2_u32(vec2<u32>(38468u, 69820u), vec2<u32>(4294967295u, 4294967295u))), all(vec2<bool>(true, all(vec2<bool>(false, global2.x)))), 726f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(85177u, 13u)]) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 13u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !vec3<bool>(true, true, any(select(!global0.a.c, !vec3<bool>(global2.x, global4.a.x, global0.a.b.x), vec3<bool>(global0.a.c.x, global4.a.x, true))));
    global4 = func_1();
    let var_0 = vec4<i32>(804i, _wgslsmith_div_i32(u_input.c.x, u_input.a << ((min(45942u, 1u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 45991u, 0u, 0u), vec4<u32>(1u, 40000u, 40924u, 0u)) % 32u)) % 32u)), _wgslsmith_dot_vec4_i32(~(~(~vec4<i32>(-2147483647i, u_input.a, u_input.c.x, u_input.a))), firstTrailingBit(u_input.c)), u_input.c.x);
    global3 = array<vec4<f32>, 18>();
    let var_1 = vec2<i32>(~(~(~(-2147483647i))), u_input.c.x);
    let var_2 = u_input.a > var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~16565u)), countOneBits(~max(~45209u, _wgslsmith_mult_u32(2017u, 22091u))), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(13186u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u), 0u, firstLeadingBit(43605u)), ~(~vec4<u32>(0u, 2577u, 29878u, 40451u))), vec4<u32>(~39611u, 4294967295u, 0u, ~43671u) << (_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 29633u, 3423u, 10023u)), ~vec4<u32>(20363u, 60651u, 80977u, 14210u)) % vec4<u32>(32u))));
}

