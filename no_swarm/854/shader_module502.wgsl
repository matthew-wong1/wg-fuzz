struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(680f, -487f, -1000f, 483f), vec3<u32>(63507u, 4294967295u, 0u), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), 338f);

var<private> global1: f32;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(global0.a, global2.b, global0.c, max(vec3<i32>(9385i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global2.d.x, arg_0), _wgslsmith_div_i32(0i, global2.d.x), global0.d.x << (arg_1.c.x % 32u)), u_input.e.x), abs(_wgslsmith_mult_vec3_i32(u_input.a.zyx << (vec3<u32>(global2.c.x, 0u, 33098u) % vec3<u32>(32u)), vec3<i32>(-28492i, arg_0, -2147483647i)))), global2.e);
    global0 = Struct_1(arg_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global2.b, _wgslsmith_f_op_vec4_f32(min(global2.b, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.e, global2.e, global2.e, arg_1.e), vec4<f32>(-991f, -1000f, global2.b.x, 356f)))))) - arg_1.b), vec3<u32>(u_input.c.x, ~55021u, ~u_input.d), vec3<i32>(firstLeadingBit(_wgslsmith_mult_i32(-24568i, -1i)), -(~(-46916i)) & arg_0, 1i), _wgslsmith_f_op_f32(f32(-1f) * -255f));
    var var_1 = any(global2.a.zzx);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2110f + _wgslsmith_div_f32(-1411f, var_0.e)))), _wgslsmith_f_op_f32(trunc(arg_1.b.x)), arg_1.b.x) * vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.b.x, arg_1.b.x))))), -112f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(274f - global2.b.x))) * _wgslsmith_f_op_f32(f32(-1f) * -526f))));
    var var_3 = arg_1;
    return arg_1.a;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = -12524i;
    var var_1 = Struct_1(!func_3(global0.d.x, arg_2), _wgslsmith_f_op_vec4_f32(vec4<f32>(-695f, -2440f, -1887f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -734f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.b - vec4<f32>(arg_2.b.x, arg_2.e, 167f, 385f)) + _wgslsmith_f_op_vec4_f32(exp2(global0.b)))), firstLeadingBit(firstTrailingBit(~(~arg_2.c))), firstTrailingBit(arg_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)), arg_0.a.x))));
    global1 = var_1.b.x;
    var var_2 = global2.d.xy ^ (_wgslsmith_sub_vec2_i32(vec2<i32>(-33371i, _wgslsmith_div_i32(global2.d.x, 2147483647i)), -vec2<i32>(2147483647i, var_0) & (vec2<i32>(-38392i, 2147483647i) & vec2<i32>(-1i, u_input.a.x))) & u_input.a.xy);
    global2 = Struct_1(select(arg_0.a, vec4<bool>(!(true & global0.a.x), all(vec4<bool>(true, arg_0.a.x, false, false)), !global0.a.x && global2.a.x, true), any(!global2.a.wyw) || true), _wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(-global0.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 9447u, 0u), vec3<u32>(~arg_0.c.x, 0u, global0.c.x)) & global2.c, firstTrailingBit(global2.d) >> (~arg_2.c % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), global2.b.x) * _wgslsmith_f_op_f32(ceil(arg_2.b.x))));
    return var_1.c.xx;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_u32(~(~u_input.b), firstTrailingBit(u_input.b));
    global2 = Struct_1(vec4<bool>(false, true && (!global2.a.x && arg_1.x), arg_0.x, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2, arg_2)) * _wgslsmith_div_f32(-2819f, global0.b.x)), arg_2, global2.e, _wgslsmith_f_op_f32(global0.b.x * arg_2)) * global0.b), vec3<u32>(~global0.c.x, ~abs(2820u), _wgslsmith_sub_u32(var_0.x << (~global2.c.x % 32u), global0.c.x)), select(vec3<i32>(1i, 1i, -(~global0.d.x)), reverseBits(_wgslsmith_sub_vec3_i32(~global2.d, abs(vec3<i32>(u_input.a.x, 20296i, -2147483647i)))), global2.a.zzw), _wgslsmith_f_op_f32(round(174f)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1118f, _wgslsmith_f_op_f32(f32(-1f) * -369f))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(round(1255f)))))));
    let var_1 = !all(vec4<bool>(true, true, any(global2.a.yy), global2.a.x));
    global1 = 349f;
    return Struct_1(!(!arg_1), global2.b, vec3<u32>(global2.c.x, ~countOneBits(51400u), 42569u), reverseBits(min(global0.d, max(u_input.a.zwy, abs(global0.d)))), global2.b.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: vec3<bool>) -> Struct_1 {
    global0 = func_4(select(select(!vec3<bool>(global0.a.x, arg_2.x, global2.a.x), arg_2, arg_2.x), !vec3<bool>(true, all(vec2<bool>(true, false)), global0.a.x & false), min(global2.c.x & global0.c.x, ~2063u) != _wgslsmith_dot_vec2_u32(arg_0.xy, func_2(Struct_1(global2.a, vec4<f32>(global2.e, global0.b.x, global0.b.x, -571f), arg_1.zzw, vec3<i32>(1i, -41671i, u_input.e.x), global0.b.x), global2.c.x, Struct_1(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global2.a.x), vec4<f32>(217f, 114f, 1306f, global2.e), vec3<u32>(global2.c.x, arg_0.x, 37308u), u_input.a.zwx, global2.b.x)))), vec4<bool>(any(func_3(abs(9797i), Struct_1(global0.a, vec4<f32>(global2.e, -1753f, global2.b.x, -1150f), vec3<u32>(1u, 4294967295u, 1u), vec3<i32>(33042i, -1i, -78900i), 138f)).xxz), arg_2.x, true, all(!global2.a.wy)), global0.b.x, abs(~_wgslsmith_mult_i32(global0.d.x, i32(-1i) * -1i)));
    global0 = func_4(vec3<bool>(true, !global2.a.x, all(global2.a.wwx)), global0.a, global0.e, -min(min(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x, 70391i), global0.d.yy), -1i), 0i));
    global0 = func_4(vec3<bool>(select(false, !select(false, false, global2.a.x), global0.a.x), global0.a.x, arg_2.x), !select(!vec4<bool>(false, global2.a.x, false, true), !global2.a, global0.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-861f, global2.b.x))))), -global2.d.x);
    var var_0 = func_4(select(func_4(!vec3<bool>(true, global0.a.x, arg_2.x), global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-672f * -1341f) - global0.e), abs(global0.d.x)).a.xzz, !vec3<bool>(true, global2.a.x, false), true), func_4(global0.a.www, select(!select(vec4<bool>(global2.a.x, arg_2.x, arg_2.x, global2.a.x), global2.a, global2.a), vec4<bool>(true, true, true, true), _wgslsmith_sub_u32(arg_0.x, 91533u) == arg_0.x), 1813f, countOneBits(max(_wgslsmith_clamp_i32(u_input.a.x, -43500i, -2337i), min(-1i, u_input.a.x)))).a, 1000f, ~u_input.a.x);
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e - 1f)))));
    return Struct_1(global2.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(172f, var_0.b.x, -139f, var_0.b.x))))), _wgslsmith_sub_vec3_u32(vec3<u32>(reverseBits(34863u), 43729u, _wgslsmith_add_u32(1u, 23699u)) << (vec3<u32>(arg_0.x, 1u, _wgslsmith_dot_vec3_u32(global0.c, var_0.c)) % vec3<u32>(32u)), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.c.x, var_0.c.x, arg_0.x), global0.c, vec3<u32>(var_0.c.x, global0.c.x, 4294967295u)))), -((_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.e.x, var_0.d.x), vec3<i32>(global2.d.x, u_input.e.x, -2147483647i)) ^ (vec3<i32>(global2.d.x, var_0.d.x, u_input.e.x) ^ vec3<i32>(var_0.d.x, global2.d.x, -42209i))) | _wgslsmith_div_vec3_i32(max(global2.d, u_input.a.zzw), vec3<i32>(1i, global2.d.x, 5338i) | vec3<i32>(var_0.d.x, global0.d.x, -2147483647i))), 147f);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = vec3<u32>(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global2.c.x, arg_0, global0.c.x, u_input.d)), ~u_input.b), 4294967295u, ~_wgslsmith_clamp_u32(global0.c.x, 4294967295u, firstTrailingBit(~1u)));
    return arg_1;
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_2.b.yyx);
    var var_1 = global2.d.xy;
    global1 = var_0.x;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)));
    var var_2 = global0.a.x;
    return Struct_1(global2.a, vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_4(global0.a.yyy, global2.a, arg_2.b.x, -2147483647i).e, global2.b.x) * -242f), -2633f, _wgslsmith_f_op_f32(trunc(arg_1))), global2.c, arg_2.d, -324f);
}

