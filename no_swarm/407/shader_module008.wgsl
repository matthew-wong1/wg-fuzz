struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: i32;

var<private> global2: f32 = 416f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> bool {
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.e.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.b.b)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.e.b - 1190f)))))));
    let var_0 = Struct_2(!select(!arg_0.a, select(vec2<bool>(arg_0.a.x, false), vec2<bool>(arg_2, arg_0.a.x), select(true, arg_2, false)), vec2<bool>(arg_0.a.x, !arg_0.a.x)), Struct_1(_wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.e, -66276i, 1i)) ^ -arg_0.b.a, vec3<i32>(~(-2147483647i), _wgslsmith_mult_i32(arg_0.b.a.x, u_input.e), _wgslsmith_mod_i32(arg_0.b.d, arg_0.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.e.b)))), arg_1, arg_0.b.d), arg_0.a.x, vec4<u32>(arg_0.e.c, u_input.b, 1u, _wgslsmith_sub_u32(firstTrailingBit(~arg_0.b.c), arg_0.e.c)), Struct_1(-vec3<i32>(2147483647i, u_input.a, 7181i) ^ vec3<i32>(-u_input.a, ~arg_0.e.d, _wgslsmith_sub_i32(u_input.a, -953i)), _wgslsmith_f_op_f32(f32(-1f) * -530f), select(~0u, arg_0.d.x << (1u % 32u), true) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, arg_0.e.c, 29040u, u_input.b), abs(arg_0.d)) % 32u), u_input.e));
    var var_1 = Struct_2(select(select(select(vec2<bool>(arg_0.a.x, arg_0.a.x), arg_0.a, all(arg_0.a)), var_0.a, vec2<bool>(true, true)), select(!(!var_0.a), arg_0.a, !any(vec4<bool>(true, var_0.a.x, false, true))), !select(arg_0.a, var_0.a, arg_0.a)), Struct_1(arg_0.e.a, _wgslsmith_f_op_f32(step(548f, arg_0.b.b)), ~(~(~1u)), reverseBits(-(1i << (var_0.b.c % 32u)))), true, vec4<u32>(arg_0.d.x, select(abs(arg_0.b.c), u_input.d, var_0.c), firstLeadingBit(arg_0.d.x), u_input.b), Struct_1(~(~var_0.e.a), _wgslsmith_f_op_f32(ceil(224f)), _wgslsmith_sub_u32(~abs(var_0.d.x), ~_wgslsmith_dot_vec3_u32(var_0.d.yxw, vec3<u32>(4294967295u, 5368u, 4294967295u))), _wgslsmith_sub_i32(_wgslsmith_add_i32(55837i, -2147483647i), u_input.e)));
    var_1 = arg_0;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e.b + _wgslsmith_f_op_f32(sign(-608f))) - _wgslsmith_f_op_f32(-var_1.b.b));
    return true;
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_2, 28>();
    var var_0 = u_input.c.x;
    var var_1 = _wgslsmith_f_op_f32(-1731f - _wgslsmith_f_op_f32(min(-479f, _wgslsmith_f_op_f32(174f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(575f + 119f) + _wgslsmith_f_op_f32(-1246f + -164f))))));
    let var_2 = Struct_2(vec2<bool>(_wgslsmith_sub_u32(0u, u_input.d) >= u_input.c.x, func_3(Struct_2(vec2<bool>(true, false), Struct_1(vec3<i32>(23387i, -2147483647i, u_input.a), -956f, u_input.b, u_input.a), select(false, false, false), vec4<u32>(u_input.b, 0u, u_input.c.x, 25581u) >> (vec4<u32>(u_input.c.x, 35883u, u_input.b, 0u) % vec4<u32>(32u)), Struct_1(vec3<i32>(-1570i, -48347i, u_input.e), 527f, u_input.b, u_input.e)), min(abs(u_input.b), u_input.b ^ u_input.b), any(vec4<bool>(true, true, true, true)))), Struct_1(~firstTrailingBit(-vec3<i32>(0i, 1i, -2147483647i)), -2802f, _wgslsmith_clamp_u32(abs(countOneBits(39889u)), u_input.b, ~305u), 1i), true, ~(~(~u_input.c)), Struct_1(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-88850i, u_input.e, u_input.e), vec3<i32>(u_input.e, 3952i, -2147483647i))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(942f)))), u_input.d, (u_input.a & -58680i) | (i32(-1i) * -u_input.e)));
    let var_3 = -47739i;
    return Struct_1(firstLeadingBit(vec3<i32>(~var_3, -(var_3 ^ u_input.a), 1i)), -466f, _wgslsmith_sub_u32(~var_2.d.x << (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.c.xyy, var_2.d.wzw), ~46952u) % 32u), _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, 51840u), _wgslsmith_dot_vec3_u32(var_2.d.wzy, vec3<u32>(var_2.d.x, 49307u, u_input.c.x))) >> (~53815u % 32u)), 10794i);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: bool, arg_3: vec4<f32>) -> bool {
    let var_0 = arg_2;
    let var_1 = arg_3.zx;
    let var_2 = min(vec2<u32>(_wgslsmith_mod_u32(~0u, 38139u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, arg_1.x) ^ vec2<u32>(arg_1.x, 41278u), min(vec2<u32>(74816u, arg_1.x), vec2<u32>(u_input.c.x, 0u)))), u_input.c.yw) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(arg_1.x, ~38167u, u_input.b), arg_1.x), arg_1.zz, ~_wgslsmith_add_vec2_u32(arg_1.yy, _wgslsmith_mod_vec2_u32(u_input.c.wx, arg_1.xz))) % vec2<u32>(32u));
    var var_3 = func_2();
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(arg_3.x + -680f))) - _wgslsmith_f_op_f32(ceil(-462f))) * _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-241f + _wgslsmith_f_op_f32(step(var_1.x, -1026f)))))));
    return !var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(select(select(vec2<bool>(true, true), vec2<bool>(u_input.c.x != u_input.b, func_1(-1465f, vec3<u32>(u_input.c.x, 1u, 50397u), true, vec4<f32>(168f, -1391f, -1000f, -670f))), vec2<bool>(true, true)), !vec2<bool>(any(vec2<bool>(true, true)), true), all(vec4<bool>(true, false, false, true)) & true), func_2(), any(vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), !(2147483647i == u_input.e))), u_input.c, func_2());
    global1 = 21513i;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.e.b), 225f) * vec2<f32>(_wgslsmith_f_op_f32(-var_0.e.b), var_0.e.b));
    let var_2 = u_input.c;
    let var_3 = var_0.b;
    var var_4 = ~vec3<u32>(_wgslsmith_sub_u32(countOneBits(~var_3.c), 56075u), u_input.b ^ abs(_wgslsmith_add_u32(var_2.x, var_2.x)), ~46109u);
    var var_5 = vec4<i32>(-32196i, max(var_3.d, abs(u_input.a & abs(u_input.a))), -165i & -abs(min(-2147483647i, var_0.b.d)), _wgslsmith_mod_i32(i32(-1i) * -55529i, var_3.d));
    let var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(194f, var_1.x, var_1.x, 497f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.e.b)), _wgslsmith_f_op_f32(ceil(var_1.x)), -974f, _wgslsmith_f_op_f32(938f - var_0.e.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.b, var_0.b.b, -1094f, var_0.b.b)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(302f, var_1.x, -623f, 934f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2318f, -2490f, -254f, var_3.b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(559f, var_0.b.b, var_3.b, var_1.x))))));
    var var_7 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.yy, var_6.x, -444i, ~(~var_0.d | (var_7.d >> (vec4<u32>(1u, var_0.d.x, var_4.x, var_4.x) % vec4<u32>(32u)))));
}

