struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<bool, 30>;

var<private> global2: vec4<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> Struct_1 {
    return global0[_wgslsmith_index_u32(~(1u << (firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.yy)) % 32u)) >> (~_wgslsmith_dot_vec2_u32(u_input.a.yz, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 1u), u_input.a.xy, vec2<u32>(u_input.c, u_input.c) | u_input.a.xy)) % 32u), 8u)];
}

fn func_3() -> bool {
    let var_0 = vec3<bool>(true, global2.x, global2.x);
    global1 = array<bool, 30>();
    global1 = array<bool, 30>();
    let var_1 = u_input.a.yy ^ vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, u_input.e), ~u_input.a.x), 4294967295u);
    var var_2 = func_1();
    return all(global2.wz);
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<i32> {
    global2 = !vec4<bool>(all(!arg_2.d.zx), true, global2.x, func_3());
    global2 = select(!(!select(vec4<bool>(arg_2.d.x, global1[_wgslsmith_index_u32(32349u, 30u)], global1[_wgslsmith_index_u32(u_input.a.x, 30u)], true), !arg_2.c, !vec4<bool>(false, global2.x, global2.x, arg_2.d.x))), vec4<bool>(true, true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c << (3769u % 32u), u_input.a.x), 30u)], global2.x), arg_2.c);
    global2 = !arg_2.c;
    var var_0 = ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, abs(37569u), ~(~8149u)), u_input.a);
    global2 = select(select(func_1().c, arg_2.c, arg_2.c), vec4<bool>(true, true, any(select(arg_2.c, select(arg_2.c, vec4<bool>(false, global1[_wgslsmith_index_u32(40935u, 30u)], false, false), true), !arg_2.c)), all(func_1().c)), select(!arg_2.c, arg_2.c, true));
    return countOneBits(countOneBits(vec3<i32>(func_1().b, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.d.x, arg_0, u_input.b.x)), -u_input.b), ~(arg_0 ^ arg_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 8>();
    global2 = !vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(reverseBits(u_input.e), 0u), ~16077u), 30u)], true, any(vec4<bool>(false, all(vec2<bool>(global2.x, global1[_wgslsmith_index_u32(27053u, 30u)])), global2.x, true)), true);
    var var_0 = true;
    let var_1 = func_1();
    global0 = array<Struct_1, 8>();
    var var_2 = func_2(30390i, abs(vec3<i32>(~u_input.b.x, firstLeadingBit(var_1.b), u_input.d.x)), func_1()) ^ _wgslsmith_div_vec3_i32(u_input.b, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b);
}

