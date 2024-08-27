struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

var<private> global1: u32 = 5812u;

var<private> global2: array<Struct_2, 12>;

var<private> global3: u32;

var<private> global4: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: u32) -> u32 {
    global0 = array<i32, 22>();
    var var_0 = arg_2;
    global2 = array<Struct_2, 12>();
    var var_1 = 1i;
    let var_2 = Struct_2(arg_1.a, select(_wgslsmith_add_vec4_u32(~(~vec4<u32>(0u, 1u, arg_1.a.c, arg_2.c.b.x)), arg_2.c.b), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(86119u, u_input.a, arg_2.c.a.c, 52453u)), reverseBits(~arg_2.c.b)), true));
    return arg_3;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(Struct_1(vec3<bool>(select(true, all(vec4<bool>(false, true, true, true)), true), (u_input.c.x << (0u % 32u)) == u_input.b.x, ~0u > u_input.a), vec3<i32>(1i ^ _wgslsmith_add_i32(global0[_wgslsmith_index_u32(4294967295u, 22u)], 1i), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(17985i, global0[_wgslsmith_index_u32(u_input.b.x, 22u)], -2147483647i, 1i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 22u)], 10909i, global0[_wgslsmith_index_u32(u_input.a, 22u)], global0[_wgslsmith_index_u32(0u, 22u)]))), global0[_wgslsmith_index_u32(u_input.d, 22u)]), 21396u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(290f, _wgslsmith_f_op_f32(707f + -2012f))), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1028f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -207f)))), global2[_wgslsmith_index_u32(u_input.a, 12u)]);
    let var_1 = 13801u;
    return Struct_3(var_0.c.a, 144f, Struct_2(var_0.a, vec4<u32>(var_0.c.b.x, abs(_wgslsmith_sub_u32(var_1, var_0.c.b.x)), func_3(var_0.c.a.d, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, u_input.d), 12u)], Struct_3(Struct_1(vec3<bool>(true, var_0.c.a.a.x, var_0.c.a.a.x), var_0.a.b, 3385u, 336f), 201f, Struct_2(Struct_1(var_0.a.a, var_0.a.b, u_input.d, var_0.c.a.d), vec4<u32>(var_0.c.a.c, u_input.c.x, 21983u, 52192u))), countOneBits(85681u)), 1u)));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: u32) -> vec3<bool> {
    global0 = array<i32, 22>();
    let var_0 = func_2();
    return var_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~0u;
    var var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -952f)));
    global1 = 964u >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, ~u_input.a), u_input.c.xx | ~u_input.b) % 32u);
    let var_2 = Struct_1(!func_1(_wgslsmith_f_op_f32(round(880f)), 1550f, ~(u_input.a & 36284u)), _wgslsmith_add_vec3_i32(max(-_wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], -33493i, global0[_wgslsmith_index_u32(u_input.d, 22u)]), vec3<i32>(26097i, -2147483647i, 25100i)), abs(vec3<i32>(global0[_wgslsmith_index_u32(27694u, 22u)], global0[_wgslsmith_index_u32(u_input.a, 22u)], -2147483647i))), reverseBits(-(vec3<i32>(-1i, 2147483647i, global0[_wgslsmith_index_u32(u_input.d, 22u)]) << (vec3<u32>(42098u, 1u, 0u) % vec3<u32>(32u))))), u_input.d, _wgslsmith_f_op_f32(round(1170f)));
    global0 = array<i32, 22>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1484f, 134f), vec2<f32>(var_2.d, var_2.d)))))))));
    let var_4 = _wgslsmith_f_op_f32(-var_2.d);
    global2 = array<Struct_2, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(-var_2.b.x & reverseBits(31630i), _wgslsmith_dot_vec3_i32(var_2.b, -vec3<i32>(global0[_wgslsmith_index_u32(var_2.c, 22u)], global0[_wgslsmith_index_u32(u_input.b.x, 22u)], global0[_wgslsmith_index_u32(var_2.c, 22u)])), 1i), var_2.b), firstLeadingBit(u_input.c >> (_wgslsmith_add_vec4_u32(~u_input.c, _wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(0u, var_2.c, var_2.c, 23118u))) % vec4<u32>(32u))), func_2().c.a.b.yx, vec3<f32>(1681f, var_2.d, _wgslsmith_f_op_f32(var_2.d * _wgslsmith_f_op_f32(max(106f, _wgslsmith_f_op_f32(1158f - -522f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1564f, var_3.x, 1000f, var_3.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_4, -610f, var_3.x), vec4<f32>(-337f, var_4, var_3.x, var_3.x)))))));
}

