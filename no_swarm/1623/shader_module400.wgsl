struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> vec4<bool> {
    return !vec4<bool>((u_input.c >> (firstLeadingBit(u_input.a.x) % 32u)) > ((u_input.c >> (u_input.a.x % 32u)) >> (u_input.a.x % 32u)), true, any(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)))), true);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = vec4<i32>(1i, abs(-74314i), arg_2, 48159i);
    var_0 = u_input.b;
    var_0 = u_input.b;
    let var_1 = all(!vec3<bool>(!arg_3.c.x, !arg_3.b.x, arg_3.b.x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(arg_3.a)), !select(arg_3.b, select(select(arg_3.b, vec4<bool>(var_1, true, true, true), arg_3.c.x), select(vec4<bool>(var_1, var_1, false, arg_3.b.x), vec4<bool>(false, false, true, false), vec4<bool>(arg_3.b.x, var_1, true, arg_3.b.x)), all(arg_3.b.yx)), !func_2()), vec3<bool>(true, var_1, u_input.a.x == 1u), arg_1.x);
    return Struct_2(arg_3, vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.d, arg_1.x, var_2.d), countOneBits(arg_1.xzw)), 4294967295u) | (firstTrailingBit(~arg_1.zzy) ^ arg_1.yww), Struct_1(988f, arg_3.b, vec3<bool>(true && arg_3.c.x, var_2.c.x, true), 1u), 0u);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = 1u;
    var var_1 = u_input.a.x;
    var var_2 = arg_0.c.zy;
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-451f, 711f, -1054f))))) - vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -396f))), _wgslsmith_f_op_f32(-572f * -1088f), arg_0.a))));
    var_1 = ~(~arg_0.d);
    return func_3(-_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b.x, -17674i, u_input.d.x, u_input.b.x), vec4<i32>(i32(-1i) * -39401i, 11878i, _wgslsmith_mod_i32(2147483647i, u_input.c), _wgslsmith_mult_i32(u_input.c, u_input.d.x))), _wgslsmith_div_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(10566u, var_0), ~(~17246u), _wgslsmith_sub_u32(32566u, reverseBits(u_input.a.x)), ~(~var_0)), ~(~(vec4<u32>(50263u, 14480u, arg_0.d, var_0) | vec4<u32>(arg_0.d, 4294967295u, var_0, 68076u)))), u_input.c, Struct_1(var_3.x, func_2(), select(vec3<bool>(true, false, false), arg_0.c, arg_0.b.x), var_0));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = vec2<bool>(true, func_2().x | (any(select(vec4<bool>(false, false, arg_1.c.c.x, arg_1.a.c.x), arg_1.c.b, vec4<bool>(false, arg_0, arg_1.a.b.x, false))) & arg_0));
    var var_1 = _wgslsmith_f_op_f32(min(arg_1.a.a, 808f));
    var_1 = -1640f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a) + _wgslsmith_f_op_f32(-1052f - 1626f))))));
    return arg_1;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: Struct_2) -> bool {
    let var_0 = vec4<u32>(0u, ~func_4(arg_2.c.c.x, Struct_2(func_4(true, arg_2, u_input.d.zz).c, select(arg_2.b, vec3<u32>(u_input.a.x, u_input.a.x, 68462u), arg_2.a.b.x), arg_2.a, _wgslsmith_dot_vec3_u32(arg_2.b, arg_2.b)), _wgslsmith_div_vec2_i32(abs(u_input.d.zx), ~vec2<i32>(arg_1.x, arg_1.x))).d, select(39204u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 14456u, 1u), vec4<u32>(1u, arg_2.c.d, 30198u, arg_0.x))), arg_2.a.d == 6740u), ~44673u);
    let var_1 = arg_2.c.b;
    let var_2 = !func_3(_wgslsmith_mult_vec4_i32(u_input.b, -(vec4<i32>(u_input.d.x, arg_1.x, arg_1.x, u_input.b.x) | u_input.b)), vec4<u32>(min(u_input.a.x, u_input.a.x), ~_wgslsmith_clamp_u32(4294967295u, arg_0.x, 46191u), _wgslsmith_sub_u32(~1u, arg_0.x), firstLeadingBit(var_0.x)), 2147483647i, arg_2.a).a.b.x;
    var var_3 = _wgslsmith_sub_u32(0u, ~abs(~var_0.x) | min(~var_0.x, ~(~0u)));
    let var_4 = false;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_mod_i32((u_input.c << (u_input.a.x % 32u)) ^ -u_input.d.x, u_input.d.x), -countOneBits(u_input.b.x), 0i);
    var_0 = vec3<i32>(36985i, var_0.x ^ ~abs(-7817i), ~(-2626i));
    let var_1 = vec4<u32>(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 50934u, u_input.a.x, 0u), vec4<u32>(7441u, u_input.a.x, u_input.a.x, 66149u)))), u_input.a.x, ~1u, ~u_input.a.x);
    var var_2 = select(!vec2<bool>(!select(false, false, true), all(vec2<bool>(false, false))), select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), func_5(vec2<u32>(var_1.x, 4294967295u) & ~var_1.yz, -vec2<i32>(1i, 14531i), func_4(true, func_1(Struct_1(-1329f, vec4<bool>(true, false, false, false), vec3<bool>(false, true, false), u_input.a.x)), vec2<i32>(473i, var_0.x)))), !vec2<bool>(-2098f == _wgslsmith_f_op_f32(trunc(439f)), any(vec3<bool>(true, true, true))));
    var var_3 = u_input.b.yyz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a & min(~firstLeadingBit(var_1.yz), _wgslsmith_div_vec2_u32(u_input.a, var_1.yy)), func_1(Struct_1(func_4(false, Struct_2(Struct_1(1179f, vec4<bool>(true, true, true, true), vec3<bool>(var_2.x, false, true), u_input.a.x), var_1.wxx, Struct_1(-679f, vec4<bool>(false, false, var_2.x, var_2.x), vec3<bool>(var_2.x, false, var_2.x), 18966u), 38660u), vec2<i32>(-1i, -2147483647i) << (var_1.zw % vec2<u32>(32u))).a.a, select(!vec4<bool>(var_2.x, var_2.x, false, false), !vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(true, var_2.x, true, var_2.x)), func_3(countOneBits(vec4<i32>(1i, u_input.c, u_input.c, var_0.x)), ~vec4<u32>(u_input.a.x, 2492u, 1u, var_1.x), reverseBits(1i), Struct_1(-1099f, vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec3<bool>(var_2.x, false, var_2.x), u_input.a.x)).c.b.yww, 24530u)).b);
}

