struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: Struct_2,
    d: vec3<u32>,
    e: f32,
}

struct Struct_5 {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), -3868i), Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(2147483647i, 1i, 42929i), -1665i), Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(1i, 1i, 0i), 23148i), Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(0i, 2147483647i, 12209i), -1i), Struct_1(vec4<bool>(false, true, true, true), vec3<i32>(2709i, 0i, 10692i), 1i), Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(-1i, 22990i, -951i), 0i), Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(2147483647i, 2147483647i, 31551i), -49115i), Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(2147483647i, -1i, 1i), -9622i), Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(63123i, 19417i, -1i), 2147483647i), Struct_1(vec4<bool>(true, false, true, true), vec3<i32>(-56380i, -27832i, 1i), -19978i), Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(0i, i32(-2147483648), 49751i), -20141i), Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(2147483647i, i32(-2147483648), -30232i), 2147483647i), Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(-1509i, 1i, 52292i), -23848i), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(-1i, -41858i, 35967i), i32(-2147483648)), Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(-28361i, 0i, 1i), 2147483647i), Struct_1(vec4<bool>(false, true, true, true), vec3<i32>(-1i, 0i, -1i), 16699i), Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(-1i, i32(-2147483648), 2147483647i), -1i));

var<private> global1: array<f32, 7>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec3<i32>) -> i32 {
    global1 = array<f32, 7>();
    global0 = array<Struct_1, 17>();
    let var_0 = -1000f;
    global0 = array<Struct_1, 17>();
    global1 = array<f32, 7>();
    return u_input.a;
}

fn func_3() -> bool {
    let var_0 = -vec2<i32>(-func_1(~vec3<i32>(-2147483647i, u_input.a, 0i)), ~(-43133i));
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(min(~(~1u), firstTrailingBit(~1u)), 66598u, 0u), ~1u, ~(~select(_wgslsmith_dot_vec2_u32(vec2<u32>(39397u, 0u), vec2<u32>(36189u, 67070u)), 1u, true)));
    var_1 = _wgslsmith_dot_vec2_u32(max(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(1u, 1u)), ~vec2<u32>(51729u, 27397u), reverseBits(select(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 19912u), vec2<bool>(true, true)))), vec2<u32>(1u, 1u)), reverseBits(_wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(4294967295u, 1u)), ~abs(vec2<u32>(4294967295u, 72605u)), ~vec2<u32>(0u, 4503u))));
    return !(any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), any(vec4<bool>(true, true, false, false)))) & true);
}

fn func_2() -> vec4<bool> {
    global1 = array<f32, 7>();
    let var_0 = Struct_2(true, !all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false)) | (func_3() && false), _wgslsmith_dot_vec3_u32(vec3<u32>(~4592u, 1819u, 0u >> (1u % 32u)), vec3<u32>(1u, _wgslsmith_sub_u32(reverseBits(4294967295u), 1u), 1u)));
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    var var_1 = Struct_2(var_0.a, true, firstLeadingBit(var_0.c));
    return select(!select(vec4<bool>(u_input.a >= -1i, !var_1.a, var_0.b, false | var_0.a), vec4<bool>(!var_0.b, any(vec2<bool>(var_1.b, false)), false, true), vec4<bool>(false, !var_0.b, false, !var_0.b)), vec4<bool>(all(!vec3<bool>(false, var_0.a, var_0.a)), var_0.b, ~(u_input.a & 1i) > u_input.a, all(vec4<bool>(global1[_wgslsmith_index_u32(var_0.c, 7u)] != 339f, var_0.b, var_0.a, true))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(!vec4<bool>(true, u_input.a > -1i, any(vec3<bool>(false, false, false)), true), reverseBits(vec3<i32>(i32(-1i) * -24970i, countOneBits(-23186i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -63885i), vec3<i32>(u_input.a, -1i, 2147483647i)))), func_1(vec3<i32>(0i, select(u_input.a, -4188i, true), i32(-1i) * -54943i))), global1[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(vec2<u32>(28690u, 4294967295u), vec2<u32>(4294967295u, 4294967295u)) | _wgslsmith_div_u32(1u, 1u)), 7u)]);
    global0 = array<Struct_1, 17>();
    var var_1 = ~(-select(firstLeadingBit(select(vec4<i32>(-18908i, 0i, 2147483647i, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), vec4<bool>(true, var_0.a.a.x, false, true))), vec4<i32>(1i, var_0.a.c, 1i, _wgslsmith_add_i32(u_input.a, var_0.a.b.x)), select(var_0.a.a, select(var_0.a.a, vec4<bool>(true, var_0.a.a.x, false, true), vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x)), var_0.a.a)));
    var var_2 = Struct_1(vec4<bool>(all(func_2()), true, false & !(437f < var_0.b), var_0.a.a.x), vec3<i32>(~(-var_1.x), var_0.a.b.x, firstTrailingBit(i32(-1i) * -var_0.a.b.x)), -1i & var_0.a.c);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(577f, -421f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(48271u, 7u)], -1335f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(32060u, 7u)], 484f) + var_3) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-326f, 499f) + vec2<f32>(604f, global1[_wgslsmith_index_u32(16863u, 7u)])))), 6208u, 22330i, 1u, 1u);
}

