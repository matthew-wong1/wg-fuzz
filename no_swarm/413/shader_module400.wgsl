struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 29> = array<f32, 29>(1547f, 947f, 1165f, -293f, -536f, 205f, -688f, 122f, 1239f, -667f, 1301f, 396f, -296f, 885f, 1174f, -886f, -515f, -1492f, -1369f, 366f, -582f, 1063f, -171f, 733f, 216f, -893f, 512f, 560f, -1571f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(trunc(arg_1.d.x)), _wgslsmith_f_op_f32(trunc(362f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(arg_1.b.c, 29u)], arg_1.d.x, arg_1.d.x)))), select(select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, true, arg_0), arg_0), vec3<bool>(arg_0, false, arg_0), u_input.c != -1i)))), all(!(!vec4<bool>(true, arg_0, true, true))), !vec3<bool>(37105i < u_input.c, false, false), firstLeadingBit(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) & vec4<u32>(u_input.b, u_input.a, 42037u, 4003u))) >> (countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 18706u, u_input.a, u_input.a), abs(vec4<u32>(4294967295u, arg_1.c, arg_1.b.b.x, 35938u)))) % vec4<u32>(32u)));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -747f);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(170f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - -591f)), global1[_wgslsmith_index_u32(~firstLeadingBit(var_0.d.x), 29u)])))) - _wgslsmith_f_op_f32(f32(-1f) * -875f));
    var var_1 = ~4294967295u;
    let var_2 = arg_1;
    return vec3<u32>(abs(~(~u_input.b)), firstLeadingBit(4294967295u), ~_wgslsmith_clamp_u32(min(1u, 12265u | u_input.a), 73627u, countOneBits(3350u)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> vec3<f32> {
    let var_0 = !(!vec4<bool>(true, !all(vec2<bool>(true, false)), true, all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), true))));
    var var_1 = arg_1.b;
    let var_2 = _wgslsmith_div_i32(abs(~arg_1.a.x), 1i);
    let var_3 = vec4<bool>(true, any(!vec4<bool>(select(true, var_0.x, false), false, any(vec3<bool>(var_0.x, var_0.x, var_0.x)), true)), var_0.x && ((var_1.x & firstTrailingBit(79616u)) >= u_input.b), false);
    global0 = arg_2;
    return vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_2, 1710f)), 1852f)), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(max(arg_0.x, 1f)))), arg_2);
}

fn func_5(arg_0: i32, arg_1: vec3<f32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(141f, 538f, arg_1.x, -204f), vec4<f32>(-302f, global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], arg_1.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(74760u, 29u)], arg_1.x, 1005f, 1302f))), Struct_1(~vec3<i32>(2147483647i, arg_0, arg_0), vec3<u32>(46551u, 8365u, u_input.a), ~61693u, 25886u), arg_1.x)).x)));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1441f * _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(~u_input.b, 29u)])))), 945f);
    global1 = array<f32, 29>();
    var var_0 = select(select(select(vec3<bool>(all(vec4<bool>(true, false, false, false)), all(vec3<bool>(false, true, true)), any(vec2<bool>(false, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(_wgslsmith_f_op_f32(-1431f + arg_1.x) == arg_1.x, all(vec4<bool>(true, true, true, true)), true), false), !select(vec3<bool>(any(vec3<bool>(true, false, true)), select(false, true, true), false), vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))), all(vec2<bool>(true, true)) | (u_input.b >= (u_input.b << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.b, 1u)) % 32u))));
    global1 = array<f32, 29>();
    return _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u >> (~(~1u) % 32u), 29u)]));
}

