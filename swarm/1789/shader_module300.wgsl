struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = 1u;
    var var_1 = Struct_5(Struct_4(true, arg_0.b, _wgslsmith_dot_vec4_u32(u_input.d, ~u_input.d)), select(!(!select(arg_0.b.b.a, arg_0.b.a.a, vec2<bool>(false, arg_0.b.a.c))), select(vec2<bool>(true, arg_0.b.a.c), arg_0.b.a.a, select(arg_0.b.b.a, select(vec2<bool>(arg_0.b.b.c, arg_0.b.a.d), arg_0.b.b.a, arg_0.b.a.a), select(vec2<bool>(true, false), arg_0.b.b.a, vec2<bool>(arg_0.b.b.d, arg_0.b.b.d)))), select(vec2<bool>(true, true), select(select(arg_0.b.a.a, vec2<bool>(arg_0.b.a.a.x, arg_0.b.b.a.x), arg_0.b.b.d), vec2<bool>(false, arg_0.b.b.c), !arg_0.b.a.a), arg_0.b.b.a)), arg_0.b.a);
    var var_2 = arg_0.b.b;
    var var_3 = abs((~firstTrailingBit(vec4<i32>(1094i, -1i, u_input.e, arg_0.b.b.b)) ^ _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.b, var_2.b, 30924i, var_1.c.b), vec4<i32>(-1i, 48654i, -2147483647i, var_1.c.b)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, var_2.b, u_input.e, u_input.c.x), vec4<i32>(14881i, arg_0.b.b.b, 1i, var_1.a.b.b.b)), ~vec4<i32>(37815i, -19782i, arg_0.b.b.b, 4067i))) ^ (abs(vec4<i32>(2980i, var_1.c.b, u_input.a, var_1.c.b)) >> (countOneBits(u_input.d >> (vec4<u32>(79008u, 4294967295u, arg_0.b.c, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var_2 = arg_0.b.a;
    return !(!select(!select(var_2.a, vec2<bool>(false, arg_0.b.a.a.x), arg_0.b.a.c), select(select(var_1.b, vec2<bool>(var_1.c.d, false), var_1.b), select(var_2.a, arg_0.b.a.a, arg_0.b.b.a), any(vec4<bool>(false, true, var_2.a.x, var_1.a.b.b.d))), var_1.b.x));
}

fn func_2() -> Struct_2 {
    var var_0 = ~abs(u_input.d);
    var_0 = u_input.d;
    let var_1 = Struct_4(true && all(vec4<bool>(true, false, true, true)), Struct_2(Struct_1(func_3(Struct_3(vec3<f32>(-498f, 1459f, -607f), Struct_2(Struct_1(vec2<bool>(true, true), u_input.a, false, false, vec2<u32>(u_input.d.x, 0u)), Struct_1(vec2<bool>(false, false), u_input.e, true, true, vec2<u32>(35791u, 23473u)), 92132u, var_0.x))), ~min(u_input.e, u_input.e), true, true & func_3(Struct_3(vec3<f32>(-361f, 1140f, -717f), Struct_2(Struct_1(vec2<bool>(true, false), 36514i, true, true, vec2<u32>(14668u, 0u)), Struct_1(vec2<bool>(false, false), 39613i, false, false, var_0.xz), 0u, var_0.x))).x, ~(~vec2<u32>(var_0.x, 19446u))), Struct_1(select(vec2<bool>(true, false), vec2<bool>(true, false), true), ~u_input.c.x, _wgslsmith_mod_i32(u_input.e, 207i) == u_input.b, func_3(Struct_3(vec3<f32>(1000f, 216f, -2165f), Struct_2(Struct_1(vec2<bool>(true, false), u_input.c.x, true, true, vec2<u32>(var_0.x, u_input.d.x)), Struct_1(vec2<bool>(true, false), -2147483647i, false, false, vec2<u32>(var_0.x, var_0.x)), 4294967295u, 18688u))).x, ~(~vec2<u32>(u_input.d.x, 17205u))), _wgslsmith_sub_u32(1u, u_input.d.x) >> (_wgslsmith_div_u32(3454u, u_input.d.x & 36227u) % 32u), _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.d.yx), vec2<u32>(46919u, u_input.d.x))), _wgslsmith_mod_u32(66550u, 4294967295u));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1489f, 1216f, 715f)))), vec3<f32>(1f, 1f, 1f), vec3<bool>(any(vec4<bool>(var_1.a, var_1.a, false, var_1.b.a.a.x)), true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-395f, -103f, -194f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(736f, -581f, 1000f), vec3<f32>(-1215f, 466f, 392f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(123f, 3224f, -271f), vec3<f32>(-1142f, -1044f, 1494f), vec3<bool>(var_1.b.a.d, var_1.b.a.d, var_1.b.b.d)))))))), var_1.b);
    var var_3 = Struct_5(var_1, select(!var_2.b.b.a, select(func_3(var_2), var_1.b.b.a, vec2<bool>(all(vec3<bool>(var_1.b.b.a.x, var_1.b.a.d, false)), any(vec3<bool>(var_1.a, false, var_1.a)))), !(!(!var_2.b.a.a))), Struct_1(var_2.b.b.a, countOneBits(_wgslsmith_mult_i32(min(u_input.e, 2147483647i), -7424i)), !(!select(false, var_1.b.b.d, true)), true, _wgslsmith_clamp_vec2_u32(abs(~var_2.b.a.e), var_0.zx, _wgslsmith_add_vec2_u32(~var_2.b.a.e, ~var_0.yw))));
    return var_1.b;
}

