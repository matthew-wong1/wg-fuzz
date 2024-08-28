struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<bool>,
    e: u32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = 833f;
    var var_1 = Struct_3(~vec2<i32>(1i, max(2147483647i, u_input.c.x)), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.d.x, 50941u) & min(u_input.d, ~u_input.d), u_input.d), arg_0, select(select(vec4<bool>(any(vec2<bool>(true, false)), true, select(false, false, true), true), vec4<bool>(true, true, any(vec4<bool>(true, true, true, false)), true), true), !vec4<bool>(u_input.c.x != u_input.a, true, any(vec2<bool>(false, true)), all(vec2<bool>(false, true))), any(vec3<bool>(true, true, true))), ~0u);
    var_0 = arg_0.d.x;
    var var_2 = vec2<i32>(1i, -1i);
    var var_3 = Struct_2(all(select(!var_1.d, !(!vec4<bool>(true, var_1.d.x, true, var_1.d.x)), vec4<bool>(var_1.d.x, var_1.d.x & true, var_1.d.x & var_1.d.x, any(vec3<bool>(var_1.d.x, true, false))))), vec2<bool>(true, any(!select(var_1.d, var_1.d, var_1.d.x))), ~vec2<u32>(firstLeadingBit(~u_input.b), var_1.b.x), arg_0, arg_0);
    return abs(~(~firstTrailingBit(~9478u)));
}

fn func_2(arg_0: vec3<bool>) -> Struct_4 {
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_clamp_vec2_u32(firstLeadingBit(u_input.d), u_input.d, ~abs(firstLeadingBit(u_input.d))) << (vec2<u32>(func_3(Struct_1(vec3<f32>(610f, 1932f, -168f), -824f, 4294967295u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(281f, 1000f, -359f), vec3<f32>(-1172f, -562f, -1000f), arg_0)))), firstLeadingBit(u_input.d.x)) % vec2<u32>(32u));
    var_0 = select(vec2<i32>(max(-22861i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-14561i, 47727i), vec2<i32>(2147483647i, 12240i))), 19892i), vec2<i32>(var_0.x, min(min(_wgslsmith_clamp_i32(var_0.x, var_0.x, u_input.c.x), -16061i), var_0.x)), arg_0.yy);
    let var_2 = min(~_wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.d, vec2<u32>(var_1.x, var_1.x)), vec2<u32>(var_1.x, u_input.b)), u_input.d);
    var var_3 = Struct_4(~(~max(19947u, u_input.d.x ^ 95036u)));
    return Struct_4(~1u);
}

