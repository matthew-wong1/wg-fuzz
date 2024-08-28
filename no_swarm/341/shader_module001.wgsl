struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec4<bool>) -> f32 {
    let var_0 = Struct_3(arg_1.a, arg_1.e, vec4<u32>(~max(113998u, ~6860u), arg_1.c.x, ~abs(~42685u), u_input.e.x), Struct_2(_wgslsmith_dot_vec4_u32(~abs(arg_1.c), reverseBits(arg_1.c) ^ ~vec4<u32>(0u, u_input.e.x, u_input.e.x, u_input.e.x)), 1442f, _wgslsmith_f_op_f32(arg_1.d.b + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.b.c - arg_1.e.c))))), Struct_2(1u, 1301f, _wgslsmith_f_op_f32(-arg_1.b.c)));
    var var_1 = vec3<f32>(arg_1.e.b, arg_1.e.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(492f, _wgslsmith_f_op_f32(-arg_1.e.c))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.c))))));
    var var_2 = !(!vec4<bool>((var_1.x < var_1.x) & select(arg_2.x, arg_2.x, false), arg_2.x, all(!vec2<bool>(arg_2.x, true)), arg_2.x));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, 1000f, -1296f))) + vec3<f32>(var_1.x, 852f, arg_1.b.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1443f, arg_1.d.c, arg_1.d.b)) * vec3<f32>(364f, var_0.e.b, arg_1.e.c))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(964f, var_1.x, -434f, var_1.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1149f, var_1.x, var_0.d.c, -136f) * vec4<f32>(var_1.x, 240f, -471f, 448f))))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2706f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + var_0.d.b), var_0.e.b, _wgslsmith_f_op_f32(-var_1.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -454f))));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: u32) -> Struct_3 {
    let var_0 = u_input.a;
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_f32(min(472f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_i32(18887i, _wgslsmith_sub_i32(2147483647i, u_input.c.x)), Struct_3(Struct_1(-1i), Struct_2(arg_3, 1463f, 259f), vec4<u32>(arg_0, u_input.e.x, arg_0, 1u) ^ vec4<u32>(arg_2.x, arg_3, arg_2.x, 57571u), Struct_2(arg_2.x, -967f, 281f), Struct_2(arg_0, 1000f, 1342f)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(579f + -1091f) + -1775f)))));
    let var_3 = 131i;
    let var_4 = ~27812u;
    return Struct_3(Struct_1(1i), Struct_2(_wgslsmith_dot_vec2_u32(arg_2.zx, ~(~u_input.e)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(121f + 454f))), _wgslsmith_f_op_f32(ceil(-1496f)), any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(select(var_2, 1626f, true)))), countOneBits(~vec4<u32>(0u, 51368u, 0u, arg_0) & vec4<u32>(var_4, ~5526u, ~arg_0, ~16236u)), Struct_2(u_input.e.x, -904f, 1189f), Struct_2(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-419f * -1747f), var_2, true))), -1082f));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = ~(-54372i);
    var var_1 = 47676i;
    var var_2 = func_2(1u, u_input.b, vec3<u32>(u_input.e.x, firstLeadingBit(abs(~u_input.e.x)), 1u), min(arg_0 ^ ~(~2845u), arg_0));
    var var_3 = var_2.b.b;
    let var_4 = var_2.b;
    return Struct_1(u_input.c.x);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(arg_1.d.b, 444f), 468f)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -296f) - _wgslsmith_f_op_f32(-arg_0))) - _wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(_wgslsmith_div_f32(534f, 1000f), _wgslsmith_f_op_f32(sign(arg_0))))));
    var var_2 = arg_1;
    var var_3 = vec2<f32>(171f, arg_1.e.b);
    var var_4 = abs(_wgslsmith_mod_vec4_i32(vec4<i32>((u_input.a.x | var_2.a.a) ^ 63184i, firstTrailingBit(var_2.a.a), _wgslsmith_div_i32(-2147483647i, func_1(u_input.e.x, vec4<f32>(var_0.x, var_0.x, var_1, -939f)).a), _wgslsmith_sub_i32(arg_1.a.a, u_input.b.x) ^ arg_2), vec4<i32>(_wgslsmith_add_i32(~u_input.b.x, ~0i), _wgslsmith_sub_i32(countOneBits(-1i), arg_1.a.a ^ 17847i), -11912i, ~select(arg_2, 15879i, false))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(774f, 1000f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(930f, arg_1.e.c), vec2<f32>(1644f, arg_1.e.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.e.b, 1343f) * vec2<f32>(420f, 192f)))))) + vec2<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.e.c, 614f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(392f - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-681f, 413f)))), _wgslsmith_f_op_vec2_f32(func_4(1f, Struct_3(func_1(u_input.e.x, vec4<f32>(-1450f, -368f, -130f, -1803f)), func_2(38651u, u_input.b, vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), u_input.e.x).e, vec4<u32>(1u, 1u, 49428u, u_input.e.x), Struct_2(51159u, -1854f, 1292f), func_2(4294967295u, vec4<i32>(u_input.b.x, u_input.a.x, -13486i, u_input.a.x), vec3<u32>(u_input.e.x, 4294967295u, u_input.e.x), u_input.e.x).d), u_input.b.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(962f * -1773f), _wgslsmith_div_f32(205f, 987f)))));
    var var_2 = vec4<bool>(any(select(vec2<bool>(var_1.x < var_1.x, any(vec4<bool>(var_0, true, true, false))), vec2<bool>(true, true), true)), select(all(vec3<bool>(true, false, var_0)), true, true), var_0, true);
    var var_3 = ~u_input.a.x;
    var_1 = vec2<f32>(var_1.x, func_2(u_input.e.x & _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(56495u, u_input.e.x, u_input.e.x, u_input.e.x)), select(vec4<u32>(1u, u_input.e.x, 26488u, 4294967295u), vec4<u32>(830u, 1u, u_input.e.x, 4294967295u), vec4<bool>(var_2.x, true, var_0, true))), -select(vec4<i32>(u_input.c.x, u_input.a.x, -30209i, u_input.b.x), vec4<i32>(u_input.a.x, u_input.d.x, u_input.d.x, u_input.c.x), true), ~(vec3<u32>(u_input.e.x, u_input.e.x, 4294967295u) ^ vec3<u32>(23772u, 1u, 0u)), 1u).d.c);
    let var_4 = var_0;
    var var_5 = ~3380u;
    var var_6 = 0i;
    var var_7 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(0u ^ u_input.e.x, 55547u), abs(-2147483647i), _wgslsmith_mod_vec4_i32(u_input.d, u_input.b), u_input.c.x);
}

