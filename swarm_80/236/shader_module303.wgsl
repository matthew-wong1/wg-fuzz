struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-38455i, false, false), Struct_1(i32(-2147483648), false, false), Struct_1(-6816i, true, true), Struct_1(-8008i, true, true));

var<private> global3: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<bool>) -> f32 {
    let var_0 = ~(-26174i);
    global2 = array<Struct_1, 4>();
    global1 = array<vec3<bool>, 18>();
    return 211f;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = global0.a;
    var var_1 = vec3<i32>(-1i) * -(vec3<i32>(arg_0, -1i, _wgslsmith_clamp_i32(arg_0, arg_0, 2147483647i)) >> (_wgslsmith_div_vec3_u32(u_input.b, ~u_input.b) % vec3<u32>(32u)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)], vec3<bool>(global0.c, global0.b, global3.x))) + _wgslsmith_f_op_f32(step(476f, 1166f))), _wgslsmith_f_op_f32(1038f + -1528f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -365f))))));
    var var_3 = ~(countOneBits(select(vec4<i32>(var_1.x, 13647i, var_1.x, -2147483647i), vec4<i32>(var_1.x, 0i, -29463i, -26492i), vec4<bool>(global0.b, global0.c, global3.x, global0.c)) & abs(vec4<i32>(1i, -95505i, arg_0, arg_0))) | -vec4<i32>(var_1.x, global0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_1.x, -1i), vec3<i32>(var_1.x, var_1.x, arg_0)), 2147483647i));
    let var_4 = global2[_wgslsmith_index_u32(~reverseBits(u_input.b.x) & ~(~(~0u)), 4u)];
    return global2[_wgslsmith_index_u32(662u, 4u)];
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(global0.a, false, true);
    var var_1 = _wgslsmith_f_op_f32(691f * _wgslsmith_f_op_f32(func_3(Struct_1(-_wgslsmith_add_i32(4553i, arg_2.a), false, !func_2(global0.a).b), vec3<bool>(false, any(!global3.wz), func_2(~0i).c), !(!(!vec3<bool>(false, var_0.b, arg_2.b))))));
    let var_2 = abs(vec3<i32>(-2147483647i ^ countOneBits(var_0.a), max(-arg_2.a, -62947i), 0i)) | abs(firstTrailingBit(vec3<i32>(arg_2.a, -46387i, arg_2.a) << (vec3<u32>(25493u, 4294967295u, arg_1) % vec3<u32>(32u))));
    let var_3 = max(min(firstTrailingBit(~vec2<i32>(arg_2.a, var_0.a)), -vec2<i32>(var_0.a, ~27651i)), var_2.xz);
    global3 = select(vec4<bool>(any(select(global3.wz, select(vec2<bool>(false, var_0.c), global3.xy, false), vec2<bool>(true, true))), true, any(global1[_wgslsmith_index_u32(arg_1, 18u)]), true), select(!select(vec4<bool>(false, false, true, global0.b), !vec4<bool>(true, global0.b, false, var_0.b), !vec4<bool>(false, false, false, global0.b)), !vec4<bool>(false, true, arg_2.b, true), !(!(!vec4<bool>(global0.c, true, global3.x, arg_2.b)))), true);
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> f32 {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-191f, 1000f, -975f), vec3<f32>(-846f, 1208f, 833f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(784f, -700f, -496f), vec3<f32>(121f, 902f, 162f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1784f, -390f, 1469f) - vec3<f32>(160f, -540f, -1000f)))), global3.x)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1118f, -1459f, -852f) - vec3<f32>(368f, -946f, 1407f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2220f, 1000f, 1000f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1319f, -1954f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(989f, 647f, -965f) + vec3<f32>(305f, -751f, 463f)))))), firstTrailingBit(~(countOneBits(arg_0) >> (1u % 32u))), func_2(global0.a));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -414f)));
    let var_2 = vec4<i32>(-var_0.a, 9068i, max(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(var_0.a, global0.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(-410i, var_0.a), vec2<i32>(-11412i, 1i), vec2<i32>(arg_1.a, var_0.a))), firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.a, -37783i), vec2<i32>(1i, 1i), vec2<i32>(arg_3.a, 1i)))), _wgslsmith_clamp_i32(-56427i, -10412i >> (arg_2 % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, arg_3.a, -12759i), countOneBits(vec3<i32>(-27117i, arg_3.a, -25690i))))), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-601f, 121f, -1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(135f, 1054f, 1884f))), 33977u, func_4(vec3<f32>(667f, 152f, -632f), ~6292u, global2[_wgslsmith_index_u32(4294967295u, 4u)])).a << (49545u % 32u));
    global3 = !(!select(vec4<bool>(true & global3.x, var_0.c, true, true), vec4<bool>(global3.x, true, global0.c, arg_3.c), true));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -378f) * _wgslsmith_f_op_f32(f32(-1f) * -707f)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-628f)) - -880f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1924f * 2013f), _wgslsmith_f_op_f32(ceil(-963f)))) + _wgslsmith_f_op_f32(min(1f, 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 18>();
    let var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, ~firstTrailingBit(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a))), firstLeadingBit(0u));
    let var_1 = _wgslsmith_div_u32(~(~((0u ^ u_input.a.x) << (65564u % 32u))), ~0u);
    global0 = global2[_wgslsmith_index_u32(18226u, 4u)];
    var var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-679f, 171f, false)) + _wgslsmith_f_op_f32(543f * 628f)) * _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_u32(u_input.a.x, var_0.x), global2[_wgslsmith_index_u32(u_input.b.x, 4u)], ~7963u, global2[_wgslsmith_index_u32(~1u, 4u)])))));
}

