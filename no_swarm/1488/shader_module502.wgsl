struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> vec4<bool> {
    var var_0 = Struct_1(vec2<u32>(18983u, 4294967295u), !all(select(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, false, arg_0), false), vec3<bool>(true, false, false), arg_0)), any(!(!(!vec2<bool>(arg_0, arg_0)))), 1i >> (_wgslsmith_add_u32(firstLeadingBit(arg_1.x) & arg_1.x, reverseBits(17669u)) % 32u));
    return vec4<bool>(all(!(!select(vec4<bool>(var_0.c, false, true, false), vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), true))), any(select(vec4<bool>(arg_0, !arg_0, arg_0, var_0.b), select(select(vec4<bool>(var_0.c, true, arg_0, true), vec4<bool>(var_0.c, var_0.c, arg_0, arg_0), arg_0), !vec4<bool>(false, var_0.c, var_0.b, var_0.c), !arg_0), !arg_0)), true, all(vec4<bool>(true, !(!var_0.c), _wgslsmith_f_op_f32(select(708f, 555f, false)) < 238f, true)));
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_1(u_input.a.xx, ~(-25405i) < (_wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(36213i, 3067i, 54283i), vec3<i32>(0i, -18425i, -4485i))) << ((countOneBits(9155u) >> (u_input.a.x % 32u)) % 32u)), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), func_3(true, vec4<u32>(4294967295u, u_input.a.x, 23211u, u_input.a.x)), vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)))), ~(-17183i));
    var_0 = Struct_1(select(firstTrailingBit(vec2<u32>(u_input.a.x, firstTrailingBit(var_0.a.x))), var_0.a, !vec2<bool>(var_0.b, true)), var_0.c, all(!vec4<bool>(var_0.c, var_0.b, var_0.c, var_0.b)), 15450i);
    var_0 = Struct_1(vec2<u32>(7157u & (1u & var_0.a.x), ~(~(4294967295u >> (u_input.a.x % 32u)))), max(min(var_0.d, var_0.d), -12944i) < _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(-26294i, var_0.d, var_0.d), vec3<i32>(2147483647i, var_0.d, var_0.d)), select(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.d, var_0.d, -24660i), vec3<i32>(2147483647i, -27060i, -27391i)), abs(vec3<i32>(0i, -22740i, var_0.d)), !vec3<bool>(var_0.b, false, true))), var_0.b, abs(~(-1i)) & -firstTrailingBit(43545i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1310f, -370f)))) + _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(select(-112f, 488f, var_0.c)))))));
    let var_2 = u_input.a.yzy;
    return -(~(~reverseBits(vec3<i32>(var_0.d, var_0.d, 40168i)))) & abs(countOneBits(vec3<i32>(_wgslsmith_clamp_i32(1i, var_0.d, var_0.d), -1i, 11427i)));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_clamp_vec3_i32(-countOneBits(vec3<i32>(0i, -56558i, _wgslsmith_mult_i32(1i, -1i))), select(-vec3<i32>(max(-30980i, -66243i), _wgslsmith_sub_i32(-55685i, -1i), 1i), vec3<i32>(~(-9730i), i32(-1i) * -34903i, i32(-1i) * -2147483647i) << (u_input.a.wwz % vec3<u32>(32u)), true), select(vec3<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-35379i, -32891i, -18992i), 2147483647i >> (u_input.a.x % 32u)), -1i), func_2(), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), true)));
    let var_1 = !vec2<bool>(true, !any(vec4<bool>(false, false, false, false)));
    var_0 = func_2();
    var var_2 = Struct_1(u_input.a.xw, any(!var_1), true, 30753i);
    var var_3 = var_1.x;
    return _wgslsmith_f_op_f32(-arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(-175f != _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1254f * 309f)))));
    var var_1 = Struct_1(u_input.a.xy, true, var_0, 16653i);
    var_1 = Struct_1(select(var_1.a, abs(~vec2<u32>(0u, 4294967295u)), true), true, var_0, _wgslsmith_sub_i32(-1i, i32(-1i) * -2157i));
    var var_2 = Struct_1(u_input.a.ww, true, any(select(!func_3(var_0, vec4<u32>(4294967295u, u_input.a.x, var_1.a.x, 7925u)).xx, select(select(vec2<bool>(true, true), vec2<bool>(var_1.c, var_0), false), func_3(var_1.b, vec4<u32>(u_input.a.x, var_1.a.x, u_input.a.x, 33756u)).wz, !vec2<bool>(var_1.b, false)), vec2<bool>(true, true))), var_1.d);
    var_2 = Struct_1(select(vec2<u32>(var_1.a.x, (var_2.a.x ^ 26704u) << (~u_input.a.x % 32u)), select(~u_input.a.wz | vec2<u32>(86931u, var_2.a.x), _wgslsmith_add_vec2_u32(var_2.a, var_1.a), !all(vec4<bool>(var_2.c, false, true, var_1.c))), vec2<bool>(true, !any(vec2<bool>(true, true)))), any(!func_3(true, _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.a.x, var_1.a.x, var_1.a.x, 1166u), vec4<u32>(29281u, u_input.a.x, 100077u, u_input.a.x))).xy), all(vec4<bool>(_wgslsmith_div_u32(3661u, u_input.a.x) <= countOneBits(u_input.a.x), true, true, false)), -3000i);
    let var_3 = Struct_1(vec2<u32>(~(1u ^ (u_input.a.x >> (var_2.a.x % 32u))), ~(~(~u_input.a.x))), !(true && select(var_2.c, var_2.a.x <= u_input.a.x, any(vec4<bool>(var_0, true, true, var_1.b)))), (var_2.d == ~_wgslsmith_mult_i32(var_1.d, var_1.d)) == all(vec4<bool>(!var_0, true, select(var_1.c, var_0, false), true)), reverseBits(var_2.d));
    var var_4 = Struct_1(u_input.a.ww & select(~var_2.a, var_3.a, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a) == var_2.a.x), false, var_1.c, -1i);
    var_2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(41783i, min(_wgslsmith_mod_i32(abs(~var_3.d), i32(-1i) * -23933i), -var_3.d), 26198u);
}

