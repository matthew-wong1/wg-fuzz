struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: array<bool, 12> = array<bool, 12>(true, false, true, true, true, true, false, false, false, false, false, false);

var<private> global2: array<vec3<u32>, 12>;

var<private> global3: array<i32, 23> = array<i32, 23>(29620i, 11436i, 0i, -1i, i32(-2147483648), -32250i, -38584i, 2147483647i, -63774i, -11017i, i32(-2147483648), i32(-2147483648), 32304i, 0i, -1i, -1i, i32(-2147483648), -1i, 51292i, -9425i, 0i, i32(-2147483648), -1107i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: i32) -> i32 {
    global2 = array<vec3<u32>, 12>();
    let var_0 = countOneBits(abs((vec3<i32>(0i, arg_3, -4512i) >> (global2[_wgslsmith_index_u32(u_input.a, 12u)] % vec3<u32>(32u))) & (arg_2 | arg_2)));
    global3 = array<i32, 23>();
    global0 = array<f32, 18>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.c.x, -771f))), global0[_wgslsmith_index_u32(~69785u, 18u)]));
    return ~arg_1.e;
}

fn func_2(arg_0: vec4<u32>) -> Struct_4 {
    global2 = array<vec3<u32>, 12>();
    let var_0 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-18815i, func_3(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(arg_0.x, 18u)])), Struct_2(94591u, vec2<bool>(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)]), vec2<f32>(-548f, -2416f), vec2<u32>(11519u, 43994u), 24018i), vec3<i32>(1i, u_input.b, 17598i), i32(-1i) * -13782i), _wgslsmith_dot_vec3_i32(vec3<i32>(-47863i, global3[_wgslsmith_index_u32(103229u, 23u)], 2147483647i), vec3<i32>(-26012i, global3[_wgslsmith_index_u32(12472u, 23u)], 64368i)) >> (select(arg_0.x, 16158u, false) % 32u), -30140i & global3[_wgslsmith_index_u32(1347u, 23u)]), select(vec4<i32>(_wgslsmith_mult_i32(u_input.b, 1i), 17477i, u_input.c, u_input.c), ~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -2147483647i, u_input.b, -2147483647i), vec4<i32>(global3[_wgslsmith_index_u32(0u, 23u)], u_input.b, 16280i, global3[_wgslsmith_index_u32(u_input.a, 23u)])), global1[_wgslsmith_index_u32(~(~102890u), 12u)]), select(vec4<i32>(-u_input.c, i32(-1i) * -2147483647i, 2147483647i, 1i), abs(-vec4<i32>(-22560i, -26238i, u_input.c, global3[_wgslsmith_index_u32(31438u, 23u)])), any(vec2<bool>(true, true))));
    global1 = array<bool, 12>();
    global0 = array<f32, 18>();
    global3 = array<i32, 23>();
    return Struct_4(36350i, !(!(!all(vec2<bool>(global1[_wgslsmith_index_u32(0u, 12u)], true)))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    global2 = array<vec3<u32>, 12>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(193f * global0[_wgslsmith_index_u32(7575u, 18u)]))) - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_2.d.x, 18u)], -988f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(8885u, 18u)], arg_2.c.x)), 236f, 25866u == arg_3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(8859u, 18u)])) * -656f)))));
    var var_1 = func_2(_wgslsmith_clamp_vec4_u32(abs(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_1, 21392u, 2315u), vec4<u32>(arg_1, 1u, 0u, 0u))), vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(arg_1), arg_1), 0u, arg_1 | 1u, ~_wgslsmith_sub_u32(1u, 0u)), firstTrailingBit(vec4<u32>(~4294967295u, arg_3.d.x, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1950u, 17107u, 1u), vec4<u32>(0u, arg_3.a, 0u, 4294967295u))))));
    var var_2 = -694f;
    let var_3 = ~(~(u_input.a << (4294967295u % 32u)));
    return firstLeadingBit(u_input.a ^ 49678u);
}

