struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-596f, -795f, -1639f);

var<private> global1: Struct_1;

var<private> global2: i32;

var<private> global3: array<vec2<bool>, 14>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> i32 {
    global0 = _wgslsmith_f_op_vec3_f32(arg_0 * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, _wgslsmith_f_op_f32(687f - global0.x), _wgslsmith_f_op_f32(145f - global0.x)))));
    var var_0 = vec3<bool>(true, false, true);
    return ~firstLeadingBit(60i);
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    global1 = Struct_1(global1.a, global1.b);
    let var_0 = global1.a;
    return ~_wgslsmith_div_i32(func_3(_wgslsmith_f_op_vec3_f32(abs(arg_0)), ~4294967295u), firstLeadingBit(countOneBits(37726i))) | ~(~(-104531i));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global1 = Struct_1(0i, -722f);
    var var_0 = arg_2;
    var var_1 = true;
    let var_2 = Struct_1(~_wgslsmith_add_i32(arg_1, -_wgslsmith_add_i32(-1i, var_0.a)), -101f);
    var var_3 = arg_2;
    return var_2;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global2 = i32(-1i) * -select(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, u_input.a.x, -697i), u_input.a.zxz, arg_0), vec3<i32>(arg_1.a, 15134i, 0i)), func_2(vec3<f32>(1120f, arg_3.b, global0.x)), true);
    global1 = func_4(max(firstTrailingBit(abs(max(0u, 55467u))), reverseBits(~4294967295u)), 1i, Struct_1(countOneBits(~(i32(-1i) * -46431i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) - _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(arg_1.b + 1094f)))));
    var var_0 = !select(vec4<bool>(true, true, false, any(vec3<bool>(true, true, true))), !vec4<bool>(select(true, false, true), true, true, true), !any(select(vec2<bool>(false, false), global3[_wgslsmith_index_u32(1607u, 14u)], true)));
    var var_1 = _wgslsmith_sub_vec4_i32(reverseBits((select(u_input.a, u_input.a, true) & (vec4<i32>(2147483647i, arg_1.a, u_input.a.x, 2147483647i) << (vec4<u32>(4294967295u, 4294967295u, 1u, 66210u) % vec4<u32>(32u)))) | -firstLeadingBit(u_input.a)), ~u_input.a);
    global3 = array<vec2<bool>, 14>();
    return Struct_1(abs(arg_1.a), 279f);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>) -> Struct_1 {
    return arg_0;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = func_6(func_5(~u_input.a.wwz, arg_2, func_4(17999u, ~func_2(vec3<f32>(-327f, 1000f, -1011f)), Struct_1(u_input.a.x, -343f)), func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(61040u, 28059u), vec2<u32>(4294967295u, 0u)), 22838i >> (0u % 32u), arg_3)), vec3<bool>(!any(vec2<bool>(true, true)) || (1535f >= _wgslsmith_div_f32(-1837f, arg_2.b)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), false), vec2<i32>(47761i, func_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1597f, 362f, -789f))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 16631u, 1u, 4294967295u), vec4<u32>(4623u, 4294967295u, 45239u, 50508u))) & arg_3.a));
    var var_1 = func_4(1u, abs(abs(-countOneBits(-34819i))), Struct_1(-6338i, arg_3.b));
    let var_2 = _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.a.zy, -u_input.a.zy)), u_input.a.x) ^ ~arg_3.a;
    let var_3 = u_input.a.xxw;
    let var_4 = vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u)), countOneBits(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 27201u, 0u), vec3<u32>(109603u, 56762u, 52165u)))), ~_wgslsmith_dot_vec4_u32(~select(vec4<u32>(4294967295u, 5391u, 72585u, 61322u), vec4<u32>(67391u, 1u, 0u, 1892u), vec4<bool>(true, true, true, false)), select(~vec4<u32>(4294967295u, 1u, 80347u, 0u), ~vec4<u32>(18017u, 51858u, 12906u, 0u), vec4<bool>(true, true, true, true))), 1u);
    return !vec3<bool>(true && any(vec4<bool>(true, true, true, true)), true || (56573u < min(71513u, var_4.x)), true);
}

fn func_7(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: u32) -> Struct_1 {
    let var_0 = func_5(u_input.a.zyw, func_5(vec3<i32>(abs(_wgslsmith_add_i32(-1i, u_input.a.x)), abs(-1i), 0i), func_4(reverseBits(min(45111u, arg_3)), _wgslsmith_mod_i32(-global1.a, -22503i), Struct_1(abs(-1i), -1646f)), Struct_1(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1639f, 2256f)))), func_6(Struct_1(min(u_input.a.x, 1i), global1.b), vec3<bool>(true, true, arg_1), vec2<i32>(u_input.a.x & 18632i, -global1.a))), func_6(func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 72079u) & vec3<u32>(38158u, 1u, arg_3), select(vec3<u32>(arg_3, arg_3, 4294967295u), vec3<u32>(49041u, arg_3, 111392u), arg_1)), global1.a, Struct_1(u_input.a.x, arg_0)), func_1(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, 383f, global0.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b, -212f, 494f), vec3<f32>(-1000f, global1.b, 1306f), vec3<bool>(true, true, arg_1)))), vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), -191f, _wgslsmith_f_op_f32(738f - 1089f)), Struct_1(~u_input.a.x, _wgslsmith_div_f32(-111f, -611f)), func_6(Struct_1(u_input.a.x, -1430f), !vec3<bool>(true, true, arg_1), u_input.a.yx)), u_input.a.wx), Struct_1(-countOneBits(i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(-global1.b)));
    global3 = array<vec2<bool>, 14>();
    global1 = var_0;
    let var_1 = u_input.a.xz;
    let var_2 = ~vec2<i32>(-3381i, _wgslsmith_clamp_i32(1i, u_input.a.x, u_input.a.x) ^ (i32(-1i) * -2147483647i));
    return Struct_1(u_input.a.x, -138f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(852f)) * _wgslsmith_f_op_f32(floor(365f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x)))))), vec3<f32>(global1.b, global1.b, -564f));
    var var_0 = func_7(1315f, all(select(!func_1(vec3<f32>(832f, global0.x, global1.b), vec3<f32>(global1.b, 1319f, global1.b), Struct_1(u_input.a.x, global1.b), Struct_1(global1.a, -881f)), func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b, 1053f, global1.b), vec3<f32>(-566f, global1.b, global0.x), vec3<bool>(false, false, true))), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 345f, -669f), vec3<f32>(global1.b, global0.x, global1.b)), Struct_1(-1i, global0.x), Struct_1(u_input.a.x, -987f)), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_6(Struct_1(global1.a, global1.b), vec3<bool>(true, true, true), ~vec2<i32>(u_input.a.x, 0i)).b * -490f))), reverseBits(34159u));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, -2313f) - _wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_div_f32(-1100f, 1598f), any(vec3<bool>(true, true, true))))), 899f);
    global3 = array<vec2<bool>, 14>();
    let var_2 = func_7(var_0.b, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(firstTrailingBit(vec3<i32>(-2147483647i, var_0.a, var_0.a)), func_6(Struct_1(var_0.a, var_0.b), vec3<bool>(true, true, false), vec2<i32>(var_0.a, u_input.a.x)), func_6(Struct_1(var_0.a, 331f), vec3<bool>(true, true, true), vec2<i32>(var_0.a, -1i)), func_4(52589u, var_0.a, Struct_1(global1.a, 2400f))).b + _wgslsmith_div_f32(1198f, var_1.x))), abs(~(~(~46022u))));
    let x = u_input.a;
    s_output = StorageBuffer(26922u);
}

