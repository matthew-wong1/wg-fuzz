struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(1u, 4294967295u, 22347u, 1u), vec4<u32>(4294967295u, 53910u, 4294967295u, 1u), vec4<u32>(4294967295u, 67692u, 27877u, 0u), vec4<u32>(27868u, 48028u, 1u, 3934u), vec4<u32>(0u, 1u, 4294967295u, 87230u), vec4<u32>(48118u, 0u, 64575u, 0u));

var<private> global1: array<bool, 20> = array<bool, 20>(true, false, true, true, false, false, true, true, false, true, true, true, true, true, false, true, false, false, true, true);

var<private> global2: Struct_1 = Struct_1(-1000f, vec2<u32>(1u, 0u), vec2<f32>(-1141f, 264f), 1u);

var<private> global3: array<vec2<f32>, 20>;

var<private> global4: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(480f, vec2<u32>(43284u, 0u), vec2<f32>(-891f, -111f), 4294967295u), Struct_1(-320f, vec2<u32>(0u, 4294967295u), vec2<f32>(-1180f, 636f), 34045u), Struct_1(-300f, vec2<u32>(74086u, 35066u), vec2<f32>(874f, 575f), 111801u), Struct_1(-792f, vec2<u32>(9059u, 1u), vec2<f32>(-359f, -648f), 1u), Struct_1(-681f, vec2<u32>(0u, 65541u), vec2<f32>(-964f, -473f), 55398u), Struct_1(243f, vec2<u32>(29283u, 1u), vec2<f32>(-856f, 118f), 0u), Struct_1(608f, vec2<u32>(0u, 56465u), vec2<f32>(1602f, 136f), 17401u), Struct_1(1106f, vec2<u32>(8923u, 0u), vec2<f32>(-831f, -369f), 0u), Struct_1(-810f, vec2<u32>(56487u, 27377u), vec2<f32>(-134f, 1016f), 1u), Struct_1(501f, vec2<u32>(46762u, 0u), vec2<f32>(-744f, -480f), 0u), Struct_1(2158f, vec2<u32>(5909u, 1u), vec2<f32>(860f, -1707f), 80821u), Struct_1(539f, vec2<u32>(0u, 3367u), vec2<f32>(-524f, 2691f), 30756u), Struct_1(1023f, vec2<u32>(1u, 0u), vec2<f32>(1029f, -653f), 23218u), Struct_1(-1000f, vec2<u32>(0u, 33424u), vec2<f32>(-575f, -542f), 4294967295u), Struct_1(-151f, vec2<u32>(0u, 4294967295u), vec2<f32>(-414f, -1287f), 80850u), Struct_1(1940f, vec2<u32>(1u, 34962u), vec2<f32>(-976f, -119f), 0u), Struct_1(-1000f, vec2<u32>(4294967295u, 60656u), vec2<f32>(-1906f, -896f), 76000u), Struct_1(-744f, vec2<u32>(27542u, 79547u), vec2<f32>(-323f, 486f), 4294967295u), Struct_1(-984f, vec2<u32>(0u, 69037u), vec2<f32>(-739f, -944f), 0u), Struct_1(-1080f, vec2<u32>(0u, 0u), vec2<f32>(280f, 694f), 4294967295u), Struct_1(1000f, vec2<u32>(24643u, 0u), vec2<f32>(-1256f, -1097f), 71825u), Struct_1(1280f, vec2<u32>(82782u, 4294967295u), vec2<f32>(-1008f, 492f), 1u), Struct_1(1525f, vec2<u32>(6376u, 51618u), vec2<f32>(799f, -653f), 37586u), Struct_1(282f, vec2<u32>(4294967295u, 78872u), vec2<f32>(-151f, 770f), 1u), Struct_1(1194f, vec2<u32>(4294967295u, 30466u), vec2<f32>(546f, -792f), 12029u), Struct_1(1052f, vec2<u32>(15309u, 54542u), vec2<f32>(319f, -1155f), 4294967295u), Struct_1(625f, vec2<u32>(104141u, 4294967295u), vec2<f32>(-762f, 232f), 1u), Struct_1(874f, vec2<u32>(0u, 60465u), vec2<f32>(253f, -664f), 30913u), Struct_1(-996f, vec2<u32>(1u, 73406u), vec2<f32>(-205f, 382f), 1u), Struct_1(2170f, vec2<u32>(4294967295u, 62390u), vec2<f32>(674f, 397f), 21466u), Struct_1(-708f, vec2<u32>(1u, 24849u), vec2<f32>(619f, -326f), 0u), Struct_1(104f, vec2<u32>(0u, 0u), vec2<f32>(543f, 668f), 13928u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>) -> f32 {
    global3 = array<vec2<f32>, 20>();
    var var_0 = arg_1;
    let var_1 = u_input.b.x;
    var var_2 = var_0.d;
    global3 = array<vec2<f32>, 20>();
    return global2.a;
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    var var_0 = ~(~(~global2.d));
    global4 = array<Struct_1, 32>();
    global4 = array<Struct_1, 32>();
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~select(vec3<i32>(28334i, 0i, 24580i), vec3<i32>(-17180i, 8660i, -7981i), false), -vec3<i32>(-49709i, 20752i, 66448i)) ^ -1i, 1i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, -947f)) + _wgslsmith_f_op_f32(arg_0.x * global2.a)))) - _wgslsmith_f_op_f32(func_2(Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, global2.c.x, arg_0.x))), global1[_wgslsmith_index_u32(u_input.a.x | 18518u, 20u)], ~u_input.a.x, Struct_1(1824f, vec2<u32>(29083u, 48572u), global2.c, u_input.a.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -17619i), vec2<i32>(-32526i, 1i), vec2<i32>(0i, 1i))), Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-113f, -1000f, 545f))), global1[_wgslsmith_index_u32(7827u, 20u)], _wgslsmith_add_u32(48210u, 81069u), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.b.x, u_input.a.x), 32u)], abs(vec2<i32>(2147483647i, 41953i))), vec4<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(global2.d, 20u)], true)), true, !global1[_wgslsmith_index_u32(u_input.b.x, 20u)], global1[_wgslsmith_index_u32(global2.d, 20u)])))));
    return max(0u >> (~firstTrailingBit(abs(4294967295u)) % 32u), u_input.b.x | u_input.a.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: vec2<bool>) -> u32 {
    global3 = array<vec2<f32>, 20>();
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.c.x - global2.a))))), -1176f));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, global2.c.x, _wgslsmith_f_op_f32(trunc(var_1.x))) - vec3<f32>(-1783f, 1000f, -394f)))), true, countOneBits(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(global2.b.x, 1u, 4294967295u), _wgslsmith_add_u32(38221u, 0u)) ^ _wgslsmith_add_u32(var_0, min(49603u, var_0))), global4[_wgslsmith_index_u32(u_input.a.x, 32u)], reverseBits(max(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-25164i, -1i), vec2<i32>(-2147483647i, arg_0.x), vec2<i32>(-8035i, arg_0.x)), _wgslsmith_mod_vec2_i32(arg_0.zx, select(arg_0.yy, arg_0.zx, arg_2)))));
    var var_3 = arg_2.x;
    return func_3(vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(-467f - var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -612f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(vec3<f32>(458f, var_1.x, 2442f), false, 1u, var_2.d, vec2<i32>(arg_0.x, 0i)), Struct_2(vec3<f32>(-1000f, 633f, var_2.a.x), false, var_0, Struct_1(-824f, var_2.d.b, var_1, 0u), vec2<i32>(2147483647i, -1i)), vec4<bool>(arg_1, true, arg_2.x, true))) * var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1432f))), vec2<u32>(~(~func_1(vec4<i32>(0i, 2147483647i, 1897i, -1i), global1[_wgslsmith_index_u32(global2.b.x, 20u)], vec2<bool>(false, global1[_wgslsmith_index_u32(56329u, 20u)]))), 1u), vec2<f32>(584f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c.x, global2.a) + -210f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.c.x))))), u_input.a.x);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.a, _wgslsmith_f_op_f32(func_2(Struct_2(vec3<f32>(global2.c.x, global2.a, global2.c.x), global1[_wgslsmith_index_u32(1u, 20u)], 0u, Struct_1(107f, vec2<u32>(23500u, global2.b.x), vec2<f32>(global2.a, global2.c.x), 4294967295u), vec2<i32>(0i, -23105i)), Struct_2(vec3<f32>(global2.c.x, 1642f, global2.c.x), false, 0u, global4[_wgslsmith_index_u32(global2.d, 32u)], vec2<i32>(-62650i, 57111i)), vec4<bool>(global1[_wgslsmith_index_u32(0u, 20u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], false)))))))));
    global4 = array<Struct_1, 32>();
    let var_1 = global4[_wgslsmith_index_u32(1u, 32u)];
    let var_2 = ~_wgslsmith_sub_vec4_u32(abs(select(_wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(global2.b.x, 6u)]), vec4<u32>(u_input.a.x, 45777u, u_input.a.x, 1u), !vec4<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 20u)], false))), vec4<u32>(countOneBits(var_1.d), countOneBits(_wgslsmith_mult_u32(global2.d, global2.b.x)), 54715u, _wgslsmith_dot_vec3_u32(~vec3<u32>(6828u, 5720u, 1u), u_input.a.wzx | vec3<u32>(global2.b.x, 4294967295u, 4294967295u))));
    var var_3 = ~_wgslsmith_add_vec2_u32(u_input.b, ~firstTrailingBit(var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(1505i, 8489i), i32(-1i) * -1i), ~(~1i), -1i, reverseBits(1i)), ~(~vec2<i32>(_wgslsmith_add_i32(-1i, -2147483647i), -2147483647i)), _wgslsmith_f_op_vec2_f32(-var_1.c), _wgslsmith_f_op_f32(select(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + -462f))), true)));
}

