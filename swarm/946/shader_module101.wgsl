struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: Struct_3,
    e: vec3<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(false, -525f, vec3<i32>(60194i, 1i, 11415i), Struct_3(vec4<bool>(false, true, true, false), vec3<f32>(-1088f, 1683f, 1588f), Struct_2(Struct_1(235f))), vec3<u32>(78169u, 44452u, 10285u)), Struct_4(false, -174f, vec3<i32>(0i, -1i, 14117i), Struct_3(vec4<bool>(true, true, false, false), vec3<f32>(-1314f, -476f, -196f), Struct_2(Struct_1(-486f))), vec3<u32>(0u, 90981u, 0u)), Struct_4(false, -526f, vec3<i32>(-1i, -1i, -60281i), Struct_3(vec4<bool>(true, false, true, true), vec3<f32>(-740f, 738f, -614f), Struct_2(Struct_1(267f))), vec3<u32>(1u, 5358u, 12032u)), Struct_4(true, -595f, vec3<i32>(2147483647i, -13653i, -13679i), Struct_3(vec4<bool>(true, false, false, true), vec3<f32>(-177f, -156f, 1082f), Struct_2(Struct_1(175f))), vec3<u32>(1u, 0u, 37389u)), Struct_4(false, -819f, vec3<i32>(1i, 14368i, -10813i), Struct_3(vec4<bool>(true, true, true, true), vec3<f32>(1503f, -625f, 694f), Struct_2(Struct_1(1076f))), vec3<u32>(51646u, 65067u, 1u)), Struct_4(true, 1000f, vec3<i32>(6798i, 2147483647i, 0i), Struct_3(vec4<bool>(false, false, true, true), vec3<f32>(288f, 1081f, -1000f), Struct_2(Struct_1(-983f))), vec3<u32>(21167u, 34230u, 11566u)));

var<private> global1: array<vec2<i32>, 30>;

var<private> global2: array<vec4<i32>, 18>;