fn func_7(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_4(vec3<bool>(arg_0.a.x, true, global0.a.x), !vec4<bool>(arg_0.a.x, global2.a.x, false, global2.a.x), func_1(vec3<u32>(63103u, arg_0.c.x, u_input.d), vec4<u32>(arg_0.c.x, global2.c.x, u_input.d, global2.c.x), arg_0.a.wyz).b.x, u_input.a.x).b.wy) + vec2<f32>(-819f, 1329f));
    var var_2 = ~(var_0.c.x & ~_wgslsmith_mult_u32(global2.c.x, arg_0.c.x)) >> (~arg_0.c.x % 32u);
    var var_3 = ~_wgslsmith_sub_i32(-36073i, global2.d.x);
    global2 = Struct_1(func_4(vec3<bool>(global0.a.x, any(!arg_0.a.zxx), any(vec3<bool>(false, false, false))), !arg_0.a, _wgslsmith_f_op_f32(-global0.e), u_input.e.x).a, _wgslsmith_f_op_vec4_f32(-global2.b), vec3<u32>(func_5(26096u, func_4(vec3<bool>(var_0.a.x, global0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, true, false, var_0.a.x), global0.b.x, -2147483647i), func_5(73791u, var_0, var_0)).c.x, 16320u, _wgslsmith_dot_vec4_u32(u_input.b, ~abs(u_input.b))), min(~global0.d, _wgslsmith_sub_vec3_i32(global0.d, vec3<i32>(u_input.a.x & global2.d.x, global0.d.x | 20809i, u_input.e.x))), global0.e);
    return Struct_1(vec4<bool>(false, false, var_0.a.x, any(global0.a)), global2.b, var_0.c, ~vec3<i32>(i32(-1i) * -2147483647i, ~1i, 69970i) >> (~(~(~vec3<u32>(1u, 65538u, var_0.c.x))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(trunc(global2.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)) * 225f), global0.e, func_5(~u_input.d, func_1(reverseBits(vec3<u32>(u_input.b.x, 1u, 76305u)), select(vec4<u32>(4294967295u, global2.c.x, global2.c.x, 12640u), u_input.b, global2.a), vec3<bool>(global2.a.x, false, global2.a.x)), func_4(vec3<bool>(false, global2.a.x, false), func_1(global0.c, vec4<u32>(4294967295u, u_input.c.x, global2.c.x, global2.c.x), vec3<bool>(true, true, true)).a, _wgslsmith_f_op_f32(exp2(global0.b.x)), i32(-1i) * -23386i))), -181f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.e, _wgslsmith_f_op_f32(min(global0.e, 626f)))), global0.e)));
    let var_1 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(func_5(func_1(vec3<u32>(12982u, global2.c.x, 0u), vec4<u32>(38296u, global0.c.x, 46023u, 0u), global0.a.wzz).c.x, var_0, func_7(var_0, var_0.b.x, global0.b.x)).e)) + var_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(!vec3<bool>(false, false, var_0.a.x), !vec4<bool>(global0.a.x, false, false, var_0.a.x), -250f, var_0.d.x).e)), func_1(_wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(global2.c.x), u_input.b.x, global2.c.x), global2.c), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b.x, global2.c.x, global2.c.x) << (u_input.b % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(25109u, global0.c.x, 32480u, global0.c.x), u_input.b))), global2.a.zyy));
    var var_2 = !(!(!func_7(Struct_1(global0.a, vec4<f32>(var_0.e, global0.e, -1142f, var_0.b.x), vec3<u32>(u_input.c.x, global2.c.x, 4294967295u), global0.d, 356f), -2360f, -593f).a.xwz));
    global2 = func_4(global2.a.yzy, select(!(!(!global2.a)), var_0.a, vec4<bool>(!all(var_0.a.www), !any(vec4<bool>(true, var_0.a.x, true, false)), 1i >= (-48047i & u_input.a.x), (var_0.d.x < var_0.d.x) | true)), _wgslsmith_f_op_f32(global2.e - 2996f), var_1.d.x << (79972u % 32u));
    var var_3 = global0.a.yzw;
    let var_4 = global2.a.zxw;
    global1 = global0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-25498i, abs(global0.d.x & 2147483647i), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), var_0.d.x), _wgslsmith_mod_u32(u_input.d, func_5(~(~1u), var_1, func_1(_wgslsmith_div_vec3_u32(var_0.c, global0.c), _wgslsmith_mult_vec4_u32(u_input.b, u_input.b), func_5(44157u, var_0, Struct_1(vec4<bool>(false, true, false, var_3.x), vec4<f32>(-387f, 2478f, var_1.e, -2149f), global0.c, global0.d, global2.b.x)).a.xwz)).c.x), u_input.b);
}

