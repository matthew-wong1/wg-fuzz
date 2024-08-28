struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, true);

var<private> global1: u32 = 1u;

var<private> global2: vec3<f32>;

var<private> global3: array<u32, 2>;

var<private> global4: vec3<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> i32 {
    global1 = global3[_wgslsmith_index_u32(~firstLeadingBit(~select(70930u, 26002u, global0.a) << (global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)]), 2u)] % 32u)), 2u)];
    let var_0 = -1i;
    global4 = vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~(-1i), _wgslsmith_add_i32(var_0, var_0), ~var_0, global4.x ^ global4.x), abs(vec4<i32>(global4.x, global4.x, 2147483647i, 48638i))), min(~(~vec4<i32>(-6853i, 0i, -2147483647i, 28556i)), countOneBits(vec4<i32>(-1i, global4.x, global4.x, var_0) ^ vec4<i32>(u_input.a, var_0, var_0, 18722i)))), firstTrailingBit(1i));
    global1 = global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(47620u, 99474u, 24306u), vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], global3[_wgslsmith_index_u32(45088u, 2u)])), global3[_wgslsmith_index_u32(countOneBits(41732u), 2u)]), 2u)] << (_wgslsmith_mod_u32(1u, global3[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 2u)]) % 32u);
    var var_1 = ~max(vec2<i32>(~u_input.b, countOneBits(-4946i)), select(global4.xz, global4.yz | ~global4.yx, select(vec2<bool>(false, global0.b), vec2<bool>(global0.b, true), !vec2<bool>(global0.a, false))));
    return -select(-15659i, u_input.b, true);
}

fn func_2() -> i32 {
    let var_0 = -690f;
    var var_1 = Struct_2(!global0.b, false);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -338f));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(809f)))));
    let var_4 = vec4<i32>(~u_input.b >> ((~global3[_wgslsmith_index_u32(~4294967295u, 2u)] & global3[_wgslsmith_index_u32(~59334u << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(34584u, 2u)] << (global3[_wgslsmith_index_u32(13478u, 2u)] % 32u), 2u)], 2u)] % 32u), 2u)]) % 32u), u_input.a, u_input.a, func_3());
    return (_wgslsmith_mult_i32(_wgslsmith_mult_i32(var_4.x, _wgslsmith_mult_i32(u_input.b, 2147483647i)), ~12779i) ^ abs(max(~u_input.a, global4.x))) ^ global4.x;
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_1 {
    global4 = ~firstTrailingBit(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 0i, global4.x) | vec3<i32>(arg_0, 41185i, 4084i), select(vec3<i32>(-1i, 0i, arg_0), vec3<i32>(1i, u_input.b, -25857i), arg_2.b)));
    var var_0 = abs(13962u) >> (~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], global3[_wgslsmith_index_u32(1u, 2u)]), vec2<u32>(46839u, global3[_wgslsmith_index_u32(33459u, 2u)])))) % 32u);
    var var_1 = vec2<u32>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1821u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)], 2u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 2u)], 2u)] | 0u), max(0u, _wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 2u)], 2u)]))) ^ _wgslsmith_dot_vec4_u32((vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(31863u, 2u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)], global3[_wgslsmith_index_u32(62984u, 2u)]) ^ vec4<u32>(global3[_wgslsmith_index_u32(0u, 2u)], 23704u, 37801u, 1u)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16411u, 2u)], 2u)], global3[_wgslsmith_index_u32(120748u, 2u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)]), vec4<u32>(40346u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 12389u, 116901u), vec4<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32531u, 2u)], 2u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(85188u, 2u)], 2u)], 1u)), ~(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 2u)], 2u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(64659u, 2u)], 2u)], 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(76553u, 2u)], 2u)], 2u)]) << (vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)], 16567u, global3[_wgslsmith_index_u32(4294967295u, 2u)], 1u) % vec4<u32>(32u)))), 2u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(26523u, 2u)], 2u)], 2u)]);
    let var_2 = select(var_1.x, firstTrailingBit(abs(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)] << (4294967295u % 32u), global3[_wgslsmith_index_u32(var_1.x, 2u)], _wgslsmith_sub_u32(var_1.x, var_1.x)), 2u)])), arg_2.a);
    let var_3 = 0u;
    return Struct_1(_wgslsmith_f_op_f32(-global2.x));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global0 = Struct_2(all(!(!vec4<bool>(true, arg_0, false, global0.a))), max(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 2u)], 2u)], global3[_wgslsmith_index_u32(40825u, 2u)] >> (0u % 32u)), 0u) != abs(~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)])));
    var var_0 = func_4(reverseBits(_wgslsmith_add_i32(61559i, countOneBits(-44042i >> (global3[_wgslsmith_index_u32(0u, 2u)] % 32u)))), _wgslsmith_div_vec2_i32(~(~vec2<i32>(global4.x, u_input.b)) & vec2<i32>(0i, global4.x), vec2<i32>(-func_2(), -(~global4.x))), Struct_2(false, -u_input.a > (781i >> (global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(23371u, 1u), 2u)] % 32u))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(905f + -660f))), 812f)) - _wgslsmith_f_op_f32(min(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, global2.x)) + _wgslsmith_f_op_f32(f32(-1f) * -511f))))));
    return func_4(_wgslsmith_add_i32(-(~firstLeadingBit(-1i)), 9241i ^ ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, -31547i, -70418i), vec4<i32>(-18988i, global4.x, global4.x, global4.x))), ~(-global4.xz), Struct_2(!(!any(vec3<bool>(global0.a, arg_0, arg_0))), global0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!all(vec3<bool>(global0.a | global0.a, any(vec4<bool>(false, global0.a, false, true)), false | global0.b)), -915f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-440f - global2.x))));
    global3 = array<u32, 2>();
    global1 = reverseBits(1u);
    var var_1 = all(select(vec4<bool>(true, !global0.b, global0.b, (global3[_wgslsmith_index_u32(1u, 2u)] >= global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 2u)], 2u)]) & !global0.b), !select(select(vec4<bool>(global0.b, false, false, false), vec4<bool>(global0.a, true, global0.b, true), global0.a), !vec4<bool>(true, false, false, global0.a), any(vec3<bool>(global0.b, true, global0.b))), !vec4<bool>(true, any(vec3<bool>(true, true, false)), var_0.a >= var_0.a, global0.b)));
    var_1 = global0.b;
    var_1 = !(!all(vec2<bool>(global0.b, all(vec4<bool>(global0.a, global0.b, false, global0.b)))));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + var_0.a) * -982f), -480f));
    var var_3 = func_4(-22131i, _wgslsmith_clamp_vec2_i32(global4.xy, -vec2<i32>(abs(1i), select(global4.x, 1i, global0.b)), global4.yx), Struct_2(!global0.b, true));
    var var_4 = min(~countOneBits(-_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 1i, 614i), vec3<i32>(global4.x, global4.x, global4.x))), vec3<i32>(u_input.a, firstTrailingBit(2147483647i), ~func_3()) | select(min(vec3<i32>(global4.x, global4.x, global4.x), vec3<i32>(u_input.b, 0i, u_input.b)), ~(-vec3<i32>(-2147483647i, 1i, global4.x)), select(vec3<bool>(global0.b, true, global0.a), vec3<bool>(false, false, global0.a), vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, var_4.x & max(~49384i, ~_wgslsmith_mult_i32(global4.x, var_4.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-358f, 267f, global2.x) + vec3<f32>(-1928f, 492f, 1061f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-964f, 440f, var_2)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-815f, -705f, global2.x))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - var_3.a), -637f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2349f * var_3.a))))), -144f);
}

