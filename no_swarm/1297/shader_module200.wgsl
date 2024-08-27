struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 0u, 22096u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_4) -> i32 {
    let var_0 = select(!(!vec2<bool>(-280f > arg_1.a.x, any(vec2<bool>(true, false)))), arg_2.d, vec2<bool>(true, !select(true, arg_2.d.x, false)));
    let var_1 = firstLeadingBit(vec3<u32>(u_input.b.x, (4294967295u & u_input.a.x) & firstTrailingBit(global0.x), global0.x << (_wgslsmith_div_u32(u_input.a.x, 62754u) % 32u)) >> (~abs(_wgslsmith_mod_vec3_u32(arg_2.a.wzy, arg_2.a.yzx)) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-139f, arg_2.c, var_0.x)) * _wgslsmith_f_op_f32(arg_2.c - -1765f)))), arg_2.c), arg_1.c);
    let var_3 = arg_1;
    var var_4 = all(!select(arg_2.d, var_0, any(vec3<bool>(false, arg_2.d.x, arg_2.d.x))));
    return _wgslsmith_sub_i32(~1i, reverseBits(var_3.b));
}

fn func_2() -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(284f, 1598f, 966f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(178f, 1778f, -156f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -589f), _wgslsmith_div_f32(-1058f, -1390f), -366f)) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1668f, 778f, 1742f)), vec3<f32>(-1118f, -105f, -1708f)))))), _wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(21886i, 2147483647i)), vec2<i32>(1i, 2147483647i)), ~_wgslsmith_mod_vec2_i32(abs(vec2<i32>(-2147483647i, 33386i)), vec2<i32>(1i, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1066f * -659f))), 508f))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-var_0.a), reverseBits(var_0.b) & _wgslsmith_clamp_i32(abs(var_0.b), func_3(reverseBits(14162i), Struct_3(var_0.a, var_0.b, 105f), Struct_4(vec4<u32>(54319u, 42177u, global0.x, 34156u), false, var_0.a.x, vec2<bool>(true, false), var_0.a.zy)), ~reverseBits(-2147483647i)), var_0.c);
    var_0 = Struct_3(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1056f, -462f))))), -372f), 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -394f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.a.x, var_1.c)) + 995f))));
    let var_2 = true;
    let var_3 = !select(vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1000f) <= _wgslsmith_div_f32(var_1.a.x, var_0.a.x), var_2), !vec2<bool>(all(vec4<bool>(false, var_2, var_2, var_2)), false), (!var_2 && false) & true);
    return var_3.x;
}

fn func_1() -> vec2<bool> {
    global0 = ~(~(~(~u_input.a | ~vec3<u32>(u_input.a.x, u_input.b.x, 43838u))));
    var var_0 = true;
    var var_1 = 1f;
    var var_2 = Struct_1(func_2(), abs(reverseBits(u_input.b.x)), vec3<i32>(2147483647i, ~_wgslsmith_mod_i32(-2147483647i, max(1i, 2147483647i)), -10685i));
    global0 = u_input.a;
    return select(vec2<bool>(var_2.a, true), !vec2<bool>(!all(vec3<bool>(true, false, false)), false), var_2.a);
}

fn func_4(arg_0: f32, arg_1: vec2<bool>) -> f32 {
    let var_0 = i32(-1i) * -_wgslsmith_mult_i32(~countOneBits(-51617i), _wgslsmith_sub_i32(1i, _wgslsmith_add_i32(3995i, 19662i)));
    global0 = _wgslsmith_add_vec3_u32(countOneBits((u_input.a & ~u_input.a) & vec3<u32>(_wgslsmith_add_u32(global0.x, u_input.b.x), global0.x, _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(global0.x, global0.x)))), u_input.a);
    let var_1 = u_input.b;
    global0 = abs(vec3<u32>(0u, ~_wgslsmith_mult_u32(global0.x, 18515u), min(global0.x >> (27671u % 32u), 24575u)) >> (u_input.a % vec3<u32>(32u)));
    let var_2 = _wgslsmith_clamp_u32(6366u, 23198u, ~select(global0.x, 39096u, true));
    return arg_0;
}

