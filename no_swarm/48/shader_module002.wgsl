struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec2<u32>(4154u, 43592u), -1678f), 4294967295u, Struct_1(vec2<u32>(4294967295u, 5268u), -1191f), vec2<i32>(-1i, -34252i), false), Struct_2(Struct_1(vec2<u32>(33491u, 40490u), -2442f), 56625u, Struct_1(vec2<u32>(1u, 4294967295u), -588f), vec2<i32>(i32(-2147483648), -1i), true), Struct_2(Struct_1(vec2<u32>(0u, 15758u), 185f), 10578u, Struct_1(vec2<u32>(57840u, 4294967295u), -274f), vec2<i32>(-37235i, 17737i), true));

var<private> global2: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false));

var<private> global3: vec4<i32> = vec4<i32>(2147483647i, i32(-2147483648), 55010i, 2147483647i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>) -> bool {
    return ~47702u == u_input.a.x;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: bool) -> u32 {
    var var_0 = u_input.a.x;
    let var_1 = ~(-23877i);
    var_0 = u_input.a.x | ~(~firstLeadingBit(reverseBits(u_input.a.x)));
    global3 = select(~vec4<i32>(-var_1, 2147483647i, global3.x, abs(global3.x)), firstLeadingBit(countOneBits(abs(vec4<i32>(arg_1.x, var_1, 1i, 7903i)))), vec4<bool>(-878f > _wgslsmith_f_op_f32(select(-970f, -1234f, arg_3)), !select(arg_2.x, true, false), select(any(vec2<bool>(false, true)), true, true), all(vec2<bool>(false, false)))) | _wgslsmith_mult_vec4_i32(vec4<i32>(global3.x, -101444i, global3.x & firstLeadingBit(-2147483647i), abs(_wgslsmith_add_i32(-1i, u_input.c))), vec4<i32>(global3.x, global3.x, _wgslsmith_mult_i32(select(0i, 3362i, false), 55228i), -(~arg_1.x)));
    let var_2 = vec4<u32>(u_input.a.x, ~1u, 0u, 0u);
    return u_input.a.x;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = -(~vec4<i32>(i32(-1i) * -11519i, global3.x, u_input.c, u_input.c));
    let var_1 = Struct_2(Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(select(u_input.a, vec4<u32>(48785u, 4294967295u, u_input.a.x, 1u), global2[_wgslsmith_index_u32(arg_0.x, 32u)]), vec4<u32>(u_input.a.x, 51755u, u_input.a.x, 4294967295u) & vec4<u32>(0u, arg_0.x, u_input.a.x, u_input.a.x)), _wgslsmith_div_u32(u_input.a.x, ~90989u)), 1000f), _wgslsmith_dot_vec4_u32(arg_0, _wgslsmith_add_vec4_u32(firstTrailingBit(arg_0 ^ vec4<u32>(u_input.a.x, 1912u, arg_0.x, 6569u)), _wgslsmith_div_vec4_u32(countOneBits(arg_0), firstTrailingBit(vec4<u32>(93092u, 24526u, u_input.a.x, 1u))))), global0[_wgslsmith_index_u32(arg_0.x | 4897u, 16u)], abs(var_0.yz), all(vec2<bool>(true, true)));
    global0 = array<Struct_1, 16>();
    var var_2 = vec4<u32>(~47694u, ~(~func_3(vec4<bool>(var_1.e, false, false, true), vec2<i32>(global3.x, u_input.d), !vec2<bool>(var_1.e, true), 0i > var_0.x)), reverseBits(u_input.a.x), ~arg_0.x);
    let var_3 = select(vec2<bool>(true, true), vec2<bool>(var_1.e, func_1(vec3<i32>(abs(u_input.d), u_input.c, 30573i), ~vec2<i32>(0i, u_input.b))), var_1.e);
    return global0[_wgslsmith_index_u32(~4294967295u, 16u)];
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>) -> vec2<f32> {
    let var_0 = 41280i & -_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(21010i, u_input.b, 2147483647i), global3.yxy), vec3<i32>(-global3.x, firstTrailingBit(0i), _wgslsmith_sub_i32(-1i, 0i)));
    var var_1 = -961f;
    global0 = array<Struct_1, 16>();
    var var_2 = ~select(~abs(global3.xxx), global3.zwy & (global3.xww & global3.zzz), any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))));
    var var_3 = vec4<f32>(func_2(~u_input.a).b, -1347f, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b)))), _wgslsmith_f_op_f32(trunc(-672f)));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(335f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), 241f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(680f * _wgslsmith_f_op_f32(524f * arg_0)) + _wgslsmith_f_op_f32(sign(-2425f)))));
}

