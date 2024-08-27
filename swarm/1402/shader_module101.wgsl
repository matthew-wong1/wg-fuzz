struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: bool,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-729f, vec3<i32>(i32(-2147483648), -43168i, 30752i), 0i, vec4<f32>(336f, -737f, 1342f, -436f), vec4<i32>(9168i, i32(-2147483648), -1i, 11466i));

var<private> global1: array<u32, 8> = array<u32, 8>(4294967295u, 0u, 1u, 33649u, 68628u, 4294967295u, 4294967295u, 4294967295u);

var<private> global2: vec4<u32> = vec4<u32>(62311u, 0u, 51948u, 4294967295u);

var<private> global3: array<vec2<u32>, 28>;

var<private> global4: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec2<bool>(true, false), 1452f, -16463i, vec2<u32>(36156u, 45282u)), Struct_2(vec2<bool>(true, true), -845f, 1i, vec2<u32>(93717u, 4294967295u)), Struct_2(vec2<bool>(true, true), 1000f, 33140i, vec2<u32>(101365u, 4294967295u)), Struct_2(vec2<bool>(false, true), -1000f, 2147483647i, vec2<u32>(18369u, 2780u)), Struct_2(vec2<bool>(true, true), -1717f, -12626i, vec2<u32>(0u, 12814u)), Struct_2(vec2<bool>(false, true), 267f, 1i, vec2<u32>(18969u, 42058u)), Struct_2(vec2<bool>(true, false), -2848f, -26988i, vec2<u32>(32284u, 4294967295u)), Struct_2(vec2<bool>(false, true), 1219f, i32(-2147483648), vec2<u32>(0u, 9749u)), Struct_2(vec2<bool>(false, true), -458f, 7808i, vec2<u32>(21860u, 15074u)), Struct_2(vec2<bool>(false, false), 192f, -27307i, vec2<u32>(25114u, 1u)), Struct_2(vec2<bool>(false, false), 1722f, 25003i, vec2<u32>(2611u, 21165u)), Struct_2(vec2<bool>(false, false), 670f, i32(-2147483648), vec2<u32>(1u, 71822u)), Struct_2(vec2<bool>(false, true), 1817f, 0i, vec2<u32>(53224u, 20948u)), Struct_2(vec2<bool>(true, true), -1084f, i32(-2147483648), vec2<u32>(1u, 1u)), Struct_2(vec2<bool>(true, false), 225f, -19604i, vec2<u32>(1u, 4294967295u)), Struct_2(vec2<bool>(true, false), 1109f, 1i, vec2<u32>(45441u, 0u)), Struct_2(vec2<bool>(false, false), -1363f, i32(-2147483648), vec2<u32>(19925u, 30845u)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<f32> {
    global0 = Struct_1(global0.d.x, _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(global0.e.yxz, vec3<i32>(0i, 40330i, _wgslsmith_dot_vec2_i32(global0.e.ww, global0.e.yz))), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(global0.b, vec3<i32>(global0.e.x, global0.e.x, u_input.a)), _wgslsmith_add_vec3_i32(~vec3<i32>(-13176i, 0i, u_input.a), global0.e.yxy)), global0.b), _wgslsmith_dot_vec3_i32(-global0.b, vec3<i32>(26735i, -(~2147483647i), -firstLeadingBit(global0.e.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(141f)) + _wgslsmith_f_op_f32(f32(-1f) * -1084f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1431f, global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + global0.d.x) * global0.d.x), -148f)), _wgslsmith_mult_vec4_i32(countOneBits(max(_wgslsmith_div_vec4_i32(global0.e, vec4<i32>(-7767i, global0.c, u_input.a, u_input.a)), ~global0.e)), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, global0.b.x, 1i, 1i), global0.e)) ^ ~_wgslsmith_mult_vec4_i32(global0.e, global0.e)));
    let var_0 = _wgslsmith_sub_u32(firstLeadingBit(min(u_input.b >> (1u % 32u), _wgslsmith_mult_u32(~u_input.b, _wgslsmith_clamp_u32(4294967295u, global1[_wgslsmith_index_u32(global2.x, 8u)], 4294967295u)))), ~_wgslsmith_clamp_u32(~reverseBits(u_input.b), 35322u, ~1u));
    let var_1 = ~countOneBits(~min(~vec3<u32>(var_0, 51975u, var_0), _wgslsmith_add_vec3_u32(global2.yyw, vec3<u32>(1u, 16186u, 17681u))));
    var var_2 = any(select(vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), true, true, any(vec2<bool>(true, true))), select(vec4<bool>(false, true, true, false), vec4<bool>(any(vec4<bool>(true, true, false, true)), true, true, false), true), vec4<bool>(!select(false, true, false), true, false, true)));
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(trunc(1413f))))), global0.b, -global0.e.x, _wgslsmith_f_op_vec4_f32(-global0.d), vec4<i32>(-14460i, -(~_wgslsmith_mod_i32(2925i, 52660i)), global0.b.x, -58384i));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, _wgslsmith_f_op_f32(-var_3.d.x), _wgslsmith_f_op_f32(f32(-1f) * -629f), var_3.d.x), vec4<f32>(_wgslsmith_f_op_f32(step(270f, var_3.d.x)), _wgslsmith_f_op_f32(ceil(global0.d.x)), _wgslsmith_f_op_f32(min(-233f, -842f)), _wgslsmith_f_op_f32(global0.d.x - var_3.d.x))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.a)) * global0.a), global0.d.x, -313f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a))) * vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global0.d.x, -1494f)), global0.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global0.a, -1084f)))), var_3.d.x, 550f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(global0.d + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())));
    global1 = array<u32, 8>();
    var var_1 = ~144275u;
    global1 = array<u32, 8>();
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3()).x)), -global0.e.zzz, global0.c, vec4<f32>(_wgslsmith_f_op_f32(ceil(-1904f)), 358f, arg_1.x, _wgslsmith_f_op_f32(trunc(var_0.x))), ~(~vec4<i32>(4772i, -73281i, 1i, -52047i))), _wgslsmith_dot_vec4_u32(firstTrailingBit(~reverseBits(vec4<u32>(4334u, u_input.b, 1u, global2.x))), vec4<u32>(countOneBits(~30009u), ~(~arg_0.x), ~u_input.b, ~u_input.b)), max(global0.c, 26235i), ~countOneBits(vec4<u32>(global2.x, global2.x, 42608u, 43901u) ^ countOneBits(vec4<u32>(arg_0.x, global2.x, arg_0.x, 4294967295u))), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), (u_input.a & 20861i) < u_input.a), select(vec3<bool>(u_input.b != 15134u, any(vec4<bool>(false, true, true, true)), true), vec3<bool>(select(true, false, false), all(vec4<bool>(false, true, false, true)), false), (global0.e.x < 2147483647i) == all(vec2<bool>(false, false)))));
    return var_2.a;
}

