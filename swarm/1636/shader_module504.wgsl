struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: array<u32, 4>;

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec2<u32>(1508u, 4294967295u), -736f, 299f, 0u), Struct_2(vec2<u32>(1u, 0u), -1514f, 1000f, 0u), Struct_2(vec2<u32>(4016u, 4294967295u), 458f, 476f, 28297u), Struct_2(vec2<u32>(0u, 37472u), 601f, -2211f, 57621u), Struct_2(vec2<u32>(0u, 1u), 467f, -350f, 0u));

var<private> global3: f32 = -125f;

var<private> global4: array<vec3<bool>, 27>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>) -> i32 {
    global0 = array<u32, 20>();
    global1 = array<u32, 4>();
    var var_0 = ~(~(~3479u));
    let var_1 = !any(vec4<bool>(true, true, true, true));
    var var_2 = arg_0.b;
    return 0i;
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec2<f32> {
    var var_0 = true;
    var var_1 = arg_0;
    global1 = array<u32, 4>();
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c));
    var var_2 = ~select(_wgslsmith_clamp_vec2_u32(var_1.a, var_1.a, min(_wgslsmith_clamp_vec2_u32(vec2<u32>(10781u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(106675u, 20u)], 20u)]), u_input.b.yy, vec2<u32>(4294967295u, var_1.a.x)), u_input.b.yy)), vec2<u32>(_wgslsmith_clamp_u32(1u, 15178u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.d, 4u)], 4u)], 47706u), vec3<u32>(86866u, 4294967295u, var_1.a.x))), 71898u), _wgslsmith_f_op_f32(max(506f, arg_0.c)) < arg_0.c);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-447f + _wgslsmith_f_op_f32(arg_0.c + var_1.c))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + -267f) * 1256f)), arg_0.b));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global4 = array<vec3<bool>, 27>();
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec2<u32>(global1[_wgslsmith_index_u32(arg_2, 4u)], 38329u), 1000f, arg_1.e.x, u_input.b.x), global1[_wgslsmith_index_u32(arg_1.d.x, 4u)]))) - arg_1.e)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.e.x), arg_1.e.x))), select(true, false, true)));
    global3 = _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-435f * arg_1.e.x))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), 5u)];
    let var_2 = vec4<i32>(-5975i, arg_1.a.x, -(-2147483647i << (_wgslsmith_div_u32(var_1.d, 17130u) % 32u)), firstTrailingBit(-(arg_1.b | 15420i)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = 200f;
    let var_0 = false;
    global2 = array<Struct_2, 5>();
    var var_1 = func_2(vec2<i32>(func_1(global2[_wgslsmith_index_u32(u_input.d, 5u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(246f, -805f, -817f)))), u_input.a.x), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(4442i, 1i, 0i), u_input.c | vec3<i32>(-19907i, u_input.a.x, u_input.a.x)), -u_input.a.x, -2147483647i, _wgslsmith_div_vec3_u32(~(~vec3<u32>(u_input.b.x, 4294967295u, u_input.d)), ~(~u_input.b.xxx)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_sub_u32(u_input.b.x, global0[_wgslsmith_index_u32(~(max(global0[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 20u)], 4u)]) >> (_wgslsmith_div_u32(u_input.b.x, 0u) % 32u)), 20u)]));
    global2 = array<Struct_2, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(~(17428u ^ global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 4u)])), ~0u), 1141f, u_input.b, ~vec2<u32>(~0u, ~var_1.d.x) >> (vec2<u32>(_wgslsmith_clamp_u32(33307u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(26781u, 20u)]), u_input.b.zw), ~67334u), 4294967295u >> (global0[_wgslsmith_index_u32(~u_input.d, 20u)] % 32u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(213f * var_1.e.x));
}

