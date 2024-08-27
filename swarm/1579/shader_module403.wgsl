struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<f32, 20>;

var<private> global2: Struct_2;

var<private> global3: Struct_2 = Struct_2(Struct_1(0u, i32(-2147483648)), 1i, 2510f, false, Struct_1(1u, 20762i));

var<private> global4: vec3<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_3.e;
    global4 = vec3<u32>(arg_3.e.a, reverseBits(1u), var_0.a) & min(vec3<u32>(~_wgslsmith_mult_u32(arg_2.a, arg_2.a), 59655u, 41413u), ~(~(~vec3<u32>(0u, global3.e.a, 80696u))));
    global4 = vec3<u32>(global3.a.a, 1u, _wgslsmith_mod_u32(firstTrailingBit(4223u) & ~u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.b, abs(vec4<u32>(global2.a.a, 49305u, 1u, 98514u))))) | u_input.b.yyw;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-156f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2259f)))) + 519f);
    let var_2 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(44293u, 20u)]);
    return arg_2;
}

fn func_1() -> StorageBuffer {
    let var_0 = true;
    let var_1 = Struct_2(func_2(!select(vec4<bool>(global2.d, global3.d, global2.d, global3.d), !vec4<bool>(global3.d, true, true, false), global3.d), global2.a, Struct_1(min(u_input.d, global4.x) << (_wgslsmith_div_u32(global2.a.a, global3.a.a) % 32u), 23859i), Struct_2(global3.a, _wgslsmith_mod_i32(u_input.a ^ -1i, ~global2.a.b), _wgslsmith_f_op_f32(-941f + _wgslsmith_f_op_f32(-global3.c)), global2.d, global2.a)), ~abs(_wgslsmith_add_i32(~54609i, 2147483647i)), _wgslsmith_f_op_f32(floor(511f)), true, global2.e);
    global2 = var_1;
    return StorageBuffer(~_wgslsmith_div_vec4_u32(~abs(vec4<u32>(global2.a.a, global4.x, 4294967295u, 6254u)), ~u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 20>();
    global1 = array<f32, 20>();
    var var_0 = !(!vec2<bool>(all(select(vec4<bool>(true, global3.d, false, global3.d), vec4<bool>(false, false, true, true), vec4<bool>(global3.d, global3.d, true, global2.d))), -44731i > firstTrailingBit(-2147483647i)));
    var var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(39487u, ~(global2.e.a << (56960u % 32u))), u_input.b.xy) | global4.xx;
    global4 = ~vec3<u32>(global3.a.a, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, global2.a.a), select(u_input.b.xw, u_input.b.xz, vec2<bool>(global2.d, true)))), 120170u);
    let x = u_input.a;
    s_output = func_1();
}

