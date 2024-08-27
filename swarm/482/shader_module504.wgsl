struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: u32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<i32>(-1i, 0i, 41085i, 0i), vec2<u32>(36866u, 1u), vec3<i32>(i32(-2147483648), 1410i, 0i), -1000f);

var<private> global1: f32;

var<private> global2: bool = false;

var<private> global3: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>) -> vec2<u32> {
    var var_0 = Struct_4(4294967295u);
    return arg_0.yy;
}

fn func_4(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = arg_0;
    let var_1 = ~vec4<u32>(countOneBits(firstTrailingBit(~1u)), abs(func_3(u_input.a, vec2<f32>(1072f, -1648f)).x), ~(~global0.b.x) >> (4294967295u % 32u), arg_0.b.x);
    let var_2 = var_1.xy;
    global3 = array<vec2<bool>, 28>();
    let var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(min(var_0.b, vec2<u32>(1u, 2550u)), var_0.b << (var_0.b % vec2<u32>(32u))), 0u, _wgslsmith_sub_u32(var_0.b.x, ~u_input.a.x)), var_1.xzw);
    return vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-var_0.a.x, i32(-1i) * -1i) | arg_0.c.yz, vec2<i32>(0i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0.a.wyx, vec3<i32>(2147483647i, 29886i, u_input.b.x)), ~vec3<i32>(-6893i, global0.c.x, global0.a.x)))), arg_0.a.x, ~34536i, -2147483647i);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: f32, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = Struct_3(vec4<i32>(firstTrailingBit(global0.c.x), global0.a.x, countOneBits(24708i), global0.c.x), global0.b, vec3<i32>(u_input.b.x, u_input.b.x, ~u_input.b.x) ^ ~global0.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-151f, arg_2)))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-arg_2)), false)));
    global1 = -1000f;
    let var_1 = all(arg_3);
    var var_2 = Struct_4(~16310u);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -646f, var_1))) + arg_2)) > _wgslsmith_f_op_f32(-arg_2);
    return Struct_3(func_4(Struct_3(var_0.a, select(vec2<u32>(arg_0.x, arg_0.x), func_3(u_input.a, vec2<f32>(var_0.d, global0.d)), arg_3.zz), vec3<i32>(-2147483647i, 0i, _wgslsmith_mult_i32(global0.c.x, -41731i)), -440f)), arg_0 << (~reverseBits(u_input.a.zz) % vec2<u32>(32u)), max(func_4(Struct_3(select(vec4<i32>(2147483647i, -19157i, 0i, global0.a.x), vec4<i32>(u_input.b.x, -15902i, u_input.b.x, 4807i), false), global0.b ^ var_0.b, vec3<i32>(-33509i, var_0.c.x, global0.c.x) | global0.c, var_0.d)).wyz, _wgslsmith_div_vec3_i32(global0.a.zww, vec3<i32>(-global0.a.x, _wgslsmith_mod_i32(var_0.a.x, var_0.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, global0.a.x, -2147483647i), vec3<i32>(u_input.b.x, global0.a.x, var_0.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * _wgslsmith_f_op_f32(f32(-1f) * -1030f)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> i32 {
    return -_wgslsmith_mult_i32(u_input.b.x ^ min(1i, 0i), global0.c.x) >> (u_input.a.x % 32u);
}

fn func_1(arg_0: u32) -> Struct_4 {
    global1 = 387f;
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1812f - global0.d)));
    var var_0 = _wgslsmith_mod_i32(func_5(Struct_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.c.x, -1i, global0.c.x, global0.a.x), global0.a, vec4<i32>(0i, global0.c.x, global0.c.x, 0i)), global0.b, vec3<i32>(_wgslsmith_mod_i32(global0.c.x, 53967i), ~2147483647i, i32(-1i) * -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d))), func_2(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 67732u), ~global0.b), ~reverseBits(u_input.a.x), _wgslsmith_f_op_f32(ceil(-1000f)), vec3<bool>(true, true, any(vec2<bool>(false, false))))), min(15265i, firstTrailingBit(min(u_input.b.x, u_input.b.x)) >> (~_wgslsmith_div_u32(arg_0, 0u) % 32u)));
    let var_1 = Struct_1(max(abs(reverseBits(u_input.a)), firstTrailingBit(~firstTrailingBit(vec3<u32>(arg_0, 1u, u_input.a.x)))), vec2<bool>(true, true), ~43339u, (_wgslsmith_add_i32(u_input.b.x, 22902i) > -2147483647i) || true, max(vec4<u32>(~(u_input.a.x << (arg_0 % 32u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, u_input.a.x, arg_0, 15772u), vec4<u32>(global0.b.x, u_input.a.x, 4294967295u, 1u)), 4294967295u, _wgslsmith_dot_vec2_u32(~global0.b, global0.b)), vec4<u32>(arg_0, func_3(u_input.a, vec2<f32>(global0.d, -562f)).x, ~abs(arg_0), _wgslsmith_add_u32(34233u, arg_0 | arg_0))));
    let var_2 = -42836i;
    return Struct_4(_wgslsmith_div_u32(arg_0, 66842u));
}

