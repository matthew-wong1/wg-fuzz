struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: array<vec3<f32>, 29>;

var<private> global2: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(401f, 4294967295u, Struct_2(vec4<u32>(0u, 4294967295u, 45558u, 22442u), -264f, vec2<i32>(-26635i, i32(-2147483648))), 54879u), Struct_3(486f, 1u, Struct_2(vec4<u32>(1u, 4294967295u, 28850u, 1u), -2587f, vec2<i32>(2147483647i, -21157i)), 64964u), Struct_3(1000f, 4294967295u, Struct_2(vec4<u32>(1u, 1u, 0u, 19137u), 1376f, vec2<i32>(i32(-2147483648), 2147483647i)), 24271u), Struct_3(873f, 1u, Struct_2(vec4<u32>(2648u, 0u, 4294967295u, 70366u), 1279f, vec2<i32>(2147483647i, 0i)), 40388u), Struct_3(-257f, 1u, Struct_2(vec4<u32>(1u, 0u, 4294967295u, 18749u), -811f, vec2<i32>(2147483647i, -95763i)), 0u), Struct_3(372f, 4294967295u, Struct_2(vec4<u32>(4294967295u, 3136u, 4294967295u, 31191u), 490f, vec2<i32>(19475i, -1i)), 1u), Struct_3(-1277f, 0u, Struct_2(vec4<u32>(7293u, 20272u, 96742u, 1u), -994f, vec2<i32>(1i, -1i)), 0u), Struct_3(-230f, 0u, Struct_2(vec4<u32>(4294967295u, 52211u, 4294967295u, 81715u), -1000f, vec2<i32>(809i, -25258i)), 44037u), Struct_3(1486f, 33675u, Struct_2(vec4<u32>(33329u, 2850u, 4294967295u, 21082u), -535f, vec2<i32>(2147483647i, 30035i)), 4294967295u), Struct_3(-166f, 37912u, Struct_2(vec4<u32>(2434u, 1u, 40168u, 0u), -612f, vec2<i32>(1i, -1i)), 6306u), Struct_3(-516f, 4294967295u, Struct_2(vec4<u32>(4294967295u, 1u, 4294967295u, 59513u), -1325f, vec2<i32>(2147483647i, -1i)), 4294967295u), Struct_3(1076f, 0u, Struct_2(vec4<u32>(57729u, 63767u, 51124u, 1u), 1482f, vec2<i32>(-14610i, 32426i)), 0u), Struct_3(370f, 28612u, Struct_2(vec4<u32>(37776u, 0u, 40866u, 0u), 151f, vec2<i32>(-26795i, 25317i)), 11440u), Struct_3(180f, 19808u, Struct_2(vec4<u32>(4294967295u, 51146u, 4294967295u, 6052u), 101f, vec2<i32>(-31730i, -29096i)), 61974u), Struct_3(-936f, 37375u, Struct_2(vec4<u32>(9860u, 54430u, 1u, 13234u), 192f, vec2<i32>(1i, 35911i)), 4294967295u), Struct_3(-2645f, 1u, Struct_2(vec4<u32>(74623u, 46379u, 113997u, 10000u), -621f, vec2<i32>(-12315i, -58804i)), 4294967295u));

var<private> global3: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true));

var<private> global4: array<i32, 6>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: u32) -> vec2<i32> {
    global2 = array<Struct_3, 16>();
    global0 = !(!select(vec3<bool>(global0.x, arg_0, arg_0), global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~78148u, u_input.c.x), 18u)]));
    global4 = array<i32, 6>();
    var var_0 = global4[_wgslsmith_index_u32(countOneBits(1u), 6u)];
    var var_1 = 4294967295u;
    return vec2<i32>(-_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -40340i, -20240i, 0i), vec4<i32>(global4[_wgslsmith_index_u32(37206u, 6u)], 49034i, 4774i, -1i)), global4[_wgslsmith_index_u32(0u, 6u)] ^ -2147483647i), -2147483647i), 11267i);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<u32>) -> u32 {
    let var_0 = abs(firstTrailingBit(select(arg_0.c.x, 2147483647i, false)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_0.b)), _wgslsmith_f_op_f32(arg_0.b + arg_0.b))) + 912f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(462f, -929f, false)), _wgslsmith_f_op_f32(-arg_0.b)) - _wgslsmith_f_op_f32(sign(-666f)))), _wgslsmith_div_f32(arg_0.b, arg_0.b));
    global2 = array<Struct_3, 16>();
    var var_2 = countOneBits(func_1(arg_1.x, 7976u).x);
    var var_3 = _wgslsmith_mod_u32(min(_wgslsmith_clamp_u32(~firstTrailingBit(arg_0.a.x), _wgslsmith_add_u32(_wgslsmith_mult_u32(3424u, arg_2.x), arg_0.a.x), 122298u), _wgslsmith_mod_u32(1u, 4294967295u)), 4294967295u);
    return 1u | ~arg_2.x;
}

