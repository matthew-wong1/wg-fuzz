struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(1i, -10552i, vec2<i32>(i32(-2147483648), -15646i), vec3<bool>(true, false, false))), Struct_2(Struct_1(1i, 0i, vec2<i32>(-1i, 2147483647i), vec3<bool>(true, true, false))), Struct_2(Struct_1(37248i, i32(-2147483648), vec2<i32>(0i, 11713i), vec3<bool>(true, false, false))), Struct_2(Struct_1(2147483647i, 58648i, vec2<i32>(0i, 27860i), vec3<bool>(true, false, false))), Struct_2(Struct_1(-22058i, i32(-2147483648), vec2<i32>(2147483647i, 17805i), vec3<bool>(false, true, true))), Struct_2(Struct_1(16124i, i32(-2147483648), vec2<i32>(-9995i, 0i), vec3<bool>(false, true, true))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: i32) -> vec3<bool> {
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    let var_0 = all(vec3<bool>(true, true, true));
    global0 = array<Struct_2, 6>();
    var var_1 = firstLeadingBit(vec3<i32>(u_input.c, 7274i, -(~abs(arg_0))));
    return vec3<bool>(true | var_0, var_0, var_0);
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_mult_i32(~1i, 1i);
    return reverseBits(u_input.a.x);
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> u32 {
    global0 = array<Struct_2, 6>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 6u)];
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    let var_1 = Struct_1(var_0.a.a, ~1i, countOneBits(countOneBits(~(~var_0.a.c))), !arg_1);
    return 33413u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~10067u;
    var var_1 = -vec3<i32>(_wgslsmith_dot_vec3_i32(select(firstTrailingBit(vec3<i32>(u_input.c, -2147483647i, -1i)), vec3<i32>(-54425i, 17034i, u_input.d) << (vec3<u32>(1u, u_input.b, 4294967295u) % vec3<u32>(32u)), func_1(0i)), ~(vec3<i32>(2147483647i, u_input.c, u_input.d) | vec3<i32>(-2147483647i, 57713i, u_input.c))), _wgslsmith_dot_vec3_i32(~min(vec3<i32>(1i, -1i, u_input.d), vec3<i32>(2147483647i, u_input.c, u_input.c)), -vec3<i32>(2147483647i, u_input.c, 20492i)), 0i);
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    var var_2 = vec3<i32>(-6092i, ~_wgslsmith_mult_i32(max(u_input.c, -var_1.x), u_input.c), 30201i);
    var_1 = select(~_wgslsmith_mod_vec3_i32(vec3<i32>(-54571i, _wgslsmith_div_i32(-12550i, 2147483647i), -1i), ~min(vec3<i32>(0i, -12765i, var_2.x), vec3<i32>(var_1.x, -2147483647i, u_input.d))), max((vec3<i32>(u_input.d, var_2.x, -1i) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, u_input.b), vec3<u32>(var_0, var_0, var_0)) % vec3<u32>(32u))) << ((~vec3<u32>(var_0, 43017u, 0u) << (max(vec3<u32>(var_0, u_input.a.x, var_0), vec3<u32>(var_0, 1u, 41777u)) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~vec3<i32>(-2147483647i, 3335i, -16915i)) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, 0u, 8589u), ~vec3<u32>(0u, u_input.a.x, 28838u)) % vec3<u32>(32u))), true || all(vec2<bool>(true, true)));
    let var_3 = vec4<u32>(func_2(), max(~_wgslsmith_mult_u32(~6191u, 1u), _wgslsmith_sub_u32(4294967295u << (u_input.b % 32u), 1u) | u_input.b), abs(_wgslsmith_dot_vec2_u32((u_input.a >> (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))) | u_input.a, vec2<u32>(0u, ~0u))), _wgslsmith_add_u32(~(func_3(true, vec3<bool>(true, false, true)) | ~81886u), func_3(true, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    var var_4 = Struct_1(u_input.d, 0i, -var_2.yz, !(!vec3<bool>(u_input.c >= -1i, 616u <= u_input.b, func_1(606i).x)));
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-583f * -888f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -696f)), _wgslsmith_f_op_f32(1524f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1331f * -491f) + _wgslsmith_f_op_f32(max(2203f, -1499f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1240f - 1083f) - _wgslsmith_f_op_f32(f32(-1f) * -860f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-296f)), -1000f) + _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(1127f - -896f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, var_5.x, _wgslsmith_f_op_vec3_f32(-var_5.xzx), _wgslsmith_mult_i32(-2147483647i, i32(-1i) * -1i));
}

