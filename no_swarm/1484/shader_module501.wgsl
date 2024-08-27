struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(85667i, 1178f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = Struct_1(-13299i, _wgslsmith_f_op_f32(select(817f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * arg_0.b), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), true)))));
    var var_0 = 0i;
    return global0.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<bool> {
    global0 = arg_0;
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.b, _wgslsmith_f_op_f32(-162f * 617f))));
    var var_1 = arg_0.a;
    var var_2 = Struct_1(2147483647i, _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b)) - _wgslsmith_f_op_f32(sign(var_0.x))) * var_0.x)));
    return select(!select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec3<bool>(true, false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), select(vec3<bool>(all(vec4<bool>(false, true, true, true)), !all(vec3<bool>(false, false, false)), true), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), vec3<bool>(all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true)), false, all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))))));
}

fn func_1() -> Struct_1 {
    var var_0 = reverseBits(_wgslsmith_add_i32(33169i, global0.a));
    var_0 = -global0.a ^ ~_wgslsmith_mod_i32(-1i, ~25000i);
    var var_1 = !vec3<bool>(func_2(Struct_1(-1i, -695f)) != 22443i, true, any(select(func_3(Struct_1(u_input.b.x, -1141f), vec4<i32>(u_input.a, 34691i, 2147483647i, 17772i)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), any(vec4<bool>(true, false, false, true)))));
    let var_2 = -1i;
    let var_3 = countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(~_wgslsmith_div_u32(0u, 1u), 0u)));
    return Struct_1(11828i ^ (u_input.b.x << (1u % 32u)), _wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(ceil(global0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global0 = Struct_1(firstTrailingBit(global0.a), _wgslsmith_f_op_f32(select(global0.b, 559f, true)));
    global0 = Struct_1(countOneBits(_wgslsmith_add_i32(global0.a, 67474i ^ u_input.a)), global0.b);
    global0 = func_1();
    var var_1 = ~abs(min(abs(vec4<i32>(67846i, global0.a, 0i, -325i)), vec4<i32>(19472i, -56388i, global0.a, u_input.a))) | -vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, 12634i), min(2147483647i, -36390i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b.yx, u_input.b.yx), global0.a), abs(max(0i, u_input.a)), _wgslsmith_mod_i32(-global0.a, ~(-16129i)));
    global0 = Struct_1(_wgslsmith_mod_i32(u_input.b.x << (1u % 32u), firstLeadingBit(0i)), _wgslsmith_f_op_f32(-global0.b));
    let var_2 = abs(firstLeadingBit(min(max(u_input.b, vec3<i32>(32125i, global0.a, 1i)) << (_wgslsmith_add_vec3_u32(vec3<u32>(26193u, 18523u, 33103u), vec3<u32>(67497u, 0u, 41459u)) % vec3<u32>(32u)), ~(vec3<i32>(var_1.x, global0.a, 8141i) << (vec3<u32>(0u, 1u, 0u) % vec3<u32>(32u))))));
    var_1 = ~_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(select(reverseBits(vec4<i32>(var_1.x, var_1.x, var_1.x, 4941i)), ~vec4<i32>(1i, var_1.x, global0.a, -15945i), vec4<bool>(false, false, false, var_0)), vec4<i32>(_wgslsmith_add_i32(u_input.a, -2147483647i), _wgslsmith_mult_i32(0i, -37926i), var_2.x, 2147483647i)), select(vec4<i32>(2147483647i, 1092i, firstLeadingBit(global0.a), var_2.x), vec4<i32>(firstTrailingBit(global0.a), u_input.a, 1i, -35845i), true));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, -32069i, -6415i, global0.a), -vec4<i32>(1i, u_input.a, 3921i, -2147483647i), ~vec4<i32>(-17942i, 17187i, -2147483647i, 2972i))) >> (~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(28456u, 63544u, 16935u, 56720u), vec4<u32>(0u, 4294967295u, 1u, 22859u), vec4<u32>(1u, 28759u, 38809u, 45783u)), ~vec4<u32>(4294967295u, 4294967295u, 66543u, 37923u), max(vec4<u32>(47669u, 0u, 0u, 14292u), vec4<u32>(10298u, 2614u, 0u, 50942u))) % vec4<u32>(32u)), var_1.wx, _wgslsmith_div_vec2_u32(~vec2<u32>(0u, 4294967295u), vec2<u32>(select(20298u, 30959u, false), 1u)) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec4<i32>(22478i, -37975i, -1i, global0.a) << (_wgslsmith_add_vec4_u32(firstTrailingBit(reverseBits(vec4<u32>(1u, 53592u, 73648u, 0u))), vec4<u32>(1u, 1u, 47135u, 1u)) % vec4<u32>(32u)));
}

