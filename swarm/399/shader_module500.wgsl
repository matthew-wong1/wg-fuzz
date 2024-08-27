struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: bool;

var<private> global2: bool = false;

var<private> global3: bool = true;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec3<u32> {
    return countOneBits(~abs(max(~vec3<u32>(u_input.d, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.b, u_input.d))));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>) -> bool {
    let var_0 = _wgslsmith_sub_u32(~(u_input.a.x << (22964u % 32u)), 0u);
    let var_1 = ~_wgslsmith_add_u32(~u_input.d, u_input.d);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(722f, -887f, 257f, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, -394f, global0.x)))))), select(vec3<bool>(0u <= _wgslsmith_add_u32(var_1, 24680u), all(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), (u_input.c | -26610i) <= 9842i), !vec3<bool>(arg_0, true, true), vec3<bool>(!(global0.x > 1395f), any(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(arg_0, false, arg_0, arg_0))), 1f > _wgslsmith_f_op_f32(min(global0.x, -3519f)))));
    var var_3 = ~4294967295u;
    global1 = !arg_0;
    return !any(select(vec4<bool>(false, false, true, true), vec4<bool>(arg_0, !arg_0, true, true), vec4<bool>(any(var_2.b), true, var_2.b.x && false, true)));
}

fn func_2() -> bool {
    var var_0 = Struct_4(!vec3<bool>(!all(vec3<bool>(false, false, true)), true, true), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(-543f - 879f), global0.x, -399f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1340f, global0.x, -315f, -101f))), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))));
    let var_1 = 17758u;
    var var_2 = Struct_4(!var_0.b.b, var_0.b);
    global2 = var_0.a.x;
    var var_3 = ~abs(~0u);
    return func_4(select(!(!(var_0.b.a.x >= -577f)), !any(select(vec2<bool>(var_2.b.b.x, var_2.a.x), var_2.b.b.yx, var_0.b.b.zz)), true), (min(vec3<u32>(55719u, 0u, 0u), func_3()) ^ func_3()) | ~select(~vec3<u32>(u_input.d, var_1, 1u), vec3<u32>(4294967295u, 15591u, 32749u), vec3<bool>(var_2.a.x, var_0.a.x, true)));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: vec4<f32>) -> i32 {
    global1 = arg_1;
    let var_0 = -vec3<i32>(max(u_input.c, -u_input.c), 6838i, _wgslsmith_mult_i32(~(-u_input.c), u_input.c));
    global1 = arg_1;
    var var_1 = Struct_1(var_0.x, (~1i << (arg_0.x % 32u)) >> (u_input.d % 32u));
    let var_2 = !vec3<bool>(select(func_2(), true, false), false, !(~arg_0.x >= arg_0.x));
    return ~_wgslsmith_mod_i32(~u_input.c, 2147483647i);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: vec2<bool>) -> u32 {
    let var_0 = Struct_1(-22478i, arg_1.a);
    let var_1 = vec4<bool>(true, any(!select(!vec4<bool>(arg_3.x, true, true, true), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), !vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x))), any(vec4<bool>(true, !any(vec3<bool>(arg_3.x, arg_3.x, false)), any(!vec4<bool>(false, true, arg_3.x, arg_3.x)), any(!vec3<bool>(arg_3.x, arg_3.x, false)))), true);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(global0.x, -136f)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(1358f, global0.x)), _wgslsmith_f_op_f32(global0.x * 106f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-769f, -105f, global0.x, -154f) + vec4<f32>(-785f, 1000f, 1123f, 1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(786f, 138f, 1000f, global0.x) * vec4<f32>(1000f, arg_2, global0.x, 464f))), func_4(u_input.a.x < u_input.d, ~vec3<u32>(0u, 4294967295u, u_input.d)))) - vec4<f32>(global0.x, arg_2, -224f, arg_2)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2, -171f, arg_2, arg_2)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 189f, arg_2, -1000f) * vec4<f32>(-1000f, -1486f, -352f, global0.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, arg_2, global0.x, global0.x) - vec4<f32>(global0.x, 136f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, global0.x, arg_2, arg_2)))))));
    var var_3 = min(-vec4<i32>(~26158i, _wgslsmith_add_i32(-arg_0, ~u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(-13525i, var_0.b), firstTrailingBit(vec2<i32>(var_0.b, arg_0))), -1i), (abs(firstTrailingBit(vec4<i32>(-7085i, arg_0, -2147483647i, arg_1.b))) | _wgslsmith_clamp_vec4_i32(~vec4<i32>(26221i, 10048i, u_input.c, arg_1.a), firstLeadingBit(vec4<i32>(arg_0, arg_1.a, u_input.c, var_0.a)), vec4<i32>(u_input.c, 2147483647i, 20565i, arg_1.b))) | min(firstLeadingBit(vec4<i32>(19746i, arg_1.a, -4053i, u_input.c)), countOneBits(vec4<i32>(-13072i, 0i, -1i, u_input.c) & vec4<i32>(arg_0, 0i, 2147483647i, arg_0))));
    var_3 = max(-_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, 0i, arg_1.b, u_input.c), vec4<i32>(-arg_1.b, _wgslsmith_mod_i32(arg_1.b, -13024i), firstLeadingBit(arg_0), -8327i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(abs(-37417i), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-2147483647i, arg_0, arg_1.a), -13570i), -2147483647i, 30428i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_3.x, ~var_0.b, _wgslsmith_mod_i32(2147483647i, var_3.x), 25351i), _wgslsmith_div_vec4_i32(~vec4<i32>(arg_0, var_0.a, 1i, u_input.c), vec4<i32>(-1i, arg_0, -1i, var_0.a) & vec4<i32>(var_0.b, 19709i, var_0.b, 1i))), (vec4<i32>(var_3.x, -51408i, arg_0, 15994i) >> (countOneBits(vec4<u32>(0u, 5011u, 2369u, u_input.b)) % vec4<u32>(32u))) | select(-vec4<i32>(45146i, var_3.x, -1i, arg_1.b), vec4<i32>(1i, arg_1.a, u_input.c, -23100i), vec4<bool>(true, arg_3.x, true, var_1.x))));
    return ~_wgslsmith_sub_u32(u_input.a.x, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-83192i) << (func_5(u_input.c, Struct_1(u_input.c, func_1(max(vec4<u32>(1u, u_input.b, 13340u, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 1u)), 0u != u_input.d, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, -312f, global0.x, -893f))))), global0.x, !select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true))) % 32u);
    global1 = !all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(u_input.c < 13778i, true), true));
    let var_1 = _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(u_input.c, -1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-13794i, 21894i), vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c))), select(vec2<i32>(2004i, u_input.c) >> (u_input.a % vec2<u32>(32u)), vec2<i32>(1i, 1i), true)), ~firstTrailingBit(vec2<i32>(u_input.c >> (12257u % 32u), u_input.c)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1818f), true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -339f) * _wgslsmith_f_op_f32(sign(global0.x))))), 1689f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), -649f)) + -643f) + 1087f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global0.x)))))) * _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + global0.x))))));
    var var_2 = var_1;
    let var_3 = ~_wgslsmith_mod_vec3_i32(reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(var_1, -36332i, var_1), vec3<i32>(u_input.c, -1i, 3557i))), ~vec3<i32>(var_1, 33505i, var_1)) ^ min(_wgslsmith_div_vec3_i32(vec3<i32>(~u_input.c, 2147483647i, _wgslsmith_div_i32(u_input.c, 0i)), vec3<i32>(~2147483647i, var_1, select(-1i, var_1, false))), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.c, var_1, -2147483647i), -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1, var_1, var_1), vec3<i32>(var_1, u_input.c, 48883i), vec3<i32>(u_input.c, -35123i, -22112i))));
    var var_4 = global0.x;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1110f))))), -628f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1063f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-615f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1281f * global0.x), _wgslsmith_div_f32(1774f, global0.x))), -1178f, true && select(true, true, true))), global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_f_op_f32(ceil(847f)), ~u_input.c, ~0u, _wgslsmith_f_op_f32(floor(849f)));
}

