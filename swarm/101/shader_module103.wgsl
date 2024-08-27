struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: array<vec4<i32>, 9>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> i32 {
    global0 = array<i32, 32>();
    let var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(12751u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(53200u, 0u)), vec2<u32>(1u, 1u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(1u, 0u))), _wgslsmith_add_vec2_u32(vec2<u32>(~55139u, 13347u), vec2<u32>(firstTrailingBit(5759u), 4294967295u))) ^ ~(~(~abs(vec2<u32>(28967u, 75023u))));
    global1 = array<vec4<i32>, 9>();
    return ~1923i;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_2) -> bool {
    var var_0 = arg_2.b;
    global1 = array<vec4<i32>, 9>();
    var_0 = u_input.b;
    var_0 = ~vec4<i32>(6423i, -2147483647i, _wgslsmith_clamp_i32(-arg_3.a.b.x, -33364i, 0i & var_0.x), 9074i) | arg_2.b;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-812f, _wgslsmith_f_op_f32(-1305f + -1714f)))));
    return select(arg_2.e, arg_2.c.a & arg_1.c.x, true);
}

fn func_3(arg_0: vec3<bool>) -> vec4<i32> {
    global1 = array<vec4<i32>, 9>();
    let var_0 = Struct_1(false, u_input.b, select(arg_0, select(!arg_0, vec3<bool>(arg_0.x, !arg_0.x, any(arg_0.xx)), true), select(!(!vec3<bool>(arg_0.x, arg_0.x, true)), arg_0, vec3<bool>(arg_0.x, true, true))), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(19474u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(28040u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 18224u, 17890u, 25604u), vec4<u32>(64416u, 0u, 3380u, 55742u))), ~(~vec4<u32>(58503u, 1u, 1u, 1u)), vec4<u32>(18554u, 14789u, 24878u, 45002u) ^ select(vec4<u32>(10675u, 4294967295u, 17648u, 27466u), vec4<u32>(0u, 1u, 29069u, 134314u), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))), max(~(~vec4<u32>(43382u, 23770u, 0u, 1u)), ~vec4<u32>(0u, 4294967295u, 0u, 1u))));
    global1 = array<vec4<i32>, 9>();
    global1 = array<vec4<i32>, 9>();
    let var_1 = -u_input.b;
    return countOneBits(global1[_wgslsmith_index_u32(var_0.d, 9u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 32>();
    var var_0 = Struct_3(Struct_2(Struct_1(true, u_input.b, vec3<bool>(true, true, true), 67288u), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(74142u, 29802u), vec2<u32>(0u, 4294967295u)) >> (firstTrailingBit(69058u) % 32u))), ~vec4<i32>(~abs(u_input.b.x), func_1(), 1i, global0[_wgslsmith_index_u32(~1679u << (~4294967295u % 32u), 32u)]), Struct_1(true, ~(-vec4<i32>(-6393i, 23644i, global0[_wgslsmith_index_u32(58097u, 32u)], 1i) << (abs(vec4<u32>(4294967295u, 11948u, 4294967295u, 68658u)) % vec4<u32>(32u))), !vec3<bool>(func_2(vec2<u32>(6587u, 1u), Struct_1(true, global1[_wgslsmith_index_u32(0u, 9u)], vec3<bool>(false, true, false), 50770u), Struct_3(Struct_2(Struct_1(true, vec4<i32>(global0[_wgslsmith_index_u32(21339u, 32u)], -7884i, 21959i, global0[_wgslsmith_index_u32(0u, 32u)]), vec3<bool>(false, true, true), 0u), 10316u), vec4<i32>(-54794i, global0[_wgslsmith_index_u32(63617u, 32u)], 0i, global0[_wgslsmith_index_u32(30630u, 32u)]), Struct_1(false, global1[_wgslsmith_index_u32(0u, 9u)], vec3<bool>(true, false, true), 1u), 32756u, true), Struct_2(Struct_1(false, vec4<i32>(u_input.b.x, u_input.a.x, global0[_wgslsmith_index_u32(1u, 32u)], u_input.a.x), vec3<bool>(true, false, true), 1u), 11063u)), true, true), ~(~select(4294967295u, 0u, true))), ~(~0u), true);
    let var_1 = Struct_3(Struct_2(Struct_1(var_0.a.a.a, vec4<i32>(-global0[_wgslsmith_index_u32(26370u, 32u)], global0[_wgslsmith_index_u32(firstTrailingBit(47281u), 32u)], min(-29802i, 1009i), -global0[_wgslsmith_index_u32(0u, 32u)]), !vec3<bool>(false, var_0.c.c.x, true), ~var_0.a.a.d), ~var_0.d), _wgslsmith_div_vec4_i32(u_input.a, func_3(var_0.a.a.c)), var_0.c, _wgslsmith_clamp_u32(~_wgslsmith_div_u32(71777u, 34736u), var_0.c.d, var_0.a.b) & ~(~(~9821u)), var_0.c.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1626f), -184f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1439f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(706f + -1323f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-221f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-400f, 530f)) + _wgslsmith_f_op_f32(1045f + 749f)))));
    var var_3 = Struct_3(Struct_2(var_0.a.a, 17540u), abs(vec4<i32>(global0[_wgslsmith_index_u32(65333u, 32u)], -var_1.b.x, 1i, -1i)), var_1.a.a, ~_wgslsmith_mod_u32(_wgslsmith_div_u32(78116u, ~var_1.c.d), ~59111u >> (var_0.d % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.x, -1372f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_2.x, 1000f, var_1.c.a))))) < -814f);
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, min(_wgslsmith_mod_u32(var_1.c.d, 4294967295u), 0u), var_1.a.a.d), 14284u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))))))));
}

