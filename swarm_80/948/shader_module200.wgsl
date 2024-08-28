struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: i32;

var<private> global2: i32;

var<private> global3: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-1390f, 865f, 602f, 606f), vec4<f32>(-1427f, -1298f, -1314f, -321f), vec4<f32>(591f, -1000f, -1520f, 1043f), vec4<f32>(-1000f, 1631f, -1000f, 358f), vec4<f32>(-2151f, -2061f, -680f, -355f), vec4<f32>(-392f, 465f, 1639f, -1134f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec3<i32> {
    var var_0 = 2147483647i;
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(4294967295u, u_input.b, 63080u)), countOneBits(~u_input.b))), 24u)]);
    var var_2 = ~_wgslsmith_dot_vec2_i32(firstLeadingBit(max(_wgslsmith_div_vec2_i32(vec2<i32>(5344i, u_input.a), vec2<i32>(u_input.a, -2147483647i)), ~vec2<i32>(0i, u_input.a))), vec2<i32>(40421i, u_input.a));
    global3 = array<vec4<f32>, 6>();
    global0 = array<Struct_2, 24>();
    return ~(-(~select(vec3<i32>(0i, u_input.a, u_input.a), min(vec3<i32>(34719i, u_input.a, 64973i), vec3<i32>(31925i, u_input.a, 1094i)), select(vec3<bool>(var_1.a.c, true, var_1.a.d.b), vec3<bool>(var_1.a.a.b, false, false), false))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>) -> i32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global3[_wgslsmith_index_u32(u_input.b, 6u)], vec4<f32>(514f, 2761f, 1000f, -1000f))) + global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.b & 26664u), 6u)]) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1598f, -947f, -103f, -188f), global3[_wgslsmith_index_u32(21616u, 6u)])))));
    var var_1 = countOneBits(u_input.a ^ -(~u_input.a));
    var var_2 = 2147483647i;
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1.x, ~u_input.b, arg_1.x) ^ arg_1.x, 24u)];
    var var_4 = func_3() | ~_wgslsmith_mult_vec3_i32(~(vec3<i32>(u_input.a, u_input.a, 11312i) ^ vec3<i32>(-31597i, 14928i, u_input.a)), firstTrailingBit(min(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, -5448i, u_input.a))));
    return ~0i;
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_0, 37564u), 0u), 24u)];
    global1 = ~2147483647i;
    global1 = -(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, -u_input.a, -48268i), ~reverseBits(vec4<i32>(1i, 0i, u_input.a, u_input.a))) & firstLeadingBit(func_2(select(vec2<bool>(true, var_0.a.c.x), var_0.a.c, var_0.d.c.x), vec4<u32>(var_0.d.a.x, u_input.b, 11306u, u_input.b))));
    var var_1 = func_3();
    global0 = array<Struct_2, 24>();
    return Struct_3(global0[_wgslsmith_index_u32(arg_0 ^ ((4294967295u >> (_wgslsmith_sub_u32(var_0.d.a.x, 0u) % 32u)) << (var_0.d.a.x % 32u)), 24u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 24>();
    var var_0 = Struct_4(global3[_wgslsmith_index_u32(u_input.b, 6u)]);
    var var_1 = func_1(u_input.b);
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_1(var_1.a.a.a.x).a.b.x, 353f, var_1.a.b.x, _wgslsmith_div_f32(-1106f, _wgslsmith_f_op_f32(var_0.a.x * -782f)))));
    global0 = array<Struct_2, 24>();
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_1.a.d.a.x), var_1.a.d.a), 6u)] + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.x, -787f, var_1.a.b.x, 195f), var_0.a))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.a.b.x, var_0.a.x, -1376f, -375f), vec4<f32>(var_0.a.x, -356f, var_1.a.b.x, 629f))), !(!vec4<bool>(var_1.a.c, false, true, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1129f, var_1.a.b.x)))) + _wgslsmith_f_op_vec2_f32(-var_1.a.b)))), 21553i);
}

