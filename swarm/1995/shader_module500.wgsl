struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_3, arg_3: vec4<i32>) -> vec3<bool> {
    var var_0 = Struct_1(526f);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a))) - _wgslsmith_f_op_f32(sign(-1284f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1377f * var_0.a) + _wgslsmith_f_op_f32(ceil(-995f)))))), _wgslsmith_f_op_f32(f32(-1f) * -695f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a)) + var_0.a))));
    let var_2 = select(_wgslsmith_add_vec3_i32(~(arg_3.xyx ^ vec3<i32>(arg_3.x, arg_0.x, 2147483647i)), firstLeadingBit(vec3<i32>(arg_0.x, arg_0.x, -64706i)) << (abs(vec3<u32>(arg_2.b, arg_1, arg_2.b)) % vec3<u32>(32u))), max(~abs(vec3<i32>(30686i, arg_3.x, 13713i)), vec3<i32>(-1i, i32(-1i) * -2147483647i, arg_0.x | arg_3.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, true)) && any(vec4<bool>(true, true, false, true)))) & select(vec3<i32>(-min(-10670i, -44996i), select(-1i, 2147483647i, false) >> (_wgslsmith_mult_u32(u_input.a.x, 53758u) % 32u), -(~0i)), arg_3.ywx, any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0.a)), ~arg_0);
    let var_4 = _wgslsmith_f_op_f32(-var_3.a.a);
    return select(vec3<bool>(true, true, true), select(select(vec3<bool>(var_0.a != var_1.x, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))), vec3<bool>(arg_3.x < ~29946i, false, all(vec3<bool>(true, true, true))), select(true, select(true, var_3.a.a <= -962f, true), any(vec3<bool>(true, true, true)))), select(select(vec3<bool>(true, true, arg_0.x == -1i), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true), vec3<bool>(true, true, true), true));
}

