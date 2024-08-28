struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32 = 1i;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

var<private> global3: Struct_1 = Struct_1(true, vec2<i32>(0i, 58355i));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(!(false && any(global2.xx)), arg_0.b);
    var var_1 = Struct_3(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(min(1u, 25861u), ~0u, 24780u, 35311u), (vec4<u32>(17779u, u_input.a, 30445u, u_input.a) >> (vec4<u32>(u_input.a, 5110u, u_input.a, 0u) % vec4<u32>(32u))) ^ vec4<u32>(1u, u_input.a, u_input.a, 25800u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 27756u, 0u, u_input.a), vec4<u32>(u_input.a, 68901u, 0u, u_input.a)) | reverseBits(vec4<u32>(33605u, 107339u, u_input.a, u_input.a)))), Struct_2(_wgslsmith_div_u32(countOneBits(~u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(57041u, 1u, 1u, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)))), arg_0, (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(892f * 496f), _wgslsmith_f_op_f32(-1206f + 223f))) < _wgslsmith_f_op_f32(1655f - _wgslsmith_f_op_f32(960f - 575f))) | global3.a, !select(!vec3<bool>(global2.x, true, global2.x), select(vec3<bool>(arg_0.a, var_0.a, true), !vec3<bool>(global3.a, false, global3.a), vec3<bool>(var_0.a, var_0.a, arg_0.a)), true));
    global3 = Struct_1(true, firstTrailingBit(_wgslsmith_sub_vec2_i32(~global3.b, arg_0.b)));
    var var_2 = ~_wgslsmith_clamp_vec2_i32(select(var_1.c.b, _wgslsmith_add_vec2_i32(vec2<i32>(41502i, var_0.b.x), vec2<i32>(1i, arg_0.b.x)), all(vec2<bool>(false, global3.a)) || all(var_1.e)), _wgslsmith_div_vec2_i32(var_1.c.b, _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 0i), _wgslsmith_mod_vec2_i32(vec2<i32>(-12166i, arg_0.b.x), arg_0.b))), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, var_1.c.b.x) >> (var_1.a.xw % vec2<u32>(32u)), vec2<i32>(0i, -14745i) << (abs(var_1.a.xz) % vec2<u32>(32u))));
    var var_3 = _wgslsmith_div_u32(var_1.b.a, ~u_input.a);
    return ~0u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.a | ~var_1.a.x, 0u), reverseBits(vec2<u32>(~u_input.a, var_1.b.a)));
}

fn func_3(arg_0: vec3<i32>) -> vec2<i32> {
    let var_0 = select(select(!global2.yz, !vec2<bool>(global2.x, global3.a | global2.x), vec2<bool>(true, true)), vec2<bool>(~u_input.a > ~_wgslsmith_clamp_u32(4396u, 1u, 102510u), any(vec4<bool>(1751u < u_input.a, u_input.a < u_input.a, global3.a, true))), vec2<bool>(false, !(select(global2.x, false, false) | true)));
    global3 = Struct_1(all(vec2<bool>(all(!vec3<bool>(true, true, var_0.x)), true)), abs(select(arg_0.yy, _wgslsmith_sub_vec2_i32(vec2<i32>(global3.b.x, arg_0.x), vec2<i32>(global3.b.x, arg_0.x)), !vec2<bool>(global2.x, true))));
    return vec2<i32>(global3.b.x, -2147483647i);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_div_u32(_wgslsmith_mult_u32(79288u, 35108u), _wgslsmith_sub_u32(~36549u, _wgslsmith_clamp_u32(0u, 16585u, 1u))) & 60947u);
    global2 = !select(select(!(!vec3<bool>(true, global2.x, false)), !vec3<bool>(global3.a, true, global2.x), all(vec4<bool>(global3.a, true, global2.x, false))), vec3<bool>(all(vec2<bool>(false, global3.a)), global2.x, true), vec3<bool>(all(select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(false, global2.x, false), vec3<bool>(true, true, global2.x))), !all(vec3<bool>(global2.x, true, arg_1.a)), global2.x));
    var var_1 = ~vec2<i32>(global3.b.x, -(abs(-1i) ^ global3.b.x));
    global3 = arg_1;
    let var_2 = arg_1;
    return Struct_1((false | all(vec3<bool>(global2.x, false, arg_1.a))) && arg_1.a, vec2<i32>(_wgslsmith_sub_i32(0i, _wgslsmith_add_i32(global3.b.x, -16944i)), firstLeadingBit(~var_2.b.x)) | arg_1.b);
}

