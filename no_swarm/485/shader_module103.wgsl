struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1080f, vec4<f32>(-261f, 525f, 580f, -1000f), vec4<i32>(1i, -1i, 22146i, 2725i), vec3<f32>(1000f, -268f, 324f), vec3<u32>(1u, 19971u, 1u));

var<private> global1: vec2<bool>;

var<private> global2: vec2<i32>;

var<private> global3: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: f32) -> f32 {
    let var_0 = Struct_2(arg_1.a, !(!select(arg_1.b, vec3<bool>(arg_1.c, true, arg_1.b.x), arg_1.c)), false);
    global1 = var_0.b.zz;
    var var_1 = true;
    var var_2 = var_0;
    global3 = var_0.b.x;
    return global0.a;
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<f32>) -> f32 {
    let var_0 = global0.b;
    global1 = select(select(select(!select(vec2<bool>(global1.x, global1.x), vec2<bool>(arg_1, true), false), vec2<bool>(all(vec2<bool>(arg_1, global1.x)), true), true), select(select(vec2<bool>(true, true), select(vec2<bool>(global1.x, true), vec2<bool>(arg_1, false), vec2<bool>(arg_1, false)), true), vec2<bool>(!arg_1, select(global1.x, true, false)), vec2<bool>(true, any(vec2<bool>(global1.x, global1.x)))), select(vec2<bool>(true, all(vec3<bool>(global1.x, false, true))), !(!vec2<bool>(false, global1.x)), 0u <= (54809u ^ u_input.a))), vec2<bool>(any(vec2<bool>(!arg_1, all(vec2<bool>(arg_1, global1.x)))), any(select(select(vec2<bool>(global1.x, false), vec2<bool>(true, global1.x), false), vec2<bool>(true, arg_1), select(vec2<bool>(true, false), vec2<bool>(true, arg_1), vec2<bool>(true, global1.x))))), false);
    global0 = Struct_1(arg_2.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1048f, -1221f, 620f, var_0.x) * vec4<f32>(548f, 1134f, arg_2.x, arg_2.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) + _wgslsmith_div_vec4_f32(vec4<f32>(942f, 365f, 1153f, arg_2.x), vec4<f32>(global0.a, global0.d.x, 1000f, var_0.x)))))), global0.c, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(min(267f, -1036f)), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-var_0.x)))))), ~(~firstTrailingBit(vec3<u32>(global0.e.x, u_input.a, global0.e.x))) >> (~(~reverseBits(global0.e)) % vec3<u32>(32u)));
    let var_1 = 1u;
    var var_2 = global1.x;
    return _wgslsmith_f_op_f32(step(-203f, _wgslsmith_f_op_f32(ceil(-241f))));
}

