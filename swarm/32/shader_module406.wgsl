struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true));

var<private> global1: array<bool, 9>;

var<private> global2: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(18839i, -27553i), vec2<i32>(0i, -4539i), vec2<i32>(i32(-2147483648), 36773i), vec2<i32>(i32(-2147483648), -9311i), vec2<i32>(i32(-2147483648), -11581i), vec2<i32>(1i, 68209i), vec2<i32>(1112i, 0i), vec2<i32>(2147483647i, 30153i), vec2<i32>(1i, -55423i), vec2<i32>(2147483647i, 21008i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, 1i), vec2<i32>(-22824i, 1i), vec2<i32>(23724i, -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-120545i, -1i), vec2<i32>(37294i, -1i), vec2<i32>(-52228i, 2147483647i), vec2<i32>(-15760i, 426i), vec2<i32>(-1i, 63575i), vec2<i32>(-1i, 0i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-17829i, -4546i), vec2<i32>(0i, -38550i), vec2<i32>(2147483647i, -2119i), vec2<i32>(-52088i, 1i), vec2<i32>(38271i, -1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(1i, -1i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: vec4<f32>) -> u32 {
    let var_0 = -1827i;
    var var_1 = Struct_1(~(firstTrailingBit(~vec4<i32>(u_input.b, u_input.c.x, var_0, arg_2.x)) | firstTrailingBit(vec4<i32>(1i, -24556i, u_input.a, arg_2.x))), global0[_wgslsmith_index_u32(arg_0.x, 9u)]);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2181f, arg_1.x, -1000f)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(arg_3.x, arg_3.x, 262f), arg_3.wxz), _wgslsmith_f_op_vec3_f32(min(arg_1.zzy, _wgslsmith_f_op_vec3_f32(sign(arg_1.xzw))))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(arg_1.x * 139f), _wgslsmith_f_op_f32(-arg_1.x))), arg_3.yyy)));
    let var_3 = var_1.b.yy;
    global2 = array<vec2<i32>, 29>();
    return _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32((arg_0.yx & arg_0.yx) ^ abs(arg_0.zx), arg_0.xy), vec2<u32>(1u, ~1u));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_mult_vec2_i32(u_input.c.xx, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_2(_wgslsmith_div_vec3_u32(~vec3<u32>(arg_1.x, 4294967295u, arg_0), ~vec3<u32>(0u, arg_1.x, 0u)), vec4<f32>(1386f, -809f, _wgslsmith_f_op_f32(trunc(-1512f)), _wgslsmith_f_op_f32(f32(-1f) * -1586f)), global2[_wgslsmith_index_u32(3070u, 29u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(276f, 414f, -363f, -184f)))), 4294967295u), 29u)]);
    global1 = array<bool, 9>();
    global0 = array<vec3<bool>, 9>();
    global2 = array<vec2<i32>, 29>();
    global0 = array<vec3<bool>, 9>();
    return firstLeadingBit(abs(-(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(u_input.a, var_0.x, var_0.x, 8961i)))));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1341f, 368f, 1514f), vec3<f32>(1128f, 632f, 1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(643f, 1190f, -730f) - vec3<f32>(-163f, -1492f, 1000f))) - vec3<f32>(284f, _wgslsmith_f_op_f32(select(796f, -423f, true)), 693f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1249f, 2166f, -355f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1205f, 1342f, -383f))))))));
    var var_1 = ~(~(~_wgslsmith_clamp_vec2_u32(arg_1.yz & arg_1.xy, arg_1.xz, ~arg_1.yy)));
    global2 = array<vec2<i32>, 29>();
    var_1 = vec2<u32>(~(~(_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(arg_1.x, var_1.x, 108526u)) & 4294967295u)), var_1.x & ~24370u);
    var_1 = ~vec2<u32>(var_1.x, arg_1.x) >> (abs(arg_1.xy) % vec2<u32>(32u));
    return ~vec4<i32>(u_input.b, ~55931i, arg_3.a, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(9327i);
    let var_1 = Struct_1(_wgslsmith_mod_vec4_i32(func_1(1954u >> (0u % 32u), firstLeadingBit(vec2<u32>(1u, 0u))), _wgslsmith_mod_vec4_i32(func_3(global1[_wgslsmith_index_u32(1u, 9u)], vec3<u32>(34170u, 25748u, 1u), vec2<bool>(false, false), Struct_2(u_input.a)), ~vec4<i32>(u_input.c.x, -14394i, 0i, u_input.b))) | (~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.c.x, -2147483647i, -1i), vec4<i32>(1i, 0i, -1i, -25957i)) & func_1(func_2(vec3<u32>(51553u, 0u, 4294967295u), vec4<f32>(-913f, 380f, 703f, 493f), global2[_wgslsmith_index_u32(4294967295u, 29u)], vec4<f32>(685f, 1000f, -719f, -498f)), ~vec2<u32>(12949u, 27197u))), vec3<bool>(global1[_wgslsmith_index_u32(107453u, 9u)], any(select(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 9u)]), vec2<bool>(global1[_wgslsmith_index_u32(17940u, 9u)], global1[_wgslsmith_index_u32(5221u, 9u)]), true)), global1[_wgslsmith_index_u32(47133u, 9u)]));
    let var_2 = Struct_2(abs(-6021i));
    let var_3 = var_2;
    let var_4 = Struct_1(var_1.a, !select(select(select(global0[_wgslsmith_index_u32(28432u, 9u)], var_1.b, global1[_wgslsmith_index_u32(4294967295u, 9u)]), !vec3<bool>(var_1.b.x, true, false), var_1.b), select(var_1.b, var_1.b, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 0u), 9u)]), global0[_wgslsmith_index_u32(49695u, 9u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-447f * _wgslsmith_f_op_f32(trunc(-2078f))));
}

