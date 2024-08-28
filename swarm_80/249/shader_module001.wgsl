struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: vec2<bool>) -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(-(~arg_2), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(arg_2.zz, vec2<i32>(-26507i, u_input.a.x)), 60737i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-366f - arg_0.b.x), arg_1.a.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.b.x, 336f) + vec4<f32>(598f, arg_0.a.x, arg_0.b.x, arg_1.a.a.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a.x, 803f, arg_1.a.a.x, -639f))), !vec4<bool>(arg_3.x, arg_3.x, true, arg_3.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-504f, -807f, arg_1.a.b.x, arg_1.a.a.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(456f, arg_0.b.x, arg_0.b.x, arg_1.a.a.x) + vec4<f32>(arg_0.b.x, -205f, arg_0.b.x, arg_0.a.x)))), reverseBits(-vec2<i32>(42402i, 1i)), true));
    var var_1 = var_0.a;
    let var_2 = var_0;
    var_1 = var_2.a;
    let var_3 = var_2.a.c;
    return _wgslsmith_f_op_f32(trunc(var_1.b));
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_1(u_input.c, _wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, 1668f)), vec3<f32>(-771f, 543f, 604f)), vec2<f32>(122f, 564f)), Struct_4(Struct_3(vec3<f32>(1338f, -432f, 1712f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-714f, -1220f))))), _wgslsmith_mod_vec3_i32(select(u_input.a.xwy, vec3<i32>(u_input.c, 3397i, 1i), false), vec3<i32>(1i, _wgslsmith_sub_i32(u_input.c, u_input.c), _wgslsmith_div_i32(u_input.c, -2147483647i))), vec2<bool>(-1000f != _wgslsmith_f_op_f32(ceil(965f)), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-925f, 569f, 566f, -431f), vec4<f32>(-616f, -268f, -1058f, -265f), false)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-453f, 548f, -966f, 729f)))))), abs(max(vec2<i32>(u_input.a.x, -44021i), ~vec2<i32>(u_input.c, -1i))) & min(u_input.a.xy, u_input.a.zx), u_input.b.x == u_input.b.x);
    var var_1 = reverseBits(arg_0.xx);
    var_1 = u_input.b.zy;
    var var_2 = var_0.c.zxw;
    var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-442f, -224f, _wgslsmith_f_op_f32(round(var_2.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0.c.wyy + vec3<f32>(var_0.c.x, -669f, var_0.b)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.c.yyw)))))), _wgslsmith_f_op_vec3_f32(ceil(var_0.c.yzz))));
    return _wgslsmith_f_op_f32(-var_0.c.x);
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_1(~_wgslsmith_sub_i32(-(~u_input.a.x), arg_0), arg_2, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(trunc(-597f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-298f * arg_2), 1000f, true)), _wgslsmith_f_op_f32(-1439f * arg_2)), u_input.a.wx, arg_1.x > u_input.b.x);
    var var_1 = !var_0.e;
    var var_2 = select(vec2<bool>(var_0.e, !(!var_0.e) && !(!var_0.e)), !(!select(select(vec2<bool>(true, var_0.e), vec2<bool>(var_0.e, false), true), select(vec2<bool>(var_0.e, var_0.e), vec2<bool>(true, var_0.e), vec2<bool>(true, true)), vec2<bool>(true, var_0.e))), any(select(select(!vec4<bool>(true, var_0.e, var_0.e, var_0.e), vec4<bool>(var_0.e, false, true, var_0.e), !var_0.e), !vec4<bool>(var_0.e, var_0.e, false, var_0.e), var_0.e)));
    var var_3 = Struct_4(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1014f, 1705f)), var_0.b), _wgslsmith_f_op_f32(-arg_2)), var_0.c.xx));
    var_2 = vec2<bool>(!(all(!vec4<bool>(var_2.x, var_0.e, var_2.x, var_2.x)) && var_2.x), var_2.x);
    return Struct_1(-(~u_input.a.x), _wgslsmith_f_op_f32(var_0.c.x * var_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-379f, -437f, -864f, 294f) - vec4<f32>(870f, -345f, 1572f, var_0.b))))), _wgslsmith_div_vec2_i32(var_0.d, -vec2<i32>(4874i, min(0i, 1i))), any(!vec3<bool>(!var_0.e, any(vec4<bool>(true, var_2.x, false, false)), !var_0.e)));
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = func_4(-u_input.c, abs(~vec3<u32>(~0u, select(38645u, arg_0, true), arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-206f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.b))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 598f, var_0.c.x, -2085f) + var_0.c)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x + func_4(var_0.a, u_input.b.xyz, -367f).b), _wgslsmith_f_op_f32(f32(-1f) * -262f), _wgslsmith_f_op_f32(806f * _wgslsmith_f_op_f32(abs(var_0.b))))));
    let var_2 = func_4(-var_0.d.x, u_input.b.yxz, var_0.c.x);
    let var_3 = vec4<bool>(all(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, var_2.e, false, var_0.e), vec4<bool>(true, var_0.e, var_0.e, var_0.e)), !(!vec4<bool>(true, var_2.e, var_0.e, var_2.e)), !select(vec4<bool>(var_2.e, var_2.e, false, true), vec4<bool>(var_2.e, false, false, false), vec4<bool>(var_2.e, true, true, var_0.e)))), true & !var_2.e, var_0.e, any(!select(!vec2<bool>(var_0.e, false), select(vec2<bool>(var_2.e, var_2.e), vec2<bool>(var_2.e, var_2.e), false), vec2<bool>(true, true))));
    return 36678i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.yx;
    var var_1 = Struct_1(_wgslsmith_div_i32(func_1(~1u), -(~(~(-1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-401f - 1039f)) + _wgslsmith_f_op_f32(func_2(u_input.b))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2043f + 395f)), _wgslsmith_f_op_f32(-728f + _wgslsmith_f_op_f32(-231f - 1803f)))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1046f, -638f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -415f)))), 2167f, _wgslsmith_f_op_f32(func_2(u_input.b >> ((vec4<u32>(1317u, var_0.x, u_input.b.x, 14887u) & vec4<u32>(4294967295u, var_0.x, 0u, var_0.x)) % vec4<u32>(32u)))), -213f), abs(u_input.a.zz), u_input.a.x < 18508i);
    var_1 = func_4(i32(-1i) * -1i, vec3<u32>(~(var_0.x ^ 22021u), _wgslsmith_mod_u32(abs(var_0.x), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), 15961u) >> (vec3<u32>(_wgslsmith_mod_u32(27432u, ~u_input.b.x), ~abs(12638u), _wgslsmith_mod_u32(1u, ~1u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1325f - var_1.c.x) * _wgslsmith_f_op_f32(-var_1.b)) * var_1.c.x))));
    let var_2 = select(~firstTrailingBit(vec4<u32>(min(33395u, u_input.b.x), 60581u, reverseBits(var_0.x), u_input.b.x | 0u)), ~reverseBits(u_input.b), any(!select(vec3<bool>(true, var_1.e, var_1.e), select(vec3<bool>(true, false, false), vec3<bool>(false, true, var_1.e), true), !vec3<bool>(var_1.e, var_1.e, false))));
    var var_3 = u_input.c;
    var var_4 = !vec4<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1100f, 1000f))) >= 865f, true, true, !var_1.e);
    var_3 = ~_wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), var_1.a), i32(-1i) * -12939i);
    var var_5 = Struct_2(Struct_1(~var_1.a, 2312f, var_1.c, _wgslsmith_add_vec2_i32(firstLeadingBit(u_input.a.ww), _wgslsmith_add_vec2_i32(vec2<i32>(8144i, -18292i), vec2<i32>(var_1.d.x, 0i))) & _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.a, var_1.a), vec2<i32>(6159i, var_1.a)), !any(vec3<bool>(var_1.e, var_1.e, false))));
    var_5 = Struct_2(Struct_1(_wgslsmith_sub_i32(-u_input.c, u_input.c << (33830u % 32u)), 677f, var_5.a.c, countOneBits(vec2<i32>(var_1.a, -57498i)), var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * var_5.a.b), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_5.a.c.x), 998f))), _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -296f))), _wgslsmith_f_op_f32(f32(-1f) * -1405f)), ~vec4<u32>(u_input.b.x | 0u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 8198u, ~4294967295u) >> (firstTrailingBit(vec4<u32>(~u_input.b.x, 1u ^ var_2.x, ~var_2.x, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1000f)), var_5.a.c.x)));
}

