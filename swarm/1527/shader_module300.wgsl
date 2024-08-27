struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_sub_vec3_i32(~(~u_input.a.yxz), _wgslsmith_add_vec3_i32(vec3<i32>(-862i, u_input.b, ~u_input.b), select(-vec3<i32>(u_input.a.x, -29451i, -1i), ~u_input.a.zyw, vec3<bool>(arg_1.x, arg_1.x, false))) & ~vec3<i32>(-2780i, firstLeadingBit(1i), -2762i));
    let var_1 = select(vec3<u32>(max(4294967295u, 3269u), abs(reverseBits(arg_0)), abs(arg_0)), ~countOneBits(vec3<u32>(arg_0, arg_0, 25333u)) | vec3<u32>(4294967295u | arg_0, 49139u, ~0u), !arg_1.wwy) ^ vec3<u32>(countOneBits(_wgslsmith_mult_u32(4294967295u, arg_0) ^ arg_0), ~arg_0, arg_0);
    let var_2 = ~reverseBits(1i);
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-618f * 1f))));
    let var_4 = Struct_2(!all(arg_1), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(339f)), _wgslsmith_f_op_f32(f32(-1f) * -348f)))), -select(u_input.a, vec4<i32>(var_0.x, 2147483647i, 0i, var_2), true)));
    return !arg_1.zzw;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-952f * _wgslsmith_f_op_f32(248f - 2124f))))));
    let var_1 = Struct_3(arg_1.a, ~(vec3<u32>(75140u, 57872u, _wgslsmith_clamp_u32(4294967295u, 0u, 0u)) >> (min(vec3<u32>(1u, 1u, 1u), vec3<u32>(33634u, 62853u, 15344u)) % vec3<u32>(32u))));
    let var_2 = select(select(!(!vec3<bool>(false, arg_1.a, false)), select(!vec3<bool>(var_1.a, var_1.a, var_1.a), !vec3<bool>(false, arg_1.a, true), !func_3(var_1.b.x, vec4<bool>(arg_1.a, true, var_1.a, arg_1.a))), vec3<bool>(true, false, any(!vec3<bool>(var_1.a, var_1.a, false)))), vec3<bool>(true, func_3(_wgslsmith_sub_u32(0u, var_1.b.x), select(!vec4<bool>(var_1.a, var_1.a, var_1.a, arg_1.a), select(vec4<bool>(true, false, var_1.a, false), vec4<bool>(arg_1.a, var_1.a, var_1.a, arg_1.a), var_1.a), !arg_1.a)).x, false), vec3<bool>((firstLeadingBit(1u) | var_1.b.x) <= _wgslsmith_dot_vec3_u32(~var_1.b, select(vec3<u32>(0u, var_1.b.x, var_1.b.x), vec3<u32>(1u, var_1.b.x, 1u), true)), true, var_1.a));
    var var_3 = _wgslsmith_mult_i32(countOneBits(-u_input.b), firstLeadingBit(14920i));
    var var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(var_1.b.x, var_1.b.x), _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(var_1.b.zx, var_1.b.zz, vec2<u32>(1u, var_1.b.x)), var_1.b.xy), 1u), ~(~(~(vec4<u32>(13695u, 11509u, var_1.b.x, 0u) & vec4<u32>(42378u, var_1.b.x, var_1.b.x, var_1.b.x)))));
    return true;
}

fn func_1() -> Struct_2 {
    global0 = 4294967295u;
    let var_0 = any(select(select(vec4<bool>(all(vec3<bool>(true, false, false)), true, true, any(vec2<bool>(false, false))), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), func_2(vec4<i32>(0i, 2147483647i, u_input.a.x, u_input.a.x), Struct_2(true, Struct_1(-552f, u_input.a)))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), true));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2145f, 163f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 310f) - vec2<f32>(-921f, -229f)))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(-1695f, -762f), -113f))))));
    let var_2 = ~0u;
    return Struct_2(!(!(!var_0) && (!var_0 && any(vec2<bool>(false, var_0)))), Struct_1(-1377f, ~u_input.a | u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(~1u, reverseBits(min(62675u, 1u)), _wgslsmith_clamp_u32(15402u, 54479u, 0u) << (2658u % 32u)), vec3<u32>(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(47363u, 37344u, 76529u), vec3<u32>(1u, 39301u, 7385u)) << (4562u % 32u)), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, _wgslsmith_add_u32(0u, 0u), 1u, _wgslsmith_add_u32(15293u, 80297u)))));
    let var_0 = func_1();
    let var_1 = var_0.b;
    let var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(~(i32(-1i) * -27053i), var_0.b.b.x, -2147483647i, _wgslsmith_add_i32(-45056i, var_0.b.b.x) >> (22686u % 32u)), var_1.b);
    global0 = abs(min(countOneBits(1u), firstTrailingBit(~_wgslsmith_div_u32(58952u, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.xzz, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(38444u, 4294967295u, 0u, 46744u)), vec4<u32>(767u >> (1u % 32u), reverseBits(8146u), ~31418u, _wgslsmith_mod_u32(1u, 82340u))) << (~_wgslsmith_add_u32(~24261u, countOneBits(70764u)) % 32u));
}

