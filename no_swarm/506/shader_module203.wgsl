struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: f32,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, false, false, true)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: Struct_5, arg_1: vec4<u32>) -> bool {
    let var_0 = abs(~68111u) < (arg_1.x >> (4294967295u % 32u));
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    return var_0;
}

fn func_3(arg_0: bool) -> vec4<u32> {
    global0 = arg_0;
    global1 = array<Struct_1, 4>();
    var var_0 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -315f), u_input.a.x, -1i);
    let var_1 = Struct_4(true, (false != arg_0) & all(select(!vec3<bool>(true, arg_0, false), !vec3<bool>(false, arg_0, arg_0), true)), var_0.a, Struct_1(vec4<bool>(!(var_0.c <= -66262i), false, all(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, true, false), false)), false)), vec3<f32>(-1156f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0.a)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-475f * -1054f))))));
    let var_2 = firstLeadingBit(reverseBits(0i));
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, ~var_0.b, u_input.a.x) >> (min(firstLeadingBit(vec4<u32>(var_0.b, u_input.a.x, 6326u, 1u)), countOneBits(vec4<u32>(u_input.a.x, 44951u, 1u, u_input.a.x))) % vec4<u32>(32u)), ~(~(~vec4<u32>(u_input.a.x, var_0.b, u_input.a.x, var_0.b))), (vec4<u32>(4272u, 59708u, 4294967295u, u_input.a.x) | _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(var_0.b, var_0.b, 31254u, 0u))) << (~(vec4<u32>(var_0.b, 414u, var_0.b, var_0.b) & vec4<u32>(4294967295u, 23593u, var_0.b, 4983u)) % vec4<u32>(32u))), vec4<u32>(~(~(~89326u)), firstLeadingBit(~(~var_0.b)), ~(~_wgslsmith_sub_u32(var_0.b, 4294967295u)), ~(~abs(u_input.a.x))), vec4<u32>(~(abs(4294967295u) >> ((var_0.b & var_0.b) % 32u)), max(97184u, firstTrailingBit(select(4294967295u, var_0.b, var_1.d.a.x))), ~firstTrailingBit(var_0.b) << (abs(~1u) % 32u), firstLeadingBit(_wgslsmith_div_u32(9590u, u_input.a.x))));
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = vec4<i32>(-1i) * -(~firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(20980i, arg_0, 2147483647i, -32118i), vec4<i32>(1i, arg_0, 3843i, -357i))));
    var var_1 = func_3(all(vec4<bool>(func_2(Struct_5(166f, u_input.a.x, 32777i), vec4<u32>(u_input.a.x, 1u, 2694u, 41295u) << (vec4<u32>(62620u, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), true, -2147483647i <= arg_0, all(vec3<bool>(true, true, true)))));
    global1 = array<Struct_1, 4>();
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.x >> (_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(var_1.x, u_input.a.x)) % 32u), ~var_1.x, _wgslsmith_mult_u32(select(~u_input.a.x, firstLeadingBit(u_input.a.x), true), ~27273u)) ^ u_input.a.x, 4u)];
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(877f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -858f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1132f, 1593f))), true)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1(1856i));
    var_0 = -1000f;
    global0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, 23404i), vec3<i32>(-46885i, -2147483647i, -40778i)), 34031i >> (u_input.a.x % 32u), -2147483647i), ~(~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 22044i, 1i), vec3<i32>(65165i, 28183i, 22553i)))) > ~30678i;
    global1 = array<Struct_1, 4>();
    let var_1 = Struct_2(Struct_1(select(vec4<bool>(any(vec3<bool>(false, false, true)), true, all(vec2<bool>(true, true)), true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, all(vec3<bool>(false, false, true)), select(true, false, true)))), Struct_1(vec4<bool>(true & any(vec2<bool>(true, true)), all(vec3<bool>(false, false, false)), true, false)), global1[_wgslsmith_index_u32(~111149u, 4u)], true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-532f, -226f, -520f)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1087f, -347f, 340f) * vec3<f32>(-453f, 1177f, 530f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-317f, 1462f, -1244f), vec3<f32>(-1739f, -1907f, -1842f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(~vec3<i32>(1i, 1i, 1i)));
}