fn func_2(arg_0: i32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(func_5(~reverseBits(-1i) << (_wgslsmith_clamp_u32(~u_input.a, 0u, 1u) % 32u), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-253f, global1[_wgslsmith_index_u32(4294967295u, 29u)], -431f, 665f), vec4<f32>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(u_input.a, 29u)], -292f, -473f))))), Struct_1(vec3<i32>(_wgslsmith_add_i32(2147483647i, u_input.c), u_input.c, firstLeadingBit(2147483647i)), func_3(u_input.c != arg_0, Struct_2(Struct_1(vec3<i32>(11762i, -18735i, u_input.c), vec3<u32>(u_input.b, u_input.b, 43163u), u_input.b, u_input.a), Struct_1(vec3<i32>(arg_0, arg_0, -1i), vec3<u32>(4036u, 27495u, 8660u), u_input.a, u_input.b), 13857u, vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 29u)], -1192f))), func_3(all(vec3<bool>(false, false, true)), Struct_2(Struct_1(vec3<i32>(2147483647i, u_input.c, -9532i), vec3<u32>(40394u, u_input.a, 17721u), u_input.b, 0u), Struct_1(vec3<i32>(arg_0, 2147483647i, u_input.c), vec3<u32>(u_input.b, u_input.a, 4294967295u), u_input.a, 0u), u_input.b, vec2<f32>(-517f, global1[_wgslsmith_index_u32(0u, 29u)]))).x, 18523u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))))));
    var var_1 = true;
    let var_2 = select(vec3<bool>(!any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true)), any(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(false, false, false, false))), true), select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), vec3<bool>(any(vec4<bool>(false, false, false, true)), true, u_input.a == u_input.a), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))), select(vec3<bool>(any(vec4<bool>(true, true, true, true)), select(true, true, true), true), vec3<bool>(true, !(u_input.c >= u_input.c), all(vec2<bool>(true, true))), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(false, false, false), false)));
    var var_3 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1035f - global1[_wgslsmith_index_u32(1u, 29u)]))) - global1[_wgslsmith_index_u32(countOneBits(u_input.b), 29u)]), -565f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-673f + 1225f) - _wgslsmith_f_op_f32(f32(-1f) * -126f))), all(select(!var_2.xx, !select(var_2.yy, vec2<bool>(false, var_2.x), var_2.yy), vec2<bool>(var_2.x, global1[_wgslsmith_index_u32(19354u, 29u)] > global1[_wgslsmith_index_u32(23029u, 29u)]))), vec3<bool>(false, true, false), vec4<u32>(firstTrailingBit(~4294967295u), u_input.a, 1u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 95384u, u_input.a, 1u), vec4<u32>(1u, u_input.b, u_input.a, 13921u) | vec4<u32>(1u, 32706u, 0u, 83456u))));
    var var_4 = Struct_4(_wgslsmith_div_vec3_f32(var_3.a, _wgslsmith_f_op_vec3_f32(var_3.a + var_3.a)), !all(select(select(vec4<bool>(true, var_3.c.x, true, var_2.x), vec4<bool>(var_3.b, false, var_3.b, var_2.x), false), select(vec4<bool>(var_2.x, false, var_3.c.x, var_3.b), vec4<bool>(false, false, var_2.x, false), true), any(vec3<bool>(true, var_2.x, var_3.b)))), !vec3<bool>(!(var_2.x & false), false, !(var_3.a.x == var_3.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(69506u, abs(_wgslsmith_dot_vec4_u32(var_3.d, vec4<u32>(u_input.b, 4522u, 43769u, 30810u))), var_3.d.x, _wgslsmith_mult_u32(51824u, 61328u)), _wgslsmith_add_vec4_u32(countOneBits(var_3.d), ~vec4<u32>(var_3.d.x, var_3.d.x, 10884u, var_3.d.x)), vec4<u32>(_wgslsmith_sub_u32(~var_3.d.x, _wgslsmith_sub_u32(var_3.d.x, 1u)), 67793u, select(17173u, ~var_3.d.x, false == var_3.b), ~48186u & ~var_3.d.x)));
    return Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(1192f, var_4.a.x, _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.a.x, global1[_wgslsmith_index_u32(19386u, 29u)], global1[_wgslsmith_index_u32(var_4.d.x, 29u)], 450f), vec4<f32>(global1[_wgslsmith_index_u32(62361u, 29u)], 181f, global1[_wgslsmith_index_u32(var_4.d.x, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)]), var_3.c.x)), Struct_1(vec3<i32>(u_input.c, -1i, 1i), vec3<u32>(80085u, 4294967295u, 0u), 19208u, u_input.b), -962f)).x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_3.a, vec3<f32>(var_3.a.x, var_4.a.x, var_3.a.x), var_4.c))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(36685u, 29u)], 1127f, 368f) - vec3<f32>(var_4.a.x, var_4.a.x, 771f)) + vec3<f32>(var_4.a.x, 1630f, 1758f)))), var_2.x, select(select(vec3<bool>(!var_2.x, any(var_3.c), any(var_4.c)), var_4.c, vec3<bool>(true, true, true)), vec3<bool>(!var_4.c.x, true, var_3.b | true), all(select(var_3.c.zy, var_4.c.zz, var_4.c.x || var_4.b))), abs(firstTrailingBit(firstLeadingBit(min(var_3.d, vec4<u32>(var_3.d.x, var_4.d.x, 0u, var_3.d.x))))));
}

