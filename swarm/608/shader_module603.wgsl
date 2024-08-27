struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: u32,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3;

var<private> global2: f32 = -842f;

var<private> global3: bool = true;

var<private> global4: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(vec2<u32>(76312u, 4294967295u)), vec3<bool>(true, true, false), -1534f, 0u, vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec2<u32>(4294967295u, 45339u)), vec3<bool>(false, false, false), 2164f, 19011u, vec4<bool>(false, true, true, true)), Struct_2(Struct_1(vec2<u32>(279u, 4294967295u)), vec3<bool>(false, true, true), -1305f, 1u, vec4<bool>(true, true, false, false)), Struct_2(Struct_1(vec2<u32>(0u, 11711u)), vec3<bool>(false, true, true), 369f, 0u, vec4<bool>(true, true, true, false)), Struct_2(Struct_1(vec2<u32>(0u, 1u)), vec3<bool>(true, true, true), -384f, 4294967295u, vec4<bool>(false, false, false, true)), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u)), vec3<bool>(true, false, false), -524f, 1u, vec4<bool>(false, true, true, false)));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: i32) -> vec3<u32> {
    global2 = -1000f;
    var var_0 = Struct_4(vec3<u32>(_wgslsmith_dot_vec2_u32(min(select(u_input.b.yz, u_input.b.zy, vec2<bool>(false, false)), global1.a), _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_0, 45314u), u_input.b.zy)), global1.a.x, min(~u_input.b.x, 1u)), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(global1.a, vec2<u32>(0u, 44500u)), global1.a ^ global1.a), max(global1.a, vec2<u32>(global1.a.x, arg_0)), vec2<bool>(true, true)), ~select(~u_input.b.yx, vec2<u32>(2987u, 1u), true)), 6u)], global1.a.x ^ ~4004u, vec3<i32>(select(arg_1, ~(-2147483647i), 49727u <= u_input.b.x), _wgslsmith_mult_i32(u_input.c.x, -67749i), 1i | u_input.a.x) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b.x, 23700u, u_input.b.x)), ~u_input.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 16499u, u_input.b.x, global1.a.x), vec4<u32>(global1.a.x, global1.a.x, 0u, global1.a.x)), u_input.b.x) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-795f, 1021f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1042f, 830f), vec2<f32>(-693f, -145f))))))));
    global3 = var_0.b.e.x;
    var var_1 = Struct_2(Struct_1(global1.a), vec3<bool>(var_0.b.e.x, true, all(select(var_0.b.e, !var_0.b.e, false))), 1721f, _wgslsmith_mult_u32(_wgslsmith_add_u32(58366u, 35297u), 1u), var_0.b.e);
    global2 = _wgslsmith_f_op_f32(select(1383f, -1236f, all(vec3<bool>(!(!var_0.b.b.x), var_0.b.e.x, true))));
    return ~reverseBits(u_input.b);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(reverseBits(~vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.zy))));
    global4 = array<Struct_2, 6>();
    var var_1 = Struct_1(_wgslsmith_mult_vec2_u32(var_0.a, ~(~vec2<u32>(1u, 18325u))));
    var var_2 = global4[_wgslsmith_index_u32(~var_1.a.x, 6u)];
    var var_3 = (_wgslsmith_div_vec3_u32(~(u_input.b & u_input.b), ~vec3<u32>(u_input.b.x, var_1.a.x, global1.a.x) | _wgslsmith_mult_vec3_u32(vec3<u32>(82187u, var_0.a.x, 26749u), u_input.b)) >> (~select(~vec3<u32>(var_2.d, 29297u, global1.a.x), u_input.b, var_2.e.x) % vec3<u32>(32u))) & func_3(~43171u << (_wgslsmith_add_u32(34277u, var_2.a.a.x) % 32u), firstLeadingBit(~(u_input.a.x | u_input.c.x)));
    return Struct_3(vec2<u32>(var_3.x, ~var_2.d) << (vec2<u32>(~15228u, _wgslsmith_add_u32(1u, ~1u)) % vec2<u32>(32u)));
}

