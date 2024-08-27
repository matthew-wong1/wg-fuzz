struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-3725i, -33375i, 0i, 36113i);

var<private> global1: vec2<u32> = vec2<u32>(12266u, 1u);

var<private> global2: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = ~_wgslsmith_dot_vec4_u32(u_input.a, ~abs(vec4<u32>(global1.x, global1.x, u_input.a.x, u_input.a.x))) != 1u;
    let var_1 = Struct_1((global1.x << (0u % 32u)) >> (1u % 32u), select(vec2<bool>(true, false), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true)), all(vec4<bool>(global0.x >= 23875i, true, true, true))), global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, -160f) + _wgslsmith_f_op_f32(432f + 1000f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, 574f, -295f) - vec3<f32>(arg_0.a, -362f, 1000f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1034f, global2.a, arg_0.a)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1164f, -894f, 1100f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-677f, 900f, global2.a), vec3<f32>(-1146f, global2.a, arg_0.a), vec3<bool>(false, true, false))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a, arg_0.a, -161f), vec3<f32>(global2.a, -299f, 1047f), vec3<bool>(true, true, false)))))));
    var var_2 = select(select(!(!var_1.b), var_1.b, select(vec2<bool>(true, true), !(!var_1.b), vec2<bool>(var_1.b.x, false))), !var_1.b, select(select(vec2<bool>(true, 0u < global1.x), vec2<bool>(true, true), !vec2<bool>(var_1.b.x, false)), vec2<bool>(!(!var_1.b.x), true), var_1.b));
    var var_3 = Struct_2(arg_0.a);
    var_2 = vec2<bool>(var_1.b.x, (firstLeadingBit(var_1.c) & _wgslsmith_mult_i32(global0.x, ~global0.x)) > ~global0.x);
    return _wgslsmith_dot_vec3_u32(reverseBits(~u_input.a.wwz), firstTrailingBit(u_input.a.yzw));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_4(select(!select(select(vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.b, arg_0.b.x), arg_0.b, vec2<bool>(arg_0.b.x, false)), arg_0.b, all(select(!vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true), select(vec4<bool>(arg_0.b.x, true, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, false, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, false, false, arg_0.b.x)), !vec4<bool>(false, arg_0.b.x, arg_0.b.x, true)))));
    global2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)));
    var var_1 = _wgslsmith_clamp_vec2_u32(u_input.a.xx, ~u_input.a.xy, vec2<u32>(_wgslsmith_sub_u32(func_3(Struct_2(arg_0.e.x)), abs(~arg_0.a)), min(arg_0.a, ~select(u_input.a.x, 80295u, true))));
    global2 = Struct_2(arg_0.e.x);
    var var_2 = var_0;
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(354f)) + _wgslsmith_div_f32(global2.a, global2.a)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> vec2<bool> {
    global0 = ~_wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, 48140i, global0.x, global0.x), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, global0.x, -69872i, 2147483647i), vec4<i32>(global0.x, global0.x, -26385i, global0.x), vec4<i32>(global0.x, global0.x, global0.x, global0.x))), vec4<i32>(36093i, global0.x, global0.x, -1i)) ^ (_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global0.x, global0.x, -1i, global0.x), select(~vec4<i32>(global0.x, 2147483647i, -2147483647i, 1i), reverseBits(vec4<i32>(global0.x, 67392i, global0.x, global0.x)), vec4<bool>(false, true, false, false))) >> (vec4<u32>(1u, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(global1.x, u_input.a.x))), 112806u, _wgslsmith_add_u32(0u, 0u)) % vec4<u32>(32u)));
    global1 = ~vec2<u32>(8363u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.xxw, u_input.a.wwz, vec3<u32>(1u, global1.x, u_input.a.x)) | select(u_input.a.zzz, vec3<u32>(global1.x, 16207u, u_input.a.x), vec3<bool>(false, false, false)), vec3<u32>(_wgslsmith_clamp_u32(32163u, 18551u, 48690u), ~33296u, firstLeadingBit(0u))));
    var var_0 = !select(vec2<bool>(true, true), vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), select(true, true, u_input.a.x != global1.x)), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) - arg_0) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-894f, arg_0.x, arg_0.x, arg_1.a)) * _wgslsmith_f_op_vec4_f32(arg_0 * arg_0)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1087f, arg_1.a, 112f, -499f), arg_0))))) + arg_0));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-547f - -1000f))) * var_1.x), 966f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1220f, -203f))), _wgslsmith_f_op_f32(abs(184f)))));
    return select(vec2<bool>(true, false), !select(vec2<bool>(true, any(vec3<bool>(var_0.x, false, var_0.x))), !(!vec2<bool>(true, var_0.x)), !select(vec2<bool>(false, true), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, true))), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-352f * -346f)))) == 1747f);
}

