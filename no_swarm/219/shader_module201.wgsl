struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(-1495i, -60983i), vec2<i32>(31127i, -11742i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-1i, 4743i), vec2<i32>(-3034i, 0i), vec2<i32>(-33274i, 62413i), vec2<i32>(-1405i, 2147483647i), vec2<i32>(i32(-2147483648), -10178i), vec2<i32>(1i, -1i), vec2<i32>(0i, 1i), vec2<i32>(8522i, 57735i), vec2<i32>(2147483647i, 0i), vec2<i32>(-19705i, -1i), vec2<i32>(6116i, -37814i), vec2<i32>(5488i, 25707i), vec2<i32>(2069i, -41202i), vec2<i32>(-43378i, 29078i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, 0i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-16513i, 19221i), vec2<i32>(9824i, -87402i), vec2<i32>(-7831i, -18913i), vec2<i32>(-32035i, i32(-2147483648)));

var<private> global1: u32;

var<private> global2: vec2<bool>;

var<private> global3: i32 = -9072i;

var<private> global4: array<bool, 10>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec3<i32>) -> f32 {
    global3 = _wgslsmith_sub_i32(firstTrailingBit(-1i), firstTrailingBit(arg_3.x));
    let var_0 = 8089i;
    global2 = vec2<bool>(!(true | !arg_2.b) || global2.x, true);
    let var_1 = _wgslsmith_mod_u32(abs(0u), 61719u);
    global2 = !vec2<bool>(all(!arg_1.xy), true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * -1716f))))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.a.x)))))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>) -> u32 {
    let var_0 = 941f;
    var var_1 = !vec2<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -538f) >= _wgslsmith_f_op_f32(func_3(-443f, vec3<bool>(arg_1.b, arg_0.b, arg_0.b), arg_1, u_input.a))), true);
    global3 = abs(_wgslsmith_clamp_i32(1i, countOneBits(-(-1i << (u_input.b.x % 32u))), 2147483647i));
    let var_2 = arg_0;
    let var_3 = -2147483647i;
    return u_input.c;
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: i32) -> Struct_1 {
    global1 = _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.d, 1u & u_input.b.x, ~14358u)), max(select(vec3<u32>(0u, ~u_input.b.x, 4294967295u), _wgslsmith_mult_vec3_u32(u_input.b, ~u_input.b), select(!vec3<bool>(global4[_wgslsmith_index_u32(u_input.d, 10u)], true, true), select(vec3<bool>(false, arg_1, true), vec3<bool>(true, arg_1, false), global4[_wgslsmith_index_u32(39499u, 10u)]), select(vec3<bool>(true, false, arg_1), vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.c, 10u)], false), vec3<bool>(arg_1, true, global4[_wgslsmith_index_u32(u_input.c, 10u)])))), ~vec3<u32>(~u_input.c, func_2(Struct_2(vec4<f32>(-1049f, -1335f, -230f, 1000f), arg_1), Struct_2(vec4<f32>(-762f, 1150f, 176f, 186f), arg_1), vec4<f32>(729f, -236f, -1440f, -794f)), ~9113u)));
    global1 = _wgslsmith_mod_u32(u_input.b.x, ~min(u_input.c, 4294967295u));
    global2 = vec2<bool>(true, global4[_wgslsmith_index_u32(~min(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 62282u), vec2<u32>(35222u, 13635u))), 0u), 10u)]);
    global2 = !select(select(select(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.d, 10u)], global2.x), select(vec2<bool>(true, false), vec2<bool>(global4[_wgslsmith_index_u32(u_input.d, 10u)], global4[_wgslsmith_index_u32(1u, 10u)]), false), true), vec2<bool>(!global2.x, true), true), select(vec2<bool>(arg_1, u_input.c >= 2004u), select(!vec2<bool>(arg_1, arg_1), !vec2<bool>(false, global2.x), vec2<bool>(arg_1, false)), !(!vec2<bool>(global2.x, global2.x))), vec2<bool>(true, select(true, all(vec4<bool>(false, true, false, arg_1)), any(vec3<bool>(false, global2.x, false)))));
    let var_0 = Struct_1(!arg_1, -(arg_0.x ^ ~arg_2), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(110f - -1888f), -716f, -2058f)))), _wgslsmith_add_vec3_u32(u_input.b, max(vec3<u32>(1u, 30176u, u_input.c << (73376u % 32u)), countOneBits(_wgslsmith_mod_vec3_u32(u_input.b, u_input.b)))), vec4<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -631f), _wgslsmith_f_op_f32(round(-1200f)), true)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1856f * 1000f)), true, select(arg_1, global2.x, false), global2.x || global2.x));
    return Struct_1(true, arg_0.x, var_0.c, _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(1u, 4294967295u, 4294967295u)), var_0.d, ~vec3<u32>(~var_0.d.x, 30330u, 0u)), var_0.e);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> StorageBuffer {
    global1 = ~reverseBits(~(~arg_1.d.x)) << (reverseBits(min(_wgslsmith_clamp_u32(func_2(Struct_2(vec4<f32>(1169f, arg_1.c.x, 498f, 1000f), global2.x), Struct_2(vec4<f32>(arg_1.c.x, arg_1.c.x, 819f, 809f), global2.x), vec4<f32>(-114f, -789f, arg_1.c.x, arg_1.c.x)), _wgslsmith_clamp_u32(1u, 69845u, 6757u), 24444u), arg_1.d.x)) % 32u);
    let var_0 = arg_1;
    let var_1 = func_1(abs(_wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(arg_1.d.x >> (103512u % 32u), 24u)], ~arg_0.zz | (global0[_wgslsmith_index_u32(57241u, 24u)] >> (u_input.b.yz % vec2<u32>(32u))))), var_0.c.x < _wgslsmith_f_op_f32(trunc(arg_1.c.x)), countOneBits(-_wgslsmith_add_i32(_wgslsmith_add_i32(var_0.b, var_0.b), func_1(global0[_wgslsmith_index_u32(arg_1.d.x, 24u)], true, arg_0.x).b)));
    var var_2 = global0[_wgslsmith_index_u32(((~u_input.d ^ _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 11491u, 21584u, var_1.d.x), vec4<u32>(var_0.d.x, u_input.b.x, u_input.c, var_1.d.x)), var_0.d.x, arg_1.d.x)) | 1u) | _wgslsmith_dot_vec4_u32(abs(vec4<u32>(abs(31455u), 4294967295u << (arg_1.d.x % 32u), 1u, abs(0u))), abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c, 94122u, var_1.d.x, 1u), select(vec4<u32>(var_0.d.x, 18133u, 4294967295u, u_input.b.x), vec4<u32>(arg_1.d.x, var_0.d.x, arg_1.d.x, var_1.d.x), vec4<bool>(var_0.e.x, false, false, false)), vec4<u32>(u_input.c, var_0.d.x, 1u, var_1.d.x) ^ vec4<u32>(4294967295u, 1u, var_1.d.x, var_1.d.x)))), 24u)];
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), var_0.c.x, 803f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(747f + var_0.c.x)), _wgslsmith_f_op_f32(var_0.c.x * -362f), true)) * -649f));
    return StorageBuffer(vec3<i32>(-54466i, min(-372i, ~(~var_1.b)), _wgslsmith_mult_i32(firstTrailingBit(15271i), ~(0i | var_2.x))), var_1.c, _wgslsmith_mult_i32(-2147483647i, var_1.b), _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(var_1.b, u_input.a.x)) >> (select(vec2<u32>(u_input.b.x, arg_1.d.x), ~u_input.b.zz, any(var_0.e)) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(35749u, abs(28405u) ^ (26048u | arg_1.d.x)), 24u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = u_input.e;
    global4 = array<bool, 10>();
    global3 = -1i & u_input.e;
    global4 = array<bool, 10>();
    let x = u_input.a;
    s_output = func_4(_wgslsmith_mult_vec3_i32(u_input.a, u_input.a) >> (vec3<u32>(~1u, 1u, firstTrailingBit(u_input.c)) % vec3<u32>(32u)), func_1(~global0[_wgslsmith_index_u32(~4294967295u, 24u)] ^ u_input.a.xy, !(!(45974u < var_0.x)), 1i));
}

