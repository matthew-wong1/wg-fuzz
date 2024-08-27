struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: Struct_1;

var<private> global2: array<u32, 29>;

var<private> global3: array<Struct_1, 10>;

var<private> global4: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(4294967295u, 17284u, 4294967295u, 1u), vec4<u32>(8031u, 0u, 16048u, 82278u), vec4<u32>(38142u, 3958u, 44599u, 1u), vec4<u32>(0u, 73073u, 60783u, 48308u), vec4<u32>(1u, 0u, 50775u, 225u), vec4<u32>(0u, 4294967295u, 23230u, 4294967295u), vec4<u32>(4294967295u, 1u, 4294967295u, 36355u), vec4<u32>(68513u, 4931u, 38640u, 35134u), vec4<u32>(46535u, 0u, 1u, 33595u), vec4<u32>(4294967295u, 32654u, 0u, 5833u), vec4<u32>(68840u, 1u, 0u, 4294967295u), vec4<u32>(83486u, 25548u, 1u, 3468u), vec4<u32>(4294967295u, 31156u, 0u, 4213u), vec4<u32>(6033u, 43034u, 48088u, 4294967295u), vec4<u32>(1u, 1u, 55652u, 1u), vec4<u32>(70560u, 19222u, 86639u, 1u), vec4<u32>(10903u, 31753u, 25054u, 25604u), vec4<u32>(3438u, 9241u, 28422u, 12321u), vec4<u32>(8071u, 0u, 2382u, 1u), vec4<u32>(29396u, 10646u, 30332u, 1u));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    global3 = array<Struct_1, 10>();
    global0 = _wgslsmith_dot_vec2_i32(abs(u_input.a), _wgslsmith_add_vec2_i32(firstTrailingBit(~u_input.a), -_wgslsmith_add_vec2_i32(u_input.a, u_input.a)));
    global1 = Struct_1(vec3<u32>(global1.a.x, global1.a.x, abs(min(1u, firstLeadingBit(0u)))));
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-371f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-970f, 151f) - _wgslsmith_f_op_f32(f32(-1f) * -266f)))) * _wgslsmith_div_f32(-267f, 1f));
    return select(!vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), all(vec4<bool>(true, false, true, true))), !vec2<bool>(select(false, true, all(vec2<bool>(false, true))), true), all(vec2<bool>(true, true)));
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -574f));
    let var_1 = global3[_wgslsmith_index_u32(firstLeadingBit(0u), 10u)];
    var var_2 = func_3(Struct_1(~(global1.a ^ var_1.a) | global1.a));
    let var_3 = global3[_wgslsmith_index_u32(~var_1.a.x, 10u)];
    let var_4 = var_2.x;
    return ~global2[_wgslsmith_index_u32(u_input.b.x, 29u)];
}

fn func_1(arg_0: f32) -> Struct_1 {
    global1 = global3[_wgslsmith_index_u32(~reverseBits(~firstLeadingBit(abs(u_input.c))), 10u)];
    global4 = array<vec4<u32>, 20>();
    let var_0 = Struct_1(abs(vec3<u32>(_wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.a.x, 29u)], 20u)], countOneBits(global4[_wgslsmith_index_u32(u_input.b.x, 20u)])), ~(~5523u), 4294967295u)));
    var var_1 = all(!vec4<bool>(true, all(vec2<bool>(true, true)), false, false));
    let var_2 = vec4<bool>(all(vec2<bool>(true, true)) || (_wgslsmith_f_op_f32(f32(-1f) * -2052f) > arg_0), !(0u > func_2(countOneBits(u_input.a.x))), -2147483647i == -u_input.a.x, func_3(Struct_1(vec3<u32>(_wgslsmith_mult_u32(20826u, 1u), u_input.b.x, 0u))).x);
    return global3[_wgslsmith_index_u32(~1u, 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(25137u, 29u)], 19837u) << (35016u % 32u)) >> (global1.a.x % 32u), ~0u), 10u)];
    var var_0 = global1.a.x;
    global1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -502f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -368f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 468f)))));
    var var_1 = func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -178f) + _wgslsmith_f_op_f32(max(-1414f, _wgslsmith_f_op_f32(f32(-1f) * -1613f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