fn func_5(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<bool>) -> Struct_4 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(arg_1, arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(arg_0.x, arg_2)), _wgslsmith_f_op_f32(arg_1 + 408f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0.x))))))), arg_1, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-arg_0.x)), arg_2)));
    var var_1 = _wgslsmith_div_vec2_u32(~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, global0.x), global0.xz), global0.xx, global0.zz) | ~abs(~u_input.b), firstTrailingBit(_wgslsmith_mod_vec2_u32(u_input.a.zz, ~vec2<u32>(u_input.b.x, global0.x))));
    var var_2 = Struct_2(select(arg_2, func_1(), true), -779f);
    var var_3 = Struct_1(!var_2.a.x, ~u_input.b.x, vec3<i32>(1i, reverseBits(abs(_wgslsmith_mult_i32(-5959i, 45962i))), 2147483647i));
    let var_4 = select(!vec3<bool>(!any(vec3<bool>(arg_2.x, var_2.a.x, arg_2.x)), var_3.c.x > abs(var_3.c.x), !any(vec3<bool>(false, var_2.a.x, var_3.a))), vec3<bool>(any(select(vec3<bool>(false, var_3.a, false), select(vec3<bool>(var_3.a, false, var_2.a.x), vec3<bool>(var_2.a.x, false, false), vec3<bool>(true, var_3.a, true)), !vec3<bool>(var_2.a.x, false, arg_2.x))), arg_2.x, true), select(select(vec3<bool>(!arg_2.x, true, !var_3.a), !vec3<bool>(false, var_3.a, arg_2.x), !vec3<bool>(var_3.a, false, false)), select(vec3<bool>(false, arg_2.x, false), !(!vec3<bool>(true, arg_2.x, false)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, var_3.a, var_2.a.x), vec3<bool>(arg_2.x, true, true)), vec3<bool>(true, true, false), false)), select(!(!vec3<bool>(var_3.a, arg_2.x, var_3.a)), !select(vec3<bool>(false, true, arg_2.x), vec3<bool>(false, true, var_2.a.x), true), !(!vec3<bool>(true, false, arg_2.x)))));
    return Struct_4(vec4<u32>(15211u, ~min(var_3.b, u_input.b.x) | ((u_input.a.x << (43758u % 32u)) ^ reverseBits(global0.x)), reverseBits(~var_3.b | abs(1u)), var_1.x), ~_wgslsmith_mod_i32(var_3.c.x, ~(-15474i)) >= -firstTrailingBit(var_3.c.x), var_0.x, var_4.zy, vec2<f32>(_wgslsmith_f_op_f32(min(-886f, _wgslsmith_f_op_f32(862f * _wgslsmith_f_op_f32(sign(-1131f))))), var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    global0 = u_input.a;
    let var_0 = func_5(vec4<f32>(-339f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-373f, 1358f))), -622f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-123f * -321f) + _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(step(-846f, -1000f)), func_1())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1881f), -1140f, _wgslsmith_add_u32(41659u, global0.x) > 4294967295u))), vec2<bool>(true, !all(vec2<bool>(false, true))));
    var var_1 = max(max(u_input.b, u_input.a.yz), max(var_0.a.yz, ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 52311u), vec2<u32>(19455u, 10456u))));
    var var_2 = false;
    var var_3 = countOneBits(~_wgslsmith_div_i32(23783i, firstTrailingBit(_wgslsmith_clamp_i32(1i, 2147483647i, 28279i))));
    let var_4 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(sign(1466f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c * var_0.e.x), var_0.e.x)), var_0.c), func_3(select(firstLeadingBit(select(-7831i, 1i, false)), 1i, true), Struct_3(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.c, -622f, var_0.c))), _wgslsmith_clamp_i32(-1i, 2147483647i, -382i) << (var_0.a.x % 32u), -309f), var_0), var_0.c);
    var var_5 = ~global0.x;
    var_3 = -var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1886f), 18765i, countOneBits((abs(vec4<i32>(-1026i, var_4.b, -2147483647i, -13372i)) ^ -vec4<i32>(var_4.b, 0i, var_4.b, var_4.b)) | select(vec4<i32>(var_4.b, var_4.b, var_4.b, var_4.b), select(vec4<i32>(var_4.b, -1i, 27530i, var_4.b), vec4<i32>(-1i, var_4.b, var_4.b, -2147483647i), vec4<bool>(true, false, true, true)), vec4<bool>(var_0.d.x, var_0.d.x, var_0.b, var_0.d.x))), vec2<i32>(-29050i, var_4.b));
}

