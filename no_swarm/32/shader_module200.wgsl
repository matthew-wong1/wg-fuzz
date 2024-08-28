struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

var<private> global1: Struct_1;

var<private> global2: f32;

var<private> global3: array<u32, 7>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_2 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1059f) - -1327f) - global1.a.x);
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f * global1.a.x), -1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -403f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1229f, -2284f, 463f)))))));
    let var_0 = vec4<bool>(true, true, -1427f <= _wgslsmith_f_op_f32(-global1.a.x), false);
    let var_1 = !vec2<bool>(true, var_0.x);
    return global0[_wgslsmith_index_u32(~43642u, 13u)];
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    global3 = array<u32, 7>();
    global3 = array<u32, 7>();
    let var_0 = func_2();
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(global3[_wgslsmith_index_u32(38569u, 7u)], 1u, global3[_wgslsmith_index_u32(26284u, 7u)])), vec3<u32>(max(global3[_wgslsmith_index_u32(0u, 7u)], 85881u), 0u, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(52374u, 7u)], 7u)])), 7u)], 4294967295u, countOneBits(max(global3[_wgslsmith_index_u32(43022u, 7u)] | 4294967295u, 4294967295u))), select(71148u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(min(firstTrailingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6963u, 7u)], 7u)]) | 22411u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(0u, 7u)], 4294967295u) | vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12555u, 7u)], 7u)], 7u)], 7u)], 7u)], 4294967295u), select(vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]), vec2<u32>(5574u, 1u), true)), 7u)], 7u)]), 7u)], 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-559f + -232f)) < global1.a.x));
    global0 = array<Struct_2, 13>();
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b.wy;
    var var_1 = vec3<i32>((_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-40468i, u_input.b.x, -21886i), vec3<i32>(72690i, var_0.x, u_input.a)), var_0.x) & ~1i) | var_0.x, -var_0.x, var_0.x);
    global1 = Struct_1(global1.a);
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a.x))), -1435f, -381f));
    let var_3 = func_1(_wgslsmith_mult_vec3_i32(u_input.b.yxy ^ vec3<i32>(-1i, var_0.x, 15399i), _wgslsmith_mult_vec3_i32(~u_input.b.zww, vec3<i32>(u_input.a, 532i, var_1.x) & vec3<i32>(u_input.a, u_input.a, 62002i))) >> (max(reverseBits(firstTrailingBit(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14922u, 7u)], 7u)], 5145u, 63652u))), countOneBits(select(vec3<u32>(44792u, global3[_wgslsmith_index_u32(0u, 7u)], 3943u), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 7u)], 7u)], global3[_wgslsmith_index_u32(51829u, 7u)], 31640u), true))) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 0u), 7u)], 13u)], ~(~var_0.x));
    global3 = array<u32, 7>();
    var var_4 = 1032f;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, ~_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(6361u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)]), 1u), vec2<u32>(~global3[_wgslsmith_index_u32(1u, 7u)], reverseBits(global3[_wgslsmith_index_u32(0u, 7u)]))), vec2<u32>(~abs(global3[_wgslsmith_index_u32(0u, 7u)]), 18336u), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global3[_wgslsmith_index_u32(28835u, 7u)]), vec2<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)])) >> (countOneBits(4294967295u) % 32u), 59458u, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11510u, 7u)], 7u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(52868u, global3[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]), vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], 1u, 3256u))), 7u)], firstTrailingBit(35287u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(652f, 1088f, -1000f, var_3.a.x) - vec4<f32>(-307f, global1.a.x, -518f, -243f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.a.x, var_2.a.x, 1130f, -1000f), vec4<f32>(-542f, 1276f, var_3.a.x, global1.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(var_2.a.x)), -389f, -1773f, _wgslsmith_f_op_f32(var_2.a.x + -1273f)))));
}

