struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(0u, 1u, 29370u, 1u, 4294967295u, 4294967295u, 59354u, 0u, 1u, 22923u, 114009u, 4294967295u, 0u, 0u, 9014u, 49420u, 0u, 1u, 29371u, 1u, 0u, 4294967295u, 4294967295u, 25100u, 1u, 1u, 4294967295u, 103724u, 87586u, 24976u);

var<private> global1: array<Struct_2, 20>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2() -> f32 {
    let var_0 = 300f;
    var var_1 = u_input.a.x;
    var var_2 = global1[_wgslsmith_index_u32(~45918u, 20u)];
    global1 = array<Struct_2, 20>();
    global1 = array<Struct_2, 20>();
    return 541f;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: i32) -> u32 {
    var var_0 = arg_1.yxw;
    let var_1 = true;
    var var_2 = Struct_1(countOneBits(abs(u_input.a.x << (1u % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(871f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1000f)), -219f)))), 1u, any(!vec4<bool>(arg_2 != 0i, false, !arg_0.x, !var_1)));
    let var_3 = ~(~(~vec2<u32>(~global0[_wgslsmith_index_u32(u_input.b.x, 30u)], var_2.c)));
    var_0 = !vec3<bool>(any(vec2<bool>(var_1, arg_1.x)) & !var_2.d, !(true || var_0.x) && true, true);
    return min(u_input.b.x, ~global0[_wgslsmith_index_u32(4294967295u, 30u)]);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2())))));
    let var_1 = Struct_1(countOneBits(func_3(vec2<bool>(true, true), vec4<bool>(true, true, true, true), _wgslsmith_mod_i32(u_input.d, -2147483647i))) | arg_0.x, var_0, (53684u & (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 30u)], 30u)] | reverseBits(0u))) ^ 4294967295u, !any(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true))));
    let var_2 = var_1.a;
    global1 = array<Struct_2, 20>();
    global1 = array<Struct_2, 20>();
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 20>();
    global1 = array<Struct_2, 20>();
    var var_0 = u_input.c.x;
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_u32(10190u, ~u_input.a.x), 1176f, u_input.b.x, false));
    var var_2 = ~vec4<u32>(0u, var_1.a.a, _wgslsmith_add_u32(1u, 21290u) | var_1.a.a, global0[_wgslsmith_index_u32(~(~min(7323u, global0[_wgslsmith_index_u32(u_input.a.x, 30u)])), 30u)]);
    var_2 = vec4<u32>(4294967295u, ~68110u, ~20439u, global0[_wgslsmith_index_u32(var_2.x, 30u)]);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.b, firstTrailingBit(vec4<i32>(-17235i ^ u_input.c.x, 0i, -u_input.d, func_1(u_input.b.yx, vec2<i32>(-1729i, u_input.c.x))) ^ max(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, 6472i, 0i, u_input.d), vec4<i32>(u_input.c.x, 1i, -2147483647i, 0i)), vec4<i32>(-1i, u_input.d, u_input.d, u_input.c.x))), ~(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b.x, var_2.x), ~0u) & ~(~var_1.a.a)));
}

