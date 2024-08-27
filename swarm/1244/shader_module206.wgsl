struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(i32(-2147483648), 2147483647i));

var<private> global3: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(-317f, -579f), vec2<f32>(-434f, 789f), vec2<f32>(109f, 628f), vec2<f32>(505f, 1688f), vec2<f32>(-1000f, 357f), vec2<f32>(448f, 1233f), vec2<f32>(-225f, -1000f), vec2<f32>(-412f, 491f), vec2<f32>(-190f, 209f), vec2<f32>(114f, 834f), vec2<f32>(-210f, 756f), vec2<f32>(-1004f, 535f), vec2<f32>(-386f, -1052f), vec2<f32>(1467f, -974f), vec2<f32>(-873f, 1315f), vec2<f32>(-1121f, 1000f), vec2<f32>(519f, -426f), vec2<f32>(-1000f, -707f), vec2<f32>(630f, 1561f), vec2<f32>(1841f, 864f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = abs(_wgslsmith_add_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(62934u, 1u), ~55591u, global0.e), global0.a));
    var var_1 = vec2<bool>(global0.d >= _wgslsmith_f_op_f32(floor(arg_1.d)), true);
    global1 = array<Struct_1, 4>();
    var var_2 = Struct_1(vec3<u32>(~(~(~global0.a.x)), 0u, ~var_0.x), countOneBits(-(-global0.b | global0.b)), -831f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c), global0.d) + _wgslsmith_f_op_f32(min(-128f, -1045f))) + global0.c), _wgslsmith_div_u32(~1u, _wgslsmith_div_u32(max(16531u, global0.e) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, 1u, arg_1.e, 1u), vec4<u32>(4294967295u, 4294967295u, var_0.x, u_input.a)), reverseBits(0u))));
    var var_3 = Struct_1(arg_1.a, 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) * _wgslsmith_f_op_f32(trunc(arg_1.d))))) + 413f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1852f, _wgslsmith_f_op_f32(global0.d - var_2.c)) - arg_1.d), arg_1.d), ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.a.x, var_0.x), arg_1.a.yz << (var_0.yx % vec2<u32>(32u)))));
    return var_2.a.x;
}

