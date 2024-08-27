struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>) -> vec4<i32> {
    let var_0 = Struct_3(arg_1.a, ~abs(vec4<i32>(-1i) * -vec4<i32>(u_input.b, -62937i, u_input.b, u_input.b)), Struct_1(!(!vec3<bool>(arg_2.x, arg_1.a.c.x, true)), ~arg_1.a.b, vec2<bool>(any(vec2<bool>(arg_2.x, arg_2.x)), false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1160f, _wgslsmith_f_op_f32(f32(-1f) * -760f))) * _wgslsmith_f_op_f32(round(-207f))))), Struct_1(select(select(arg_1.a.a, arg_1.a.a, true), vec3<bool>(true, true, true), arg_2.x), arg_1.a.b, arg_1.a.c));
    let var_1 = Struct_3(var_0.e, var_0.b, var_0.a, var_0.d, Struct_1(select(!var_0.c.a, select(vec3<bool>(arg_1.a.a.x, arg_1.a.c.x, arg_1.a.a.x), select(var_0.c.a, vec3<bool>(true, var_0.c.a.x, arg_2.x), arg_2.x), select(arg_1.a.a.x, arg_2.x, true)), arg_1.a.a), vec3<u32>(var_0.e.b.x, arg_1.a.b.x, select(4294967295u, u_input.a, true) | arg_1.a.b.x), select(vec2<bool>(false, true), arg_2, var_0.a.c.x)));
    var var_2 = !(!((_wgslsmith_add_u32(u_input.a, 1u) == ~arg_0) & any(vec3<bool>(true, false, var_1.e.c.x))));
    var_2 = all(vec4<bool>(all(arg_2), all(!(!vec2<bool>(arg_1.a.c.x, true))), max(-var_0.b.x, 14983i) >= _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.b.x) & vec2<i32>(u_input.b, var_1.b.x), ~var_0.b.yx), var_0.e.a.x));
    let var_3 = var_0.d;
    return var_1.b;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_2) -> bool {
    let var_0 = 1000f;
    let var_1 = vec3<bool>(any(vec2<bool>(true, false)), false, !(!all(vec3<bool>(arg_3.a.c.x, arg_0.x, arg_3.a.c.x)) || false));
    var var_2 = Struct_3(Struct_1(arg_3.a.a, vec3<u32>(firstTrailingBit(30776u), arg_1.x, select(4294967295u, 40283u, arg_2)) & _wgslsmith_sub_vec3_u32(~arg_3.a.b, vec3<u32>(u_input.a, 4294967295u, 17257u)), !vec2<bool>(true, arg_0.x)), -(func_3(_wgslsmith_add_u32(arg_3.a.b.x, u_input.a), arg_3, !var_1.yx) >> (~vec4<u32>(1u, 0u, 114971u, 2768u) % vec4<u32>(32u))), Struct_1(!arg_3.a.a, _wgslsmith_sub_vec3_u32(~(arg_3.a.b >> (arg_3.a.b % vec3<u32>(32u))), vec3<u32>(48396u, 65685u, 11630u) & arg_3.a.b), select(select(vec2<bool>(false, false), select(arg_3.a.c, vec2<bool>(true, arg_3.a.c.x), true), false), var_1.zx, !(!arg_3.a.c))), -1217f, arg_3.a);
    return arg_2;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = select(vec3<bool>(!(all(vec4<bool>(false, arg_1.x, false, false)) == all(arg_1.wy)), arg_0.a.c.x, 62627u >= (firstLeadingBit(u_input.a) | arg_0.c.b.x)), arg_1.zxy, true);
    let var_1 = vec2<u32>(u_input.a, 1u);
    var_0 = select(select(vec3<bool>(arg_1.x, true, func_2(!arg_1, min(var_1, arg_0.e.b.xz), !arg_1.x, Struct_2(arg_0.c))), arg_0.c.a, !arg_0.c.a), arg_1.wzx, vec3<bool>(true || ((u_input.b & u_input.b) < _wgslsmith_div_i32(-65483i, 1i)), !arg_1.x, !func_2(vec4<bool>(false, true, true, false), select(vec2<u32>(u_input.a, arg_0.c.b.x), vec2<u32>(32671u, u_input.a), vec2<bool>(arg_0.a.c.x, arg_0.e.c.x)), false, Struct_2(Struct_1(vec3<bool>(false, arg_0.a.a.x, true), arg_0.a.b, arg_0.a.c)))));
    var var_2 = Struct_2(arg_0.c);
    var var_3 = arg_0.b.x >> (var_1.x % 32u);
    return Struct_2(var_2.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = false;
    var var_1 = u_input.b;
    let var_2 = Struct_3(arg_0, firstLeadingBit(min(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -75311i, u_input.b, u_input.b) | vec4<i32>(u_input.b, 2147483647i, -1i, u_input.b), ~vec4<i32>(55357i, u_input.b, u_input.b, u_input.b)), -firstLeadingBit(vec4<i32>(-4874i, u_input.b, 35515i, u_input.b)))), Struct_1(select(!arg_0.a, arg_0.a, arg_0.a), arg_0.b, !vec2<bool>(true, !arg_0.c.x)), 1000f, arg_0);
    let var_3 = _wgslsmith_clamp_u32(~(~20743u), 0u, 4294967295u | _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_2.e.b.x, arg_0.b.x, 0u), u_input.a)) ^ ~reverseBits(u_input.a);
    let var_4 = func_4(var_2, select(select(vec4<bool>(true, func_2(vec4<bool>(arg_1.x, true, var_2.e.c.x, false), var_2.e.b.xx, false, Struct_2(var_2.c)), select(true, arg_0.a.x, true), true), select(!vec4<bool>(true, arg_0.c.x, arg_1.x, arg_1.x), !vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), select(vec4<bool>(true, true, arg_0.c.x, arg_1.x), vec4<bool>(var_2.a.a.x, arg_0.c.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, var_2.a.c.x, true, false))), arg_1.x), select(vec4<bool>(true, arg_0.a.x, true, arg_0.c.x), select(!vec4<bool>(false, true, arg_1.x, var_2.c.c.x), select(vec4<bool>(var_2.e.c.x, false, false, arg_1.x), vec4<bool>(var_2.a.a.x, arg_1.x, var_2.e.a.x, var_2.c.c.x), vec4<bool>(arg_1.x, var_2.c.a.x, var_2.c.c.x, arg_1.x)), all(var_2.a.a.xx)), true), true));
    return func_4(Struct_3(arg_0, vec4<i32>(-countOneBits(u_input.b), countOneBits(_wgslsmith_sub_i32(1i, 8540i)), _wgslsmith_dot_vec2_i32(var_2.b.zz >> (vec2<u32>(arg_0.b.x, var_4.a.b.x) % vec2<u32>(32u)), var_2.b.xw), _wgslsmith_add_i32(u_input.b, 6584i)), var_2.e, var_2.d, var_4.a), vec4<bool>(!(!arg_0.a.x) & arg_0.c.x, true, var_4.a.c.x, arg_0.c.x)).a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = u_input.b;
    let var_1 = Struct_4(arg_2);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1542f, -759f)))));
    var var_3 = Struct_4(select(select(!select(vec4<bool>(true, arg_2.x, arg_2.x, var_1.a.x), vec4<bool>(false, arg_1.e.c.x, arg_2.x, arg_1.a.c.x), vec4<bool>(var_1.a.x, false, false, arg_0.a.a.x)), select(select(var_1.a, var_1.a, vec4<bool>(true, true, arg_0.a.a.x, var_1.a.x)), vec4<bool>(arg_1.e.c.x, false, arg_2.x, arg_0.a.c.x), !vec4<bool>(arg_2.x, false, false, true)), arg_2.x), arg_2, vec4<bool>(true & arg_1.c.a.x, true, true, true)));
    var var_4 = arg_1.b.yy & arg_1.b.zz;
    return Struct_2(arg_1.c);
}