fn func_2(arg_0: Struct_3) -> u32 {
    let var_0 = select(!vec2<bool>(true, all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false))), vec2<bool>(any(!func_3(vec4<i32>(78960i, -10243i, -1i, 0i), 4294967295u, arg_0, vec4<i32>(1i, 39418i, -7401i, -5584i))), any(func_3(vec4<i32>(2177i, 2147483647i, -59662i, -2147483647i), u_input.a.x, arg_0, vec4<i32>(8447i, -12721i, 1i, -26677i))) && true), false);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-357f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var var_2 = -(~firstTrailingBit(-vec3<i32>(-1i, 4903i, -9123i)) >> ((vec3<u32>(~u_input.a.x, ~0u, 0u) | ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 32092u, 0u), vec3<u32>(arg_0.a, 4294967295u, arg_0.a))) % vec3<u32>(32u)));
    let var_3 = arg_0;
    let var_4 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~min(arg_0.a, 0u), 1u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 0u), _wgslsmith_add_u32(firstLeadingBit(5568u), ~var_3.b))), ~countOneBits(~arg_0.b), ~(~var_3.b), 14008u >> (1u % 32u));
    return firstLeadingBit(15621u);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(-2147483647i, 12858i, -2770i)), max(reverseBits(vec3<i32>(7584i, 35392i, -15919i) << (vec3<u32>(arg_0, 34643u, u_input.a.x) % vec3<u32>(32u))), ~vec3<i32>(-1i, -2147483647i, 2147483647i))) ^ _wgslsmith_sub_vec3_i32(~vec3<i32>(i32(-1i) * -1i, 1i, i32(-1i) * -2147483647i), _wgslsmith_add_vec3_i32(firstTrailingBit(~vec3<i32>(1i, 1i, 0i)), vec3<i32>(0i, 1i, min(-14914i, 1126i))));
    var var_1 = select(func_3(countOneBits(_wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, var_0.x, var_0.x, var_0.x), vec4<i32>(-3763i, var_0.x, var_0.x, 2147483647i))), _wgslsmith_dot_vec2_u32(u_input.a, abs(u_input.a)), Struct_3(~u_input.a.x, _wgslsmith_div_u32(arg_0, _wgslsmith_div_u32(u_input.a.x, u_input.a.x))), firstLeadingBit(vec4<i32>(1i, 11370i, _wgslsmith_mod_i32(var_0.x, -1i), ~0i))), !arg_2.wxy, select(select(!vec3<bool>(arg_2.x, arg_2.x, false), func_3(vec4<i32>(-1i, var_0.x, 0i, var_0.x), arg_1.a, Struct_3(arg_0, 0u), abs(vec4<i32>(var_0.x, var_0.x, -1i, var_0.x))), arg_2.xzw), select(select(vec3<bool>(false, arg_2.x, true), select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), arg_2.ywy, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, false)), vec3<bool>(func_3(vec4<i32>(var_0.x, -2147483647i, -1i, var_0.x), u_input.a.x, arg_1, vec4<i32>(-1i, 1i, var_0.x, -1i)).x, select(true, arg_2.x, false), any(vec3<bool>(true, true, false))), vec3<bool>(true, any(arg_2.zx), all(arg_2))), !vec3<bool>(arg_2.x, !arg_2.x, all(arg_2.xyy))));
    var_1 = !select(!vec3<bool>(var_1.x, arg_2.x, arg_0 == 0u), vec3<bool>(var_1.x, all(vec4<bool>(true, arg_2.x, false, true)), false), false);
    let var_2 = arg_1;
    var var_3 = Struct_3(arg_0, arg_1.b);
    return -52081i;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> i32 {
    let var_0 = firstTrailingBit(vec3<i32>(func_4(max(0u, ~11381u), Struct_3(~53383u, func_2(Struct_3(u_input.a.x, 37584u))), vec4<bool>(select(false, false, true), true, true, true)), -45078i, _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 13753i, -36578i, 1i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-36377i, 1i), vec2<i32>(-225i, -26693i)), -38916i, 2147483647i, i32(-1i) * -38502i))));
    let var_1 = true;
    return _wgslsmith_clamp_i32(-1i, var_0.x, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(12978i, _wgslsmith_add_i32(_wgslsmith_add_i32(48473i, 2147483647i << (u_input.a.x % 32u)), reverseBits(-11822i))), vec2<i32>(_wgslsmith_div_i32(0i, 1i), 1i));
    var_0 = vec2<i32>(var_0.x, ~(-77822i));
    var var_1 = vec4<i32>(-_wgslsmith_div_i32(-func_1(Struct_1(-259f), vec4<f32>(-718f, 1064f, -1967f, -730f)), 35172i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 42351i), firstTrailingBit(vec2<i32>(var_0.x, -2147483647i))) << (~(~u_input.a.x) % 32u), var_0.x), var_0.x, abs((func_4(1u, Struct_3(u_input.a.x, u_input.a.x), vec4<bool>(true, false, false, false)) & -7587i) | _wgslsmith_dot_vec3_i32(vec3<i32>(84264i, var_0.x, 22231i), _wgslsmith_clamp_vec3_i32(vec3<i32>(43446i, 13710i, 1i), vec3<i32>(-1i, 2147483647i, -30668i), vec3<i32>(var_0.x, 0i, -1i)))));
    var_1 = (select(vec4<i32>(var_1.x | 1i, abs(var_0.x), -var_0.x, firstLeadingBit(var_1.x)), -_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_1.x, 6014i, var_1.x), vec4<i32>(-18984i, 2147483647i, 2147483647i, 1i)), true | all(vec3<bool>(false, false, true))) << ((firstTrailingBit(max(vec4<u32>(16588u, 4094u, u_input.a.x, 1u), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 4294967295u))) | vec4<u32>(~30329u, u_input.a.x << (u_input.a.x % 32u), max(78187u, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(60575u, u_input.a.x), vec2<u32>(0u, 1u)))) % vec4<u32>(32u))) << (((vec4<u32>(49611u, 1u, ~4294967295u, reverseBits(51542u)) & ~_wgslsmith_mod_vec4_u32(vec4<u32>(36575u, u_input.a.x, u_input.a.x, 68127u), vec4<u32>(10166u, u_input.a.x, u_input.a.x, u_input.a.x))) ^ ~(~(vec4<u32>(1u, 1u, 0u, 60972u) | vec4<u32>(25559u, u_input.a.x, u_input.a.x, u_input.a.x)))) % vec4<u32>(32u));
    var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(25315i, var_0.x, var_1.x), vec3<i32>(-1i, -2943i, 0i)) << (((vec3<u32>(54700u, u_input.a.x, 4294967295u) | vec3<u32>(0u, 12563u, 51439u)) ^ firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_sub_i32(var_0.x, var_0.x), var_1.x, _wgslsmith_dot_vec2_i32(-var_1.yx, -var_1.wz))), var_0.x);
    var var_2 = Struct_3(~u_input.a.x, countOneBits(u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a, ~u_input.a.x, _wgslsmith_add_u32(9896u, 1u), ~var_2.a) ^ firstLeadingBit(vec4<u32>(25892u, var_2.a, u_input.a.x, 0u) | vec4<u32>(22397u, u_input.a.x, 0u, 4294967295u)), abs(vec4<u32>(67917u, 0u, u_input.a.x, u_input.a.x)) << (vec4<u32>(reverseBits(21369u), ~u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x << (var_2.b % 32u)) % vec4<u32>(32u))));
}

