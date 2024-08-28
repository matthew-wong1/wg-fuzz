struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 13> = array<f32, 13>(-546f, 1392f, -330f, -812f, 991f, 247f, -3363f, -922f, -436f, -1212f, -458f, -138f, -964f);

var<private> global2: i32 = i32(-2147483648);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> vec4<i32> {
    let var_0 = 313f;
    global1 = array<f32, 13>();
    global2 = i32(-1i) * -74935i;
    global1 = array<f32, 13>();
    let var_1 = _wgslsmith_f_op_vec3_f32(arg_1.a.a.d - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_1.a.a.d))), arg_0.a.d, all(vec2<bool>(false, true))))));
    return vec4<i32>(1i, u_input.d.x, -13989i, arg_1.a.a.a.x);
}

fn func_2(arg_0: i32) -> Struct_4 {
    global0 = 752f;
    global2 = abs(2147483647i) ^ arg_0;
    var var_0 = ~(func_3(Struct_3(Struct_1(vec3<i32>(u_input.d.x, arg_0, u_input.a), true, vec2<f32>(-120f, 1268f), vec3<f32>(156f, -973f, 2062f))), Struct_4(Struct_3(Struct_1(vec3<i32>(arg_0, arg_0, 12744i), true, vec2<f32>(global1[_wgslsmith_index_u32(1399u, 13u)], -858f), vec3<f32>(998f, global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(u_input.e.x, 13u)]))))) << (~firstLeadingBit(firstTrailingBit(vec4<u32>(u_input.b, 1u, 0u, u_input.e.x))) % vec4<u32>(32u)));
    let var_1 = Struct_5(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b) ^ reverseBits(vec4<u32>(u_input.b, u_input.b, 27017u, u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(25432u, 24636u, u_input.b, u_input.b), vec4<u32>(u_input.e.x, 41031u, u_input.e.x, u_input.b))), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, 52400u, 0u, 1u) >> (vec4<u32>(0u, u_input.e.x, 65362u, u_input.e.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 36445u, u_input.b), vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, 46120u)) | ~vec4<u32>(u_input.e.x, 32535u, u_input.e.x, 4294967295u))), abs(~vec2<u32>(u_input.b, u_input.b)), Struct_2(Struct_1(-(vec3<i32>(3730i, 15291i, -2147483647i) ^ u_input.c), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(803f, 1000f) - vec2<f32>(443f, global1[_wgslsmith_index_u32(u_input.e.x, 13u)])) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 13u)], global1[_wgslsmith_index_u32(41678u, 13u)]) + vec2<f32>(-538f, 1026f))), vec3<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 13u)], -1008f, global1[_wgslsmith_index_u32(4294967295u, 13u)])), 2147483647i > (arg_0 << (35436u % 32u)), any(vec4<bool>(true, true, true, true))));
    global2 = ~1i;
    return Struct_4(Struct_3(Struct_1(var_0.wzx, !(false & var_1.c.b), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(var_1.c.a.c)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(var_1.c.a.d, vec3<f32>(-891f, 1517f, var_1.c.a.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-571f, global1[_wgslsmith_index_u32(var_1.b.x, 13u)], 1079f)), !vec3<bool>(var_1.c.c, var_1.c.a.b, var_1.c.c))))));
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_1 {
    global0 = global1[_wgslsmith_index_u32(u_input.b, 13u)];
    let var_0 = arg_1 << (63358u % 32u);
    let var_1 = vec3<u32>(~min(firstTrailingBit(u_input.b), firstLeadingBit(48102u)), var_0, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~u_input.e, ~(~vec2<u32>(arg_1, 1u))), abs(_wgslsmith_mult_u32(reverseBits(u_input.b), 4294967295u)), 1u));
    var var_2 = func_2(arg_0);
    let var_3 = var_1;
    return Struct_1(var_2.a.a.a, !(!all(vec3<bool>(true, false, var_2.a.a.b))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a.c.x)), _wgslsmith_f_op_f32(trunc(258f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.a.a.d + var_2.a.a.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(_wgslsmith_div_i32(1i, -u_input.a), 30077u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global1[_wgslsmith_index_u32(reverseBits(u_input.b) << (_wgslsmith_dot_vec2_u32(u_input.e, countOneBits(u_input.e)) % 32u), 13u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(u_input.e.x, 1u)), 13u)]) - _wgslsmith_f_op_f32(exp2(1f))), 1083f), ~_wgslsmith_mod_i32(62348i, -1i), ~vec4<i32>(~u_input.c.x, countOneBits(~u_input.c.x), 1i, firstTrailingBit(-50649i)));
}

