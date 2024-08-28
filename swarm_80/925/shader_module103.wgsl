struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32;

var<private> global2: array<vec3<u32>, 22>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -793f));
    let var_1 = firstLeadingBit(u_input.a);
    let var_2 = ~u_input.b;
    global1 = _wgslsmith_clamp_i32(-(_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(1i, var_1.x, u_input.b.x)) >> (firstTrailingBit(_wgslsmith_div_u32(11860u, 112508u)) % 32u)), ~u_input.b.x << (~global0.a % 32u), select(var_1.x, -abs(var_1.x), false));
    var var_3 = _wgslsmith_div_vec2_f32(global0.b.b.wz, vec2<f32>(var_0, 778f));
    let var_4 = 1i;
    let var_5 = vec3<i32>(-1i) * -(vec3<i32>(var_4, var_2.x, var_1.x) >> ((~global2[_wgslsmith_index_u32(3235u, 22u)] << (_wgslsmith_sub_vec3_u32(global2[_wgslsmith_index_u32(global0.b.a, 22u)], vec3<u32>(1u, 1625u, global0.b.a)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_6 = !vec4<bool>(true, ((-2147483647i & var_5.x) >> (~4294967295u % 32u)) < u_input.b.x, all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(global0.b.b.x * _wgslsmith_f_op_f32(var_0 * 317f)) <= _wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(var_3.x - var_0))));
    let var_7 = Struct_2(vec3<bool>(false, var_6.x, true), _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global0.b.a, global0.b.a, global0.b.a, global0.b.a)), vec4<u32>(global0.a, global0.a, global0.a, 17322u)), ~(~reverseBits(28652u))), !(!((var_6.x && true) | true)), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_i32(reverseBits(_wgslsmith_div_i32(18i, var_2.x)), var_5.x), var_7.d.b.x, _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(55726u, global0.a), var_7.b), vec2<u32>(global0.b.a, global0.b.a) | ~vec2<u32>(1u, 0u)), ~(~vec2<u32>(global0.b.a, 4294967295u))));
}