fn func_5(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = Struct_3(arg_0);
    var var_1 = 0u;
    global0 = vec4<i32>(-global0.x, _wgslsmith_clamp_i32(7890i, var_0.a.c, reverseBits(firstLeadingBit(_wgslsmith_div_i32(var_0.a.c, arg_0.c)))), i32(-1i) * -2147483647i, -7807i);
    let var_2 = !vec3<bool>(!arg_0.b.x, arg_0.b.x, any(!(!vec3<bool>(false, arg_0.b.x, true))));
    var var_3 = Struct_1(~_wgslsmith_div_u32(countOneBits(_wgslsmith_mod_u32(arg_0.a, var_0.a.a)), 81294u), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1282f, -1082f, _wgslsmith_f_op_f32(f32(-1f) * -456f))), Struct_2(arg_0.e.x)), _wgslsmith_mult_i32(-(~arg_0.c), ~(~abs(global0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.d * var_0.a.e.x), -1200f), var_0.a.e);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.e.x, global2.a, 2549f, var_0.a.d) - vec4<f32>(1969f, -1987f, var_3.e.x, 2632f))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(536f, _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_f_op_f32(abs(203f)))))));
}

fn func_6(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = vec2<u32>(abs(1u), select(~u_input.a.x, 1u, true) | u_input.a.x);
    var_0 = u_input.a.yw;
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(-31373i, 21075i), ~global0.x);
    var_0 = vec2<u32>(select(22038u, 54563u, true), global1.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1492f, global2.a, arg_0.x))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.yyy), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, global2.a, global2.a) + vec3<f32>(global2.a, global2.a, global2.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.wxw, arg_0.wxz, false)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, global2.a, 919f)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(844f, func_2(Struct_1(u_input.a.x, vec2<bool>(true, true), 0i, -437f, arg_0.wzw)).a, _wgslsmith_f_op_f32(abs(977f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1042f), arg_0.x, arg_0.x))), vec3<f32>(arg_0.x, global2.a, -1639f))), vec3<bool>(false, all(vec4<bool>(true, true, true, true)), true)));
    return func_2(Struct_1(countOneBits(4294967295u), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), _wgslsmith_dot_vec2_i32(select(select(var_1, vec2<i32>(10061i, global0.x), false), global0.xw >> (vec2<u32>(38946u, 11795u) % vec2<u32>(32u)), u_input.a.x < global1.x), -var_1), var_2.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-277f, 1150f, true)), 499f, 1114f) * vec3<f32>(func_2(Struct_1(7066u, vec2<bool>(true, true), global0.x, -748f, arg_0.wzy)).a, _wgslsmith_f_op_f32(select(var_2.x, -139f, false)), global2.a))));
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_3 {
    let var_0 = func_6(_wgslsmith_f_op_vec4_f32(func_5(Struct_1(global1.x, func_4(_wgslsmith_div_vec4_f32(vec4<f32>(-1378f, arg_1, 641f, -771f), vec4<f32>(-168f, global2.a, global2.a, -741f)), func_2(Struct_1(79071u, vec2<bool>(true, false), -29513i, -825f, vec3<f32>(476f, -1615f, -1000f)))), -53728i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-478f + global2.a) - _wgslsmith_f_op_f32(floor(533f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1757f, -1000f, 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(272f, arg_1, -237f))))))));
    let var_1 = var_0;
    var var_2 = func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(332f, global2.a, func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1922f, arg_1, -1047f, -486f))).a, arg_1)));
    let var_3 = abs(countOneBits(vec4<i32>(-1i) * -vec4<i32>(2147483647i, 15221i, global0.x, global0.x)));
    global1 = ~u_input.a.wz;
    return Struct_3(Struct_1(arg_0, !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), global0.x, var_2.a, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1)), global2.a, _wgslsmith_f_op_f32(var_2.a * arg_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_dot_vec3_u32(u_input.a.wzx, vec3<u32>(_wgslsmith_div_u32(~global1.x, 5320u), _wgslsmith_clamp_u32(min(4294967295u, global1.x), ~global1.x, 1u), 31712u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.a)) + _wgslsmith_f_op_f32(abs(1420f)))));
    var var_1 = Struct_4(func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-173f, -953f, var_0.a.e.x, 283f), vec4<f32>(-221f, 2993f, 1646f, var_0.a.e.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(966f, global2.a, global2.a, 240f))))), func_6(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1659f), var_0.a.d, _wgslsmith_f_op_vec4_f32(func_5(Struct_1(var_0.a.a, vec2<bool>(false, false), 1i, 755f, vec3<f32>(global2.a, 671f, global2.a)))).x, _wgslsmith_f_op_f32(-var_0.a.e.x)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0.a.e + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(func_1(u_input.a.x, -2044f).a.e, _wgslsmith_f_op_vec3_f32(select(var_0.a.e, var_0.a.e, vec3<bool>(var_0.a.b.x, var_0.a.b.x, false)))), vec3<f32>(_wgslsmith_f_op_f32(global2.a - -873f), -1129f, 103f))))));
    let var_3 = -329f;
    var_1 = Struct_4(vec2<bool>(true, var_1.a.x || false));
    var var_4 = vec3<u32>(abs(4294967295u), _wgslsmith_sub_u32(~(~u_input.a.x), ~(~abs(u_input.a.x))), _wgslsmith_dot_vec3_u32(abs(~(~u_input.a.wzz)), select(u_input.a.wyx, u_input.a.yyx, vec3<bool>(true, var_0.a.b.x, all(vec2<bool>(var_0.a.b.x, false))))));
    var_1 = Struct_4(var_1.a);
    let var_5 = select(u_input.a, u_input.a, select(!select(select(vec4<bool>(false, var_0.a.b.x, true, var_1.a.x), vec4<bool>(true, var_1.a.x, false, var_1.a.x), vec4<bool>(var_0.a.b.x, var_1.a.x, false, false)), select(vec4<bool>(true, false, true, var_0.a.b.x), vec4<bool>(true, var_1.a.x, true, var_1.a.x), vec4<bool>(var_0.a.b.x, false, true, true)), vec4<bool>(var_1.a.x, false, false, var_0.a.b.x)), select(vec4<bool>(false, var_0.a.b.x | var_0.a.b.x, select(true, var_1.a.x, false), !var_0.a.b.x), !vec4<bool>(var_1.a.x, var_1.a.x, false, var_0.a.b.x), vec4<bool>(var_0.a.b.x, var_0.a.b.x, true, false)), !(!vec4<bool>(var_0.a.b.x, var_1.a.x, true, var_0.a.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_0.a.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, max(global0.x, var_0.a.c), 0i, _wgslsmith_dot_vec3_i32(global0.wyx, _wgslsmith_mult_vec3_i32(global0.zyy, global0.wzx))), vec4<i32>(12826i, global0.x, global0.x, max(1i, _wgslsmith_mult_i32(-19855i, global0.x)))), global0.x, 18292u);
}

