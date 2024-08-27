struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(-1403f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1413f + -1469f), -604f, true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-830f - _wgslsmith_f_op_f32(-1308f * 1298f)) - _wgslsmith_f_op_f32(f32(-1f) * -2368f))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(var_0.x + -684f))) - -2039f), ~vec2<u32>(4294967295u, min(u_input.c.x, max(u_input.c.x, u_input.c.x))), ~(~1u), var_0.x);
    var var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(0u & _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.c.wxx, vec3<u32>(0u, 7914u, 33912u)), max(var_1.b.x, 17527u)), _wgslsmith_mod_u32(var_1.b.x, ~var_1.b.x)), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.xy, u_input.c.xx) & u_input.c.xw, vec2<u32>(~var_1.b.x, ~var_1.b.x)), abs(~vec2<u32>(u_input.c.x, u_input.c.x))));
    var_2 = select(select(u_input.c.zx, var_1.b & vec2<u32>(76137u, var_1.c), false) << (u_input.c.yw % vec2<u32>(32u)), reverseBits(vec2<u32>(21867u, _wgslsmith_mod_u32(var_1.b.x, var_2.x))), true) | select(~(~_wgslsmith_clamp_vec2_u32(u_input.c.zz, vec2<u32>(9453u, var_2.x), vec2<u32>(var_2.x, var_2.x))), select(u_input.c.yx, var_1.b, any(vec2<bool>(true, true))), !vec2<bool>(true, all(vec4<bool>(true, false, true, true))));
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a));
}

fn func_2() -> Struct_1 {
    var var_0 = ~u_input.c.x;
    var_0 = 75877u;
    var var_1 = vec3<bool>(false, !any(select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))), !any(vec3<bool>(true, true, true)));
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-191f)))), u_input.c.xx, ~(~(u_input.c.x >> (u_input.c.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    var_1 = select(!select(vec3<bool>(var_1.x, true, !var_1.x), vec3<bool>(true & var_1.x, false, all(vec4<bool>(var_1.x, true, var_1.x, var_1.x))), select(!var_1.x, var_1.x, false)), !select(!vec3<bool>(var_1.x, true, false), vec3<bool>(true, true, true), !(!vec3<bool>(var_1.x, var_1.x, var_1.x))), var_1.x);
    return Struct_1(select(!(!select(vec3<bool>(true, var_1.x, true), vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, var_1.x, var_1.x))), !(!vec3<bool>(true, var_1.x, true)), any(!var_1.xx)));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> i32 {
    var var_0 = 0i;
    var_0 = 1i;
    let var_1 = Struct_1(vec3<bool>(any(!arg_1.a.xy), any(vec4<bool>(false, all(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x)), false, true)), true));
    var_0 = -abs(64993i & u_input.a);
    var var_2 = func_2();
    return u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (~vec4<i32>(~2147483647i, u_input.e << (u_input.c.x % 32u), 1i, u_input.a) >> (_wgslsmith_div_vec4_u32(vec4<u32>(27307u | u_input.c.x, 1u, ~0u, _wgslsmith_sub_u32(u_input.c.x, 41404u)), u_input.c) % vec4<u32>(32u))) >> (u_input.c % vec4<u32>(32u));
    let var_1 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(max(vec3<u32>(4294967295u, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 1u, 2847u))), _wgslsmith_mod_vec3_u32(~u_input.c.ywz, u_input.c.yxw)), u_input.c.x);
    var var_2 = ~(_wgslsmith_mod_vec3_i32(var_0.xxz, vec3<i32>(abs(var_0.x), -21733i | u_input.d, firstTrailingBit(1i))) >> (u_input.c.xyx % vec3<u32>(32u)));
    var var_3 = vec4<i32>(min(_wgslsmith_add_i32(-51551i, 0i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, u_input.d), ~vec2<i32>(-1i, 2147483647i)), var_0.xx)), u_input.a, var_0.x, -(~(~(-38244i))) & -_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, -1i), ~vec2<i32>(var_0.x, var_0.x)));
    var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(var_3.x, firstLeadingBit(firstLeadingBit(6437i)), 0i, max(func_1(34431u, Struct_1(vec3<bool>(false, true, true))) | ~var_0.x, -45383i)), ~(vec4<i32>(var_3.x ^ -40547i, -var_0.x, _wgslsmith_div_i32(-6718i, var_0.x), u_input.e) ^ var_0));
    let var_4 = _wgslsmith_add_vec4_i32(select(~var_0 | (vec4<i32>(var_3.x, var_0.x, 2648i, 1i) << (vec4<u32>(30577u, u_input.c.x, 25155u, u_input.c.x) % vec4<u32>(32u))), -countOneBits(var_0), false) | -var_0, ~(~var_0));
    var var_5 = func_1(~1u, Struct_1(!vec3<bool>(25177i == var_3.x, select(false, false, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.zz, _wgslsmith_div_vec3_i32(vec3<i32>(min(-u_input.d, 0i), _wgslsmith_dot_vec2_i32(reverseBits(var_2.xz), vec2<i32>(var_2.x, -25561i)), _wgslsmith_mod_i32(var_4.x, u_input.d)), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-7972i, 1i), _wgslsmith_mult_i32(var_2.x, var_3.x), var_3.x), u_input.a, _wgslsmith_add_i32(74418i, -var_3.x))));
}