fn func_6(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_4) -> Struct_3 {
    var var_0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-u_input.c, 0i, firstLeadingBit(u_input.c)), u_input.c, countOneBits(countOneBits(0i)), -firstLeadingBit(-2147483647i)), _wgslsmith_mult_vec4_i32(-(vec4<i32>(34483i, 13344i, u_input.c, u_input.c) << (vec4<u32>(arg_2.d.x, 0u, 41438u, 4294967295u) % vec4<u32>(32u))), vec4<i32>(44699i, 2147483647i << (u_input.a % 32u), -2147483647i, reverseBits(-1i))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c >> (u_input.a % 32u), select(u_input.c, 0i, arg_0.x), u_input.c), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, -43778i), vec3<i32>(1i, -6718i, u_input.c))), ~(~firstLeadingBit(vec3<u32>(0u, u_input.a, 6294u))), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(arg_2.d.x), ~16879u, arg_2.d.x), ~vec3<u32>(u_input.a, arg_2.d.x, 12438u) & abs(vec3<u32>(9781u, 0u, arg_2.d.x)))), Struct_1(select(min(-vec3<i32>(-2147483647i, -72409i, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c) & vec3<i32>(u_input.c, u_input.c, 2147483647i)), firstTrailingBit(vec3<i32>(u_input.c, u_input.c, 22303i)), select(!arg_2.c, select(arg_2.c, arg_2.c, arg_2.c), true)), vec3<u32>(_wgslsmith_mult_u32(1u, u_input.a | u_input.b), 33996u, 0u), u_input.b, arg_2.d.x), 1u, _wgslsmith_f_op_vec2_f32(sign(arg_2.a.zz)));
    var_1 = Struct_2(var_1.b, var_1.a, u_input.a, vec2<f32>(-178f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a, 0u), 29u)], _wgslsmith_div_f32(-762f, _wgslsmith_f_op_f32(arg_2.a.x - arg_2.a.x)))));
    var_1 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -6258i), var_1.b.a.zx) & ~(-2147483647i), -769i, var_1.a.a.x), ~vec3<u32>(arg_2.d.x, arg_2.d.x, ~92355u), ~var_1.b.d, max(1u, var_1.c) & ~(~var_1.a.d)), var_1.b, var_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(489f, 397f))) + var_1.d)));
    var var_2 = 20908u;
    return Struct_3(true, -1308f, Struct_2(var_1.b, Struct_1(var_1.b.a, func_2(_wgslsmith_add_i32(var_1.a.a.x, u_input.c)).d.xyx, countOneBits(_wgslsmith_sub_u32(37580u, 2414u)), u_input.a & 38143u), 49305u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec3_f32(func_4(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 29u)], var_1.d.x, -1054f, 856f), Struct_1(var_1.b.a, arg_2.d.www, 30740u, 0u), _wgslsmith_f_op_f32(trunc(var_1.d.x)))).xy, var_1.d)), 363f);
}

