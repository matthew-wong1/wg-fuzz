struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 18> = array<f32, 18>(1075f, -342f, -546f, 239f, 520f, 908f, -1636f, 1048f, -261f, -111f, -1000f, -1283f, 1168f, -314f, 2039f, 863f, 1564f, -1000f);

var<private> global2: bool = false;

var<private> global3: f32 = 568f;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> u32 {
    return ~arg_1.b;
}

fn func_3() -> bool {
    let var_0 = Struct_1(vec4<bool>(true, all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, false, false))), true, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a, 1i) ^ vec3<i32>(-2147483647i, 0i, 0i), -vec3<i32>(u_input.a, 9227i, 0i)) != reverseBits(0i)), ~_wgslsmith_sub_u32(17839u, _wgslsmith_mult_u32(abs(24504u), _wgslsmith_dot_vec2_u32(vec2<u32>(8610u, 47132u), vec2<u32>(1u, 31285u)))), _wgslsmith_mult_vec4_i32(vec4<i32>(-15091i, ~8414i ^ -u_input.b, _wgslsmith_sub_i32(u_input.b, abs(u_input.b)), ~abs(u_input.a)), vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b) ^ vec2<i32>(u_input.a, u_input.b), ~vec2<i32>(u_input.a, u_input.b)), -2147483647i, ~(~39265i))), select(vec2<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))), !vec2<bool>(-320f != global1[_wgslsmith_index_u32(29042u, 18u)], true), false), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 41738u, 28114u)), _wgslsmith_dot_vec2_u32(vec2<u32>(29001u, 95820u), vec2<u32>(1u, 4294967295u)) ^ ~3831u), max(select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 117328u, 12374u), vec4<u32>(58116u, 4294967295u, 1u, 4294967295u)), countOneBits(0u), true), abs(min(17317u, 31836u))), abs(max(~4294967295u, ~4294967295u))));
    var var_1 = _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_0.e.x, ~abs(4294967295u)), 18u)], 1723f));
    var var_2 = abs(var_0.c);
    var var_3 = Struct_1(!var_0.a, select(var_0.b, var_0.b, true), reverseBits(vec4<i32>(-1i >> (var_0.e.x % 32u), u_input.a, u_input.a, reverseBits(-var_0.c.x))), select(vec2<bool>(true, true || any(vec3<bool>(true, true, var_0.a.x))), var_0.d, !(_wgslsmith_f_op_f32(-843f * -955f) <= global1[_wgslsmith_index_u32(~var_0.b, 18u)])), ~vec3<u32>(~(~0u), ~1u, 4294967295u));
    var var_4 = -abs(firstLeadingBit(_wgslsmith_add_i32(~(-1i), ~49305i)));
    return all(var_3.a.xyw);
}

