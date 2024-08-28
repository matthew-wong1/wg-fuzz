struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
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

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<u32>(8538u, 1u, 37818u, 40668u), -582f, vec4<u32>(59257u, 0u, 66604u, 8903u), vec3<bool>(true, false, true), vec4<u32>(0u, 4294967295u, 10629u, 15822u)), vec3<u32>(4294967295u, 9580u, 24830u), vec4<u32>(1u, 60u, 50161u, 1u), Struct_1(vec4<u32>(13408u, 0u, 45543u, 9190u), -266f, vec4<u32>(1u, 1u, 73129u, 4294967295u), vec3<bool>(true, true, true), vec4<u32>(4294967295u, 67700u, 0u, 0u)));

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

var<private> global2: array<i32, 20> = array<i32, 20>(-1i, 3612i, -3470i, -1i, 0i, -1i, 24122i, -36298i, 2147483647i, -1i, -1i, 1i, 0i, -1i, -1i, -27949i, -30391i, 6968i, 0i, 4092i);

var<private> global3: bool = true;

var<private> global4: array<vec3<bool>, 30>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>) -> StorageBuffer {
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -758f), arg_1.xx), vec2<bool>(true | (1i <= _wgslsmith_mult_i32(0i, u_input.b)), true), _wgslsmith_add_u32(min(u_input.e.x, 10106u), _wgslsmith_mult_u32(u_input.c.x >> (27924u % 32u), max(global0.d.e.x, ~0u))));
    global3 = u_input.c.x != _wgslsmith_add_u32(global0.a.a.x, ~1u);
    global2 = array<i32, 20>();
    let var_1 = -var_0.a.b.x;
    let var_2 = global4[_wgslsmith_index_u32(1u, 30u)];
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, -1419f)) * _wgslsmith_div_f32(-897f, global0.a.b)), 1f)) * _wgslsmith_div_f32(624f, 1636f)));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    var var_0 = u_input.a;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(round(1317f)), var_0.zz);
    global1 = !vec3<bool>(!global1.x, global1.x, true);
    let var_2 = global0.c.x;
    global4 = array<vec3<bool>, 30>();
    return func_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(208f, -1588f, global0.a.b, global0.d.b))))), -(~abs(vec4<i32>(var_0.x, -26403i, -2147483647i, 2147483647i))) | ~(-vec4<i32>(-41561i, var_1.b.x, -1i, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.d.x;
    let var_1 = u_input.a | vec3<i32>(-u_input.b, -2147483647i, ~_wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.a.x, 2147483647i), u_input.a.zz), -vec2<i32>(u_input.b, u_input.d)));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_div_i32(-min(0i, u_input.d), _wgslsmith_mod_i32(_wgslsmith_div_i32(16664i, -24971i), global2[_wgslsmith_index_u32(countOneBits(global0.d.a.x), 20u)])) == -24796i);
}