fn func_1() -> vec2<u32> {
    global3 = func_4(vec3<u32>(func_2(Struct_1(true, -vec2<i32>(global3.b.x, 27041i))), ~_wgslsmith_div_u32(u_input.a << (u_input.a % 32u), 1u), 4294967295u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(281f)) + _wgslsmith_f_op_f32(floor(-625f))) == _wgslsmith_f_op_f32(f32(-1f) * -963f), func_3(-_wgslsmith_add_vec3_i32(vec3<i32>(global3.b.x, global3.b.x, -32531i), vec3<i32>(global3.b.x, global3.b.x, global3.b.x)))), Struct_2(u_input.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))));
    global1 = ~firstLeadingBit(global3.b.x);
    global2 = select(!vec3<bool>(true, true, global2.x & global3.a), select(select(select(!vec3<bool>(global2.x, global2.x, true), select(vec3<bool>(true, false, true), vec3<bool>(false, global2.x, global2.x), vec3<bool>(true, global2.x, global2.x)), any(vec3<bool>(true, global2.x, false))), select(vec3<bool>(false, true, false), select(vec3<bool>(global3.a, true, global3.a), vec3<bool>(global2.x, false, true), global2.x), vec3<bool>(global3.a, global3.a, global2.x)), !(!vec3<bool>(global3.a, true, global3.a))), select(select(select(vec3<bool>(false, global2.x, global3.a), vec3<bool>(global3.a, global3.a, global3.a), global2.x), select(vec3<bool>(true, global3.a, global3.a), vec3<bool>(true, true, global2.x), vec3<bool>(global2.x, false, global2.x)), select(vec3<bool>(global3.a, true, true), vec3<bool>(global2.x, global3.a, true), vec3<bool>(global3.a, false, false))), !(!vec3<bool>(global3.a, false, false)), !vec3<bool>(global2.x, false, true)), true), vec3<bool>(true, false, true && global3.a));
    var var_0 = false;
    global0 = true;
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_add_u32(~min(u_input.a, u_input.a), select(~66397u, ~u_input.a, !global2.x)), _wgslsmith_mult_u32(~u_input.a ^ ~u_input.a, ~1u)), vec2<u32>(58591u, u_input.a), ~abs(vec2<u32>(u_input.a, u_input.a)) << (vec2<u32>(~0u, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(40133u, u_input.a, u_input.a)))) % vec2<u32>(32u)));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_2(~arg_1.x);
    var var_1 = Struct_3(~abs(~vec4<u32>(arg_1.x, 0u, u_input.a, 4294967295u)) ^ arg_2, Struct_2(_wgslsmith_add_u32(4118u, 4294967295u ^ reverseBits(var_0.a))), Struct_1(_wgslsmith_f_op_f32(ceil(-1515f)) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-523f)))), min(countOneBits(global3.b ^ vec2<i32>(-1i, global3.b.x)), min(min(vec2<i32>(global3.b.x, global3.b.x), vec2<i32>(global3.b.x, global3.b.x)), -global3.b))), true || arg_3.x, vec3<bool>(true, all(!select(vec4<bool>(true, true, global2.x, true), vec4<bool>(global2.x, true, global2.x, global3.a), global3.a)), any(select(!vec4<bool>(false, global2.x, false, false), vec4<bool>(arg_3.x, global3.a, true, global2.x), all(vec3<bool>(global3.a, arg_3.x, true))))));
    let var_2 = !global2.zx;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-683f * 1217f), -476f, true)), _wgslsmith_div_f32(-495f, -1347f))), 568f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1838f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(400f)) + -121f)) + -1835f), _wgslsmith_f_op_f32(step(113f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1561f)) - 2386f))));
    global0 = true;
    return var_1.b;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: f32) -> Struct_3 {
    let var_0 = global2.zy;
    let var_1 = countOneBits(u_input.a);
    var var_2 = 34306u;
    global2 = vec3<bool>(!(!all(vec4<bool>(true, true, true, true)) || true), !all(select(!vec3<bool>(global3.a, false, true), vec3<bool>(false, global2.x, true), select(vec3<bool>(false, false, global3.a), vec3<bool>(global2.x, var_0.x, var_0.x), vec3<bool>(true, false, global2.x)))), all(vec3<bool>(global2.x, global2.x, false)));
    let var_3 = var_1;
    return Struct_3(~vec4<u32>(arg_0.a >> (arg_0.a % 32u), func_5(vec2<u32>(var_3, u_input.a), vec2<u32>(14491u, 0u), vec4<u32>(4294967295u, u_input.a, 0u, 33926u), vec3<bool>(true, false, true)).a, ~0u, func_2(Struct_1(false, arg_1))) ^ (~abs(vec4<u32>(1u, var_3, 35615u, 4294967295u)) & vec4<u32>(~arg_0.a, 1u, 23235u, abs(69063u))), func_5(vec2<u32>(~(~57340u), _wgslsmith_add_u32(~var_3, _wgslsmith_div_u32(17628u, var_1))), select(vec2<u32>(var_1, var_1), ~vec2<u32>(65717u, arg_0.a) >> (~vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), vec2<bool>(false, -1639f != arg_2)), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(12906u, 37410u), vec2<u32>(var_3, arg_0.a)), 4294967295u), var_3, _wgslsmith_sub_u32(~u_input.a, var_1), 4294967295u), select(select(!vec3<bool>(global2.x, true, global2.x), !vec3<bool>(global2.x, var_0.x, global3.a), func_4(vec3<u32>(arg_0.a, var_3, u_input.a), Struct_1(true, global3.b), Struct_2(var_3), 495f).a), vec3<bool>(global3.b.x != -1i, true, true), !vec3<bool>(false, global3.a, false))), func_4(~(vec3<u32>(0u, 1u, 0u) >> (~vec3<u32>(1u, var_3, 54623u) % vec3<u32>(32u))), Struct_1(global2.x, select(global3.b, ~vec2<i32>(11503i, arg_1.x), true)), func_5(func_1(), vec2<u32>(arg_0.a, func_5(vec2<u32>(u_input.a, var_1), vec2<u32>(arg_0.a, arg_0.a), vec4<u32>(4294967295u, 7830u, arg_0.a, 28666u), vec3<bool>(true, var_0.x, true)).a), vec4<u32>(_wgslsmith_div_u32(1u, var_3), select(var_1, 1u, false), ~var_3, 0u), select(!vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, global2.x), true)), 419f), false, select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(false, global2.x, global3.a), vec3<bool>(true, false, false), vec3<bool>(true, true, var_0.x)), !vec3<bool>(global3.a, true, true), !vec3<bool>(false, global2.x, global3.a)), !vec3<bool>(global3.a, false, false), !(!vec3<bool>(false, false, global3.a))), select(!select(vec3<bool>(global2.x, global3.a, global3.a), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, global3.a)), !vec3<bool>(false, global3.a, false), any(vec2<bool>(global2.x, global2.x)))));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1750f, -504f, 1865f, -433f), vec4<f32>(-876f, 1052f, 899f, 866f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(286f, -693f, 1898f, 123f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(334f, 754f, -634f, 2348f)) + vec4<f32>(359f, -1492f, 1168f, 102f))))));
    var var_1 = arg_2.x;
    var_1 = _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(abs(arg_2), vec3<i32>(42998i, arg_2.x, 0i)) << ((arg_1.a.wxz & ~vec3<u32>(50884u, u_input.a, arg_0.a)) % vec3<u32>(32u)), arg_2);
    var var_2 = max(_wgslsmith_add_i32(arg_2.x, arg_2.x), -2848i);
    var var_3 = (_wgslsmith_mod_vec2_u32(arg_1.a.zw, max(arg_1.a.yy >> (arg_1.a.zw % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(arg_1.a.ww, vec2<u32>(35727u, 4294967295u)))) & arg_1.a.yy) | vec2<u32>(arg_1.b.a, 24202u);
    return func_4(~reverseBits(select(firstTrailingBit(arg_1.a.zyy), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.b.a, 1780u, arg_0.a), arg_1.a.yyw), any(arg_1.e))), arg_1.c, arg_1.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1153f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3.a;
    var var_0 = Struct_1(true, global3.b);
    global0 = !(((1u << (abs(u_input.a) % 32u)) << (_wgslsmith_clamp_u32(u_input.a, ~6974u, _wgslsmith_clamp_u32(u_input.a, 74698u, 31349u)) % 32u)) > firstLeadingBit(4294967295u));
    global3 = func_7(Struct_2(~u_input.a & u_input.a), func_6(func_5(_wgslsmith_mod_vec2_u32(func_1(), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(5932u, u_input.a))), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 73264u), ~vec2<u32>(44703u, u_input.a)), vec4<u32>(_wgslsmith_mult_u32(u_input.a, 120017u), 0u, ~u_input.a, u_input.a), !vec3<bool>(var_0.a, false, false)), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -10914i), vec2<i32>(-3459i, var_0.b.x)), _wgslsmith_sub_vec2_i32(global3.b, vec2<i32>(-66902i, 2147483647i))), global3.b), 187f), -reverseBits(countOneBits(vec3<i32>(1i, var_0.b.x, var_0.b.x))));
    let var_1 = vec3<i32>(global3.b.x, func_4(vec3<u32>(106139u, 1u, _wgslsmith_add_u32(47542u, u_input.a)), Struct_1(true, var_0.b), Struct_2(4294967295u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1022f)))).b.x, -(~(-1i)));
    let x = u_input.a;
    s_output = StorageBuffer(-(-var_0.b.x << (0u % 32u)), -204f, -27219i);
}

