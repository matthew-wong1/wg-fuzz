struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<i32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), -20905i);

var<private> global2: u32 = 52767u;

var<private> global3: f32 = -1000f;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = !vec2<bool>(!all(vec2<bool>(true, true)), (_wgslsmith_sub_u32(arg_0.b.x, arg_0.a.c.x) << (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u)) > ~_wgslsmith_mult_u32(0u, 4294967295u));
    return min(2147483647i, _wgslsmith_mult_i32(53593i, global1.x));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(func_3(Struct_3(Struct_1(-629f, !global0.x, max(vec3<u32>(4294967295u, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))), ~vec4<u32>(u_input.a, 37852u, 28925u, u_input.a) & select(vec4<u32>(42601u, 2088u, 0u, u_input.a), vec4<u32>(u_input.a, 75842u, u_input.a, 1u), vec4<bool>(global0.x, false, global0.x, global0.x)), -firstLeadingBit(vec3<i32>(global1.x, u_input.c, global1.x)), Struct_2(-4019i, global0.wy, global0.x, any(vec3<bool>(false, global0.x, global0.x))), Struct_2(~1i, vec2<bool>(global0.x, true), global0.x && global0.x, false))), select(vec2<bool>(all(vec3<bool>(false, true, false)) || true, !(!global0.x)), select(!(!vec2<bool>(true, global0.x)), vec2<bool>(global0.x, !global0.x), vec2<bool>(true, false && global0.x)), 13477u < select(select(0u, u_input.a, global0.x), ~u_input.a, true)), true, !(global0.x || global0.x));
    global2 = 4294967295u;
    let var_1 = func_3(Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -197f) + _wgslsmith_f_op_f32(428f * -153f)), all(global0.xxw), vec3<u32>(8094u, u_input.a, u_input.a)), vec4<u32>(countOneBits(u_input.a ^ u_input.a), _wgslsmith_mult_u32(~u_input.a, u_input.a), 1u ^ _wgslsmith_mult_u32(u_input.a, 54903u), ~18472u), _wgslsmith_mult_vec3_i32(-vec3<i32>(global1.x, 8035i, global1.x) & _wgslsmith_add_vec3_i32(vec3<i32>(global1.x, u_input.c, u_input.b), vec3<i32>(u_input.c, u_input.b, global1.x)), -vec3<i32>(-1i, -11524i, 2491i) << (firstTrailingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))), Struct_2(global1.x, var_0.b, any(!vec2<bool>(var_0.b.x, global0.x)), true), Struct_2(-2147483647i, vec2<bool>(any(vec3<bool>(var_0.c, false, true)), true), _wgslsmith_mult_u32(u_input.a, u_input.a) < ~u_input.a, all(!var_0.b))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1216f, -249f)) + _wgslsmith_f_op_f32(398f + 741f))), !any(!vec4<bool>(true, false, global0.x, false)), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(1u, 47968u, u_input.a)) << (~(~vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))), ~vec4<u32>(select(u_input.a & u_input.a, ~0u, var_0.c), u_input.a, ~(u_input.a ^ 219722u), ~_wgslsmith_sub_u32(u_input.a, 1u)), firstLeadingBit(-vec3<i32>(global1.x, 52867i ^ var_0.a, min(u_input.c, var_0.a))), Struct_2(-global1.x, select(select(select(vec2<bool>(false, var_0.c), global0.xy, global0.x), vec2<bool>(var_0.c, global0.x), !global0.x), vec2<bool>(!var_0.b.x, true), global0.yw), var_0.b.x, all(var_0.b)), Struct_2(var_0.a, !select(!vec2<bool>(global0.x, var_0.c), select(vec2<bool>(false, var_0.c), var_0.b, vec2<bool>(true, true)), global0.x), var_0.c && global0.x, any(vec4<bool>(true, select(global0.x, global0.x, var_0.d), global0.x, true))));
    global3 = -1000f;
    return var_2.a;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> vec4<u32> {
    return vec4<u32>(firstTrailingBit(~(~(~u_input.a))), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a & _wgslsmith_mod_u32(u_input.a, 13573u), 1u), ~_wgslsmith_add_u32(func_2().c.x, arg_1.c.x)), 0u, arg_1.c.x);
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: bool) -> u32 {
    global2 = _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec4_u32(arg_1.c.b, func_4(true, func_2(), select(arg_1.c.e.a & arg_1.c.d.a, 0i, global0.x))));
    global0 = !(!select(vec4<bool>(true && arg_1.c.a.b, true, any(global0.xyx), !global0.x), select(vec4<bool>(true, true, true, false), select(vec4<bool>(arg_1.c.a.b, global0.x, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, arg_1.c.a.b, false)), arg_1.c.d.d), !any(global0.wwx)));
    var var_0 = max(firstTrailingBit(firstTrailingBit(~vec4<i32>(-87233i, -30216i, 22523i, -17719i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(global1.x, global1.x, arg_1.c.e.a, u_input.b) & vec4<i32>(24671i, -16079i, u_input.b, u_input.b), vec4<i32>(40702i, global1.x, -23032i, u_input.c) << (arg_1.c.b % vec4<u32>(32u)))), vec4<i32>(-(~u_input.c), (min(arg_1.c.e.a, 1i) | -2147483647i) >> (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 55790u, u_input.a)), vec3<u32>(28170u, arg_1.b.x, 55570u)) % 32u), 27551i, arg_1.c.d.a));
    global2 = u_input.a;
    var var_1 = Struct_2(~(-1i), vec2<bool>(global0.x, _wgslsmith_dot_vec2_i32(min(vec2<i32>(-48395i, 2147483647i), vec2<i32>(-1i, 21444i)), firstLeadingBit(var_0.xx)) <= 1i), true, any(!select(!vec4<bool>(global0.x, false, arg_1.c.e.d, arg_1.c.d.b.x), select(vec4<bool>(true, global0.x, false, false), vec4<bool>(arg_2, arg_1.c.a.b, false, true), arg_2), false)));
    return arg_1.b.x;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> vec2<i32> {
    global0 = select(!(!vec4<bool>(true, true, !global0.x, arg_1.a <= -1541f)), !vec4<bool>(!any(global0.zyw), false, false, arg_1.b), any(vec2<bool>(1u <= arg_3.x, all(global0.xwy))));
    var var_0 = arg_0.c.x;
    var var_1 = 982f;
    var var_2 = arg_2.b;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1184f);
    return vec2<i32>(arg_2.a, countOneBits(global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(-2147483647i, 0i, global1.x, global1.x)), ~(-vec4<i32>(0i, global1.x, global1.x, u_input.c)), vec4<i32>(_wgslsmith_div_i32(50618i, -14285i), abs(-1i), 5308i, u_input.c)) | min(abs(max(vec4<i32>(32733i, -1i, u_input.b, u_input.b) ^ vec4<i32>(0i, u_input.b, global1.x, 17863i), max(vec4<i32>(global1.x, -2251i, u_input.b, 21441i), vec4<i32>(2147483647i, u_input.c, -19011i, -1i)))), firstTrailingBit(vec4<i32>(global1.x, global1.x, -2147483647i, -1i) ^ -vec4<i32>(2147483647i, -1i, 5967i, global1.x)));
    global1 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -1i) >> (~vec2<u32>(30614u, 15177u) % vec2<u32>(32u)), reverseBits(~var_0.xx)) ^ func_5(Struct_1(_wgslsmith_f_op_f32(-1f), !global0.x, select(~vec3<u32>(56566u, 37838u, 4294967295u), countOneBits(vec3<u32>(26477u, u_input.a, u_input.a)), -3120i == var_0.x)), Struct_1(-259f, u_input.c != -24489i, vec3<u32>(max(41253u, 20075u), ~38345u, func_1(161f, Struct_4(vec3<f32>(494f, 344f, -107f), vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_3(Struct_1(-197f, global0.x, vec3<u32>(1u, u_input.a, 4294967295u)), vec4<u32>(17067u, 1037u, 3468u, 4294967295u), var_0.yww, Struct_2(-2147483647i, vec2<bool>(true, true), global0.x, global0.x), Struct_2(-6826i, global0.xw, false, global0.x))), global0.x))), Struct_2(~firstTrailingBit(u_input.b), !global0.zy, select(false, global0.x, any(global0.zyw)), global0.x), vec2<u32>(~u_input.a | 535u, 4294967295u));
    global3 = _wgslsmith_f_op_f32(sign(-1000f));
    global2 = min(func_4(!global0.x, func_2(), _wgslsmith_div_i32(1i, var_0.x)).x, ~u_input.a);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), func_2().a, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -445f), u_input.b, select(vec4<u32>(~u_input.a & ~u_input.a, u_input.a, 4294967295u, abs(~76798u)), ~(~vec4<u32>(0u, 4294967295u, u_input.a, u_input.a)), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-713f + -1000f), _wgslsmith_f_op_f32(min(-1000f, 1576f)), true))))), vec4<u32>(firstLeadingBit(abs(0u)), u_input.a, max(3627u, u_input.a), _wgslsmith_mod_u32(u_input.a, u_input.a) ^ ~18984u) ^ vec4<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a) | 1u, ~(~57020u), func_2().c.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, u_input.a, u_input.a), func_2().c.x)));
}