fn func_2() -> Struct_1 {
    global1 = array<f32, 18>();
    var var_0 = Struct_1(select(vec4<bool>(true, all(vec2<bool>(true, true)) | select(true, false, false), true || (global1[_wgslsmith_index_u32(14345u, 18u)] <= 1361f), func_3()), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(116563u, 18u)] <= global1[_wgslsmith_index_u32(61742u, 18u)], u_input.a < u_input.a)), all(select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false)))), ~(~32701u), -select(~(vec4<i32>(0i, 0i, -12170i, u_input.a) << (vec4<u32>(4294967295u, 73594u, 1u, 0u) % vec4<u32>(32u))), ~(~vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false))), vec2<bool>(true, true), ~_wgslsmith_div_vec3_u32(vec3<u32>(firstTrailingBit(2104u), 1u, ~0u), ~(vec3<u32>(0u, 77970u, 18188u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))));
    var var_1 = var_0.c.x;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(33733u, 18u)] - _wgslsmith_f_op_f32(ceil(164f))));
    let var_2 = Struct_1(vec4<bool>(true, true, ~_wgslsmith_clamp_i32(2147483647i, u_input.a, u_input.a) >= -var_0.c.x, all(var_0.a)), ~1u, min(-(~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.b, -29196i, var_0.c.x), vec4<i32>(u_input.b, var_0.c.x, var_0.c.x, u_input.b))), vec4<i32>(abs(abs(u_input.b)), -u_input.a, u_input.b, var_0.c.x)), select(select(!(!vec2<bool>(var_0.a.x, true)), vec2<bool>(all(var_0.a.wxz), var_0.d.x), !(!var_0.a.wz)), vec2<bool>(!(var_0.b >= 0u), var_0.d.x), select(select(vec2<bool>(var_0.d.x, true), select(vec2<bool>(true, false), var_0.d, var_0.a.wx), var_0.a.yy), vec2<bool>(var_0.e.x < var_0.b, var_0.d.x), func_3())), ~vec3<u32>(_wgslsmith_mult_u32(27025u, 1u), ~firstTrailingBit(var_0.b), _wgslsmith_dot_vec3_u32(~var_0.e, ~var_0.e)));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32) -> f32 {
    var var_0 = Struct_1(!vec4<bool>(true & arg_0.a.x, false, !(global1[_wgslsmith_index_u32(1u, 18u)] < 3040f), any(func_2().a.xy)), arg_0.e.x, -vec4<i32>((7738i << (0u % 32u)) | _wgslsmith_sub_i32(arg_0.c.x, u_input.a), arg_1.x, _wgslsmith_div_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(38690i, -26766i, arg_1.x, arg_2), vec4<i32>(-51831i, -6033i, -2147483647i, 0i))), min(20851i, arg_1.x)), vec2<bool>(arg_0.a.x, func_2().a.x), ~(~(vec3<u32>(1u, arg_0.e.x, arg_0.b) & vec3<u32>(arg_0.b, arg_0.b, arg_0.b)) & arg_0.e));
    let var_1 = _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(arg_0.b, 18u)]));
    let var_2 = !(!vec4<bool>(all(var_0.a.zyw), var_0.a.x, true, !arg_0.d.x != true));
    var_0 = arg_0;
    var var_3 = arg_0;
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~0u), 18u)]), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(~countOneBits(0u), 18u)])))));
    var var_0 = ~_wgslsmith_mult_vec2_u32(~vec2<u32>(~4294967295u, 4294967295u), vec2<u32>(func_1(countOneBits(vec4<u32>(22771u, 4294967295u, 0u, 117935u)), Struct_1(vec4<bool>(false, false, true, false), 0u, vec4<i32>(u_input.b, u_input.a, 34066i, u_input.a), vec2<bool>(true, true), vec3<u32>(25134u, 6683u, 41471u)), 1004f, Struct_1(vec4<bool>(true, false, true, true), 0u, vec4<i32>(0i, -29695i, 28858i, -2147483647i), vec2<bool>(false, true), vec3<u32>(4294967295u, 1u, 1u))), ~1u));
    global1 = array<f32, 18>();
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(273f, -442f), _wgslsmith_div_vec2_f32(vec2<f32>(-258f, global1[_wgslsmith_index_u32(4294967295u, 18u)]), vec2<f32>(global1[_wgslsmith_index_u32(var_0.x, 18u)], -738f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], -571f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(var_0.x, 18u)]), vec2<f32>(global1[_wgslsmith_index_u32(1u, 18u)], -820f), vec2<bool>(false, false)))))))));
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(firstLeadingBit(var_0.x), _wgslsmith_sub_u32(22715u, var_0.x)) & ~(~var_0.x), _wgslsmith_div_u32(reverseBits(var_0.x), var_0.x)), ~abs(_wgslsmith_mod_u32(~70966u, 0u >> (var_0.x % 32u)))), 18u)];
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) - _wgslsmith_f_op_f32(func_4(func_2(), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, 2147483647i, -1i), select(vec3<i32>(28148i, u_input.a, 1i), vec3<i32>(0i, -2147483647i, -1i), vec3<bool>(true, false, true))) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(15014u, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x)) % vec3<u32>(32u)), 1608i)));
    var var_2 = Struct_1(!select(vec4<bool>(func_3(), all(vec3<bool>(false, true, false)), all(vec2<bool>(false, true)), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(false, true, true, true), 8334i > u_input.b), true), min(~var_0.x, 4294967295u), -(~vec4<i32>(1i, 1i, _wgslsmith_sub_i32(2147483647i, u_input.b), u_input.a << (var_0.x % 32u))), select(vec2<bool>(false, any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true))), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)), select(vec2<bool>(u_input.a >= u_input.a, all(vec3<bool>(false, true, true))), func_2().a.xz, true)), max(select(max(_wgslsmith_mult_vec3_u32(vec3<u32>(53057u, 0u, var_0.x), vec3<u32>(1u, 52647u, var_0.x)), _wgslsmith_add_vec3_u32(vec3<u32>(40740u, 44669u, var_0.x), vec3<u32>(var_0.x, 17281u, 53090u))), firstLeadingBit(vec3<u32>(var_0.x, var_0.x, var_0.x) ^ vec3<u32>(var_0.x, 4294967295u, var_0.x)), false), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.x, 0u, var_0.x), func_2().e & vec3<u32>(var_0.x, 0u, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, var_1.x), vec2<f32>(global1[_wgslsmith_index_u32(var_2.b, 18u)], global1[_wgslsmith_index_u32(1u, 18u)])))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4537u, 18u)], 137f) + _wgslsmith_f_op_vec2_f32(ceil(var_1)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-384f, global1[_wgslsmith_index_u32(103995u, 18u)])))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1108f, -822f))), vec2<f32>(var_1.x, global1[_wgslsmith_index_u32(var_0.x, 18u)])))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, var_2.b << (var_2.b % 32u)), ~max(var_2.e.x, 44351u)) | 0u, var_2.c.x, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1350f - -1745f) * 329f), _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4347u, 18u)] + global1[_wgslsmith_index_u32(var_2.b, 18u)]), select(true, true, true))), _wgslsmith_f_op_f32(min(-1292f, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(26945u, 51166u), 18u)]))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.x)))), _wgslsmith_div_f32(986f, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(4294967295u, 18u)]))), var_1.x))));
}