fn func_2() -> bool {
    let var_0 = vec2<bool>(true, true);
    var var_1 = ~(vec4<u32>(func_3(_wgslsmith_div_i32(1556i, -1i), Struct_1(global0.a, global0.b, 738f, global0.d, 25683u)), 4294967295u, _wgslsmith_sub_u32(global0.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(8978u, global0.a.x), global0.a.zx)), ~min(9204u, 4294967295u)) << (~vec4<u32>(_wgslsmith_mod_u32(78539u, global0.e), global0.a.x, abs(global0.a.x), _wgslsmith_mod_u32(69832u, u_input.a)) % vec4<u32>(32u)));
    global0 = global1[_wgslsmith_index_u32(global0.a.x, 4u)];
    let var_2 = 1u << (~var_1.x % 32u);
    return true;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = select(vec4<bool>(true, true, false, func_2() | true), select(!(!vec4<bool>(arg_0, arg_0, true, arg_0)), !select(!vec4<bool>(true, arg_0, true, var_0.x), vec4<bool>(true, false, var_0.x, false), select(vec4<bool>(false, true, true, arg_1.x), vec4<bool>(var_0.x, arg_1.x, true, arg_0), vec4<bool>(true, true, arg_1.x, arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.d)) - arg_2.c) >= 143f), true);
    var var_2 = vec3<bool>(true, true, func_2());
    var var_3 = vec4<bool>(true, !(-1101f <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(f32(-1f) * -1534f), true))), true, true);
    let var_4 = 1u;
    return arg_2;
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: u32, arg_3: vec2<u32>) -> f32 {
    let var_0 = abs((i32(-1i) * -23486i) ^ reverseBits(select(global0.b, global0.b, arg_0)));
    var var_1 = func_4(~global0.b == ((i32(-1i) * -35407i) << (select(arg_3.x, arg_2 << (arg_2 % 32u), false & arg_0) % 32u)), !vec2<bool>(func_2() || !arg_0, false), Struct_1(~_wgslsmith_mod_vec3_u32(abs(global0.a), arg_1 | vec3<u32>(u_input.a, global0.e, arg_2)), var_0, _wgslsmith_f_op_f32(f32(-1f) * -701f), global0.d, arg_1.x >> (_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, arg_2, u_input.a)), arg_1) % 32u)));
    let var_2 = ~0i;
    var var_3 = select(~vec4<u32>(1u | _wgslsmith_dot_vec2_u32(vec2<u32>(19964u, 0u), vec2<u32>(global0.a.x, u_input.a)), u_input.a, _wgslsmith_mod_u32(~u_input.a, 40428u), 1u), _wgslsmith_add_vec4_u32(~select(vec4<u32>(33421u, 0u, 82575u, 11629u), vec4<u32>(arg_3.x, 53766u, arg_3.x, 19962u) ^ vec4<u32>(0u, 0u, 4294967295u, 44787u), arg_0), ~(vec4<u32>(60003u, global0.a.x, global0.e, 19598u) ^ vec4<u32>(45875u, u_input.a, arg_2, 0u)) << (~select(vec4<u32>(14528u, arg_3.x, 63518u, 4294967295u), vec4<u32>(global0.a.x, 4294967295u, arg_1.x, 51856u), true) % vec4<u32>(32u))), vec4<bool>(false, all(select(!vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0))), false, (true & arg_0) && any(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), arg_0))));
    global1 = array<Struct_1, 4>();
    return var_1.c;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1431f);
    let var_1 = func_4(true, vec2<bool>(23646i >= abs(-global0.b), !(!(u_input.a >= arg_0))), Struct_1(min(~(~global0.a), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(global0.a, vec3<u32>(1u, 39575u, u_input.a)), global0.a)), -4884i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.c, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-838f - 942f) + _wgslsmith_f_op_f32(arg_2 + -778f)), firstLeadingBit(0u)));
    global0 = func_4(func_2(), !vec2<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), func_2()), Struct_1(func_4(true, vec2<bool>(true, true), var_1).a, func_4(true, vec2<bool>(true, true), var_1).b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_1.d)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * arg_3)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(103f))))), func_4(true, select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(false, false)), func_4(true, select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), func_4(true, vec2<bool>(true, false), Struct_1(vec3<u32>(6996u, arg_0, var_1.e), global0.b, -879f, 344f, 5251u)))).e));
    var var_2 = abs(58134u);
    let var_3 = var_1;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~(~(~global0.a.x)) >> (4294967295u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1729f * 254f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, abs(vec3<u32>(u_input.a, u_input.a, 4294967295u)), ~u_input.a, ~global0.a.zy)))), _wgslsmith_f_op_f32(max(469f, _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(max(-185f, global0.d))))), 528f);
    global1 = array<Struct_1, 4>();
    let var_1 = func_5(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f)))) + _wgslsmith_f_op_f32(func_1(true, select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, global0.a.x, var_0.a.x), vec3<u32>(u_input.a, var_0.a.x, 13547u), global0.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 0u, 30281u), global0.a, var_0.a), vec3<bool>(true, true, true)), ~_wgslsmith_div_u32(var_0.e, var_0.e), var_0.a.xy >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c))), var_0.d);
    var var_2 = ~(~var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(1u, firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a, 1u)]), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global3[_wgslsmith_index_u32(global0.e, 20u)])) * vec2<f32>(-259f, -411f)) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global3[_wgslsmith_index_u32(36162u, 20u)], vec2<f32>(var_1.c, global0.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(183f, var_1.d) + vec2<f32>(-2541f, -1490f)))))), vec3<u32>(global0.e, firstLeadingBit(~(var_1.e ^ var_1.e)), 1u), countOneBits(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(1u, var_1.e, 0u, global0.a.x)), abs(vec4<u32>(124662u, 100083u, 1u, 1u) & vec4<u32>(17318u, var_0.e, u_input.a, var_1.e)))));
}

