struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> Struct_2 {
    global0 = array<vec2<u32>, 22>();
    let var_0 = 0u;
    let var_1 = _wgslsmith_div_vec3_i32(u_input.a.xxz, u_input.a.xwz);
    let var_2 = 1u;
    var var_3 = arg_1.x;
    return Struct_2(Struct_1(arg_1.x), Struct_1(true), var_1.zz);
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2266f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1316f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global0 = array<vec2<u32>, 22>();
    global0 = array<vec2<u32>, 22>();
    let var_1 = ~_wgslsmith_mult_i32(max(~14169i, -12538i), u_input.b.x) <= 5581i;
    global0 = array<vec2<u32>, 22>();
    return select(!vec4<bool>(true, var_0 < var_0, all(arg_3), !var_1), arg_3, select(!select(!vec4<bool>(true, true, arg_3.x, true), vec4<bool>(var_1, true, true, true), false), arg_3, true));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = 1u;
    let var_1 = Struct_3(func_2(u_input.a.x, vec4<bool>(!all(vec2<bool>(arg_0.a.a, arg_0.a.a)), true, arg_0.a.a, select(select(false, arg_0.a.a, true), !arg_0.b.a, any(vec4<bool>(arg_0.b.a, arg_0.b.a, arg_0.b.a, arg_0.b.a))))), !vec3<bool>(true, !arg_0.b.a, false), arg_0, func_2(-(~u_input.b.x), select(vec4<bool>(true, false, all(vec2<bool>(false, arg_0.b.a)), !arg_0.b.a), !(!vec4<bool>(true, false, arg_0.b.a, arg_0.b.a)), arg_0.b.a)).b, all(vec3<bool>(true, arg_0.a.a, true)));
    var var_2 = Struct_2(Struct_1(true), func_2(-20983i, !func_3(var_1.b.yy, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 5376i), vec2<i32>(-1i, var_1.c.c.x)), var_1.a.b, !vec4<bool>(true, var_1.e, var_1.e, false))).b, firstLeadingBit(~vec2<i32>(0i, 2147483647i) & (abs(u_input.a.xw) >> (max(vec2<u32>(1u, 103861u), vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u)))));
    var_2 = func_2(((var_1.a.c.x | (-1i << (0u % 32u))) >> (86094u % 32u)) | 0i, func_3(select(vec2<bool>(true, true), select(var_1.b.xz, vec2<bool>(var_2.b.a, var_1.a.a.a), vec2<bool>(var_1.d.a, true)), arg_0.a.a), i32(-1i) * -_wgslsmith_div_i32(var_2.c.x, -1i), Struct_1(false), !vec4<bool>(true, any(vec4<bool>(arg_0.a.a, arg_0.a.a, arg_0.a.a, var_2.a.a)), !var_2.b.a, !var_1.a.b.a)));
    let var_3 = vec3<i32>(_wgslsmith_add_i32(var_2.c.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.yyx, u_input.a.xwy), -vec3<i32>(-1i, var_2.c.x, var_1.a.c.x)), -10999i)), 0i, u_input.b.x | 1i);
    return func_2(var_2.c.x << (58618u % 32u), !(!vec4<bool>(all(var_1.b.yy), any(var_1.b.xz), true, !arg_0.b.a))).b;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: f32) -> Struct_3 {
    var var_0 = Struct_3(Struct_2(Struct_1(arg_1.a), Struct_1(true), min(vec2<i32>(2147483647i, -33677i), abs(u_input.a.wz))), !select(select(select(vec3<bool>(false, arg_1.a, true), vec3<bool>(false, true, true), arg_1.a), select(vec3<bool>(false, arg_1.a, true), vec3<bool>(true, false, true), vec3<bool>(arg_1.a, arg_1.a, arg_1.a)), any(vec3<bool>(arg_1.a, false, true))), !vec3<bool>(arg_1.a, false, false), all(vec3<bool>(false, false, true))), func_2(firstLeadingBit(~1i), !select(!vec4<bool>(false, arg_1.a, true, false), !vec4<bool>(true, true, arg_1.a, arg_1.a), !vec4<bool>(arg_1.a, true, true, false))), func_1(Struct_2(arg_1, Struct_1(arg_1.a), vec2<i32>(~(-27778i), ~u_input.b.x))), !arg_1.a);
    let var_1 = arg_1;
    var_0 = Struct_3(var_0.a, select(select(!var_0.b, var_0.b, any(vec2<bool>(arg_1.a, false))), select(vec3<bool>(true, false | arg_1.a, var_0.a.b.a), !select(var_0.b, var_0.b, var_1.a), !var_0.c.b.a), true), func_2(~0i, vec4<bool>(!arg_1.a, true, all(select(vec2<bool>(var_0.c.b.a, arg_1.a), var_0.b.xz, vec2<bool>(var_1.a, var_1.a))), any(!var_0.b))), func_1(func_2(68572i, vec4<bool>(true, true, true, true))), any(select(vec4<bool>(true, var_0.c.b.a, true, all(vec3<bool>(var_0.b.x, true, var_0.c.b.a))), vec4<bool>(var_0.c.b.a, true, !var_0.c.a.a, all(vec4<bool>(true, var_0.b.x, var_0.a.b.a, var_0.c.a.a))), vec4<bool>(arg_1.a, arg_1.a, true, 1i > var_0.c.c.x))));
    let var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~0u & firstTrailingBit(0u), 1u), select(~vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(0u, 1u, 4294967295u)), select(vec3<bool>(arg_1.a, var_0.c.b.a, true), vec3<bool>(false, var_1.a, var_1.a), true))), ~4294967295u);
    var_0 = Struct_3(Struct_2(func_2(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-2147483647i, -2147483647i), var_0.a.c, true), u_input.b.ww | vec2<i32>(1i, var_0.a.c.x)), !vec4<bool>(true, var_0.c.a.a, true, var_1.a)).a, Struct_1(var_1.a), ~vec2<i32>(max(u_input.b.x, var_0.a.c.x), 2147483647i)), !(!(!vec3<bool>(arg_1.a, false, true))), func_2(1i, select(select(select(vec4<bool>(var_0.a.a.a, var_1.a, arg_1.a, var_1.a), vec4<bool>(var_1.a, false, var_0.c.b.a, false), true), select(vec4<bool>(var_1.a, true, false, true), vec4<bool>(false, var_0.c.b.a, var_0.c.a.a, arg_1.a), var_0.b.x), vec4<bool>(arg_1.a, arg_1.a, true, true)), select(!vec4<bool>(false, var_0.b.x, false, true), func_3(var_0.b.xx, u_input.b.x, Struct_1(var_0.d.a), vec4<bool>(true, var_1.a, arg_1.a, var_1.a)), arg_1.a), vec4<bool>(true, var_0.b.x, !var_1.a, var_0.e))), arg_1, true);
    return Struct_3(func_2(reverseBits(2147483647i & select(0i, var_0.c.c.x, var_1.a)), !vec4<bool>(false, -1i >= u_input.a.x, true, any(vec4<bool>(arg_1.a, var_0.d.a, var_0.a.a.a, var_1.a)))), var_0.b, Struct_2(Struct_1(false), var_0.a.a, firstTrailingBit(u_input.b.wx)), var_0.a.a, !(!(!var_0.b.x | !arg_1.a)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> vec2<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-197f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_2))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-675f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -141f)))), -965f), _wgslsmith_f_op_f32(ceil(-877f)), _wgslsmith_f_op_f32(-1385f - _wgslsmith_f_op_f32(trunc(-696f))));
    global0 = array<vec2<u32>, 22>();
    global0 = array<vec2<u32>, 22>();
    global0 = array<vec2<u32>, 22>();
    var var_1 = func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, var_0.x))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -653f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(min(-1000f, -877f)))), !select(func_3(arg_0.b.yy, -2147483647i, Struct_1(true), vec4<bool>(arg_1.b.a, true, arg_1.a.a, arg_0.e)).yz, func_3(vec2<bool>(arg_1.a.a, arg_0.b.x), -20184i, arg_1.a, vec4<bool>(arg_1.b.a, arg_1.a.a, true, arg_0.e)).xw, select(arg_1.b.a, arg_1.a.a, arg_0.e)))), arg_0.d, var_0.ywx, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(round(var_0.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2, var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(2047f + -779f)))))));
    return vec2<bool>(arg_2 <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1031f)) - _wgslsmith_f_op_f32(round(-2120f))), arg_2)), arg_1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 22>();
    var var_0 = vec2<bool>(true, true);
    var_0 = vec2<bool>(var_0.x != !(true & (var_0.x && var_0.x)), false);
    var_0 = !func_5(func_4(vec2<f32>(_wgslsmith_f_op_f32(669f + -963f), _wgslsmith_f_op_f32(f32(-1f) * -848f)), func_1(Struct_2(Struct_1(true), Struct_1(var_0.x), u_input.b.zy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1642f, 187f, 809f)) + vec3<f32>(-286f, -402f, -966f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-119f)), -1695f))), func_2(firstLeadingBit(u_input.a.x), select(!vec4<bool>(false, var_0.x, true, true), func_3(vec2<bool>(true, var_0.x), u_input.b.x, Struct_1(var_0.x), vec4<bool>(false, true, var_0.x, true)), vec4<bool>(var_0.x, true, true, true))), _wgslsmith_f_op_f32(f32(-1f) * -1463f), -1i);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-237f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -274f) - _wgslsmith_div_f32(-1000f, 1316f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -214f)), -606f, 1f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~max(0u, ~38055u), 22924u, 89154u, ~min(_wgslsmith_mult_u32(2598u, 1u), abs(82830u))));
}

