struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 2>;

var<private> global1: array<bool, 15>;

var<private> global2: array<vec2<i32>, 28>;

var<private> global3: Struct_3;

var<private> global4: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(vec3<bool>(false, true, true), vec2<u32>(0u, 2522u), true), Struct_4(vec3<bool>(true, true, false), vec2<u32>(35233u, 0u), true), Struct_4(vec3<bool>(false, false, true), vec2<u32>(4294967295u, 4294967295u), false), Struct_4(vec3<bool>(false, true, false), vec2<u32>(1u, 1u), true), Struct_4(vec3<bool>(false, true, false), vec2<u32>(37816u, 4294967295u), false), Struct_4(vec3<bool>(false, false, true), vec2<u32>(4294967295u, 5369u), false), Struct_4(vec3<bool>(false, true, true), vec2<u32>(0u, 61800u), true), Struct_4(vec3<bool>(true, false, true), vec2<u32>(18591u, 15668u), false), Struct_4(vec3<bool>(false, false, true), vec2<u32>(0u, 20282u), true), Struct_4(vec3<bool>(false, false, true), vec2<u32>(59752u, 4294967295u), true), Struct_4(vec3<bool>(true, false, true), vec2<u32>(15524u, 33540u), true), Struct_4(vec3<bool>(true, true, false), vec2<u32>(0u, 21892u), true), Struct_4(vec3<bool>(false, true, true), vec2<u32>(61608u, 1u), false), Struct_4(vec3<bool>(false, true, false), vec2<u32>(50152u, 4294967295u), false), Struct_4(vec3<bool>(false, true, false), vec2<u32>(4294967295u, 48102u), false));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4) -> vec2<bool> {
    global0 = array<vec3<f32>, 2>();
    global4 = array<Struct_4, 15>();
    let var_0 = global3.a;
    var var_1 = Struct_4(arg_1.a, vec2<u32>(~(~1u << (~global3.a.a % 32u)), global3.a.a), any(arg_1.a.zz) == (arg_0.x < _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(round(-633f)))));
    let var_2 = global3.a;
    return vec2<bool>(!var_1.a.x, global1[_wgslsmith_index_u32(global3.a.a, 15u)]);
}

fn func_2(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = arg_0;
    let var_1 = select(vec2<bool>(!global1[_wgslsmith_index_u32(global3.a.a >> (0u % 32u), 15u)] | !any(vec2<bool>(global1[_wgslsmith_index_u32(0u, 15u)], false)), u_input.a.x <= global3.a.b), !(!(!(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 15u)], false)))), !(!(!func_3(vec4<f32>(-496f, -212f, -421f, -795f), global4[_wgslsmith_index_u32(arg_0.a.a, 15u)]))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -766f);
    var var_3 = Struct_4(select(vec3<bool>(true, true, arg_0.a.a < global3.a.a), vec3<bool>(true, all(vec2<bool>(var_1.x, global1[_wgslsmith_index_u32(arg_0.a.a, 15u)])), true), global1[_wgslsmith_index_u32(4294967295u, 15u)]), ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.a.a, 4294967295u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.a.a, var_0.a.a), vec2<u32>(4294967295u, 58202u), vec2<u32>(1u, global3.a.a))), var_1.x);
    let var_4 = ~_wgslsmith_mult_vec2_u32(abs(vec2<u32>(var_0.a.a, ~1u)), vec2<u32>(~_wgslsmith_sub_u32(11513u, 1u), arg_0.a.a));
    return _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, abs(0u)), var_4.x ^ min(54198u, var_4.x)), ~1u), select(var_4, vec2<u32>(var_4.x, arg_0.a.a & 50138u) & ~vec2<u32>(4294967295u, 38467u), vec2<bool>(any(select(var_3.a, var_3.a, vec3<bool>(false, false, var_1.x))), true)));
}

fn func_1(arg_0: f32) -> u32 {
    return ~max(global3.a.a, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(46081u, 92010u), func_2(Struct_3(global3.a))), vec2<u32>(69144u, max(1u, global3.a.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~_wgslsmith_sub_vec3_u32(~(vec3<u32>(global3.a.a, global3.a.a, global3.a.a) >> (vec3<u32>(45332u, global3.a.a, global3.a.a) % vec3<u32>(32u))), ~(~vec3<u32>(1u, 40976u, 18051u))), vec3<u32>(~_wgslsmith_mod_u32(global3.a.a, 4294967295u) ^ _wgslsmith_add_u32(~36599u, global3.a.a), _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(23014u, global3.a.a, 1u, 37044u), vec4<u32>(global3.a.a, global3.a.a, 16120u, global3.a.a)), countOneBits(~vec4<u32>(global3.a.a, 40190u, 32450u, global3.a.a))), _wgslsmith_div_u32(firstLeadingBit(~0u), ~func_1(154f))));
    let var_1 = Struct_3(global3.a);
    global0 = array<vec3<f32>, 2>();
    var var_2 = var_1;
    var var_3 = var_2.a.a;
    let var_4 = select(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1719f)) <= _wgslsmith_f_op_f32(select(-309f, -794f, all(vec2<bool>(global1[_wgslsmith_index_u32(53312u, 15u)], true)))), any(vec3<bool>(!global1[_wgslsmith_index_u32(17833u, 15u)], 39134u <= var_0.x, global1[_wgslsmith_index_u32(4294967295u, 15u)] & false)), true, false), !select(select(!vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(global3.a.a, 15u)], true), vec4<bool>(global1[_wgslsmith_index_u32(35134u, 15u)], global1[_wgslsmith_index_u32(var_1.a.a, 15u)], true, global1[_wgslsmith_index_u32(var_0.x, 15u)]), all(vec4<bool>(global1[_wgslsmith_index_u32(global3.a.a, 15u)], false, true, false))), !(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(var_0.x, 15u)], global1[_wgslsmith_index_u32(17313u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)])), select(!vec4<bool>(global1[_wgslsmith_index_u32(84295u, 15u)], global1[_wgslsmith_index_u32(var_0.x, 15u)], global1[_wgslsmith_index_u32(var_0.x, 15u)], global1[_wgslsmith_index_u32(var_1.a.a, 15u)]), !vec4<bool>(true, false, global1[_wgslsmith_index_u32(44292u, 15u)], false), !vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 15u)], false, true))), true | (!(u_input.a.x > 1i) && global1[_wgslsmith_index_u32(var_0.x, 15u)]));
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-555f, 1000f, 135f, 457f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -545f), _wgslsmith_f_op_f32(floor(-2076f)), _wgslsmith_f_op_f32(max(-880f, -1230f)), _wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1693f, -414f, 683f) + vec4<f32>(-1388f, 1809f, -3434f, -106f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1539f, -1618f, -206f, 891f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-1i, var_2.a.b), vec4<i32>(min(~u_input.a.x, u_input.a.x), -17159i, _wgslsmith_div_i32(var_1.a.b, var_1.a.b), reverseBits(global3.a.b << (3119u % 32u))), var_0.zz, abs(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.a.b, u_input.a.x, var_1.a.b), vec3<i32>(u_input.a.x, -7085i, -14608i)) | -vec3<i32>(9693i, -2147483647i, var_1.a.b)) >> (vec3<u32>(abs(~global3.a.a), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, global3.a.a, 111054u), var_0), firstTrailingBit(var_0)), 0u) % vec3<u32>(32u)));
}

