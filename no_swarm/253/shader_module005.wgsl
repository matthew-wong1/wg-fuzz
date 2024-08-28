struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
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

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-105f), Struct_1(-1000f), Struct_1(-1488f), Struct_1(-167f), Struct_1(645f), Struct_1(-658f), Struct_1(1245f), Struct_1(267f), Struct_1(1735f), Struct_1(-811f), Struct_1(-1637f), Struct_1(-854f), Struct_1(175f), Struct_1(1457f), Struct_1(-800f), Struct_1(-781f), Struct_1(1875f), Struct_1(381f), Struct_1(243f), Struct_1(-1067f), Struct_1(-831f), Struct_1(-472f), Struct_1(731f), Struct_1(-992f), Struct_1(-529f), Struct_1(858f), Struct_1(646f), Struct_1(-246f));

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(-877f), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(-1000f), vec4<bool>(false, true, false, false)), Struct_2(Struct_1(-1524f), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(303f), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(1000f), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(-422f), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(239f), vec4<bool>(true, true, false, true)), Struct_2(Struct_1(-311f), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(406f), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(2349f), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(611f), vec4<bool>(false, true, false, true)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> vec3<bool> {
    global0 = array<Struct_1, 28>();
    let var_0 = global1[_wgslsmith_index_u32(~u_input.b & firstLeadingBit(~(~(1u >> (u_input.b % 32u)))), 11u)];
    global1 = array<Struct_2, 11>();
    let var_1 = vec2<i32>(-42562i, u_input.c.x);
    var var_2 = true;
    return !(!(!var_0.b.zwy));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>) -> u32 {
    global1 = array<Struct_2, 11>();
    var var_0 = ~vec4<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 84927u, u_input.b, 10356u), vec4<u32>(8954u, 4294967295u, 2111u, 63706u))), countOneBits(96866u), max(u_input.b, u_input.b | 0u), u_input.b | (u_input.b ^ 15624u)) & select(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)), vec4<u32>(48332u, u_input.b, 0u, 1u) << (vec4<u32>(u_input.b, 16133u, u_input.b, 44829u) % vec4<u32>(32u))) | ~(vec4<u32>(20291u, u_input.b, 42736u, u_input.b) & vec4<u32>(37709u, u_input.b, 11905u, u_input.b)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 9857u, u_input.b), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 0u, 0u, u_input.b), vec4<u32>(0u, 41535u, 4294967295u, u_input.b))), true);
    var var_1 = false;
    var_1 = any(vec4<bool>(all(vec4<bool>(true, all(vec3<bool>(false, true, true)), true, true)), false, false, max(-1i & arg_1.x, arg_0.x) > -40315i));
    let var_2 = _wgslsmith_sub_u32(var_0.x, _wgslsmith_dot_vec2_u32((var_0.zw | vec2<u32>(var_0.x, u_input.b)) << (vec2<u32>(var_0.x, 0u) % vec2<u32>(32u)), var_0.xz) | ~reverseBits(~3378u));
    return ~_wgslsmith_mult_u32(4294967295u | var_0.x, var_0.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: bool) -> bool {
    global1 = array<Struct_2, 11>();
    let var_0 = global0[_wgslsmith_index_u32(~(~func_3(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.x, arg_1.x), vec2<i32>(-4288i, u_input.a)) >> (vec2<u32>(20431u, 18315u) % vec2<u32>(32u)), vec3<i32>(u_input.a, -18121i, 21316i))), 28u)];
    let var_1 = global1[_wgslsmith_index_u32(u_input.b, 11u)];
    let var_2 = _wgslsmith_mod_u32(u_input.b, u_input.b);
    global1 = array<Struct_2, 11>();
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!all(func_1()), true, !func_2(~(u_input.c.zy | u_input.c.wz), -u_input.c.www, 52118u <= ~u_input.b), any(vec4<bool>(select(true, true, false), false, u_input.a > u_input.a, true)) | (true | !all(vec4<bool>(false, true, false, true))));
    global1 = array<Struct_2, 11>();
    var var_1 = _wgslsmith_add_vec2_u32(select(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 35168u, 48946u), vec4<u32>(0u, 11628u, 1u, u_input.b)), 0u), ~(u_input.b & 106899u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 95974u), vec2<u32>(u_input.b, u_input.b)) | ~(~vec2<u32>(1u, 4294967295u)), -1506f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(211f + -1260f) * _wgslsmith_f_op_f32(step(-1743f, -879f)))), abs(~(~(~vec2<u32>(1u, 0u)))));
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(select(countOneBits(109397u) << (min(u_input.b, u_input.b) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(34884u, 4294967295u, 0u, u_input.b) >> (vec4<u32>(var_1.x, 31365u, 28661u, u_input.b) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(0u, 6908u, 1060u, u_input.b))), select(all(var_0.xxy), true, var_0.x)), ~var_1.x, _wgslsmith_sub_u32(var_1.x, _wgslsmith_div_u32(~var_1.x, ~u_input.b)), var_1.x), ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_1.x, 9372u, 64903u), ~vec4<u32>(70193u, var_1.x, 84635u, 69025u)), _wgslsmith_sub_vec4_u32(vec4<u32>(56795u, u_input.b, var_1.x, var_1.x) >> (vec4<u32>(var_1.x, 44484u, 78163u, 4294967295u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(u_input.b, var_1.x, var_1.x, var_1.x)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1605f)), -1000f, true && var_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - _wgslsmith_f_op_f32(1802f - -338f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-489f + -1011f) * 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-769f + _wgslsmith_f_op_f32(step(306f, 571f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(952f * 895f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(929f, 650f, 973f), vec3<f32>(740f, -336f, 1423f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-551f, -855f, -497f)))))));
    var var_4 = global1[_wgslsmith_index_u32(~91563u, 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.a);
}

