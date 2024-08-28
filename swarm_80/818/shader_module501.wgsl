struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 1i), vec2<bool>(false, false), 608f);

var<private> global2: Struct_1 = Struct_1(vec3<i32>(0i, -15733i, 17809i), vec2<bool>(false, true), 1326f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<f32>) -> i32 {
    let var_0 = vec4<u32>(4294967295u, 0u, 0u, u_input.e);
    let var_1 = -(32884i | firstLeadingBit(firstTrailingBit(global2.a.x & 0i)));
    var var_2 = var_0.x;
    var var_3 = select(false, global2.b.x, any(!select(arg_0, !arg_0, select(arg_0, arg_0, vec4<bool>(true, global2.b.x, true, global1.b.x)))));
    global1 = Struct_1(_wgslsmith_sub_vec3_i32(select(abs(vec3<i32>(1i, 3843i, global1.a.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.x, arg_1.a.x), global2.a.zx), -2147483647i, -31316i << (var_0.x % 32u)), arg_0.wyx), vec3<i32>(global1.a.x, u_input.b.x, _wgslsmith_add_i32(-var_1, -74018i))), !select(select(vec2<bool>(arg_1.b.x, false), !global2.b, !global1.b), select(global2.b, select(global1.b, vec2<bool>(arg_0.x, arg_0.x), false), 4294967295u != var_0.x), vec2<bool>(arg_2.x, arg_1.b.x)), arg_1.c);
    return u_input.b.x;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global1 = Struct_1(vec3<i32>(func_3(select(vec4<bool>(false, global2.b.x, true, true), vec4<bool>(false, false, global1.b.x, global2.b.x), vec4<bool>(global2.b.x, true, false, global1.b.x)), Struct_1(global1.a, vec2<bool>(global2.b.x, false), global1.c), vec2<bool>(true, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-607f, global0.x))), 2147483647i, ~_wgslsmith_add_i32(global2.a.x, u_input.b.x)) << (vec3<u32>(u_input.e, ~91899u ^ u_input.c.x, firstLeadingBit(_wgslsmith_mult_u32(u_input.a, 0u))) % vec3<u32>(32u)), global1.b, global0.x);
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(select(_wgslsmith_sub_u32(u_input.a, 12245u), 97098u, any(vec4<bool>(global2.b.x, false, true, true)))), _wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(u_input.e, u_input.a)), ~countOneBits(_wgslsmith_mod_u32(u_input.e, u_input.e))), ~firstLeadingBit(~vec3<u32>(59388u, u_input.c.x, u_input.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(297f)), _wgslsmith_f_op_f32(trunc(global2.c))))))), _wgslsmith_f_op_vec2_f32(-global0.xx)));
    var var_2 = abs(firstTrailingBit(~firstTrailingBit(u_input.a)));
    return Struct_1(vec3<i32>(-258i, min(max(-22683i, -u_input.b.x), global1.a.x), u_input.b.x | (_wgslsmith_add_i32(u_input.b.x, 1i) ^ u_input.b.x)), select(vec2<bool>(any(vec4<bool>(global2.b.x, false, false, global1.b.x)), any(!vec4<bool>(global2.b.x, true, false, global1.b.x))), !vec2<bool>(global2.b.x, global1.b.x), !any(select(vec4<bool>(global2.b.x, false, true, false), vec4<bool>(global1.b.x, global2.b.x, global2.b.x, true), global2.b.x))), _wgslsmith_f_op_f32(-global1.c));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 943f, global0.x)), vec3<f32>(arg_3.c, -1000f, global0.x))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, -132f, 432f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1684f, global1.c, -683f)), vec3<bool>(true, false, true)))), vec3<f32>(global2.c, 2705f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1688f)))))));
    let var_0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1123f))), arg_3.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-948f, -1106f, true))))))));
    global1 = var_0;
    var var_1 = var_0;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global1.c, -692f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(351f, arg_0.c, arg_0.c)) + vec3<f32>(var_1.c, 545f, -1610f)) + vec3<f32>(_wgslsmith_f_op_f32(-128f + 434f), global2.c, _wgslsmith_f_op_f32(arg_3.c - var_0.c)))));
    return Struct_1(vec3<i32>(-(~arg_1.a.x), -min(_wgslsmith_add_i32(-2147483647i, u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, var_1.a.x, -13416i), vec4<i32>(arg_3.a.x, 1i, -19377i, global2.a.x))), firstTrailingBit(max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, 9417i, -1i, var_0.a.x), vec4<i32>(arg_1.a.x, arg_1.a.x, var_0.a.x, global1.a.x)), 2147483647i))), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.c, 880f, 378f)))).c)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(Struct_1(vec3<i32>(-(~1i), 1i, reverseBits(global2.a.x) & (u_input.b.x & global2.a.x)), !global1.b, _wgslsmith_div_f32(-206f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1911f))))), func_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(888f, global0.x)), _wgslsmith_f_op_f32(-global2.c), -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1001f, global0.x, global0.x))))), global2.b.x, Struct_1(vec3<i32>(1i, _wgslsmith_mult_i32(-28367i, -1i), u_input.b.x), vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global0.x)))) * _wgslsmith_f_op_f32(-2349f + _wgslsmith_f_op_f32(global0.x - global2.c)))));
    let var_1 = var_0.b;
    global1 = func_4(func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c, 602f, -1111f)), vec3<f32>(global0.x, global0.x, var_0.c)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.c, -1882f, 578f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-946f, var_0.c, 195f)), all(vec4<bool>(global2.b.x, var_0.b.x, var_0.b.x, false))))))), func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(699f, -880f, 438f))))), var_1.x, func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1419f, _wgslsmith_f_op_f32(select(global1.c, global2.c, global1.b.x)), global1.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-657f, global0.x, 968f)), vec3<f32>(-1516f, 576f, global0.x))))));
    return func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(3332f, global0.x, global1.c)))), _wgslsmith_div_vec3_f32(vec3<f32>(global1.c, global1.c, -1098f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2004f, var_0.c, global0.x) + vec3<f32>(441f, -228f, global2.c)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c, global1.c, -508f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global2 = Struct_1(vec3<i32>(1i, 1i, ~(~(~0i))), global1.b, func_2(vec3<f32>(global2.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 288f)).c);
    var var_1 = vec4<bool>(true, false || select(func_1().b.x, true, global2.b.x), true, true);
    global2 = func_4(Struct_1(global1.a, select(!(!var_1.xz), var_0.b, vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.c))) * global0.x)), Struct_1(~reverseBits(var_0.a), global1.b, func_4(Struct_1(global1.a, vec2<bool>(var_0.b.x, global1.b.x), _wgslsmith_f_op_f32(2259f - var_0.c)), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.a.x, 13784i, -2147483647i), vec3<i32>(u_input.b.x, global2.a.x, 38619i), vec3<i32>(var_0.a.x, -2147483647i, 15779i)), func_4(Struct_1(global2.a, vec2<bool>(true, global1.b.x), -1000f), Struct_1(vec3<i32>(63232i, -7097i, global2.a.x), var_0.b, -1513f), global1.b.x, Struct_1(global1.a, vec2<bool>(var_1.x, global2.b.x), var_0.c)).b, _wgslsmith_f_op_f32(round(-1299f))), _wgslsmith_f_op_f32(250f + 411f) != global1.c, func_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.c, global2.c, global2.c))))).c), !global2.b.x & func_4(Struct_1(vec3<i32>(-2147483647i, 7405i, var_0.a.x), vec2<bool>(global1.b.x, var_1.x), 1171f), Struct_1(vec3<i32>(-6840i, 0i, var_0.a.x) >> (vec3<u32>(u_input.a, 113878u, 15096u) % vec3<u32>(32u)), vec2<bool>(var_0.b.x, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1177f)), false, Struct_1(min(vec3<i32>(u_input.b.x, global1.a.x, 0i), vec3<i32>(u_input.b.x, var_0.a.x, -9459i)), select(vec2<bool>(true, true), vec2<bool>(true, false), global2.b), _wgslsmith_f_op_f32(-global1.c))).b.x, Struct_1(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -370f, global0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(440f, -1000f, var_0.c)))).a, !select(vec2<bool>(global1.b.x, false), select(var_1.xw, var_0.b, global2.b), global2.a.x < var_0.a.x), 1759f));
    let var_2 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 1u, 31084u, abs(1u)), u_input.c);
    var_0 = Struct_1(vec3<i32>(max(-_wgslsmith_sub_i32(0i, -2147483647i), -1i), 37538i, global2.a.x), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 479f, 545f)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c, -1945f, var_0.c)))))).b, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(global0.zz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global0.zx - vec2<f32>(global1.c, 943f)), _wgslsmith_f_op_vec2_f32(-global0.yy))))), 35868u);
}