fn func_7(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: f32, arg_3: u32) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(arg_2 + 473f));
    var var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(arg_1.xyz, vec3<i32>(arg_0.c.a.a.x, 61967i, -20258i)) | (~vec3<i32>(u_input.c, u_input.c, 14127i) | arg_1.wzz), arg_0.c.a.b, 12341u, ~u_input.a), Struct_1(arg_1.zxz, vec3<u32>(countOneBits(30162u), 18400u, ~(39349u << (arg_3 % 32u))), ~u_input.b, ~(~(~16035u))), arg_3, var_0);
    let var_2 = Struct_4(vec3<f32>(823f, _wgslsmith_f_op_f32(-1f), -1332f), func_6(vec4<bool>(select(arg_0.a, true, arg_0.a), arg_2 > arg_0.d, var_0.x >= global1[_wgslsmith_index_u32(var_1.c, 29u)], all(vec2<bool>(false, false))), true, func_2(arg_1.x)).c.a.a.x > -1i, select(func_2(1i).c, !(!func_2(51017i).c), !any(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true))), abs(~func_2(~(-2147483647i)).d));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1703f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))), 586f);
    let var_3 = any(func_2(arg_0.c.a.a.x).c);
    return Struct_2(func_6(!vec4<bool>(true, var_3, any(var_2.c.yz), true), any(select(select(vec4<bool>(var_3, false, arg_0.a, false), vec4<bool>(true, true, var_3, arg_0.a), vec4<bool>(false, arg_0.a, true, true)), !vec4<bool>(var_3, var_3, false, var_3), !vec4<bool>(var_2.c.x, false, false, true))), func_2(_wgslsmith_mult_i32(-20152i, 0i >> (0u % 32u)))).c.b, func_6(!(!vec4<bool>(true, var_2.b, var_3, var_3)), !all(vec4<bool>(var_3, var_3, false, var_2.c.x)), Struct_4(var_2.a, true, !select(vec3<bool>(arg_0.a, arg_0.a, true), var_2.c, vec3<bool>(arg_0.a, arg_0.a, true)), vec4<u32>(~43302u, _wgslsmith_clamp_u32(u_input.b, arg_0.c.c, u_input.b), abs(var_1.a.b.x), ~var_2.d.x))).c.b, 0u, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(263f, arg_0.c.d.x))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec4<bool>, arg_3: bool) -> Struct_2 {
    var var_0 = vec2<bool>(arg_3 | (_wgslsmith_mod_i32(-u_input.c, 2147483647i) >= _wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, u_input.c), 21312i)), arg_2.x);
    var var_1 = func_7(func_6(!select(vec4<bool>(arg_2.x, var_0.x, true, arg_3), !vec4<bool>(true, true, true, var_0.x), arg_2.x), !(!(u_input.c == u_input.c)), func_2(~u_input.c << (~u_input.b % 32u))), _wgslsmith_clamp_vec4_i32(~_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(0i, -10216i, -2147483647i, -37554i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 1i), vec4<i32>(u_input.c, 9956i, 1i, 22257i)), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), firstTrailingBit(select(vec4<i32>(u_input.c, -1i, -2147483647i, 2147483647i), vec4<i32>(u_input.c, -2147483647i, u_input.c, u_input.c), arg_2)) ^ ~vec4<i32>(32551i, 6121i, u_input.c, u_input.c), _wgslsmith_div_vec4_i32(-(vec4<i32>(u_input.c, u_input.c, -30284i, -78537i) & vec4<i32>(u_input.c, -1i, u_input.c, -1842i)), _wgslsmith_mult_vec4_i32(vec4<i32>(28932i, u_input.c, 1i, -1i), vec4<i32>(u_input.c, 2408i, u_input.c, 13004i)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, 11070i, -8485i)))), 275f, abs(~arg_1));
    var var_2 = func_2(~countOneBits(_wgslsmith_mod_i32(var_1.a.a.x, u_input.c)));
    var_2 = func_2(u_input.c);
    let var_3 = u_input.c;
    return func_6(arg_2, true, func_2(-_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, -1i, u_input.c), var_1.b.a))).c;
}

