struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-87767i, 31915i, -30163i, -52401i);

var<private> global1: Struct_1 = Struct_1(vec4<i32>(6014i, i32(-2147483648), -21659i, -19382i), 105595i);

var<private> global2: Struct_1 = Struct_1(vec4<i32>(-34259i, -6187i, 15204i, -1i), -18417i);

var<private> global3: Struct_1 = Struct_1(vec4<i32>(-9241i, 4798i, 0i, -56922i), 0i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: u32) -> i32 {
    let var_0 = !(!(_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)) < -352f)) || arg_0;
    var var_1 = Struct_1(_wgslsmith_add_vec4_i32(global1.a, select(vec4<i32>(32758i, global0.x, u_input.a, u_input.a), global1.a, true)) & min(vec4<i32>(firstTrailingBit(global0.x), 1i, -global1.b, global0.x), max(global3.a >> (vec4<u32>(u_input.b, 66667u, 40303u, u_input.b) % vec4<u32>(32u)), global3.a)), _wgslsmith_dot_vec3_i32(max(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.a.x, -2147483647i, 1i), vec3<i32>(-2147483647i, global1.a.x, 2147483647i)), global0.xwy), global0.yzw));
    var var_2 = select(vec2<i32>(abs(select(global3.a.x, -52945i, true)) << (select(arg_2, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 96822u), vec2<u32>(u_input.b, 0u)), arg_0) % 32u), ~(-1i)), ~select(firstLeadingBit(min(var_1.a.zy, vec2<i32>(global1.a.x, u_input.a))), ~vec2<i32>(global1.b, 2147483647i), (4294967295u <= u_input.b) | any(vec4<bool>(var_0, false, var_0, false))), true);
    global2 = Struct_1(-_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_1.b, global3.b), ~u_input.a, -1i, 1i), select(vec4<i32>(global2.b, -2147483647i, var_2.x, 20393i), -vec4<i32>(485i, var_1.a.x, -2147483647i, var_1.a.x), var_0)), _wgslsmith_dot_vec2_i32(global1.a.yw, _wgslsmith_div_vec2_i32(vec2<i32>(global0.x, 2147483647i) | var_1.a.zw, global3.a.xw)) | var_2.x);
    var_2 = ~((global0.zw >> (vec2<u32>(12641u, _wgslsmith_mult_u32(12852u, u_input.b)) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_add_u32(~u_input.b, 1u), 4294967295u) % vec2<u32>(32u)));
    return global1.a.x;
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_sub_vec4_i32(global3.a, global2.a)), ~(func_3(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(793f, 168f) + vec2<f32>(-1673f, -610f)), u_input.b ^ 0u) << (_wgslsmith_clamp_u32(~1u, 41342u, max(4294967295u, u_input.b)) % 32u)));
    let var_1 = u_input.b;
    global2 = Struct_1(global3.a & ~max(reverseBits(vec4<i32>(global2.a.x, var_0.a.x, -34386i, -2147483647i)), var_0.a | vec4<i32>(global3.b, 1i, -2776i, 1i)), abs(func_3(true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-367f, 1192f))), _wgslsmith_div_vec2_f32(vec2<f32>(-496f, 1709f), vec2<f32>(-594f, -1518f))), 3005u)));
    var var_2 = !(!vec3<bool>(true, any(vec3<bool>(true, true, true)), false));
    global0 = vec4<i32>(-(global1.b << (max(0u, _wgslsmith_sub_u32(u_input.b, 49730u)) % 32u)), var_0.b, -24506i, -1i);
    return global3.a.zwz;
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: bool, arg_3: vec3<f32>) -> Struct_1 {
    global0 = (_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, ~arg_1.x, global2.b, global0.x << (14070u % 32u)), -global3.a, select(-global1.a, _wgslsmith_mult_vec4_i32(global2.a, vec4<i32>(1i, 0i, 1i, global1.a.x)), vec4<bool>(arg_2, arg_2, arg_2, false))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(max(u_input.b, u_input.b), _wgslsmith_add_u32(u_input.b, 58569u), firstLeadingBit(u_input.b), firstTrailingBit(18487u)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(96365u, 1u, 93017u, 4294967295u)), vec4<u32>(19462u, u_input.b, u_input.b, 4294967295u)), vec4<u32>(1u, ~1u, 31121u, ~0u)) % vec4<u32>(32u))) | ~global1.a;
    let var_0 = -912f;
    global2 = Struct_1(~firstTrailingBit(~abs(global2.a)), ~u_input.a);
    global1 = Struct_1(~_wgslsmith_mult_vec4_i32(-vec4<i32>(-1i, -2147483647i, arg_1.x, 1i), global2.a), 2147483647i);
    global0 = abs(abs(select(vec4<i32>(global0.x, -9913i, global0.x, global2.b), global1.a | vec4<i32>(global3.a.x, arg_1.x, global1.b, -2147483647i), 990f > var_0) >> (~(vec4<u32>(4294967295u, 12810u, 0u, 4294967295u) & vec4<u32>(4294967295u, 0u, 1u, u_input.b)) % vec4<u32>(32u))));
    return Struct_1(global3.a, -6644i);
}

