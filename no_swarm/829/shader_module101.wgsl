struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<f32> = vec4<f32>(-2053f, -814f, 767f, -1619f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> vec4<bool> {
    global0 = Struct_2(-u_input.d, global0.b, countOneBits((~global0.b.a.x >> ((arg_0.x ^ arg_0.x) % 32u)) >> (~firstTrailingBit(148u) % 32u)), vec4<bool>(true, global0.d.x, arg_1.c.x, false), -28241i);
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global0.b.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1807f, global0.b.b.x))))) + vec2<f32>(_wgslsmith_f_op_f32(max(global0.b.b.x, _wgslsmith_f_op_f32(ceil(-897f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.xz), _wgslsmith_f_op_vec2_f32(-global1.yz)));
    var var_1 = Struct_4(Struct_2(_wgslsmith_div_i32(~u_input.b, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_1.a, -51i, arg_1.a), ~(-1i))), global0.b, _wgslsmith_div_u32(firstTrailingBit(4294967295u), arg_0.x), select(vec4<bool>(true, true, global0.d.x, !arg_1.b), !global0.d, !vec4<bool>(global0.d.x, false, global0.d.x, false)), abs(abs(global0.e))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, 1f, _wgslsmith_f_op_f32(-548f + _wgslsmith_f_op_f32(-var_1.a.b.b.x)), _wgslsmith_f_op_f32(select(-349f, _wgslsmith_f_op_f32(round(981f)), true))))));
    let var_2 = _wgslsmith_mod_vec4_u32(global0.b.a, firstLeadingBit(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_0.x, 16381u, 44107u), arg_0))));
    return vec4<bool>(true, !all(select(vec2<bool>(global0.d.x, false), vec2<bool>(global0.d.x, arg_2), arg_2)), any(vec3<bool>(true, any(select(global0.d.xwx, vec3<bool>(var_1.a.d.x, arg_2, true), true)), global0.b.b.x <= _wgslsmith_f_op_f32(trunc(var_1.a.b.b.x)))), any(vec4<bool>(arg_1.b, !global0.d.x, true, arg_1.c.x == false)) || !((1i | arg_1.a) < var_1.a.b.c));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32, arg_3: i32) -> f32 {
    var var_0 = Struct_4(Struct_2(~(-21942i), arg_0.a.b, 0u, select(func_3(vec4<u32>(global0.c, global0.c, u_input.a.x, arg_1.a.c) >> (u_input.a % vec4<u32>(32u)), Struct_3(2147483647i, true, arg_1.a.d.yxy), any(vec3<bool>(arg_1.a.d.x, false, global0.d.x)), _wgslsmith_clamp_i32(arg_0.a.b.c, 2147483647i, global0.a)), select(arg_1.a.d, select(arg_0.a.d, global0.d, false), func_3(vec4<u32>(0u, 21979u, 55981u, 37149u), Struct_3(u_input.d, arg_0.a.d.x, arg_0.a.d.xyx), arg_0.a.d.x, arg_3)), !arg_0.a.d.x), -firstTrailingBit(1i)));
    var_0 = Struct_4(Struct_2(arg_3, var_0.a.b, 64772u, vec4<bool>(func_3(vec4<u32>(arg_0.a.b.a.x, 5015u, 65164u, 44124u) | vec4<u32>(arg_1.a.b.a.x, u_input.c, global0.c, arg_0.a.c), Struct_3(-4511i, false, global0.d.wyw), false, 2147483647i).x, !(arg_0.a.b.a.x > 0u), true, true), max(reverseBits(u_input.d) & -19532i, _wgslsmith_clamp_i32(-var_0.a.e, _wgslsmith_add_i32(global0.e, arg_0.a.b.c), -9163i))));
    var var_1 = select(arg_0.a.d.zyy, vec3<bool>((_wgslsmith_f_op_f32(-289f - var_0.a.b.b.x) >= arg_1.a.b.b.x) || true, _wgslsmith_f_op_f32(f32(-1f) * -745f) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.b.x, global1.x)), true), var_0.a.d.yyy);
    var var_2 = global1.xw;
    var_1 = vec3<bool>(var_1.x, false, select(arg_0.a.d.x, true, select(true, _wgslsmith_f_op_f32(1005f + var_0.a.b.b.x) > arg_0.a.b.b.x, all(vec3<bool>(false, false, true)))));
    return _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-arg_0.a.b.b.x));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.d;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.b.b.x, 495f, global1.x, global0.b.b.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, 1000f)), vec4<f32>(1000f, -977f, 1569f, global0.b.b.x)))))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-239f, 1000f, -1276f, global1.x)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.b.b.x))), global0.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-127f + global1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global1.x, -756f)), global1.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.b.b.x), _wgslsmith_f_op_f32(505f + -1130f), global0.b.b.x, _wgslsmith_f_op_f32(func_2(Struct_4(Struct_2(2147483647i, global0.b, u_input.a.x, global0.d, 2147483647i)), Struct_4(Struct_2(u_input.d, Struct_1(vec4<u32>(global0.b.a.x, 28414u, 8776u, 16749u), global0.b.b, var_0), global0.b.a.x, global0.d, -2147483647i)), -475f, 2147483647i))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1858f, global0.b.b.x, global1.x, 173f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(792f, global1.x, global1.x, global1.x) - vec4<f32>(global1.x, global0.b.b.x, -1113f, global1.x)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, _wgslsmith_div_f32(234f, global1.x), _wgslsmith_f_op_f32(round(global0.b.b.x)), 525f)))));
    global0 = Struct_2(-1i, global0.b, 0u, vec4<bool>(false, !(any(global0.d.wyz) | func_3(u_input.a, Struct_3(-2147483647i, false, vec3<bool>(global0.d.x, global0.d.x, false)), true, -4173i).x), func_3(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 5283u, global0.c, u_input.a.x), u_input.a), Struct_3(35018i, true, !vec3<bool>(false, global0.d.x, global0.d.x)), false, global0.e).x, !(_wgslsmith_f_op_f32(-global0.b.b.x) != -1004f)), abs((_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -2147483647i, 38908i, global0.a), vec4<i32>(0i, global0.e, -4294i, -16903i)) & select(global0.e, -55331i, global0.d.x)) | -u_input.d));
    var var_1 = global0.b.b.x;
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(~global0.b.c, _wgslsmith_mod_i32(abs(u_input.b), 19851i)), select(-vec2<i32>(global0.b.c, 1i), -vec2<i32>(-7032i, 33373i), all(vec2<bool>(global0.d.x, global0.d.x))) & vec2<i32>(-u_input.b, _wgslsmith_div_i32(global0.a, 57092i))), func_1(), global0.b.a.x, global0.d, _wgslsmith_mod_i32(-u_input.b, -58872i));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-309f, global1.x, global1.x, -1746f), vec4<f32>(-241f, 1267f, global0.b.b.x, -179f))), vec4<f32>(global0.b.b.x, global1.x, global0.b.b.x, global0.b.b.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1797f, global0.b.b.x, global1.x, -677f), vec4<f32>(global0.b.b.x, global1.x, -184f, global1.x))))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -783f), _wgslsmith_f_op_f32(-1817f + global1.x), -1000f, _wgslsmith_f_op_f32(-430f + 1921f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.b.x, global1.x, -1433f, global1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.b.x, global1.x, -247f, global1.x)))))));
    var var_0 = global0.d.wyw;
    global0 = Struct_2(-global0.a, func_1(), u_input.c, vec4<bool>(false, !all(global0.d), global0.d.x, _wgslsmith_clamp_u32(~41985u, _wgslsmith_mult_u32(u_input.c, global0.b.a.x), ~global0.c) <= _wgslsmith_div_u32(4294967295u, func_1().a.x)), global0.e);
    var var_1 = Struct_3(_wgslsmith_mult_i32(global0.b.c, u_input.d), var_0.x, func_3(global0.b.a, Struct_3(u_input.d, true, !select(global0.d.wxx, vec3<bool>(var_0.x, true, global0.d.x), false)), !any(!vec2<bool>(var_0.x, var_0.x)), ~_wgslsmith_clamp_i32(27121i, 7954i, 17748i) << (1u % 32u)).xwx);
    global0 = Struct_2(var_1.a, func_1(), global0.c, func_3(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 24725u), u_input.a, ~vec4<u32>(global0.c, global0.c, global0.b.a.x, 41033u)), u_input.a, var_1.b), Struct_3(30993i, var_1.b, var_1.c), ~global0.c > ~abs(global0.b.a.x), -1i), -(-2147483647i | ~select(18036i, var_1.a, true)));
    let var_2 = global0.d;
    var var_3 = Struct_4(Struct_2(-(~global0.e), Struct_1(firstLeadingBit(global0.b.a), vec2<f32>(-1695f, _wgslsmith_f_op_f32(-109f * global1.x)), _wgslsmith_dot_vec3_i32(-vec3<i32>(global0.e, u_input.d, -2147483647i), ~vec3<i32>(13109i, var_1.a, global0.a))), _wgslsmith_mult_u32(firstLeadingBit(global0.c) & _wgslsmith_clamp_u32(27388u, 442u, u_input.c), _wgslsmith_div_u32(4294967295u, 18913u)), vec4<bool>(842f > _wgslsmith_f_op_f32(-global1.x), global0.d.x, 1i >= -var_1.a, !any(vec3<bool>(false, var_2.x, false))), ~min(-4140i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(41713u, _wgslsmith_add_i32(countOneBits(var_1.a), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d, u_input.d, -36236i), vec3<i32>(-2147483647i, global0.b.c, var_3.a.b.c))) << (global0.c % 32u), var_3.a.b.b.x);
}