fn func_8(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: f32, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = ~4294967295u;
    var var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(firstTrailingBit(func_1(func_1(global1[_wgslsmith_index_u32(46649u, 29u)], 1u, arg_3, arg_3.x).d.x, 1u, select(arg_3, arg_3, arg_3), arg_3.x).a.a.xx), arg_0.a.a.xy), select(func_7(func_6(arg_3, arg_0.b.a.x > arg_0.a.a.x, Struct_4(vec3<f32>(arg_2, global1[_wgslsmith_index_u32(4294967295u, 29u)], 474f), true, vec3<bool>(arg_3.x, arg_3.x, arg_3.x), vec4<u32>(1u, u_input.b, 4294967295u, arg_1.x))), max(firstLeadingBit(vec4<i32>(-29102i, -1i, u_input.c, arg_0.b.a.x)), vec4<i32>(0i, arg_0.b.a.x, u_input.c, arg_0.b.a.x)), 2504f, 1u).a.a.xy, vec2<i32>(func_7(Struct_3(arg_3.x, arg_0.d.x, arg_0, -960f), vec4<i32>(arg_0.b.a.x, 43919i, -50534i, 2147483647i), 1000f, u_input.b).a.a.x, _wgslsmith_clamp_i32(0i, -8665i, 54383i)) & vec2<i32>(_wgslsmith_clamp_i32(arg_0.a.a.x, -1i, arg_0.a.a.x), u_input.c ^ u_input.c), all(vec2<bool>(arg_3.x, select(true, false, true)))), vec2<i32>(-arg_0.b.a.x ^ 15804i, _wgslsmith_mod_i32(8130i, func_6(select(arg_3, vec4<bool>(true, arg_3.x, arg_3.x, false), arg_3), !arg_3.x, Struct_4(vec3<f32>(global1[_wgslsmith_index_u32(arg_0.a.c, 29u)], 1450f, arg_2), false, arg_3.yzw, vec4<u32>(16381u, 4294967295u, var_0, 43801u))).c.a.a.x)));
    var_1 = _wgslsmith_div_vec2_i32(-arg_0.a.a.yx, arg_0.a.a.zz);
    var_1 = arg_0.a.a.xx;
    var var_2 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.b.b.x, 29u)] - _wgslsmith_f_op_f32(f32(-1f) * -737f));
    return Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(-arg_0.b.a | firstTrailingBit(vec3<i32>(57792i, 917i, arg_0.a.a.x)), firstLeadingBit(vec3<i32>(3657i, arg_0.b.a.x, var_1.x) ^ arg_0.b.a)), arg_0.a.b, 1u, var_0), func_1(func_1(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, func_1(-394f, 82943u, arg_3, false).b.c), 29u)], var_0, arg_3, true).d.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0, var_0, var_0, 3287u), vec4<u32>(arg_1.x, 27416u, 1u, 39161u)), vec4<u32>(72181u, 4294967295u, u_input.b, 1758u)), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_0, 1u, arg_1.x, 62515u), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)))), vec4<bool>(func_6(arg_3, arg_3.x, Struct_4(vec3<f32>(global1[_wgslsmith_index_u32(arg_0.c, 29u)], arg_2, 918f), arg_3.x, vec3<bool>(false, arg_3.x, arg_3.x), vec4<u32>(0u, u_input.a, 4294967295u, 0u))).a & arg_3.x, all(arg_3.zy) != true, arg_3.x, arg_3.x && (u_input.a <= var_0)), arg_3.x).a, select(var_0, _wgslsmith_add_u32(~arg_0.c, 35889u), false), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-875f, _wgslsmith_div_f32(292f, 1234f)) * _wgslsmith_f_op_f32(-arg_2)), -1068f));
}