fn func_6(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(min(~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(u_input.b, u_input.b)), select(-vec2<i32>(11405i, u_input.b), ~vec2<i32>(u_input.b, u_input.b), arg_0.a.a.xy)), vec2<i32>(_wgslsmith_add_i32(40564i, u_input.b), -u_input.b) & vec2<i32>(u_input.b, u_input.b)), _wgslsmith_mod_vec2_i32(min(~vec2<i32>(-1i, -1i), vec2<i32>(u_input.b, 0i) >> (vec2<u32>(arg_0.a.b.x, arg_0.a.b.x) % vec2<u32>(32u))), max(vec2<i32>(-1i, -1i), vec2<i32>(26931i, 2147483647i))) | abs(abs(vec2<i32>(-7632i, 0i))));
    let var_1 = Struct_3(arg_0.a, -vec4<i32>(var_0.x, u_input.b, 20212i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, var_0.x, var_0.x, u_input.b), vec4<i32>(-31963i, -2147483647i, -2147483647i, 2147483647i), arg_0.a.c.x), max(vec4<i32>(var_0.x, var_0.x, 0i, 2147483647i), vec4<i32>(var_0.x, -16412i, 1i, u_input.b)))), Struct_1(!select(vec3<bool>(true, true, false), arg_0.a.a, vec3<bool>(true, true, true)), arg_0.a.b, select(func_1(func_5(Struct_2(Struct_1(vec3<bool>(arg_1, arg_1, false), arg_0.a.b, arg_0.a.a.yy)), Struct_3(Struct_1(arg_0.a.a, arg_0.a.b, vec2<bool>(false, arg_0.a.c.x)), vec4<i32>(2147483647i, -2840i, 43694i, u_input.b), arg_0.a, 363f, Struct_1(vec3<bool>(false, true, true), arg_0.a.b, vec2<bool>(arg_1, arg_1))), vec4<bool>(false, false, true, false)).a, func_5(Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<u32>(1u, u_input.a, u_input.a), vec2<bool>(arg_1, false))), Struct_3(Struct_1(arg_0.a.a, vec3<u32>(0u, 42162u, u_input.a), vec2<bool>(false, false)), vec4<i32>(-1i, var_0.x, 1i, 23459i), Struct_1(vec3<bool>(arg_1, false, true), vec3<u32>(u_input.a, u_input.a, 4294967295u), arg_0.a.a.zz), -1000f, arg_0.a), vec4<bool>(arg_0.a.c.x, false, arg_1, false)).a.c).c, !select(arg_0.a.c, vec2<bool>(false, arg_1), arg_1), arg_0.a.c)), -287f, Struct_1(func_5(Struct_2(func_1(Struct_1(vec3<bool>(true, true, arg_0.a.c.x), vec3<u32>(4294967295u, 7855u, u_input.a), arg_0.a.a.zz), vec2<bool>(arg_1, false))), Struct_3(func_1(arg_0.a, arg_0.a.c), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, u_input.b, var_0.x, -20235i), vec4<i32>(1i, -34589i, 0i, 22521i)), Struct_1(arg_0.a.a, vec3<u32>(4294967295u, 1u, arg_0.a.b.x), vec2<bool>(false, false)), -1985f, func_1(arg_0.a, vec2<bool>(arg_0.a.a.x, false))), select(select(vec4<bool>(false, arg_0.a.a.x, arg_1, true), vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(arg_1, false, false, true)), !vec4<bool>(false, true, arg_1, arg_0.a.c.x), select(vec4<bool>(true, true, arg_0.a.c.x, arg_1), vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(false, arg_0.a.c.x, true, true)))).a.a, arg_0.a.b, vec2<bool>(func_2(select(vec4<bool>(false, arg_0.a.a.x, false, true), vec4<bool>(false, false, arg_1, true), true), arg_0.a.b.xx, true, func_4(Struct_3(Struct_1(arg_0.a.a, arg_0.a.b, vec2<bool>(arg_0.a.c.x, arg_0.a.a.x)), vec4<i32>(u_input.b, var_0.x, u_input.b, u_input.b), Struct_1(vec3<bool>(false, arg_0.a.c.x, true), arg_0.a.b, arg_0.a.a.yx), 1000f, arg_0.a), vec4<bool>(false, arg_1, arg_0.a.c.x, arg_0.a.c.x))), _wgslsmith_sub_i32(var_0.x, var_0.x) > -901i)));
    var_0 = countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, var_0.x), abs(vec2<i32>(1i, -var_1.b.x))));
    var_0 = ~_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.b.yw, vec2<i32>(1i, 1i)), vec2<i32>(reverseBits(-21017i), u_input.b)), var_1.b.zx);
    return Struct_1(select(select(!(!vec3<bool>(false, arg_0.a.a.x, true)), func_1(Struct_1(vec3<bool>(var_1.e.a.x, false, arg_1), vec3<u32>(1u, var_1.c.b.x, var_1.c.b.x), var_1.e.c), vec2<bool>(arg_0.a.a.x, var_1.e.a.x)).a, func_5(Struct_2(Struct_1(var_1.a.a, var_1.a.b, var_1.c.a.zy)), var_1, !vec4<bool>(true, true, arg_1, arg_0.a.c.x)).a.a), !(!select(arg_0.a.a, vec3<bool>(arg_0.a.c.x, false, true), arg_1)), select(vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, true), select(!vec3<bool>(true, var_1.c.c.x, false), vec3<bool>(false, false, true), false), arg_1)), _wgslsmith_div_vec3_u32(vec3<u32>(100298u & ~var_1.e.b.x, ~abs(var_1.e.b.x), _wgslsmith_mult_u32(u_input.a, 3534u)), _wgslsmith_div_vec3_u32(vec3<u32>(11572u, 43418u, ~u_input.a), arg_0.a.b)), !vec2<bool>(select(false, arg_1, func_1(Struct_1(vec3<bool>(var_1.e.a.x, arg_0.a.c.x, false), var_1.c.b, vec2<bool>(true, var_1.a.c.x)), vec2<bool>(arg_1, true)).a.x), any(vec4<bool>(true, true, false, true)) || (false | var_1.c.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_mult_u32(44959u, ~(~(0u << (u_input.a % 32u)))), u_input.a, u_input.a & (0u | u_input.a));
    var var_1 = Struct_3(Struct_1(vec3<bool>(true, true, true), vec3<u32>(countOneBits(_wgslsmith_add_u32(var_0.x, var_0.x)), 4294967295u, var_0.x), vec2<bool>(false, var_0.x != 13276u)), firstLeadingBit(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.b, u_input.b, 0i), vec4<i32>(u_input.b, u_input.b, -46044i, 0i)))), func_6(func_5(Struct_2(func_1(Struct_1(vec3<bool>(true, true, false), var_0.wxw, vec2<bool>(true, true)), vec2<bool>(true, false))), Struct_3(func_1(Struct_1(vec3<bool>(false, true, true), var_0.wxz, vec2<bool>(false, false)), vec2<bool>(true, false)), func_3(u_input.a, Struct_2(Struct_1(vec3<bool>(false, false, true), var_0.zzw, vec2<bool>(false, false))), vec2<bool>(true, false)), func_1(Struct_1(vec3<bool>(true, false, true), vec3<u32>(u_input.a, 34748u, 11578u), vec2<bool>(true, true)), vec2<bool>(true, true)), 1f, func_4(Struct_3(Struct_1(vec3<bool>(false, false, false), vec3<u32>(var_0.x, var_0.x, 1u), vec2<bool>(false, false)), vec4<i32>(2147483647i, 0i, -13849i, u_input.b), Struct_1(vec3<bool>(true, false, true), vec3<u32>(var_0.x, var_0.x, var_0.x), vec2<bool>(false, true)), -1007f, Struct_1(vec3<bool>(false, true, true), var_0.zxy, vec2<bool>(false, false))), vec4<bool>(true, false, false, false)).a), vec4<bool>(true, false, true, true)), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(214f * 1f))), func_6(Struct_2(Struct_1(vec3<bool>(true, true, true), var_0.www, vec2<bool>(false, false))), false));
    let var_2 = Struct_1(vec3<bool>(false, _wgslsmith_mult_u32(select(0u, u_input.a, var_1.a.c.x), 4294967295u) <= 19458u, all(func_1(var_1.e, vec2<bool>(false, false)).c)), ~vec3<u32>(var_1.e.b.x, func_5(Struct_2(var_1.c), Struct_3(Struct_1(var_1.c.a, var_1.e.b, vec2<bool>(var_1.c.c.x, true)), vec4<i32>(var_1.b.x, 12336i, u_input.b, -21808i), var_1.e, -810f, Struct_1(var_1.a.a, var_1.a.b, vec2<bool>(var_1.c.a.x, true))), vec4<bool>(false, var_1.a.c.x, var_1.e.a.x, false)).a.b.x >> (~5602u % 32u), var_1.a.b.x), vec2<bool>(true, var_1.e.a.x));
    var_0 = ~_wgslsmith_sub_vec4_u32((~vec4<u32>(u_input.a, var_0.x, var_0.x, 52806u) << ((vec4<u32>(24477u, var_1.c.b.x, u_input.a, 65542u) | vec4<u32>(0u, 59887u, 15004u, var_1.e.b.x)) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), var_0.x, 60094u, 51167u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(countOneBits(~vec4<u32>(18950u, 58155u, 1u, 4294967295u)), select(vec4<u32>(var_1.c.b.x, 0u, var_0.x, 1u) >> (vec4<u32>(var_2.b.x, 29472u, 40078u, 4294967295u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(16817u, 44712u, 29718u, var_0.x)), u_input.b != 1i)));
    var var_3 = u_input.a;
    var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(round(-2180f)), _wgslsmith_f_op_f32(min(1706f, _wgslsmith_f_op_f32(-1746f * var_1.d))), var_1.d), vec3<f32>(_wgslsmith_div_f32(-233f, _wgslsmith_f_op_f32(f32(-1f) * -145f)), _wgslsmith_f_op_f32(-var_1.d), var_1.d))), var_1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, -1644f)), _wgslsmith_div_vec2_f32(vec2<f32>(347f, var_1.d), vec2<f32>(-472f, var_1.d)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d, var_1.d) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, var_1.d))), vec2<bool>(var_2.c.x, false))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-579f, var_1.d) * vec2<f32>(307f, var_1.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-667f, var_1.d) + vec2<f32>(var_1.d, var_1.d)), 6292i < var_1.b.x)))));
}

