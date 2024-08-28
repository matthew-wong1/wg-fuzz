struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: vec4<f32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> Struct_4 {
    let var_0 = vec2<f32>(-499f, -693f);
    let var_1 = _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_add_i32(firstTrailingBit(-(u_input.d | 2147483647i)), _wgslsmith_div_i32(~18231i, ~u_input.d)));
    var var_2 = ~_wgslsmith_add_u32(select(~1u, 1u, false), abs(min(u_input.c.x, ~u_input.c.x)));
    var_2 = 57598u;
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(~u_input.c.x, u_input.c.x), ~4294967295u);
    return Struct_4(1u | (~u_input.c.x << (5515u % 32u)), any(vec4<bool>(true, true, true, true)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0.c;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(arg_0.b - arg_0.b)))))) * arg_0.b);
    var_0 = _wgslsmith_f_op_f32(-954f * arg_0.c);
    let var_1 = u_input.b.zy;
    let var_2 = ~(~u_input.c);
    return arg_0.c;
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_4(firstTrailingBit(51807u), true);
    var_0 = func_2();
    var_0 = func_2();
    var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.e, -1161f, -390f, u_input.a.x, vec4<i32>(-2147483647i, 1339i, u_input.a.x, u_input.b.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-271f - -1069f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(334f, _wgslsmith_f_op_f32(abs(978f)), any(vec4<bool>(false, false, var_0.b, var_0.b))))))));
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(234f)), _wgslsmith_f_op_f32(f32(-1f) * -182f), var_0.b)), _wgslsmith_f_op_f32(step(-1640f, _wgslsmith_f_op_f32(-var_1.x)))), Struct_1(max(vec2<i32>(-1i, 23289i), u_input.b.yy), _wgslsmith_f_op_f32(f32(-1f) * -637f), 1172f, min(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-7661i, u_input.a.x), max(2118i, -63485i)), u_input.d), vec4<i32>(firstTrailingBit(-34515i & u_input.b.x), u_input.e.x, u_input.d, -(i32(-1i) * -12372i))), !vec2<bool>(true, !var_0.b || true), select(select(select(!vec2<bool>(true, var_0.b), vec2<bool>(true, true), !vec2<bool>(true, var_0.b)), vec2<bool>(-16390i == u_input.a.x, var_0.b && var_0.b), true), select(!select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, var_0.b)), !vec2<bool>(false, var_0.b), !select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, false), var_0.b)), select(vec2<bool>(!var_0.b, 0i == u_input.d), select(vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, var_0.b), select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, true), vec2<bool>(var_0.b, var_0.b))), !var_0.b)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec4<i32>) -> Struct_4 {
    var var_0 = abs(1701i);
    let var_1 = !vec3<bool>(func_1().d.x, arg_0.c.x, arg_0.d.x);
    let var_2 = u_input.c.x;
    return Struct_4(~u_input.c.x << (~var_2 % 32u), true);
}

fn func_5(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(~(~firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.c.wz, vec2<u32>(arg_1.x, 12124u)))), 58570u);
    var var_1 = firstLeadingBit(1i);
    let var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(-9043i, _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, u_input.d, 1i), vec4<i32>(-5665i, arg_2, u_input.d, u_input.d)), abs(15509i)), firstLeadingBit(arg_2)), arg_2, -arg_2), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, firstTrailingBit(arg_2), 2147483647i, max(1i, ~arg_2)), vec4<i32>(1i, arg_2, arg_2, -2147483647i)));
    return Struct_1(countOneBits(firstLeadingBit(min(vec2<i32>(u_input.d, arg_2), u_input.a) << (vec2<u32>(arg_0.a, 1u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -619f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2335f), -129f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -898f) * func_1().a)), 1074f, ~countOneBits(1i ^ _wgslsmith_sub_i32(arg_2, u_input.d)), func_1().b.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(), vec2<i32>(-1i, 1i), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.d, 33238i, u_input.b.x), vec4<i32>(u_input.e.x, u_input.b.x, u_input.a.x, 1703i)), -80347i, _wgslsmith_div_i32(13576i, 1i), func_1().b.e.x)), u_input.c.xw, u_input.a.x >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.c.wzy, vec3<u32>(u_input.c.x, 0u, 33198u)) >> (u_input.c.x % 32u), u_input.c.x) % 32u));
    let var_1 = _wgslsmith_div_vec2_u32(u_input.c.xw, abs(~(~(~u_input.c.yx))));
    var var_2 = vec2<u32>(~570u, 4840u);
    let var_3 = select(vec4<bool>(true, var_0.b > func_1().a, false, any(vec4<bool>(true, true, true, true))), select(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false))), select(vec4<bool>(func_1().c.x, false, true, func_4(Struct_3(1602f, var_0, vec2<bool>(false, true), vec2<bool>(false, true)), u_input.e, vec4<i32>(-1i, 2147483647i, -34823i, 0i)).b), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), any(vec2<bool>(true, true))), vec4<bool>(true, var_0.b <= var_0.c, u_input.c.x >= 0u, true)), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, false, false, false), false)), _wgslsmith_f_op_f32(ceil(var_0.b)) > -372f);
    var_2 = ~max(~vec2<u32>(var_2.x, 3362u) | _wgslsmith_sub_vec2_u32(u_input.c.wy, u_input.c.zx | var_1), var_1);
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(77980i, ~(-var_0.a.x)), select(abs(select(vec3<i32>(-1i, u_input.a.x, 1i), min(vec3<i32>(33564i, 0i, -2147483647i), vec3<i32>(23930i, -2147483647i, u_input.b.x)), var_3.zxz)), _wgslsmith_mod_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, 0i), u_input.b)), vec3<i32>(-12618i, u_input.d & var_4.b.e.x, _wgslsmith_mult_i32(u_input.a.x, -23948i))), select(!var_3.wwy, select(select(vec3<bool>(true, false, var_4.d.x), var_3.zzy, false), var_3.yww, vec3<bool>(var_3.x, var_3.x, var_4.c.x)), !var_3.xxz)), var_2.x, var_4.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1250f, var_0.c, var_0.c, -1120f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.c, 676f, var_0.c, -100f))))))))));
}

