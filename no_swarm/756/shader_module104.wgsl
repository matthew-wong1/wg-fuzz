struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<bool>,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(1828f, 436f, 712f, 565f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    global0 = array<vec4<f32>, 1>();
    global0 = array<vec4<f32>, 1>();
    var var_0 = Struct_1(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-523f)))), vec2<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(560f, 1568f)), -1000f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -601f) + _wgslsmith_f_op_f32(trunc(1468f))), arg_0), firstLeadingBit(select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.c.x, -2147483647i, 20841i), vec4<i32>(11192i, u_input.c.x, u_input.b.x, u_input.b.x)), min(vec4<i32>(8761i, 1i, 2147483647i, 0i), vec4<i32>(1i, u_input.d.x, u_input.a.x, u_input.b.x)), true) | ~(vec4<i32>(u_input.b.x, u_input.d.x, 28342i, u_input.b.x) | vec4<i32>(-1i, u_input.c.x, -40857i, u_input.a.x))), arg_0);
    global0 = array<vec4<f32>, 1>();
    var var_1 = Struct_1(select(_wgslsmith_mult_u32(0u, ~(var_0.a | var_0.a)), _wgslsmith_mult_u32(firstTrailingBit(abs(var_0.a)), ~(var_0.a ^ 6349u)), (all(vec4<bool>(false, var_0.c.x, arg_0, false)) == true) & false), var_0.b, var_0.c, -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, 3608i, var_0.d.x, 0i) >> (vec4<u32>(0u, 4294967295u, var_0.a, var_0.a) % vec4<u32>(32u)), reverseBits(firstLeadingBit(vec4<i32>(u_input.d.x, var_0.d.x, var_0.d.x, -8252i)))), true);
    return !select(select(!vec4<bool>(var_0.e, true, arg_0, true), select(select(vec4<bool>(true, var_1.c.x, var_0.e, var_0.e), vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(false, true, false, var_1.c.x)), vec4<bool>(false, false, var_0.e, false), select(vec4<bool>(var_0.c.x, var_0.c.x, true, true), vec4<bool>(false, true, true, arg_0), vec4<bool>(true, var_1.e, var_0.c.x, arg_0))), vec4<bool>(select(arg_0, false, arg_0), false, var_0.e, all(vec4<bool>(var_0.c.x, false, true, arg_0)))), select(vec4<bool>(arg_0, any(vec3<bool>(var_1.e, false, true)), true, true), vec4<bool>(arg_0, all(vec2<bool>(true, arg_0)), var_0.c.x, true), !any(var_1.c)), var_0.c.x);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = u_input.a.yy;
    global0 = array<vec4<f32>, 1>();
    var var_1 = _wgslsmith_add_i32(-1i, _wgslsmith_add_i32(var_0.x, abs(~var_0.x)));
    let var_2 = func_3(firstTrailingBit(abs(arg_0)) <= (0u & (_wgslsmith_add_u32(4294967295u, arg_0) | arg_0)));
    global0 = array<vec4<f32>, 1>();
    return Struct_1(~(1u << (_wgslsmith_mod_u32(arg_0, 3836u ^ arg_0) % 32u)), _wgslsmith_f_op_f32(1156f + -2024f), func_3(true).xx, ~reverseBits(~(-vec4<i32>(u_input.d.x, -8169i, -17747i, var_0.x))), var_2.x);
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(~1u, 607f, func_2(arg_0.a).c, arg_0.d, arg_0.a < 0u);
    var_0 = Struct_1(var_0.a, 521f, !select(var_0.c, vec2<bool>(arg_0.e, arg_0.e), var_0.c.x), ~(~(~(~vec4<i32>(2147483647i, 1i, var_0.d.x, 0i)))), true);
    let var_1 = ~(-_wgslsmith_mod_i32(firstTrailingBit(1i), 0i)) <= 11135i;
    var_0 = arg_0;
    let var_2 = func_3(arg_0.e).yy;
    return func_2(var_0.a);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = func_4(func_2(arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b))));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b, var_0.b)))))), vec2<f32>(arg_1.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(-702f - var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) + arg_1.b))))));
    var_0 = Struct_1(4294967295u, -136f, vec2<bool>(arg_1.b >= -1860f, func_2(func_4(arg_1, 1491f).a >> (~7864u % 32u)).c.x), vec4<i32>(func_4(Struct_1(_wgslsmith_mult_u32(arg_0, var_0.a), -204f, !arg_1.c, vec4<i32>(arg_1.d.x, -5255i, var_0.d.x, var_0.d.x), arg_1.c.x && false), _wgslsmith_f_op_f32(-var_1.x)).d.x, abs(-1i), ~_wgslsmith_add_i32(-1i, var_0.d.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(firstLeadingBit(var_0.d.x), _wgslsmith_mult_i32(1i, u_input.d.x)), _wgslsmith_div_i32(2147483647i, _wgslsmith_div_i32(u_input.b.x, arg_2.x)))), (func_4(arg_1, var_0.b).e | all(!vec3<bool>(arg_1.e, true, var_0.e))) || (_wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(arg_0, 1u), arg_0) >= countOneBits(arg_1.a)));
    var_0 = Struct_1(_wgslsmith_mod_u32(~abs(reverseBits(37420u)), var_0.a), _wgslsmith_f_op_f32(trunc(1053f)), func_4(Struct_1(_wgslsmith_add_u32(var_0.a | 4728u, _wgslsmith_div_u32(4294967295u, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -332f), vec2<bool>(arg_1.c.x, true), var_0.d, !arg_1.e), _wgslsmith_f_op_f32(abs(var_0.b))).c, firstLeadingBit(~min(-vec4<i32>(34500i, -33064i, -2147483647i, 1i), vec4<i32>(-83573i, arg_2.x, -37293i, arg_1.d.x))), !((var_0.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(34963u, arg_0, arg_1.a, 0u), vec4<u32>(99001u, 0u, 4294967295u, 1u)) % 32u)) == 0u));
    global0 = array<vec4<f32>, 1>();
    return Struct_1(_wgslsmith_mod_u32(var_0.a, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(21183u, var_0.a), vec2<u32>(0u, 27780u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1637f))), arg_1.b), var_0.c, var_0.d & var_0.d, arg_1.e);
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> Struct_1 {
    global0 = array<vec4<f32>, 1>();
    global0 = array<vec4<f32>, 1>();
    let var_0 = func_5(~15215u, func_4(func_2(_wgslsmith_add_u32(32374u, ~arg_1)), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(f32(-1f) * -839f))), vec3<i32>(~(-1i), u_input.a.x, select(i32(-1i) * -12820i, u_input.c.x, true)));
    var var_1 = func_5(~(~23660u), Struct_1(4294967295u, _wgslsmith_f_op_f32(ceil(-520f)), func_3(any(vec4<bool>(true, false, false, false)) | select(false, false, var_0.e)).zz, abs(_wgslsmith_div_vec4_i32(vec4<i32>(81029i, 2147483647i, u_input.c.x, 2147483647i), var_0.d)), var_0.c.x), _wgslsmith_mod_vec3_i32(-(u_input.c & u_input.c), (u_input.c ^ ~vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x)) & vec3<i32>(1i, func_2(arg_1).d.x, ~2147483647i)));
    let var_2 = -746f;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 1>();
    global0 = array<vec4<f32>, 1>();
    let var_0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -237f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(380f + 1000f), -583f, -37186i > u_input.a.x))))), ~(~(~1u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(var_0.a, 20681u)), vec4<i32>(var_0.d.x, ~1i, _wgslsmith_mult_i32(-48029i, _wgslsmith_mod_i32(u_input.a.x, var_0.d.x)), firstLeadingBit(1i) >> (select(var_0.a, var_0.a, false) % 32u)) >> (reverseBits(firstLeadingBit(~vec4<u32>(4294967295u, var_0.a, 1u, var_0.a))) % vec4<u32>(32u)), u_input.a, u_input.a.yy, _wgslsmith_clamp_vec2_i32(~u_input.c.xy, func_4(func_4(Struct_1(var_0.a, 1000f, var_0.c, var_0.d, true), -967f), -128f).d.xz, ~abs(abs(vec2<i32>(51548i, -2147483647i)))));
}

