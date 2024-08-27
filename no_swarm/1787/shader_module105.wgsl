struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = firstTrailingBit(u_input.c);
    var var_1 = 16861i;
    return -249f;
}

fn func_2() -> f32 {
    var var_0 = Struct_4(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_5(23245u, Struct_2(vec2<f32>(-671f, 244f), false, u_input.c.wx), 1i, vec4<bool>(true, true, false, true)), ~u_input.c.x, Struct_1(false, false, 0u, 784f))), _wgslsmith_f_op_f32(sign(-793f))), true, abs(vec2<i32>(~u_input.c.x, ~(-2147483647i)))), 33286u < _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(7492u, 1u)), ~(~vec2<u32>(9614u, 13087u))));
    var var_1 = _wgslsmith_f_op_f32(var_0.a.a.x + 295f);
    var var_2 = select(select(select(!select(vec4<bool>(false, var_0.b, true, false), vec4<bool>(var_0.b, var_0.a.b, true, false), vec4<bool>(var_0.b, var_0.a.b, var_0.a.b, var_0.b)), select(select(vec4<bool>(false, true, var_0.a.b, var_0.a.b), vec4<bool>(var_0.b, var_0.a.b, var_0.b, true), false), select(vec4<bool>(var_0.a.b, var_0.a.b, var_0.a.b, var_0.a.b), vec4<bool>(false, true, true, false), true), var_0.a.b), !vec4<bool>(false, var_0.b, var_0.a.b, true)), !vec4<bool>(false, var_0.b, var_0.b, true), !var_0.b), !vec4<bool>(!all(vec3<bool>(true, var_0.b, var_0.a.b)), true, true, true), var_0.a.b);
    var_2 = select(!(!(!select(vec4<bool>(var_0.a.b, var_2.x, var_0.a.b, false), vec4<bool>(false, false, false, var_2.x), vec4<bool>(true, false, false, false)))), vec4<bool>(true, all(select(select(vec4<bool>(var_2.x, false, false, false), vec4<bool>(var_0.b, true, var_0.b, var_0.b), vec4<bool>(var_2.x, var_2.x, false, true)), select(vec4<bool>(var_0.b, var_2.x, false, var_0.a.b), vec4<bool>(false, var_2.x, true, false), vec4<bool>(false, true, var_2.x, false)), !vec4<bool>(false, true, true, var_0.a.b))), false, all(var_2.yy)), select(select(vec4<bool>(true, true, true, true), !(!vec4<bool>(var_0.b, var_2.x, var_0.b, false)), !(!var_0.b)), select(vec4<bool>(var_2.x, var_0.a.a.x > var_0.a.a.x, false, !var_2.x), vec4<bool>(false, true, var_0.b, true), select(!vec4<bool>(false, var_2.x, var_2.x, var_0.a.b), select(vec4<bool>(var_0.b, var_2.x, var_2.x, false), vec4<bool>(true, var_2.x, false, true), vec4<bool>(var_0.b, false, false, true)), any(var_2.xyy))), var_0.b && true));
    var var_3 = true;
    return _wgslsmith_f_op_f32(-var_0.a.a.x);
}