fn func_1(arg_0: vec4<f32>) -> vec2<i32> {
    var var_0 = vec3<u32>(~(~min(0u, u_input.b)) >> (reverseBits(~_wgslsmith_mult_u32(u_input.b, 61101u)) % 32u), abs(u_input.d.x), 61320u);
    let var_1 = func_2(!vec3<bool>(true != any(vec4<bool>(true, false, true, false)), (arg_0.x > arg_0.x) & (4677u != u_input.b), false));
    var var_2 = vec3<i32>(~countOneBits(0i), 0i, _wgslsmith_sub_i32(u_input.c.x, u_input.a) | u_input.c.x);
    let var_3 = Struct_4(abs(u_input.d.x) & u_input.d.x);
    let var_4 = !any(vec4<bool>(any(vec2<bool>(false, false)), ~var_1.a > ~4294967295u, true, false));
    return u_input.c;
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<i32>, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = (u_input.d | vec2<u32>(1u, u_input.b)) >> (~(~min(~vec2<u32>(1129u, 45039u), vec2<u32>(u_input.b, u_input.d.x))) % vec2<u32>(32u));
    let var_1 = func_2(vec3<bool>(any(!(!vec3<bool>(arg_3.x, true, false))), false, arg_3.x));
    var var_2 = u_input.c;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1380f + arg_1), _wgslsmith_f_op_f32(arg_1 + -607f)), 356f), (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, 4294967295u, var_1.a), vec4<u32>(var_0.x, 1u, var_1.a, u_input.b)) >= var_1.a) || true)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + 771f) - arg_1) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1)) * arg_1))));
    let var_4 = _wgslsmith_sub_i32(firstLeadingBit(abs(countOneBits(arg_2.x) << (1u % 32u))), 17666i);
    return Struct_2(!arg_3.x, vec2<bool>(arg_3.x, var_0.x != reverseBits(1u)), _wgslsmith_sub_vec2_u32(max(vec2<u32>(1u, max(45816u, 1u)), vec2<u32>(4294967295u, ~1u)), max(u_input.d, select(u_input.d, u_input.d, true) & abs(u_input.d))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_3.x, 753f), -130f, -1307f)), 461f, u_input.d.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(sign(109f)), 1721f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-105f, arg_1, var_3.x), vec3<f32>(arg_1, var_3.x, 195f), false))))), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1188f, arg_1, arg_1), vec3<f32>(arg_1, var_3.x, var_3.x)) - vec3<f32>(var_3.x, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(462f, var_3.x, var_3.x))))), 1u >= var_1.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.x))), func_2(!select(arg_3, arg_3, false)).a, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x - arg_1), _wgslsmith_f_op_f32(min(1254f, arg_1))), var_3.x, _wgslsmith_f_op_f32(step(-1347f, _wgslsmith_f_op_f32(ceil(-718f)))))));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> Struct_4 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d.d.x, arg_2.e.a.x, -905f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1421f, 820f, arg_2.d.b))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -558f)), 1u, arg_2.e.d);
    var var_1 = select(!select(vec3<bool>(true, arg_2.a, false | arg_2.a), !vec3<bool>(arg_2.b.x, true, arg_2.b.x), ~u_input.a != -25635i), !(!(!vec3<bool>(arg_2.a, false, false))), select(!select(!vec3<bool>(arg_2.b.x, arg_2.a, true), select(vec3<bool>(arg_2.b.x, true, false), vec3<bool>(true, arg_2.a, arg_2.a), true), arg_0 == 0i), select(!vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x), vec3<bool>(false, true, true), vec3<bool>(false, arg_2.a, !arg_2.a)), all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(arg_2.a, arg_2.b.x, arg_2.a, arg_2.a), vec4<bool>(false, false, true, true)), !vec4<bool>(arg_2.a, false, arg_2.b.x, arg_2.a), select(vec4<bool>(arg_2.a, true, true, arg_2.b.x), vec4<bool>(arg_2.a, arg_2.b.x, arg_2.a, arg_2.a), vec4<bool>(arg_2.a, false, arg_2.b.x, true))))));
    var var_2 = ~0i;
    var var_3 = select(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(1u, 0u, 0u, arg_1)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.d.c, arg_2.d.c, arg_2.e.c, arg_2.c.x), vec4<u32>(u_input.d.x, var_0.c, 11899u, arg_1))), var_0.c >> (~(~84520u) % 32u), any(select(!vec4<bool>(true, false, false, var_1.x), !vec4<bool>(var_1.x, arg_2.a, false, true), false | var_1.x))) | ~(~4294967295u);
    var_2 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(func_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.e.a.x, var_0.b, arg_2.e.d.x, 437f) * vec4<f32>(arg_2.d.a.x, 510f, arg_2.e.a.x, 214f))))).x, select(1i, ~13578i, all(!arg_2.b))), _wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.c.x, arg_0, u_input.c.x, -2147483647i) << (vec4<u32>(1u, 54018u, arg_1, u_input.b) % vec4<u32>(32u))), vec4<i32>(2090i, arg_0, _wgslsmith_add_i32(-2147483647i, -1i), abs(arg_0))));
    return Struct_4(~(~reverseBits(1u)) >> ((u_input.d.x & ~var_0.c) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.c.x, u_input.d.x ^ firstLeadingBit(~u_input.b), func_4(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 1i, u_input.c.x) & vec3<i32>(u_input.a, u_input.c.x, -2147483647i), -vec3<i32>(u_input.a, -1i, 31609i)), u_input.c.x, firstTrailingBit(-u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -188f), func_1(vec4<f32>(956f, _wgslsmith_div_f32(1009f, -1520f), _wgslsmith_f_op_f32(-445f - -1002f), 543f)), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, false, false))));
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(max(u_input.d.x | _wgslsmith_div_u32(0u, u_input.d.x), var_0.a), func_4(~(vec3<i32>(25780i, u_input.c.x, u_input.a) ^ vec3<i32>(-2147483647i, u_input.c.x, -6904i)), _wgslsmith_f_op_f32(max(138f, -1092f)), vec2<i32>(u_input.a, 1i) ^ func_1(vec4<f32>(583f, -298f, -1141f, 983f)), vec3<bool>(true, true, true)).d.c, ~func_4(countOneBits(vec3<i32>(u_input.c.x, u_input.c.x, u_input.a)), _wgslsmith_f_op_f32(round(1000f)), ~u_input.c, vec3<bool>(false, true, true)).d.c, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_0.a, var_0.a, var_0.a), vec4<u32>(49416u, 4294967295u, u_input.b, u_input.b)), _wgslsmith_clamp_u32(var_0.a, min(111806u, var_0.a), 51181u))), _wgslsmith_add_vec4_u32(abs(vec4<u32>(30749u, u_input.d.x, var_0.a, 4294967295u)) & vec4<u32>(var_0.a, u_input.b, ~44417u, u_input.d.x), select(~(~vec4<u32>(var_0.a, 36120u, 0u, 11776u)), _wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.d.x, u_input.b, u_input.b, 39109u), vec4<u32>(1u, 8122u, var_0.a, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(17360u, var_0.a, u_input.b, u_input.d.x), vec4<u32>(12898u, u_input.d.x, var_0.a, u_input.b))), true)));
    var var_2 = false;
    var_1 = vec4<u32>(var_1.x, 4294967295u, 19722u, 43141u);
    let var_3 = vec2<u32>(countOneBits(func_5(~abs(u_input.c.x), _wgslsmith_mod_u32(var_0.a, 30681u) & _wgslsmith_add_u32(19520u, u_input.b), Struct_2(true, select(vec2<bool>(false, false), vec2<bool>(true, true), true), func_4(vec3<i32>(u_input.a, u_input.a, -13970i), -201f, vec2<i32>(-18871i, -2147483647i), vec3<bool>(true, true, false)).c, func_4(vec3<i32>(u_input.a, -21561i, -1i), -276f, u_input.c, vec3<bool>(true, false, true)).d, func_4(vec3<i32>(902i, 2147483647i, u_input.c.x), 2848f, vec2<i32>(u_input.c.x, -19612i), vec3<bool>(false, true, true)).e)).a), 4294967295u & u_input.b);
    var_2 = any(select(vec4<bool>(true, all(vec2<bool>(true, true)), true, all(select(vec2<bool>(true, false), vec2<bool>(true, false), false))), vec4<bool>(true, func_4(select(vec3<i32>(u_input.c.x, u_input.a, 52409i), vec3<i32>(u_input.c.x, u_input.c.x, -40449i), true), _wgslsmith_f_op_f32(112f * 204f), u_input.c, vec3<bool>(true, true, true)).b.x, true, all(vec2<bool>(true, true))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), any(vec4<bool>(true, false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), select(true, true, true))));
    var_0 = func_2(vec3<bool>(false, _wgslsmith_add_u32(4480u, _wgslsmith_add_u32(u_input.d.x, u_input.d.x)) > min(~u_input.d.x, ~1u), false));
    let var_4 = ~var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(563f * 698f) - -464f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1725f * -614f)))));
}