var<private> global3: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: i32) -> vec4<u32> {
    global0 = array<Struct_4, 6>();
    let var_0 = _wgslsmith_f_op_f32(global3.a.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.a) * _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(round(global3.a.a)))));
    return ~firstTrailingBit(select(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 98379u, 1u, u_input.b), vec4<u32>(u_input.b, u_input.b, 41035u, 4294967295u)), min(vec4<u32>(u_input.b, 77208u, u_input.b, u_input.b) ^ vec4<u32>(1u, u_input.b, 0u, 9493u), reverseBits(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))), select(select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, true, false, true), vec4<bool>(true, false, false, arg_0)), select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, arg_0, true, true), true), !vec4<bool>(arg_0, true, false, false))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -116f))));
    let var_0 = _wgslsmith_clamp_vec4_u32(~firstTrailingBit(~vec4<u32>(0u, u_input.b, 37754u, u_input.b)) ^ func_3(true, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, -22193i, 1i), vec4<i32>(u_input.a, u_input.a, 27149i, u_input.a)))), vec4<u32>(abs(u_input.b), ~u_input.b, reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(5614u, 1u, 413u), vec3<u32>(u_input.b, u_input.b, u_input.b))), reverseBits(36601u)), vec4<u32>(select(~u_input.b, u_input.b, false), u_input.b, ~select(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 11530u, 43749u, 39836u), vec4<u32>(0u, u_input.b, 1u, u_input.b)), true), ~(~(u_input.b >> (27550u % 32u)))));
    let var_1 = Struct_5(!vec4<bool>(true, true, any(vec2<bool>(true, true)) | select(true, false, false), !any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(_wgslsmith_div_f32(global3.a.a, 515f), -1090f)), vec3<f32>(1000f, global3.a.a, _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-arg_0)))))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -438f), _wgslsmith_f_op_f32(650f + -499f));
    var var_3 = Struct_3(var_1.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(trunc(444f)), _wgslsmith_f_op_f32(exp2(global3.a.a)), -817f))))), Struct_2(global3.a));
    return Struct_1(-1863f);
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_5 {
    var var_0 = arg_1.a.x;
    let var_1 = func_2(global3.a.a);
    var_0 = !(!(abs(arg_0) >= (arg_3.x << (arg_0 % 32u))));
    return Struct_5(select(arg_1.a, vec4<bool>(true & (arg_1.a.x || false), arg_2.a.x, true, !any(arg_1.a)), all(arg_2.a.ww)), vec3<f32>(_wgslsmith_f_op_f32(-1000f * global3.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.b.x))) - -1439f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1762f)) + global3.a.a), _wgslsmith_f_op_f32(global3.a.a + _wgslsmith_f_op_f32(max(825f, 1000f))))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    return ~(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 0u), arg_0.a.yw), ~vec2<u32>(u_input.b, u_input.b))) | (abs(29536u) & select(u_input.b ^ 0u, 75744u, u_input.a >= 1257i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(all(vec3<bool>(true, true, true)), func_4(func_1(4294967295u, Struct_3(vec4<bool>(true, true, false, false), vec3<f32>(-2106f, global3.a.a, global3.a.a), Struct_2(global3.a)), Struct_3(vec4<bool>(false, false, false, true), vec3<f32>(global3.a.a, global3.a.a, -382f), Struct_2(global3.a)), vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)), global3.a, Struct_1(-941f)) <= (11264u << (_wgslsmith_mod_u32(u_input.b, u_input.b) % 32u)), any(select(func_1(2680u, Struct_3(vec4<bool>(false, false, false, false), vec3<f32>(global3.a.a, -1106f, 1921f), Struct_2(Struct_1(global3.a.a))), Struct_3(vec4<bool>(false, true, true, false), vec3<f32>(global3.a.a, 1000f, 282f), Struct_2(global3.a)), vec4<u32>(u_input.b, 33606u, u_input.b, u_input.b)).a.zzx, vec3<bool>(false, false, true), true)), any(vec2<bool>(false, false)) | (global3.a.a != global3.a.a)));
    let var_1 = vec2<i32>(1i, u_input.a);
    var var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(10633i), ~var_1.x, ~var_1.x), countOneBits(~vec3<i32>(var_1.x, 0i, -4849i))), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(30430i, 1i, -2147483647i, var_1.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, 38292i, -23587i, u_input.a), global2[_wgslsmith_index_u32(u_input.b, 18u)], global2[_wgslsmith_index_u32(u_input.b, 18u)]), vec4<i32>(-18679i, var_1.x, 6884i, -2147483647i), ~vec4<i32>(2147483647i, u_input.a, 20398i, 2147483647i)))), vec2<i32>(u_input.a, _wgslsmith_dot_vec4_i32(select(vec4<i32>(2147483647i, u_input.a, -12745i, var_1.x), vec4<i32>(var_1.x, var_1.x, 2147483647i, -1i), vec4<bool>(false, var_0, false, var_0)), _wgslsmith_mult_vec4_i32(vec4<i32>(28802i, -1i, 41047i, -1i), global2[_wgslsmith_index_u32(81624u, 18u)])) << (_wgslsmith_sub_u32(min(8271u, u_input.b), u_input.b) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-72350i & countOneBits(-36289i ^ var_2.x), _wgslsmith_dot_vec4_i32(max(_wgslsmith_sub_vec4_i32(global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(54888u, 18u)]), global2[_wgslsmith_index_u32(26105u, 18u)] & global2[_wgslsmith_index_u32(u_input.b, 18u)]), vec4<i32>(var_1.x, var_2.x, 86814i, 65786i) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(10880i, -11833i, -21966i, -2147483647i), global2[_wgslsmith_index_u32(u_input.b, 18u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1020f, global3.a.a)), -1537f)), _wgslsmith_f_op_f32(f32(-1f) * -1127f));
}

