struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(false, Struct_2(vec3<u32>(1u, 4294967295u, 1u), vec2<u32>(0u, 85398u)), vec4<i32>(7269i, -42839i, -56370i, -20300i), vec3<f32>(-1422f, 2010f, 689f)), Struct_4(true, Struct_2(vec3<u32>(40012u, 0u, 7168u), vec2<u32>(4294967295u, 881u)), vec4<i32>(-51670i, -32435i, 2147483647i, 24233i), vec3<f32>(1476f, -1106f, 206f)), Struct_4(true, Struct_2(vec3<u32>(4294967295u, 9080u, 24956u), vec2<u32>(37557u, 4294967295u)), vec4<i32>(0i, -19404i, -418i, -10970i), vec3<f32>(-787f, 568f, 465f)));

var<private> global1: array<Struct_4, 31>;

var<private> global2: array<Struct_2, 15>;

var<private> global3: f32;

var<private> global4: u32 = 44284u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> vec3<f32> {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, arg_1.b.a.x), 15u)];
    global1 = array<Struct_4, 31>();
    global1 = array<Struct_4, 31>();
    var var_1 = global0[_wgslsmith_index_u32(~u_input.a, 3u)];
    let var_2 = arg_1.b;
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(round(arg_1.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1977f) * arg_1.d.x))))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(false, global0[_wgslsmith_index_u32(26097u, 3u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 971f, 177f)))))));
    let var_1 = vec2<i32>(~(_wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, u_input.b.x), firstLeadingBit(u_input.b.x)) ^ _wgslsmith_sub_i32(max(u_input.b.x, -2147483647i), u_input.b.x)), -149i);
    var var_2 = vec3<i32>(-(~reverseBits(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x))), abs(~u_input.b.x >> (~u_input.a % 32u)) ^ ~(~(-var_1.x)), -34694i);
    var var_3 = global2[_wgslsmith_index_u32(66143u, 15u)];
    let var_4 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, 381f, var_0.x), vec4<f32>(var_0.x, var_0.x, -467f, 197f), false)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-882f, var_0.x, false))), _wgslsmith_f_op_f32(min(-2024f, _wgslsmith_f_op_f32(exp2(var_0.x)))), var_0.x, 581f)), ~min(firstTrailingBit(vec2<i32>(u_input.b.x, var_2.x)), u_input.b.xw), vec4<u32>(~0u, var_3.a.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(61595u, max(var_3.b.x, 4294967295u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(41567u, 22139u, 0u, u_input.a), vec4<u32>(u_input.a, var_3.b.x, 93726u, u_input.a))), reverseBits(1u)));
    return reverseBits(abs(var_4.b.x));
}

fn func_1() -> vec3<bool> {
    global3 = -547f;
    var var_0 = 4294967295u;
    global1 = array<Struct_4, 31>();
    var var_1 = vec3<bool>(false, !(any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))) | false), true);
    var var_2 = min(func_2(), u_input.b.x);
    return vec3<bool>(true, select(u_input.a <= ~0u, false, var_1.x), u_input.a <= ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a, u_input.a), u_input.a, ~36850u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(func_1(), select(vec3<bool>(true, true, true), func_1(), all(vec3<bool>(true, false, true))), select(vec3<bool>(true, any(vec4<bool>(true, true, false, true)), func_1().x), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), _wgslsmith_div_f32(-144f, -202f) > _wgslsmith_f_op_f32(round(-270f)))), vec3<bool>(false, ~max(u_input.a, u_input.a) >= _wgslsmith_sub_u32(21991u, u_input.a), false), !(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_1 = Struct_3(false, !select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true), all(vec4<bool>(false, true, var_0.x, var_0.x))), !select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(false, false, false, var_0.x), false), vec4<bool>(true, !var_0.x, any(var_0.xx), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-214f, 1934f)) - _wgslsmith_f_op_f32(f32(-1f) * -214f)) - _wgslsmith_f_op_f32(f32(-1f) * -1389f)))), !func_1(), !select(func_1(), !vec3<bool>(false, var_0.x, var_0.x), !(true & var_0.x)));
    var var_2 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(~(-u_input.b.x), u_input.b.x), 1i), -19966i, -(~1i) | (~reverseBits(u_input.b.x) << (firstTrailingBit(40156u) % 32u)));
    var var_3 = u_input.b;
    let var_4 = var_3.x;
    global3 = _wgslsmith_f_op_f32(sign(var_1.c));
    let var_5 = Struct_2(reverseBits(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 77199u, u_input.a), vec4<u32>(u_input.a, 1u, 1u, u_input.a)), ~u_input.a, u_input.a)), _wgslsmith_div_vec2_u32(select(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 23612u))), vec2<u32>(u_input.a, 0u), var_1.b.yx), max(vec2<u32>(~u_input.a, 66114u), vec2<u32>(u_input.a, ~u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, var_1.c))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(404f, var_1.c))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.c)), _wgslsmith_div_f32(586f, var_1.c)))), ~firstLeadingBit(4294967295u));
}

