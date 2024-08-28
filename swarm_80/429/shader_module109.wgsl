struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-13279i, 0i);

var<private> global1: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global2: f32 = -543f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec2<i32>) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, -1404f)), vec2<f32>(-1115f, 719f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -890f) - vec2<f32>(arg_0, arg_0))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1000f) + vec2<f32>(1008f, -1000f))))));
    var var_1 = Struct_1(vec4<i32>(-9148i & arg_2.x, arg_2.x, i32(-1i) * -(arg_2.x >> (u_input.c % 32u)), arg_2.x), countOneBits(u_input.a.x), !vec4<bool>(true, !(-751f < arg_0), true, !arg_1.a), i32(-1i) * -2147483647i);
    var var_2 = Struct_2(select(false, any(vec4<bool>(true, any(vec2<bool>(true, false)), all(vec3<bool>(arg_1.a, var_1.c.x, arg_1.a)), !arg_1.a)), all(vec3<bool>(var_1.c.x || arg_1.a, true, arg_0 >= var_0.a.x))), !select(var_1.c, var_1.c, true | var_1.c.x));
    var var_3 = vec3<bool>(false, _wgslsmith_sub_u32(countOneBits(abs(0u)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.c, 0u), u_input.c, ~u_input.c)) == _wgslsmith_mult_u32(~6500u, reverseBits(4294967295u << (u_input.c % 32u))), any(select(var_2.b.xx, select(select(vec2<bool>(true, false), var_2.b.zz, var_1.c.x), vec2<bool>(true, false), vec2<bool>(var_1.c.x, false)), any(select(var_1.c.xwx, vec3<bool>(var_1.c.x, var_2.b.x, true), vec3<bool>(arg_1.a, true, arg_1.a))))));
    let var_4 = select(firstTrailingBit(vec4<u32>(~u_input.c, ~24340u, 1u, 0u >> (u_input.c % 32u))) & ~vec4<u32>(~u_input.c, ~u_input.c, u_input.c, ~4294967295u), firstTrailingBit(vec4<u32>(u_input.c, countOneBits(35792u), abs(u_input.c) ^ 1u, u_input.c)), !var_2.b);
    return -1359f;
}

fn func_2() -> vec4<u32> {
    var var_0 = global0.x;
    var var_1 = _wgslsmith_div_f32(-586f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1061f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(243f * 168f) - -1119f))));
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -848f))), _wgslsmith_f_op_f32(max(-777f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1463f, 2119f)))) - _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(min(416f, 1271f)), Struct_3(true), _wgslsmith_div_vec2_i32(u_input.b.yx, u_input.a))))))));
    return vec4<u32>(~77682u, min(15531u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 0u, u_input.c) ^ vec4<u32>(1u, u_input.c, 4294967295u, u_input.c), vec4<u32>(u_input.c, 4294967295u, 0u, u_input.c))), 1942u, 36680u) & ~vec4<u32>(4294967295u, firstTrailingBit(u_input.c) & 59590u, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(7802u, 1u), vec2<u32>(1u, u_input.c)) | 57379u);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = ~reverseBits(vec4<u32>(min(u_input.c, 1u), abs(select(4294967295u, 1u, true)), ~_wgslsmith_div_u32(u_input.c, 4294967295u), u_input.c));
    var_0 = _wgslsmith_mod_vec4_u32(func_2(), ~abs(vec4<u32>(~u_input.c, select(1u, u_input.c, false), u_input.c, ~var_0.x)));
    global0 = u_input.b.yx;
    var var_1 = max(~abs(vec4<i32>(-1811i, 2147483647i, global0.x, 4556i) | abs(vec4<i32>(2147483647i, u_input.b.x, -1i, -2147483647i))), ~vec4<i32>(global0.x, abs(8704i), global0.x, ~_wgslsmith_add_i32(u_input.a.x, u_input.a.x)));
    global1 = array<vec2<bool>, 31>();
    return Struct_1(vec4<i32>(global0.x, _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 68132i, global0.x), vec3<i32>(global0.x, u_input.a.x, -11834i)), _wgslsmith_clamp_i32(countOneBits(-2147483647i), global0.x << (var_0.x % 32u), u_input.b.x)), 1i, 1i), abs(firstTrailingBit(40901i)), vec4<bool>(!(!(85310u < var_0.x)), true, select(true, true, true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-359f)))) != _wgslsmith_f_op_f32(arg_0 + arg_0)), 3040i);
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = abs(countOneBits(~reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-72265i, arg_0.a.x), vec2<i32>(-31335i, 1i)))));
    var_0 = firstLeadingBit(select(_wgslsmith_div_vec2_i32(abs(u_input.b.yy), ~vec2<i32>(u_input.b.x, 2147483647i)), ~abs(~arg_0.a.yw), vec2<bool>(false, !(arg_0.c.x && true))));
    global0 = vec2<i32>(-9444i, 1i);
    let var_1 = ~(~vec4<u32>(~(~u_input.c), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(16797u, u_input.c, 41505u), vec3<u32>(u_input.c, u_input.c, 1u))), 3724u, 67313u));
    let var_2 = var_1;
    return StorageBuffer(1u, _wgslsmith_dot_vec3_i32(-reverseBits(u_input.b << (var_2.yxw % vec3<u32>(32u))), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !((firstLeadingBit(u_input.b.x) << (~(1u & u_input.c) % 32u)) >= u_input.b.x);
    var var_1 = -1i;
    let var_2 = all(!(!vec2<bool>(any(vec3<bool>(var_0, false, var_0)), all(vec3<bool>(var_0, var_0, var_0)))));
    let var_3 = u_input.b.yy & _wgslsmith_mult_vec2_i32(reverseBits(firstLeadingBit(vec2<i32>(14569i, 2147483647i))), u_input.a << (min(~vec2<u32>(4294967295u, u_input.c), ~vec2<u32>(24498u, u_input.c)) % vec2<u32>(32u)));
    global0 = vec2<i32>(global0.x, u_input.d);
    var var_4 = ~(~0u) | _wgslsmith_div_u32(1u, u_input.c);
    global1 = array<vec2<bool>, 31>();
    global0 = u_input.b.xz;
    var var_5 = select(~(~vec3<u32>(u_input.c, 58715u, u_input.c)) | vec3<u32>(_wgslsmith_mod_u32(u_input.c, 0u >> (u_input.c % 32u)), ~u_input.c, 29833u), ~(~(~vec3<u32>(85593u, 0u, u_input.c) << (abs(vec3<u32>(4294967295u, u_input.c, 18025u)) % vec3<u32>(32u)))), true & var_2);
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_f_op_f32(max(109f, 1f))));
}

