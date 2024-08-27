struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(2473u, 0u, 1u, 1u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    global0 = vec4<u32>(_wgslsmith_dot_vec2_u32(min(~global0.wz, vec2<u32>(abs(29655u), _wgslsmith_add_u32(5983u, u_input.a))), ~_wgslsmith_add_vec2_u32(~vec2<u32>(30261u, 0u), _wgslsmith_div_vec2_u32(global0.yz, vec2<u32>(19069u, arg_1.a)))), _wgslsmith_mod_u32(~(~(~arg_0.a)), ~(max(4294967295u, u_input.a) >> (35353u % 32u))), _wgslsmith_dot_vec2_u32(global0.xy, vec2<u32>(global0.x, _wgslsmith_dot_vec2_u32(global0.yz, vec2<u32>(84987u, 0u)))) & ~24428u, global0.x);
    return vec2<u32>(4294967295u, u_input.a) & ~(~(~(~vec2<u32>(4294967295u, global0.x))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_div_f32(-397f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1556f))))));
    return arg_0.x;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = select(!vec2<bool>(all(vec4<bool>(true, true, true, true)), true), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(all(vec3<bool>(true, true, true)), all(vec4<bool>(true, false, false, false))), vec2<bool>(true, true)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(true, true)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false))), true));
    var var_1 = arg_1.e.x;
    let var_2 = !vec3<bool>(false, true, !(!(!var_0.x)));
    var var_3 = Struct_1(1u, -u_input.b, _wgslsmith_clamp_i32(reverseBits(2147483647i), u_input.b, arg_1.b), _wgslsmith_mult_i32(-(-1i ^ arg_1.b), ~(-(~u_input.b))), arg_1.e);
    return Struct_1(~arg_1.a, 1i, -var_3.d, arg_1.b, arg_1.e);
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<f32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1359f)))) * 126f));
    global0 = max(~vec4<u32>(~_wgslsmith_mod_u32(4294967295u, 85932u), arg_0.x, u_input.a, _wgslsmith_dot_vec4_u32(~arg_0, vec4<u32>(0u, global0.x, arg_1, 11381u))), select(_wgslsmith_mult_vec4_u32(arg_0, arg_0) ^ abs(vec4<u32>(89207u, 51040u, global0.x, 1u)), ~vec4<u32>(38232u, 4294967295u, arg_0.x, u_input.a), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false))) | vec4<u32>(~countOneBits(4294967295u), 4294967295u, 1u, 14835u));
    var var_1 = Struct_1(firstTrailingBit(arg_0.x & 60315u) >> (arg_1 % 32u), reverseBits(u_input.b), ~_wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.b, 69346i), vec2<i32>(u_input.b, u_input.b)), vec2<i32>(-41708i, u_input.b))), -7515i, vec3<f32>(-595f, _wgslsmith_f_op_f32(round(-207f)), var_0));
    let var_2 = func_4(1u, Struct_1(func_3(select(_wgslsmith_mult_vec2_u32(global0.xx, global0.yz), func_2(Struct_1(4294967295u, -44747i, 2147483647i, -60222i, vec3<f32>(-785f, var_0, 487f)), Struct_1(0u, -31767i, 1i, -1i, var_1.e)), vec2<bool>(true, false)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.b, var_1.b), vec3<i32>(u_input.b, u_input.b, u_input.b))), -1i, 58694i, select(_wgslsmith_add_i32(var_1.d, _wgslsmith_mod_i32(var_1.c, 1i)), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.b, var_1.d, var_1.c, 1i)), vec4<i32>(-1i, -21357i, -26947i, -38193i) << (vec4<u32>(1u, arg_0.x, 1u, 62938u) % vec4<u32>(32u))), true), vec3<f32>(arg_2.x, -1007f, var_0)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(select(arg_2.x, -425f, !any(vec4<bool>(true, true, true, true)))), -2065f, -725f);
    return var_1.e;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32) -> vec4<u32> {
    var var_0 = ~arg_0.x;
    var var_1 = arg_1;
    var var_2 = Struct_1(func_4(14919u, arg_1).a, 0i, func_4(~0u, func_4(1u, arg_1)).b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, ~(-2147483647i), u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(countOneBits(0i), -2147483647i, -1i), vec3<i32>(var_1.c, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(-1i, u_input.b)), -1i & var_1.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec4<u32>(select(0u, arg_1.a, false), u_input.a, abs(global0.x), ~var_1.a), global0.x, var_1.e.yy))));
    global0 = _wgslsmith_mult_vec4_u32(max(vec4<u32>(_wgslsmith_mult_u32(~var_2.a, arg_2), global0.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.a, 1u), vec3<u32>(global0.x, var_2.a, global0.x)), ~4294967295u ^ ~global0.x), vec4<u32>(var_1.a, _wgslsmith_sub_u32(~11474u, 66764u & var_2.a), func_4(1u, func_4(arg_2, Struct_1(30682u, var_1.c, arg_1.d, var_1.d, arg_1.e))).a, max(arg_0.x, var_1.a) << (var_2.a % 32u))), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.a, var_2.a, u_input.a, u_input.a), vec4<u32>(18186u, 4294967295u, arg_0.x, 43957u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 14408u, arg_2, 86u), vec4<u32>(6426u, 0u, 0u, var_2.a), vec4<u32>(var_1.a, arg_0.x, arg_0.x, arg_1.a)) % vec4<u32>(32u))) << (~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(arg_2, var_2.a, 0u, arg_2)), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, u_input.a)) % vec4<u32>(32u)));
    var var_3 = func_2(arg_1, Struct_1(abs(var_1.a), _wgslsmith_mult_i32(0i, arg_1.d), -2147483647i, _wgslsmith_mod_i32(-min(var_1.c, arg_1.b), -1006i), _wgslsmith_f_op_vec3_f32(-var_2.e))).x;
    return _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(arg_2, global0.x, u_input.a, 0u)), ~(~(~vec4<u32>(arg_1.a, u_input.a, var_2.a, 63807u)))) & select(~(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 27365u, arg_0.x, var_1.a), vec4<u32>(0u, arg_0.x, 25473u, arg_0.x)) ^ reverseBits(vec4<u32>(arg_1.a, var_1.a, var_1.a, global0.x))), ~select(~vec4<u32>(0u, arg_0.x, 26728u, 33648u), reverseBits(vec4<u32>(24082u, 67035u, global0.x, arg_2)), vec4<bool>(false, false, true, false)), vec4<bool>(true, any(vec3<bool>(false, true, false)), any(vec4<bool>(false, true, false, false)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(select(global0.wxz, ~global0.wzw, vec3<bool>(true, true, true)), Struct_1(_wgslsmith_add_u32(global0.x & 15401u, 1u), u_input.b, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(12876i, -50518i) >> (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u))), -vec2<i32>(u_input.b, u_input.b)), ~(-u_input.b) | -_wgslsmith_sub_i32(2147483647i, 36607i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(~vec4<u32>(global0.x, global0.x, 38593u, u_input.a), ~global0.x, vec2<f32>(-1170f, 423f))))), 36241u);
    global0 = (select(~vec4<u32>(1u, 1u, global0.x, global0.x), ~(~vec4<u32>(global0.x, u_input.a, u_input.a, u_input.a)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.a, global0.x), ~4294967295u, 4294967295u, ~u_input.a), _wgslsmith_mult_vec4_u32(select(vec4<u32>(10285u, 31725u, 66225u, global0.x), vec4<u32>(global0.x, u_input.a, global0.x, 47053u), vec4<bool>(true, true, false, false)), reverseBits(vec4<u32>(0u, 45346u, 35856u, 4294967295u)))) % vec4<u32>(32u))) | firstLeadingBit(vec4<u32>(global0.x, global0.x, u_input.a, ~17502u));
    var var_0 = vec2<u32>(u_input.a >> (~3381u % 32u), 18152u);
    global0 = ~(~(~(~func_5(global0.yyy, Struct_1(var_0.x, u_input.b, u_input.b, 0i, vec3<f32>(1000f, -895f, 743f)), 1735u))));
    var var_1 = Struct_1(global0.x, -u_input.b & u_input.b, u_input.b, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(21060i, -25291i, i32(-1i) * -u_input.b), -(i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 707f, -1746f) + vec3<f32>(-1882f, -506f, -1097f))))));
    var_1 = Struct_1(global0.x << (4244u % 32u), -34468i, ~u_input.b | var_1.c, u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.e * var_1.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.e)), false)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(round(-998f)), 1866f, -327f)))));
    var_0 = abs(global0.yy);
    global0 = (vec4<u32>(1u, u_input.a, (var_0.x | 0u) | _wgslsmith_add_u32(29448u, var_1.a), ~(~4101u)) << (_wgslsmith_add_vec4_u32(~(~vec4<u32>(59269u, 4294967295u, 1u, var_0.x)), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(global0.yz, vec2<u32>(global0.x, u_input.a)), _wgslsmith_add_u32(var_1.a, var_0.x), 58292u)) % vec4<u32>(32u))) | _wgslsmith_add_vec4_u32(~(~vec4<u32>(global0.x, 117641u, u_input.a, 5471u)), vec4<u32>(~global0.x, _wgslsmith_dot_vec3_u32(global0.xxy, vec3<u32>(u_input.a, var_1.a, 1u)), 33189u, ~1u));
    let var_2 = vec2<u32>(~(~(var_0.x ^ 4294967295u)), abs(firstLeadingBit(var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e, _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.c, ~(-8118i), _wgslsmith_mult_i32(u_input.b, 5138i)), ~(~vec3<i32>(u_input.b, 39346i, u_input.b))), firstLeadingBit(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(31250i, 3681i, -1i)), countOneBits(vec3<i32>(var_1.b, u_input.b, 34069i))))), -1434f, var_1.b, reverseBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 35249u, global0.x), abs(vec3<u32>(9678u, var_1.a, var_0.x)) ^ min(vec3<u32>(u_input.a, 1u, 4294967295u), global0.wyx))));
}

