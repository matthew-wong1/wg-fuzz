struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: Struct_1 = Struct_1(-7616i);

var<private> global2: i32;

var<private> global3: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(632f, -713f, 405f), vec3<f32>(293f, 240f, -1763f), vec3<f32>(1745f, 797f, 1909f), vec3<f32>(-1935f, 1000f, 1902f), vec3<f32>(309f, 1075f, 575f), vec3<f32>(-1137f, 1912f, 2110f), vec3<f32>(-885f, -1000f, -991f), vec3<f32>(-1463f, -161f, -317f));

var<private> global4: array<u32, 14>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-917f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1612f) * _wgslsmith_f_op_f32(-1885f - 762f)), _wgslsmith_f_op_f32(f32(-1f) * -2572f)))));
    var var_1 = var_0.x;
    let var_2 = 224f;
    var var_3 = _wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1252f - var_0.x) + 823f))));
    var var_4 = global3[_wgslsmith_index_u32(~24185u, 8u)];
    return u_input.a.x;
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(~149839u, 15u)];
    return arg_0;
}

fn func_3(arg_0: f32, arg_1: u32) -> bool {
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    var var_0 = vec4<i32>(-global1.a, firstLeadingBit(-29075i), _wgslsmith_dot_vec2_i32(abs(firstLeadingBit(vec2<i32>(global1.a, global1.a))), _wgslsmith_mod_vec2_i32(-(~vec2<i32>(global1.a, global1.a)), _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(global1.a, -48234i)), reverseBits(vec2<i32>(global1.a, global1.a))))), global1.a);
    var_0 = vec4<i32>(-1000i, var_0.x, -(~select(max(global1.a, global1.a), -2147483647i, true)), 15618i);
    global2 = abs(~1i);
    return _wgslsmith_f_op_f32(f32(-1f) * -157f) > arg_0;
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<i32>) -> i32 {
    let var_0 = Struct_1(2147483647i);
    global2 = abs(_wgslsmith_clamp_i32(-57961i, reverseBits(~_wgslsmith_add_i32(-2147483647i, global1.a)), global1.a));
    global3 = array<vec3<f32>, 8>();
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-2147483647i, arg_2.x), 0i, -33141i, -var_0.a), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, global1.a, var_0.a, -2147483647i) & vec4<i32>(var_0.a, 2147483647i, -1i, -10977i), vec4<i32>(2147483647i, -16284i, var_0.a, arg_2.x))) >> (25606u % 32u));
    global0 = array<Struct_1, 15>();
    return max(-var_1.a, arg_2.x << (_wgslsmith_dot_vec2_u32((arg_0 << (u_input.a.wz % vec2<u32>(32u))) >> (arg_0 % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(~u_input.a.wz, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, global4[_wgslsmith_index_u32(arg_0.x, 14u)]), u_input.a.ww), u_input.a.zw | u_input.a.zx)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(select(abs(func_1(u_input.a.wwz, Struct_1(-66930i))), u_input.c | _wgslsmith_sub_u32(global4[_wgslsmith_index_u32(0u, 14u)], global4[_wgslsmith_index_u32(1443u, 14u)]), 2147483647i >= select(global1.a, -49325i, false)), 1u, u_input.a.x), global4[_wgslsmith_index_u32(1u, 14u)], func_2(u_input.c)), 15u)];
    let var_1 = vec3<i32>(-global1.a, func_4(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(global4[_wgslsmith_index_u32(94978u, 14u)], global4[_wgslsmith_index_u32(u_input.c, 14u)]) & vec2<u32>(u_input.b, global4[_wgslsmith_index_u32(4294967295u, 14u)])), 11700u), select(func_3(-478f, 18375u >> (global4[_wgslsmith_index_u32(0u, 14u)] % 32u)), func_3(623f, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(5926u, 1u), 14u)], 14u)]), any(vec2<bool>(true, true))), -countOneBits(-vec2<i32>(var_0.a, global1.a))), firstTrailingBit(global1.a));
    var var_2 = u_input.a;
    global0 = array<Struct_1, 15>();
    var var_3 = var_1.zy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1f - -425f), ~u_input.a.x & 1u);
}

