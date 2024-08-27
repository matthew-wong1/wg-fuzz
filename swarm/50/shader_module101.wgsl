struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 12> = array<u32, 12>(0u, 30581u, 4294967295u, 1u, 14022u, 0u, 29715u, 93259u, 26558u, 1u, 0u, 1u);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2654f, 1f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -460f), -332f))), _wgslsmith_add_vec3_u32(reverseBits(~vec3<u32>(arg_0, global1[_wgslsmith_index_u32(arg_0, 12u)], u_input.c)), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c, 4294967295u, arg_0), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 12u)], 12u)], 0u, 119917u), vec3<u32>(101089u, u_input.c, 39738u)), select(vec3<u32>(global1[_wgslsmith_index_u32(30692u, 12u)], 0u, 1u), vec3<u32>(arg_0, u_input.c, 4294967295u), false) >> (~vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 12u)], 2552u) % vec3<u32>(32u)))), -abs(vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, -2147483647i), u_input.b.x)), vec2<i32>(-1i, -(~(u_input.b.x | u_input.b.x))), min(0u, arg_0));
    let var_1 = u_input.b;
    global0 = _wgslsmith_mult_i32(var_1.x, -21574i);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(-1193f)), ~vec3<u32>(23567u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(2860u, u_input.c, 0u), 4294967295u), ~firstLeadingBit(23480u)), ~var_1.zz >> (_wgslsmith_mult_vec2_u32(var_0.b.xx, var_0.b.zx) % vec2<u32>(32u)), -var_1.zx, 46410u);
    return -(~vec2<i32>(var_1.x, _wgslsmith_add_i32(var_0.c.x, _wgslsmith_sub_i32(var_1.x, var_0.d.x))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: i32) -> u32 {
    let var_0 = Struct_1(185f, _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)], u_input.a), vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(u_input.c, global1[_wgslsmith_index_u32(u_input.c, 12u)], 57583u))), select(_wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50023u, 12u)], 12u)], u_input.a, global1[_wgslsmith_index_u32(4294967295u, 12u)]), vec3<u32>(u_input.c, 1u, u_input.c)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.c, 0u), vec3<u32>(96255u, global1[_wgslsmith_index_u32(6004u, 12u)], 32183u)), vec3<bool>(true, true, true))), vec3<u32>(global1[_wgslsmith_index_u32(reverseBits(u_input.c), 12u)], ~4294967295u, u_input.c)), min(-u_input.b.xz, ~(-(arg_1.yz & vec2<i32>(10952i, -1i)))), func_3(_wgslsmith_div_u32(u_input.c, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~9583u, 12u)], 12u)]), !vec3<bool>(false, true, any(vec3<bool>(false, false, true)))), 34135u);
    let var_1 = var_0.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), 1630f, _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-650f, 2044f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, var_0.a) - 1150f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, -1459f, 405f))));
    global1 = array<u32, 12>();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.x)), -1410f), -256f)), abs(vec3<u32>(~reverseBits(79414u), u_input.c, u_input.a)), ~(~u_input.b.yx | reverseBits(vec2<i32>(arg_2, u_input.b.x))) >> (var_1.yz % vec2<u32>(32u)), var_0.c, ~(_wgslsmith_mod_u32(var_0.e, _wgslsmith_dot_vec3_u32(var_1, vec3<u32>(var_0.e, global1[_wgslsmith_index_u32(0u, 12u)], u_input.c))) ^ u_input.c));
    return 25625u << (0u % 32u);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = select(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.c.x, 40882i, 14050i), u_input.b.zwz, u_input.b.xwy), u_input.b.yxw), -u_input.b.xzx), u_input.b.zzw << (~(~min(vec3<u32>(arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(61567u, 12u)], 12u)]), arg_0)) % vec3<u32>(32u)), vec3<bool>(!arg_2, true | arg_2, true));
    var var_1 = countOneBits(~select(_wgslsmith_dot_vec3_u32(arg_0, arg_1.b), ~0u, true)) << (func_2(vec3<i32>(7256i, _wgslsmith_mult_i32(~22279i, var_0.x), -7891i), -_wgslsmith_add_vec3_i32(select(vec3<i32>(arg_1.d.x, 2147483647i, -47380i), u_input.b.zzz, vec3<bool>(arg_2, true, false)), vec3<i32>(arg_1.d.x, var_0.x, -28468i)), 0i) % 32u);
    global1 = array<u32, 12>();
    global1 = array<u32, 12>();
    var var_2 = arg_1;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))), arg_0, vec2<i32>(var_2.c.x, abs(u_input.b.x) << (1u % 32u)), countOneBits(max(reverseBits(vec2<i32>(u_input.b.x, 1i)), _wgslsmith_sub_vec2_i32(~u_input.b.xz, abs(vec2<i32>(2147483647i, -55232i))))), var_2.b.x);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.a)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a)))), ~vec3<u32>(u_input.c, 137189u, arg_2.e), -arg_2.c, (-u_input.b.yz & vec2<i32>(-arg_2.d.x, _wgslsmith_sub_i32(arg_1, 36794i))) | _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, abs(2147483647i)), select(reverseBits(u_input.b.xx), select(vec2<i32>(u_input.b.x, -2147483647i), arg_2.c, false), vec2<bool>(true, true))), select(func_2(abs(-u_input.b.zwy), _wgslsmith_clamp_vec3_i32(vec3<i32>(-35569i, arg_1, arg_1) << (vec3<u32>(1u, global1[_wgslsmith_index_u32(691u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)]) % vec3<u32>(32u)), u_input.b.wzx, _wgslsmith_add_vec3_i32(u_input.b.zwy, u_input.b.wxx)), arg_1), ~(~(~arg_2.b.x)), any(vec2<bool>(true, true))));
    global0 = abs(arg_1);
    var var_1 = Struct_1(var_0.a, ~select(~vec3<u32>(global1[_wgslsmith_index_u32(var_0.e, 12u)], 0u, var_0.b.x) & vec3<u32>(1401u, 3071u, 50691u), countOneBits(arg_2.b), select(true, true, u_input.b.x <= -26383i)), var_0.c, firstTrailingBit(_wgslsmith_div_vec2_i32(u_input.b.yz, (vec2<i32>(38409i, arg_0) >> (arg_2.b.yx % vec2<u32>(32u))) | -vec2<i32>(-21319i, 0i))), 45409u);
    let var_2 = func_1(vec3<u32>(~_wgslsmith_mult_u32(43064u, var_0.e), _wgslsmith_add_u32(select(~4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.e, var_1.b.x), 12u)], true), 4294967295u), 42827u), Struct_1(-729f, ~reverseBits(var_1.b) << (_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, var_0.b.x)), firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(0u, 12u)], arg_2.b.x, 49663u))) % vec3<u32>(32u)), u_input.b.xz, vec2<i32>(_wgslsmith_add_i32(-39758i, 1i), 1i), ~func_2(u_input.b.wyx, u_input.b.yzx, u_input.b.x) & u_input.a), true);
    var_1 = func_1(~var_1.b & abs(vec3<u32>(u_input.a >> (31944u % 32u), var_1.e ^ var_2.b.x, func_1(vec3<u32>(20605u, 40178u, 29409u), arg_2, true).e)), var_0, _wgslsmith_mod_i32((arg_2.c.x << (4294967295u % 32u)) << (0u % 32u), -1i) <= _wgslsmith_dot_vec2_i32(var_1.d, vec2<i32>(4249i, var_2.d.x) ^ u_input.b.yx));
    return true | (arg_2.d.x != 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.c) ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(70288u, u_input.c), vec2<u32>(u_input.a, 0u)), 12u)], 12u)], 1u, 1u) <= ~firstTrailingBit(~(~global1[_wgslsmith_index_u32(u_input.a, 12u)]));
    var var_1 = select(!select(vec3<bool>(select(false, false, false), u_input.b.x == 9354i, true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), true)), vec3<bool>(!func_4(~(-5814i), -29672i, func_1(vec3<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(1u, 12u)]), Struct_1(-814f, vec3<u32>(u_input.c, 4294967295u, u_input.c), vec2<i32>(4100i, -1i), vec2<i32>(u_input.b.x, u_input.b.x), global1[_wgslsmith_index_u32(u_input.a, 12u)]), true)), !(!any(vec3<bool>(false, true, false))), true), select(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), select(vec3<bool>(true, any(vec4<bool>(true, false, true, true)), 7579u <= u_input.a), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), all(vec2<bool>(true, all(vec4<bool>(true, true, false, true))))));
    var var_2 = false;
    var var_3 = func_1(_wgslsmith_sub_vec3_u32(min(abs(~vec3<u32>(u_input.a, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)])), vec3<u32>(32287u, u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 12u)], 12u)]) >> ((vec3<u32>(0u, 1u, global1[_wgslsmith_index_u32(4294967295u, 12u)]) << (vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], 0u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17477u, 12u)], 12u)], 0u), vec3<u32>(_wgslsmith_clamp_u32(1u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)]), countOneBits(23122u), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(u_input.c, 12u)], global1[_wgslsmith_index_u32(u_input.c, 12u)], 1u)))), func_1(select(max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 17416u, u_input.c), vec3<u32>(55275u, 9511u, global1[_wgslsmith_index_u32(u_input.a, 12u)])), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 27799u), vec3<u32>(u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17990u, 12u)], 12u)], 4294967295u))), vec3<u32>(~1u, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 12u)], 12u)], 12u)], 56912u), 4294967295u | u_input.c), false), Struct_1(-680f, ~vec3<u32>(0u, 0u, u_input.c), u_input.b.ww | _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(-31345i, u_input.b.x)), u_input.b.ww, 50774u), !(!any(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)))), var_1.x);
    let var_4 = ~_wgslsmith_div_vec2_u32(var_3.b.yx, ~(~vec2<u32>(6631u, global1[_wgslsmith_index_u32(u_input.c, 12u)]) << (vec2<u32>(13680u, var_3.e) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-(-abs(var_3.c) | ~u_input.b.xy), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(989f, var_3.a)), vec2<f32>(604f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.a)))), true)), reverseBits(var_4), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1272f, 1217f))) - vec2<f32>(-1000f, 240f)))));
}

