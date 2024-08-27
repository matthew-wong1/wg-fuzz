struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(3735u, 27693u, 966u, 43101u, 61245u, 43168u, 19995u, 4294967295u, 1922u, 0u, 1u, 71960u, 0u, 57106u);

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec2<u32>(0u, 8794u), Struct_1(vec2<u32>(4294967295u, 20644u), 2147483647i, -1000f, 29054u, 101383u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: i32) -> vec4<u32> {
    var var_0 = u_input.a.zwz;
    let var_1 = !vec3<bool>(select(arg_0, false, arg_1.c.x > arg_1.d.c), 4294967295u > arg_1.d.d, any(!(!vec2<bool>(arg_1.b, arg_0))));
    var var_2 = arg_1.c.x;
    var_0 = ~(~select(vec3<i32>(-5294i, firstLeadingBit(2147483647i), _wgslsmith_add_i32(arg_2, arg_2)), _wgslsmith_mod_vec3_i32(u_input.a.zwx, u_input.a.yzy), var_1));
    return select(vec4<u32>(~u_input.d.x, _wgslsmith_sub_u32(1u, 1u), arg_1.a.b.a.x, firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.b.e, 12235u), arg_1.d.a))), abs(vec4<u32>(~arg_1.d.d, 17618u ^ global0[_wgslsmith_index_u32(arg_1.d.e, 14u)], max(arg_1.d.e, 1u), u_input.d.x)) & vec4<u32>(~(~23110u), 1u, 16462u, 17915u), true);
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: vec2<i32>, arg_3: vec4<i32>) -> Struct_1 {
    global0 = array<u32, 14>();
    let var_0 = Struct_4(global1[_wgslsmith_index_u32(u_input.d.x, 1u)], ~(~u_input.c) & u_input.d.x, u_input.a.zyz);
    global0 = array<u32, 14>();
    var var_1 = (func_3(true, Struct_3(Struct_2(u_input.d.yz, Struct_1(vec2<u32>(global0[_wgslsmith_index_u32(21556u, 14u)], u_input.e), 0i, var_0.a.b.c, global0[_wgslsmith_index_u32(u_input.e, 14u)], 8567u)), true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.b.c, arg_1), vec2<f32>(-731f, arg_1), vec2<bool>(true, false))), var_0.a.b), -17542i) << (vec4<u32>(u_input.d.x, 35375u, 69753u, ~(~48191u)) % vec4<u32>(32u))) | ~(~(~vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(1u, 14u)], 4294967295u, 45442u)));
    global1 = array<Struct_2, 1>();
    return var_0.a.b;
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = _wgslsmith_mod_vec3_i32(~abs(~countOneBits(u_input.a.yzy)), select(firstLeadingBit(countOneBits(vec3<i32>(arg_1.a.b.b, 1i, 47459i)) | u_input.a.xyz), u_input.a.zxw, !vec3<bool>(!arg_1.b, arg_0 > -449f, true)));
    var var_1 = vec4<i32>(_wgslsmith_div_i32(~322i, var_0.x), abs(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.b.c, -892f, 1000f))), -1012f, -firstTrailingBit(u_input.a.zw), vec4<i32>(-2147483647i >> (1u % 32u), -var_0.x, u_input.a.x, u_input.a.x)).b), arg_1.a.b.b, 0i);
    global1 = array<Struct_2, 1>();
    let var_2 = u_input.d;
    var_1 = _wgslsmith_sub_vec4_i32(~abs(abs(vec4<i32>(18437i, 42952i, arg_1.d.b, -77928i))) >> (vec4<u32>(~(~42229u), ~(~1u), 0u, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(countOneBits(~min(vec4<i32>(arg_1.a.b.b, arg_1.d.b, -22759i, -2147483647i), u_input.a)), vec4<i32>(abs(1i), ~(-100303i), _wgslsmith_mod_i32(min(-58466i, var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-47047i, 4108i, 2147483647i, var_1.x), vec4<i32>(17386i, arg_1.d.b, -30721i, 50609i))), ~_wgslsmith_div_i32(var_1.x, arg_1.d.b))));
    return vec4<bool>(false, false, true, false);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: i32) -> Struct_3 {
    let var_0 = arg_0.x;
    let var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-5680i, _wgslsmith_sub_i32(54960i, ~arg_2), ~countOneBits(1i)), vec3<i32>(u_input.a.x, -35486i, _wgslsmith_div_i32(~arg_2, arg_2))), arg_2, -9444i ^ u_input.a.x);
    global1 = array<Struct_2, 1>();
    var var_2 = _wgslsmith_f_op_f32(-216f - 992f);
    global1 = array<Struct_2, 1>();
    return Struct_3(Struct_2(_wgslsmith_div_vec2_u32(~select(arg_0, arg_0, vec2<bool>(true, arg_1.x)), vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 14u)], 0u) >> (arg_0 % vec2<u32>(32u))), func_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(345f, 717f, 2005f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(710f, 946f, 547f)))), 382f, vec2<i32>(-u_input.a.x, -1i), _wgslsmith_mult_vec4_i32(u_input.a & vec4<i32>(var_1.x, var_1.x, 2147483647i, -2147483647i), u_input.a))), true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-406f + -360f), _wgslsmith_f_op_f32(abs(431f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(296f, 1263f), _wgslsmith_div_vec2_f32(vec2<f32>(2313f, 627f), vec2<f32>(195f, -931f)))), vec2<bool>(arg_1.x && arg_1.x, arg_1.x))), vec2<f32>(_wgslsmith_div_f32(912f, _wgslsmith_f_op_f32(sign(166f))), 842f)), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(770f, -196f, -806f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(469f, 782f, 1253f)))) - vec3<f32>(318f, 1037f, _wgslsmith_f_op_f32(round(186f)))), 1f, vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_2, arg_2), -u_input.a.x), select(1i, u_input.a.x | 2147483647i, any(vec2<bool>(true, true)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, arg_2, 15743i, u_input.a.x) | u_input.a, vec4<i32>(-1i, var_1.x, 6762i, 8989i) << (vec4<u32>(1u, u_input.d.x, 37776u, global0[_wgslsmith_index_u32(24031u, 14u)]) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 28615i, 1i, u_input.a.x), u_input.a)), vec4<i32>(_wgslsmith_add_i32(-12226i, 17617i), ~arg_2, var_1.x, 1i), firstLeadingBit(min(u_input.a, u_input.a)))));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = func_5(vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(1u, 14u)]), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b.c - -326f) + _wgslsmith_div_f32(750f, -1158f))), Struct_3(Struct_2(vec2<u32>(42748u, global0[_wgslsmith_index_u32(18341u, 14u)]) >> (vec2<u32>(1u, arg_0.a.b.a.x) % vec2<u32>(32u)), func_2(vec3<f32>(-634f, arg_0.a.b.c, -742f), arg_0.c.x, u_input.a.zx, u_input.a)), ~19599u >= (arg_0.d.a.x | 23576u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, arg_0.d.c) * vec2<f32>(111f, -708f)), _wgslsmith_f_op_vec2_f32(arg_0.c - vec2<f32>(-589f, -1612f)), arg_0.b)), Struct_1(arg_0.a.a, -45581i, -155f, _wgslsmith_mod_u32(36441u, 72125u), ~73006u))), arg_0.a.b.b);
    global0 = array<u32, 14>();
    var var_1 = ~global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(~8714u, ~36152u)), 14u)] ^ u_input.d.x;
    var var_2 = Struct_4(Struct_2(arg_0.a.a, func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(417f, 348f, -741f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.c) * _wgslsmith_f_op_f32(trunc(arg_0.d.c))), u_input.a.yz, u_input.a)), arg_0.d.e, _wgslsmith_sub_vec3_i32(select(vec3<i32>(arg_0.d.b, var_0.d.b, u_input.a.x), u_input.a.yzx, select(vec3<bool>(true, true, false), vec3<bool>(arg_0.b, true, arg_0.b), vec3<bool>(false, true, false))) ^ u_input.a.yxy, vec3<i32>(var_0.d.b, u_input.a.x, i32(-1i) * -var_0.a.b.b)));
    let var_3 = !any(!vec4<bool>(false, func_4(-1579f, Struct_3(Struct_2(vec2<u32>(0u, 4294967295u), Struct_1(vec2<u32>(arg_0.d.d, 28321u), 35533i, 1000f, 0u, arg_0.d.d)), false, vec2<f32>(-961f, 1000f), var_2.a.b)).x, var_0.b, all(vec3<bool>(true, true, true))));
    return func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.b.c, 294f, 3810f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-317f, 746f, 716f))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, arg_0.d.c, var_0.d.c))))) + vec3<f32>(_wgslsmith_f_op_f32(var_0.a.b.c - _wgslsmith_f_op_f32(arg_0.c.x * arg_0.a.b.c)), func_2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d.c, -201f, arg_0.d.c), vec3<f32>(410f, arg_0.d.c, 303f)), _wgslsmith_f_op_f32(var_2.a.b.c + -952f), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.d.b, u_input.a.x), vec2<i32>(1i, 2147483647i), vec2<i32>(-6578i, 6186i)), _wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, u_input.a)).c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.x), -909f)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.b.c * func_2(vec3<f32>(arg_0.c.x, -1027f, var_0.c.x), var_2.a.b.c, var_2.c.xz, u_input.a).c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(264f, -690f)) - _wgslsmith_f_op_f32(-968f * var_0.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -1213f))), ~select(select(vec2<i32>(2147483647i, arg_0.d.b), countOneBits(u_input.a.zx), true), vec2<i32>(50657i, -20664i) >> (func_5(var_0.a.b.a, vec4<bool>(var_3, var_3, true, var_0.b), var_2.a.b.b).a.b.a % vec2<u32>(32u)), vec2<bool>(all(vec2<bool>(var_0.b, var_3)), var_0.b)), vec4<i32>(abs(firstLeadingBit(var_0.a.b.b)), -35919i | u_input.a.x, 1i, -arg_0.a.b.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_3(global1[_wgslsmith_index_u32(u_input.b, 1u)], any(vec3<bool>(u_input.a.x == u_input.a.x, true, all(vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1057f + -1000f), _wgslsmith_f_op_f32(-301f - 1114f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1362f))), Struct_1(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 4294967295u), _wgslsmith_add_i32(23940i, -2147483647i) >> (firstTrailingBit(global0[_wgslsmith_index_u32(3351u, 14u)]) % 32u), -1000f, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 14u)], 59746u, 0u, 4294967295u), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 0u, 1216u, u_input.d.x)))));
    global1 = array<Struct_2, 1>();
    let var_1 = func_5(var_0.a, vec4<bool>(any(vec4<bool>(-23039i == u_input.a.x, false, any(vec2<bool>(false, false)), true)), false, !all(vec4<bool>(false, false, false, false)), true), max(20087i, ~(~(-var_0.b)))).a;
    global0 = array<u32, 14>();
    let var_2 = false;
    var var_3 = func_1(func_5(vec2<u32>(global0[_wgslsmith_index_u32(47716u, 14u)], _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.b, 14u)], 22621u, global0[_wgslsmith_index_u32(6810u, 14u)]), ~u_input.d.x, var_0.a.x)), vec4<bool>(all(vec2<bool>(false, var_2)), var_2, _wgslsmith_mult_i32(var_1.b.b, -1i) == (var_0.b ^ -17106i), all(!vec4<bool>(false, var_2, false, true))), reverseBits(-5965i)));
    let x = u_input.a;
    s_output = StorageBuffer(-8604i, var_1.b.b);
}

