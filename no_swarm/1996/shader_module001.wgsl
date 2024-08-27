struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(4294967295u, 0i, 4294967295u);

var<private> global2: array<vec3<u32>, 11>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.a, ~arg_0.a, 4294967295u & global1.a), global2[_wgslsmith_index_u32(0u, 11u)]) ^ 1u;
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = true;
    let var_1 = ~global1.c;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1075f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(174f * arg_0), _wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -818f)))), Struct_1(23681u, firstTrailingBit(firstTrailingBit(~global1.b)), _wgslsmith_add_u32(1u, var_1)), Struct_1(41113u, -1i, 1u), max(-2328i, ~26338i));
    var var_3 = _wgslsmith_sub_vec3_i32(select(countOneBits(vec3<i32>(-2147483647i >> (1u % 32u), abs(2147483647i), u_input.b)), _wgslsmith_mod_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 9789i, var_2.e), vec3<i32>(-1i, u_input.a.x, global1.b), vec3<i32>(global1.b, 2147483647i, global1.b))), firstLeadingBit(~vec3<i32>(0i, global1.b, u_input.b))), !vec3<bool>(true, any(vec2<bool>(false, true)), any(vec4<bool>(true, true, false, false)))), ~min(vec3<i32>(-14796i, var_2.e ^ 23551i, -1i), select(vec3<i32>(-1i, global1.b, 1i), vec3<i32>(var_2.d.b, global1.b, u_input.a.x), vec3<bool>(true, true, true)) | ~vec3<i32>(2147483647i, global1.b, u_input.b)));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(322f - arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_2.b, var_2.b))), var_2.d, var_2.c, u_input.b);
    return firstLeadingBit(global1.a);
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(7452u, global1.c), global1.a), _wgslsmith_add_vec2_u32(vec2<u32>(global1.a, global1.a), _wgslsmith_sub_vec2_u32(vec2<u32>(global1.a, 50221u), vec2<u32>(4294967295u, global1.c)))), 21860u) | 17860u;
    global1 = Struct_1(~_wgslsmith_div_u32(~func_2(Struct_1(1u, 0i, global1.a)), ~func_3(800f)), -(~47605i), firstTrailingBit(global1.a));
    var_0 = ~global1.a;
    global1 = Struct_1(30676u, ~reverseBits(arg_0), ~(~0u));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1338f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1180f) - _wgslsmith_f_op_f32(-1818f + -1405f)), all(vec3<bool>(false, false, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(922f - 167f), -1935f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -426f)))));
    return ~max(~7878u, global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(42732u, _wgslsmith_sub_i32(1i, 53476i), func_1(global1.b));
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~reverseBits(vec3<i32>(1227i, u_input.a.x, -1i)) & vec3<i32>(abs(var_0.b & 0i), var_0.b, _wgslsmith_add_i32(~30899i, _wgslsmith_sub_i32(-1007i, var_0.b))));
}

