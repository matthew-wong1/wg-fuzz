struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: vec3<f32>) -> vec4<f32> {
    var var_0 = min(min(abs(1u), _wgslsmith_add_u32(min(50716u << (u_input.a.x % 32u), reverseBits(4382u)), 1u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, abs(4294967295u)), 2655u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(global0.a.x + arg_1.x), arg_0.a.x, -1000f)))));
    var var_2 = Struct_3(arg_0, Struct_2(-1270f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-425f, _wgslsmith_f_op_f32(floor(arg_3.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(global0.a + global0.a)), _wgslsmith_add_vec3_u32(~(~vec3<u32>(99674u, 0u, 79647u)), vec3<u32>(1u >> (u_input.a.x % 32u), 1u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)))));
    global0 = var_2.a;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1096f * -759f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.x))), -822f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(243f, arg_3.x)))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1038f, arg_0.a.x, var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-620f, _wgslsmith_f_op_f32(f32(-1f) * -776f)))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(global0.a * global0.a)), _wgslsmith_f_op_vec3_f32(select(global0.a.wzw, _wgslsmith_f_op_vec3_f32(step(global0.a.zwz, global0.a.xzy)), arg_0)), vec4<i32>(~(-32922i), _wgslsmith_clamp_i32(-1i, 7821i, 1i), _wgslsmith_clamp_i32(-34495i, -14764i, 1i), 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global0.a.www))))))));
    let var_0 = arg_0.yz;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(global0.a)), _wgslsmith_f_op_vec4_f32(global0.a - _wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(637f, -1665f, -907f, 927f))), vec4<bool>(var_0.x, 35919u >= u_input.a.x, true, arg_0.x || arg_0.x))))));
    let var_1 = u_input.a.x;
    let var_2 = Struct_3(Struct_1(global0.a), Struct_2(_wgslsmith_f_op_f32(1168f + _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(-578f + global0.a.x), Struct_1(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x), 440f, global0.a.x)), abs(u_input.a.ywz)));
    return var_2.b.c;
}

fn func_1() -> i32 {
    global0 = func_2(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true));
    let var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(~(-44820i), reverseBits(~0i)), -vec2<i32>(abs(88902i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -25649i, 1216i), vec3<i32>(-1i, 5294i, -784i)))), vec2<i32>(-116388i, min(-638i, max(0i, 0i)) >> (~_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(1u, u_input.a.x)) % 32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global0.a.xxz, _wgslsmith_f_op_vec3_f32(-global0.a.wwy))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.a.wzy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.yzy)), true))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-func_2(vec3<bool>(true, true, false)).a)), Struct_2(var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global0.a.x)), _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(-1000f - var_1.x)))), func_2(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), vec3<u32>(u_input.a.x, 103065u, 43754u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-422f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.b.a)) * -162f), 2155f, global0.a.x)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.b.c.a - vec4<f32>(var_2.b.b, -478f, global0.a.x, global0.a.x)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.b.a, var_2.a.a.x, -803f, -868f))))))));
    return select(var_0.x >> (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.yz | var_2.b.d.xz, select(vec2<u32>(36949u, u_input.a.x), vec2<u32>(u_input.a.x, var_2.b.d.x), vec2<bool>(true, false))), _wgslsmith_mod_vec2_u32(~var_2.b.d.yy, ~vec2<u32>(1u, u_input.a.x))) % 32u), var_0.x, !any(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<i32>(27906i, 15549i, 0i, select(-6246i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(11882i, 0i, -7111i), vec3<i32>(-1i, 3663i, 43197i)), abs(vec3<i32>(1i, -1i, -7969i))), true | all(vec4<bool>(false, false, false, false))));
    let var_1 = vec3<i32>(17819i, ~(-func_1()), ~4274i) << (u_input.a.xwx % vec3<u32>(32u));
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, firstTrailingBit(countOneBits(1i)), ~(-33157i), _wgslsmith_dot_vec3_i32(firstTrailingBit(var_0.xyz), -var_0.xyy)), ~var_0 >> (~u_input.a % vec4<u32>(32u))), -reverseBits(-35742i));
    var var_3 = all(select(vec2<bool>(all(vec3<bool>(true, true, false)), true), vec2<bool>(false, any(vec2<bool>(true, true))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(true, true)), false), any(vec4<bool>(true, true, true, true)))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global0.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, -2235f, -477f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a + vec4<f32>(-162f, global0.a.x, global0.a.x, global0.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, vec4<u32>(1u, 58397u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.zw, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zx)), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zx ^ vec2<u32>(u_input.a.x, 4294967295u))), ~_wgslsmith_div_u32(22866u, u_input.a.x) ^ ~u_input.a.x), _wgslsmith_div_vec4_u32(u_input.a, _wgslsmith_clamp_vec4_u32(u_input.a & ~vec4<u32>(0u, 1u, 108801u, 0u), vec4<u32>(u_input.a.x, 1u, ~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 5094u), u_input.a.xyw)), abs(~vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_vec3_f32(-global0.a.wxz));
}

