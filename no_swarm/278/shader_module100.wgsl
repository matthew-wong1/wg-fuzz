struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_2, 12>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = u_input.b;
    let var_1 = global1[_wgslsmith_index_u32(1u, 12u)];
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1102f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * -446f)))), all(arg_0), _wgslsmith_f_op_f32(-1f));
    global1 = array<Struct_2, 12>();
    global0 = _wgslsmith_add_u32(4294967295u >> (_wgslsmith_add_u32(29644u, ~(~var_1.c)) % 32u), 70827u);
    return _wgslsmith_mod_u32(var_1.c, reverseBits(max(9246u | var_1.c, _wgslsmith_mod_u32(var_1.c, var_1.c))));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global0 = func_3(!vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), any(vec4<bool>(true, true, true, true)), true, false));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(-595f)), all(!vec3<bool>(any(vec2<bool>(true, false)), true, true)), -1349f);
    global1 = array<Struct_2, 12>();
    var var_1 = Struct_1(var_0.a, any(!(!select(vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(true, var_0.b, var_0.b)))), 1719f);
    let var_2 = select(firstLeadingBit(min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -1i, arg_0.a, -24652i) >> (vec4<u32>(29307u, arg_0.c, 5107u, 1u) % vec4<u32>(32u)), vec4<i32>(u_input.b, 4269i, 16777i, -56936i)), abs(abs(vec4<i32>(21782i, 0i, u_input.a, u_input.a))))), countOneBits(~_wgslsmith_div_vec4_i32(vec4<i32>(8596i, 9382i, u_input.b, u_input.a), ~vec4<i32>(arg_0.b, u_input.b, arg_0.a, -2147483647i))), select(!(!(!vec4<bool>(var_1.b, false, true, var_0.b))), !vec4<bool>(-11659i == u_input.b, true, true, var_0.b), !any(vec2<bool>(true, var_1.b))));
    return var_0;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    var var_0 = func_2(Struct_2(_wgslsmith_mult_i32(u_input.a, -arg_2.b), 1i, arg_1.c));
    var var_1 = vec3<bool>(false, all(!select(!vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, true), false)), true);
    let var_2 = !var_1.x;
    global0 = _wgslsmith_mod_u32(~arg_2.c, _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, arg_1.c), vec3<u32>(arg_2.c, 1u, 66983u)), 52192u & arg_2.c) << (30917u % 32u));
    let var_3 = arg_2;
    return 27699u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (firstTrailingBit(firstTrailingBit(max(4294967295u, 21890u))) & firstLeadingBit(1u)) | 4294967295u;
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1817u, _wgslsmith_clamp_u32(0u, 1u, 103615u) ^ 0u, ~abs(55659u), _wgslsmith_sub_u32(53819u >> (0u % 32u), func_1(-691f, Struct_2(u_input.b, -1i, 1u), Struct_2(-13956i, u_input.a, 10606u)))) ^ ~vec4<u32>(7499u << (0u % 32u), ~1u, firstTrailingBit(1u), _wgslsmith_mult_u32(34491u, 1935u)));
    var var_2 = u_input.a;
    var var_3 = !vec2<bool>(!(!select(true, false, true)), all(vec2<bool>(true, true)));
    var var_4 = func_2(global1[_wgslsmith_index_u32(var_1.x, 12u)]);
    var_0 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(-(1i ^ u_input.a), select(var_1.zxy, _wgslsmith_add_vec3_u32(var_1.zzw, min(~var_1.xxy, vec3<u32>(1u, 89179u, var_1.x) >> (vec3<u32>(var_1.x, var_1.x, 0u) % vec3<u32>(32u)))), vec3<bool>(var_4.b, true, true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-540f, var_4.a, _wgslsmith_f_op_f32(abs(var_4.c)), -718f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.c, 1068f, var_4.c, 706f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-102f, var_4.c, -585f, var_4.c))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_4.c, var_4.a, 2316f, 371f), _wgslsmith_div_vec4_f32(vec4<f32>(104f, var_4.a, -722f, var_4.c), vec4<f32>(-747f, var_4.a, 325f, 556f))))), u_input.a);
}