fn func_2(arg_0: vec2<u32>) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -377f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * -1427f), 1408f, -1002f, _wgslsmith_f_op_f32(func_3(countOneBits(global0.c.xyw), true, _wgslsmith_f_op_vec3_f32(global0.d + vec3<f32>(global0.a, -893f, global0.d.x))))) - _wgslsmith_f_op_vec4_f32(exp2(global0.b))), global0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.a, _wgslsmith_f_op_f32(floor(-502f)), -480f), vec3<f32>(_wgslsmith_f_op_f32(global0.a * global0.a), global0.a, _wgslsmith_f_op_f32(-global0.d.x)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-724f, 403f, global0.d.x), global0.b.xyx)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 419f, global0.a)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.b.x, 1000f, 208f))), select(vec3<bool>(true, true, global1.x), vec3<bool>(true, false, true), vec3<bool>(global1.x, true, global1.x)))))), vec3<u32>(~(~u_input.a), ~(~(~global0.e.x)), abs(~4294967295u & select(u_input.a, 4294967295u, global1.x))));
    var var_1 = global2.x | -2147483647i;
    var var_2 = var_0;
    let var_3 = vec3<i32>(~_wgslsmith_div_i32(_wgslsmith_add_i32(var_0.c.x, var_0.c.x), 52620i), _wgslsmith_clamp_i32(max(var_2.c.x, -select(var_0.c.x, var_2.c.x, false)), 4767i >> (firstTrailingBit(37516u) % 32u), global2.x), var_2.c.x);
    var_1 = global2.x;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global0.b.zwx)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.d.x, var_2.a, 374f), vec3<f32>(var_2.a, -2094f, -703f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-656f, -824f, 605f)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: bool) -> Struct_2 {
    let var_0 = vec3<bool>(any(select(select(!vec2<bool>(arg_3, arg_3), vec2<bool>(false, arg_3), !vec2<bool>(arg_3, arg_3)), vec2<bool>(!global1.x, true), global1.x)), arg_3, true);
    var var_1 = global0.e.x;
    let var_2 = select(firstLeadingBit(global0.c.x), 50154i ^ arg_1.c.x, global1.x);
    var var_3 = Struct_1(global0.a, arg_0, arg_1.c, global0.d, ~_wgslsmith_div_vec3_u32(min(vec3<u32>(101372u, u_input.a, arg_1.e.x), global0.e) ^ ~vec3<u32>(71882u, arg_1.e.x, arg_1.e.x), arg_1.e));
    global1 = vec2<bool>(!(!all(select(vec4<bool>(arg_3, global1.x, var_0.x, true), vec4<bool>(false, arg_3, arg_3, true), var_0.x))), true);
    return Struct_2(vec2<i32>(~_wgslsmith_clamp_i32(firstTrailingBit(var_2), global2.x, countOneBits(52366i)), 2147483647i), !vec3<bool>(_wgslsmith_f_op_f32(-global0.b.x) > _wgslsmith_f_op_f32(f32(-1f) * -612f), ~4294967295u == var_3.e.x, true | !var_0.x), all(var_0.xx) & all(select(!vec3<bool>(arg_3, var_0.x, global1.x), !var_0, false)));
}