fn func_1() -> bool {
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -846f)) * 1f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -213f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-874f)))));
    var var_0 = func_2();
    global3 = true;
    let var_1 = func_2();
    let var_2 = !vec2<bool>(all(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), false);
    return false;
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: bool) -> Struct_1 {
    global4 = array<Struct_2, 6>();
    var var_0 = Struct_4(firstLeadingBit(abs(u_input.b)), global4[_wgslsmith_index_u32(~0u & _wgslsmith_mult_u32(~_wgslsmith_div_u32(global1.a.x, global1.a.x), ~(~20824u)), 6u)], ~_wgslsmith_add_u32(_wgslsmith_sub_u32(~44093u, _wgslsmith_add_u32(1u, u_input.b.x)), 1u), abs(u_input.c) >> ((_wgslsmith_clamp_vec3_u32(~u_input.b, u_input.b & vec3<u32>(global1.a.x, 48167u, 3686u), ~vec3<u32>(arg_0, u_input.b.x, 4294967295u)) << (reverseBits(abs(u_input.b)) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1144f + 538f) * 467f), 815f)));
    global4 = array<Struct_2, 6>();
    let var_1 = var_0.b;
    var var_2 = vec2<u32>(var_1.d, _wgslsmith_mod_u32(~firstTrailingBit(_wgslsmith_sub_u32(var_0.a.x, arg_0)), 26999u));
    return var_1.a;
}

fn func_5(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_2) -> vec3<i32> {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-794f - 1792f)))))));
    let var_0 = 494f;
    let var_1 = arg_0.x | 56695u;
    let var_2 = 695f;
    var var_3 = Struct_4(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1, _wgslsmith_dot_vec2_u32(vec2<u32>(28152u, 1u), ~u_input.b.yy), func_3(0u << (arg_1 % 32u), 0i).x), u_input.b), arg_2, 21177u, min(~(~(~vec3<i32>(u_input.c.x, -1i, -2147483647i))), vec3<i32>(u_input.a.x & 2147483647i, ~u_input.a.x, 17094i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, -1267f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, -1315f) * vec2<f32>(-1000f, -178f)), vec2<f32>(var_0, arg_2.c), true)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, -670f))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1135f, 872f))))))));
    return u_input.a.wzy;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 6>();
    var var_0 = func_5(firstLeadingBit(~(~(u_input.b.yx | global1.a))), 1u, Struct_2(func_4(~global1.a.x, u_input.b.zy, func_1()), select(vec3<bool>(true, all(vec3<bool>(false, true, true)), false), select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), true | any(vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(548f)), -227f, true)) * -1067f), 29707u, select(vec4<bool>(true, true, any(vec3<bool>(false, false, false)), func_1()), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false))), any(vec4<bool>(true, true, true, true)))));
    global3 = true;
    global2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-248f)) + _wgslsmith_f_op_f32(sign(-1415f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = Struct_4(min(~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b, u_input.b), select(u_input.b, vec3<u32>(global1.a.x, 0u, 66782u), true), _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, 0u))), vec3<u32>(~func_4(u_input.b.x, vec2<u32>(71240u, 0u), true).a.x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 32582u)), global4[_wgslsmith_index_u32(~global1.a.x, 6u)], 1u, u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-232f, 298f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1243f, -1351f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1996f, -1470f), vec2<f32>(2284f, 239f))), true)), vec2<bool>(true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, _wgslsmith_f_op_f32(var_1.b.c * var_1.e.x), _wgslsmith_div_f32(-1310f, var_1.e.x), _wgslsmith_f_op_f32(min(-1698f, var_1.e.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.c, var_1.b.c, var_1.e.x, -191f), vec4<f32>(1197f, var_1.e.x, -573f, var_1.b.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.x, var_1.b.c, -2874f, var_1.b.c)))))), _wgslsmith_clamp_u32(var_1.b.d, ~9583u, u_input.b.x));
}

