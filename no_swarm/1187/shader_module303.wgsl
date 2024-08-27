struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -439f));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-481f, _wgslsmith_f_op_f32(-275f + -1114f)) - 1766f)));
    var_0 = Struct_1(_wgslsmith_div_f32(951f, _wgslsmith_f_op_f32(trunc(-1739f))));
    let var_1 = Struct_4(u_input.a, Struct_2(4294967295u), ~_wgslsmith_mod_i32(~u_input.a, -(u_input.a >> (1u % 32u))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(235f * _wgslsmith_f_op_f32(-var_0.a)));
    return -21754i;
}

fn func_2(arg_0: i32) -> Struct_4 {
    var var_0 = Struct_2(1u);
    var var_1 = Struct_4(abs(u_input.a), Struct_2(_wgslsmith_div_u32(0u, ~0u)), u_input.a);
    var var_2 = select(var_1.b.a, ~var_0.a, true);
    var var_3 = _wgslsmith_f_op_f32(721f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -259f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -642f), _wgslsmith_f_op_f32(f32(-1f) * -649f))))));
    var var_4 = _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(15745u, 4294967295u, 1850u >> (var_0.a % 32u), var_1.b.a)), select(vec4<u32>(var_1.b.a, var_0.a, ~1u, var_0.a), vec4<u32>(~var_0.a, 1u, var_0.a, 4294967295u & var_1.b.a), false)) >> (firstLeadingBit(min(select(vec4<u32>(var_1.b.a, 1u, 4294967295u, 4294967295u) | vec4<u32>(var_0.a, 4294967295u, var_0.a, 4294967295u), vec4<u32>(var_0.a, 0u, var_0.a, 1u), vec4<bool>(false, true, false, false)), vec4<u32>(~var_0.a, var_1.b.a, _wgslsmith_add_u32(33245u, 20590u), 1u))) % vec4<u32>(32u));
    return Struct_4(func_3(), Struct_2(_wgslsmith_div_u32(abs(~var_0.a), 47239u)), 1i);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: Struct_4) -> vec2<bool> {
    let var_0 = Struct_1(1000f);
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(arg_1.b, var_1.b), 1f, _wgslsmith_f_op_f32(abs(1885f)), _wgslsmith_f_op_f32(-708f - 360f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.b, var_1.b, var_1.a.b.x, -1410f), vec4<f32>(var_0.a, 792f, -1610f, var_1.a.a))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, arg_1.a.b.x, arg_1.c.b.x, arg_1.c.b.x) - vec4<f32>(var_1.b, 839f, 843f, var_1.b))) - vec4<f32>(_wgslsmith_f_op_f32(step(var_0.a, -757f)), _wgslsmith_f_op_f32(arg_1.b * -658f), 1157f, _wgslsmith_f_op_f32(-arg_1.c.a))), vec4<f32>(-199f, _wgslsmith_f_op_f32(round(var_0.a)), _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(385f + arg_1.b))))));
    let var_3 = arg_0.x;
    var var_4 = _wgslsmith_div_vec3_u32(~firstLeadingBit(_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_2.b.a, arg_2.b.a, arg_2.b.a), min(vec3<u32>(arg_2.b.a, 1u, 4294967295u), vec3<u32>(4808u, 34134u, arg_2.b.a)), reverseBits(vec3<u32>(arg_2.b.a, 0u, arg_2.b.a)))), _wgslsmith_sub_vec3_u32(~vec3<u32>(41655u, 0u, 32333u), ~vec3<u32>(4294967295u, 1u, 94915u)) << (~countOneBits(vec3<u32>(arg_2.b.a, 38434u, arg_2.b.a)) % vec3<u32>(32u)));
    return vec2<bool>(any(select(vec3<bool>(var_3 | arg_0.x, arg_2.a == arg_2.a, false), !vec3<bool>(var_3, false, var_3), all(select(vec4<bool>(var_3, arg_0.x, arg_0.x, var_3), vec4<bool>(var_3, true, var_3, false), true)))), true);
}

fn func_1() -> Struct_2 {
    let var_0 = !any(select(func_4(vec2<bool>(false, true), Struct_5(Struct_3(-1299f, vec3<f32>(484f, 1193f, 240f)), -1562f, Struct_3(573f, vec3<f32>(509f, 1322f, 1705f))), func_2(-19379i)), select(vec2<bool>(true, true), vec2<bool>(true, true), func_4(vec2<bool>(true, true), Struct_5(Struct_3(-308f, vec3<f32>(-208f, 726f, -1000f)), 1000f, Struct_3(923f, vec3<f32>(-179f, -383f, -284f))), Struct_4(-84524i, Struct_2(0u), -1i))), false));
    var var_1 = func_2(_wgslsmith_mult_i32(-countOneBits(13316i), u_input.a) | 1i);
    let var_2 = vec2<u32>(var_1.b.a | var_1.b.a, reverseBits(var_1.b.a));
    let var_3 = vec2<u32>(_wgslsmith_mult_u32(~(~var_2.x), var_1.b.a), var_1.b.a);
    var var_4 = Struct_5(Struct_3(349f, vec3<f32>(_wgslsmith_f_op_f32(905f + 786f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(265f + 1233f) + _wgslsmith_f_op_f32(371f + 966f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -449f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -217f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(904f)) - _wgslsmith_div_f32(585f, -978f)))))), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-183f * -1023f)), 1000f), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(872f - -932f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1224f)), -2153f)));
    return Struct_2(var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(818f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(304f * 606f), _wgslsmith_f_op_f32(ceil(307f)))))));
    var var_1 = firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<i32>(~15242i, _wgslsmith_dot_vec2_i32(vec2<i32>(38210i, u_input.a), vec2<i32>(u_input.a, u_input.a)), i32(-1i) * -27983i, -u_input.a)), ~u_input.a, countOneBits(u_input.a)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), -1049f);
    var var_2 = Struct_4(-1i, func_1(), _wgslsmith_div_i32(var_1.x, u_input.a));
    var var_3 = ~var_2.b.a;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2522f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(261f * 927f)))), 1000f));
    var var_4 = vec2<bool>(true, true);
    var var_5 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-242f, 854f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-2147483647i, -3730i, var_1.x, i32(-1i) * -2147483647i), -(~(-(vec3<i32>(var_2.a, 1i, 0i) ^ vec3<i32>(-1i, var_1.x, -19339i)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1260f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_5.a), _wgslsmith_f_op_f32(floor(var_5.a)))), -1295f)), func_2(~var_2.a).b.a);
}

