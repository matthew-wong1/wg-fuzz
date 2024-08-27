struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(101334u, 0u, 0u);

var<private> global1: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> u32 {
    global1 = !(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1593f, -270f))))) > 1000f);
    global1 = !all(vec2<bool>(true, true));
    let var_0 = vec2<i32>(-1i << (_wgslsmith_add_u32(global0.x, 0u) % 32u), ~(~u_input.b.x));
    global0 = countOneBits(vec3<u32>(_wgslsmith_sub_u32(global0.x, 4294967295u), ~max(~4294967295u, 1u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 32844u) & ~global0.x, _wgslsmith_dot_vec2_u32(global0.yz, _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, global0.x), global0.xz, global0.yy)))));
    global1 = all(vec4<bool>((_wgslsmith_mod_u32(4294967295u, global0.x) >= (103207u ^ global0.x)) & true, any(vec2<bool>(true, true)), select(true, any(vec4<bool>(false, false, false, true)) | false, true), false));
    return ~1u;
}

fn func_2() -> Struct_1 {
    let var_0 = reverseBits(abs(min(~_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, 4294967295u, 1u), vec4<u32>(global0.x, global0.x, 1u, 73623u)), ~vec4<u32>(1u, 1u, 1u, global0.x))));
    let var_1 = 505f;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(350f * var_1) == _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_add_u32(global0.x & func_3(-120f), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 9700u, var_0.x, var_0.x), var_0))) >> (38232u % 32u));
    global1 = ~_wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.x, ~var_2.b), global0.x) <= ~global0.x;
    var var_3 = select(vec3<bool>(false, false, var_2.a), vec3<bool>(true, false, var_2.a || true), var_2.a);
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(1607f - arg_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x)))));
    var var_1 = ~global0.x;
    var var_2 = ~firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 34883u, global0.x, 8871u), vec4<u32>(global0.x, arg_0.b, 2441u, 0u)), ~vec4<u32>(arg_0.b, global0.x, 52573u, 45163u)), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.b, arg_0.b, 4294967295u, arg_0.b)), vec4<u32>(global0.x, 1u, 108680u, 4294967295u), ~vec4<u32>(20513u, global0.x, 116656u, arg_0.b))));
    var_2 = ~vec4<u32>(~(~(30435u << (global0.x % 32u))), ~countOneBits(_wgslsmith_div_u32(1u, global0.x)), _wgslsmith_add_u32(20419u, 93558u) & _wgslsmith_sub_u32(1u, var_2.x), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, global0.x, var_2.x, 4294967295u), vec4<u32>(arg_0.b, 1u, global0.x, global0.x))));
    var var_3 = Struct_1(false, 0u);
    return arg_0;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = ~firstLeadingBit(arg_2.b);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -148f)), arg_3))), -484f);
    var var_2 = func_4(Struct_1(!arg_2.a | any(vec3<bool>(false, arg_2.a, false)), ~(func_3(-675f) >> (33874u % 32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(floor(-523f)), 163f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, var_1.x, -683f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, 1511f, 954f) * vec3<f32>(var_1.x, 900f, 299f))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(-arg_3));
    let var_3 = func_2().a;
    return arg_2;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global0 = ~vec3<u32>(_wgslsmith_mult_u32(~arg_0.b, ~_wgslsmith_div_u32(32349u, global0.x)), ~(~(~global0.x)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(global0.x >> (0u % 32u), firstTrailingBit(31330u)), global0.x));
    let var_0 = arg_0;
    global1 = arg_0.a;
    var var_1 = -max(u_input.b.xzw, select(abs(vec3<i32>(-2147483647i, -1i, -1i)), _wgslsmith_clamp_vec3_i32(u_input.c.zyw, vec3<i32>(3927i, -1i, u_input.a), _wgslsmith_mult_vec3_i32(u_input.b.yyx, vec3<i32>(-47644i, -2147483647i, u_input.d))), vec3<bool>(all(vec2<bool>(false, arg_0.a)), false, true)));
    global0 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(max(global0.x, var_0.b), ~arg_0.b), _wgslsmith_sub_u32(73482u, global0.x >> (global0.x % 32u)), arg_0.b), (vec3<u32>(1u, var_0.b, 19301u) ^ countOneBits(vec3<u32>(83241u, 4163u, 30148u))) | ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b, 19903u, 1u), vec3<u32>(1u, 1u, 4294967295u))) << (vec3<u32>(~global0.x, _wgslsmith_dot_vec2_u32(global0.zz, global0.zz | select(vec2<u32>(4294967295u, arg_0.b), vec2<u32>(0u, var_0.b), arg_0.a)), abs(~reverseBits(1u))) % vec3<u32>(32u));
    return Struct_1(func_2().a, ~(~0u));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: bool) -> Struct_1 {
    let var_0 = func_6(func_5(vec3<i32>(~reverseBits(u_input.c.x), u_input.b.x, u_input.c.x), func_4(func_2(), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, 1744f, arg_0), vec3<f32>(1550f, 557f, 248f), arg_1.x))))), func_2(), _wgslsmith_f_op_f32(-arg_0)));
    var var_1 = var_0;
    let var_2 = select(!arg_1.wyw, !arg_1.zxy, !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(select(arg_0, -415f, true)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1908f)))));
    global1 = 0i >= _wgslsmith_add_i32(u_input.a, u_input.c.x);
    var var_3 = func_4(Struct_1(true, select(global0.x, var_0.b, false | all(arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, arg_0, arg_0))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-315f, -819f, -807f), vec3<f32>(1000f, arg_0, 486f))))))));
    return func_4(func_6(Struct_1(var_1.a, ~func_4(var_0, vec3<f32>(arg_0, arg_0, 302f)).b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1276f, arg_0, arg_0), vec3<f32>(arg_0, -406f, 400f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1449f, -321f))), vec3<f32>(_wgslsmith_f_op_f32(select(arg_0, -2260f, var_2.x)), _wgslsmith_f_op_f32(select(397f, arg_0, var_1.a)), _wgslsmith_f_op_f32(112f - arg_0)), true))));
}

