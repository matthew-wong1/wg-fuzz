struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    let var_0 = abs(vec4<u32>(76428u, u_input.c, ~(~firstLeadingBit(34643u)), 1u));
    global0 = array<f32, 5>();
    return firstTrailingBit(34785u) > u_input.c;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec3<bool>(func_3(), false, true);
    var var_1 = !arg_0.a.b.xy;
    var var_2 = 433f;
    let var_3 = ~_wgslsmith_mult_vec4_u32(select(select(~vec4<u32>(u_input.c, arg_0.c.e.x, u_input.c, 23311u), vec4<u32>(u_input.c, arg_0.a.e.x, 0u, u_input.c), arg_0.e.d), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 123816u, u_input.c), vec4<u32>(arg_0.d.x, 4294967295u, 1u, 77935u) | vec4<u32>(30306u, arg_0.a.e.x, arg_0.a.e.x, arg_0.d.x)), arg_0.c.e.x != _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.e.x, 490u, u_input.c, u_input.c), vec4<u32>(u_input.c, 0u, 1u, u_input.c))), ~vec4<u32>(4294967295u, _wgslsmith_mult_u32(4294967295u, u_input.c), max(u_input.c, u_input.c), u_input.c));
    var var_4 = 21709i;
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_2(arg_0.a, arg_1, Struct_1(310f, vec4<bool>(false, (arg_0.c.b.x || arg_1.d.x) & (arg_0.a.d.x != arg_1.b.x), false, (arg_0.e.c.x != 2147483647i) || arg_0.c.d.x), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.c.x, u_input.b, 13644i, arg_0.a.c.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c, 35179u, 2299u), vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u)) % vec4<u32>(32u)), u_input.a ^ vec4<i32>(arg_0.c.c.x, 16204i, u_input.b, -27289i)), vec4<bool>(func_2(Struct_2(arg_0.b, Struct_1(arg_0.a.a, arg_0.e.b, vec4<i32>(2147483647i, u_input.a.x, 2147483647i, arg_0.e.c.x), arg_0.a.d, vec2<u32>(u_input.c, arg_0.b.e.x)), arg_0.e, vec3<u32>(u_input.c, arg_0.c.e.x, 0u), arg_0.e)).c.d.x, !arg_1.d.x, true, !any(vec4<bool>(false, false, arg_0.e.b.x, arg_1.b.x))), vec2<u32>(69096u << (u_input.c % 32u), ~(~28937u))), ~(~func_2(arg_0).d), func_2(func_2(Struct_2(arg_1, func_2(Struct_2(Struct_1(arg_0.c.a, vec4<bool>(true, arg_0.c.b.x, false, arg_0.b.b.x), arg_1.c, arg_1.b, arg_1.e), Struct_1(-539f, arg_1.b, arg_0.c.c, vec4<bool>(true, arg_0.b.b.x, true, arg_0.b.b.x), vec2<u32>(u_input.c, 29704u)), arg_1, vec3<u32>(0u, 1u, 35417u), arg_0.c)).c, arg_1, vec3<u32>(0u, 25007u, arg_0.b.e.x), func_2(Struct_2(Struct_1(arg_0.e.a, arg_0.b.b, arg_0.b.c, vec4<bool>(arg_0.b.d.x, false, true, arg_1.b.x), arg_0.c.e), Struct_1(362f, vec4<bool>(false, true, arg_1.d.x, true), arg_1.c, vec4<bool>(arg_0.c.b.x, arg_1.d.x, arg_1.b.x, arg_0.b.d.x), arg_1.e), Struct_1(arg_0.b.a, arg_1.b, u_input.a, vec4<bool>(false, arg_0.a.d.x, false, true), vec2<u32>(arg_1.e.x, 0u)), vec3<u32>(u_input.c, 67079u, arg_1.e.x), arg_0.c)).e))).e);
    let var_1 = arg_0.e.c.x == u_input.b;
    global0 = array<f32, 5>();
    return _wgslsmith_mod_i32(-2147483647i, arg_1.c.x);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_1(arg_2.x, !(!(!(!arg_0.d))), arg_0.c, vec4<bool>(true == any(select(arg_0.b.zxy, arg_0.d.wyy, arg_0.d.wxw)), !(all(vec3<bool>(arg_1, arg_0.d.x, arg_0.b.x)) & false), _wgslsmith_dot_vec2_i32(arg_0.c.zw, -vec2<i32>(arg_0.c.x, u_input.a.x)) > func_4(func_2(Struct_2(arg_0, arg_0, Struct_1(-412f, vec4<bool>(true, true, arg_0.b.x, arg_0.d.x), vec4<i32>(arg_0.c.x, arg_0.c.x, -8070i, arg_0.c.x), arg_0.b, vec2<u32>(u_input.c, arg_0.e.x)), vec3<u32>(u_input.c, arg_0.e.x, arg_0.e.x), arg_0)), arg_0), arg_0.b.x), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(0u, u_input.c), 4294967295u), vec2<u32>(~u_input.c, ~arg_0.e.x)), arg_0.e.x));
    var var_1 = arg_0.e;
    return func_2(func_2(Struct_2(func_2(func_2(Struct_2(Struct_1(var_0.a, var_0.b, vec4<i32>(-46503i, var_0.c.x, -41134i, u_input.b), vec4<bool>(arg_1, true, false, true), arg_0.e), Struct_1(arg_2.x, vec4<bool>(true, true, false, arg_1), vec4<i32>(-22125i, 1i, u_input.b, 40628i), vec4<bool>(false, var_0.b.x, true, false), var_0.e), Struct_1(arg_2.x, arg_0.b, var_0.c, var_0.b, arg_0.e), vec3<u32>(5750u, var_1.x, 4294967295u), arg_0))).a, arg_0, Struct_1(489f, vec4<bool>(false, false, true, arg_1), var_0.c ^ var_0.c, !arg_0.b, ~var_0.e), min(vec3<u32>(63562u, 4294967295u, arg_0.e.x), vec3<u32>(arg_0.e.x, u_input.c, var_1.x)) | vec3<u32>(arg_0.e.x, var_0.e.x, var_0.e.x), arg_0)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    let var_0 = func_1(arg_1.c, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(832f, 1199f))).e;
    global0 = array<f32, 5>();
    let var_1 = Struct_1(var_0.a, arg_0.b, func_1(Struct_1(-544f, !(!arg_2.e.b), -u_input.a << (~vec4<u32>(arg_0.e.x, arg_0.e.x, 43549u, arg_2.a.e.x) % vec4<u32>(32u)), !vec4<bool>(arg_1.b.b.x, true, arg_2.a.d.x, true), ~abs(vec2<u32>(7241u, 54436u))), false, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(148f, 818f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1460f, global0[_wgslsmith_index_u32(arg_2.a.e.x, 5u)]))), func_2(func_2(arg_2)).a.b.yy))).c.c, arg_1.e.b, ~(~(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(arg_1.a.e.x, arg_0.e.x)))));
    global0 = array<f32, 5>();
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1106f))) - _wgslsmith_f_op_f32(trunc(-1737f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a))), func_1(arg_1.e, arg_1.b.c.x > ~arg_1.a.c.x, vec2<f32>(2687f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1386f))))).e.b.x));
    return Struct_1(_wgslsmith_f_op_f32(floor(2749f)), !vec4<bool>(func_3(), true, arg_2.c.d.x, !(arg_1.d.x < 4294967295u)), arg_1.c.c, select(func_1(func_1(func_2(Struct_2(Struct_1(global0[_wgslsmith_index_u32(arg_1.b.e.x, 5u)], vec4<bool>(var_0.b.x, var_0.d.x, arg_0.d.x, var_0.d.x), arg_1.c.c, var_1.d, vec2<u32>(1u, var_1.e.x)), Struct_1(var_1.a, var_0.d, arg_1.e.c, vec4<bool>(true, arg_1.a.b.x, false, var_0.b.x), vec2<u32>(u_input.c, 1u)), var_0, arg_2.d, Struct_1(var_0.a, arg_2.c.b, var_1.c, var_1.d, vec2<u32>(arg_0.e.x, 0u)))).e, true, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.a, 2093f)))).a, arg_0.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(362f, arg_0.a) - vec2<f32>(-573f, arg_1.c.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 720f)))).c.b, arg_2.b.d, ~(~arg_2.e.e.x) <= max(1u, ~0u)), _wgslsmith_clamp_vec2_u32(arg_2.e.e, func_2(Struct_2(func_2(Struct_2(var_0, var_1, Struct_1(-552f, vec4<bool>(arg_0.d.x, false, var_1.b.x, false), vec4<i32>(arg_0.c.x, arg_1.e.c.x, arg_2.e.c.x, -1i), var_0.d, vec2<u32>(arg_1.c.e.x, u_input.c)), vec3<u32>(1u, u_input.c, arg_0.e.x), Struct_1(-398f, vec4<bool>(true, false, var_1.b.x, false), arg_0.c, vec4<bool>(true, arg_2.e.b.x, arg_0.b.x, true), arg_0.e))).a, func_1(Struct_1(var_1.a, arg_2.e.d, arg_2.a.c, var_0.d, vec2<u32>(0u, 19298u)), false, vec2<f32>(1120f, -166f)).b, func_1(Struct_1(533f, arg_2.b.d, arg_0.c, vec4<bool>(arg_1.c.d.x, true, true, true), arg_0.e), var_1.b.x, vec2<f32>(413f, -498f)).a, ~arg_2.d, Struct_1(-1030f, arg_0.b, vec4<i32>(0i, var_0.c.x, var_1.c.x, arg_2.c.c.x), vec4<bool>(arg_1.c.d.x, var_0.d.x, true, var_0.d.x), vec2<u32>(arg_0.e.x, var_1.e.x)))).b.e, ~var_0.e));
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = func_2(Struct_2(arg_2, func_5(arg_3.c, arg_3, Struct_2(Struct_1(global0[_wgslsmith_index_u32(84632u, 5u)], vec4<bool>(false, true, false, arg_3.e.d.x), arg_3.c.c, arg_3.e.b, arg_3.c.e), arg_2, func_5(Struct_1(arg_3.e.a, arg_3.c.d, vec4<i32>(-20865i, u_input.b, u_input.a.x, 7957i), vec4<bool>(true, true, arg_3.c.d.x, arg_2.d.x), vec2<u32>(arg_3.b.e.x, arg_1)), arg_3, Struct_2(arg_2, arg_3.e, Struct_1(arg_2.a, vec4<bool>(arg_0, false, false, arg_3.e.b.x), u_input.a, vec4<bool>(arg_2.d.x, arg_2.b.x, arg_2.d.x, false), vec2<u32>(17156u, 4294967295u)), arg_3.d, Struct_1(arg_2.a, arg_2.b, vec4<i32>(-1i, 2147483647i, arg_3.e.c.x, arg_2.c.x), arg_3.a.d, arg_2.e))), arg_3.d, func_5(Struct_1(-1177f, arg_3.a.d, vec4<i32>(2147483647i, 0i, 0i, u_input.b), arg_3.e.b, vec2<u32>(arg_3.a.e.x, 1u)), Struct_2(arg_3.c, arg_3.e, Struct_1(-1000f, vec4<bool>(arg_0, false, false, false), arg_3.a.c, vec4<bool>(arg_3.b.d.x, true, arg_0, false), arg_3.d.xy), vec3<u32>(4294967295u, 0u, 4294967295u), arg_2), Struct_2(Struct_1(arg_2.a, arg_3.a.b, vec4<i32>(14708i, u_input.b, arg_3.e.c.x, -1i), arg_2.b, vec2<u32>(arg_1, 1u)), arg_3.a, arg_2, vec3<u32>(30350u, 0u, 7984u), arg_2)))), arg_2, arg_3.d, arg_3.e)).c;
    let var_1 = func_2(func_2(Struct_2(func_1(Struct_1(1709f, var_0.d, vec4<i32>(-2147483647i, -20973i, 7322i, 0i), var_0.b, arg_3.d.yx), false, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(10361u, 5u)], global0[_wgslsmith_index_u32(44918u, 5u)])))).e, arg_2, Struct_1(arg_2.a, vec4<bool>(arg_3.c.d.x, true, false, false), vec4<i32>(arg_2.c.x, var_0.c.x, -1i, arg_2.c.x), arg_3.a.b, countOneBits(arg_3.d.xy)), vec3<u32>(0u, u_input.c | 4294967295u, arg_1), var_0))).c.c.xyz;
    global0 = array<f32, 5>();
    var var_2 = vec4<bool>(arg_2.d.x, !var_0.b.x, !arg_2.d.x, true);
    let var_3 = vec2<f32>(-288f, arg_2.a);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 5u)] + _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(16264u, 5u)]))))), vec4<bool>(!arg_0, true, true & arg_2.d.x, false), firstTrailingBit(vec4<i32>(-arg_2.c.x, -2147483647i, _wgslsmith_mod_i32(-2147483647i, var_0.c.x), ~(-1i)) >> (select(vec4<u32>(1u, 22849u, 20744u, arg_3.e.e.x), vec4<u32>(15991u, 4294967295u, arg_2.e.x, 5546u) << (vec4<u32>(16202u, arg_3.e.e.x, 0u, 1u) % vec4<u32>(32u)), var_2.x) % vec4<u32>(32u))), !vec4<bool>(var_0.d.x, arg_3.c.d.x || var_0.b.x, arg_3.e.b.x, arg_0), ~vec2<u32>(53963u, ~_wgslsmith_add_u32(arg_1, var_0.e.x)));
}

