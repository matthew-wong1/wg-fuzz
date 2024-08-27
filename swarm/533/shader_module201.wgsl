struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
    c: vec4<bool>,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: Struct_5) -> vec3<f32> {
    var var_0 = arg_2;
    var_0 = Struct_5(arg_1, vec4<bool>(!(!var_0.d) | true, false, select(all(!vec4<bool>(arg_2.e.b.x, var_0.c.x, var_0.d, true)), false, var_0.b.x), var_0.e.a.c.x > arg_1.a.b.x), select(!arg_2.c, vec4<bool>(all(!var_0.b.yz), false, var_0.c.x, false), !var_0.b), true, var_0.e);
    let var_1 = Struct_3(arg_1.a, select(select(select(!var_0.c.zy, !var_0.b.xz, false), select(arg_2.b.xy, var_0.e.b, vec2<bool>(arg_2.b.x, var_0.b.x)), var_0.b.x && (var_0.a.c.c <= arg_2.a.c.c)), arg_2.c.zy, vec2<bool>(true, true)), vec3<u32>(4294967295u, 1u, select(_wgslsmith_div_u32(13312u, arg_2.a.a.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.e.c.x, arg_1.a.d.x, 56555u, 34172u), vec4<u32>(62474u, arg_1.a.d.x, 44735u, arg_1.a.d.x)), all(arg_2.b.yy)) | arg_1.a.d.x));
    var var_2 = var_0.a.c;
    var_0 = arg_2;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-466f, 199f, _wgslsmith_f_op_f32(ceil(var_2.c))))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_4) -> vec2<f32> {
    var var_0 = vec2<bool>(false, true);
    var_0 = select(!(!select(!vec2<bool>(true, var_0.x), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x)), true)), select(!select(!vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false)), all(vec2<bool>(false, true))), !select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true)), select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x), true), var_0.x), vec2<bool>(-1475f < arg_2.c.c, (u_input.a != u_input.b.x) && false));
    let var_1 = Struct_4(arg_0, ~arg_0.d.x ^ abs(~firstLeadingBit(47926u)), Struct_2(~(~vec2<u32>(1u, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d.x, 30219u), vec2<u32>(u_input.c, 113628u)), _wgslsmith_mult_u32(1376u, u_input.c), 0u, ~1u), vec4<u32>(arg_2.b, 2301u, arg_0.d.x, arg_2.c.b) >> (vec4<u32>(1u, arg_0.d.x, arg_2.c.b, u_input.c) % vec4<u32>(32u))), _wgslsmith_f_op_f32(step(-391f, _wgslsmith_f_op_f32(f32(-1f) * -255f))), -_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.x, -40328i, 0i), min(arg_2.c.d, vec3<i32>(-11254i, -1259i, u_input.a)))));
    let var_2 = select(vec3<bool>((select(arg_2.c.d.x, arg_2.c.d.x, false) | ~var_1.c.d.x) < var_1.a.a.x, any(!(!vec4<bool>(var_0.x, false, var_0.x, true))), any(select(vec3<bool>(var_0.x, var_0.x, false), !vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, true, true)))), !vec3<bool>(var_0.x, false, true), !select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(var_0.x, false, false), vec3<bool>(true, var_0.x, true), var_0.x), vec3<bool>(var_0.x, true, var_0.x)), select(vec3<bool>(false, false, var_0.x), select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, false, var_0.x), true), !vec3<bool>(var_0.x, true, var_0.x)), select(!vec3<bool>(true, false, var_0.x), vec3<bool>(false, true, var_0.x), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, true, false), var_0.x))));
    let var_3 = Struct_1(vec2<i32>(-1i) * -u_input.b, _wgslsmith_f_op_vec3_f32(func_3(47918i, arg_2, Struct_5(Struct_4(arg_0, u_input.c, Struct_2(arg_2.a.d, arg_2.a.d.x, -1447f, arg_2.c.d)), vec4<bool>(true, true, var_0.x, select(false, var_2.x, true)), !select(vec4<bool>(false, true, true, var_2.x), vec4<bool>(var_2.x, true, false, true), var_0.x), any(vec4<bool>(true, false, false, var_0.x)) != true, Struct_3(Struct_1(u_input.b, arg_2.a.b, var_1.a.c, arg_0.d), !vec2<bool>(var_0.x, false), _wgslsmith_add_vec3_u32(vec3<u32>(43464u, u_input.c, 4294967295u), vec3<u32>(arg_2.a.d.x, 0u, arg_0.d.x)))))), var_1.a.b, ~select(vec2<u32>(var_1.c.b, u_input.c), vec2<u32>(_wgslsmith_clamp_u32(4294967295u, arg_0.d.x, 0u), ~0u), vec2<bool>(all(vec3<bool>(false, false, var_0.x)), all(vec4<bool>(false, false, var_2.x, false)))));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_2.a.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(-arg_0.b.x))) - arg_0.b.yz), var_3.c.xz));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>) -> vec2<u32> {
    var var_0 = vec2<f32>(-1123f, _wgslsmith_f_op_f32(floor(-653f)));
    var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec2<i32>(arg_0.x, 0i), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1864f * var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1864f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + var_0.x), var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-668f, var_0.x, -220f)) + vec3<f32>(var_0.x, var_0.x, -206f))), countOneBits(vec2<u32>(~4294967295u, u_input.c >> (20865u % 32u)))), var_0.x, Struct_4(Struct_1(vec2<i32>(u_input.b.x, arg_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(238f, -1000f, var_0.x) * vec3<f32>(var_0.x, var_0.x, -1693f)) - _wgslsmith_f_op_vec3_f32(func_3(-1i, Struct_4(Struct_1(vec2<i32>(7990i, arg_0.x), vec3<f32>(-1000f, var_0.x, var_0.x), vec3<f32>(var_0.x, 539f, 462f), vec2<u32>(u_input.c, 64216u)), u_input.c, Struct_2(vec2<u32>(1u, u_input.c), u_input.c, var_0.x, vec3<i32>(u_input.d, u_input.b.x, -2147483647i))), Struct_5(Struct_4(Struct_1(vec2<i32>(arg_0.x, 4883i), vec3<f32>(var_0.x, 1143f, -1286f), vec3<f32>(-612f, var_0.x, var_0.x), vec2<u32>(u_input.c, u_input.c)), u_input.c, Struct_2(vec2<u32>(0u, u_input.c), 0u, var_0.x, vec3<i32>(u_input.d, -28474i, 16556i))), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, false, arg_1.x, arg_1.x), true, Struct_3(Struct_1(vec2<i32>(u_input.a, u_input.e), vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(712f, 259f, var_0.x), vec2<u32>(4294967295u, u_input.c)), vec2<bool>(arg_1.x, true), vec3<u32>(1u, 1u, 1u)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 795f, var_0.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-505f, var_0.x, -719f))), vec2<u32>(countOneBits(0u), u_input.c)), u_input.c, Struct_2(vec2<u32>(~58105u, 78278u), abs(26374u ^ u_input.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.d, arg_0.x, arg_0.x), abs(vec3<i32>(-1i, arg_0.x, 0i)))))));
    let var_1 = Struct_4(Struct_1(vec2<i32>(~1047i >> ((u_input.c << (u_input.c % 32u)) % 32u), _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_0.x, 6938i, u_input.b.x), -u_input.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, var_0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1380f, var_0.x) + vec3<f32>(var_0.x, 294f, -1239f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1000f) - vec3<f32>(221f, var_0.x, 806f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-736f, 1000f, 221f), vec3<f32>(var_0.x, var_0.x, -209f)))))), max(vec2<u32>(u_input.c, ~28521u), ~reverseBits(vec2<u32>(u_input.c, 14515u)))), ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(27579u, 39570u), _wgslsmith_sub_u32(4294967295u, u_input.c)) ^ _wgslsmith_div_u32(u_input.c, 104513u), Struct_2(min(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c)), vec2<u32>(1u, u_input.c)) & reverseBits(vec2<u32>(46749u, u_input.c)), u_input.c >> (8307u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, 577f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_0.x)), -219f))), vec3<i32>(arg_0.x, ~_wgslsmith_div_i32(-2147483647i, arg_0.x), -2147483647i)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_vec3_f32(func_3(var_1.a.a.x, Struct_4(Struct_1(u_input.b, vec3<f32>(var_1.c.c, -685f, 290f), vec3<f32>(1000f, 1970f, -1278f), var_1.a.d), 22877u, Struct_2(var_1.a.d, var_1.a.d.x, var_0.x, var_1.c.d)), Struct_5(Struct_4(Struct_1(arg_0, vec3<f32>(var_1.a.b.x, var_0.x, var_1.a.b.x), var_1.a.b, vec2<u32>(58815u, 4294967295u)), u_input.c, var_1.c), arg_1, vec4<bool>(arg_1.x, true, true, false), true, Struct_3(var_1.a, arg_1.wx, vec3<u32>(u_input.c, 4294967295u, 1u))))).x) - var_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(abs(var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.c * var_1.a.b.x), _wgslsmith_f_op_f32(-1867f + var_0.x)))))));
    var var_2 = Struct_3(var_1.a, select(vec2<bool>(!(false & arg_1.x), true), arg_1.zx, !select(!vec2<bool>(true, arg_1.x), select(vec2<bool>(arg_1.x, arg_1.x), arg_1.yz, false), arg_1.x)), vec3<u32>(countOneBits(8749u), ~u_input.c, ~_wgslsmith_clamp_u32(52233u, var_1.b, _wgslsmith_mod_u32(var_1.c.b, var_1.c.b))));
    return max(_wgslsmith_clamp_vec2_u32(reverseBits(~vec2<u32>(var_1.a.d.x, var_2.c.x)), ~select(reverseBits(vec2<u32>(28613u, 4294967295u)), var_2.a.d, !var_2.b.x), vec2<u32>(73719u, _wgslsmith_add_u32(u_input.c, 10825u)) | _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(var_2.c.xz, var_1.a.d), var_2.c.yy)), vec2<u32>(_wgslsmith_clamp_u32(~(u_input.c >> (var_1.b % 32u)), ~min(28597u, 4294967295u), ~select(1u, 0u, var_2.b.x)), var_2.a.d.x << (~u_input.c % 32u)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_4 {
    let var_0 = arg_0.d.x;
    var var_1 = arg_0.a;
    var_1 = firstTrailingBit(arg_0.a | vec2<u32>(~arg_0.b, 0u));
    var_1 = ~vec2<u32>(abs(0u), abs(_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_2.d.x, 4294967295u), vec2<u32>(u_input.c, 4294967295u), true), arg_0.a)));
    return Struct_4(Struct_1(arg_1.zy, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, -116f, arg_2.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, 1892f, arg_0.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0.c)), _wgslsmith_f_op_f32(round(arg_2.b.x)), _wgslsmith_f_op_f32(389f * arg_2.c.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.d.x, 130554u, u_input.c, var_1.x), vec4<u32>(u_input.c, 1942u, arg_2.d.x, 103594u)), ~0u), (arg_2.d.x | 1u) & max(arg_0.a.x, 33629u))), var_1.x, arg_0);
}