fn func_7(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> i32 {
    let var_0 = select(!vec2<bool>(arg_3.a, _wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(2147483647i, u_input.b.x)) > -u_input.b.x), !vec2<bool>(1i != ~u_input.b.x, false), select(vec2<bool>(!arg_3.a, false), select(vec2<bool>(!arg_3.a, !arg_3.a), vec2<bool>(false & arg_3.a, arg_3.a), select(select(vec2<bool>(arg_3.a, true), vec2<bool>(false, arg_3.a), vec2<bool>(arg_3.a, arg_3.a)), select(vec2<bool>(false, false), vec2<bool>(true, arg_3.a), vec2<bool>(arg_3.a, false)), arg_2 < arg_3.b)), !arg_3.a));
    global0 = firstLeadingBit(vec3<u32>(arg_2, ~global0.x | arg_2, abs(1u))) & _wgslsmith_sub_vec3_u32(max(~vec3<u32>(arg_3.b, global0.x, 11136u) ^ abs(vec3<u32>(arg_2, 41711u, 68197u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, arg_2, arg_2), vec3<u32>(1u, arg_3.b, global0.x))), ~(~vec3<u32>(global0.x, arg_2, 119615u)));
    var var_1 = arg_1.x;
    let var_2 = _wgslsmith_add_u32(_wgslsmith_div_u32(arg_3.b, func_4(arg_3, vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.x)), 1002f, arg_0.x)).b), 34499u);
    let var_3 = _wgslsmith_div_vec3_i32(-max(select(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.a), vec3<i32>(u_input.a, 2147483647i, -38727i)), vec3<i32>(1i, u_input.a, u_input.b.x), select(vec3<bool>(false, var_0.x, true), vec3<bool>(false, arg_3.a, var_0.x), true)), vec3<i32>(u_input.a, u_input.a, 11584i) & -u_input.c.xwy), countOneBits(-u_input.b.xxw));
    return firstTrailingBit(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_7(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2395f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -937f), _wgslsmith_f_op_f32(ceil(177f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(632f, -1152f) * vec2<f32>(1057f, -1152f)))), global0.x, func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1712f, -2421f, true)), -1808f), vec4<bool>(true, true, true, any(vec3<bool>(true, false, false))), false)) != 94i;
    var var_0 = -vec3<i32>(_wgslsmith_mult_i32(0i, i32(-1i) * -u_input.d), 1i, ~u_input.c.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(623f, _wgslsmith_div_f32(1707f, 627f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-434f, -1000f))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f)))), true)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(floor(-1920f)), -2254f))), select(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), vec2<bool>(func_5(vec3<i32>(var_0.x, 34265i, var_0.x), Struct_1(false, 8335u), Struct_1(false, 4294967295u), 545f).a, (0i >> (global0.x % 32u)) >= (var_0.x ^ 24241i)), !vec2<bool>(any(vec3<bool>(true, true, false)), true))));
    var var_2 = select(!vec4<bool>(true, true, true, !any(vec4<bool>(true, true, false, true))), vec4<bool>(select(true, true, false) && true, true, any(vec3<bool>(u_input.c.x > 2147483647i, true, var_0.x == -35305i)), select(false, true, func_1(var_1.x, vec4<bool>(false, false, true, true), true).a) || select(true, true, false)), true & !func_2().a);
    var_0 = -u_input.c.zwx;
    let var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(abs(firstTrailingBit(vec2<i32>(-1i, -33183i))), -(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(-3325i, var_0.x)) << (~vec2<u32>(global0.x, global0.x) % vec2<u32>(32u)))), _wgslsmith_clamp_i32(2147483647i, i32(-1i) * -2147483647i, reverseBits(var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1329f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3), var_3)), var_3) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3, var_3, 1375f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, 363f, -867f))), false)))), ~(~(vec3<u32>(global0.x, global0.x, 1u) & vec3<u32>(4294967295u, global0.x, global0.x)) | vec3<u32>(global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, 41649u), vec3<u32>(global0.x, 17599u, global0.x)), 82623u)), vec3<f32>(var_3, -1336f, 165f));
}