fn func_7(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: u32) -> Struct_1 {
    let var_0 = vec4<f32>(func_6(true, 0u, arg_1, func_1(func_5(arg_1, Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec4<bool>(arg_1.b.x, true, arg_1.d.x, arg_1.d.x), u_input.a, arg_1.b, arg_1.e), arg_1, Struct_1(949f, arg_1.b, arg_0, arg_1.d, vec2<u32>(u_input.c, 0u)), vec3<u32>(u_input.c, arg_3, 38443u), Struct_1(-159f, arg_1.b, arg_0, vec4<bool>(arg_1.b.x, arg_1.b.x, false, arg_1.d.x), vec2<u32>(arg_3, 0u))), func_1(arg_1, true, vec2<f32>(-1596f, -1060f))), any(arg_1.d.wx) & true, vec2<f32>(-863f, global0[_wgslsmith_index_u32(select(4294967295u, arg_1.e.x, false), 5u)]))).a, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~(~u_input.c), 5u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(-242f + global0[_wgslsmith_index_u32(18876u, 5u)]))))), global0[_wgslsmith_index_u32(arg_3 << (firstLeadingBit(select(44509u, _wgslsmith_add_u32(u_input.c, 1u), true)) % 32u), 5u)], -144f);
    let var_1 = func_5(Struct_1(_wgslsmith_f_op_f32(-func_5(arg_1, Struct_2(Struct_1(-1000f, vec4<bool>(arg_1.b.x, true, arg_1.d.x, false), vec4<i32>(1i, u_input.a.x, 55604i, 13707i), vec4<bool>(false, true, true, arg_1.d.x), vec2<u32>(arg_1.e.x, 0u)), Struct_1(726f, arg_1.d, vec4<i32>(-2147483647i, -1i, -12063i, -173i), vec4<bool>(arg_1.d.x, false, arg_1.d.x, arg_1.d.x), arg_1.e), arg_1, vec3<u32>(29621u, arg_1.e.x, u_input.c), arg_1), Struct_2(Struct_1(-1239f, vec4<bool>(arg_1.b.x, arg_1.b.x, false, arg_1.b.x), vec4<i32>(30999i, 1i, u_input.b, 41835i), arg_1.d, vec2<u32>(0u, 34594u)), Struct_1(1000f, arg_1.d, arg_0, arg_1.b, arg_1.e), arg_1, vec3<u32>(64923u, arg_3, 0u), arg_1)).a), func_6(func_6(false, 1u, arg_1, Struct_2(arg_1, Struct_1(-1836f, vec4<bool>(arg_1.b.x, true, false, true), u_input.a, vec4<bool>(false, false, false, arg_1.b.x), arg_1.e), Struct_1(474f, vec4<bool>(arg_1.d.x, true, arg_1.d.x, false), vec4<i32>(3632i, u_input.a.x, -2147483647i, -13099i), vec4<bool>(arg_1.b.x, true, true, true), vec2<u32>(4355u, 1u)), vec3<u32>(4294967295u, 91429u, u_input.c), Struct_1(arg_1.a, arg_1.d, vec4<i32>(-1i, arg_1.c.x, -39133i, arg_2.x), arg_1.b, vec2<u32>(20188u, u_input.c)))).c.x <= u_input.b, ~27835u, arg_1, func_1(func_2(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], arg_1.d, u_input.a, arg_1.b, arg_1.e), Struct_1(var_0.x, vec4<bool>(true, arg_1.d.x, arg_1.d.x, arg_1.d.x), vec4<i32>(arg_2.x, arg_2.x, 2147483647i, arg_0.x), vec4<bool>(true, arg_1.d.x, false, arg_1.d.x), vec2<u32>(u_input.c, 4294967295u)), Struct_1(var_0.x, vec4<bool>(true, true, true, true), u_input.a, vec4<bool>(arg_1.d.x, arg_1.d.x, false, false), vec2<u32>(22046u, 21839u)), vec3<u32>(0u, arg_3, arg_1.e.x), arg_1)).e, true, _wgslsmith_f_op_vec2_f32(var_0.wz + vec2<f32>(1711f, arg_1.a)))).d, -(~select(vec4<i32>(26055i, 1i, arg_0.x, 51863i), u_input.a, vec4<bool>(arg_1.b.x, arg_1.d.x, arg_1.d.x, true))), vec4<bool>(true, true, (u_input.c ^ arg_1.e.x) < ~u_input.c, false), arg_1.e), Struct_2(arg_1, func_5(arg_1, Struct_2(Struct_1(arg_1.a, arg_1.d, u_input.a, vec4<bool>(arg_1.d.x, arg_1.d.x, false, arg_1.d.x), vec2<u32>(4294967295u, 0u)), arg_1, arg_1, ~vec3<u32>(u_input.c, 1u, 43697u), func_6(true, 67424u, arg_1, Struct_2(arg_1, Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], arg_1.d, vec4<i32>(u_input.b, -1i, -1i, arg_0.x), vec4<bool>(true, true, arg_1.d.x, false), vec2<u32>(arg_1.e.x, 19150u)), Struct_1(var_0.x, vec4<bool>(arg_1.b.x, arg_1.b.x, true, arg_1.b.x), vec4<i32>(43818i, arg_2.x, 2147483647i, u_input.b), arg_1.d, arg_1.e), vec3<u32>(1u, 0u, 24695u), Struct_1(-1220f, arg_1.b, arg_0, arg_1.b, arg_1.e)))), Struct_2(arg_1, arg_1, Struct_1(var_0.x, vec4<bool>(arg_1.d.x, arg_1.d.x, arg_1.b.x, arg_1.d.x), vec4<i32>(arg_1.c.x, 82169i, arg_0.x, arg_1.c.x), arg_1.d, vec2<u32>(arg_3, 12336u)), vec3<u32>(21305u, 17827u, arg_1.e.x), func_5(arg_1, Struct_2(arg_1, arg_1, Struct_1(var_0.x, vec4<bool>(arg_1.d.x, arg_1.d.x, arg_1.b.x, arg_1.d.x), vec4<i32>(arg_1.c.x, -18062i, u_input.b, arg_0.x), vec4<bool>(true, arg_1.d.x, false, arg_1.d.x), vec2<u32>(arg_3, 16181u)), vec3<u32>(78574u, 0u, 1u), arg_1), Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec4<bool>(false, true, true, true), arg_0, arg_1.d, arg_1.e), arg_1, Struct_1(arg_1.a, arg_1.b, arg_1.c, arg_1.b, arg_1.e), vec3<u32>(u_input.c, arg_3, 50578u), Struct_1(var_0.x, vec4<bool>(arg_1.d.x, false, arg_1.b.x, true), vec4<i32>(0i, u_input.a.x, u_input.b, arg_0.x), vec4<bool>(arg_1.b.x, false, arg_1.d.x, arg_1.d.x), vec2<u32>(u_input.c, arg_3)))))), arg_1, vec3<u32>(countOneBits(~u_input.c), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.c, arg_1.e.x), vec3<u32>(4591u, 4294967295u, arg_1.e.x) | vec3<u32>(1u, arg_3, 1u)), _wgslsmith_dot_vec2_u32(arg_1.e, vec2<u32>(1u, 1u))), func_1(func_1(func_2(Struct_2(Struct_1(1735f, vec4<bool>(false, false, true, true), u_input.a, vec4<bool>(arg_1.b.x, false, true, arg_1.d.x), vec2<u32>(arg_3, arg_3)), arg_1, Struct_1(1353f, vec4<bool>(false, true, true, arg_1.b.x), vec4<i32>(arg_2.x, 2147483647i, -1i, 5258i), vec4<bool>(arg_1.d.x, false, true, false), arg_1.e), vec3<u32>(u_input.c, arg_1.e.x, arg_1.e.x), Struct_1(global0[_wgslsmith_index_u32(arg_1.e.x, 5u)], vec4<bool>(true, arg_1.d.x, arg_1.d.x, false), vec4<i32>(-30964i, u_input.a.x, arg_1.c.x, arg_0.x), arg_1.d, vec2<u32>(0u, 1u)))).a, !arg_1.d.x, _wgslsmith_f_op_vec2_f32(var_0.zw + vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 5u)], -1000f))).c, true, var_0.yx).b), Struct_2(arg_1, func_5(arg_1, func_2(func_1(arg_1, false, vec2<f32>(189f, -215f))), func_1(Struct_1(-117f, arg_1.d, u_input.a, arg_1.d, arg_1.e), true, vec2<f32>(224f, 1311f))), arg_1, max(vec3<u32>(firstLeadingBit(1u), ~arg_1.e.x, arg_1.e.x), ~reverseBits(vec3<u32>(u_input.c, arg_1.e.x, u_input.c))), Struct_1(_wgslsmith_f_op_f32(max(172f, _wgslsmith_f_op_f32(-arg_1.a))), arg_1.b, -abs(vec4<i32>(u_input.b, u_input.a.x, arg_1.c.x, arg_2.x)), select(arg_1.d, arg_1.b, func_6(arg_1.b.x, 14817u, Struct_1(-1000f, vec4<bool>(arg_1.d.x, false, false, true), vec4<i32>(arg_2.x, arg_2.x, arg_1.c.x, -10257i), arg_1.d, arg_1.e), Struct_2(Struct_1(-1000f, arg_1.d, arg_1.c, vec4<bool>(false, arg_1.b.x, arg_1.b.x, arg_1.d.x), arg_1.e), arg_1, Struct_1(arg_1.a, arg_1.d, u_input.a, vec4<bool>(true, arg_1.d.x, true, false), vec2<u32>(u_input.c, u_input.c)), vec3<u32>(arg_1.e.x, arg_1.e.x, 47973u), arg_1)).b.x), _wgslsmith_div_vec2_u32(~arg_1.e, arg_1.e)))).a;
    global0 = array<f32, 5>();
    var var_2 = arg_1.e;
    let var_3 = vec4<bool>(arg_1.b.x, true, true, arg_1.b.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 3419i;
    let var_1 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], select(vec4<bool>(any(vec2<bool>(false, true)), all(vec4<bool>(true, false, false, true)), true, any(vec4<bool>(true, false, false, false))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), all(vec3<bool>(false, true, false))), abs(u_input.a), !vec4<bool>(true, true, any(vec2<bool>(false, true)), false), firstLeadingBit(~(~vec2<u32>(u_input.c, 1u)))), func_7(vec4<i32>(1i, countOneBits(u_input.b), min(_wgslsmith_sub_i32(-10298i, 61490i), _wgslsmith_div_i32(73187i, u_input.a.x)), min(var_0, -1i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(32028u, 11481u)) % 32u)), func_6(any(vec4<bool>(true, true, true, true)), max(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c, 34558u), vec3<u32>(6329u, 1u, u_input.c)), ~1093u), func_5(Struct_1(global0[_wgslsmith_index_u32(1u, 5u)], vec4<bool>(true, true, true, false), vec4<i32>(-847i, u_input.a.x, -1i, 21635i), vec4<bool>(false, false, true, true), vec2<u32>(31780u, u_input.c)), func_1(Struct_1(664f, vec4<bool>(false, false, true, true), vec4<i32>(u_input.b, -3800i, var_0, var_0), vec4<bool>(true, false, true, false), vec2<u32>(u_input.c, u_input.c)), true, vec2<f32>(global0[_wgslsmith_index_u32(11557u, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)])), func_1(Struct_1(-896f, vec4<bool>(false, false, false, false), vec4<i32>(-20266i, var_0, 92217i, 37564i), vec4<bool>(true, false, false, false), vec2<u32>(u_input.c, u_input.c)), false, vec2<f32>(global0[_wgslsmith_index_u32(37574u, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)]))), func_1(Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec4<bool>(false, false, true, true), vec4<i32>(0i, 2147483647i, 52488i, u_input.a.x), vec4<bool>(true, false, true, false), vec2<u32>(u_input.c, 3876u)), func_5(Struct_1(global0[_wgslsmith_index_u32(0u, 5u)], vec4<bool>(false, true, false, true), u_input.a, vec4<bool>(true, false, true, true), vec2<u32>(4294967295u, 1u)), Struct_2(Struct_1(1093f, vec4<bool>(false, false, false, true), u_input.a, vec4<bool>(true, false, true, false), vec2<u32>(u_input.c, u_input.c)), Struct_1(-142f, vec4<bool>(true, true, true, false), vec4<i32>(33492i, var_0, u_input.b, u_input.a.x), vec4<bool>(false, false, true, false), vec2<u32>(u_input.c, 56254u)), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec4<bool>(true, true, true, false), vec4<i32>(u_input.b, 0i, 2147483647i, u_input.b), vec4<bool>(false, false, true, false), vec2<u32>(40816u, 0u)), vec3<u32>(u_input.c, 94203u, 19052u), Struct_1(global0[_wgslsmith_index_u32(35238u, 5u)], vec4<bool>(false, false, true, true), vec4<i32>(-2147483647i, var_0, var_0, var_0), vec4<bool>(true, false, true, false), vec2<u32>(u_input.c, u_input.c))), Struct_2(Struct_1(1056f, vec4<bool>(true, true, false, true), u_input.a, vec4<bool>(false, false, true, true), vec2<u32>(1624u, 46725u)), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec4<bool>(true, false, true, true), vec4<i32>(32626i, -2147483647i, -24800i, 0i), vec4<bool>(false, false, false, false), vec2<u32>(6820u, u_input.c)), Struct_1(-124f, vec4<bool>(false, true, false, false), u_input.a, vec4<bool>(true, false, true, false), vec2<u32>(1u, u_input.c)), vec3<u32>(29630u, u_input.c, 0u), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 5u)], vec4<bool>(false, false, false, false), u_input.a, vec4<bool>(true, false, true, false), vec2<u32>(4760u, 26888u)))).d.x, vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)]))), _wgslsmith_mult_vec3_i32(vec3<i32>(func_2(Struct_2(Struct_1(global0[_wgslsmith_index_u32(0u, 5u)], vec4<bool>(false, false, true, false), vec4<i32>(u_input.a.x, 9523i, -1i, -31262i), vec4<bool>(false, false, false, true), vec2<u32>(u_input.c, 1u)), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec4<bool>(false, true, true, false), u_input.a, vec4<bool>(false, false, false, true), vec2<u32>(1u, 30451u)), Struct_1(-2319f, vec4<bool>(true, true, true, false), vec4<i32>(0i, -3429i, var_0, 2147483647i), vec4<bool>(true, false, true, true), vec2<u32>(4294967295u, 0u)), vec3<u32>(u_input.c, 86464u, 31960u), Struct_1(-1000f, vec4<bool>(true, true, true, true), vec4<i32>(-21539i, -1i, var_0, 29802i), vec4<bool>(true, false, false, true), vec2<u32>(4294967295u, 6431u)))).c.c.x, min(var_0, -32389i), -2147483647i), u_input.a.yzy), _wgslsmith_sub_u32(u_input.c, abs(~1u))), func_5(Struct_1(-1101f, vec4<bool>(true, false, all(vec3<bool>(true, false, true)), any(vec4<bool>(true, true, true, true))), min(u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(18815i, u_input.b, -2147483647i, 11055i), vec4<i32>(10984i, -24448i, 1i, u_input.a.x))), func_1(func_2(Struct_2(Struct_1(1764f, vec4<bool>(false, false, true, false), u_input.a, vec4<bool>(false, true, true, false), vec2<u32>(1u, 1u)), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec4<bool>(true, true, false, true), vec4<i32>(0i, 1i, u_input.a.x, 1i), vec4<bool>(false, true, false, false), vec2<u32>(u_input.c, 0u)), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec4<bool>(true, false, true, true), u_input.a, vec4<bool>(true, false, false, false), vec2<u32>(u_input.c, u_input.c)), vec3<u32>(u_input.c, u_input.c, 13011u), Struct_1(2116f, vec4<bool>(true, true, true, false), u_input.a, vec4<bool>(true, true, false, true), vec2<u32>(u_input.c, 4294967295u)))).e, true, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)]), vec2<f32>(-1516f, global0[_wgslsmith_index_u32(u_input.c, 5u)])))).a.d, vec2<u32>(u_input.c, ~58731u)), func_2(func_1(Struct_1(global0[_wgslsmith_index_u32(48189u, 5u)], vec4<bool>(false, false, true, true), u_input.a, vec4<bool>(true, false, false, true), vec2<u32>(1u, 1u)), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(87335u, 5u)])))), Struct_2(func_1(Struct_1(global0[_wgslsmith_index_u32(114341u, 5u)], vec4<bool>(true, true, true, true), u_input.a, vec4<bool>(true, false, false, true), vec2<u32>(21451u, 37544u)), false, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)])))).e, Struct_1(func_6(false, 4294967295u, Struct_1(1958f, vec4<bool>(false, true, true, false), vec4<i32>(u_input.a.x, u_input.b, 1i, -1i), vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, u_input.c)), Struct_2(Struct_1(564f, vec4<bool>(true, false, true, true), u_input.a, vec4<bool>(true, true, true, false), vec2<u32>(u_input.c, u_input.c)), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec4<bool>(true, true, false, true), vec4<i32>(u_input.a.x, 1627i, 0i, var_0), vec4<bool>(true, false, true, false), vec2<u32>(1u, 19715u)), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec4<bool>(false, false, true, false), u_input.a, vec4<bool>(true, false, true, false), vec2<u32>(1u, 1u)), vec3<u32>(1u, u_input.c, u_input.c), Struct_1(683f, vec4<bool>(false, true, false, true), u_input.a, vec4<bool>(true, true, false, true), vec2<u32>(27756u, 38467u)))).a, vec4<bool>(true, true, true, true), ~vec4<i32>(2147483647i, u_input.a.x, 1i, -1i), vec4<bool>(true, false, true, false), firstTrailingBit(vec2<u32>(41817u, u_input.c))), Struct_1(global0[_wgslsmith_index_u32(countOneBits(0u), 5u)], func_5(Struct_1(-610f, vec4<bool>(true, true, true, true), u_input.a, vec4<bool>(false, false, true, false), vec2<u32>(u_input.c, u_input.c)), Struct_2(Struct_1(917f, vec4<bool>(false, false, false, false), vec4<i32>(1i, u_input.b, 5168i, u_input.a.x), vec4<bool>(true, true, false, false), vec2<u32>(9702u, u_input.c)), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec4<bool>(false, true, false, true), vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, -2147483647i), vec4<bool>(false, false, true, false), vec2<u32>(1u, 0u)), Struct_1(449f, vec4<bool>(true, false, true, true), u_input.a, vec4<bool>(false, false, false, true), vec2<u32>(u_input.c, u_input.c)), vec3<u32>(u_input.c, 36267u, u_input.c), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 5u)], vec4<bool>(true, true, false, true), u_input.a, vec4<bool>(false, false, true, true), vec2<u32>(1u, 51812u))), Struct_2(Struct_1(global0[_wgslsmith_index_u32(51291u, 5u)], vec4<bool>(false, false, false, true), vec4<i32>(u_input.b, -12038i, var_0, -44013i), vec4<bool>(false, true, true, true), vec2<u32>(u_input.c, 21837u)), Struct_1(-1523f, vec4<bool>(true, true, true, true), u_input.a, vec4<bool>(false, true, true, true), vec2<u32>(15703u, 1u)), Struct_1(2186f, vec4<bool>(true, true, true, true), u_input.a, vec4<bool>(true, true, false, false), vec2<u32>(18192u, 0u)), vec3<u32>(4294967295u, 60829u, u_input.c), Struct_1(global0[_wgslsmith_index_u32(0u, 5u)], vec4<bool>(true, true, false, false), vec4<i32>(0i, 40326i, u_input.b, 1i), vec4<bool>(false, true, true, true), vec2<u32>(u_input.c, u_input.c)))).d, u_input.a, select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), false), func_2(Struct_2(Struct_1(-141f, vec4<bool>(true, true, false, false), vec4<i32>(u_input.b, u_input.b, var_0, var_0), vec4<bool>(true, true, false, false), vec2<u32>(29858u, u_input.c)), Struct_1(-820f, vec4<bool>(false, false, false, false), u_input.a, vec4<bool>(false, false, false, true), vec2<u32>(u_input.c, 4294967295u)), Struct_1(-963f, vec4<bool>(false, false, false, false), u_input.a, vec4<bool>(true, false, false, false), vec2<u32>(u_input.c, u_input.c)), vec3<u32>(u_input.c, u_input.c, 27847u), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec4<bool>(false, true, true, true), u_input.a, vec4<bool>(true, false, false, true), vec2<u32>(u_input.c, 1u)))).e.e), ~(~vec3<u32>(53466u, 1u, u_input.c)), func_6(all(vec2<bool>(false, false)), u_input.c, Struct_1(-717f, vec4<bool>(false, false, true, false), vec4<i32>(1i, 0i, -37546i, -1917i), vec4<bool>(true, false, true, false), vec2<u32>(0u, 50955u)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec4<bool>(true, true, false, true), u_input.a, vec4<bool>(true, false, true, true), vec2<u32>(u_input.c, u_input.c)), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 5u)], vec4<bool>(false, true, false, true), vec4<i32>(var_0, 78544i, -70154i, u_input.b), vec4<bool>(false, false, true, true), vec2<u32>(31094u, u_input.c)), Struct_1(global0[_wgslsmith_index_u32(0u, 5u)], vec4<bool>(false, true, true, false), vec4<i32>(1i, u_input.b, -2147483647i, var_0), vec4<bool>(true, true, true, false), vec2<u32>(u_input.c, 72685u)), vec3<u32>(u_input.c, 115484u, 0u), Struct_1(-1185f, vec4<bool>(true, false, false, true), u_input.a, vec4<bool>(true, true, true, false), vec2<u32>(0u, 4294967295u)))))), _wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), max(vec3<u32>(u_input.c, 43800u, u_input.c), vec3<u32>(21090u, 200u, 3225u))), vec3<u32>(1u >> (u_input.c % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(105073u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(18902u, u_input.c), vec2<u32>(u_input.c, u_input.c))), ~u_input.c)), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 5u)] - -1086f))), vec4<bool>(true, true, true, true), (u_input.a << (firstTrailingBit(vec4<u32>(28968u, 9504u, 1u, u_input.c)) % vec4<u32>(32u))) << (~(~vec4<u32>(23287u, u_input.c, u_input.c, u_input.c)) % vec4<u32>(32u)), func_6(false, u_input.c, func_6(true, u_input.c, func_6(false, u_input.c, Struct_1(206f, vec4<bool>(true, false, true, true), u_input.a, vec4<bool>(false, false, true, false), vec2<u32>(u_input.c, 44726u)), Struct_2(Struct_1(494f, vec4<bool>(false, false, true, false), vec4<i32>(-27291i, var_0, -21521i, var_0), vec4<bool>(false, true, false, true), vec2<u32>(u_input.c, 4294967295u)), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec4<bool>(true, true, true, true), vec4<i32>(u_input.b, var_0, -2147483647i, -5764i), vec4<bool>(false, false, true, false), vec2<u32>(u_input.c, u_input.c)), Struct_1(-2750f, vec4<bool>(false, false, false, true), vec4<i32>(var_0, u_input.a.x, 1i, 0i), vec4<bool>(false, false, false, true), vec2<u32>(71813u, 52485u)), vec3<u32>(2501u, u_input.c, u_input.c), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec4<bool>(true, false, false, false), vec4<i32>(u_input.b, u_input.a.x, var_0, -18382i), vec4<bool>(false, false, true, true), vec2<u32>(37444u, u_input.c)))), func_2(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec4<bool>(false, false, true, true), u_input.a, vec4<bool>(true, true, true, true), vec2<u32>(0u, 45941u)), Struct_1(114f, vec4<bool>(true, true, false, false), u_input.a, vec4<bool>(true, true, false, false), vec2<u32>(u_input.c, 119u)), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec4<bool>(false, true, true, true), vec4<i32>(5541i, 1i, -2147483647i, -3715i), vec4<bool>(false, true, false, false), vec2<u32>(u_input.c, 0u)), vec3<u32>(u_input.c, 1u, u_input.c), Struct_1(-262f, vec4<bool>(false, false, true, true), vec4<i32>(var_0, 0i, 2147483647i, 18077i), vec4<bool>(false, true, false, false), vec2<u32>(28760u, 13080u))))), func_2(Struct_2(Struct_1(1271f, vec4<bool>(false, true, true, true), u_input.a, vec4<bool>(false, false, true, false), vec2<u32>(1u, u_input.c)), Struct_1(global0[_wgslsmith_index_u32(84713u, 5u)], vec4<bool>(true, true, true, true), vec4<i32>(u_input.a.x, 15924i, var_0, var_0), vec4<bool>(false, false, true, true), vec2<u32>(61452u, u_input.c)), Struct_1(global0[_wgslsmith_index_u32(16098u, 5u)], vec4<bool>(true, true, true, true), vec4<i32>(u_input.b, 2020i, -2147483647i, var_0), vec4<bool>(true, false, false, true), vec2<u32>(u_input.c, u_input.c)), vec3<u32>(u_input.c, 1u, u_input.c), Struct_1(1000f, vec4<bool>(false, false, true, true), u_input.a, vec4<bool>(true, false, true, false), vec2<u32>(u_input.c, 0u))))).d, ~vec2<u32>(1u, _wgslsmith_div_u32(u_input.c, u_input.c))));
    let var_2 = vec4<f32>(358f, _wgslsmith_f_op_f32(1215f + 632f), -101f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.c.e.x, 5u)])));
    let var_3 = ~vec3<i32>(3766i & _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0, var_0, -48140i, var_0), var_1.e.c), var_1.b.c), max(-2147483647i, var_0), _wgslsmith_sub_i32(1i, 2147483647i));
    let var_4 = var_1.a.d.x;
    var var_5 = vec3<u32>(u_input.c, func_6(!any(vec4<bool>(var_4, var_4, true, var_1.e.d.x)), func_7(~(~vec4<i32>(var_1.c.c.x, -38801i, -1i, 11566i)), func_6(!var_4, func_5(Struct_1(var_1.b.a, vec4<bool>(true, var_1.a.b.x, var_1.b.b.x, var_4), var_1.e.c, vec4<bool>(true, false, true, true), var_1.e.e), Struct_2(Struct_1(var_1.c.a, var_1.c.d, vec4<i32>(u_input.b, 2147483647i, -8483i, 21989i), var_1.b.b, vec2<u32>(var_1.b.e.x, 14912u)), Struct_1(var_2.x, vec4<bool>(true, true, var_4, var_4), u_input.a, var_1.a.b, vec2<u32>(0u, 20570u)), var_1.e, vec3<u32>(0u, u_input.c, u_input.c), Struct_1(710f, vec4<bool>(var_1.a.d.x, false, false, var_1.e.b.x), vec4<i32>(var_0, -6618i, var_0, 2147483647i), var_1.e.d, var_1.d.zz)), Struct_2(Struct_1(var_2.x, var_1.e.d, vec4<i32>(-2147483647i, -1i, u_input.a.x, 21329i), var_1.b.d, vec2<u32>(34622u, 17292u)), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec4<bool>(var_4, var_1.a.d.x, true, var_1.e.d.x), vec4<i32>(var_0, var_1.b.c.x, var_0, -20405i), var_1.b.d, vec2<u32>(var_1.e.e.x, 4294967295u)), var_1.a, var_1.d, var_1.c)).e.x, var_1.b, var_1), vec3<i32>(max(var_1.c.c.x, -12768i), abs(var_1.a.c.x), _wgslsmith_mult_i32(14108i, -1i)), ~13167u).e.x, Struct_1(_wgslsmith_f_op_f32(1311f * _wgslsmith_f_op_f32(f32(-1f) * -1323f)), select(!var_1.c.d, !var_1.a.d, false), ~(var_1.e.c >> (vec4<u32>(var_1.c.e.x, var_1.c.e.x, var_1.a.e.x, 4294967295u) % vec4<u32>(32u))), var_1.e.d, func_2(Struct_2(var_1.e, Struct_1(var_2.x, var_1.a.d, u_input.a, var_1.b.d, vec2<u32>(var_1.a.e.x, 9662u)), Struct_1(var_1.a.a, vec4<bool>(var_4, var_1.a.b.x, true, true), vec4<i32>(36155i, u_input.b, var_1.c.c.x, u_input.a.x), var_1.c.d, var_1.d.xx), var_1.d, var_1.a)).e.e), Struct_2(func_5(func_2(var_1).e, func_1(Struct_1(255f, var_1.a.b, vec4<i32>(2147483647i, -54020i, 1i, var_3.x), var_1.a.b, var_1.d.zy), var_1.a.b.x, vec2<f32>(640f, 820f)), var_1), var_1.a, Struct_1(var_2.x, vec4<bool>(var_1.c.b.x, false, var_4, true), vec4<i32>(-43100i, -14733i, var_1.e.c.x, var_0), func_2(var_1).e.d, var_1.a.e ^ vec2<u32>(1u, 2603u)), var_1.d, Struct_1(_wgslsmith_f_op_f32(ceil(1356f)), var_1.c.d, u_input.a, select(var_1.b.d, var_1.e.b, var_4), firstLeadingBit(vec2<u32>(16504u, 47412u))))).e.x, ~var_1.c.e.x | 7637u);
    var_5 = max(firstTrailingBit(reverseBits(~vec3<u32>(0u, 41495u, var_1.b.e.x) >> (~var_1.d % vec3<u32>(32u)))), vec3<u32>(var_5.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(firstTrailingBit(4294967295u), min(var_1.b.e.x, 1u)), ~_wgslsmith_mod_u32(var_1.b.e.x, 3648u)), 98496u));
    let var_6 = global0[_wgslsmith_index_u32(~(~var_1.a.e.x), 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(select(func_7(var_1.a.c, var_1.b, var_3, var_1.a.e.x).c.x, i32(-1i) * -1i, !var_1.c.d.x), u_input.a.x, var_3.x, ~u_input.a.x) >> (firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.c.e.x, 47915u, 13796u, u_input.c) ^ vec4<u32>(u_input.c, var_5.x, var_5.x, 8613u), ~vec4<u32>(var_1.b.e.x, 21626u, var_5.x, 38452u))) % vec4<u32>(32u)));
}

