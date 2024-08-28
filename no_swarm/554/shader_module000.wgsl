struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1179f, 886f, -951f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1594f, 178f, -912f) + vec3<f32>(-1000f, 218f, 1938f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(332f, 457f, 604f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1140f, -231f, 1351f))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(198f, 1245f, -1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-151f, -1506f, 283f))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(var_0.zx, vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), vec2<bool>(select(all(vec3<bool>(true, true, true)), true | any(vec3<bool>(false, true, true)), true), true)));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1011f, _wgslsmith_f_op_f32(f32(-1f) * -468f)))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -791f) * _wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(-var_1.x), var_0.x))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2306f, 939f, -648f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1892f, _wgslsmith_f_op_f32(f32(-1f) * -317f), _wgslsmith_f_op_f32(var_1.x + var_0.x)))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -658f)), _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = vec2<i32>(~abs(min(2147483647i, -22021i)), -32975i) >> (vec2<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(11998u, u_input.a, 50196u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 5716u, 1u, 8108u), vec4<u32>(u_input.a, 54230u, 1941u, u_input.a))), ~(abs(u_input.a) >> (u_input.a % 32u))) % vec2<u32>(32u));
    return vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -2019f))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(351f, -1163f))), var_1.x)));
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_1(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true), vec2<bool>(true, true), true), select(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(9386u, 1u, u_input.a, u_input.a), vec4<u32>(4294967295u, 0u, 0u, 18482u)), _wgslsmith_add_vec4_u32(vec4<u32>(71097u, u_input.a, 117350u, u_input.a), vec4<u32>(0u, 1u, u_input.a, 55669u))), ~u_input.a), 41235u, any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -324f, -1174f, -323f), vec4<f32>(171f, 1087f, -1013f, 799f), true)), vec4<f32>(-370f, -478f, -201f, 275f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1561f, -340f, 1218f) * vec4<f32>(-1768f, -1092f, -702f, 614f)), _wgslsmith_f_op_vec4_f32(func_3())))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(205f, 722f, -1989f, 514f), vec4<f32>(294f, -325f, -343f, -141f)))))), vec3<u32>(u_input.a, 5105u, ~1u), select(vec4<bool>(!select(false, true, true), all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), !all(vec4<bool>(true, true, true, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(false, false, false, true)), any(vec3<bool>(true, false, true)), all(vec2<bool>(false, false)), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true))), vec4<bool>(~u_input.a >= u_input.a, true & all(vec4<bool>(true, false, false, false)), false, -842f == _wgslsmith_f_op_f32(select(-649f, 1219f, false)))));
    var var_1 = true;
    var_0 = Struct_1(!select(var_0.e.ww, vec2<bool>(true, true), (var_0.a.x != true) || var_0.a.x), 1u, vec4<f32>(var_0.c.x, -760f, 1840f, var_0.c.x), vec3<u32>(~_wgslsmith_mod_u32(firstTrailingBit(var_0.b), _wgslsmith_mult_u32(var_0.d.x, 1u)), reverseBits(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(76392u, 122377u, 0u, 0u), vec4<u32>(u_input.a, 1u, 74410u, var_0.b)))), ~_wgslsmith_add_u32(~4294967295u, 1u)), select(var_0.e, select(vec4<bool>(false, false, false, true), var_0.e, any(vec4<bool>(true, var_0.a.x, false, var_0.a.x))), var_0.e));
    let var_2 = Struct_3(var_0.e, vec2<bool>(var_0.a.x, var_0.e.x), 35762i, Struct_1(vec2<bool>(select(var_0.a.x, !var_0.e.x, true), all(select(vec2<bool>(true, false), var_0.e.yw, false))), _wgslsmith_add_u32(var_0.d.x, ~_wgslsmith_add_u32(var_0.b, 49485u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-148f, -1690f, var_0.c.x, 244f), vec4<f32>(var_0.c.x, 1333f, var_0.c.x, var_0.c.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c))), var_0.d, vec4<bool>(false, _wgslsmith_f_op_f32(step(var_0.c.x, -1590f)) <= _wgslsmith_div_f32(214f, var_0.c.x), any(var_0.e), var_0.e.x)), Struct_1(vec2<bool>(-782f != _wgslsmith_f_op_f32(520f - var_0.c.x), all(vec2<bool>(true, var_0.a.x))), abs(_wgslsmith_sub_u32(4294967295u, max(u_input.a, 4294967295u))), _wgslsmith_f_op_vec4_f32(func_3()), max(vec3<u32>(4294967295u, 4294967295u, 4294967295u) & var_0.d, _wgslsmith_clamp_vec3_u32(~var_0.d, firstTrailingBit(vec3<u32>(23196u, u_input.a, u_input.a)), vec3<u32>(var_0.d.x, 4294967295u, 53861u) ^ vec3<u32>(31705u, u_input.a, var_0.b))), var_0.e));
    var var_3 = vec2<i32>(-1i, countOneBits(-_wgslsmith_sub_i32(-1i, ~0i)));
    return select(!vec3<bool>(var_2.e.e.x, true, _wgslsmith_f_op_f32(f32(-1f) * -1000f) <= var_2.e.c.x), !select(vec3<bool>(!var_2.b.x, var_2.a.x, var_2.b.x), !(!vec3<bool>(var_2.e.a.x, false, var_2.b.x)), select(vec3<bool>(true, true, true), var_2.d.e.wyz, true)), var_0.e.yxw);
}

