struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec3<f32> = vec3<f32>(2096f, -992f, -966f);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-501f, global1.x)))), -680f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-855f)) + _wgslsmith_f_op_f32(-169f - 859f)))))));
    global0 = Struct_3(global0.a, vec2<bool>(true, all(!(!vec2<bool>(global0.a.c.x, true)))), global0.c);
    var var_0 = !(!(!vec3<bool>(global0.c.c.x, true, true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(global0.c.b.yyx + _wgslsmith_div_vec3_f32(global0.a.b.xxx, _wgslsmith_f_op_vec3_f32(global0.c.b.wwy + _wgslsmith_f_op_vec3_f32(step(global0.c.b.wxz, global0.a.b.zwx)))));
    let var_2 = vec3<f32>(187f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-988f, var_1.x))))));
    return global0.a;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec3<i32>) -> vec3<f32> {
    global0 = arg_0;
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-global0.c.b), select(vec4<i32>(_wgslsmith_add_i32(arg_1.x, -18239i) & _wgslsmith_clamp_i32(arg_1.x, -19215i, 313i), max(arg_1.x, arg_2.x), ~2147483647i, select(~arg_2.x, u_input.a, any(vec4<bool>(global0.c.c.x, false, true, true)))), -arg_1, 2147483647i <= arg_1.x));
    let var_1 = arg_0.a.b.xz;
    let var_2 = Struct_3(arg_0.c, select(vec2<bool>(!(arg_0.b.x || arg_0.c.c.x), true), vec2<bool>(any(!vec3<bool>(false, true, arg_0.a.c.x)), any(arg_0.b)), !select(global0.c.c, !vec2<bool>(global0.b.x, true), any(vec3<bool>(global0.c.c.x, false, global0.a.c.x)))), Struct_2(func_2(~reverseBits(vec3<u32>(u_input.e, u_input.b, global0.c.a.a.x))).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(-503f, global0.c.b.x, global0.c.b.x, global0.c.b.x)) * _wgslsmith_f_op_vec4_f32(ceil(global0.c.b))) * arg_0.c.b), vec2<bool>(any(vec4<bool>(global0.a.c.x, false, global0.c.c.x, global0.b.x)), true)));
    let var_3 = Struct_3(global0.c, arg_0.b, var_2.c);
    return vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.b.x + _wgslsmith_f_op_f32(-361f * global0.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.x, -1922f)) - _wgslsmith_f_op_f32(f32(-1f) * -1101f))), _wgslsmith_f_op_f32(f32(-1f) * -677f))), _wgslsmith_f_op_f32(-2509f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1392f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(279f, global1.x)) * -373f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.b.x) + var_3.c.b.x)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = global0.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(func_3(Struct_3(func_2(~(~global0.a.a.a.yyz)), var_0.c, Struct_2(func_2(var_0.a.a.xxx).a, var_0.b, var_0.c)), arg_0, vec3<i32>(-1i, select(arg_0.x, arg_0.x, var_0.c.x), reverseBits(-1i))));
    global0 = Struct_3(Struct_2(global0.a.a, global0.c.b, !var_0.c), vec2<bool>(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(round(global0.c.b.x))) > _wgslsmith_f_op_f32(-global0.a.b.x), global0.a.c.x || true), global0.a);
    global0 = Struct_3(func_2(_wgslsmith_mult_vec3_u32(var_0.a.a.zzy, ~vec3<u32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x))), !(!func_2(global0.a.a.a.xyz).c), func_2(var_0.a.a.zyz));
    let var_2 = vec4<bool>(!select(global0.a.c.x, false, all(vec2<bool>(true, true))), (any(vec3<bool>(true, true, true)) || true) & !all(select(var_0.c, global0.c.c, global0.a.c.x)), any(vec2<bool>(any(vec4<bool>(true, false, true, global0.a.c.x)), true)) || all(select(!vec4<bool>(false, var_0.c.x, var_0.c.x, false), !vec4<bool>(true, global0.a.c.x, var_0.c.x, false), vec4<bool>(var_0.c.x, true, true, false))), any(func_2(~vec3<u32>(var_0.a.a.x, global0.a.a.a.x, u_input.c.x)).c) != (-2147483647i == _wgslsmith_mod_i32(1i, ~arg_0.x)));
    return func_2(select(firstTrailingBit(select(firstTrailingBit(var_0.a.a.xyw), var_0.a.a.ywx & var_0.a.a.yyz, func_2(vec3<u32>(4294967295u, global0.a.a.a.x, global0.a.a.a.x)).c.x)), global0.c.a.a.xyx, vec3<bool>(!any(vec4<bool>(true, true, var_0.c.x, false)), func_2(vec3<u32>(60941u, global0.a.a.a.x, u_input.b)).c.x | false, all(!vec2<bool>(global0.b.x, global0.a.c.x)))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_2) -> u32 {
    var var_0 = -549f;
    var_0 = -737f;
    var_0 = -110f;
    let var_1 = ~(~abs(u_input.d));
    var var_2 = 1u;
    return 1u << (arg_2.a.a.x % 32u);
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> Struct_3 {
    global1 = vec3<f32>(arg_1.b.x, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(global0.a.b.x + _wgslsmith_f_op_f32(f32(-1f) * -116f))), arg_2);
    let var_0 = -272f;
    var var_1 = Struct_3(arg_1, func_1(vec4<i32>(-1i) * -(vec4<i32>(41146i, u_input.a, u_input.a, u_input.a) & vec4<i32>(u_input.a, u_input.a, 30759i, 0i))).c, func_1(vec4<i32>(u_input.a, ~u_input.a << (~u_input.e % 32u), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-10426i, -1i, u_input.a), vec3<bool>(false, false, false)), vec3<i32>(2147483647i, 27643i, -26764i)), _wgslsmith_mod_i32(u_input.a, u_input.a))));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(func_1(vec4<i32>(-28589i, u_input.a, -8269i, u_input.a)), vec2<bool>(global0.a.c.x, arg_1.c.x), global0.c), firstTrailingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 15006i), vec2<i32>(u_input.a, -27527i)), firstLeadingBit(-1163i), -19213i >> (1u % 32u)))).x, _wgslsmith_f_op_f32(sign(-2092f)), -2371f));
    let var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(-u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(27906i, 17771i, 0i) & vec3<i32>(u_input.a, -20656i, -1i), vec3<i32>(11887i, u_input.a, u_input.a)), 1i) >> (vec3<u32>(arg_0, 40247u, abs(global0.c.a.a.x)) % vec3<u32>(32u)), vec3<i32>(-1i) * -reverseBits(vec3<i32>(16640i, u_input.a, 3297i)));
    return Struct_3(global0.c, func_1(firstTrailingBit(vec4<i32>(var_2.x, u_input.a, select(0i, u_input.a, true), -13632i))).c, Struct_2(func_1(vec4<i32>(i32(-1i) * -1i, 1i, var_2.x, select(u_input.a, 1i, true))).a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.b.x, global1.x, -195f, arg_1.b.x))), vec4<f32>(-2255f, _wgslsmith_f_op_f32(round(-1380f)), _wgslsmith_div_f32(arg_1.b.x, 1436f), -1000f), !select(vec4<bool>(arg_1.c.x, false, global0.a.c.x, arg_1.c.x), vec4<bool>(global0.c.c.x, true, global0.b.x, false), vec4<bool>(arg_1.c.x, true, var_1.a.c.x, false)))), select(!arg_1.c, arg_1.c, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(Struct_2(Struct_1(firstTrailingBit(min(vec4<u32>(global0.c.a.a.x, 27611u, 19414u, 0u), global0.a.a.a))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(757f, 814f, global0.c.c.x)), global1.x), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.b.x))), vec2<bool>(max(4616i, u_input.a) > u_input.a, global0.c.c.x)), vec2<bool>(!(!(global0.a.c.x || global0.b.x)), !global0.a.c.x), global0.c);
    let var_0 = func_5(func_4(Struct_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(589f, global0.c.b.x, global1.x, global0.a.b.x)))), ~(~vec4<i32>(12901i, u_input.a, 33696i, -2147483647i))), _wgslsmith_f_op_vec2_f32(-global0.a.b.zw), func_1(~(-vec4<i32>(-56525i, u_input.a, u_input.a, u_input.a)))), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.b.x)) - _wgslsmith_f_op_f32(f32(-1f) * -744f)) - global1.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(469f, -608f, -710f)))) * _wgslsmith_f_op_vec3_f32(global0.a.b.yyy - global0.a.b.zxx)))));
    global0 = var_0;
    let var_2 = ~vec4<i32>(3894i, -_wgslsmith_add_i32(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-8264i, u_input.a), vec2<i32>(-27879i, 16611i))), _wgslsmith_clamp_i32(abs(-20553i), ~6659i, ~14266i) >> (func_4(Struct_4(vec4<f32>(919f, var_0.a.b.x, 763f, global0.a.b.x), vec4<i32>(1i, u_input.a, u_input.a, u_input.a)), _wgslsmith_div_vec2_f32(vec2<f32>(global0.a.b.x, var_1.x), var_1.xz), Struct_2(global0.c.a, var_0.a.b, vec2<bool>(false, false))) % 32u), i32(-1i) * -3328i);
    let var_3 = var_2;
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, i32(-1i) * -firstLeadingBit(-u_input.a));
}

