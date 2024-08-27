struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: i32;

var<private> global2: array<i32, 22>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = array<f32, 18>();
    global0 = array<f32, 18>();
    var var_0 = arg_0.c;
    var_0 = select(vec3<bool>(arg_0.d, false, var_0.x), !vec3<bool>(true, !(!arg_0.c.x), false), arg_0.a);
    global0 = array<f32, 18>();
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = !vec4<bool>(true, var_0, true, 1i <= abs(global2[_wgslsmith_index_u32(1u >> (u_input.a % 32u), 22u)]));
    let var_2 = Struct_3(var_0, !(!((i32(-1i) * -2147483647i) <= func_1(Struct_1(false, -942f, var_1.zxy, false, vec2<f32>(global0[_wgslsmith_index_u32(103418u, 18u)], global0[_wgslsmith_index_u32(25740u, 18u)]))))), !vec2<bool>(_wgslsmith_div_f32(1000f, -276f) != global0[_wgslsmith_index_u32(u_input.a, 18u)], true), -1481f);
    global0 = array<f32, 18>();
    global2 = array<i32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_vec2_i32(-vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 22u)], 2147483647i), -vec2<i32>(-1i, -22130i))));
}

