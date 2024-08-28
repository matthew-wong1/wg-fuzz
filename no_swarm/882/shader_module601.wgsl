struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> i32 {
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    let var_0 = Struct_3(~(-2147483647i), ~35866u, arg_0.a);
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    return 42921i;
}

fn func_3() -> u32 {
    var var_0 = 1u;
    var_0 = ~(~u_input.a.x);
    var var_1 = Struct_3(39880i, u_input.b.x << (~u_input.c % 32u), !any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true))));
    return 4294967295u;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_4, arg_3: Struct_3) -> u32 {
    let var_0 = arg_2;
    var var_1 = vec2<f32>(-1676f, 933f);
    var var_2 = select(arg_3.c, all(vec4<bool>(arg_3.c, true, !arg_3.c, true)), all(select(select(vec2<bool>(arg_3.c, false), vec2<bool>(arg_3.c, arg_3.c), vec2<bool>(arg_3.c, arg_3.c)), select(vec2<bool>(arg_3.c, arg_3.c), vec2<bool>(arg_3.c, arg_3.c), arg_3.c), arg_1 > arg_2.c))) && true;
    var var_3 = reverseBits(~(~(~vec4<u32>(1u, u_input.b.x, 4294967295u, arg_3.b))));
    var var_4 = vec4<i32>(((arg_1 ^ ~1i) << (~_wgslsmith_mult_u32(arg_3.b, arg_0) % 32u)) << (var_0.a % 32u), ~min(_wgslsmith_mult_i32(~(-33085i), ~global0[_wgslsmith_index_u32(var_3.x, 32u)]), ~var_0.c), -global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~0u, func_3()), 32u)], u_input.e);
    return 142562u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    let var_0 = any(!select(vec2<bool>(true, true), vec2<bool>(false, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~min(select(-1639i, global0[_wgslsmith_index_u32(31895u, 32u)], var_0), func_1(Struct_2(var_0, Struct_1(58577i), Struct_1(global0[_wgslsmith_index_u32(1493u, 32u)]), Struct_1(u_input.e)), Struct_1(u_input.d), vec3<f32>(-515f, 616f, -1214f), 0u))), u_input.b.x ^ _wgslsmith_add_u32(u_input.b.x, ~func_2(0u, u_input.e, Struct_4(8627u, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 32u)]), Struct_3(-9520i, u_input.c, var_0))));
}

