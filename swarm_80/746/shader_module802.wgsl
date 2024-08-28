struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(0u, 585u, 58618u, 1u, 0u, 46492u, 55393u, 1u, 0u, 0u, 1u, 3431u, 25247u, 4294967295u, 1u, 1u, 20712u, 46721u, 97495u, 4294967295u, 83383u, 55478u, 28329u, 10338u, 4294967295u, 63756u, 34200u, 18359u, 4294967295u, 0u, 111533u, 4294967295u);

var<private> global1: array<Struct_3, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> u32 {
    global0 = array<u32, 32>();
    var var_0 = u_input.b.x;
    var_0 = _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b.x << (0u % 32u), 1i) | min(2147483647i & u_input.b.x, u_input.b.x), u_input.b.x), 4841i);
    global1 = array<Struct_3, 32>();
    global0 = array<u32, 32>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~((u_input.c & vec2<u32>(_wgslsmith_mult_u32(u_input.d, global0[_wgslsmith_index_u32(10825u, 32u)]), func_1(-3318f, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 32u)], 32u)], global0[_wgslsmith_index_u32(15235u, 32u)], u_input.a)))) << (_wgslsmith_mult_vec2_u32(u_input.c, _wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]))) % vec2<u32>(32u)));
    let var_1 = select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), false), vec2<bool>(max(u_input.b.x, 1i) != -20442i, true)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(false, true)))), !(!vec2<bool>(true, select(true, true, true))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-491f, -254f, 692f))))));
    global0 = array<u32, 32>();
    let var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.d, var_0.x, false));
}

