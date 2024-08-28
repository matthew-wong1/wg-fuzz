struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: Struct_3,
    d: vec4<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: u32,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(true, false, true, true);

var<private> global1: array<Struct_3, 3>;

var<private> global2: array<f32, 22> = array<f32, 22>(1380f, -803f, 677f, 309f, 1074f, -1306f, -989f, -1000f, 2049f, 475f, 2110f, -1883f, -2630f, 265f, 185f, -556f, 537f, 1273f, -933f, 654f, -649f, -386f);

var<private> global3: array<f32, 7> = array<f32, 7>(-1000f, 1235f, -1806f, -359f, -617f, 146f, -844f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 4u)];
    global2 = array<f32, 22>();
    var var_1 = Struct_1(~abs(firstTrailingBit(vec2<u32>(0u, u_input.d.x))));
    global3 = array<f32, 7>();
    let var_2 = var_1.a;
    return !global0[_wgslsmith_index_u32(var_2.x, 4u)] || any(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], true, false), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(var_2.x, 4u)]), false)));
}

fn func_2() -> Struct_1 {
    global3 = array<f32, 7>();
    let var_0 = Struct_5(select(select(vec2<bool>(true, func_3()), select(vec2<bool>(global0[_wgslsmith_index_u32(20130u, 4u)], false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(7074u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)]), global0[_wgslsmith_index_u32(u_input.b.x, 4u)])), !(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(u_input.d.x, 4u)]))), vec2<bool>(-1000f != global3[_wgslsmith_index_u32(u_input.d.x << (u_input.d.x % 32u), 7u)], false), false), !(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(u_input.d.x, 4u)]), global0[_wgslsmith_index_u32(u_input.d.x, 4u)]), any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], true, true)))), ~_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 0u) >> (~u_input.d.x % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 36300u, 67938u), vec3<u32>(1u, u_input.d.x, u_input.d.x))), Struct_4(-abs(u_input.a) << (_wgslsmith_mod_u32(~u_input.b.x, u_input.d.x) % 32u), select(~min(u_input.b.yzy, vec3<u32>(u_input.d.x, u_input.b.x, 87702u)), ~countOneBits(vec3<u32>(u_input.d.x, u_input.b.x, u_input.d.x)), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 4u)], false, global0[_wgslsmith_index_u32(4294967295u, 4u)])), Struct_3(abs(u_input.d.x), vec4<bool>(global0[_wgslsmith_index_u32(59354u, 4u)] == true, 1i == u_input.a, true, !global0[_wgslsmith_index_u32(2246u, 4u)]), u_input.b.x), vec4<u32>(113012u, _wgslsmith_mult_u32(max(0u, 1u), abs(u_input.b.x)), 3022u, _wgslsmith_add_u32(~26984u, 18740u))));
    var var_1 = ~_wgslsmith_mult_u32(~(~23098u) | (~var_0.d.d.x | var_0.c), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(u_input.b.x, 89537u))));
    global0 = array<bool, 4>();
    var var_2 = var_0.d.c;
    return Struct_1(var_0.d.d.xz);
}

fn func_1(arg_0: vec3<u32>) -> Struct_4 {
    var var_0 = Struct_2(func_2());
    var var_1 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~(~max(arg_0.x, 1u) << ((~49049u | _wgslsmith_div_u32(var_0.a.a.x, 0u)) % 32u)), 7u)]);
    var var_2 = Struct_4(-_wgslsmith_div_i32(~2147483647i, max(_wgslsmith_mod_i32(u_input.c.x, u_input.c.x), u_input.c.x)), vec3<u32>(~10308u, _wgslsmith_sub_u32(firstTrailingBit(0u) | func_2().a.x, arg_0.x), var_0.a.a.x), global1[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec3_u32(u_input.b.xzy, vec3<u32>(arg_0.x, u_input.d.x, var_0.a.a.x)))), 3u)], vec4<u32>(countOneBits(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.x, u_input.d.x, var_0.a.a.x), vec4<u32>(0u, arg_0.x, u_input.b.x, 1u)))), arg_0.x, 34459u, min(~_wgslsmith_add_u32(6297u, var_0.a.a.x), var_0.a.a.x)));
    var var_3 = Struct_4(-_wgslsmith_mult_i32(u_input.a, u_input.a), ~_wgslsmith_mod_vec3_u32(arg_0, ~(~var_2.b)), Struct_3(max(var_0.a.a.x, 4294967295u), select(select(var_2.c.b, var_2.c.b, false), var_2.c.b, select(select(var_2.c.b, var_2.c.b, global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), var_2.c.b, -1000f != global2[_wgslsmith_index_u32(u_input.d.x, 22u)])), ~6826u), u_input.b);
    global0 = array<bool, 4>();
    return Struct_4(countOneBits(var_2.a), ~vec3<u32>(var_3.d.x, 0u, ~var_2.c.c) | var_3.b, Struct_3(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_3.c.c, 52590u, 63223u), var_3.d), var_2.d), var_2.c.b, var_0.a.a.x), vec4<u32>(~(~(~95349u)), min(countOneBits(var_0.a.a.x), 39531u), 0u, var_0.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 4>();
    var var_0 = func_1(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b.wwx, vec3<u32>(u_input.d.x, u_input.d.x, u_input.b.x)), ~firstLeadingBit(u_input.b.xxw)) & ~(~u_input.b.zxw));
    var var_1 = Struct_5(func_1(~(~(~vec3<u32>(var_0.d.x, 1u, var_0.c.c)))).c.b.yy, var_0.c.b.yx, u_input.b.x, func_1(vec3<u32>(4294967295u, _wgslsmith_sub_u32(func_2().a.x, var_0.d.x), 4294967295u)));
    global0 = array<bool, 4>();
    let var_2 = func_2();
    global1 = array<Struct_3, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, vec2<i32>(~(-18924i), var_0.a));
}

