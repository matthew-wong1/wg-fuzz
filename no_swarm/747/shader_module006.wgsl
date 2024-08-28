struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, 1i, -1252i, 80712i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_i32(global0.zxx, ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-6560i, u_input.a.x, u_input.a.x), vec3<i32>(0i, u_input.a.x, u_input.a.x)), -2147483647i, abs(u_input.a.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-640f, -597f, -762f, 1000f) - vec4<f32>(-705f, -856f, 303f, -1159f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1429f, 555f, -575f, 2123f), vec4<f32>(989f, 783f, -1000f, 1586f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(155f, 987f, 1000f, 417f)))))), _wgslsmith_div_f32(1111f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1130f) + -145f))), vec2<u32>(abs(u_input.b), max(abs(4294967295u), ~u_input.c.x)));
    var var_1 = vec4<i32>(-1i) * -(~vec4<i32>(0i << (arg_0 % 32u), var_0.a, _wgslsmith_add_i32(u_input.a.x, u_input.a.x), -16241i));
    var_1 = vec4<i32>(-1i) * -u_input.a;
    var_1 = u_input.a;
    var_0 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_1.zy, vec2<i32>(firstTrailingBit(var_0.a), -2147483647i)), -23335i), _wgslsmith_f_op_vec4_f32(var_0.b * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_0.b - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1815f, var_0.c, 642f, -950f))))))), var_0.c, vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0, 1u, 1u) << (vec4<u32>(u_input.c.x, arg_0, var_0.d.x, 4294967295u) % vec4<u32>(32u)), min(vec4<u32>(arg_0, 4294967295u, arg_0, u_input.c.x), vec4<u32>(56706u, 0u, var_0.d.x, u_input.d.x))), reverseBits(min(arg_0, 4294967295u)), var_0.d.x), u_input.b));
    return _wgslsmith_f_op_f32(select(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-984f)), var_0.c))), false));
}