fn func_4(arg_0: Struct_3) -> Struct_5 {
    var var_0 = Struct_1(true, true, 0u, _wgslsmith_f_op_f32(func_2()));
    var var_1 = -323f;
    let var_2 = arg_0.a;
    var_1 = arg_0.a.d;
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1352f, 1962f, var_0.d)) * vec3<f32>(arg_0.a.d, _wgslsmith_div_f32(1000f, var_2.d), -363f)))), vec3<f32>(1f, var_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d))))), true));
    return Struct_5(var_0.c, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(step(var_0.d, var_3.x)), _wgslsmith_f_op_f32(sign(-3105f))), var_2.a, _wgslsmith_add_vec2_i32(select(arg_0.c.zz, vec2<i32>(u_input.c.x, 19261i), arg_0.a.a), vec2<i32>(-1i) * -vec2<i32>(arg_0.c.x, arg_0.c.x))), u_input.c.x, select(select(select(select(vec4<bool>(var_2.b, arg_0.a.b, var_2.b, true), vec4<bool>(arg_0.a.b, var_2.a, false, false), vec4<bool>(var_0.a, arg_0.a.a, var_2.a, true)), select(vec4<bool>(var_0.a, var_2.b, false, var_0.a), vec4<bool>(var_2.a, false, var_0.a, true), false), vec4<bool>(arg_0.a.a, var_2.b, var_2.b, false)), vec4<bool>(arg_0.c.x < 0i, any(vec4<bool>(true, var_0.b, false, var_2.b)), !var_2.a, !var_2.a), vec4<bool>(var_0.a, var_0.b, var_0.b, all(vec3<bool>(var_0.a, arg_0.a.b, false)))), vec4<bool>(true && !arg_0.a.a, true, false || arg_0.a.b, any(select(vec3<bool>(var_2.b, var_0.b, var_2.a), vec3<bool>(arg_0.a.a, false, false), vec3<bool>(false, false, arg_0.a.a)))), var_0.b));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = Struct_2(vec2<f32>(1675f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 * -1142f), -653f)))), true, u_input.c.xw);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -671f))))), _wgslsmith_f_op_f32(f32(-1f) * -267f), _wgslsmith_div_f32(1034f, _wgslsmith_f_op_f32(trunc(-643f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_0.a.x, 781f)))) + -288f))));
    var var_2 = select(true, var_0.b, any(!vec2<bool>(var_0.b, any(vec4<bool>(true, var_0.b, true, var_0.b)))));
    var var_3 = func_4(Struct_3(Struct_1(true, all(vec3<bool>(true, var_0.b, true)), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), select(min(abs(vec2<u32>(55856u, 52525u)), vec2<u32>(1u, 0u)), vec2<u32>(~45051u, ~20233u), false), max(vec4<i32>(-1i) * -u_input.c, vec4<i32>(~0i, i32(-1i) * -2147483647i, -22966i, firstLeadingBit(-31997i))), min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 0u, 1u, 2568u)), ~reverseBits(4294967295u))));
    var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.a.x, var_0.a.x, _wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + var_3.b.a.x))))));
    return _wgslsmith_mult_u32(~(~1u) & var_3.a, 1u);
}

fn func_5(arg_0: bool, arg_1: vec4<u32>) -> i32 {
    let var_0 = arg_0;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1194f), func_4(Struct_3(Struct_1(var_0, var_1, arg_1.x, 334f), arg_1.xz, u_input.c, arg_1.x)).b.a.x, -625f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-645f, -1293f, 993f), vec3<f32>(-100f, -888f, -1021f), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1463f, -678f, -158f), vec3<f32>(588f, -736f, 198f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(759f, 1369f, -287f) * vec3<f32>(750f, -572f, 467f))))));
    let var_3 = vec2<f32>(150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1024f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_2.x, 897f)), _wgslsmith_f_op_f32(sign(var_2.x))))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-377f, var_2.x) * -1637f), var_3.x));
    return ~u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(true, _wgslsmith_f_op_f32(-817f - -493f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-349f, -806f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -160f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-522f)))), vec4<u32>(min(~(~91341u), select(func_1(-643f), _wgslsmith_clamp_u32(15747u, 42750u, 1u), true)), _wgslsmith_clamp_u32(~0u, firstLeadingBit(min(1u, 6563u)), select(~62068u, 36087u, all(vec3<bool>(false, false, true)))), ~(~4294967295u), ~_wgslsmith_add_u32(0u, 1u)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2239f * -880f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -207f)))))), 181f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -489f) + _wgslsmith_f_op_f32(f32(-1f) * -108f))));
    var_0 = _wgslsmith_mult_i32(firstLeadingBit(abs(i32(-1i) * -17262i)), min(_wgslsmith_dot_vec3_i32(~u_input.c.wzx ^ u_input.c.zxw, u_input.c.xxx), u_input.b));
    var var_2 = all(vec2<bool>(true, true));
    var_0 = func_4(Struct_3(Struct_1(any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), func_4(Struct_3(Struct_1(true, true, 80853u, -574f), vec2<u32>(0u, 56940u), u_input.c, 66070u)).d.x, 5075u, var_1.x), vec2<u32>(66027u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 1u, 62507u)), vec3<u32>(29539u, 4294967295u, 32589u))), min(~vec4<i32>(u_input.c.x, u_input.a, 1i, u_input.b), firstTrailingBit(vec4<i32>(u_input.c.x, u_input.a, 44942i, 2147483647i))), max(1u, _wgslsmith_mod_u32(1u, func_1(var_1.x))))).c;
    var_0 = 32631i;
    var_2 = u_input.c.x != (-1i | select(u_input.a, -40971i, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1536f, _wgslsmith_f_op_f32(abs(var_1.x)), var_1.x))) * var_1), ~(-_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 1i), u_input.c.xz)));
}

