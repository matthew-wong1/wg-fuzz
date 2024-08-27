struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec3<f32> {
    var var_0 = 61225i;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1358f, _wgslsmith_f_op_f32(f32(-1f) * -465f), _wgslsmith_f_op_f32(f32(-1f) * -1327f))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(min(-1241f, -708f)), _wgslsmith_f_op_f32(floor(-556f)))))));
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(6182u, 4294967295u, u_input.a.x), u_input.a.zzz >> (u_input.a.ywx % vec3<u32>(32u))), ~0u | ~(~u_input.c), min(4294967295u, u_input.c)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c, firstTrailingBit(u_input.c), 69539u), ~u_input.a.zyz), u_input.a.x, countOneBits(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 26025u, u_input.c), u_input.a)))));
    let var_1 = Struct_1(vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-12266i, u_input.b.x, u_input.d.x, u_input.d.x), select(vec4<i32>(-44794i, -73991i, u_input.d.x, u_input.e.x), u_input.b, vec4<bool>(false, true, false, true))), -1i, u_input.b.x), vec4<f32>(arg_0, arg_0, arg_0, -449f), u_input.e, countOneBits(-u_input.d.xy) << (min(~max(u_input.a.yw, u_input.a.zz), ~vec2<u32>(u_input.a.x, var_0)) % vec2<u32>(32u)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(~u_input.b.wzw, -vec3<i32>(var_1.a.x, 25714i, var_1.d.x)), vec3<i32>(u_input.d.x, var_1.a.x, 0i) ^ (vec3<i32>(u_input.b.x, -11067i, var_1.c.x) & var_1.a), ~(-var_1.c)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1136f, var_1.b.x, var_1.b.x, -944f)))))), _wgslsmith_div_vec3_i32(vec3<i32>(~u_input.d.x, -u_input.b.x, 1i), vec3<i32>(u_input.d.x, u_input.e.x, 2147483647i) << (reverseBits(vec3<u32>(4294967295u, 4294967295u, 1u)) % vec3<u32>(32u))), vec2<i32>(_wgslsmith_clamp_i32(-13912i, var_1.a.x, u_input.d.x) & _wgslsmith_add_i32(u_input.b.x, u_input.d.x), var_1.d.x)), 4294967295u, true, var_1);
    let var_3 = ~select(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(86822u, var_0)), ~(vec2<u32>(36395u, 4294967295u) >> (u_input.a.zz % vec2<u32>(32u)))), abs(35062u), var_2.c);
    var var_4 = Struct_1((~_wgslsmith_add_vec3_i32(var_2.d.a, var_1.a) << (u_input.a.wxz % vec3<u32>(32u))) << (_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.xzz | vec3<u32>(52410u, var_0, var_2.b), u_input.a.zzz), (vec3<u32>(36492u, var_2.b, 26027u) | vec3<u32>(var_3, 87326u, var_3)) >> (u_input.a.ywx % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_1.b)) + _wgslsmith_f_op_vec4_f32(-var_1.b))))), vec3<i32>(-1i) * -var_2.d.c, min(var_2.d.a.zy, -(vec2<i32>(-1i) * -vec2<i32>(u_input.d.x, 26469i))));
    return (25996u >> (_wgslsmith_mod_u32(16318u, min(abs(var_0), var_3)) % 32u)) ^ u_input.a.x;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = ~u_input.a;
    var var_1 = arg_3.x;
    let var_2 = Struct_2(Struct_1(max(vec3<i32>(-16722i, 2147483647i, 0i), u_input.b.xwx), vec4<f32>(_wgslsmith_f_op_f32(-1000f * arg_2), arg_1, -1111f, _wgslsmith_f_op_f32(920f * _wgslsmith_f_op_f32(-arg_2))), abs(~u_input.d.zyz), abs(-(~vec2<i32>(arg_0, 16679i)))), func_3(-2025f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -623f), _wgslsmith_f_op_f32(round(arg_1)), arg_3.x))), false != (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -754f)))), Struct_1(u_input.d.xyw, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(874f, -712f, arg_2, arg_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1552f, arg_1, 429f, 735f) + vec4<f32>(-705f, 423f, arg_2, arg_2))))), _wgslsmith_clamp_vec3_i32(min(u_input.e, vec3<i32>(18589i, -18337i, -1i) & u_input.e), vec3<i32>(u_input.e.x, u_input.b.x, u_input.e.x), ~u_input.d.wyx), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(-2147483647i, u_input.d.x), -vec2<i32>(-23335i, arg_0)), vec2<i32>(-1393i, -2147483647i))));
    let var_3 = u_input.b.wyx;
    var_0 = ~vec4<u32>(firstLeadingBit(0u), 57761u, 1u, var_2.b);
    return var_2.a;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(firstTrailingBit(-2147483647i), 0i);
    var var_1 = func_2(_wgslsmith_sub_i32(_wgslsmith_div_i32(~max(0i, var_0), 0i), var_0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) + _wgslsmith_f_op_f32(arg_3.b.x - arg_0.x)) - -369f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1095f, arg_3.b.x))) - arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x)))), vec4<bool>(-u_input.e.x != -(~11559i), any(vec4<bool>(true, true, true, true)), !all(vec4<bool>(true, true, true, true)), true));
    var var_2 = select(true, all(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false))), all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true)) & true);
    var var_3 = func_2(_wgslsmith_clamp_i32(arg_3.c.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.b, u_input.d), arg_2.a.x ^ 57745i), arg_2.c.x) >> (select(u_input.a.x, 1u, true) % 32u), 999f, -1043f, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false), true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), false));
    var var_4 = true;
    return func_2(-2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b.x), _wgslsmith_f_op_f32(f32(-1f) * -252f)), -229f, !(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = arg_2.a.x | -1i;
    var_0 = -26828i;
    var_0 = _wgslsmith_mod_i32(-1i, -28576i);
    let var_1 = vec3<bool>(any(vec4<bool>(false, true, true, any(vec4<bool>(false, false, true, true)))) == true, !(!all(vec2<bool>(false, false))), true);
    let var_2 = ~(~_wgslsmith_mult_u32(min(~4294967295u, select(1582u, 37118u, false)), 51705u));
    return StorageBuffer(vec4<i32>(-arg_0.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c.x, -24945i, 41762i, arg_1.d.x) | vec4<i32>(0i, -19048i, -1i, -2147483647i), vec4<i32>(_wgslsmith_mod_i32(1i, -1i), -2147483647i, _wgslsmith_mod_i32(-17992i, u_input.e.x), 0i)), 47881i, -49422i), ~_wgslsmith_dot_vec3_u32(max(~u_input.a.wzx, u_input.a.xyx), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.wxz, u_input.a.xzw, u_input.a.wzz), countOneBits(u_input.a.zyz))), 0u, arg_2.c.yx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (u_input.b.xyx & vec3<i32>(u_input.e.x << (u_input.a.x % 32u), u_input.b.x, -2877i)) << ((u_input.a.xzw ^ u_input.a.zyz) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = func_5(Struct_1(~var_0 >> (vec3<u32>(u_input.c ^ u_input.a.x, abs(4294967295u), u_input.c >> (u_input.c % 32u)) % vec3<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1479f, -2222f, false)) + _wgslsmith_div_f32(-208f, -315f)), 403f, 1f, 551f), reverseBits(~var_0) ^ vec3<i32>(0i, var_0.x, var_0.x), _wgslsmith_mult_vec2_i32(-u_input.d.yx, reverseBits(vec2<i32>(23530i, var_0.x))) << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.c, 18391u), vec4<u32>(u_input.c, u_input.c, 89435u, 5047u)), u_input.c) % vec2<u32>(32u))), func_4(_wgslsmith_f_op_vec3_f32(func_1()), Struct_1(vec3<i32>(-1i) * -u_input.d.wyy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-784f, -921f, -114f, 1000f) + vec4<f32>(-906f, 351f, -638f, -600f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-118f, -990f, -657f, -1046f))), u_input.e, select(vec2<i32>(u_input.b.x, -38035i), var_0.yz, true) | min(vec2<i32>(u_input.d.x, u_input.e.x), vec2<i32>(1i, 2147483647i))), Struct_1(vec3<i32>(min(u_input.b.x, var_0.x), u_input.d.x, _wgslsmith_add_i32(u_input.b.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2546f, 526f, -107f, 205f), vec4<f32>(-1000f, -488f, -1000f, 294f), true))), -(~u_input.e), min(~vec2<i32>(2147483647i, 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, var_0.x), u_input.d.xy))), func_2(u_input.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 225f))), _wgslsmith_f_op_f32(-1214f + _wgslsmith_f_op_f32(f32(-1f) * -1016f)), vec4<bool>(true, true, true, true))), func_2(~countOneBits(max(u_input.e.x, 0i)), func_4(vec3<f32>(-420f, _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-262f - -468f)), Struct_1(abs(var_0), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(363f, 745f, -1345f, -159f), vec4<f32>(-156f, -808f, 1567f, 489f), false)), var_0, abs(vec2<i32>(-44747i, 2147483647i))), func_2(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -615f), -866f, vec4<bool>(true, false, true, false)), Struct_1(-vec3<i32>(var_0.x, u_input.e.x, -3421i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-126f, -512f, -380f, 233f)), select(u_input.d.xzz, u_input.b.yyz, vec3<bool>(false, true, true)), -vec2<i32>(97186i, 2147483647i))).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -796f))), vec4<bool>(true, true, true, true)));
}

