struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(33360i, i32(-2147483648), 64556i), vec3<f32>(663f, -216f, -2005f)), Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(i32(-2147483648), -29483i, 2989i), vec3<f32>(1000f, 743f, -848f)), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(-12251i, 26981i, -273i), vec3<f32>(-326f, -211f, 1858f)), Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(0i, -8043i, -1i), vec3<f32>(588f, 1080f, -106f)), Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(0i, 1i, -1i), vec3<f32>(847f, 1104f, 1310f)));

var<private> global1: vec2<u32>;

var<private> global2: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(29452u, 25483u, 1u), vec3<u32>(4294967295u, 6198u, 12578u), vec3<u32>(4294967295u, 84436u, 14854u), vec3<u32>(87633u, 4294967295u, 2150u), vec3<u32>(4294967295u, 15399u, 31733u), vec3<u32>(62566u, 4294967295u, 59739u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 8890u, 117309u), vec3<u32>(4294967295u, 1u, 404u), vec3<u32>(102282u, 1u, 0u));

var<private> global3: array<vec2<bool>, 4>;

var<private> global4: array<f32, 6>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>) -> vec4<f32> {
    global2 = array<vec3<u32>, 10>();
    global4 = array<f32, 6>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.x, ~4294967295u), 5u)];
    var var_1 = Struct_1(!vec4<bool>(!(!arg_1.x), arg_1.x, var_0.a.x, all(!vec2<bool>(true, var_0.a.x))), firstTrailingBit(~min(-vec3<i32>(1i, -1i, 12678i), firstLeadingBit(vec3<i32>(2147483647i, 20957i, 1i)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1859f, var_0.c.x, var_0.c.x))));
    var var_2 = select(_wgslsmith_div_vec2_i32(~vec2<i32>(12163i, u_input.b), firstLeadingBit(var_0.b.yx)), vec2<i32>(_wgslsmith_mult_i32(-9915i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.x, var_1.b.x, var_0.b.x, 1i), vec4<i32>(var_1.b.x, 43602i, var_0.b.x, 5391i)), vec4<i32>(u_input.b, -7970i, -25418i, -2147483647i) >> (u_input.c % vec4<u32>(32u)))), firstLeadingBit(var_0.b.x)), select(select(!select(vec2<bool>(true, true), vec2<bool>(true, var_1.a.x), arg_1.zz), vec2<bool>(all(vec4<bool>(false, false, arg_0.x, var_0.a.x)), false), arg_0.yx), !arg_0.zx, !arg_1.x));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(962f, -407f, 568f, var_0.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c.x, global4[_wgslsmith_index_u32(105553u, 6u)], var_0.c.x, var_0.c.x), vec4<f32>(var_1.c.x, var_1.c.x, global4[_wgslsmith_index_u32(4294967295u, 6u)], -363f), arg_0)))))));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-484f, 665f, global4[_wgslsmith_index_u32(82277u, 6u)], -410f), vec4<f32>(global4[_wgslsmith_index_u32(global1.x, 6u)], 1647f, -682f, global4[_wgslsmith_index_u32(global1.x, 6u)]))) + vec4<f32>(global4[_wgslsmith_index_u32(global1.x, 6u)], global4[_wgslsmith_index_u32(global1.x, 6u)], global4[_wgslsmith_index_u32(29904u, 6u)], global4[_wgslsmith_index_u32(33767u, 6u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4[_wgslsmith_index_u32(47939u, 6u)], -1111f, global4[_wgslsmith_index_u32(0u, 6u)], global4[_wgslsmith_index_u32(global1.x, 6u)]))), _wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(~global1.x, 6u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-404f * 1032f))), global4[_wgslsmith_index_u32(min(global1.x | 1u, countOneBits(4294967295u)), 6u)], _wgslsmith_f_op_f32(716f * _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(4294967295u, 6u)], 1095f, true)))))));
    let var_1 = global0[_wgslsmith_index_u32(47213u, 5u)];
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_1.c.x) + _wgslsmith_f_op_f32(ceil(-1000f))) * 506f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(4294967295u, 6u)], _wgslsmith_f_op_f32(round(var_1.c.x))))), var_1.c.x), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(exp2(var_1.c.x)))) - var_0.x))), _wgslsmith_div_f32(1209f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_1.c.x)));
    let var_3 = global0[_wgslsmith_index_u32(1u, 5u)];
    global2 = array<vec3<u32>, 10>();
    return abs(firstLeadingBit(20999u));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    let var_0 = Struct_1(vec4<bool>(_wgslsmith_dot_vec2_u32(abs(u_input.c.xz), _wgslsmith_sub_vec2_u32(u_input.c.zx, u_input.c.xx)) < u_input.c.x, arg_2.a.x, !(global4[_wgslsmith_index_u32(~global1.x, 6u)] <= _wgslsmith_div_f32(arg_2.c.x, global4[_wgslsmith_index_u32(14154u, 6u)])), true | arg_2.a.x), arg_2.b, _wgslsmith_f_op_vec3_f32(-arg_3));
    global3 = array<vec2<bool>, 4>();
    let var_1 = var_0;
    global3 = array<vec2<bool>, 4>();
    global0 = array<Struct_1, 5>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_vec2_u32(u_input.c.zw, abs(u_input.c.ww));
    var var_1 = global3[_wgslsmith_index_u32(countOneBits(~(~countOneBits(u_input.c.x))), 4u)];
    let var_2 = select(19253u, ~var_0.x << (73901u % 32u), ~(~countOneBits(u_input.b)) == -37977i);
    let var_3 = countOneBits(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global4[_wgslsmith_index_u32(var_2, 6u)], global4[_wgslsmith_index_u32(4294967295u, 6u)], 757f)))), -1431f, Struct_1(!vec4<bool>(var_1.x, var_1.x, true, true), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.a), vec3<i32>(u_input.b, -10589i, 0i)), vec3<f32>(-1718f, global4[_wgslsmith_index_u32(31482u, 6u)], global4[_wgslsmith_index_u32(1u, 6u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global4[_wgslsmith_index_u32(global1.x, 6u)], global4[_wgslsmith_index_u32(var_2, 6u)], -1378f), vec3<f32>(global4[_wgslsmith_index_u32(var_0.x, 6u)], global4[_wgslsmith_index_u32(594u, 6u)], global4[_wgslsmith_index_u32(27287u, 6u)]))))) & ~(1u & var_0.x));
    var var_4 = vec4<i32>(-1i) * -vec4<i32>(37772i, u_input.b, u_input.a, -u_input.b);
    let var_5 = ~abs(var_3 ^ ~(global1.x << (87189u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, u_input.b >> (_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(var_2, var_0.x, global1.x, var_0.x)), select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3, var_0.x, var_3, u_input.c.x), vec4<u32>(49301u, 109023u, 40424u, 5827u)), var_3 ^ 42374u, any(vec3<bool>(false, false, false)))) % 32u), 56157u);
}

