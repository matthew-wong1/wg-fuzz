struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: i32, arg_3: vec2<f32>) -> vec4<bool> {
    let var_0 = ~1i;
    return !vec4<bool>(false, true, true, any(select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(false, false, false, false))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a.a.zxz * _wgslsmith_div_vec3_f32(arg_1.a.a.wyx, vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.d), _wgslsmith_f_op_f32(max(680f, arg_0.a.a.x)), _wgslsmith_f_op_f32(sign(arg_1.a.d))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-540f, 914f, -842f) + vec3<f32>(arg_2, 647f, 625f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a.a.ywz)));
    let var_1 = vec3<f32>(arg_3.d, arg_3.d, _wgslsmith_f_op_f32(floor(arg_2)));
    var_0 = _wgslsmith_div_vec3_f32(var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_1.a.a.wyx, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(362f, var_0.x, 440f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_3.d, arg_3.d, arg_2))) - arg_1.a.a.wzz), true))));
    var_0 = _wgslsmith_f_op_vec3_f32(-arg_3.a.wzw);
    return !select(vec3<bool>(true, !(arg_0.b.x >= 51346u), -u_input.b > u_input.b), vec3<bool>(func_1(all(vec3<bool>(true, true, true)), ~vec3<u32>(33686u, 24082u, arg_1.c.x), u_input.b, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1095f, var_0.x)))).x, any(vec3<bool>(true, true, false)) | any(vec3<bool>(false, true, true)), all(vec4<bool>(true, true, true, true))), any(vec3<bool>(any(vec2<bool>(true, true)), true, true)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = select(vec3<bool>(true, false, ~(~0i) == ~_wgslsmith_mult_i32(u_input.b, 2147483647i)), select(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), select(vec3<bool>(false, select(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, false, false, true)), true)), all(func_3(Struct_2(Struct_1(vec4<f32>(arg_1.a.d, -209f, arg_0.a.x, arg_0.a.x), arg_1.b.x, vec4<u32>(13246u, arg_0.b, arg_2.x, 1u), arg_0.a.x), arg_0.c, arg_1.d, vec4<u32>(arg_0.c.x, 48114u, 9494u, 1u)), arg_1, arg_1.a.a.x, Struct_1(arg_0.a, arg_2.x, arg_0.c, 773f)))), vec3<bool>(true, true, true));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(681f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-854f)) * -1772f), arg_0.d, _wgslsmith_f_op_f32(abs(2031f))))), 1u, vec4<u32>(arg_2.x, 4294967295u, _wgslsmith_mult_u32(~(arg_0.c.x ^ 0u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0.c.xxw, vec3<u32>(26848u, 4294967295u, arg_2.x)), _wgslsmith_add_vec3_u32(vec3<u32>(29u, 1u, arg_1.c.x), vec3<u32>(arg_0.c.x, 57035u, 0u)))), arg_1.b.x), _wgslsmith_f_op_f32(-1f));
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~30889u, arg_2.x, 1u, arg_2.x), vec4<u32>(4294967295u, 1u, var_1.b, arg_2.x | ~arg_2.x)) ^ ~_wgslsmith_mod_u32(var_1.c.x ^ _wgslsmith_clamp_u32(26414u, 19741u, arg_2.x), firstLeadingBit(max(3419u, arg_1.d.x)));
    var var_3 = arg_1;
    let var_4 = func_3(arg_1, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(var_3.a.a + vec4<f32>(arg_1.a.d, arg_0.a.x, var_3.a.a.x, var_3.a.d)), abs(u_input.a.x), vec4<u32>(5513u, reverseBits(arg_0.c.x), abs(u_input.a.x), ~arg_0.b), 474f), countOneBits(~arg_1.c), _wgslsmith_mod_vec4_u32(~arg_1.a.c, max(var_1.c, arg_1.c)), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(var_1.c, vec4<u32>(arg_1.c.x, 20374u, 7779u, 0u)), var_1.c), abs(vec4<u32>(1u, arg_2.x, arg_1.d.x, 4294967295u)))), var_3.a.a.x, Struct_1(var_3.a.a, 58684u, _wgslsmith_add_vec4_u32(min(vec4<u32>(47169u, 13105u, arg_1.b.x, arg_1.c.x), arg_1.d), ~vec4<u32>(4294967295u, u_input.c.x, 0u, 33775u)), _wgslsmith_f_op_f32(-var_1.d))).x;
    return Struct_2(Struct_1(vec4<f32>(1520f, _wgslsmith_f_op_f32(abs(arg_1.a.d)), -988f, -110f), ~(arg_2.x & var_3.d.x), firstTrailingBit(vec4<u32>(1u, 27839u, abs(17580u), 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(298f)))), var_3.d, vec4<u32>(arg_0.b, abs(var_1.b), ~((arg_2.x << (arg_1.a.b % 32u)) << (1u % 32u)), max(reverseBits(_wgslsmith_mult_u32(arg_2.x, arg_2.x)), arg_2.x)), vec4<u32>(_wgslsmith_div_u32(40187u, 20683u), abs(arg_0.b), ~(~44260u), 51994u));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> bool {
    var var_0 = !(func_3(Struct_2(Struct_1(vec4<f32>(arg_2.a.a.x, -224f, 972f, arg_2.a.a.x), 16616u, arg_2.a.c, arg_2.a.d), arg_2.a.c, _wgslsmith_mod_vec4_u32(arg_2.d, arg_2.d), ~vec4<u32>(arg_2.d.x, 4294967295u, u_input.c.x, arg_2.d.x)), Struct_2(func_2(Struct_1(vec4<f32>(-2054f, arg_2.a.a.x, arg_2.a.a.x, 358f), arg_1, arg_2.d, arg_2.a.d), arg_2, vec2<u32>(arg_1, arg_0)).a, ~vec4<u32>(0u, arg_1, 1u, 0u), vec4<u32>(u_input.a.x, arg_2.a.c.x, 18791u, 1551u), arg_2.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.d * arg_2.a.d)), arg_2.a).x | true);
    var_0 = !arg_3;
    var var_1 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(arg_2.a.a)))))), 1u, min(vec4<u32>(arg_2.a.c.x | 0u, 1u, _wgslsmith_add_u32(1u, 15828u), arg_0 << (7151u % 32u)), arg_2.c), _wgslsmith_f_op_f32(-arg_2.a.d)), Struct_2(func_2(arg_2.a, Struct_2(arg_2.a, arg_2.d, vec4<u32>(55425u, arg_1, 1u, 0u), abs(arg_2.d)), ~vec2<u32>(arg_0, 0u)).a, _wgslsmith_mult_vec4_u32(~(arg_2.b >> (vec4<u32>(4294967295u, 55108u, 37030u, 0u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(arg_2.d, arg_2.b)), arg_2.a.c, arg_2.c), u_input.c.zy).a;
    var_1 = arg_2.a;
    var_0 = !(!(!(!any(vec2<bool>(true, arg_3)))));
    return any(func_3(Struct_2(func_2(arg_2.a, Struct_2(arg_2.a, var_1.c, var_1.c, var_1.c), reverseBits(var_1.c.ww)).a, ~vec4<u32>(arg_0, arg_1, 4294967295u, 0u), arg_2.a.c, max(_wgslsmith_sub_vec4_u32(var_1.c, var_1.c), ~arg_2.b)), arg_2, arg_2.a.a.x, func_2(func_2(arg_2.a, func_2(Struct_1(arg_2.a.a, 79285u, vec4<u32>(12631u, 1u, 0u, arg_2.a.b), var_1.a.x), arg_2, u_input.a), firstLeadingBit(var_1.c.yy)).a, Struct_2(arg_2.a, ~var_1.c, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 8466u, 4294967295u, 42357u), arg_2.d), vec4<u32>(35519u, arg_1, arg_2.d.x, 4294967295u)), vec2<u32>(~4294967295u, 35580u)).a).xz);
}

