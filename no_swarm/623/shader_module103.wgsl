struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-783f, -870f);

var<private> global1: array<Struct_1, 16>;

var<private> global2: u32;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> i32 {
    return u_input.b;
}

fn func_2() -> vec4<u32> {
    let var_0 = -vec4<i32>(~u_input.b | 28454i, abs(-8188i), 1i, _wgslsmith_mod_i32(u_input.a | reverseBits(u_input.a), i32(-1i) * -2147483647i));
    let var_1 = true;
    global2 = reverseBits(1u);
    var var_2 = -vec3<i32>(~(func_3(Struct_1(true, var_1, u_input.c, vec2<f32>(global0.x, global0.x)), 43653u, Struct_1(false, true, 38637u, vec2<f32>(-1828f, 1000f))) ^ func_3(Struct_1(var_1, true, u_input.c, vec2<f32>(-931f, global0.x)), u_input.c, global1[_wgslsmith_index_u32(u_input.c, 16u)])), _wgslsmith_clamp_i32(_wgslsmith_add_i32(32684i, _wgslsmith_div_i32(13244i, u_input.a)), 35373i, 35831i), ~u_input.a);
    global0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(global0.x * 1015f))), -1801f)));
    return vec4<u32>(~min(0u, u_input.c), firstLeadingBit(abs(select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1075u, 6971u), vec4<u32>(u_input.c, 26276u, 1u, u_input.c)), 1u, any(vec4<bool>(var_1, var_1, true, var_1))))), u_input.c, reverseBits(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.c, u_input.c), ~4294967295u, ~18518u)) ^ ~1u);
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> StorageBuffer {
    var var_0 = max(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~39625u, _wgslsmith_mod_u32(u_input.c, u_input.c)), ~(u_input.c ^ 26923u), 27165u, 5703u), vec4<u32>(u_input.c, 4294967295u, 22688u, u_input.c)), ~vec4<u32>(firstTrailingBit(u_input.c), u_input.c, u_input.c, (1u | u_input.c) >> (_wgslsmith_div_u32(0u, u_input.c) % 32u)));
    var var_1 = Struct_1(arg_1, select(_wgslsmith_mod_u32(var_0.x, var_0.x) == _wgslsmith_mult_u32(u_input.c, ~28012u), true != arg_1, arg_1), ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c, u_input.c, 9075u, 0u)), func_2()), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, 538f)) + -1030f), _wgslsmith_f_op_f32(step(global0.x, -968f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, 1000f), vec2<f32>(global0.x, -1676f))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, -2265f))))), arg_1)));
    var var_2 = vec2<bool>(var_1.a, arg_1);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -289f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-107f - -175f) + _wgslsmith_f_op_f32(-var_1.d.x)), 1522f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1647f), -494f, 890f));
    let var_4 = vec3<u32>(4294967295u, ~0u, var_1.c);
    return StorageBuffer(var_0.zxx, 1i, -(~arg_0.zx) & _wgslsmith_mod_vec2_i32(select(vec2<i32>(0i, arg_0.x), -arg_0.xx, !vec2<bool>(true, arg_1)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(-819i, 25856i), arg_0.yy, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.x, 0i), vec2<i32>(arg_0.x, arg_0.x)))), -42423i, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 10722i;
    let var_1 = 1i;
    global2 = _wgslsmith_div_u32(~43937u, u_input.c);
    var var_2 = -_wgslsmith_clamp_vec4_i32(-(~vec4<i32>(-42624i, 0i, -62474i, 14561i)), firstTrailingBit(max(firstLeadingBit(vec4<i32>(0i, -9351i, u_input.b, var_1)), -vec4<i32>(-5633i, -41121i, var_1, u_input.a))), ~vec4<i32>(u_input.b, -60099i, _wgslsmith_mult_i32(-1i, 14030i), firstTrailingBit(1i)));
    let var_3 = global1[_wgslsmith_index_u32(firstLeadingBit(u_input.c ^ 20992u) << (firstLeadingBit(4604u) % 32u), 16u)];
    let x = u_input.a;
    s_output = func_1(-var_2.zxx, var_3.b);
}

