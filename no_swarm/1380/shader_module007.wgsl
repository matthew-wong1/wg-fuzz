struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: bool,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = ~countOneBits(~abs(firstTrailingBit(vec4<u32>(global0.b.x, arg_0.e.x, 25843u, 9503u))));
    global0 = arg_0;
    let var_1 = 0u;
    global0 = arg_0;
    var var_2 = arg_0;
    return arg_0.a.ww;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>) -> vec2<u32> {
    var var_0 = arg_1.x;
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -377f))), -604f, -681f, _wgslsmith_f_op_f32(step(-1056f, 1f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(845f)), -147f, _wgslsmith_f_op_f32(max(-897f, 892f)), _wgslsmith_f_op_f32(836f * 1000f)) + vec4<f32>(1161f, _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(1000f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1276f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-400f, -956f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1104f * -310f), _wgslsmith_f_op_f32(324f - 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -269f)))), _wgslsmith_f_op_f32(f32(-1f) * -779f)), global0.a.x));
    var var_3 = -16380i == _wgslsmith_sub_i32(abs(-(arg_0.x ^ global0.d.x)), 2147483647i);
    let var_4 = Struct_1(_wgslsmith_add_vec3_u32((global0.b >> (~vec3<u32>(global0.b.x, 0u, global0.e.x) % vec3<u32>(32u))) << (~global0.b % vec3<u32>(32u)), vec3<u32>(global0.b.x, 46400u, select(select(3892u, global0.b.x, global0.a.x), 4294967295u, global0.a.x))), true, _wgslsmith_f_op_f32(var_2.x + 1000f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2002f, var_2.x, var_2.x, 730f) + vec4<f32>(var_2.x, -1000f, var_2.x, var_2.x)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1720f, var_2.x, -583f, var_2.x) - vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))))))), var_2.zw);
    return ~vec2<u32>(global0.b.x, _wgslsmith_clamp_u32(6290u, 19279u, _wgslsmith_mult_u32(_wgslsmith_add_u32(global0.b.x, global0.e.x), select(global0.b.x, 50169u, var_4.b))));
}

