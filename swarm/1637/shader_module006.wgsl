struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<bool> {
    var var_0 = 1i;
    var_0 = countOneBits(954i);
    let var_1 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), -_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 0i, 1i), vec3<i32>(17351i, 2147483647i, -48488i))) | max(-vec3<i32>(-2147483647i, 0i, 34886i), select(~vec3<i32>(-15155i, 16458i, -2147483647i), ~vec3<i32>(1i, -1i, -2147483647i), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-102f)), -370f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1094f * -183f)))) - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(429f * 761f), _wgslsmith_f_op_f32(f32(-1f) * -602f)), -737f)), _wgslsmith_mod_vec4_u32(~(~(vec4<u32>(u_input.a.x, 0u, 0u, 1u) ^ vec4<u32>(1u, 1u, 42393u, 1u))), vec4<u32>(~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~29895u >> (abs(1u) % 32u), 1u, u_input.a.x)), select(select(select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, false, false)), true, true)), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(false, false, true)), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b));
    var_0 = ~var_1.a.x;
    return !vec4<bool>(var_1.d.x, false, false || var_1.d.x, any(!select(vec4<bool>(var_1.d.x, var_1.d.x, var_1.d.x, var_1.d.x), vec4<bool>(var_1.d.x, true, var_1.d.x, var_1.d.x), vec4<bool>(var_1.d.x, var_1.d.x, var_1.d.x, var_1.d.x))));
}

fn func_2(arg_0: vec3<u32>) -> bool {
    var var_0 = Struct_1(abs(vec3<i32>(1i, -30393i, -_wgslsmith_dot_vec3_i32(vec3<i32>(71146i, 0i, 2147483647i), vec3<i32>(1i, 1i, -2147483647i)))), _wgslsmith_f_op_f32(abs(628f)), reverseBits(~vec4<u32>(80441u, u_input.a.x, u_input.a.x, u_input.a.x)) << (select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_0.x, u_input.a.x, arg_0.x), vec4<u32>(29251u, 4294967295u, arg_0.x, 7357u), vec4<u32>(0u, 1u, arg_0.x, 0u)) | ~vec4<u32>(arg_0.x, 4845u, 4294967295u, arg_0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(17439u, 35999u, 1u, 1u) | vec4<u32>(arg_0.x, u_input.a.x, u_input.a.x, arg_0.x), vec4<u32>(33209u, arg_0.x, 31399u, 7378u) | vec4<u32>(0u, 1u, arg_0.x, u_input.a.x)), func_3()) % vec4<u32>(32u)), vec3<bool>(true, true == ((arg_0.x << (0u % 32u)) != _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 25875u, arg_0.x), vec4<u32>(u_input.a.x, 35228u, 23463u, 36360u))), all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))))));
    var var_1 = Struct_1(vec3<i32>(-1i) * -vec3<i32>(firstLeadingBit(-19120i), var_0.a.x, -18872i), var_0.b, countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(9167u, arg_0.x, 1u, arg_0.x), ~_wgslsmith_mult_vec4_u32(var_0.c, var_0.c))), select(var_0.d, var_0.d, true & all(vec4<bool>(true, var_0.d.x, false, true))));
    let var_2 = vec3<bool>(true, var_1.d.x, true);
    let var_3 = var_0.d;
    var var_4 = Struct_1(_wgslsmith_mult_vec3_i32(var_0.a, var_0.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b - var_1.b), var_0.b))))), ~(var_1.c << (~var_1.c % vec4<u32>(32u))) | var_1.c, !select(var_2, func_3().xwz, !select(var_1.d, var_0.d, var_0.d.x)));
    return var_1.d.x;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = 1i;
    var_0 = ~(-14167i);
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.b * -983f))), arg_0.b, arg_0.b, arg_0.b))));
    var_0 = _wgslsmith_mod_i32(~(-arg_0.a.x), arg_0.a.x);
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(38724u, ~arg_0.c.x), countOneBits(~vec2<u32>(arg_0.c.x, 79877u))) << (vec2<u32>(_wgslsmith_add_u32(1u, u_input.a.x), 1u) % vec2<u32>(32u)), ~vec2<u32>(0u, firstTrailingBit(~u_input.a.x)));
    return Struct_1(~max(arg_0.a, (vec3<i32>(arg_0.a.x, 25637i, -41802i) & arg_0.a) >> (vec3<u32>(arg_0.c.x, 0u, 3485u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(ceil(var_1.x))) - _wgslsmith_div_f32(-462f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - arg_0.b) - _wgslsmith_f_op_f32(-arg_0.b)))), ~vec4<u32>(u_input.a.x, ~14005u, arg_0.c.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), arg_0.c.yw)), select(arg_0.d, select(vec3<bool>(-39864i <= arg_0.a.x, arg_0.d.x | false, select(arg_0.d.x, arg_0.d.x, true)), select(arg_0.d, vec3<bool>(arg_0.d.x, arg_0.d.x, true), select(arg_0.d, arg_0.d, arg_0.d.x)), arg_0.d.x), true));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(Struct_1(vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_f32(ceil(583f)), vec4<u32>(u_input.a.x, ~1u, ~(88688u >> (1u % 32u)), ~u_input.a.x), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), func_2(~vec3<u32>(u_input.a.x, 130642u, 4294967295u)))));
    return var_0;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~(-firstTrailingBit(vec3<i32>(0i, arg_3.a.x, -1i))), -511f, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(27232u, arg_2.c.x), arg_3.c.wy) >> (countOneBits(_wgslsmith_mod_u32(arg_2.c.x, 17161u)) % 32u), 4294967295u, arg_2.c.x, 1u), func_4(func_1()).d);
    let var_1 = false;
    var var_2 = false;
    var_2 = !var_0.d.x;
    var_2 = any(var_0.d.xz);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(792f))))), !(!(true | any(vec2<bool>(true, false)))), func_1(), func_4(Struct_1(vec3<i32>(-84258i >> (u_input.a.x % 32u), -41991i, -1i), -181f, abs(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 64308u)), vec3<bool>(select(true, true, false), u_input.a.x > 101998u, true))));
    var var_2 = vec2<f32>(-812f, -519f);
    var var_3 = func_1();
    var_1 = func_4(func_4(func_4(Struct_1(var_3.a >> (vec3<u32>(u_input.a.x, var_1.c.x, 74241u) % vec3<u32>(32u)), 327f, max(vec4<u32>(var_1.c.x, var_3.c.x, u_input.a.x, 14348u), vec4<u32>(var_1.c.x, 0u, var_1.c.x, u_input.a.x)), !vec3<bool>(true, var_1.d.x, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(((var_3.c.x | 1u) ^ var_3.c.x) | u_input.a.x);
}