fn func_5(arg_0: bool, arg_1: bool) -> Struct_2 {
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(1206f)), 1038f, _wgslsmith_f_op_f32(max(111f, 360f)), _wgslsmith_f_op_f32(f32(-1f) * -1269f))), u_input.c.x, ~(~(vec4<u32>(43132u, 4294967295u, 11781u, u_input.c.x) | vec4<u32>(u_input.c.x, 0u, 4294967295u, u_input.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -298f)), ~vec4<u32>(~(~0u), u_input.a.x, 13708u, _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 0u, 19250u, 353u), vec4<u32>(u_input.c.x, u_input.c.x, 85688u, 42930u)))), countOneBits(firstTrailingBit(~(~vec4<u32>(u_input.a.x, u_input.c.x, u_input.c.x, u_input.a.x)))), ~firstLeadingBit(firstLeadingBit(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 9374u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(all(select(vec4<bool>(true, false, true, true), func_1(false, u_input.c, u_input.b, vec2<f32>(-1879f, 862f)), false)) || !func_4(u_input.c.x, max(84603u, u_input.c.x), func_2(Struct_1(vec4<f32>(-1102f, -1053f, 205f, -667f), u_input.a.x, vec4<u32>(u_input.a.x, u_input.c.x, 86039u, u_input.a.x), 785f), Struct_2(Struct_1(vec4<f32>(1250f, -1000f, 2080f, -311f), u_input.c.x, vec4<u32>(u_input.a.x, 0u, u_input.c.x, 13060u), -502f), vec4<u32>(51517u, u_input.a.x, 53627u, u_input.a.x), vec4<u32>(32118u, u_input.a.x, 4294967295u, 4294967295u), vec4<u32>(u_input.a.x, 63585u, 0u, 1u)), vec2<u32>(5426u, 35276u)), func_1(false, vec3<u32>(u_input.a.x, 63182u, 32335u), u_input.b, vec2<f32>(1961f, 1148f)).x), (_wgslsmith_dot_vec2_i32(~vec2<i32>(54415i, 2147483647i), -vec2<i32>(u_input.b, u_input.b)) ^ u_input.b) == -_wgslsmith_mult_i32(reverseBits(u_input.b), 17574i));
    var var_1 = vec2<bool>(!(u_input.b > _wgslsmith_mult_i32(u_input.b, -4578i)) | false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -324f) - 1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -469f)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_5(true, false).a.d) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-320f)) - _wgslsmith_f_op_f32(select(var_0.a.d, -500f, true)))));
    var var_2 = firstLeadingBit(~_wgslsmith_div_vec3_i32(min(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(u_input.b, -19166i, u_input.b)), reverseBits(vec3<i32>(3510i, u_input.b, -960i))), max(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)), -vec3<i32>(-18169i, u_input.b, 6102i))));
    var var_3 = 1546f;
    var_2 = ~(~max(_wgslsmith_sub_vec3_i32(vec3<i32>(31435i, u_input.b, u_input.b), vec3<i32>(-2374i, var_2.x, -29084i)), select(vec3<i32>(u_input.b, 56852i, u_input.b), vec3<i32>(10870i, -6817i, -29055i), vec3<bool>(false, var_1.x, false)))) << (max(_wgslsmith_mult_vec3_u32(select(u_input.c, u_input.c, vec3<bool>(true, true, var_1.x)) | _wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(28091u, 4294967295u, u_input.a.x)), abs(reverseBits(vec3<u32>(1u, var_0.c.x, var_0.b.x)))), _wgslsmith_add_vec3_u32(var_0.d.yxz, _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.b, 82045u, 35949u), ~vec3<u32>(4294967295u, u_input.a.x, var_0.c.x)))) % vec3<u32>(32u));
    var_1 = func_1(all(vec3<bool>(func_4(~58321u, func_2(Struct_1(var_0.a.a, 4294967295u, vec4<u32>(1u, u_input.a.x, 4294967295u, 43076u), var_0.a.d), Struct_2(var_0.a, vec4<u32>(20839u, u_input.c.x, 39330u, 50382u), vec4<u32>(u_input.a.x, var_0.b.x, 4294967295u, u_input.c.x), var_0.d), vec2<u32>(53659u, var_0.b.x)).c.x, func_2(Struct_1(vec4<f32>(2133f, -492f, var_0.a.a.x, var_0.a.a.x), 15227u, vec4<u32>(u_input.a.x, 0u, u_input.c.x, 0u), var_0.a.d), Struct_2(var_0.a, var_0.a.c, vec4<u32>(var_0.d.x, u_input.a.x, u_input.c.x, var_0.d.x), vec4<u32>(u_input.a.x, 17217u, 233u, var_0.a.c.x)), u_input.a), false), false, false)), vec3<u32>(1472u, ~1u, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(u_input.a.x, 68518u), ~0u) ^ ~(~var_0.a.b)), u_input.b, var_0.a.a.wy).wz;
    let x = u_input.a;
    s_output = StorageBuffer(func_5(any(!func_1(true, vec3<u32>(0u, var_0.a.c.x, 1u), 0i, vec2<f32>(var_0.a.a.x, -281f)).yw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(215f + var_0.a.d))).a.a.xw, var_0.a.d, var_0.a.a.x);
}