fn func_2() -> bool {
    let var_0 = Struct_1(2147483647i, vec4<f32>(104f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-767f * 686f)))), _wgslsmith_f_op_f32(-2205f + _wgslsmith_f_op_f32(func_3(reverseBits(1u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-248f, 1874f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(644f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1208f)))), ~vec2<u32>(29507u, 0u));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_3(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 0u), u_input.c.yz)))), -134f, var_0.b.x, -485f);
    global0 = -u_input.a;
    var var_2 = select(!(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true), false)), select(vec4<bool>(true, false, true, false), !vec4<bool>(select(true, false, false), u_input.c.x < u_input.d.x, true, true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false)), true);
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x)));
    return select(!any(var_2.wxy), !(firstTrailingBit(1u) != 37726u), var_2.x);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    var var_0 = vec2<bool>(arg_0.x, true | !(any(vec2<bool>(arg_3.x, false)) & func_2()));
    var var_1 = arg_1;
    var var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.xy, vec2<u32>(var_1.d.x | arg_2.d.x, arg_1.d.x)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(83824u, 38577u), vec2<u32>(arg_2.d.x, arg_1.d.x)), firstTrailingBit(arg_1.d.x), 0u, 0u), ~(~vec4<u32>(u_input.c.x, u_input.b, 1u, 32427u))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d.x, 76521u, arg_2.d.x) >> (vec3<u32>(var_1.d.x, u_input.d.x, 0u) % vec3<u32>(32u)), vec3<u32>(u_input.c.x, u_input.c.x, arg_1.d.x) | vec3<u32>(1u, 4294967295u, 135685u)), arg_1.d.x & _wgslsmith_sub_u32(4294967295u, 1u), 29182u), 9256u), ~0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(~u_input.b, 22857u, ~arg_1.d.x), _wgslsmith_sub_vec3_u32(~u_input.c ^ vec3<u32>(4294967295u, arg_2.d.x, 39596u), firstTrailingBit(vec3<u32>(4294967295u, arg_2.d.x, arg_2.d.x)))));
    var var_3 = u_input.a;
    var var_4 = func_2();
    return 1f;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool) -> i32 {
    var var_0 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 1000f, -560f, arg_0.c)) * vec4<f32>(1f, 1f, 1f, 1f)) + arg_0.b) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, arg_0.c, arg_0.b.x, arg_0.b.x))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b.x, 524f, arg_0.b.x, arg_0.c))))), arg_0.c, vec2<u32>(~arg_1.x & arg_0.d.x, max(39936u, _wgslsmith_mod_u32(countOneBits(25389u), 1u))));
    var_0 = arg_0;
    var var_1 = vec2<u32>(~arg_0.d.x, var_0.d.x);
    let var_2 = Struct_2(arg_0, var_0.a, Struct_1(min(countOneBits(_wgslsmith_add_i32(u_input.a.x, -2147483647i)), max(-1i, 0i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, arg_0.b.x, 1380f, arg_0.b.x)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, -248f, -449f, -984f) + vec4<f32>(-724f, 238f, 1039f, -1000f)), var_0.b, vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(~0u)), 1620f)), arg_0.d), Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_0.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, 145f) * arg_0.b)))), _wgslsmith_f_op_f32(trunc(arg_0.b.x)), vec2<u32>(25098u, arg_1.x & arg_0.d.x) & (max(var_0.d, vec2<u32>(20831u, 30153u)) & vec2<u32>(20950u, arg_0.d.x))));
    let var_3 = var_2;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -max(global0.x, func_4(Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(412f, 630f, 407f, 483f)), _wgslsmith_f_op_f32(func_1(vec3<bool>(false, false, true), Struct_1(0i, vec4<f32>(-1000f, 991f, 197f, -579f), -601f, u_input.d.yx), Struct_1(56502i, vec4<f32>(-369f, -1031f, -532f, -653f), -277f, u_input.d.xy), vec2<bool>(true, false))), u_input.c.yy), _wgslsmith_sub_vec4_u32(vec4<u32>(4796u, 4294967295u, 34000u, u_input.d.x), vec4<u32>(4294967295u, 0u, 62552u, 27605u)), true));
    var var_1 = Struct_1(reverseBits(u_input.a.x | -49761i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1528f, -156f, -1312f, 1014f), vec4<f32>(-964f, 933f, 250f, 260f))), vec4<f32>(_wgslsmith_f_op_f32(-813f * -1759f), _wgslsmith_div_f32(-675f, -2264f), _wgslsmith_f_op_f32(-360f + 453f), _wgslsmith_f_op_f32(func_3(1u))), true)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1244f, 978f, -583f, -154f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-645f, 1128f, 701f, -1219f)))))), 138f, u_input.c.xx);
    global0 = u_input.a;
    global0 = _wgslsmith_mult_vec4_i32(max(firstTrailingBit(_wgslsmith_clamp_vec4_i32(abs(u_input.a), vec4<i32>(global0.x, 1i, 1i, -1i), u_input.a << (vec4<u32>(1u, u_input.b, u_input.b, 41704u) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(global0.x, -858i, -11967i, global0.x)), ~vec4<i32>(u_input.a.x, -50698i, 1i, 1i) | _wgslsmith_add_vec4_i32(u_input.a, u_input.a))), vec4<i32>(-_wgslsmith_div_i32(0i << (var_1.d.x % 32u), var_1.a), -43858i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, global0.x) ^ var_1.a, -global0.x), _wgslsmith_dot_vec4_i32(-(~u_input.a), -_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 0i, 0i, u_input.a.x)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b.x + var_1.c))))));
    global0 = vec4<i32>(i32(-1i) * -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global0.wy, global0.zy), _wgslsmith_dot_vec3_i32(vec3<i32>(-52718i, -35217i, -42328i), global0.zyz)), select(-u_input.a.x, -17369i, -var_1.a == _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, var_1.a), vec2<i32>(2147483647i, -2147483647i))), var_1.a, 21906i);
    var_0 = _wgslsmith_div_i32(global0.x, min(i32(-1i) * -u_input.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, global0.x, var_1.a), u_input.a.yzz), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, global0.x, u_input.a.x), _wgslsmith_div_vec3_i32(global0.yyw, vec3<i32>(1i, -38277i, -1i))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, 433f));
}

