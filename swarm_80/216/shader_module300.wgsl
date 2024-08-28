struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

var<private> global1: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(0u, 0u, 61154u), vec3<u32>(11808u, 33049u, 4294967295u), vec3<u32>(63403u, 37678u, 1u), vec3<u32>(38135u, 13488u, 1u), vec3<u32>(46197u, 4294967295u, 0u));

var<private> global2: Struct_3;

var<private> global3: array<u32, 22>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_2) -> i32 {
    var var_0 = select(!vec3<bool>((true & arg_1.b) || any(vec3<bool>(true, arg_1.b, arg_1.b)), true, all(vec3<bool>(true, global2.a.x, false))), !(!global2.a.wxy), true);
    global1 = array<vec3<u32>, 5>();
    global3 = array<u32, 22>();
    let var_1 = arg_1;
    global3 = array<u32, 22>();
    return 44356i;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, -1437f, global2.a.x))) * _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 22u)], 22u)], 22u)], 15u)]))), 735f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_1, vec3<f32>(arg_1.x, 1336f, global0[_wgslsmith_index_u32(0u & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)], 22u)], 15u)]))))));
    let var_1 = -1i;
    let var_2 = _wgslsmith_div_i32(~abs(abs(arg_0.a.x)), _wgslsmith_mod_i32(~arg_0.a.x, -2147483647i)) >= var_1;
    let var_3 = ~abs(~global3[_wgslsmith_index_u32(~4294967295u, 22u)]) < min(countOneBits(max(reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24757u, 22u)], 22u)], 22u)]), 1u)), 0u);
    var var_4 = Struct_1(~_wgslsmith_sub_u32(~0u, 31214u), !all(vec2<bool>(true, -1095f > global0[_wgslsmith_index_u32(22631u, 15u)])), _wgslsmith_f_op_f32(-446f * _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(-var_0.x))))));
    return vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(var_1, func_3(arg_0, Struct_1(1u, false, arg_1.x), vec2<f32>(-738f, 971f), arg_0)), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(var_4.a, 22u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_4.a, 22u)], 22u)], 7439u, global3[_wgslsmith_index_u32(0u, 22u)]), vec4<u32>(global3[_wgslsmith_index_u32(63732u, 22u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_4.a, 22u)], 22u)], 41958u, 4294967295u)) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(arg_0.a.x, var_1, u_input.a.x, var_1)))), func_3(Struct_2(u_input.a.wxw & countOneBits(vec3<i32>(u_input.c, u_input.c, u_input.a.x))), Struct_1(25779u, var_4.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(524f))))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1086f + 234f), _wgslsmith_f_op_f32(step(907f, 1985f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_4.a, 15u)]) - var_0.x)), Struct_2(vec3<i32>(2960i, 29866i, 17982i) | select(vec3<i32>(1i, var_1, var_1), vec3<i32>(-1i, 12885i, 2147483647i), vec3<bool>(global2.a.x, false, var_4.b)))), -1i);
}

fn func_1() -> bool {
    let var_0 = Struct_2(u_input.a.wwz ^ _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), u_input.a.x, _wgslsmith_sub_i32(u_input.c, u_input.b.x)), max(-u_input.a.xxw, ~vec3<i32>(u_input.b.x, u_input.b.x, 1i))));
    let var_1 = Struct_1(1u, global2.a.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(43635u, 15u)]));
    global0 = array<f32, 15>();
    var var_2 = Struct_2(vec3<i32>(select(u_input.a.x, u_input.c, var_1.b) >> (~global3[_wgslsmith_index_u32(57863u, 22u)] % 32u), _wgslsmith_div_i32(u_input.a.x, countOneBits(13940i)), -_wgslsmith_div_i32(var_0.a.x, 16073i)) | func_2(Struct_2(-vec3<i32>(73454i, 19919i, 2147483647i)), vec3<f32>(var_1.c, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.a, 22u)], 15u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.a, 22u)], 15u)]), _wgslsmith_f_op_f32(max(459f, global0[_wgslsmith_index_u32(var_1.a, 15u)])))));
    return any(global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 15>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-370f + 841f), -713f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1231f, 1000f) - vec2<f32>(-1456f, 468f)))))));
    var var_1 = Struct_3(select(vec4<bool>(true, all(vec3<bool>(false, true, global2.a.x)), !func_1(), !any(global2.a)), !vec4<bool>(!global2.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 22u)], 22u)] < global3[_wgslsmith_index_u32(77138u, 22u)], any(vec4<bool>(false, true, global2.a.x, false)), false), vec4<bool>(global2.a.x, true, global2.a.x, !global2.a.x)));
    let var_2 = ~select(~(~(~vec2<u32>(10036u, global3[_wgslsmith_index_u32(16357u, 22u)]))), min(~vec2<u32>(13609u, 67882u), vec2<u32>(3276u, 1u) | vec2<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14425u, 22u)], 22u)], 22u)])) >> (vec2<u32>(max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4885u, 22u)], 22u)], global3[_wgslsmith_index_u32(0u, 22u)]), ~global3[_wgslsmith_index_u32(41802u, 22u)]) % vec2<u32>(32u)), any(vec3<bool>(var_1.a.x, var_1.a.x, true)));
    var var_3 = Struct_1(var_2.x, !(!var_1.a.x || !func_1()), -186f);
    var_3 = Struct_1(var_3.a, true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_f_op_f32(var_3.c * 1086f))))));
    var_3 = Struct_1(6465u, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 15u)])) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -225f)) + _wgslsmith_f_op_f32(919f + _wgslsmith_f_op_f32(-var_0.x))));
    var_3 = Struct_1(reverseBits(select(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(10794u ^ var_3.a, 22u)], reverseBits(73478u)), _wgslsmith_add_u32(~4294967295u, ~var_2.x), (true && var_1.a.x) && true)), !((var_1.a.x != func_1()) & true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -250f))));
    global2 = Struct_3(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), var_3.c, _wgslsmith_f_op_f32(-1f)), vec4<i32>(u_input.a.x, 0i, ~_wgslsmith_sub_i32(u_input.b.x, firstLeadingBit(u_input.c)), -36296i));
}

