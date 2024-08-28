struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: f32,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-637f, 1000f, 488f), true, 893f, vec3<i32>(-31504i, 1i, -23503i), vec2<f32>(-373f, -1084f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0.a, global0.a))), global0.a), global0.a.x >= _wgslsmith_div_f32(global0.e.x, global0.e.x), _wgslsmith_f_op_f32(max(1997f, 340f)), ~abs(vec3<i32>(1i, 1i, u_input.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0.c, -433f), -206f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, global0.e.x))))), Struct_2(false, _wgslsmith_f_op_f32(step(2343f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), ((global0.d.x >> (u_input.d % 32u)) >> (3226u % 32u)) << (u_input.d % 32u), 1i), Struct_2(~_wgslsmith_dot_vec3_i32(u_input.e, u_input.e) > u_input.e.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-699f)))), -(~(-24540i >> (u_input.d % 32u))), global0.d.x), select(!select(select(vec2<bool>(global0.b, false), vec2<bool>(false, true), global0.b), vec2<bool>(false, true), true), vec2<bool>(true, true), any(!(!vec2<bool>(global0.b, global0.b)))));
    var_0 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(641f * var_0.b.b), _wgslsmith_f_op_f32(-1000f * global0.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1068f, var_0.a.a.x)) + -1000f), _wgslsmith_f_op_f32(step(global0.e.x, _wgslsmith_f_op_f32(-global0.a.x)))), true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.b))))), -(max(vec3<i32>(global0.d.x, var_0.a.d.x, u_input.e.x), vec3<i32>(0i, u_input.c.x, 2147483647i)) ^ -vec3<i32>(2147483647i, global0.d.x, global0.d.x)), var_0.a.a.yz), Struct_2(false & (~0i == u_input.e.x), -324f, abs(~(-1i)), -var_0.b.d), var_0.b, var_0.d);
    let var_1 = Struct_4(~u_input.b.x, var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1193f)));
    global0 = var_0.a;
    var var_2 = _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d, _wgslsmith_dot_vec2_u32(~u_input.b.zy, u_input.b.yy >> (u_input.b.yy % vec2<u32>(32u))), ~u_input.d, ~(u_input.d >> (3938u % 32u))), vec4<u32>(~(~abs(4294967295u)), countOneBits(u_input.b.x) ^ u_input.b.x, ~reverseBits(var_1.a), ~_wgslsmith_clamp_u32(~var_1.a, 4294967295u, _wgslsmith_sub_u32(var_1.a, var_1.a))));
    return !vec3<bool>(any(!vec2<bool>(var_1.b.a, var_0.c.a)), var_1.b.a, all(!vec3<bool>(var_0.d.x, var_1.b.a, global0.b)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<bool>) -> f32 {
    let var_0 = arg_0;
    let var_1 = reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(abs(_wgslsmith_dot_vec3_i32(u_input.c.www, vec3<i32>(1i, global0.d.x, u_input.a))), var_0.c), -vec2<i32>(var_0.d | global0.d.x, u_input.c.x)));
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(ceil(-1652f)), var_0.b), any(!select(vec3<bool>(global0.b, var_0.a, var_0.a), arg_2, vec3<bool>(true, arg_0.a, arg_2.x))), -670f, u_input.e & global0.d, vec2<f32>(-1608f, _wgslsmith_f_op_f32(-global0.a.x)));
    let var_3 = !((~var_0.c ^ _wgslsmith_sub_i32(-var_1.x, -28793i)) >= select(_wgslsmith_dot_vec3_i32(global0.d, max(vec3<i32>(24200i, -2147483647i, arg_0.d), global0.d)), ~55886i, all(arg_2)));
    let var_4 = select(_wgslsmith_dot_vec3_i32(abs(reverseBits(-var_2.d)), vec3<i32>(~2147483647i, u_input.a, -(var_2.d.x | -1i))), arg_0.d, true);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b, _wgslsmith_f_op_f32(arg_0.b + var_0.b)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)))))));
}