fn func_1() -> vec4<bool> {
    var var_0 = true;
    var var_1 = Struct_4(select(all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true)) || !all(vec4<bool>(true, false, false, true)), true, true), func_2(), firstTrailingBit(u_input.d.x) | 1u);
    var_0 = var_1.b.a.c;
    var_1 = Struct_4(any(vec2<bool>(true, false)), Struct_2(var_1.b.b, var_1.b.b, ~(~(~32876u)), 87619u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(51818u, 24714u, u_input.d.x, 19210u), vec4<u32>(1u, 1u, 23577u, 7098u)), select(u_input.d, u_input.d, true)) >> (u_input.d % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(min(vec4<u32>(u_input.d.x, 74645u, 1u, u_input.d.x), vec4<u32>(4294967295u, 22339u, var_1.b.b.e.x, 77191u)), ~_wgslsmith_div_vec4_u32(u_input.d, u_input.d))));
    return vec4<bool>(!all(vec3<bool>(!var_1.b.a.d, !var_1.b.b.a.x, false)), var_1.a, var_1.a, !(!(!any(vec2<bool>(var_1.a, true)))));
}

fn func_4(arg_0: vec4<bool>) -> bool {
    var var_0 = select((vec2<u32>(37117u, u_input.d.x ^ u_input.d.x) | u_input.d.xw) & u_input.d.xz, u_input.d.xz, vec2<bool>(!arg_0.x, select(all(!vec3<bool>(arg_0.x, arg_0.x, false)), false, func_1().x && true)));
    var_0 = ~u_input.d.wx;
    let var_1 = ~_wgslsmith_sub_u32(76855u, ~(~(4294967295u >> (var_0.x % 32u))));
    var var_2 = Struct_3(vec3<f32>(271f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-128f - -1753f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1257f) * -649f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(810f, -1009f)))))), func_2());
    var_0 = vec2<u32>(_wgslsmith_add_u32(29253u, 23724u), var_0.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 547f, -985f, 568f))))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(1000f * 685f), 464f, -1000f, -126f)))));
    var_0 = vec4<f32>(var_0.x, 636f, -246f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))) - var_0.x));
    let var_1 = Struct_1(vec2<bool>(var_0.x > _wgslsmith_f_op_f32(-453f - _wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.d.x, 4294967295u), u_input.d.x) >= ~u_input.d.x), -(~1i), all(select(vec2<bool>(u_input.d.x == 11489u, true), vec2<bool>(any(vec3<bool>(true, true, false)), true), vec2<bool>(true, true))), !func_4(func_1()), ~(~(~(~vec2<u32>(0u, u_input.d.x)))));
    let var_2 = ((_wgslsmith_clamp_u32(var_1.e.x, func_2().a.e.x, 37851u) ^ 22688u) <= ~var_1.e.x) | false;
    var var_3 = 8302u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zz, abs(-_wgslsmith_div_vec2_i32(abs(vec2<i32>(u_input.e, var_1.b)), -vec2<i32>(27808i, var_1.b))), -u_input.c, abs(vec4<i32>(-10606i, -30607i, ~u_input.b, -var_1.b)), countOneBits(abs(~select(u_input.d.yxy, vec3<u32>(4294967295u, 20514u, u_input.d.x), var_2))));
}