fn func_5(arg_0: vec3<bool>, arg_1: bool, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = func_2(firstLeadingBit(firstTrailingBit(abs(u_input.a)) & _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), select(u_input.a, u_input.a, global2[_wgslsmith_index_u32(4294967295u, 32u)]))));
    global3 = select(vec4<i32>(u_input.b, i32(-1i) * -1i, -1i ^ _wgslsmith_mult_i32(-65920i | u_input.b, u_input.d), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, 16862i), global3.x, 2147483647i & global3.x), _wgslsmith_sub_i32(u_input.d, _wgslsmith_clamp_i32(-2147483647i, -2147483647i, u_input.c)), u_input.c)), vec4<i32>(-global3.x, 2147483647i, -(i32(-1i) * -2147483647i) & ~u_input.b, u_input.c << (4294967295u % 32u)), arg_1);
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-350f, -489f)) - arg_2.x) * -993f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b - 1835f)))), _wgslsmith_f_op_f32(-305f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1138f, var_0.b)), -708f)));
    global1 = array<Struct_2, 3>();
    return func_2(reverseBits(~((u_input.a << (vec4<u32>(u_input.a.x, var_0.a.x, u_input.a.x, 14061u) % vec4<u32>(32u))) ^ ~u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 16>();
    var var_0 = global1[_wgslsmith_index_u32(~1u, 3u)];
    var var_1 = any(!select(global2[_wgslsmith_index_u32(~u_input.a.x, 32u)], !global2[_wgslsmith_index_u32(1u, 32u)], vec4<bool>(var_0.e, var_0.e, !var_0.e, false)));
    var var_2 = var_0.e;
    var_1 = any(!vec3<bool>(func_1(~global3.yyw, abs(vec2<i32>(4303i, u_input.c))), var_0.e, !var_0.e));
    var_0 = Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(u_input.a.xwx, vec3<u32>(29960u, var_0.b, var_0.a.a.x))), select(u_input.a.yww & u_input.a.zxx, u_input.a.xxy, vec3<bool>(var_0.e, true, false))) & firstTrailingBit(~var_0.a.a.x), func_5(vec3<bool>((1u <= var_0.a.a.x) & !var_0.e, any(vec3<bool>(var_0.e, var_0.e, false)), true), true, _wgslsmith_f_op_vec2_f32(func_4(517f, func_2(u_input.a), -vec2<i32>(global3.x, -154i)))), select(min(abs(vec2<i32>(2147483647i, var_0.d.x)), ~(-vec2<i32>(-2147483647i, var_0.d.x))), firstLeadingBit(_wgslsmith_add_vec2_i32(max(var_0.d, vec2<i32>(-46047i, u_input.d)), countOneBits(vec2<i32>(-2147483647i, 1i)))), !(!vec2<bool>(var_0.e, var_0.e))), (-20535i >> ((~u_input.a.x ^ var_0.c.a.x) % 32u)) <= 0i);
    let var_3 = -995f;
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.b, func_3(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.c.a.x, 4294967295u), 32u)], _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, var_0.d.x), var_0.d ^ global3.yx, vec2<i32>(-30638i, u_input.c)), !select(vec2<bool>(var_0.e, var_0.e), vec2<bool>(false, true), vec2<bool>(var_0.e, true)), all(vec3<bool>(var_0.e, var_0.e, var_0.e)))) << (3295u % 32u), 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~u_input.a.x, var_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(664f, var_3), vec2<f32>(-508f, 353f)))))), -1i);
}

