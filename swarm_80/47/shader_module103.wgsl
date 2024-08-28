struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = -(~(-(vec4<i32>(-1i) * -vec4<i32>(u_input.e, 0i, -37050i, -49352i))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-962f - -1051f)))), !(1u != ~(~u_input.b)));
    var var_2 = Struct_1(var_1.b || !var_1.b, vec4<f32>(_wgslsmith_f_op_f32(-1037f - -864f), var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)) * -718f), var_1.a), var_1.a, select(select(!select(vec3<bool>(false, true, var_1.b), vec3<bool>(true, true, var_1.b), vec3<bool>(true, true, false)), !vec3<bool>(var_1.b, false, false), !vec3<bool>(false, false, var_1.b)), vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1738f) < _wgslsmith_f_op_f32(-var_1.a), 39892u <= _wgslsmith_sub_u32(u_input.b, 1u), select(true, var_1.b, !var_1.b)), vec3<bool>(var_1.b, true, true)), !select(!select(vec2<bool>(true, var_1.b), vec2<bool>(true, true), vec2<bool>(var_1.b, true)), select(select(vec2<bool>(true, var_1.b), vec2<bool>(true, true), false), vec2<bool>(var_1.b, false), !vec2<bool>(var_1.b, false)), var_1.b));
    var var_3 = ~u_input.a < _wgslsmith_sub_i32(2147483647i, firstLeadingBit(-u_input.e));
    let var_4 = Struct_2(Struct_1(true, var_2.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c), 1000f) * _wgslsmith_f_op_f32(max(940f, _wgslsmith_f_op_f32(-var_1.a)))), select(select(vec3<bool>(false, false, var_2.d.x), !vec3<bool>(false, true, var_1.b), true), select(!var_2.d, var_2.d, var_2.a), select(var_2.d, select(vec3<bool>(false, var_2.e.x, false), var_2.d, vec3<bool>(var_1.b, var_1.b, false)), !var_2.d)), select(select(select(vec2<bool>(var_2.e.x, false), vec2<bool>(var_2.a, false), var_2.d.xz), select(var_2.d.xy, vec2<bool>(var_2.e.x, var_2.d.x), var_2.d.xx), var_1.b), var_2.d.yy, !select(vec2<bool>(var_2.d.x, true), vec2<bool>(var_2.e.x, true), var_2.d.yy))), Struct_1(!(!var_1.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_2.b + vec4<f32>(var_1.a, -477f, var_1.a, -628f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, var_1.a, 313f, 1000f)))) - vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), 558f, _wgslsmith_div_f32(-1044f, 274f), _wgslsmith_div_f32(975f, var_1.a))), var_1.a, var_2.d, var_2.d.xz));
    return ~_wgslsmith_mod_u32(~u_input.b, 35212u);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(all(select(arg_1.d, !vec3<bool>(arg_1.d.x, false, arg_1.a), false | arg_1.e.x)), _wgslsmith_f_op_vec4_f32(-arg_2), _wgslsmith_f_op_f32(max(768f, arg_2.x)), vec3<bool>(any(select(arg_1.d, vec3<bool>(arg_1.a, false, false), vec3<bool>(arg_1.d.x, true, true))), countOneBits(u_input.e) < ~u_input.c, true), !arg_1.d.xx), arg_1);
    var var_1 = ~vec4<u32>(~75490u << (u_input.d.x % 32u), arg_0.x, 4294967295u, func_3() | u_input.b) ^ vec4<u32>(6126u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.b, 5253u, arg_0.x), vec3<u32>(u_input.d.x, 1u, 23500u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, arg_0.x), vec3<u32>(arg_0.x, arg_0.x, arg_0.x))), countOneBits(~38142u)), 1u, select(34347u, ~firstLeadingBit(1u), true));
    var var_2 = vec2<u32>(_wgslsmith_clamp_u32(select(var_1.x, arg_0.x, var_0.a.a) & select(1u, 1u, false), func_3(), 1u) & ~arg_0.x, u_input.b | 47956u);
    let var_3 = i32(-1i) * -9966i;
    var var_4 = var_0.a.b.x;
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) * 1f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(699f, arg_2.x) + _wgslsmith_f_op_f32(trunc(220f)))), _wgslsmith_f_op_f32(f32(-1f) * -290f)), false);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: u32) -> u32 {
    let var_0 = vec3<u32>(arg_2, ~18768u, ~_wgslsmith_dot_vec3_u32((vec3<u32>(arg_0.x, 34809u, 1u) & arg_0.xzz) | vec3<u32>(arg_0.x, 1u, arg_0.x), vec3<u32>(0u, u_input.d.x, max(4294967295u, u_input.d.x))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -357f);
    var var_2 = ~_wgslsmith_mult_i32(firstTrailingBit(-1i) | arg_1.x, i32(-1i) * -2147483647i) | reverseBits(1523i);
    var var_3 = func_2(u_input.d, Struct_1(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 846f, var_1, 266f) + vec4<f32>(var_1, var_1, var_1, 934f)), vec4<f32>(var_1, 588f, var_1, var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - 1861f), !vec3<bool>(all(vec3<bool>(false, true, false)), true, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_1) + var_1), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(abs(527f))), _wgslsmith_f_op_f32(f32(-1f) * -384f))));
    let var_4 = _wgslsmith_f_op_f32(select(-1092f, 569f, any(vec3<bool>(true, all(vec4<bool>(true, var_3.b, var_3.b, var_3.b)), true))));
    return 6728u;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_1.b.b.yz, _wgslsmith_f_op_vec2_f32(-arg_1.a.b.xy), arg_1.a.d.yy))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(step(arg_1.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.b.x) + _wgslsmith_f_op_f32(arg_1.a.c + _wgslsmith_div_f32(401f, 1092f))))), true);
    let var_2 = var_1.a;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(~vec2<u32>(39630u, u_input.d.x), Struct_1(var_1.b, vec4<f32>(var_1.a, -1791f, 1000f, var_1.a), var_1.a, vec3<bool>(false, true, true), vec2<bool>(true, true)), arg_1.a.b).a * _wgslsmith_f_op_f32(round(var_0.x))))) * arg_1.b.c);
    var var_4 = _wgslsmith_mod_vec3_u32(~(~firstTrailingBit(~vec3<u32>(u_input.b, u_input.b, u_input.d.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, ~u_input.b), ~(~vec3<u32>(63315u, u_input.b, arg_0.x))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = func_4(select(vec4<u32>(3050u, ~u_input.d.x, min(u_input.d.x, 66399u), u_input.b), vec4<u32>(reverseBits(u_input.d.x), func_1(vec4<u32>(u_input.d.x, u_input.b, 21754u, u_input.d.x), vec4<i32>(u_input.c, 0i, u_input.c, u_input.a), 1u), 4294967295u, u_input.b), !vec4<bool>(var_0, var_0, var_0, var_0)) | min(select(vec4<u32>(1u, 40549u, u_input.d.x, 4294967295u), vec4<u32>(0u, u_input.d.x, 11064u, u_input.b), any(vec2<bool>(true, var_0))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.b, u_input.b), vec4<u32>(u_input.d.x, u_input.b, 1u, 0u)) << (vec4<u32>(10902u, u_input.d.x, u_input.b, u_input.b) % vec4<u32>(32u))), Struct_2(Struct_1(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-242f, 1832f, 874f, -279f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(214f, 1658f, 695f, 734f) - vec4<f32>(-1000f, 786f, -1227f, -1536f))), func_2(u_input.d, Struct_1(var_0, vec4<f32>(419f, 765f, -191f, -1354f), -538f, vec3<bool>(var_0, false, var_0), vec2<bool>(var_0, var_0)), vec4<f32>(319f, -116f, 140f, -1076f)).a, !select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, true, var_0), false), select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(var_0, var_0))), Struct_1(any(vec3<bool>(var_0, false, var_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(552f, 1705f, -1619f, -570f))) - vec4<f32>(-1297f, 339f, 871f, -107f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -428f), _wgslsmith_f_op_f32(sign(244f)))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), var_0), !vec3<bool>(true, true, var_0), select(vec3<bool>(false, var_0, var_0), vec3<bool>(false, false, false), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    var var_2 = Struct_3(1245f, !var_1.b);
    var var_3 = Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -1741f, 368f, var_1.a)))), var_1.a, !(!vec3<bool>(u_input.b <= 0u, all(vec2<bool>(false, var_0)), -1i >= u_input.a)), vec2<bool>(all(!select(vec3<bool>(true, var_2.b, var_2.b), vec3<bool>(var_1.b, var_2.b, false), var_0)), !(-479f >= _wgslsmith_f_op_f32(801f - var_2.a))));
    var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1078f) * var_3.b.x) + _wgslsmith_f_op_f32(round(975f))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.b.xww * var_3.b.wyy)), u_input.e, 64123u);
}