fn func_1() -> vec3<f32> {
    global3 = func_4((select(~u_input.b, ~u_input.b, true) > select(_wgslsmith_mult_u32(4294967295u, u_input.b), 1u, false)) | false, _wgslsmith_mod_vec3_i32(firstLeadingBit(func_2()), firstLeadingBit(vec3<i32>(global1.b, 1i, 6307i) & global1.a.xyx)) | select(abs(_wgslsmith_add_vec3_i32(global3.a.zzx, vec3<i32>(global0.x, -2147483647i, 54244i))), vec3<i32>(-1i) * -global0.yyz, vec3<bool>(true, true, true)), true, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-178f, 202f, 789f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(851f, -320f, -1000f), vec3<f32>(1313f, 401f, 390f))), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(892f, 456f, -697f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))))));
    let var_0 = func_4(any(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(false, true), vec2<bool>(false, true))), global1.a.xwy, !(!any(vec3<bool>(true, true, true)) && true), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-460f, 626f, -664f))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-741f, -1000f, 1361f), vec3<f32>(-1057f, -1425f, 626f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1208f, 854f, -1822f) * vec3<f32>(1710f, -2540f, -355f)))))));
    let var_1 = !(!(~u_input.b <= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(4294967295u, u_input.b)))) | (~19843u > _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b ^ u_input.b, firstLeadingBit(u_input.b), u_input.b << (0u % 32u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(0u, 4294967295u, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(47282u, u_input.b)), u_input.b)));
    global0 = ~vec4<i32>(33410i, firstTrailingBit(~reverseBits(-25393i)), reverseBits(abs(-2147483647i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(global1.a, global1.a), -vec4<i32>(var_0.a.x, 1i, 4080i, var_0.a.x)), _wgslsmith_dot_vec3_i32(global0.ywy, global2.a.yzz) >> ((u_input.b | u_input.b) % 32u)));
    let var_2 = !vec2<bool>(any(!select(vec3<bool>(false, var_1, true), vec3<bool>(false, true, var_1), vec3<bool>(var_1, var_1, true))), any(!select(vec3<bool>(var_1, false, var_1), vec3<bool>(true, false, var_1), true)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1727f, 772f)), -436f, _wgslsmith_f_op_f32(step(1048f, 485f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(538f, -1000f, -1000f) * vec3<f32>(257f, -1348f, 1000f))))), vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -104f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -525f))), !(global1.a.x < 40171i) | false))));
    var var_1 = vec2<bool>(!(_wgslsmith_f_op_f32(trunc(-1000f)) <= _wgslsmith_f_op_vec3_f32(func_1()).x), !any(vec2<bool>(true, false)));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, 1038f, var_0.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -1000f, 1000f), vec3<f32>(var_0.x, var_0.x, var_0.x)) - vec3<f32>(254f, var_0.x, 1171f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-610f, -1097f)), _wgslsmith_f_op_f32(f32(-1f) * -607f), -1154f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, var_0.x, -2043f)))))));
    var var_3 = func_4(false, global1.a.zzz, var_1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(149f, 463f, 710f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(462f, -1191f, var_0.x) * vec3<f32>(725f, -2382f, var_0.x)), vec3<f32>(626f, var_0.x, 213f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(1358f - -572f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-select(-2147483647i, -1i, all(vec2<bool>(true, true))), global1.a.x), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2105f)), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1513f), var_0.x, _wgslsmith_f_op_vec3_f32(func_1()).x)), u_input.b);
}