fn func_5(arg_0: vec2<f32>, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * arg_0.x));
    global0 = Struct_1(arg_0.x, vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_vec3_f32(func_2(~_wgslsmith_mod_vec2_u32(vec2<u32>(5272u, global0.e.x), global0.e.xy))).x, global0.a), select(vec4<i32>(~global0.c.x, firstTrailingBit(arg_2.x), global2.x, 7528i), ~select(global0.c ^ vec4<i32>(-2147483647i, arg_3.a.x, 60801i, u_input.b), global0.c, any(vec4<bool>(global1.x, global1.x, true, true))), select(select(!vec4<bool>(true, false, global1.x, arg_3.c), vec4<bool>(true, global1.x, true, arg_3.c), vec4<bool>(global1.x, arg_3.b.x, true, global1.x)), !select(vec4<bool>(arg_3.c, arg_3.b.x, false, global1.x), vec4<bool>(arg_3.c, arg_3.b.x, arg_3.c, true), false), select(!vec4<bool>(true, true, false, global1.x), select(vec4<bool>(false, true, false, arg_3.c), vec4<bool>(arg_3.b.x, false, true, false), false), select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(false, arg_3.c, false, global1.x))))), global0.d, vec3<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(global0.e) | _wgslsmith_sub_vec3_u32(global0.e, global0.e), global0.e), countOneBits(85597u), min(~global0.e.x, countOneBits(u_input.a))));
    var var_1 = ~vec3<u32>(u_input.a, _wgslsmith_sub_u32(firstLeadingBit(u_input.a), ~0u) & _wgslsmith_div_u32(min(55507u, 11431u), 4294967295u ^ u_input.a), 4294967295u);
    return func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1197f, arg_0.x, -676f) - global0.b))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global0.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -859f, global0.b.x, 1000f) + global0.b)) - _wgslsmith_f_op_vec4_f32(global0.b * _wgslsmith_f_op_vec4_f32(-global0.b))))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.b.x, 391f), arg_0.x), 605f)), _wgslsmith_div_vec4_f32(vec4<f32>(2106f, 424f, _wgslsmith_f_op_f32(trunc(-246f)), 1139f), global0.b), _wgslsmith_sub_vec4_i32(vec4<i32>(select(1i, 0i, global1.x), arg_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, u_input.b), arg_3.a), -23813i), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, arg_1, global2.x, global2.x) << (vec4<u32>(1u, 4294967295u, u_input.a, global0.e.x) % vec4<u32>(32u)), select(global0.c, vec4<i32>(u_input.b, 0i, arg_2.x, 0i), vec4<bool>(global1.x, arg_3.b.x, global1.x, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global0.d)))), vec3<u32>(23328u, abs(~0u), u_input.a)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global0.b.wx))), true);
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: vec2<u32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(global0.d.yz))));
    global0 = Struct_1(_wgslsmith_f_op_f32(-975f * _wgslsmith_f_op_f32(func_3(global0.c.xzy, (arg_1.a.x << (50249u % 32u)) > 1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, 219f, global0.d.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(625f * global0.d.x) - -920f)), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1191f), var_0.x), reverseBits(global0.c), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-global0.b.x), 2352f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(965f, -369f, global0.a)) * global0.b.yzy))))), ~_wgslsmith_sub_vec3_u32(global0.e, vec3<u32>(abs(5211u), 1u, min(u_input.a, 27960u))));
    global3 = global1.x;
    global1 = !arg_1.b.yx;
    global2 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -1i), global0.c.zx), firstLeadingBit(vec2<i32>(24923i, 2694i))), abs(1i)), abs(_wgslsmith_div_i32(u_input.b, arg_1.a.x) << (_wgslsmith_mod_u32(4294967295u, u_input.a) % 32u)) >> (_wgslsmith_add_u32(_wgslsmith_sub_u32(firstLeadingBit(arg_2.x), ~u_input.a), _wgslsmith_dot_vec2_u32(global0.e.zz, vec2<u32>(arg_2.x, global0.e.x))) % 32u));
    return StorageBuffer(-28271i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(632f, 1483f, var_0.x, global0.a), vec4<f32>(683f, var_0.x, 625f, global0.d.x)))) - global0.b))), _wgslsmith_f_op_f32(func_1(abs(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(7747u, 1u, arg_2.x)), min(vec3<u32>(4294967295u, 4294967295u, 66458u), vec3<u32>(1u, 67206u, 40113u)))), Struct_2(vec2<i32>(_wgslsmith_add_i32(2147483647i, u_input.b), 0i), select(func_5(vec2<f32>(var_0.x, -572f), -2479i, vec3<i32>(-17169i, -1i, global2.x), Struct_2(global0.c.wx, arg_1.b, arg_0)).b, !vec3<bool>(false, arg_1.c, false), true), true), global0.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(!global1.x, func_5(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(953f))), global0.d.x), _wgslsmith_sub_i32(_wgslsmith_div_i32(~global2.x, _wgslsmith_add_i32(-1i, global2.x)), _wgslsmith_div_i32(global0.c.x, _wgslsmith_sub_i32(global0.c.x, u_input.b))), vec3<i32>(1i, ~34504i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, global0.c.x, -1i), vec3<i32>(60688i, -1i, -21109i), false), vec3<i32>(2147483647i, 0i, u_input.b))), func_4(global0.b, Struct_1(_wgslsmith_f_op_f32(func_1(vec3<u32>(0u, u_input.a, u_input.a), Struct_2(global0.c.zz, vec3<bool>(global1.x, global1.x, false), global1.x), -438f)), _wgslsmith_f_op_vec4_f32(max(global0.b, vec4<f32>(130f, 302f, 1012f, 453f))), global0.c, _wgslsmith_f_op_vec3_f32(func_2(vec2<u32>(4294967295u, global0.e.x))), _wgslsmith_div_vec3_u32(vec3<u32>(global0.e.x, 15410u, u_input.a), vec3<u32>(1u, u_input.a, 27u))), vec2<f32>(_wgslsmith_f_op_f32(-global0.d.x), 870f), all(select(vec2<bool>(true, global1.x), vec2<bool>(false, false), vec2<bool>(true, global1.x))))), global0.e.yz);
}

