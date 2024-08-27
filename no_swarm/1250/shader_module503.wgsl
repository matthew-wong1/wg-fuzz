struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: array<f32, 22>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, true), vec3<bool>(true, false, true));

var<private> global3: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(-1i, 1i, 30821i), vec3<i32>(-19513i, 1i, -1i), vec3<i32>(-2981i, 314i, 1i), vec3<i32>(-30600i, 1i, -55931i), vec3<i32>(-1i, i32(-2147483648), -1i), vec3<i32>(-9707i, -32742i, 15673i), vec3<i32>(-31452i, i32(-2147483648), -1i), vec3<i32>(-19434i, 45678i, -1i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 22u)]));
    var var_1 = abs(31002i);
    var_0 = _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~u_input.c << (reverseBits(u_input.c) % 32u)), ~(~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.c))), 22u)]));
    global0 = array<i32, 17>();
    global2 = arg_0;
    return arg_0;
}

fn func_3() -> vec2<bool> {
    global3 = array<vec3<i32>, 8>();
    let var_0 = firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x) << (countOneBits(19014u) % 32u), 17u)], -31404i), 3839i, global0[_wgslsmith_index_u32(reverseBits(~4294967295u), 17u)]));
    let var_1 = func_1(func_1(Struct_1(vec2<bool>(global2.b.x, global2.a.x), !(!vec3<bool>(global2.b.x, true, global2.a.x)))));
    let var_2 = Struct_1(global2.a, !vec3<bool>(var_1.a.x, global2.a.x & global2.b.x, var_1.b.x));
    global0 = array<i32, 17>();
    return global2.b.xx;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = arg_1;
    let var_1 = 63663u;
    var var_2 = Struct_1(select(!(!(!vec2<bool>(var_0.b.x, true))), !func_3(), select(!global2.b.xy, func_1(func_1(arg_1)).a, func_1(Struct_1(vec2<bool>(var_0.b.x, var_0.b.x), vec3<bool>(true, false, global2.a.x))).b.x)), !select(!(!vec3<bool>(global2.a.x, var_0.a.x, false)), !arg_0.wyy, !func_1(Struct_1(vec2<bool>(true, true), vec3<bool>(false, arg_0.x, var_0.b.x))).b));
    var var_3 = Struct_1(vec2<bool>(true, var_0.a.x), var_0.b);
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(var_1, 22u)], _wgslsmith_f_op_f32(-1f), any(vec4<bool>(true, true, arg_1.a.x, false)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(27809u, 22u)] + 956f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~0u, 22u)] * _wgslsmith_f_op_f32(-1239f - global1[_wgslsmith_index_u32(17217u, 22u)]))))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.b.x, 22u)]));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(select(global2.a.x, !global2.b.x, !global2.a.x), false, global2.b.x, !(!global2.b.x));
    var var_1 = reverseBits(vec3<i32>(~u_input.a.x, 1i, func_2(var_0, func_1(Struct_1(var_0.xw, vec3<bool>(global2.a.x, var_0.x, global2.a.x))), max(global0[_wgslsmith_index_u32(u_input.e.x, 17u)], -1i)) & -2147483647i));
    var var_2 = !(!var_0.x);
    global2 = func_1(Struct_1(!vec2<bool>(var_1.x >= u_input.a.x, true), select(vec3<bool>(all(vec4<bool>(global2.b.x, var_0.x, var_0.x, false)), true, false), var_0.yyx, false)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(858f - 1270f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.c, 22u)], global1[_wgslsmith_index_u32(abs(~u_input.b.x), 22u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1536f), global1[_wgslsmith_index_u32(reverseBits(u_input.b.x), 22u)])))));
    global3 = array<vec3<i32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.e.x, var_3, _wgslsmith_add_vec3_i32(vec3<i32>(56985i >> (_wgslsmith_mod_u32(0u, u_input.e.x) % 32u), ~0i, _wgslsmith_dot_vec3_i32(-u_input.a, u_input.a)), u_input.a), -513f);
}

