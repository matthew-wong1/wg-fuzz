struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(false, false, true, false, true, false, true, false, false, false);

var<private> global1: Struct_3;

var<private> global2: array<u32, 2> = array<u32, 2>(0u, 0u);

var<private> global3: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(29530u, 36660u, 94690u, 4294967295u), vec4<u32>(1u, 4294967295u, 8361u, 0u), vec4<u32>(38391u, 0u, 0u, 0u), vec4<u32>(26647u, 87343u, 65453u, 1u), vec4<u32>(4294967295u, 1u, 0u, 44889u), vec4<u32>(4294967295u, 1u, 1u, 19793u), vec4<u32>(40688u, 32983u, 1u, 14810u), vec4<u32>(4294967295u, 4294967295u, 36271u, 0u), vec4<u32>(11813u, 12350u, 4294967295u, 5468u), vec4<u32>(4491u, 1u, 12883u, 45469u), vec4<u32>(1u, 4294967295u, 14751u, 1152u), vec4<u32>(4294967295u, 1u, 0u, 33886u), vec4<u32>(1u, 74224u, 7373u, 1u), vec4<u32>(83634u, 1u, 27136u, 25347u), vec4<u32>(4294967295u, 7769u, 4294967295u, 59892u), vec4<u32>(4294967295u, 19408u, 4294967295u, 4294967295u), vec4<u32>(17432u, 68031u, 1u, 321u), vec4<u32>(1558u, 36665u, 0u, 1u));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: u32, arg_1: i32) -> u32 {
    var var_0 = global1.a;
    global2 = array<u32, 2>();
    global2 = array<u32, 2>();
    global1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a + 1000f)), true, _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, ~global1.b), global1.b), _wgslsmith_div_i32(_wgslsmith_clamp_i32(abs(-2811i), arg_1 >> (52164u % 32u), select(0i, 2147483647i, global0[_wgslsmith_index_u32(var_0.c, 10u)])), global1.a.d)), ~global1.b);
    var var_1 = global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, ~1u, 0u), vec3<u32>(global2[_wgslsmith_index_u32(31337u, 2u)], global2[_wgslsmith_index_u32(~4294967295u, 2u)], global2[_wgslsmith_index_u32(0u, 2u)])), 2u)] << (arg_0 % 32u), 18u)] & ~vec4<u32>(96922u, firstTrailingBit(_wgslsmith_sub_u32(4294967295u, 21558u)), 1u, reverseBits(~var_0.c));
    return 1u;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(global1.a.d, reverseBits(-1i)), u_input.a);
    global2 = array<u32, 2>();
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(254f, global1.a.a, global1.a.a) + vec3<f32>(global1.a.a, -846f, 2252f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(390f, 1090f, global1.a.a) + vec3<f32>(-1190f, 1273f, 2058f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.a.a, global1.a.a, global1.a.a))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.a.a, -1212f, global1.a.a)))))));
    var var_2 = (global2[_wgslsmith_index_u32(func_2(0u, ~(-1i)), 2u)] > _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(3191u, 37462u), ~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], 4294967295u)), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(18896u, 2u)] | ~4294967295u, 2u)])) == (0u < global1.b);
    global0 = array<bool, 10>();
    return global1.a.a;
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    var var_0 = arg_0.a;
    var_0 = Struct_1(560f, all(!select(vec2<bool>(global1.a.b, arg_0.a.b), !vec2<bool>(true, var_0.b), select(global0[_wgslsmith_index_u32(4984u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(arg_0.b, 10u)]))), _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(27968u, 18u)], vec4<u32>(30698u, 0u, arg_0.a.c, 24831u)), 61864u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(~0u, 51676u, ~29903u), firstLeadingBit(max(vec3<u32>(1u, var_0.c, 0u), vec3<u32>(arg_0.a.c, global2[_wgslsmith_index_u32(arg_0.a.c, 2u)], global2[_wgslsmith_index_u32(1u, 2u)]))), ~vec3<u32>(global1.b, 25785u, global1.b))), -abs(1i));
    return global2[_wgslsmith_index_u32(4294967295u, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-select(-(vec4<i32>(u_input.a, u_input.a, u_input.a, global1.a.d) << (vec4<u32>(0u, 3918u, global1.a.c, global2[_wgslsmith_index_u32(32870u, 2u)]) % vec4<u32>(32u))), abs(-vec4<i32>(-84303i, global1.a.d, global1.a.d, global1.a.d)), select(vec4<bool>(global1.a.b, true, false, true), !vec4<bool>(true, global1.a.b, global0[_wgslsmith_index_u32(0u, 10u)], global1.a.b), all(vec4<bool>(false, global1.a.b, global0[_wgslsmith_index_u32(37011u, 10u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.b, 2u)], 10u)])))), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 1u, 58123u), ~(~vec3<u32>(28677u, global2[_wgslsmith_index_u32(global1.b, 2u)], global2[_wgslsmith_index_u32(global1.b, 2u)]))), select(~vec3<u32>(19213u, 14273u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 2u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(120082u, 2u)], 2u)], global2[_wgslsmith_index_u32(41351u, 2u)], 1197u) | vec3<u32>(global1.b, 67466u, global1.a.c), vec3<bool>(true, true, true)) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(42153u, global1.b), vec2<u32>(40167u, 1u)), 4294967295u >> (1u % 32u), global2[_wgslsmith_index_u32(20059u, 2u)]) % vec3<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -356f), 102f) - global1.a.a), global1.a.a, _wgslsmith_f_op_f32(global1.a.a * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -307f), -1822f, true)))), vec3<f32>(global1.a.a, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -1044f)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(27824u, 0u), func_3(Struct_3(Struct_1(global1.a.a, global1.a.b, global1.b, -1i), global1.a.c))), vec2<u32>(global1.a.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.a.c, 2u)], 2u)], 2u)]) >> (vec2<u32>(29670u, 0u) % vec2<u32>(32u)), min(~vec2<u32>(682u, 0u), vec2<u32>(global1.b, 3822u) | vec2<u32>(40097u, 14902u))));
}

