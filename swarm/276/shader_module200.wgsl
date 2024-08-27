struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(4294967295u, 10067u, 1u), vec3<u32>(8704u, 0u, 9222u), vec3<u32>(17214u, 10434u, 0u), vec3<u32>(4294967295u, 4304u, 28381u), vec3<u32>(1u, 1u, 0u), vec3<u32>(23415u, 0u, 1u));

var<private> global2: array<Struct_1, 19>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: u32) -> vec4<bool> {
    var var_0 = vec2<bool>(true && any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(false, true), any(vec4<bool>(false, false, false, false)))), true);
    let var_1 = _wgslsmith_mult_i32(2147483647i, u_input.d);
    var var_2 = vec3<i32>(_wgslsmith_clamp_i32(var_1, 27084i, 8961i), select(1i, (0i ^ abs(var_1)) | abs(-var_1), !(max(49537u, u_input.b) <= ~arg_1)), 14687i);
    global1 = array<vec3<u32>, 6>();
    var_0 = vec2<bool>(true, true);
    return vec4<bool>(true, true, true, true);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<f32>) -> vec3<bool> {
    let var_0 = ~(~33042i) | -u_input.d;
    var var_1 = select(!vec4<bool>(!all(arg_0.b), true | all(vec4<bool>(false, arg_0.b.x, arg_0.b.x, false)), any(func_3(vec2<f32>(arg_1.x, arg_1.x), 19026u)), all(select(vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, false), true))), vec4<bool>(!arg_0.b.x, arg_0.b.x && (arg_2.x >= 762f), arg_0.b.x, !(arg_0.b.x && true)), arg_0.b.x);
    global2 = array<Struct_1, 19>();
    var var_2 = arg_2;
    let var_3 = Struct_1(-arg_0.a, func_3(_wgslsmith_f_op_vec2_f32(sign(arg_2)), u_input.c.x).wzx, ~_wgslsmith_dot_vec2_u32(u_input.c.zx, vec2<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(44574u, 1u, 1u), global1[_wgslsmith_index_u32(arg_0.c, 6u)]))));
    return var_1.zyw;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = arg_1.x;
    global1 = array<vec3<u32>, 6>();
    var var_1 = 281f;
    var var_2 = 61402i;
    var var_3 = Struct_1(u_input.a.x | countOneBits(2147483647i), !(!select(func_2(global0[_wgslsmith_index_u32(1u, 16u)], vec4<f32>(726f, 526f, arg_1.x, arg_1.x), vec2<f32>(958f, var_0)), !vec3<bool>(true, true, arg_2), !vec3<bool>(true, arg_2, arg_2))), arg_0.x);
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, var_3.c), 16u)];
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> u32 {
    global1 = array<vec3<u32>, 6>();
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_div_u32(abs((u_input.b ^ _wgslsmith_mod_u32(u_input.c.x, 5875u)) >> ((_wgslsmith_clamp_u32(2232u, 4876u, 26834u) ^ u_input.c.x) % 32u)), func_4(func_1(vec4<u32>(u_input.b, u_input.c.x, 0u, u_input.c.x) >> (min(vec4<u32>(u_input.b, 13470u, 1u, 0u), vec4<u32>(70550u, u_input.b, 0u, u_input.b)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(607f, 642f, 661f))), any(vec2<bool>(true, true))), 1u, Struct_1(var_0, func_2(global2[_wgslsmith_index_u32(0u, 19u)], vec4<f32>(1796f, -1362f, -1620f, 247f), _wgslsmith_f_op_vec2_f32(vec2<f32>(839f, -923f) - vec2<f32>(1018f, -420f))), u_input.b)));
    var var_2 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~u_input.c.x, 4294967295u), ~_wgslsmith_mult_u32(u_input.b, 1u)), ~((72629u ^ u_input.c.x) | 101587u)), func_4(func_1(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, u_input.c.x, 1u, u_input.b), _wgslsmith_mult_vec4_u32(vec4<u32>(61562u, 9849u, 1u, 0u), vec4<u32>(1u, 1u, 77062u, u_input.b))), vec3<f32>(1293f, -777f, _wgslsmith_f_op_f32(trunc(-605f))), true), u_input.c.x, global2[_wgslsmith_index_u32(~(u_input.b & u_input.b), 19u)]), reverseBits(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, 0u), u_input.b))));
    let var_3 = vec4<i32>(-17246i | _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.d, firstTrailingBit(-6642i)), -(~0i)), _wgslsmith_clamp_i32(min(i32(-1i) * -10407i, u_input.a.x), u_input.d, -2147483647i) >> (var_2.x % 32u), -u_input.e.x, ~26756i);
    let var_4 = Struct_1(_wgslsmith_div_i32(1i >> (0u % 32u), _wgslsmith_dot_vec2_i32(abs(var_3.zx), vec2<i32>(var_3.x, var_0) << (u_input.c.yy % vec2<u32>(32u))) | u_input.e.x), select(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, true || func_1(vec4<u32>(1u, u_input.b, u_input.b, 1u), vec3<f32>(-225f, 1339f, 103f), false).b.x), vec3<bool>(-35454i < var_3.x, var_0 > abs(-14652i), true)), firstTrailingBit(u_input.c.x));
    global2 = array<Struct_1, 19>();
    var var_5 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1654f))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_4.c, 4294967295u, u_input.b, var_2.x), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_2.x, var_2.x, 1u), vec4<u32>(var_2.x, 1u, u_input.c.x, var_4.c)))), global1[_wgslsmith_index_u32(0u, 6u)], _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(1000f, -956f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-448f - 300f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(431f, -905f) - vec2<f32>(-1061f, -273f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-730f, 745f), vec2<f32>(-2217f, 942f), var_4.b.x))))))), _wgslsmith_dot_vec3_i32(abs(min(u_input.a.zxy, max(u_input.a.zww, var_3.wwy))), vec3<i32>(var_0, var_0, var_4.a)));
}

