struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)));

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -250f);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -787f) + -222f))) * 1178f));
    global1 = array<Struct_1, 5>();
    global0 = array<i32, 5>();
    let var_2 = reverseBits(0u);
    return _wgslsmith_f_op_f32(f32(-1f) * -325f);
}

fn func_4(arg_0: f32) -> u32 {
    var var_0 = Struct_1(!select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false), all(vec3<bool>(true, false, true))), vec2<bool>(true, false), false));
    global0 = array<i32, 5>();
    let var_1 = global1[_wgslsmith_index_u32(countOneBits(2231u << (1u % 32u)), 5u)];
    let var_2 = Struct_1(var_0.a);
    return u_input.c;
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.c;
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, func_4(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<bool>(false, true)), u_input.d))), ~1u), max(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.d, u_input.d), vec3<u32>(u_input.c, u_input.c, 30175u)), ~vec3<u32>(u_input.c, 0u, 61697u)) ^ ~(~vec3<u32>(119628u, 0u, 44504u))), 5u)];
    global0 = array<i32, 5>();
    var_1 = Struct_1(vec2<bool>(reverseBits(0u) != ((u_input.c >> (u_input.c % 32u)) ^ abs(45364u)), true));
    let var_2 = true;
    return Struct_1(vec2<bool>(!(!var_2), true));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 5u)], u_input.a) ^ vec2<i32>(7636i, -1i), vec2<i32>(-2147483647i, 2147483647i)), 19905i), 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -(vec2<i32>(103991i, arg_0) & vec2<i32>(arg_0, global0[_wgslsmith_index_u32(52362u, 5u)])), abs(~(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 5u)], u_input.b) ^ vec2<i32>(63235i, var_0))), -firstLeadingBit(vec2<i32>(1i, -1i)) & (vec2<i32>(u_input.e, global0[_wgslsmith_index_u32(u_input.c, 5u)]) >> (vec2<u32>(0u, u_input.d) % vec2<u32>(32u)))));
    var var_2 = !(!vec4<bool>(arg_2.a.x, arg_1.a.x, arg_2.a.x, arg_2.a.x));
    let var_3 = arg_2;
    let var_4 = func_2();
    return global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.c, 20009u), 30u)];
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = abs(vec3<u32>(u_input.c, ~arg_0.x, 4294967295u));
    let var_1 = reverseBits(~(~abs(-vec3<i32>(73751i, u_input.a, u_input.b))));
    let var_2 = vec4<u32>(_wgslsmith_sub_u32(~var_0.x, var_0.x), ~u_input.c, ~arg_0.x, 0u);
    global1 = array<Struct_1, 5>();
    let var_3 = var_2;
    return arg_1;
}

fn func_1() -> StorageBuffer {
    let var_0 = func_6(abs(abs(~vec2<u32>(71189u, u_input.c))), func_5(1i, global1[_wgslsmith_index_u32(~(~4294967295u) ^ ~u_input.c, 5u)], func_2()), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1041f + -759f) * _wgslsmith_f_op_f32(round(2519f)))), _wgslsmith_f_op_f32(1545f * -1411f), _wgslsmith_f_op_f32(-294f - -303f)), global1[_wgslsmith_index_u32(1u, 5u)]);
    var var_1 = vec4<bool>(!(!var_0.a.x), true, true, var_0.a.x);
    var_1 = select(vec4<bool>(true, ~13606u != ~u_input.c, true, all(vec3<bool>(true, !var_0.a.x, var_1.x))), select(vec4<bool>(func_2().a.x, true, var_1.x, !var_0.a.x), vec4<bool>(!var_1.x == var_1.x, true, u_input.d > ~27552u, u_input.c != (u_input.d & 1u)), func_6(_wgslsmith_div_vec2_u32(~vec2<u32>(7611u, u_input.c), countOneBits(vec2<u32>(6635u, 46815u))), Struct_1(vec2<bool>(false, false)), vec3<f32>(_wgslsmith_f_op_f32(round(-932f)), -167f, _wgslsmith_f_op_f32(round(1207f))), func_6(vec2<u32>(u_input.c, 0u), var_0, vec3<f32>(1f, 1f, 1f), func_6(vec2<u32>(u_input.c, 4294967295u), Struct_1(vec2<bool>(true, true)), vec3<f32>(-389f, 134f, 1000f), Struct_1(var_1.xz)))).a.x), select(!(!select(vec4<bool>(false, false, var_0.a.x, var_1.x), vec4<bool>(false, false, false, false), vec4<bool>(var_1.x, var_0.a.x, var_0.a.x, true))), select(!select(vec4<bool>(false, false, false, var_0.a.x), vec4<bool>(true, false, var_0.a.x, var_1.x), false), select(select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(false, false, false, var_0.a.x), var_0.a.x), !vec4<bool>(true, var_0.a.x, var_1.x, var_1.x), false), var_1.x && true), !var_1.x));
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(806f, -563f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-443f))))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1264f, -2070f, var_3) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-878f, var_3, var_3)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_3, var_3)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-449f, var_3, 662f)))), var_1.xwy)))), ~(~(-vec2<i32>(global0[_wgslsmith_index_u32(u_input.d, 5u)], global0[_wgslsmith_index_u32(42323u, 5u)]) ^ ~vec2<i32>(-43640i, global0[_wgslsmith_index_u32(u_input.d, 5u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