fn func_4(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = countOneBits(1217i);
    let var_1 = vec2<u32>(~(~u_input.a), _wgslsmith_mod_u32(arg_0.c.a.x, ~4294967295u));
    var var_2 = -_wgslsmith_mod_i32(reverseBits(-1i), abs(select(1i, 2147483647i, false))) < (global4[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_1.x, 99086u, 51711u, var_1.x)), min(arg_0.c.a, arg_0.c.a)), ~22725u), 6u)] << ((countOneBits(countOneBits(arg_0.d)) << (~_wgslsmith_mult_u32(4294967295u, 1u) % 32u)) % 32u));
    let var_3 = Struct_2(~(~(arg_0.c.a ^ select(arg_0.c.a, arg_0.c.a, global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.b * 976f) + -1207f) - 1000f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.b, 179f) * _wgslsmith_f_op_f32(arg_0.a * -671f)), -435f, false))), arg_0.c.c);
    global1 = array<vec3<f32>, 29>();
    return -select(arg_0.c.c, -vec2<i32>(~(-18044i), 13770i), false);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: vec2<f32>) -> u32 {
    var var_0 = arg_3.x;
    var var_1 = func_4(Struct_3(_wgslsmith_f_op_f32(-arg_3.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, arg_2.x, u_input.c.x, arg_2.x), ~vec4<u32>(29767u, arg_2.x, arg_2.x, u_input.c.x)), Struct_2(vec4<u32>(47196u, ~0u, _wgslsmith_mod_u32(1u, u_input.c.x), func_3(Struct_2(vec4<u32>(0u, 35044u, 38539u, u_input.b), -168f, vec2<i32>(global4[_wgslsmith_index_u32(0u, 6u)], global4[_wgslsmith_index_u32(1u, 6u)])), global3[_wgslsmith_index_u32(101722u, 18u)], vec4<u32>(arg_2.x, arg_2.x, u_input.b, arg_2.x))), _wgslsmith_f_op_f32(ceil(arg_3.x)), vec2<i32>(-2147483647i, global4[_wgslsmith_index_u32(arg_2.x, 6u)]) >> (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))), ~arg_2.x));
    global3 = array<vec3<bool>, 18>();
    let var_2 = (global0.x | true) && (38209u > max(abs(firstTrailingBit(arg_2.x)), ~17024u));
    let var_3 = global4[_wgslsmith_index_u32(abs(firstLeadingBit(1u)), 6u)];
    return ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, arg_2.x & u_input.b, _wgslsmith_clamp_u32(arg_2.x, 12983u, 0u), ~0u), ~select(vec4<u32>(4294967295u, u_input.a, arg_2.x, arg_2.x), vec4<u32>(arg_2.x, arg_2.x, u_input.c.x, arg_2.x), var_2)), min(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 41709u, arg_2.x, 33004u), vec4<u32>(4294967295u, 0u, 0u, arg_2.x)), vec4<u32>(1u, 40525u, arg_2.x, arg_2.x) ^ firstTrailingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, 22501u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 18>();
    let var_0 = global0.zx;
    let var_1 = Struct_2(vec4<u32>(1u, ~(~(30367u << (u_input.a % 32u))), 46722u, _wgslsmith_clamp_u32(abs(u_input.a), u_input.b, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), ~20963u))), -1000f, -(func_1(true, abs(u_input.c.x)) ^ ~(~vec2<i32>(-33198i, global4[_wgslsmith_index_u32(48774u, 6u)]))));
    let var_2 = var_1;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-578f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1788f), -560f, true)))) * _wgslsmith_div_f32(385f, _wgslsmith_f_op_f32(-var_2.b))), select(1u, var_2.a.x, all(select(!global3[_wgslsmith_index_u32(16755u, 18u)], !vec3<bool>(true, var_0.x, var_0.x), global0.x))), Struct_2(var_1.a, -1108f, var_1.c), ~28188u);
    global0 = select(select(vec3<bool>(global0.x, global0.x, !(var_3.a <= 440f)), vec3<bool>(var_0.x, true == any(global3[_wgslsmith_index_u32(0u, 18u)]), var_0.x), !select(!global3[_wgslsmith_index_u32(1u, 18u)], vec3<bool>(true, global0.x, false), var_2.b < var_2.b)), !(!vec3<bool>(global0.x, !var_0.x, global0.x)), !all(vec2<bool>(var_0.x, false)));
    let var_4 = var_2.c.x;
    let var_5 = Struct_2(~vec4<u32>(func_2(global3[_wgslsmith_index_u32(15221u, 18u)], vec2<bool>(true, true), var_1.a.wwy, vec2<f32>(var_1.b, var_2.b)) << ((var_1.a.x | var_2.a.x) % 32u), func_3(var_2, !global3[_wgslsmith_index_u32(u_input.b, 18u)], vec4<u32>(4294967295u, u_input.c.x, 19394u, 0u) | var_2.a), u_input.b, 4294967295u), var_3.c.b, var_3.c.c);
    global1 = array<vec3<f32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(~var_1.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(var_3.c.b, var_2.b)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -614f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, -1350f, var_5.b) + global1[_wgslsmith_index_u32(var_1.a.x, 29u)]))) - vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b))), var_1.b, -459f)), _wgslsmith_mult_i32(21747i, _wgslsmith_add_i32(var_2.c.x & 19780i, i32(-1i) * -15965i)) << (select(~(~var_5.a.x), var_2.a.x, var_0.x) % 32u));
}

