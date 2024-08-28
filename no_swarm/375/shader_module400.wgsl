struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: u32,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(-174f, 742f), vec2<f32>(1000f, 359f), vec2<f32>(-769f, 1789f), vec2<f32>(-114f, 1937f), vec2<f32>(453f, 169f), vec2<f32>(-2299f, -1000f), vec2<f32>(-886f, -1033f), vec2<f32>(637f, -1284f));

var<private> global1: array<Struct_3, 10>;

var<private> global2: array<vec2<bool>, 25>;

var<private> global3: array<Struct_2, 20>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3) -> bool {
    global0 = array<vec2<f32>, 8>();
    global2 = array<vec2<bool>, 25>();
    return !select(true, true, (u_input.a.x != ~(-1i)) || (-arg_1.a.x != reverseBits(u_input.a.x)));
}

fn func_2(arg_0: u32) -> bool {
    global3 = array<Struct_2, 20>();
    var var_0 = true;
    let var_1 = -378f;
    global2 = array<vec2<bool>, 25>();
    global2 = array<vec2<bool>, 25>();
    return any(select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, true, true)), select(any(global2[_wgslsmith_index_u32(arg_0, 25u)]), true, false), true), !select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), func_3(vec2<u32>(arg_0, arg_0), Struct_3(vec4<i32>(u_input.a.x, -12797i, u_input.a.x, -2147483647i), global3[_wgslsmith_index_u32(1992u, 20u)], arg_0, u_input.a, Struct_1(46570u, 0u, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(arg_0, 8u)]))))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> f32 {
    var var_0 = 110968u;
    let var_1 = Struct_2(select(select(select(!arg_1.a, select(arg_1.a, global2[_wgslsmith_index_u32(4294967295u, 25u)], vec2<bool>(arg_0, arg_1.a.x)), arg_1.a), arg_1.a, true), arg_1.a, vec2<bool>(func_2(_wgslsmith_sub_u32(124398u, 0u)), arg_1.a.x)));
    let var_2 = ~vec4<u32>(104855u, 1u | ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 45107u, 75793u), vec3<u32>(0u, 0u, 25326u)), min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 15925u, 4360u, 2415u)), abs(1u)), ~1u);
    let var_3 = true;
    var var_4 = u_input.a.x;
    return _wgslsmith_f_op_f32(ceil(1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1155f, 320f)), _wgslsmith_f_op_f32(func_1(false, Struct_2(global2[_wgslsmith_index_u32(4294967295u, 25u)]), 2147483647i)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1978f * 224f) - -1000f)) - -973f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-956f)), 3251f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(517f, 1000f, -433f, -576f)), vec4<f32>(1f, 1f, 1f, 1f), true))));
    global3 = array<Struct_2, 20>();
    var var_2 = var_1.x;
    let var_3 = var_1;
    global3 = array<Struct_2, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec3<u32>(1u, 1u, 1u))), max(vec4<u32>(81403u, _wgslsmith_dot_vec4_u32(vec4<u32>(37625u, 4294967295u, 72306u, 3453u), vec4<u32>(26103u, 1265u, 16353u, 20179u)), 6903u, _wgslsmith_dot_vec2_u32(vec2<u32>(55485u, 1u), vec2<u32>(48702u, 65848u))) & vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(firstLeadingBit(1u), firstLeadingBit(7337u), _wgslsmith_mult_u32(1u, 63534u), _wgslsmith_dot_vec3_u32(vec3<u32>(52347u, 11020u, 33755u), vec3<u32>(1u, 0u, 53856u)))), -(~max(u_input.a.x, u_input.a.x)) & (u_input.a.x << ((~37663u & _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 39311u), vec3<u32>(110470u, 4294967295u, 0u))) % 32u)), min(u_input.a.xx, vec2<i32>(u_input.a.x, reverseBits(u_input.a.x))) << (abs(vec2<u32>(1u, 1u)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(reverseBits(u_input.a.zx), -vec2<i32>(u_input.a.x | u_input.a.x, ~0i)));
}