fn func_1() -> vec3<i32> {
    let var_0 = func_5(Struct_2(countOneBits(~vec2<u32>(u_input.c, 1u) & func_2(u_input.b, vec4<bool>(true, true, false, false))), u_input.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(722f)), -1641f) * _wgslsmith_f_op_f32(f32(-1f) * -980f)), _wgslsmith_mod_vec3_i32(vec3<i32>(-36743i & u_input.b.x, _wgslsmith_sub_i32(-16350i, u_input.e), u_input.b.x), vec3<i32>(i32(-1i) * -29912i, -8373i, u_input.b.x | u_input.e))), firstLeadingBit(-vec3<i32>(abs(u_input.a), -1i, -35132i)), Struct_1(~vec2<i32>(countOneBits(1i), u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(660f, 645f, -673f)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1269f, -645f, 1155f))), vec3<f32>(1000f, 1183f, 591f), u_input.d <= u_input.b.x)))), _wgslsmith_div_vec2_u32(~(~vec2<u32>(0u, u_input.c)), ~(vec2<u32>(u_input.c, 47064u) << (vec2<u32>(10511u, u_input.c) % vec2<u32>(32u))))));
    var var_1 = Struct_5(func_5(Struct_2(vec2<u32>(~4294967295u, 4294967295u), func_5(func_5(var_0.c, vec3<i32>(u_input.a, u_input.a, 32656i), Struct_1(vec2<i32>(-15250i, -44097i), var_0.a.b, var_0.a.b, var_0.c.a)).c, var_0.c.d, Struct_1(vec2<i32>(u_input.e, 0i), var_0.a.b, vec3<f32>(var_0.a.c.x, var_0.a.c.x, var_0.c.c), vec2<u32>(var_0.b, 14279u))).a.d.x, func_5(Struct_2(vec2<u32>(16512u, 4294967295u), var_0.a.d.x, 309f, vec3<i32>(1i, u_input.d, 0i)), ~var_0.c.d, func_5(Struct_2(var_0.c.a, u_input.c, -1325f, vec3<i32>(2147483647i, var_0.c.d.x, -2147483647i)), vec3<i32>(u_input.d, u_input.d, 0i), Struct_1(vec2<i32>(var_0.a.a.x, u_input.a), vec3<f32>(-372f, -782f, var_0.c.c), var_0.a.b, var_0.a.d)).a).c.c, func_5(Struct_2(vec2<u32>(u_input.c, u_input.c), var_0.c.b, -1000f, vec3<i32>(-2147483647i, u_input.e, var_0.a.a.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.a.x, 0i, u_input.b.x), var_0.c.d), func_5(var_0.c, var_0.c.d, var_0.a).a).c.d), vec3<i32>(66133i, 2147483647i, ~(~(-1i))), Struct_1(_wgslsmith_mult_vec2_i32(u_input.b, _wgslsmith_add_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(var_0.a.a.x, var_0.c.d.x))), var_0.a.c, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.c, 421f, var_0.a.c.x)))), var_0.a.d)), vec4<bool>(true, any(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, false))), !any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), all(vec3<bool>(true, true, true))), select(!vec4<bool>(false, true, all(vec3<bool>(true, true, true)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(true, true, false, true)) & all(vec2<bool>(false, true)), true, any(vec3<bool>(true, true, true)))), max(~u_input.b.x, u_input.d) != -2147483647i, Struct_3(func_5(func_5(func_5(Struct_2(vec2<u32>(0u, 26186u), 4294967295u, -411f, var_0.c.d), vec3<i32>(-42513i, 11862i, -1i), var_0.a).c, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 0i, -44833i), var_0.c.d), Struct_1(u_input.b, vec3<f32>(-1000f, 401f, var_0.c.c), var_0.a.c, var_0.c.a)).c, var_0.c.d, var_0.a).a, select(!select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), true), countOneBits(select(~vec3<u32>(4294967295u, 1u, 1u), select(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(u_input.c, 1u, 0u), true), vec3<bool>(true, false, true)))));
    let var_2 = !(!select(var_1.c, vec4<bool>(select(false, var_1.c.x, true), var_0.a.b.x < var_1.e.a.c.x, all(vec2<bool>(true, true)), true), vec4<bool>(all(var_1.b.ywx), all(var_1.b.xwy), select(false, true, var_1.e.b.x), true)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(abs(var_0.a.a.x), Struct_4(var_1.e.a, 53613u, Struct_2(min(vec2<u32>(var_0.c.a.x, 1u), var_1.e.a.d), 21950u, _wgslsmith_f_op_f32(abs(var_1.a.c.c)), -vec3<i32>(var_0.c.d.x, -1i, var_0.a.a.x))), Struct_5(Struct_4(Struct_1(vec2<i32>(-5752i, -5585i), vec3<f32>(1502f, var_1.a.c.c, 1205f), var_0.a.b, var_1.a.a.d), var_1.e.a.d.x, func_5(var_0.c, vec3<i32>(-1i, 2147483647i, u_input.e), var_0.a).c), var_1.b, !select(vec4<bool>(var_1.c.x, true, false, false), var_1.c, vec4<bool>(false, var_1.b.x, var_1.e.b.x, var_1.d)), !(!var_2.x), var_1.e))).x, -2229f);
    let var_4 = ~(-var_0.c.d.x);
    return select(vec3<i32>(-reverseBits(var_1.a.a.a.x), min(-_wgslsmith_mod_i32(1i, var_1.e.a.a.x), 2538i), -31147i), -vec3<i32>(var_4, ~_wgslsmith_sub_i32(-13272i, -45194i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_1.e.a.a.x, u_input.a), min(-2147483647i, var_1.a.c.d.x))), !any(select(var_2.xyw, select(vec3<bool>(var_2.x, var_2.x, var_2.x), var_2.xwz, var_2.xxy), true)));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -662f) * -1000f) * _wgslsmith_f_op_f32(round(arg_3.c))) * func_5(func_5(Struct_2(~arg_0.d, ~38822u, -173f, ~arg_3.d), func_5(arg_3, arg_2, Struct_1(arg_2.zy, vec3<f32>(-673f, arg_3.c, -1430f), arg_0.c, arg_0.d)).c.d, arg_0).c, vec3<i32>(_wgslsmith_add_i32(-31761i, _wgslsmith_add_i32(-8896i, 0i)), 1i, u_input.e), func_5(Struct_2(vec2<u32>(u_input.c, arg_0.d.x), 1u, -1329f, firstLeadingBit(arg_3.d)), vec3<i32>(_wgslsmith_div_i32(-29571i, arg_0.a.x), arg_3.d.x | u_input.b.x, abs(-20025i)), arg_0).a).c.c);
    var var_1 = arg_0;
    var_1 = func_5(func_5(func_5(arg_3, select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 22264i, -2147483647i), arg_2), arg_3.d, vec3<bool>(true, true, true)), arg_0).c, arg_3.d & abs(vec3<i32>(32899i, -10924i, 0i)), func_5(Struct_2(firstLeadingBit(arg_3.a), arg_3.b, _wgslsmith_f_op_f32(arg_0.c.x + arg_3.c), arg_2), vec3<i32>(38900i, -u_input.b.x, u_input.a), Struct_1(vec2<i32>(34210i, arg_3.d.x), vec3<f32>(arg_1, 2702f, 257f), vec3<f32>(-908f, -746f, var_0), var_1.d)).a).c, _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(arg_0.a.x, 1i, var_1.a.x)), _wgslsmith_mod_vec3_i32(~vec3<i32>(-54331i, u_input.b.x, -2147483647i), arg_3.d)), Struct_1(_wgslsmith_mod_vec2_i32(reverseBits(arg_3.d.xy) ^ arg_3.d.xy, _wgslsmith_add_vec2_i32(firstLeadingBit(var_1.a), func_5(Struct_2(vec2<u32>(u_input.c, 4294967295u), arg_3.a.x, arg_0.c.x, vec3<i32>(arg_0.a.x, 2147483647i, -88648i)), vec3<i32>(1i, arg_3.d.x, -23324i), Struct_1(vec2<i32>(arg_0.a.x, 48883i), vec3<f32>(var_0, arg_1, 163f), arg_0.b, vec2<u32>(arg_0.d.x, 1u))).a.a)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, var_0, -854f))), _wgslsmith_f_op_vec3_f32(trunc(var_1.c)), _wgslsmith_mod_vec2_u32(firstTrailingBit(var_1.d), vec2<u32>(~1u, arg_0.d.x | 4294967295u)))).a;
    let var_2 = func_5(Struct_2(~_wgslsmith_mult_vec2_u32(var_1.d, var_1.d), 7159u, 919f, reverseBits(arg_2)), vec3<i32>(2147483647i, arg_2.x, min((var_1.a.x & u_input.d) & arg_0.a.x, _wgslsmith_mult_i32(-8798i, arg_0.a.x))), func_5(Struct_2(arg_3.a, 1u, _wgslsmith_f_op_f32(ceil(895f)), countOneBits(vec3<i32>(arg_2.x, u_input.b.x, u_input.b.x))), ~arg_3.d, Struct_1((vec2<i32>(2147483647i, -2147483647i) | vec2<i32>(-1i, arg_2.x)) << (arg_0.d % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-293f, var_0, 143f) - _wgslsmith_f_op_vec3_f32(-var_1.b)), arg_0.b, vec2<u32>(var_1.d.x, 1u))).a);
    var_1 = Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b, _wgslsmith_clamp_vec2_i32(~arg_3.d.zy, var_1.a, func_1().yx)), _wgslsmith_div_i32(~func_5(Struct_2(vec2<u32>(arg_0.d.x, arg_0.d.x), var_1.d.x, 154f, vec3<i32>(1i, 15737i, 0i)), arg_3.d, arg_0).c.d.x, 15147i)), var_2.a.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_3.c - 172f), _wgslsmith_div_f32(arg_1, 708f), _wgslsmith_f_op_f32(f32(-1f) * -1606f))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_0, arg_1), arg_0.c, false)))))), var_2.c.a);
    return Struct_1(-(~vec2<i32>(u_input.e, 43274i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_vec2_f32(func_4(var_2.a, 1289f, var_2)).x, 140f, arg_3.c), vec3<f32>(-838f, 1967f, -1540f), (arg_3.d.x > arg_2.x) | true)) - var_1.c), var_2.a.b, ~(~vec2<u32>(0u, var_2.b) << ((_wgslsmith_mult_vec2_u32(var_1.d, vec2<u32>(u_input.c, 58527u)) >> (_wgslsmith_mod_vec2_u32(arg_3.a, var_2.a.d) % vec2<u32>(32u))) % vec2<u32>(32u))));
}

