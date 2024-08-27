struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(4294967295u, 19065u, 0u, 1u));

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    global1 = arg_0;
    let var_0 = any(select(vec3<bool>(arg_1, arg_1, arg_1), select(vec3<bool>(true, true, true), vec3<bool>(arg_1, true, arg_1), all(!vec2<bool>(arg_1, arg_1))), arg_1));
    let var_1 = Struct_3(Struct_1(~arg_0.a), _wgslsmith_mod_u32(countOneBits(59121u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 128992u, arg_0.a.x) ^ vec3<u32>(46184u, 49836u, u_input.b), select(arg_0.a.yzx, vec3<u32>(22826u, 3020u, 1u), vec3<bool>(false, true, arg_1))) << (1u % 32u)));
    global0 = var_1.a;
    global0 = Struct_1(select(select(~global1.a, vec4<u32>(5340u, arg_0.a.x, u_input.b, global0.a.x), true), ~(vec4<u32>(18614u, var_1.a.a.x, global0.a.x, global0.a.x) & vec4<u32>(var_1.a.a.x, 1u, 66429u, var_1.b)), vec4<bool>(any(vec4<bool>(true, true, false, var_0)), false, true, all(vec4<bool>(false, arg_1, true, var_0)))) >> (global0.a % vec4<u32>(32u)));
    return ~global0.a.x;
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(vec4<u32>(~countOneBits(global0.a.x), 0u, select(_wgslsmith_clamp_u32(47655u, global0.a.x, 4294967295u), ~global1.a.x, all(vec3<bool>(arg_0, arg_0, false))), _wgslsmith_sub_u32(~20502u, global1.a.x))), _wgslsmith_mod_u32(func_3(Struct_1(global0.a), !arg_0), _wgslsmith_clamp_u32(global0.a.x, 15624u, 0u) | select(global1.a.x, 21785u, arg_0)) & _wgslsmith_clamp_u32(global0.a.x, _wgslsmith_mod_u32(global0.a.x, 0u), ~28828u));
    let var_1 = Struct_1(global1.a);
    var var_2 = Struct_3(Struct_1(global1.a), ~(~abs(abs(global0.a.x))));
    var var_3 = Struct_2(select(select(false, all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(false, true, arg_0, arg_0))), true), true, arg_0), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-1177f + 1771f), _wgslsmith_f_op_f32(sign(861f))), vec3<f32>(_wgslsmith_f_op_f32(-598f - -725f), 659f, -1000f))), vec3<f32>(-317f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 1661f), -1050f), 1f)));
    global0 = var_2.a;
    return Struct_2(arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(1185f, var_3.b.x, -701f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-668f, -629f, var_3.b.x))) - vec3<f32>(-1000f, _wgslsmith_f_op_f32(var_3.b.x + var_3.b.x), -913f))));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2, arg_3: vec4<bool>) -> u32 {
    global0 = Struct_1(vec4<u32>(~global0.a.x, countOneBits(0u) ^ ~max(global1.a.x, 35820u), _wgslsmith_sub_u32(43732u, select(28923u, 7236u, all(arg_3))), 55401u));
    var var_0 = arg_2.b.x;
    var var_1 = _wgslsmith_div_vec4_u32(global0.a, vec4<u32>(81218u, 4294967295u, 38690u, global0.a.x) ^ (vec4<u32>(arg_0.x, ~global0.a.x, ~u_input.b, abs(4294967295u)) & (global1.a | vec4<u32>(31698u, 10605u, arg_0.x, 119239u))));
    var var_2 = arg_1;
    var_1 = global0.a;
    return 1u;
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> Struct_2 {
    let var_0 = arg_0;
    global1 = Struct_1(reverseBits(global1.a));
    var var_1 = _wgslsmith_clamp_vec3_u32(abs(~(vec3<u32>(10773u, 7365u, 1u) & _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, 44613u), vec3<u32>(arg_0.b, 1u, 4294967295u)))), countOneBits(~global1.a.wxz), vec3<u32>(((arg_0.a.a.x >> (u_input.b % 32u)) ^ firstLeadingBit(u_input.b)) | _wgslsmith_clamp_u32(~104847u, func_3(Struct_1(var_0.a.a), true), _wgslsmith_mod_u32(19851u, var_0.a.a.x)), abs(_wgslsmith_mod_u32(min(global0.a.x, u_input.b), _wgslsmith_sub_u32(global0.a.x, global0.a.x))), _wgslsmith_mod_u32(52159u, var_0.a.a.x)));
    var var_2 = select(-1i, _wgslsmith_dot_vec2_i32(firstLeadingBit(reverseBits(u_input.c.wz)), vec2<i32>(_wgslsmith_add_i32(-47166i, u_input.c.x), firstTrailingBit(9858i)) << (var_1.xx % vec2<u32>(32u))), !(!(0u < global0.a.x) & !(-1244f != arg_1)));
    var var_3 = arg_0;
    return Struct_2(!(_wgslsmith_dot_vec2_u32(var_0.a.a.zx, ~var_3.a.a.xy) == 4294967295u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1516f, 293f, arg_1) * vec3<f32>(-225f, arg_1, 1244f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-821f, 1487f, 1189f) * vec3<f32>(arg_1, 103f, arg_1)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1, -1023f, arg_1), vec3<f32>(arg_1, arg_1, arg_1))))))));
}

