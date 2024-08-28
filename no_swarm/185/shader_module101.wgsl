struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
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

var<private> global0: array<Struct_1, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 16>();
    let var_0 = Struct_2(select(vec2<bool>(true, true), vec2<bool>(!any(vec2<bool>(true, true)), !all(vec2<bool>(true, false))), !vec2<bool>(true, any(vec3<bool>(false, true, true)))), _wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~0u, 1u), 1u, 1u)), vec2<i32>(~select(-2147483647i, u_input.b ^ u_input.d.x, false), ~u_input.d.x));
    var var_1 = firstTrailingBit(vec4<u32>(11733u, select(0u, firstLeadingBit(var_0.b), var_0.a.x), 20367u, 81373u) >> (~vec4<u32>(4294967295u, var_0.b, 1u, var_0.b) % vec4<u32>(32u)));
    var var_2 = var_0.c.x;
    return select(0u, var_0.b, any(vec4<bool>(true, true, true, var_0.c.x < u_input.c.x)) | var_0.a.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>) -> i32 {
    var var_0 = arg_0.x;
    global0 = array<Struct_1, 16>();
    var var_1 = ~func_3();
    let var_2 = !(_wgslsmith_clamp_i32(u_input.a.x, u_input.d.x, 29458i) >= 1i);
    let var_3 = vec4<u32>(4294967295u, _wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, select(0u, 0u, arg_1.x)), _wgslsmith_add_u32(1u, ~1u)), ~11295u >> (1u % 32u), _wgslsmith_mult_u32(reverseBits(_wgslsmith_mult_u32(0u, 8112u)), 4294967295u)) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(select(1u, 1u, arg_0.x), ~0u, _wgslsmith_add_u32(35727u, 7287u), ~0u), vec4<u32>(~47975u, 27063u, ~40829u, 22041u), firstTrailingBit(~vec4<u32>(1u, 0u, 133u, 0u)));
    return -36957i;
}

fn func_1(arg_0: bool) -> vec2<u32> {
    var var_0 = Struct_1(~_wgslsmith_add_u32(1u, 1u), countOneBits(vec3<i32>(~1i, func_2(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), arg_0), !vec4<bool>(arg_0, arg_0, false, true)), ~firstTrailingBit(36681i))), firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(countOneBits(72913u), ~43395u, 4294967295u), _wgslsmith_mod_u32(_wgslsmith_add_u32(9695u, 49952u), 1u), ~(~1u))), arg_0);
    let var_1 = vec4<u32>(56839u, 0u, ~11694u, 4294967295u);
    var var_2 = Struct_1(reverseBits(21168u), vec3<i32>(u_input.d.x, ~var_0.b.x, 0i), countOneBits(firstLeadingBit(vec3<u32>(~74237u, ~0u, ~var_0.c.x))), !(!any(vec2<bool>(var_0.d, false))));
    var_2 = Struct_1(firstTrailingBit(~var_1.x), min(-vec3<i32>(0i, ~var_2.b.x, -84830i), -countOneBits(var_0.b)), vec3<u32>(var_2.a, 1u, var_0.c.x), all(vec2<bool>(all(vec2<bool>(true, false)) & (var_2.b.x >= 388i), false)));
    var var_3 = Struct_2(!vec2<bool>(true, var_2.d), var_2.a, countOneBits(vec2<i32>(-41724i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, -6273i, 2147483647i), vec4<i32>(u_input.d.x, var_2.b.x, 2014i, u_input.c.x)), func_2(vec2<bool>(var_2.d, true), vec4<bool>(arg_0, false, false, true))))));
    return vec2<u32>(64930u, 6792u);
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: f32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = true;
    global0 = array<Struct_1, 16>();
    let var_1 = !any(vec4<bool>(true, true, true, true));
    var_0 = var_1;
    let var_2 = true;
    return Struct_1(~firstLeadingBit(0u), _wgslsmith_div_vec3_i32(-u_input.a, vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, arg_1, -2147483647i), vec3<i32>(1i, 50564i, -852i)), u_input.a), ~(u_input.b | arg_1), -2147483647i)), vec3<u32>(11158u, ~45267u, ~(~select(arg_3.x, arg_3.x, var_2))), all(vec3<bool>(var_1, var_1, !(false & var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(max(func_1(!any(vec3<bool>(false, true, false))), vec2<u32>(70650u, 60711u)), _wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, u_input.d.x), -u_input.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(275f, -401f))), _wgslsmith_f_op_f32(f32(-1f) * -207f), all(vec2<bool>(true, true)))))), vec4<u32>(_wgslsmith_clamp_u32(0u, countOneBits(_wgslsmith_add_u32(0u, 4294967295u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(45163u, 4294967295u, 1u, 0u), vec4<u32>(1u, 1u, 1u, 1u))), ~79667u, 162u, ~(~reverseBits(52160u))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(942f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-590f, 968f) + 289f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-344f + -248f))) - _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(513f + -141f), var_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -228f))));
    let x = u_input.a;
    s_output = StorageBuffer(-173f);
}

