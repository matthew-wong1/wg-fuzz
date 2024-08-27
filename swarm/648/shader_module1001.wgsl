struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-603f, vec2<i32>(-5717i, 8634i), vec4<u32>(0u, 27359u, 48633u, 1u), 359f), Struct_1(1177f, vec2<i32>(2147483647i, -35845i), vec4<u32>(0u, 4294967295u, 0u, 1u), 1000f), Struct_1(565f, vec2<i32>(-19748i, 1i), vec4<u32>(86819u, 1u, 0u, 4731u), 364f), Struct_1(343f, vec2<i32>(4966i, 2147483647i), vec4<u32>(1u, 25028u, 22624u, 10545u), -268f), Struct_1(-1179f, vec2<i32>(2147483647i, -37676i), vec4<u32>(0u, 28699u, 68348u, 20426u), -226f), Struct_1(681f, vec2<i32>(47839i, 28881i), vec4<u32>(1u, 0u, 4294967295u, 17590u), -1000f), Struct_1(-577f, vec2<i32>(i32(-2147483648), 31995i), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), 182f), Struct_1(-367f, vec2<i32>(i32(-2147483648), 2147483647i), vec4<u32>(48188u, 26002u, 0u, 1u), 1212f), Struct_1(-1197f, vec2<i32>(0i, 2147483647i), vec4<u32>(4294967295u, 0u, 9920u, 4294967295u), -652f), Struct_1(616f, vec2<i32>(-69159i, 19377i), vec4<u32>(4294967295u, 17883u, 0u, 177757u), 572f), Struct_1(1407f, vec2<i32>(78422i, 34490i), vec4<u32>(63243u, 23249u, 28042u, 1u), -1242f), Struct_1(706f, vec2<i32>(2912i, 68358i), vec4<u32>(12830u, 0u, 21706u, 13690u), -1000f), Struct_1(-2087f, vec2<i32>(-1i, 2147483647i), vec4<u32>(4294967295u, 1u, 65310u, 43977u), -2244f), Struct_1(725f, vec2<i32>(3937i, -1477i), vec4<u32>(24285u, 14714u, 0u, 0u), -1187f), Struct_1(535f, vec2<i32>(2147483647i, -15729i), vec4<u32>(938u, 0u, 0u, 9661u), 1803f), Struct_1(-1000f, vec2<i32>(-43372i, 2147483647i), vec4<u32>(1u, 1u, 1u, 24591u), -242f), Struct_1(-164f, vec2<i32>(29003i, -59689i), vec4<u32>(4294967295u, 0u, 1u, 73849u), -423f), Struct_1(362f, vec2<i32>(0i, 1i), vec4<u32>(27051u, 4294967295u, 0u, 4294967295u), -726f), Struct_1(227f, vec2<i32>(1i, -1i), vec4<u32>(543u, 72979u, 0u, 0u), 211f), Struct_1(1000f, vec2<i32>(32404i, -1670i), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), 215f), Struct_1(189f, vec2<i32>(i32(-2147483648), -28443i), vec4<u32>(49632u, 4294967295u, 50368u, 0u), -259f), Struct_1(1000f, vec2<i32>(34925i, -32884i), vec4<u32>(4294967295u, 1u, 4294967295u, 20390u), -153f), Struct_1(-1324f, vec2<i32>(41124i, -1i), vec4<u32>(1u, 23459u, 24959u, 0u), 1307f), Struct_1(1423f, vec2<i32>(-27432i, 0i), vec4<u32>(1u, 7672u, 1u, 4294967295u), 2196f), Struct_1(1243f, vec2<i32>(-25676i, -17057i), vec4<u32>(0u, 0u, 0u, 58953u), -981f), Struct_1(1000f, vec2<i32>(5374i, 1i), vec4<u32>(18153u, 4294967295u, 4294967295u, 4294967295u), -1000f), Struct_1(-489f, vec2<i32>(37416i, -889i), vec4<u32>(23309u, 4294967295u, 0u, 95826u), 269f), Struct_1(1000f, vec2<i32>(1140i, -27563i), vec4<u32>(38916u, 1u, 4294967295u, 0u), -1344f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = vec2<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(904f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x)))));
    return _wgslsmith_mod_u32(_wgslsmith_mod_u32(select(_wgslsmith_add_u32(_wgslsmith_add_u32(85580u, u_input.d), 1u), _wgslsmith_mult_u32(u_input.c, 1u << (1u % 32u)), true), ~4294967295u), 17666u);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: u32, arg_3: vec4<i32>) -> bool {
    let var_0 = ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1 ^ 56222u, arg_1, u_input.d), ~(~vec3<u32>(1u, 75301u, arg_2))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~arg_2, arg_2), arg_1, var_0.x, ~abs(u_input.d) >> (firstTrailingBit(~arg_1) % 32u)), ~(~((vec4<u32>(var_0.x, 55199u, arg_1, 1u) << (vec4<u32>(4294967295u, arg_1, var_0.x, 1u) % vec4<u32>(32u))) << (vec4<u32>(u_input.c, 1u, 4294967295u, var_0.x) % vec4<u32>(32u))))), 28u)];
    let var_2 = ~_wgslsmith_add_u32(~0u, var_1.c.x);
    var var_3 = arg_3.zxy;
    var_3 = arg_3.xzx;
    return func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-140f, -616f, -1041f, 1388f)) * vec4<f32>(-1000f, -920f, var_1.d, arg_0)) - vec4<f32>(var_1.a, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1167f), -860f))) >= arg_2;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = 4294967295u;
    var var_1 = u_input.e > 42769u;
    var var_2 = vec4<f32>(arg_1.d, 995f, arg_2, _wgslsmith_f_op_f32(floor(arg_1.d)));
    let var_3 = vec4<f32>(arg_1.d, _wgslsmith_f_op_f32(-var_2.x), arg_1.a, _wgslsmith_f_op_f32(-156f * 1000f));
    let var_4 = vec4<bool>(false, select(true, firstTrailingBit(-2147483647i) < -12698i, func_2(_wgslsmith_f_op_f32(1112f + arg_2), u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(86413u, 4294967295u)), max(vec4<i32>(arg_1.b.x, arg_1.b.x, -2042i, 2147483647i), vec4<i32>(arg_1.b.x, -1i, u_input.a, arg_1.b.x)))) == (!(!arg_0) || !all(vec2<bool>(true, false))), false, _wgslsmith_add_u32(var_0, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, arg_1.c.x, u_input.c), ~u_input.d)) > ~max(var_0, ~var_0));
    return -651f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 28>();
    global1 = array<Struct_1, 28>();
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-818f - -299f), 826f, -438f, _wgslsmith_f_op_f32(trunc(-170f))) - vec4<f32>(_wgslsmith_f_op_f32(365f * -1264f), _wgslsmith_f_op_f32(f32(-1f) * -952f), -418f, _wgslsmith_f_op_f32(select(-999f, 620f, true)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-268f, -685f, 120f, -1456f))), vec4<f32>(2415f, _wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_f32(269f + 1803f), -1246f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(func_1(false, Struct_1(var_1.x, vec2<i32>(u_input.b, -17173i), vec4<u32>(4294967295u, 4294967295u, var_0, u_input.c), var_1.x), -265f)), _wgslsmith_f_op_f32(abs(var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, firstTrailingBit(vec4<i32>(countOneBits(u_input.a), -abs(79353i), ~u_input.b, -u_input.a)), -159f, firstLeadingBit(_wgslsmith_dot_vec4_u32(~(vec4<u32>(25104u, u_input.e, 0u, u_input.e) & vec4<u32>(103576u, 27536u, u_input.d, u_input.c)), ~_wgslsmith_div_vec4_u32(vec4<u32>(40896u, 38903u, u_input.e, u_input.e), vec4<u32>(u_input.e, u_input.d, 4294967295u, u_input.c)))));
}