fn func_4(arg_0: u32, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = func_2(~vec4<u32>(u_input.a, abs(u_input.a) | 11297u, ~43999u, ~1u));
    var var_1 = select(!vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 12u)], true, 0i <= var_0.a, any(select(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 12u)], true, false), vec4<bool>(var_0.b, global1[_wgslsmith_index_u32(arg_0, 12u)], true, true), var_0.b))), !(!vec4<bool>(2147483647i != global3[_wgslsmith_index_u32(arg_0, 23u)], u_input.a >= 15005u, false, any(vec2<bool>(global1[_wgslsmith_index_u32(0u, 12u)], var_0.b)))), select(!vec4<bool>(!var_0.b, var_0.b, var_0.b, var_0.b), select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(16809u, 12u)], false, true), !vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], var_0.b), var_0.b), select(select(vec4<bool>(var_0.b, false, var_0.b, var_0.b), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 12u)], var_0.b, false), global1[_wgslsmith_index_u32(1u, 12u)]), vec4<bool>(false, var_0.b, true, false), vec4<bool>(false, false, var_0.b, global1[_wgslsmith_index_u32(arg_0, 12u)])), !(!vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 12u)], var_0.b, var_0.b, var_0.b))), vec4<bool>(~u_input.a <= 4294967295u, var_0.b, ~var_0.a < 16715i, global1[_wgslsmith_index_u32(arg_0, 12u)])));
    global0 = array<f32, 18>();
    var var_2 = vec2<i32>(min(656i, u_input.c & var_0.a), ~(-var_0.a));
    let var_3 = Struct_1(~vec2<u32>(abs(u_input.a), ~0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(609f, global0[_wgslsmith_index_u32(4294967295u, 18u)])) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0, 18u)])), global0[_wgslsmith_index_u32(~4294967295u, 18u)])));
    return Struct_2(0u, vec2<bool>(var_0.b, true), _wgslsmith_f_op_vec2_f32(-arg_1.yx), var_3.a >> (~vec2<u32>(~u_input.a, arg_0 ^ arg_0) % vec2<u32>(32u)), -_wgslsmith_div_i32(-(~var_2.x), firstLeadingBit(-16289i)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 23>();
    let var_0 = func_4(u_input.a, vec3<f32>(-232f, global0[_wgslsmith_index_u32(~select(func_1(global1[_wgslsmith_index_u32(u_input.a, 12u)], u_input.a, Struct_2(0u, vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 12u)], true), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)]), vec2<u32>(u_input.a, 51488u), 64739i), Struct_2(27244u, vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 12u)]), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], -1649f), vec2<u32>(u_input.a, u_input.a), u_input.b)), 0u, !global1[_wgslsmith_index_u32(1u, 12u)]), 18u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a, 18u)] + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-557f, global0[_wgslsmith_index_u32(u_input.a, 18u)])), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.a, 18u)]))))));
    let var_1 = func_2(abs(~max(select(vec4<u32>(1u, u_input.a, u_input.a, var_0.d.x), vec4<u32>(4294967295u, var_0.d.x, 0u, 29579u), var_0.b.x), select(vec4<u32>(59851u, var_0.d.x, 1u, var_0.a), vec4<u32>(var_0.d.x, 1u, 593u, 77772u), vec4<bool>(var_0.b.x, false, true, global1[_wgslsmith_index_u32(var_0.a, 12u)]))))).a;
    global0 = array<f32, 18>();
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 18u)], -198f, -231f, var_0.c.x) * vec4<f32>(1000f, 1173f, var_0.c.x, 360f)) - vec4<f32>(195f, var_0.c.x, 459f, var_0.c.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1129f, var_0.c.x, -306f, global0[_wgslsmith_index_u32(0u, 18u)]), vec4<f32>(var_0.c.x, global0[_wgslsmith_index_u32(115147u, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(0u, 18u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -551f, var_0.c.x, 652f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(142f, var_0.c.x, -1350f, global0[_wgslsmith_index_u32(24850u, 18u)])))), global1[_wgslsmith_index_u32(~select(reverseBits(var_0.a), var_0.d.x, any(vec3<bool>(global1[_wgslsmith_index_u32(var_0.d.x, 12u)], false, var_0.b.x))), 12u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_0.e ^ var_0.e), firstTrailingBit(~vec2<i32>(~(-1i), countOneBits(u_input.b))), 9757u, 783f);
}