fn func_7(arg_0: Struct_3, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = arg_3.a.c.x;
    var var_1 = Struct_2(~func_6(arg_3.a, _wgslsmith_f_op_f32(-func_5(Struct_2(arg_3.a.d, 1u, -967f, vec3<i32>(u_input.a, 2147483647i, -85039i)), vec3<i32>(arg_1, arg_1, u_input.e), Struct_1(u_input.b, arg_0.a.c, vec3<f32>(173f, arg_2.x, -486f), arg_3.a.d)).a.c.x), firstTrailingBit(vec3<i32>(arg_0.a.a.x, 44479i, arg_3.a.a.x)), Struct_2(~arg_0.c.zx, ~arg_3.c.x, _wgslsmith_f_op_f32(floor(1000f)), vec3<i32>(arg_1, arg_0.a.a.x, u_input.a) ^ vec3<i32>(u_input.b.x, arg_0.a.a.x, 0i))).d, arg_3.c.x, _wgslsmith_f_op_f32(ceil(867f)), ~_wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.d, arg_1, arg_0.a.a.x), vec3<i32>(7144i, 34228i, 6191i), vec3<bool>(arg_0.b.x, false, false)) & vec3<i32>(2147483647i, arg_3.a.a.x, 19314i), firstTrailingBit(~vec3<i32>(arg_1, u_input.d, 18113i))));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.b.x - 1029f) * var_1.c), arg_0.a.b.x), _wgslsmith_div_vec2_f32(vec2<f32>(328f, _wgslsmith_f_op_vec2_f32(func_4(Struct_1(var_1.d.xx, vec3<f32>(565f, arg_0.a.b.x, arg_3.a.c.x), arg_3.a.b, var_1.a), _wgslsmith_f_op_f32(min(var_1.c, arg_2.x)), func_5(Struct_2(vec2<u32>(4294967295u, 50955u), u_input.c, -639f, var_1.d), vec3<i32>(arg_3.a.a.x, -6520i, arg_3.a.a.x), arg_0.a))).x), arg_2.ww), arg_0.b));
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b.x * var_2.x) - _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1503f + arg_2.x), _wgslsmith_f_op_f32(func_6(Struct_1(vec2<i32>(var_1.d.x, u_input.a), vec3<f32>(arg_3.a.c.x, var_2.x, -389f), arg_0.a.b, vec2<u32>(22005u, arg_0.c.x)), arg_3.a.b.x, var_1.d, Struct_2(vec2<u32>(u_input.c, var_1.b), u_input.c, -1006f, var_1.d)).b.x - func_6(Struct_1(vec2<i32>(-1i, var_1.d.x), arg_2.zyx, vec3<f32>(-123f, var_2.x, arg_2.x), arg_3.c.yy), arg_3.a.b.x, vec3<i32>(-3716i, arg_3.a.a.x, -28880i), Struct_2(vec2<u32>(var_1.b, u_input.c), 75855u, var_1.c, vec3<i32>(1i, arg_3.a.a.x, 2043i))).c.x))));
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_2))) + arg_2)));
    return StorageBuffer(411f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.c.x + 1250f))), func_6(func_6(Struct_1(reverseBits(u_input.b), _wgslsmith_f_op_vec3_f32(-arg_3.a.b), _wgslsmith_f_op_vec3_f32(arg_0.a.b - vec3<f32>(-292f, 966f, var_1.c)), ~vec2<u32>(0u, 1u)), 337f, -(var_1.d << (arg_0.c % vec3<u32>(32u))), func_5(func_5(Struct_2(vec2<u32>(var_1.b, u_input.c), 4294967295u, arg_2.x, vec3<i32>(2147483647i, -2147483647i, -13988i)), vec3<i32>(1i, -20892i, arg_3.a.a.x), Struct_1(vec2<i32>(arg_1, var_1.d.x), vec3<f32>(1099f, 944f, var_1.c), vec3<f32>(349f, 1041f, -346f), arg_3.a.d)).c, var_1.d & var_1.d, arg_0.a).c), _wgslsmith_f_op_vec3_f32(func_3(reverseBits(i32(-1i) * -1i), func_5(func_5(Struct_2(arg_3.a.d, arg_0.a.d.x, 175f, var_1.d), var_1.d, Struct_1(u_input.b, arg_2.wxy, arg_2.zyw, vec2<u32>(4294967295u, arg_3.a.d.x))).c, countOneBits(var_1.d), Struct_1(arg_3.a.a, vec3<f32>(-254f, var_1.c, var_3.x), vec3<f32>(var_2.x, 1262f, -730f), arg_0.c.zx)), Struct_5(Struct_4(Struct_1(vec2<i32>(991i, var_1.d.x), var_3.zyw, arg_2.yyx, arg_0.a.d), arg_0.a.d.x, Struct_2(vec2<u32>(arg_3.a.d.x, arg_0.a.d.x), arg_3.a.d.x, 1169f, var_1.d)), vec4<bool>(false, arg_0.b.x, arg_0.b.x, true), select(vec4<bool>(false, false, arg_0.b.x, false), vec4<bool>(arg_0.b.x, arg_0.b.x, true, true), arg_3.b.x), true, Struct_3(arg_0.a, vec2<bool>(false, false), vec3<u32>(arg_3.a.d.x, 4294967295u, u_input.c))))).x, vec3<i32>(firstLeadingBit(arg_1 ^ arg_1), 1i, _wgslsmith_add_i32(-arg_0.a.a.x, func_1().x)), func_5(func_5(func_5(Struct_2(vec2<u32>(arg_0.c.x, 4294967295u), u_input.c, 260f, var_1.d), vec3<i32>(arg_1, -51869i, 1i), arg_0.a).c, min(var_1.d, vec3<i32>(13763i, -1i, arg_3.a.a.x)), arg_3.a).c, var_1.d, func_6(func_5(Struct_2(arg_0.c.xx, 51581u, -700f, var_1.d), vec3<i32>(u_input.e, arg_3.a.a.x, arg_3.a.a.x), Struct_1(vec2<i32>(2147483647i, var_1.d.x), arg_2.zwy, var_3.yww, vec2<u32>(56737u, arg_0.a.d.x))).a, -2013f, _wgslsmith_mult_vec3_i32(var_1.d, vec3<i32>(-1i, arg_3.a.a.x, arg_3.a.a.x)), Struct_2(vec2<u32>(1u, 1u), arg_3.a.d.x, arg_3.a.b.x, var_1.d))).c).d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(1u, firstTrailingBit(abs(~0u)));
    let x = u_input.a;
    s_output = func_7(Struct_3(func_6(Struct_1(firstLeadingBit(vec2<i32>(2147483647i, 27255i)), vec3<f32>(258f, 315f, 2243f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-302f, 1002f, 1079f)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 39722u))), _wgslsmith_f_op_f32(ceil(-193f)), func_1(), Struct_2(vec2<u32>(u_input.c, 4294967295u), 4294967295u, 554f, ~vec3<i32>(u_input.b.x, u_input.d, u_input.b.x))), vec2<bool>(any(vec4<bool>(false, false, false, false)), u_input.b.x >= u_input.e), ~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 69477u, u_input.c), vec3<u32>(u_input.c, u_input.c, 0u)), ~vec3<u32>(3971u, u_input.c, u_input.c))), _wgslsmith_div_i32(u_input.e, 28920i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1131f, -157f, -1920f, -486f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(615f, -469f, 853f, 1565f) + vec4<f32>(-1000f, -706f, -540f, -1000f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -834f), -2614f, _wgslsmith_f_op_f32(step(930f, -1824f)), -1685f))), Struct_3(Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1126f, -370f, -1000f) - vec3<f32>(-1369f, -916f, 294f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(496f, -186f, -1365f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1428f, -518f, 644f)))), vec2<u32>(u_input.c, func_5(Struct_2(vec2<u32>(u_input.c, 1u), 48918u, 1000f, vec3<i32>(u_input.e, 1i, -65049i)), vec3<i32>(u_input.d, 56866i, -50581i), Struct_1(vec2<i32>(-21201i, u_input.a), vec3<f32>(-1346f, 510f, 1323f), vec3<f32>(-137f, 1308f, 975f), vec2<u32>(u_input.c, 63398u))).a.d.x)), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, false), vec2<bool>(false, true)), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(false, false))), vec3<u32>(u_input.c, 4294967295u, u_input.c)));
}