fn func_1() -> Struct_1 {
    let var_0 = abs(_wgslsmith_add_vec2_u32((global1.a.ww & vec2<u32>(global0.a.x, 31468u)) >> (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u)), abs(vec2<u32>(u_input.b, u_input.b)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(global0.a.x, global0.a.x), global0.a.ww) % vec2<u32>(32u)))) << (vec2<u32>(countOneBits(1u), 0u) % vec2<u32>(32u));
    var var_1 = func_5(Struct_3(Struct_1(global0.a), func_4(global1.a.xy, _wgslsmith_f_op_f32(-2674f * _wgslsmith_f_op_f32(f32(-1f) * -1397f)), func_2(global0.a.x < 25432u), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(2214f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2032f, 795f)) + _wgslsmith_div_f32(1677f, -987f))))));
    let var_2 = vec4<u32>(abs(var_0.x), global1.a.x, _wgslsmith_clamp_u32(4294967295u, ~var_0.x, func_3(Struct_1(vec4<u32>(64982u, 67018u, global1.a.x, var_0.x)), 476f <= _wgslsmith_f_op_f32(floor(var_1.b.x)))), global0.a.x);
    return Struct_1(global1.a);
}

fn func_6(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = arg_3.a.a & ~vec4<u32>(~_wgslsmith_div_u32(1u, 1u), u_input.b, u_input.b ^ reverseBits(arg_3.b), func_4(global0.a.zy >> (arg_3.a.a.xy % vec2<u32>(32u)), _wgslsmith_f_op_f32(-1378f + 1512f), func_2(false), vec4<bool>(true, true, true, true)));
    global0 = func_1();
    var_0 = vec4<u32>(firstTrailingBit(~arg_0), global0.a.x, 17935u, 7822u);
    global0 = arg_3.a;
    let var_1 = Struct_3(Struct_1(global0.a), 1u);
    return Struct_2(select(any(!select(vec2<bool>(true, false), vec2<bool>(false, true), true)), !all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false))), 4294967295u != firstTrailingBit(arg_3.b)), arg_2.yyz);
}

fn func_7(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = select(select(select(!select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, arg_0.a)), !select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), arg_0.a), select(!vec2<bool>(false, arg_0.a), vec2<bool>(true, arg_0.a), func_5(Struct_3(Struct_1(vec4<u32>(global0.a.x, 1u, 1u, 4294967295u)), arg_2.a.x), arg_0.b.x).a)), select(!select(vec2<bool>(arg_0.a, false), vec2<bool>(false, false), vec2<bool>(arg_0.a, arg_0.a)), select(select(vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, arg_0.a), true), select(vec2<bool>(true, arg_0.a), vec2<bool>(true, arg_0.a), true), arg_0.a), vec2<bool>(true, true)), true), !(!(!(!vec2<bool>(arg_0.a, arg_0.a)))), vec2<bool>(func_2(arg_0.a).a, _wgslsmith_mod_u32(max(1u, arg_2.a.x), ~0u) > select(60014u, ~global0.a.x, arg_0.a)));
    let var_1 = arg_0;
    var_0 = select(vec2<bool>(true, true), !vec2<bool>(!(var_1.b.x >= var_1.b.x), func_2(arg_0.a).a), vec2<bool>(arg_0.a & !any(vec4<bool>(arg_0.a, false, arg_0.a, true)), select(-4069i, ~2147483647i, var_0.x | var_0.x) != _wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec3_i32(u_input.c.ywy, vec3<i32>(arg_1.x, arg_1.x, 1i)))));
    let var_2 = min(min(firstTrailingBit(abs(-vec4<i32>(-2147483647i, arg_1.x, arg_1.x, arg_1.x))), u_input.c), ~select(u_input.c, u_input.c, select(vec4<bool>(false, false, var_1.a, false), !vec4<bool>(false, var_0.x, false, arg_0.a), arg_3.a.x != u_input.b)));
    let var_3 = Struct_3(Struct_1(vec4<u32>(28991u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.a.x, global1.a.x, global1.a.x), vec4<u32>(0u, 0u, arg_2.a.x, u_input.b)), 0u, ~(~u_input.b))), arg_2.a.x);
    return Struct_1(min(vec4<u32>(1u, 1u, 13599u, ~var_3.b), global0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_7(func_6(0u, vec2<f32>(467f, 482f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2635f, 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1537f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1555f)) + 677f), _wgslsmith_f_op_f32(ceil(-407f))), Struct_3(func_1(), func_1().a.x)), u_input.c.zxz, Struct_1(global1.a), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec4<i32>(_wgslsmith_sub_i32(~u_input.a, abs(1i)), u_input.a, 2028i, -44062i), vec3<u32>(0u, 47037u, global1.a.x));
}