fn func_6(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2) -> f32 {
    global3 = array<vec2<bool>, 28>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-414f * -1794f))), global0.d));
    var var_1 = max(-u_input.b.wy, vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-42538i, u_input.b.x, -1i)), ~vec3<i32>(-2147483647i, 12694i, 1257i)), u_input.b.x), u_input.b.x));
    let var_2 = arg_2.d;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), global0.d, !(!var_2.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(func_2(arg_2.d.e.xx, arg_0.a, global0.d, arg_2.a).d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(133f + -1118f) * _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_f32(-715f - -372f));
    return _wgslsmith_f_op_f32(abs(arg_1));
}

fn func_7(arg_0: bool, arg_1: vec3<f32>) -> StorageBuffer {
    global0 = func_2(select(~vec2<u32>(~4294967295u, ~global0.b.x), select(~u_input.a.zy, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(global0.b.x, 31288u)), vec2<bool>(arg_0, arg_0)) << (countOneBits(_wgslsmith_div_vec2_u32(global0.b, global0.b)) % vec2<u32>(32u)), select(global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(~35644u, 28u)], arg_0)), 4294967295u, arg_1.x, vec3<bool>(true, !all(select(global3[_wgslsmith_index_u32(global0.b.x, 28u)], global3[_wgslsmith_index_u32(global0.b.x, 28u)], arg_0)), all(vec3<bool>(any(vec4<bool>(arg_0, arg_0, false, arg_0)), true, arg_0))));
    let var_0 = Struct_1(u_input.a, !global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(firstLeadingBit(vec4<u32>(48390u, 0u, 83084u, global0.b.x))), vec4<u32>(u_input.a.x, 1u, ~global0.b.x, u_input.a.x)), 28u)], ~(~(~4294967295u)) | global0.b.x, all(vec4<bool>(false, !(5368u <= global0.b.x), !(false == arg_0), false | any(global3[_wgslsmith_index_u32(u_input.a.x, 28u)]))), ~((select(vec4<u32>(u_input.a.x, 70456u, 51950u, u_input.a.x), vec4<u32>(global0.b.x, u_input.a.x, 0u, 19889u), false) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b.x, 49034u, 1u, 33424u), vec4<u32>(1u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(66118u, u_input.a.x, 1u, global0.b.x))) << (vec4<u32>(global0.b.x, _wgslsmith_div_u32(u_input.a.x, 4294967295u), 1u & global0.b.x, ~global0.b.x) % vec4<u32>(32u))));
    let var_1 = var_0.e;
    var var_2 = Struct_4(countOneBits(min(~(~u_input.a.x), func_2(~var_1.xw, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 1u, u_input.a.x), vec3<u32>(var_0.c, 0u, u_input.a.x)), arg_1.x, select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(var_0.b.x, false, arg_0), true)).b.x)));
    let var_3 = vec2<f32>(arg_1.x, arg_1.x);
    return StorageBuffer(u_input.b >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(global0.b.x, 29514u, u_input.a.x, 2081u), ~var_1) % vec4<u32>(32u)), countOneBits(55026u), ~var_1.xxz, var_3.x, _wgslsmith_f_op_vec2_f32(-arg_1.xy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    let x = u_input.a;
    s_output = func_7(true, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)), _wgslsmith_f_op_f32(func_6(func_1(0u), -175f, Struct_2(vec3<bool>(false, false, true), vec4<f32>(1861f, -1195f, global0.d, 973f), false, Struct_1(u_input.a, global3[_wgslsmith_index_u32(global0.b.x, 28u)], 13817u, true, vec4<u32>(13257u, u_input.a.x, 3607u, 1u)), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(func_6(func_1(global0.b.x), _wgslsmith_f_op_f32(-global0.d), Struct_2(vec3<bool>(true, true, true), vec4<f32>(1597f, global0.d, 2129f, 901f), true, Struct_1(u_input.a, vec2<bool>(true, false), 3031u, false, vec4<u32>(3419u, global0.b.x, 0u, u_input.a.x)), vec3<bool>(true, true, true))))), vec3<f32>(global0.d, global0.d, 651f)));
}