fn func_1(arg_0: Struct_4) -> vec4<u32> {
    global1 = array<u32, 8>();
    global0 = func_2(vec3<u32>(~(~1u), 52389u, u_input.b), _wgslsmith_div_vec4_f32(global0.d, vec4<f32>(_wgslsmith_f_op_f32(min(727f, arg_0.a.b)), _wgslsmith_f_op_f32(round(global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.b)) - arg_0.a.b), _wgslsmith_f_op_f32(min(global0.d.x, 1313f)))));
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-arg_0.a.b), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-88516i, u_input.a), max(2147483647i, global0.b.x), u_input.a), global0.b), ~u_input.a, global0.d, countOneBits(vec4<i32>(u_input.a, -12261i, -2147483647i, global0.c))), ~abs(~_wgslsmith_div_u32(61567u, arg_0.a.d.x)), global0.c, vec4<u32>(_wgslsmith_mod_u32(50131u, select(12403u, 7438u, true)), _wgslsmith_add_u32(~(~1u), arg_0.a.d.x), abs(~(~1u)), firstTrailingBit(16005u)), vec3<bool>(false, global2.x < ~0u, all(select(!vec4<bool>(arg_0.a.a.x, false, arg_0.a.a.x, arg_0.a.a.x), select(vec4<bool>(false, arg_0.a.a.x, true, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x), vec4<bool>(true, true, arg_0.a.a.x, true)), select(vec4<bool>(true, true, false, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, false), false)))));
    let var_1 = var_0.a.b.xz >> (arg_0.a.d % vec2<u32>(32u));
    var var_2 = _wgslsmith_div_f32(global0.d.x, 1210f);
    return ~(~var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.d.zwx, vec3<f32>(-1251f, 125f, 114f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.d.www) * vec3<f32>(-1346f, global0.d.x, global0.a)))));
    var var_1 = (~(-vec4<i32>(1i, global0.b.x, 2147483647i, u_input.a)) >> (~select(func_1(Struct_4(global4[_wgslsmith_index_u32(4294967295u, 17u)])), ~vec4<u32>(global2.x, 80710u, 39246u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.x, 8u)], 8u)]), select(true, false, true)) % vec4<u32>(32u))) >> (vec4<u32>(1u, 1u, ~68153u, (~u_input.b ^ ~97187u) << (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global2.yzz, vec3<u32>(9198u, global2.x, global2.x)), select(global2.x, 9653u, true)) % 32u)) % vec4<u32>(32u));
    var_1 = max(~vec4<i32>(-23186i, _wgslsmith_dot_vec2_i32(var_1.yx, vec2<i32>(var_1.x, var_1.x) ^ var_1.zy), _wgslsmith_clamp_i32(8346i >> (global1[_wgslsmith_index_u32(global2.x, 8u)] % 32u), -global0.e.x, var_1.x & global0.c), var_1.x), vec4<i32>(2147483647i, -2147483647i, 56857i, _wgslsmith_add_i32(2147483647i, ~0i)));
    var_1 = global0.e;
    var var_2 = _wgslsmith_f_op_f32(-func_2(min(abs(vec3<u32>(global2.x, u_input.b, 39458u)), global2.yxz), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.d)) * _wgslsmith_f_op_vec4_f32(global0.d - global0.d))).a);
    global3 = array<vec2<u32>, 28>();
    var var_3 = ~global0.b.x;
    var var_4 = select(!select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), true), global2.x < global1[_wgslsmith_index_u32(8771u, 8u)]), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), true)), !select(vec4<bool>(all(vec4<bool>(false, true, false, false)), true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), all(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true)), select(vec4<bool>(global0.d.x > _wgslsmith_f_op_f32(f32(-1f) * -1540f), false, select(true, any(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))), (u_input.a < global0.c) && any(vec3<bool>(true, true, false))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false), u_input.b >= global1[_wgslsmith_index_u32(global2.x, 8u)]), select(vec4<bool>(var_1.x <= var_1.x, true, all(vec3<bool>(true, true, false)), any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, all(vec4<bool>(false, true, true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x | (-4114i >> (_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, global2.x), 1u) % 32u)), global2.x);
}