fn func_1(arg_0: bool, arg_1: f32) -> f32 {
    var var_0 = !(!select(select(func_2(), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0)), vec3<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(false, arg_0)), all(vec2<bool>(arg_0, arg_0))), true));
    let var_1 = ~abs(u_input.a);
    var var_2 = vec3<i32>(min(8337i, firstTrailingBit(abs(1i))), ~_wgslsmith_sub_i32(-2147483647i, -37987i), 25494i);
    var_0 = func_2();
    var var_3 = var_0.x;
    return _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, countOneBits(reverseBits(-34906i)), max(-6493i, _wgslsmith_dot_vec4_i32(-vec4<i32>(5408i, -3357i, 47436i, -1i), ~vec4<i32>(1i, 0i, 0i, 39316i))), 18335i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -(~22026i), 1i, _wgslsmith_sub_i32(1i, i32(-1i) * -25575i)), vec4<i32>(1i, 1i, 1i, 1i)));
    var var_1 = var_0.x;
    let var_2 = Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), ~u_input.a, vec4<f32>(-1142f, _wgslsmith_f_op_f32(trunc(1317f)), 435f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(true, -642f)), _wgslsmith_f_op_f32(1291f * -851f), true))))), ~(vec3<u32>(_wgslsmith_clamp_u32(47953u, u_input.a, u_input.a), u_input.a << (u_input.a % 32u), _wgslsmith_mod_u32(u_input.a, 23321u)) >> ((firstTrailingBit(vec3<u32>(36907u, 4294967295u, 37572u)) & firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 4294967295u))) % vec3<u32>(32u))), vec4<bool>(false, func_2().x, all(vec2<bool>(true, true)), true));
    var_1 = 29771i;
    var var_3 = Struct_5(Struct_3(var_2.e, var_2.e.xy, -_wgslsmith_mod_i32(select(40641i, var_0.x, var_2.e.x), var_0.x), var_2, Struct_1(var_2.a, ~(~var_2.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_2.c))), firstTrailingBit(var_2.d), var_2.e)), !func_2().xx, Struct_3(var_2.e, !vec2<bool>(true, var_2.a.x), -25066i, var_2, var_2), ~firstTrailingBit(abs(~1u)));
    var var_4 = vec3<bool>(false || (true | any(vec3<bool>(var_3.c.b.x, var_3.c.b.x, true))), var_3.b.x, var_3.b.x);
    var var_5 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_5.c, var_5.e.c.x, var_2.d);
}

