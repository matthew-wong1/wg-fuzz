struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: bool;

var<private> global2: f32 = 677f;

var<private> global3: Struct_1;

var<private> global4: array<vec3<f32>, 21>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    global0 = any(vec3<bool>(global3.d.x, (-u_input.b.x << (4294967295u % 32u)) < -1i, (-2147483647i >> (reverseBits(u_input.c) % 32u)) != reverseBits(select(-42553i, u_input.b.x, false))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global3.a), global3.d.zzz, !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.e), global3.a, global3.b.x)) == -1015f), !select(vec4<bool>(true, u_input.c > 28182u, any(vec3<bool>(false, true, global3.d.x)), !global3.c), global3.d, !select(global3.d, global3.d, vec4<bool>(global3.c, false, global3.d.x, true))), _wgslsmith_f_op_f32(global3.a + -861f));
    global1 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-844f, -438f))) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.e), global3.e))) && true;
    var var_1 = Struct_2(u_input.c, var_0, !all(global3.b), select(var_0.d.xw, select(!(!vec2<bool>(true, var_0.d.x)), var_0.b.yz, !global3.d.yx), select(!var_0.d.xy, var_0.d.zx, !select(global3.d.yy, vec2<bool>(true, false), global3.d.x))), var_0);
    var var_2 = vec3<u32>(23707u, countOneBits(~(~4294967295u)), firstTrailingBit(1471u)) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u) & select(vec2<u32>(u_input.c, u_input.c), vec2<u32>(var_1.a, u_input.c), vec2<bool>(var_1.d.x, false)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a, 4294967295u), vec2<u32>(u_input.c, 0u), vec2<u32>(1u, 61553u)) << (vec2<u32>(var_1.a, 0u) % vec2<u32>(32u))), ~select(abs(u_input.c), var_1.a, all(vec4<bool>(var_0.d.x, var_1.b.c, true, var_0.d.x))), ~countOneBits(var_1.a & u_input.c)) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -160f), 1000f)), _wgslsmith_f_op_f32(select(var_1.b.a, global3.e, true))));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(u_input.c & 0u, Struct_1(global3.e, arg_0.d.zxx, all(select(!global3.d.zz, vec2<bool>(false, global3.d.x), !arg_0.c)), !global3.d, _wgslsmith_f_op_f32(func_3(vec3<i32>(~u_input.a.x, u_input.b.x, ~(-3710i))))), true, global3.d.zx, Struct_1(global3.a, !arg_0.d.wxz, !arg_0.b.x, vec4<bool>(true == any(vec3<bool>(arg_0.b.x, true, arg_0.c)), any(vec4<bool>(global3.b.x, true, false, true)), arg_0.c && arg_0.c, !arg_0.b.x), -960f));
    var var_1 = vec2<u32>(var_0.a, u_input.c) | vec2<u32>(~(~(~113306u)), ~(~4002u));
    var var_2 = Struct_2(var_1.x, Struct_1(_wgslsmith_f_op_f32(sign(-161f)), vec3<bool>(var_0.e.a > -1636f, true & var_0.e.c, false), all(vec2<bool>(true, true)), vec4<bool>(global3.d.x, global3.a >= _wgslsmith_f_op_f32(min(-415f, 269f)), true, global3.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e + -963f)), global3.e)), global3.d.x, vec2<bool>(arg_0.b.x, false), arg_0);
    var_1 = ~vec2<u32>(~(~var_2.a), ~4294967295u);
    var var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -11680i, firstTrailingBit(abs(u_input.a.x)), -11420i), u_input.a) != _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(u_input.b.x), -(~u_input.b.x), max(1578i, abs(-1i))), u_input.b);
    return var_0.e.d.x;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = false;
    let var_1 = u_input.c ^ _wgslsmith_sub_u32(65295u, _wgslsmith_div_u32(~u_input.c, arg_0.x));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global3.a)))), global3.b, global3.d.x, select(vec4<bool>(!(!global3.c), global3.d.x, global3.c, true), global3.d, vec4<bool>(any(select(vec4<bool>(false, false, true, true), global3.d, vec4<bool>(global3.d.x, true, false, global3.c))), true, any(select(vec4<bool>(global3.c, global3.d.x, global3.c, true), global3.d, global3.b.x)), func_2(Struct_1(153f, global3.d.zxw, global3.c, global3.d, -520f)))), 342f);
    global0 = false;
    let var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(0u, u_input.c, 6379u, 80933u)), ~vec4<u32>(1u, 41145u, 1u, 17126u)), ~vec4<u32>(arg_0.x, var_1, u_input.c, 32332u)), abs(_wgslsmith_add_u32(30616u, 50027u) << (_wgslsmith_add_u32(var_1, var_1) % 32u))) & firstTrailingBit(~arg_0);
    return var_2;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = vec3<u32>(~(~arg_1.a), _wgslsmith_mult_u32(arg_1.a, ~4294967295u), firstTrailingBit(arg_3.a));
    var var_2 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(10983u, arg_2, arg_2, 78373u)), abs(vec4<u32>(var_0.a, 4294967295u, var_1.x, 31980u))), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, u_input.c, 41544u, 0u), ~vec4<u32>(u_input.c, 38284u, 26068u, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_0.a, arg_1.a, arg_1.a) & vec4<u32>(0u, 1u, 87880u, var_0.a), ~vec4<u32>(4294967295u, 4294967295u, var_1.x, 4294967295u), vec4<u32>(arg_2, 1u, var_1.x, 4294967295u))) & vec4<u32>(452u, ~25526u, ~1u, u_input.c), vec4<u32>(var_1.x, 0u, 58431u & _wgslsmith_div_u32(~arg_1.a, _wgslsmith_div_u32(9295u, 67614u)), _wgslsmith_mult_u32(arg_2, 35752u)));
    global2 = _wgslsmith_f_op_f32(abs(func_1(firstLeadingBit(vec2<u32>(countOneBits(arg_3.a), 18642u))).e));
    global3 = Struct_1(global3.a, vec3<bool>(true, false, any(select(vec2<bool>(arg_1.e.b.x, false), arg_3.b.d.yz, true))), false, var_0.b.d, arg_3.e.e);
    return func_1(~(~_wgslsmith_mult_vec2_u32(var_2.xz, firstTrailingBit(var_2.yy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(-2147483647i, Struct_2(_wgslsmith_add_u32(abs(firstTrailingBit(u_input.c)), u_input.c), Struct_1(global3.e, !(!vec3<bool>(global3.b.x, false, true)), !global3.c, vec4<bool>(false, true, global3.d.x, global3.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.a)))), false, select(!global3.b.xy, global3.d.xx, -2147483647i > u_input.a.x), func_1(~(~vec2<u32>(u_input.c, 4294967295u)))), abs(u_input.c & _wgslsmith_clamp_u32(u_input.c, u_input.c, 1u)), Struct_2(0u, func_1(~(~vec2<u32>(u_input.c, 103935u))), global3.c && true, !vec2<bool>(!global3.c, global3.b.x == true), Struct_1(global3.a, !vec3<bool>(true, global3.c, global3.c), global3.c != true, select(global3.d, select(vec4<bool>(false, true, global3.d.x, true), global3.d, global3.d.x), global3.d), -1522f)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.e) * _wgslsmith_f_op_f32(-var_0.e));
    global2 = global3.a;
    var_0 = Struct_1(var_0.e, !global3.b, true, vec4<bool>(true & all(global3.b.xy), any(!var_0.d), true, true), var_0.e);
    let var_2 = true;
    var var_3 = max(_wgslsmith_dot_vec2_u32((~vec2<u32>(4294967295u, u_input.c) & ~vec2<u32>(u_input.c, u_input.c)) | _wgslsmith_mod_vec2_u32(select(vec2<u32>(48047u, u_input.c), vec2<u32>(u_input.c, 1u), vec2<bool>(global3.b.x, var_2)), _wgslsmith_add_vec2_u32(vec2<u32>(92438u, 79080u), vec2<u32>(21039u, u_input.c))), ~vec2<u32>(_wgslsmith_mod_u32(20011u, 4294967295u), select(1653u, 69409u, false))), ~4294967295u);
    let var_4 = func_4(-1i, Struct_2(1u, func_1(vec2<u32>(4294967295u, u_input.c) << (_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1226u), vec2<u32>(1u, u_input.c)) % vec2<u32>(32u))), var_2, vec2<bool>(false, all(!vec2<bool>(var_2, global3.c))), func_1(firstTrailingBit(min(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c))))), u_input.c, Struct_2(_wgslsmith_add_u32(max(36131u, 4294967295u), u_input.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(972f))), global3.d.zzw, func_2(func_1(vec2<u32>(65790u, 0u))), vec4<bool>(select(var_0.d.x, false, global3.b.x), !var_2, true, func_4(2147483647i, Struct_2(0u, Struct_1(-1425f, var_0.d.yxy, true, vec4<bool>(global3.c, var_0.b.x, true, var_2), -501f), false, var_0.d.zz, Struct_1(438f, vec3<bool>(global3.b.x, false, true), var_2, var_0.d, -682f)), 4294967295u, Struct_2(u_input.c, Struct_1(537f, vec3<bool>(var_0.d.x, var_2, global3.d.x), true, var_0.d, var_0.a), var_0.c, var_0.b.zz, Struct_1(-899f, vec3<bool>(true, var_2, false), true, vec4<bool>(var_0.c, true, false, true), 1479f))).b.x), _wgslsmith_f_op_f32(-var_0.a)), var_2, func_1(~vec2<u32>(4294967295u, u_input.c)).d.ww, Struct_1(-399f, var_0.b, true, !vec4<bool>(global3.b.x, true, global3.b.x, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.e - global3.a), var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_4.e))) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-689f - _wgslsmith_div_f32(662f, var_0.e))))), _wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.a.x, -2147483647i, 1i) & u_input.a.zwy, firstLeadingBit(u_input.a.yyy), !vec3<bool>(false, var_4.b.x, true)) << (vec3<u32>(u_input.c ^ u_input.c, _wgslsmith_sub_u32(u_input.c, 1u), _wgslsmith_mult_u32(4294967295u, u_input.c)) % vec3<u32>(32u)), abs(-vec3<i32>(31671i, u_input.a.x, u_input.b.x))), -1i, vec3<u32>(u_input.c, ~_wgslsmith_mod_u32(u_input.c, u_input.c), u_input.c));
}