fn func_2() -> vec4<bool> {
    let var_0 = vec2<bool>(true, global0.c <= global0.e.x);
    let var_1 = Struct_4(reverseBits(u_input.b.x), Struct_2(true, _wgslsmith_f_op_f32(func_4(Struct_2(false || global0.b, global0.a.x, global0.d.x, 1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.x, global0.e.x, 590f, global0.a.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.e.x, global0.c, 808f, 1476f), vec4<f32>(-149f, 246f, global0.a.x, global0.a.x), global0.b))), func_3())), _wgslsmith_add_i32(firstLeadingBit(u_input.e.x) << (~u_input.d % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global0.d.x), -u_input.e.xx)), ~max(firstLeadingBit(-52617i), _wgslsmith_mult_i32(global0.d.x, -9359i))), global0.c);
    let var_2 = vec2<bool>(reverseBits(37312i) != _wgslsmith_div_i32(select(~global0.d.x, u_input.c.x, 4294967295u > u_input.d), -8308i), !(!func_3().x));
    var var_3 = -15402i;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.a.x, global0.a.x, -1000f)))), global0.a)), all(select(var_2, select(select(vec2<bool>(false, var_2.x), vec2<bool>(var_1.b.a, var_0.x), vec2<bool>(true, false)), select(var_2, var_0, global0.b), true), global0.b)), global0.e.x, _wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(global0.d, vec3<i32>(-2147483647i, 0i, global0.d.x)) << (vec3<u32>(u_input.b.x, ~u_input.d, ~var_1.a) % vec3<u32>(32u)), -vec3<i32>(41994i & u_input.e.x, -var_1.b.d, min(71700i, global0.d.x))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-459f, var_1.c), global0.c)) + global0.e.x)));
    return !select(vec4<bool>(all(select(vec3<bool>(true, var_1.b.a, var_2.x), vec3<bool>(var_2.x, global0.b, true), vec3<bool>(true, false, var_1.b.a))), false, var_0.x, true), select(vec4<bool>(global0.b || var_0.x, !var_1.b.a, global0.b, false), vec4<bool>(true, true, global0.b, any(vec3<bool>(true, true, var_0.x))), !(!vec4<bool>(var_0.x, false, var_2.x, var_0.x))), var_1.a > countOneBits(~u_input.b.x));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = 1u;
    var var_1 = vec4<bool>(global0.b, global0.b, true, global0.b);
    global0 = Struct_1(vec3<f32>(-1826f, _wgslsmith_f_op_f32(abs(global0.a.x)), _wgslsmith_div_f32(global0.a.x, _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(global0.a.x + global0.c)))), all(!var_1.ywy), _wgslsmith_f_op_f32(global0.e.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x)), global0.d, global0.e);
    var var_2 = vec3<u32>(arg_0.x & arg_0.x, ~1u, abs(min(0u, ~var_0)));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(583f + 1142f), global0.e.x, -436f)), vec3<bool>(all(!(!var_1.yy)), all(select(vec4<bool>(false, true, true, global0.b), func_2(), !vec4<bool>(var_1.x, true, var_1.x, true))), all(func_2()))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(global0.a))))))), global0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(var_3.x - global0.c)), var_3.x)), 1016f), (vec3<i32>(-1i) * -u_input.c.www) << ((arg_0.zxz << (_wgslsmith_clamp_vec3_u32(~u_input.b, ~u_input.b, ~u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1685f, var_3.x) + _wgslsmith_div_f32(-1162f, var_3.x)), var_3.x) + global0.e));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_4(max(abs(_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(u_input.b.x, u_input.d))), ~select(18152u, abs(4294967295u), select(arg_1.a, true, false))), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1388f)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.b + _wgslsmith_f_op_f32(-515f * 1185f)), _wgslsmith_f_op_f32(trunc(global0.e.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.e.x * global0.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(231f, var_0.b.b)), _wgslsmith_div_f32(-1775f, arg_0.c.b)) - _wgslsmith_f_op_f32(min(-706f, arg_1.b))));
    var_0 = Struct_4(_wgslsmith_clamp_u32(1u, ~(u_input.b.x >> (min(u_input.d, 4294967295u) % 32u)), 1u), Struct_2(arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(346f)), 243f, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.b + -278f)))), -_wgslsmith_dot_vec3_i32(abs(u_input.c.wxx), global0.d), ~(arg_1.d | 1i)), _wgslsmith_f_op_f32(ceil(func_1(~(vec4<u32>(var_0.a, var_0.a, var_0.a, 34241u) << (vec4<u32>(0u, var_0.a, 4294967295u, 4294967295u) % vec4<u32>(32u)))).e.x)));
    let var_2 = -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, reverseBits(~18099i), countOneBits(0i)), -vec3<i32>(30020i, _wgslsmith_add_i32(0i, var_0.b.c), i32(-1i) * -80353i));
    let var_3 = -min(_wgslsmith_mod_vec2_i32(-firstLeadingBit(global0.d.xz), ~(global0.d.yz << (vec2<u32>(0u, var_0.a) % vec2<u32>(32u)))), countOneBits(func_1(vec4<u32>(1u, u_input.b.x, u_input.d, 1u)).d.yx >> (u_input.b.yx % vec2<u32>(32u))));
    return func_1(reverseBits(vec4<u32>(u_input.d, ~(var_0.a & 14783u), var_0.a, min(~u_input.d, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_3(func_1(~vec4<u32>(u_input.b.x, u_input.d, u_input.b.x, u_input.d)), Struct_2(global0.b, _wgslsmith_f_op_f32(ceil(func_1(vec4<u32>(1u, 17718u, 0u, u_input.b.x)).c)), global0.d.x, -_wgslsmith_sub_i32(19095i, 33999i)), Struct_2(!(global0.b || false), global0.e.x, _wgslsmith_dot_vec4_i32(-u_input.c, u_input.c), -4212i), !(!select(vec2<bool>(false, global0.b), vec2<bool>(global0.b, false), global0.b))), Struct_2(global0.b, global0.a.x, ~(-2147483647i), global0.d.x), func_1(vec4<u32>(~_wgslsmith_sub_u32(0u, 0u), ~(~25302u), 4294967295u, 40026u)).e.x);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(global0.a)), global0.b, _wgslsmith_f_op_f32(-global0.c), func_1(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(23741u, u_input.d), vec2<u32>(u_input.d, u_input.b.x)) << (u_input.d % 32u), ~u_input.b.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(1u, u_input.d), abs(u_input.d)), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b) << (~u_input.b.x % 32u))).d, vec2<f32>(_wgslsmith_f_op_f32(785f + global0.e.x), 390f));
    let var_0 = 0i;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a)), all(!func_2().zyx), _wgslsmith_f_op_f32(global0.a.x * global0.a.x), vec3<i32>(abs(1i), var_0, -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a.yz - vec2<f32>(global0.c, 760f))))));
    var var_1 = _wgslsmith_add_u32(~((~u_input.d ^ u_input.b.x) & ~0u), 79687u);
    global0 = func_1(~vec4<u32>(firstTrailingBit(u_input.b.x), _wgslsmith_sub_u32(u_input.d, u_input.b.x), _wgslsmith_div_u32(_wgslsmith_add_u32(5190u, 1751u), 85550u), 24360u));
    var var_2 = var_0;
    var var_3 = Struct_2(-11479i != _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(11438i, -10552i), max(2147483647i, u_input.c.x), 0i), global0.d), -583f, ~2147483647i, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) * _wgslsmith_f_op_f32(601f + 895f))) + _wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1422f, global0.e.x))))))), u_input.b);
}

