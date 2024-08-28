struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: array<vec4<bool>, 21>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    var var_0 = select(vec3<u32>(0u, 1u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32((u_input.c.x >> (u_input.c.x % 32u)) | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57205u, 10u)], 10u)], 10u)], 1u)), ~(~countOneBits(u_input.a)), all(!(!select(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], vec4<bool>(true, true, true, false)))));
    var var_1 = Struct_1(vec3<bool>(select(abs(u_input.b.x) <= u_input.b.x, true, false), all(!global1[_wgslsmith_index_u32(u_input.c.x, 21u)]), true));
    global0 = array<u32, 10>();
    let var_2 = Struct_1(var_1.a);
    global0 = array<u32, 10>();
    return _wgslsmith_add_i32(361i, -reverseBits(-13632i) | _wgslsmith_dot_vec2_i32(u_input.b.yz, -select(vec2<i32>(u_input.b.x, -1i), vec2<i32>(22590i, 2147483647i), var_2.a.zx)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -127f);
    global0 = array<u32, 10>();
    var var_1 = u_input.b;
    var var_2 = Struct_1(vec3<bool>(false || all(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), true)), arg_0, !(!arg_0)));
    var_1 = vec3<i32>(32349i, u_input.b.x, func_3());
    return Struct_1(var_2.a);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = u_input.b.x;
    let var_1 = ~u_input.b.x;
    var var_2 = arg_1;
    global1 = array<vec4<bool>, 21>();
    var var_3 = 2875i;
    return func_2(false);
}

fn func_1(arg_0: u32, arg_1: f32) -> vec3<u32> {
    var var_0 = global1[_wgslsmith_index_u32(~(~arg_0), 21u)];
    global0 = array<u32, 10>();
    let var_1 = func_4(var_0.zzy, func_2(var_0.x & select(true, false, var_0.x)), firstLeadingBit(~(~1u)), _wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.a.x, arg_0, 7901u, arg_0) | (vec4<u32>(16515u, arg_0, 37883u, 1u) << (vec4<u32>(0u, arg_0, 29819u, u_input.a.x) % vec4<u32>(32u))), ~(~vec4<u32>(1u, arg_0, 103467u, arg_0)), !(!global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 21u)])), vec4<u32>(24364u, firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, arg_0), vec3<u32>(arg_0, u_input.c.x, global0[_wgslsmith_index_u32(arg_0, 10u)])), 10u)]), arg_0, u_input.a.x)));
    global0 = array<u32, 10>();
    var var_2 = true;
    return vec3<u32>(0u, global0[_wgslsmith_index_u32(firstTrailingBit(~abs(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22092u, 10u)], 10u)]))), 10u)], global0[_wgslsmith_index_u32(abs(abs(~_wgslsmith_mult_u32(0u, 4294967295u))), 10u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = Struct_1(!select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, false)), true, true)));
    global0 = array<u32, 10>();
    let var_2 = ~49921u;
    global0 = array<u32, 10>();
    var_0 = firstTrailingBit(_wgslsmith_sub_vec3_u32(~(u_input.a & u_input.a) ^ (firstLeadingBit(vec3<u32>(0u, 51502u, 5063u)) >> (u_input.a % vec3<u32>(32u))), countOneBits(_wgslsmith_mod_vec3_u32(func_1(var_2, 936f), ~u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-323f, vec2<u32>(var_2, 4294967295u));
}

