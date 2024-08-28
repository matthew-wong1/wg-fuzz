struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 14>;

var<private> global2: array<u32, 13> = array<u32, 13>(4294967295u, 12125u, 24840u, 28135u, 10362u, 1u, 0u, 0u, 1u, 57936u, 86u, 91732u, 0u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> bool {
    var var_0 = Struct_2(firstTrailingBit(~vec2<i32>(-14845i, -5039i)) & u_input.b.yz);
    let var_1 = arg_0.b;
    global0 = var_1.x;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 13>();
    let var_0 = vec3<i32>(i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_add_i32(1i, u_input.b.x), 1i), ~u_input.c.x, abs(-45907i));
    let var_1 = Struct_2(vec2<i32>(~abs(var_0.x << (u_input.d.x % 32u)), 29845i));
    global0 = all(!select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(all(vec2<bool>(false, true)), true, select(false, false, true)), vec3<bool>(true, func_1(Struct_1(var_0.x, vec4<bool>(true, false, true, true), global2[_wgslsmith_index_u32(u_input.d.x, 13u)]), vec2<bool>(false, false)), true)));
    let var_2 = Struct_2(~var_0.zz);
    global1 = array<Struct_2, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(489f);
}

