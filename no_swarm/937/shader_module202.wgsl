struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-436f, 1126f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(722f, -1188f), vec2<f32>(-1347f, -543f))), vec2<f32>(565f, 819f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(722f, -1062f) + vec2<f32>(2102f, -612f)), vec2<f32>(152f, -146f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-602f, 1031f), vec2<f32>(-237f, -1451f)))))))));
    var var_1 = vec2<u32>(1u, 0u);
    let var_2 = vec4<bool>(true, true, true, true);
    let var_3 = select(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(9635i, u_input.a.x)), -vec2<i32>(u_input.b.x, u_input.b.x)), -24216i, false && var_2.x) < u_input.c.x;
    var var_4 = var_3;
    return u_input.a;
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    return Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.d.x, 6551i, 2147483647i ^ arg_0.d.c.x) | func_3(), ~(min(u_input.a, arg_0.c.a) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.a.b), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2380f), 264f))), arg_0.b.b.e)), abs(~_wgslsmith_mult_vec4_i32(arg_0.d.c, abs(arg_0.d.c))), !(!arg_0.c.d), _wgslsmith_add_i32(func_3().x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a.wwz, u_input.a.zzx), arg_0.b.b.a.yyy)) <= ~select(u_input.a.x, u_input.c.x, arg_0.d.e));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> vec2<f32> {
    var var_0 = !arg_0.e.d;
    var var_1 = Struct_3(vec4<f32>(-950f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(120f - 544f))), arg_0.a.b.x, arg_0.b.x), func_2(Struct_4(func_2(Struct_4(Struct_1(u_input.d, vec2<f32>(291f, -856f), u_input.d, vec3<bool>(arg_1.x, var_0.x, var_0.x), false), Struct_3(vec4<f32>(394f, -676f, arg_0.e.b.x, 748f), arg_0.e), arg_0.e, Struct_1(arg_0.c.c, arg_0.c.b, vec4<i32>(-1i, -2147483647i, 1i, u_input.a.x), arg_0.c.d, false))), Struct_3(vec4<f32>(-1363f, arg_0.b.x, -1375f, arg_0.d.b.x), Struct_1(u_input.d, vec2<f32>(arg_0.e.b.x, 988f), vec4<i32>(2147483647i, 2147483647i, arg_0.e.a.x, arg_0.d.c.x), vec3<bool>(var_0.x, false, false), true)), func_2(Struct_4(arg_0.e, Struct_3(vec4<f32>(-1000f, -607f, -569f, arg_0.b.x), Struct_1(arg_0.c.c, arg_0.c.b, vec4<i32>(u_input.d.x, u_input.b.x, arg_0.d.c.x, 0i), vec3<bool>(arg_1.x, false, false), true)), arg_0.a, Struct_1(vec4<i32>(arg_0.a.a.x, 2147483647i, arg_0.d.c.x, u_input.c.x), vec2<f32>(-1951f, -222f), vec4<i32>(arg_0.d.a.x, u_input.d.x, 0i, u_input.b.x), arg_1, arg_0.e.d.x))), arg_0.d)));
    var_1 = Struct_3(vec4<f32>(func_2(Struct_4(func_2(Struct_4(var_1.b, Struct_3(vec4<f32>(-334f, var_1.a.x, 1753f, 441f), arg_0.e), arg_0.a, Struct_1(var_1.b.a, vec2<f32>(arg_0.a.b.x, 1478f), vec4<i32>(u_input.d.x, 0i, arg_0.a.a.x, u_input.c.x), arg_1, arg_0.d.e))), Struct_3(vec4<f32>(var_1.b.b.x, 1576f, arg_0.b.x, -515f), Struct_1(vec4<i32>(27788i, arg_0.c.c.x, u_input.c.x, arg_0.e.c.x), arg_0.d.b, vec4<i32>(40890i, -1i, u_input.c.x, 48019i), arg_0.e.d, arg_0.c.e)), func_2(Struct_4(Struct_1(arg_0.a.c, arg_0.b, arg_0.e.a, vec3<bool>(true, false, false), arg_0.e.e), Struct_3(var_1.a, var_1.b), Struct_1(vec4<i32>(1i, var_1.b.a.x, u_input.b.x, var_1.b.c.x), var_1.b.b, vec4<i32>(1i, var_1.b.c.x, var_1.b.c.x, 55399i), vec3<bool>(var_0.x, true, true), var_1.b.e), Struct_1(u_input.d, vec2<f32>(var_1.a.x, 1287f), var_1.b.a, vec3<bool>(false, true, var_0.x), false))), func_2(Struct_4(var_1.b, Struct_3(var_1.a, Struct_1(arg_0.c.a, var_1.b.b, vec4<i32>(18263i, 2147483647i, u_input.d.x, arg_0.e.c.x), vec3<bool>(true, arg_0.d.e, arg_1.x), false)), Struct_1(u_input.d, arg_0.c.b, vec4<i32>(22024i, -5569i, var_1.b.c.x, -27346i), vec3<bool>(var_1.b.e, true, var_1.b.d.x), false), Struct_1(vec4<i32>(-1i, 58010i, arg_0.a.a.x, var_1.b.a.x), arg_0.d.b, var_1.b.c, arg_0.a.d, arg_1.x))))).b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b.b.x + var_1.b.b.x), func_2(Struct_4(Struct_1(vec4<i32>(-1i, u_input.d.x, 28361i, 0i), vec2<f32>(1000f, var_1.a.x), var_1.b.a, vec3<bool>(var_0.x, true, arg_1.x), var_0.x), Struct_3(vec4<f32>(var_1.a.x, var_1.b.b.x, -715f, var_1.a.x), var_1.b), var_1.b, arg_0.a)).b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(503f, arg_0.b.x)), -424f), _wgslsmith_f_op_f32(abs(arg_0.d.b.x))), Struct_1(vec4<i32>(~arg_0.e.c.x, -u_input.a.x, arg_0.c.a.x >> (65448u % 32u), select(-2413i, -2147483647i, arg_1.x)) ^ (_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -1i, -1i, var_1.b.a.x), vec4<i32>(-2147483647i, -7944i, u_input.a.x, 0i)) & (u_input.d << (vec4<u32>(24677u, 2911u, 51367u, 79639u) % vec4<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.d.b.x)), ~(~u_input.d), vec3<bool>(true | var_1.b.d.x, var_0.x, false), var_1.b.e));
    var var_2 = ~func_3().wyy;
    var_0 = var_1.b.d;
    return arg_0.c.b;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_2(func_2(Struct_4(Struct_1(vec4<i32>(arg_1.b.a.x, arg_3.b.a.x, 0i, -2147483647i), arg_1.a.yy, arg_3.b.c, vec3<bool>(arg_1.b.d.x, arg_1.b.d.x, arg_3.b.e), arg_1.b.d.x), Struct_3(vec4<f32>(-1272f, arg_1.b.b.x, arg_1.a.x, arg_1.a.x), arg_3.b), arg_1.b, arg_1.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.b.x, arg_3.a.x) * vec2<f32>(-507f, -251f)), func_2(Struct_4(arg_3.b, Struct_3(arg_3.a, arg_3.b), Struct_1(arg_1.b.c, arg_3.a.xw, u_input.a, arg_1.b.d, false), Struct_1(vec4<i32>(arg_1.b.a.x, arg_0.x, -59518i, 8407i), vec2<f32>(417f, -753f), arg_1.b.c, vec3<bool>(true, arg_1.b.d.x, true), false))), func_2(Struct_4(arg_3.b, Struct_3(arg_3.a, Struct_1(u_input.a, vec2<f32>(-1933f, 1938f), arg_3.b.c, arg_1.b.d, false)), arg_3.b, arg_3.b)), func_2(Struct_4(Struct_1(arg_3.b.c, vec2<f32>(-1275f, 1231f), arg_1.b.c, arg_1.b.d, false), Struct_3(vec4<f32>(-1481f, 200f, arg_3.b.b.x, -471f), Struct_1(vec4<i32>(-1i, 1i, arg_0.x, arg_1.b.c.x), arg_1.b.b, vec4<i32>(u_input.a.x, arg_1.b.c.x, -1i, arg_0.x), vec3<bool>(arg_3.b.d.x, false, false), arg_3.b.e)), Struct_1(vec4<i32>(-48588i, u_input.a.x, arg_0.x, u_input.d.x), arg_1.b.b, arg_3.b.c, vec3<bool>(true, true, arg_3.b.d.x), arg_1.b.e), arg_3.b))), vec3<bool>(true, true, arg_3.b.e)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_3.a.x, _wgslsmith_div_f32(-1225f, -1000f)))))));
    let var_1 = select(vec3<i32>(reverseBits(-1i), -24227i, 1i), arg_1.b.a.zwy, func_2(Struct_4(Struct_1(vec4<i32>(arg_3.b.a.x, arg_3.b.c.x, arg_0.x, -2147483647i), vec2<f32>(1f, 1f), max(vec4<i32>(-2036i, 1i, arg_3.b.a.x, u_input.c.x), arg_3.b.c), select(vec3<bool>(arg_1.b.e, false, arg_3.b.d.x), vec3<bool>(arg_1.b.e, arg_1.b.d.x, false), arg_3.b.e), -1603i <= u_input.c.x), arg_1, arg_1.b, arg_1.b)).d);
    return func_2(Struct_4(Struct_1(vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, var_1.x), u_input.a.x, func_3().x, 6081i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1275f, arg_1.b.b.x)))), vec4<i32>(2147483647i, u_input.c.x, _wgslsmith_sub_i32(44639i, 1i), 1i), !vec3<bool>(arg_3.b.d.x, false, arg_1.b.e), false), arg_1, Struct_1(select(arg_3.b.a, countOneBits(vec4<i32>(var_1.x, -45600i, u_input.c.x, 2147483647i)), !arg_3.b.e), var_0, ~select(arg_3.b.c, arg_1.b.c, true), !select(vec3<bool>(arg_3.b.e, false, true), vec3<bool>(arg_3.b.d.x, arg_3.b.d.x, arg_1.b.e), true), any(arg_3.b.d)), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.b.c.x, 12596i, 18840i, 1526i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.b.a.x, 4369i, 0i, arg_1.b.c.x), u_input.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.b)), func_2(Struct_4(Struct_1(vec4<i32>(arg_3.b.a.x, 3990i, var_1.x, -32703i), vec2<f32>(arg_3.b.b.x, var_0.x), vec4<i32>(0i, -1i, var_1.x, -1i), arg_3.b.d, false), arg_1, Struct_1(arg_3.b.a, vec2<f32>(var_0.x, -1193f), arg_1.b.a, vec3<bool>(arg_3.b.d.x, arg_1.b.d.x, true), true), Struct_1(vec4<i32>(arg_1.b.a.x, 1i, -1i, -2147483647i), vec2<f32>(arg_3.b.b.x, -685f), arg_1.b.c, vec3<bool>(arg_1.b.d.x, arg_1.b.d.x, arg_1.b.e), arg_1.b.e))).a, select(vec3<bool>(arg_3.b.d.x, false, arg_3.b.d.x), arg_1.b.d, arg_3.b.d), false)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1;
    let var_1 = !vec4<bool>(arg_1.d.x, all(vec3<bool>(arg_1.e || false, all(vec2<bool>(arg_0.a.d.x, true)), true)), var_0.d.x, true);
    var var_2 = vec3<i32>(1i, -firstTrailingBit(u_input.c.x), -28445i);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, var_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(-598f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(345f * 1594f) + _wgslsmith_f_op_f32(1000f + 834f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -409f) * _wgslsmith_f_op_f32(round(-2136f)))))), _wgslsmith_f_op_f32(sign(1435f)), _wgslsmith_f_op_f32(506f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(510f, -833f) + 689f), 1f))), 1531f);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-278f, 132f, 1258f, _wgslsmith_f_op_f32(-var_0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1464f, var_0.x, -888f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(142f, 666f, var_0.x, -588f))))));
    let var_1 = Struct_4(Struct_1(u_input.d, vec2<f32>(_wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(vec4<i32>(u_input.b.x, 1i, u_input.d.x, 30013i), var_0.xx, vec4<i32>(-1i, u_input.a.x, 1i, u_input.d.x), vec3<bool>(true, true, false), true), vec2<f32>(-106f, 1000f), Struct_1(vec4<i32>(0i, -2147483647i, u_input.d.x, u_input.b.x), var_0.zz, u_input.d, vec3<bool>(true, true, false), true), Struct_1(vec4<i32>(u_input.a.x, u_input.d.x, 0i, u_input.b.x), var_0.zw, vec4<i32>(u_input.c.x, 7209i, u_input.b.x, 46555i), vec3<bool>(false, true, false), true), Struct_1(vec4<i32>(4860i, u_input.a.x, 5156i, u_input.a.x), vec2<f32>(var_0.x, var_0.x), u_input.d, vec3<bool>(true, false, true), true)), func_1(vec3<i32>(u_input.a.x, 1i, u_input.c.x), Struct_3(vec4<f32>(634f, var_0.x, 1000f, 1711f), Struct_1(u_input.a, var_0.zz, vec4<i32>(2147483647i, u_input.c.x, u_input.a.x, -1i), vec3<bool>(false, false, true), false)), 48102u, Struct_3(vec4<f32>(771f, 911f, -1000f, 1000f), Struct_1(vec4<i32>(-1i, 0i, -1i, u_input.a.x), vec2<f32>(var_0.x, 449f), vec4<i32>(-1i, u_input.b.x, 28437i, u_input.b.x), vec3<bool>(true, false, true), false))))), var_0.x), _wgslsmith_add_vec4_i32(func_1(vec3<i32>(u_input.c.x, 7535i, -47478i) ^ u_input.a.wzz, Struct_3(vec4<f32>(var_0.x, var_0.x, var_0.x, -2181f), Struct_1(vec4<i32>(26832i, 1i, -20238i, u_input.c.x), var_0.xw, u_input.a, vec3<bool>(false, false, true), false)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 16871u, 46363u), vec4<u32>(4294967295u, 41286u, 0u, 35957u)), Struct_3(vec4<f32>(var_0.x, 293f, var_0.x, var_0.x), Struct_1(u_input.a, vec2<f32>(var_0.x, var_0.x), u_input.a, vec3<bool>(false, true, true), true))).a, -vec4<i32>(u_input.d.x, 40893i, -3089i, -2147483647i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(func_2(Struct_4(Struct_1(u_input.d, vec2<f32>(var_0.x, -1169f), vec4<i32>(u_input.c.x, u_input.a.x, u_input.a.x, -40519i), vec3<bool>(false, true, false), false), Struct_3(vec4<f32>(var_0.x, var_0.x, var_0.x, 470f), Struct_1(u_input.d, var_0.yy, u_input.a, vec3<bool>(true, false, true), true)), Struct_1(vec4<i32>(2147483647i, 1i, u_input.c.x, u_input.c.x), vec2<f32>(243f, var_0.x), vec4<i32>(u_input.d.x, u_input.d.x, 1i, u_input.d.x), vec3<bool>(true, false, false), false), Struct_1(u_input.d, var_0.xz, vec4<i32>(11376i, u_input.d.x, u_input.a.x, 2132i), vec3<bool>(false, true, true), false))).d, vec3<bool>(false, false, true), true)), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(33342u, 21601u, 4294967295u), vec3<u32>(74478u, 53571u, 32384u))) < 1u), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, -267f, 294f, -1979f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -265f, var_0.x, var_0.x) - vec4<f32>(var_0.x, var_0.x, var_0.x, -173f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-536f, 1669f, -629f, -1000f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(919f, var_0.x, var_0.x, 413f), vec4<f32>(var_0.x, 227f, var_0.x, -1592f))))), func_1(~vec3<i32>(u_input.a.x, u_input.d.x, -82557i) ^ firstLeadingBit(vec3<i32>(-1i, u_input.b.x, -1i)), Struct_3(vec4<f32>(var_0.x, var_0.x, -210f, var_0.x), func_1(vec3<i32>(u_input.b.x, u_input.d.x, -17903i), Struct_3(vec4<f32>(var_0.x, var_0.x, -1361f, var_0.x), Struct_1(u_input.d, var_0.yz, u_input.d, vec3<bool>(false, true, false), false)), 30873u, Struct_3(vec4<f32>(-114f, 1417f, -1300f, -1000f), Struct_1(vec4<i32>(u_input.c.x, u_input.b.x, u_input.c.x, u_input.a.x), var_0.yx, vec4<i32>(2147483647i, -29599i, u_input.c.x, -2147483647i), vec3<bool>(false, false, true), false)))), min(select(144449u, 1u, false), ~1u), Struct_3(vec4<f32>(-493f, -898f, -2307f, var_0.x), func_1(vec3<i32>(u_input.a.x, -1i, u_input.c.x), Struct_3(vec4<f32>(1682f, var_0.x, var_0.x, -161f), Struct_1(vec4<i32>(-56926i, 0i, -2147483647i, -1i), vec2<f32>(-386f, 124f), u_input.d, vec3<bool>(false, true, false), true)), 24445u, Struct_3(vec4<f32>(141f, -399f, var_0.x, 1450f), Struct_1(u_input.a, var_0.xy, vec4<i32>(-2147483647i, -1i, u_input.b.x, u_input.b.x), vec3<bool>(false, false, false), true)))))), Struct_1(_wgslsmith_add_vec4_i32(u_input.d, u_input.a), var_0.zx, (_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(u_input.c.x, u_input.d.x, -51764i, 2147483647i), u_input.d) ^ u_input.d) | ~abs(u_input.d), select(!func_2(Struct_4(Struct_1(vec4<i32>(u_input.d.x, u_input.d.x, 0i, 1i), var_0.zw, u_input.a, vec3<bool>(true, false, false), true), Struct_3(vec4<f32>(var_0.x, var_0.x, 2344f, var_0.x), Struct_1(u_input.a, vec2<f32>(var_0.x, 429f), u_input.d, vec3<bool>(false, true, true), false)), Struct_1(u_input.a, var_0.zz, vec4<i32>(-2147483647i, u_input.a.x, 1i, u_input.c.x), vec3<bool>(true, true, true), false), Struct_1(vec4<i32>(2147483647i, 44890i, 2147483647i, 2147483647i), vec2<f32>(var_0.x, 948f), u_input.d, vec3<bool>(true, false, false), true))).d, vec3<bool>(true, false, u_input.c.x >= -13925i), vec3<bool>(true, false, true)), true && any(vec2<bool>(true, true))), func_1(u_input.a.wxz, Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(107f, 621f, var_0.x, -229f)), func_2(Struct_4(Struct_1(u_input.d, vec2<f32>(-306f, var_0.x), vec4<i32>(8058i, u_input.b.x, -2243i, 1i), vec3<bool>(true, false, true), false), Struct_3(vec4<f32>(var_0.x, 1666f, var_0.x, -868f), Struct_1(vec4<i32>(u_input.d.x, u_input.b.x, u_input.d.x, u_input.a.x), vec2<f32>(703f, var_0.x), vec4<i32>(u_input.c.x, u_input.b.x, u_input.a.x, 47325i), vec3<bool>(false, true, false), true)), Struct_1(vec4<i32>(u_input.d.x, 0i, 114i, u_input.c.x), vec2<f32>(-340f, 601f), u_input.d, vec3<bool>(false, false, false), true), Struct_1(vec4<i32>(2147483647i, 1i, u_input.c.x, u_input.b.x), var_0.yw, vec4<i32>(-53195i, 2147483647i, u_input.b.x, 0i), vec3<bool>(true, true, false), true)))), firstTrailingBit(0u), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 774f, -1042f, var_0.x))), func_2(Struct_4(Struct_1(vec4<i32>(1i, u_input.d.x, u_input.b.x, -6042i), var_0.xx, u_input.a, vec3<bool>(true, true, true), true), Struct_3(vec4<f32>(-291f, -1912f, -124f, 325f), Struct_1(u_input.d, vec2<f32>(var_0.x, var_0.x), u_input.d, vec3<bool>(false, true, true), false)), Struct_1(vec4<i32>(u_input.c.x, u_input.a.x, -4224i, u_input.d.x), var_0.zx, u_input.a, vec3<bool>(false, true, true), true), Struct_1(vec4<i32>(u_input.b.x, 190i, u_input.d.x, u_input.c.x), vec2<f32>(140f, var_0.x), u_input.a, vec3<bool>(true, false, false), true))))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-var_1.b.a), func_1(_wgslsmith_mult_vec3_i32(~vec3<i32>(var_1.b.b.a.x, -2147483647i, u_input.b.x), vec3<i32>(min(var_1.a.c.x, -12555i), var_1.a.a.x, 14416i)), Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(var_1.b.a, var_1.b.a, var_1.c.d.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, 1401f, var_1.c.b.x, var_1.a.b.x))))), func_1(select(vec3<i32>(var_1.b.b.a.x, -17358i, var_1.c.a.x), vec3<i32>(0i, 1i, var_1.a.a.x), vec3<bool>(var_1.b.b.e, var_1.a.e, var_1.d.e)), Struct_3(vec4<f32>(var_1.d.b.x, -1265f, var_1.b.a.x, -433f), var_1.d), ~7187u, Struct_3(vec4<f32>(370f, var_1.a.b.x, 1314f, 530f), Struct_1(u_input.a, vec2<f32>(var_1.a.b.x, -274f), vec4<i32>(u_input.a.x, 1i, -2147483647i, u_input.c.x), var_1.a.d, false)))), _wgslsmith_div_u32(firstLeadingBit(1u), 1u), Struct_3(var_1.b.a, Struct_1(u_input.a, var_1.a.b, firstTrailingBit(vec4<i32>(-1i, var_1.b.b.c.x, u_input.c.x, 892i)), var_1.a.d, func_2(var_1).e))));
    var var_3 = u_input.c;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(532f, var_2.a.x, 579f, 191f) + _wgslsmith_f_op_vec4_f32(select(var_1.b.a, var_2.a, vec4<bool>(true, true, false, true))))))) * vec4<f32>(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(var_1.a, _wgslsmith_div_vec2_f32(var_2.a.xx, var_1.b.a.ww), func_2(var_1), Struct_1(vec4<i32>(-2147483647i, u_input.d.x, var_1.d.a.x, var_3.x), var_1.c.b, vec4<i32>(-2147483647i, var_3.x, -28291i, u_input.d.x), vec3<bool>(true, var_1.c.e, var_1.a.d.x), var_1.c.e), func_2(var_1)), vec3<bool>(any(vec4<bool>(true, var_1.b.b.d.x, true, var_1.b.b.d.x)), var_1.d.a.x >= var_2.b.a.x, true))).x, var_0.x, var_2.a.x, -200f));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<u32>(max(27479u, 5303u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 54202u), vec2<u32>(0u, 4294967295u)), _wgslsmith_clamp_u32(10254u, 4294967295u, 4294967295u), _wgslsmith_mult_u32(34729u, 0u)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), ~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(12268u, 32871u, 35634u, 0u), vec4<u32>(19090u, 1u, 102275u, 0u)))), var_0.x, _wgslsmith_div_vec3_i32(var_1.b.b.c.yyy, func_2(var_1).c.xwz));
}

