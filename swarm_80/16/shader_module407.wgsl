struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<u32>, 21>;

var<private> global2: array<Struct_1, 7>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2;
    let var_1 = vec2<i32>(~(-arg_0.x), 50861i);
    let var_2 = 43657i;
    let var_3 = global2[_wgslsmith_index_u32(21259u, 7u)];
    var var_4 = false;
    return arg_2.b.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    global0 = _wgslsmith_f_op_f32(-arg_1.b.x);
    var var_0 = arg_1;
    let var_1 = -((abs(_wgslsmith_div_i32(u_input.a.x, -40584i)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a, var_0.a) << (vec2<u32>(1u, u_input.c) % vec2<u32>(32u)), select(global1[_wgslsmith_index_u32(1u, 21u)], vec2<u32>(u_input.c, arg_1.a), true)) % 32u)) << (firstLeadingBit(~u_input.c) % 32u));
    let var_2 = ~reverseBits(vec2<i32>(1i, var_1 & 1i));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-930f, _wgslsmith_f_op_f32(-arg_1.b.x))), -947f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, 956f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_1.b.zw))), !any(vec2<bool>(false, false)))) * arg_1.b.wz));
    return var_0.a;
}

fn func_3() -> f32 {
    global2 = array<Struct_1, 7>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-887f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2416f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-600f * -384f) * 1f))));
    global2 = array<Struct_1, 7>();
    var var_0 = _wgslsmith_add_vec3_u32(select(~(~vec3<u32>(16390u, 1u, u_input.c)), countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 66330u, 0u), vec3<u32>(4294967295u, 64913u, u_input.c))) & vec3<u32>(63971u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.c, u_input.b.x, u_input.b.x), vec4<u32>(u_input.c, u_input.b.x, 102890u, 20329u)), u_input.c), true), vec3<u32>(~(~0u), u_input.b.x, 1u));
    var_0 = ~vec3<u32>(_wgslsmith_sub_u32(1u, select(~var_0.x, _wgslsmith_div_u32(1u, var_0.x), all(vec4<bool>(true, false, false, true)))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], u_input.b), 1u, u_input.b.x), ~(firstTrailingBit(var_0.x) | 1u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -991f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.a.x, 0i), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false))), global2[_wgslsmith_index_u32(1u ^ _wgslsmith_add_u32(u_input.b.x, u_input.b.x), 7u)])));
    let var_0 = Struct_1(func_2(u_input.a.wz, global2[_wgslsmith_index_u32(~(~(~47980u)), 7u)]), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-699f, 1f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -261f)))))));
    global2 = array<Struct_1, 7>();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3()), var_0.b.x) - _wgslsmith_f_op_vec2_f32(trunc(var_0.b.zw)));
    var var_2 = !select(!vec4<bool>(u_input.b.x == var_0.a, true, any(vec4<bool>(true, true, true, true)), 8162u >= var_0.a), select(vec4<bool>(true, true, true, true), vec4<bool>(false, u_input.a.x != 15712i, true, all(vec2<bool>(false, false))), _wgslsmith_f_op_f32(var_1.x * var_0.b.x) <= _wgslsmith_f_op_f32(1643f - var_0.b.x)), !select(true, true, true));
    let var_3 = ~u_input.a;
    var var_4 = _wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, 0u), 4294967295u), ~(~u_input.b.x), firstTrailingBit(~38862u), max(var_0.a << (0u % 32u), _wgslsmith_mult_u32(68577u, u_input.c))), vec4<u32>(u_input.c, 84530u, u_input.c, 28775u));
    let var_5 = true;
    global2 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.x & _wgslsmith_dot_vec2_i32(-var_3.yy ^ ~u_input.a.xz, var_3.yy), -5732i, var_3.zx, select(_wgslsmith_sub_vec2_u32(firstTrailingBit(global1[_wgslsmith_index_u32(67816u, 21u)]), firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_0.a), u_input.b))), ~(~u_input.b), var_2.yz), _wgslsmith_sub_u32(max(_wgslsmith_mod_u32(0u, max(u_input.b.x, u_input.c)), abs(_wgslsmith_div_u32(0u, var_4.x))), ~var_0.a));
}