fn func_9(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    let var_0 = false;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_9(-vec4<i32>(_wgslsmith_mod_i32(0i >> (u_input.b % 32u), 1i), u_input.c, u_input.c, u_input.c), func_8(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1216f - 286f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 29u)] - 1065f)), u_input.b, vec4<bool>(true, true, true, true), false), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 38637u, u_input.b), vec3<u32>(u_input.a, u_input.b, u_input.a))), ~4294967295u), -112f, !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 29u)] <= global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)] <= -201f, true)), Struct_2(func_8(Struct_2(Struct_1(vec3<i32>(-1i, u_input.c, u_input.c), vec3<u32>(u_input.b, u_input.a, 92841u), 18027u, u_input.b), Struct_1(vec3<i32>(2147483647i, u_input.c, u_input.c), vec3<u32>(65829u, u_input.a, u_input.b), 4294967295u, 63507u), abs(0u), vec2<f32>(1397f, global1[_wgslsmith_index_u32(u_input.b, 29u)])), vec2<u32>(1u, 1u), global1[_wgslsmith_index_u32(0u, 29u)], select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))).b, func_1(_wgslsmith_f_op_f32(sign(-814f)), u_input.a, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, true, false, false)), true).b, select(~u_input.b, ~firstTrailingBit(u_input.b), u_input.a > ~u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-246f, global1[_wgslsmith_index_u32(u_input.b, 29u)]) + vec2<f32>(-596f, global1[_wgslsmith_index_u32(u_input.a, 29u)]))))), func_6(select(vec4<bool>(u_input.a < 4294967295u, 155f >= global1[_wgslsmith_index_u32(u_input.b, 29u)], false, all(vec3<bool>(true, false, true))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(func_2(-58054i).b, false, all(vec3<bool>(true, true, true)), true)), any(vec4<bool>(false, true, true, true)), func_2(abs(u_input.c))));
    let var_1 = u_input.c & _wgslsmith_sub_i32(reverseBits(var_0.a.x), ~(-31726i));
    var var_2 = 33139i;
    let var_3 = !vec4<bool>(true, func_2(firstLeadingBit(abs(47312i))).b, (true && select(true, true, false)) | (select(false, false, false) || true), true);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_3(false, Struct_2(var_0, Struct_1(vec3<i32>(var_1, var_0.a.x, var_0.a.x), var_0.b, u_input.a, 1u), u_input.a, vec2<f32>(global1[_wgslsmith_index_u32(51919u, 29u)], -823f))).x, 29u)]), -1652f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 29u)]), _wgslsmith_f_op_f32(-2173f * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 29u)] + global1[_wgslsmith_index_u32(0u, 29u)]))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(638f, -1988f, global1[_wgslsmith_index_u32(11562u, 29u)], global1[_wgslsmith_index_u32(61074u, 29u)]))))))), var_3)) * vec4<f32>(_wgslsmith_f_op_f32(func_5(u_input.c, vec3<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.a, 29u)], -317f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 29u)]), global1[_wgslsmith_index_u32(~u_input.b, 29u)]))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(272f * _wgslsmith_f_op_f32(-535f * global1[_wgslsmith_index_u32(var_0.d, 29u)]))), global1[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_div_f32(func_8(Struct_2(Struct_1(vec3<i32>(u_input.c, -2147483647i, var_0.a.x), vec3<u32>(var_0.d, 4294967295u, u_input.b), var_0.d, var_0.b.x), Struct_1(vec3<i32>(var_1, var_1, 1i), vec3<u32>(1u, var_0.d, 1u), u_input.a, var_0.b.x), 4294967295u, vec2<f32>(global1[_wgslsmith_index_u32(52149u, 29u)], -370f)), vec2<u32>(var_0.b.x, u_input.a), global1[_wgslsmith_index_u32(55038u, 29u)], select(vec4<bool>(var_3.x, true, false, true), var_3, true)).d.x, -1000f)));
    let var_5 = func_1(global1[_wgslsmith_index_u32(var_0.d, 29u)], u_input.a, !vec4<bool>(false, var_3.x, var_3.x || true, false), !var_3.x).a;
    var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.c ^ var_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1983f, -1527f, 688f) + vec3<f32>(var_4.x, var_4.x, -1000f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_4.wzx * vec3<f32>(var_4.x, global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(58316u, 29u)])) * var_4.wyy)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(0u << (var_5.d % 32u), 29u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 29u)] * global1[_wgslsmith_index_u32(41089u, 29u)]), _wgslsmith_f_op_f32(ceil(-884f))))), firstTrailingBit(~_wgslsmith_sub_vec2_u32(var_0.b.yz, var_5.b.yz)), _wgslsmith_sub_vec2_i32(countOneBits(abs(var_0.a.yy)), ~_wgslsmith_add_vec2_i32(var_5.a.zx, func_7(Struct_3(var_3.x, 201f, Struct_2(Struct_1(var_0.a, vec3<u32>(var_5.d, 4331u, 1u), var_0.c, u_input.a), Struct_1(var_5.a, vec3<u32>(var_5.d, 15536u, var_5.b.x), 1u, var_5.c), u_input.a, vec2<f32>(var_4.x, global1[_wgslsmith_index_u32(0u, 29u)])), 1000f), vec4<i32>(5337i, var_0.a.x, var_0.a.x, var_0.a.x), global1[_wgslsmith_index_u32(var_5.d, 29u)], 7947u).b.a.zx)));
}

