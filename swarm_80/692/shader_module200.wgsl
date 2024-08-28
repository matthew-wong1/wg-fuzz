struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32;

var<private> global2: vec3<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: f32) -> i32 {
    return _wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(arg_0.a, 0i), vec2<i32>(arg_0.a, -42173i)) & _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.e, u_input.b) << (vec2<u32>(2476u, 0u) % vec2<u32>(32u)), select(vec2<i32>(51671i, 2147483647i), vec2<i32>(44287i, u_input.b), vec2<bool>(false, false))), -_wgslsmith_sub_vec2_i32(vec2<i32>(-44411i, -14914i) << (global2.yx % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(arg_0.e, u_input.b)))));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<bool>) -> i32 {
    var var_0 = 1403f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -644f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-510f, -912f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2800f, -1000f)) + -174f))))) + _wgslsmith_div_f32(-446f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(280f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-538f + 268f)))));
    let var_1 = _wgslsmith_div_vec2_i32(arg_1, -(-firstLeadingBit(arg_1) | -(~arg_1)));
    global2 = ~_wgslsmith_add_vec3_u32(max(~abs(vec3<u32>(0u, global2.x, 14852u)), vec3<u32>(global2.x, global2.x, 40236u) >> ((vec3<u32>(0u, 0u, u_input.a) >> (vec3<u32>(u_input.c.x, 0u, u_input.c.x) % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<u32>(~abs(u_input.c.x), ~_wgslsmith_div_u32(u_input.a, global2.x), u_input.a & ~23499u));
    global2 = ~vec3<u32>(global2.x, u_input.c.x, global2.x);
    return arg_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-213f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(797f, -1000f, arg_0.d))))));
    let var_1 = Struct_1(func_2(arg_0, !(!arg_0.d), -31155i, -1438f), _wgslsmith_sub_u32(u_input.c.x << (~(~63622u) % 32u), 40835u), _wgslsmith_sub_u32(arg_0.c, countOneBits(min(arg_0.b, 41187u))), !arg_0.d, ~(i32(-1i) * -1i));
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(arg_1.yw, abs(vec2<i32>(u_input.b, var_1.a))), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(42916i, arg_1.x)), -vec2<i32>(-2147483647i, 1822i))), func_3(true, abs(vec2<i32>(0i, arg_1.x)), !(!vec4<bool>(false, arg_2, true, true))), _wgslsmith_dot_vec4_i32(vec4<i32>(-17641i, 7028i, _wgslsmith_add_i32(arg_1.x, -2147483647i), u_input.b >> (0u % 32u)), arg_1)), ~(~arg_1.zyw));
    let var_3 = _wgslsmith_f_op_f32(-1f);
    global1 = u_input.c.x >> (_wgslsmith_sub_u32(var_1.c, 0u) % 32u);
    return _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -_wgslsmith_sub_i32(48318i, 1i), var_2.x, arg_0.e), _wgslsmith_sub_vec4_i32(abs(~arg_1), ~_wgslsmith_mult_vec4_i32(arg_1, arg_1) >> (~vec4<u32>(var_1.b, 32878u, 49892u, 89500u) % vec4<u32>(32u))));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = ~1u | arg_1.x;
    let var_2 = vec3<i32>(-50592i, var_0.e, 0i & var_0.e);
    global1 = u_input.c.x;
    let var_3 = vec2<i32>(_wgslsmith_div_i32(-1i, var_2.x), arg_2.a);
    return Struct_1(arg_2.a, firstLeadingBit(~0u ^ _wgslsmith_clamp_u32(~global2.x, 42582u, ~global2.x)), abs(~_wgslsmith_mod_u32(var_0.b, firstLeadingBit(u_input.c.x))), arg_2.d, firstLeadingBit(arg_2.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global2.x;
    let var_1 = func_4(~62219u, _wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(abs(vec4<u32>(global2.x, u_input.c.x, 4294967295u, u_input.c.x)), ~vec4<u32>(u_input.a, u_input.c.x, global2.x, u_input.a)), vec4<u32>(firstLeadingBit(~u_input.c.x), ~(0u & global2.x), 4294967295u, u_input.c.x | (global2.x << (1u % 32u)))), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(7857i, func_1(Struct_1(u_input.b, 17886u, 0u, false, u_input.b), vec4<i32>(-1i, u_input.b, u_input.b, -33862i), true), _wgslsmith_clamp_i32(u_input.b, 14239i, -9869i), func_1(Struct_1(-1i, u_input.a, u_input.c.x, true, u_input.b), vec4<i32>(u_input.b, 23733i, u_input.b, 34402i), true)), vec4<i32>(1i, u_input.b, -22008i, 3165i)), abs(~1u), ~(global2.x ^ abs(18221u)), false, ~(-abs(-90339i))));
    var var_2 = var_1.d;
    var_0 = firstLeadingBit(u_input.a);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1005f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(656f, 852f)) - _wgslsmith_f_op_f32(-2106f * -1234f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(191f + -1568f), _wgslsmith_f_op_f32(f32(-1f) * -920f))))));
    var_2 = any(!select(select(!vec2<bool>(var_1.d, true), select(vec2<bool>(var_1.d, var_1.d), vec2<bool>(false, false), vec2<bool>(var_1.d, true)), var_1.d), !(!vec2<bool>(var_1.d, false)), vec2<bool>(true, true)));
    let var_4 = func_4(~_wgslsmith_add_u32(var_1.b, global2.x), vec4<u32>(_wgslsmith_mult_u32(~(~4294967295u), global2.x), max(~4294967295u, _wgslsmith_mult_u32(4294967295u, abs(global2.x))), 1u, global2.x), var_1);
    var var_5 = func_4(~_wgslsmith_mult_u32(select(~4294967295u, u_input.a ^ var_1.c, !var_4.d), ~(~var_1.c)), ~vec4<u32>(u_input.a >> (19061u % 32u), 4562u, var_1.b, firstLeadingBit(var_4.c)) & select(~(~vec4<u32>(var_4.b, var_1.c, 4294967295u, global2.x)), vec4<u32>(firstTrailingBit(var_1.c), 1u, _wgslsmith_mod_u32(var_1.c, 8454u), _wgslsmith_add_u32(31984u, var_4.c)), !(!vec4<bool>(false, var_4.d, true, var_1.d))), var_4);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(~(~var_5.c), u_input.c.x, var_1.c)), _wgslsmith_mod_vec4_i32(select(reverseBits(vec4<i32>(21403i, -1i, var_4.a, -30740i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 19941i, 2147483647i, -2147483647i), vec4<i32>(1i, -20138i, u_input.b, var_5.a)), vec4<bool>(var_1.d, false, var_5.d, var_4.d)), _wgslsmith_add_vec4_i32(-vec4<i32>(0i, var_5.e, 34142i, var_5.e), ~vec4<i32>(40068i, 0i, 1i, 1i))) ^ (min(~vec4<i32>(-4402i, -1i, var_4.a, var_5.a), ~vec4<i32>(var_1.a, 38899i, -18781i, var_5.e)) >> (countOneBits(~vec4<u32>(16054u, var_4.b, u_input.c.x, 4294967295u)) % vec4<u32>(32u))), ~2147483647i, vec4<f32>(_wgslsmith_f_op_f32(sign(var_3.x)), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), 1f));
}