fn func_2(arg_0: u32) -> vec2<u32> {
    let var_0 = Struct_2(select(global0.a, select(!vec4<bool>(true, false, false, global0.a.x), global0.a, select(global0.a, select(vec4<bool>(global0.c, false, global0.c, global0.c), global0.a, global0.a.x), !vec4<bool>(global0.c, global0.c, false, false))), global0.a.x), vec3<u32>(~(arg_0 << (1u % 32u)), ~(global0.b.x & 0u), min(1u, ~(~global0.e.x))), global0.c, global0.d, _wgslsmith_mult_vec2_u32(vec2<u32>(~1u, firstTrailingBit(global0.e.x)) & vec2<u32>(39885u, _wgslsmith_add_u32(arg_0, arg_0)), ~func_4(-vec4<i32>(global0.d.x, global0.d.x, 2147483647i, u_input.b), func_3(Struct_2(global0.a, vec3<u32>(0u, global0.e.x, 4294967295u), false, global0.d, vec2<u32>(62623u, arg_0)), -206f, arg_0, vec2<f32>(-309f, 395f)))));
    global0 = var_0;
    let var_1 = var_0;
    global0 = Struct_2(global0.a, _wgslsmith_mult_vec3_u32(~(~vec3<u32>(1u, 36925u, 4294967295u)), _wgslsmith_add_vec3_u32(~(~vec3<u32>(arg_0, var_0.e.x, 0u)), ~(var_0.b & vec3<u32>(var_0.e.x, var_1.e.x, 4294967295u)))), !(!var_1.c), vec3<i32>(var_0.d.x, 27125i, 1i), var_1.b.xy);
    var var_2 = var_1;
    return firstLeadingBit(global0.e);
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = -(~(~7026i));
    var_0 = 0i;
    let var_1 = arg_0;
    var var_2 = 771f;
    global0 = arg_2;
    return Struct_1(global0.b, arg_1 == 1063f, 601f, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1120f, arg_1)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(595f, -1000f) + -106f)), arg_1, -684f, _wgslsmith_f_op_f32(598f * arg_1)), vec2<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + _wgslsmith_div_f32(-1000f, -147f)))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = func_5(Struct_2(vec4<bool>(global0.c, global0.a.x, global0.c, true), abs(~(~global0.b)), global0.c, global0.d, func_2(global0.b.x) ^ ((vec2<u32>(27044u, 0u) & vec2<u32>(11491u, arg_0.x)) ^ firstLeadingBit(arg_0.yw))), _wgslsmith_f_op_f32(step(513f, _wgslsmith_f_op_f32(-1f))), Struct_2(vec4<bool>(global0.c, all(select(global0.a.zww, global0.a.wyw, global0.a.yxw)), _wgslsmith_div_f32(-1000f, 623f) == _wgslsmith_f_op_f32(floor(-813f)), global0.a.x), ~(~min(arg_0.zxz, vec3<u32>(global0.b.x, global0.e.x, 1u))), func_3(Struct_2(!vec4<bool>(global0.a.x, true, false, false), firstLeadingBit(vec3<u32>(global0.b.x, 8701u, 1u)), !global0.c, -global0.d, countOneBits(global0.e)), _wgslsmith_f_op_f32(-200f + _wgslsmith_f_op_f32(min(1131f, 361f))), 1u, _wgslsmith_div_vec2_f32(vec2<f32>(713f, 173f), vec2<f32>(481f, -614f))).x, _wgslsmith_add_vec3_i32(vec3<i32>(1786i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global0.d.x, 1i), vec3<i32>(u_input.b, u_input.e, 40966i)), -2147483647i), vec3<i32>(u_input.e, min(73221i, -44024i), -1i)), func_4(min(~vec4<i32>(26535i, 16696i, -1i, 7239i), select(vec4<i32>(global0.d.x, 17398i, global0.d.x, global0.d.x), vec4<i32>(global0.d.x, -11688i, u_input.c, global0.d.x), vec4<bool>(false, global0.c, true, false))), vec2<bool>(global0.a.x, global0.a.x && global0.a.x))));
    var var_1 = countOneBits(~global0.b.x & _wgslsmith_clamp_u32(_wgslsmith_mod_u32(14628u, arg_0.x), _wgslsmith_add_u32(~arg_0.x, _wgslsmith_mult_u32(4565u, 0u)), var_0.a.x));
    var var_2 = _wgslsmith_clamp_vec2_u32(func_2(27788u), select(vec2<u32>(~4294967295u, ~abs(4294967295u)), ~(vec2<u32>(4294967295u, var_0.a.x) & var_0.a.zz), true), select(func_2(~12847u), ~reverseBits(vec2<u32>(20226u, 0u)), !func_5(Struct_2(global0.a, vec3<u32>(23217u, 4294967295u, 22699u), var_0.b, global0.d, vec2<u32>(7245u, arg_0.x)), var_0.c, Struct_2(global0.a, var_0.a, var_0.b, global0.d, global0.e)).b) ^ ~(~vec2<u32>(var_0.a.x, 95925u)));
    var var_3 = arg_0;
    let var_4 = 1f;
    return Struct_1(max(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.a.x, var_3.x), ~35137u), ~1u, arg_0.x << (var_2.x % 32u)), abs(~(~global0.b))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4))), var_0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.e, var_0.e)) * _wgslsmith_f_op_vec2_f32(max(var_0.e, vec2<f32>(var_0.e.x, var_0.d.x)))))));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: i32) -> i32 {
    global0 = Struct_2(select(!vec4<bool>(false, all(global0.a.wyy), true, false), select(!select(vec4<bool>(false, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(global0.a.x, arg_0.b, true, global0.a.x), global0.a), vec4<bool>(arg_0.b, true, true, any(vec2<bool>(false, global0.c))), global0.a), vec4<bool>(true, true, global0.a.x, ~0u == _wgslsmith_sub_u32(0u, arg_1))), vec3<u32>(0u & arg_1, arg_0.a.x, func_2(25095u).x), true, firstTrailingBit(-vec3<i32>(19159i, arg_2, u_input.b) >> (arg_0.a % vec3<u32>(32u))), _wgslsmith_add_vec2_u32(~global0.b.xz, arg_0.a.xx));
    var var_0 = 1i;
    let var_1 = _wgslsmith_f_op_f32(ceil(arg_0.c));
    var var_2 = 45420i | arg_2;
    var var_3 = true;
    return 0i;
}

fn func_7(arg_0: f32, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_1(max(~_wgslsmith_mult_vec3_u32(min(vec3<u32>(4294967295u, 42918u, 0u), vec3<u32>(global0.b.x, 1u, 41828u)), global0.b), abs(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, global0.b.x), vec3<u32>(0u, global0.b.x, 27759u)))), global0.a.x, func_5(Struct_2(!(!global0.a), vec3<u32>(_wgslsmith_mult_u32(global0.e.x, global0.b.x), ~global0.b.x, 79684u), func_5(Struct_2(vec4<bool>(true, true, false, global0.c), vec3<u32>(global0.e.x, global0.e.x, 42777u), true, global0.d, global0.e), _wgslsmith_f_op_f32(-arg_0), Struct_2(global0.a, global0.b, true, global0.d, global0.e)).b, -_wgslsmith_sub_vec3_i32(global0.d, vec3<i32>(global0.d.x, 7968i, global0.d.x)), ~firstTrailingBit(global0.e)), arg_0, Struct_2(select(global0.a, global0.a, arg_0 > arg_0), _wgslsmith_mult_vec3_u32(global0.b ^ global0.b, vec3<u32>(19449u, global0.b.x, 0u)), func_1(vec4<u32>(42205u, global0.e.x, 4294967295u, 0u)).b, ~global0.d ^ ~global0.d, func_1(~vec4<u32>(3973u, global0.e.x, 0u, 4294967295u)).a.xy)).d.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1150f, arg_0, arg_0, arg_0)))), func_5(Struct_2(global0.a, global0.b, true, vec3<i32>(global0.d.x, -1i, 20072i), vec2<u32>(global0.e.x, global0.b.x)), arg_0, Struct_2(vec4<bool>(false, true, global0.c, false), vec3<u32>(0u, 62685u, global0.b.x), global0.c, global0.d, global0.b.yy)).d))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(arg_0 - arg_0)), _wgslsmith_f_op_f32(exp2(func_5(Struct_2(vec4<bool>(true, global0.a.x, global0.c, true), global0.b, global0.a.x, vec3<i32>(-1i, global0.d.x, u_input.c), global0.b.xy), -1398f, Struct_2(global0.a, global0.b, global0.c, global0.d, global0.b.zz)).e.x))) - vec2<f32>(_wgslsmith_f_op_f32(max(-1481f, 1308f)), func_5(Struct_2(global0.a, global0.b, true, global0.d, global0.e), arg_0, Struct_2(vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x), vec3<u32>(global0.e.x, global0.e.x, 68990u), global0.c, global0.d, vec2<u32>(global0.b.x, global0.b.x))).c)));
    global0 = Struct_2(select(global0.a, vec4<bool>(global0.c, !select(false, true, var_0.b), false, false), !(!(!vec4<bool>(global0.a.x, global0.c, false, false)))), vec3<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 1u, 0u, global0.b.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.a.x, global0.b.x, global0.e.x), countOneBits(vec4<u32>(1u, var_0.a.x, 1u, 0u)))), ~1u, 1u), true, global0.d, ((~vec2<u32>(4294967295u, var_0.a.x) >> (_wgslsmith_add_vec2_u32(vec2<u32>(0u, var_0.a.x), var_0.a.xx) % vec2<u32>(32u))) & var_0.a.xx) & abs(func_2(reverseBits(global0.b.x))));
    global0 = Struct_2(vec4<bool>(false, !((var_0.a.x < global0.b.x) == var_0.b), true, global0.c), func_5(Struct_2(select(global0.a, vec4<bool>(var_0.b, global0.a.x, false, false), true), var_0.a, select(true, false, true), vec3<i32>(1i | global0.d.x, u_input.a >> (global0.e.x % 32u), countOneBits(arg_1)), vec2<u32>(_wgslsmith_sub_u32(4294967295u, global0.e.x), ~0u)), _wgslsmith_f_op_f32(-2567f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-396f * var_0.d.x))), Struct_2(select(select(vec4<bool>(var_0.b, true, true, false), vec4<bool>(true, true, var_0.b, false), vec4<bool>(false, var_0.b, global0.a.x, global0.c)), vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), select(vec4<bool>(false, global0.c, true, var_0.b), global0.a, true)), max(~var_0.a, firstLeadingBit(global0.b)), func_5(Struct_2(global0.a, vec3<u32>(var_0.a.x, var_0.a.x, 1u), global0.a.x, global0.d, global0.e), var_0.d.x, Struct_2(vec4<bool>(true, true, var_0.b, true), global0.b, global0.a.x, global0.d, var_0.a.yx)).b || false, vec3<i32>(-39796i, countOneBits(23578i), 43833i), firstLeadingBit(_wgslsmith_clamp_vec2_u32(var_0.a.xy, global0.b.zy, var_0.a.yy)))).a, var_0.a.x >= ~global0.e.x, vec3<i32>(-max(5931i, global0.d.x), -global0.d.x, 14147i) & vec3<i32>(_wgslsmith_dot_vec3_i32(global0.d, countOneBits(global0.d)), -reverseBits(u_input.c), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-30159i, 2147483647i, u_input.a, u_input.c), vec4<i32>(arg_1, arg_1, -1i, arg_1))), vec2<u32>(~1u, ~_wgslsmith_sub_u32(firstLeadingBit(global0.e.x), firstTrailingBit(0u))));
    var var_1 = var_0;
    global0 = Struct_2(select(select(select(!global0.a, select(global0.a, global0.a, true), global0.a), vec4<bool>(true, true, true, true), !global0.c), select(!(!vec4<bool>(false, var_1.b, var_1.b, true)), !vec4<bool>(true, true, var_1.b, true), select(vec4<bool>(global0.a.x, var_0.b, true, true), !global0.a, global0.a)), select(select(global0.a, vec4<bool>(global0.c, var_1.b, global0.a.x, var_0.b), !var_1.b), vec4<bool>(var_0.b || var_0.b, false || var_1.b, false, false), var_0.b)), vec3<u32>(var_1.a.x, max(~var_1.a.x, 1u), var_1.a.x), var_1.b, global0.d, ~(~func_5(Struct_2(global0.a, vec3<u32>(58056u, global0.e.x, 1u), true, global0.d, var_1.a.xy), _wgslsmith_div_f32(431f, 632f), Struct_2(global0.a, vec3<u32>(1u, var_1.a.x, var_0.a.x), false, vec3<i32>(-46084i, arg_1, global0.d.x), vec2<u32>(global0.e.x, 4294967295u))).a.zz));
    return Struct_2(vec4<bool>(!(!global0.a.x), ((var_1.b & true) | global0.a.x) != true, !(!(!var_1.b)), var_1.b), ~vec3<u32>(~var_0.a.x, 0u, 3076u & _wgslsmith_dot_vec3_u32(vec3<u32>(3209u, 21043u, var_1.a.x), vec3<u32>(var_0.a.x, 1u, var_0.a.x))), var_0.b, _wgslsmith_clamp_vec3_i32(global0.d, countOneBits(vec3<i32>(-2147483647i, u_input.c, _wgslsmith_dot_vec2_i32(global0.d.xy, global0.d.zx))), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global0.d.x, global0.d.x), select(vec3<i32>(u_input.b, global0.d.x, arg_1), vec3<i32>(global0.d.x, -2147483647i, 40089i), var_1.b) & abs(vec3<i32>(global0.d.x, global0.d.x, -11754i)))), _wgslsmith_mod_vec2_u32(vec2<u32>(118230u, 20259u), ~_wgslsmith_div_vec2_u32(firstTrailingBit(var_0.a.yy), var_1.a.xx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(399f)))), func_6(func_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, global0.e.x, global0.b.x), vec4<u32>(15190u, global0.e.x, global0.b.x, 6249u))), global0.b.x, _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(19666i, 12457i), ~global0.d.zz)), ~(~u_input.a)));
    let var_1 = ~(1i << (_wgslsmith_clamp_u32(~(~global0.b.x), var_0.e.x, global0.b.x) % 32u));
    var var_2 = firstLeadingBit(firstTrailingBit(_wgslsmith_div_vec4_i32(~max(vec4<i32>(5258i, u_input.d, -21983i, -6707i), vec4<i32>(2147483647i, var_0.d.x, 1i, 38691i)), ~reverseBits(vec4<i32>(2147483647i, 13377i, -15277i, 1i)))));
    var_2 = ~(vec4<i32>(-1i) * -vec4<i32>(31257i, -10628i, -4930i, global0.d.x));
    var_2 = -vec4<i32>(772i, -16570i, 2147483647i, 5712i);
    var_2 = -(max(vec4<i32>(var_0.d.x, i32(-1i) * -10029i, var_0.d.x, func_7(-1000f, -2147483647i).d.x), firstTrailingBit(vec4<i32>(-19682i, 41200i, -6168i, var_2.x) ^ vec4<i32>(10634i, -48938i, var_1, 0i))) & _wgslsmith_mod_vec4_i32(vec4<i32>(2192i, ~var_0.d.x, var_0.d.x, -1i), vec4<i32>(-1i) * -vec4<i32>(41753i, -56011i, u_input.b, 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(i32(-1i) * -54339i), -18963i, var_2.x << (~17773u % 32u)));
}

