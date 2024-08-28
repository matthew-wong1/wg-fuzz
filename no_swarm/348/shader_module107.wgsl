struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
    c: Struct_2,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_3(Struct_2(Struct_1(14660u))), vec3<f32>(2238f, -424f, 549f), Struct_2(Struct_1(57107u)), 0i, 1u);

var<private> global1: vec4<u32>;

var<private> global2: vec4<f32>;

var<private> global3: vec4<f32>;

var<private> global4: Struct_4 = Struct_4(Struct_2(Struct_1(1u)), Struct_1(8437u), -722f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_2) -> vec4<f32> {
    let var_0 = _wgslsmith_dot_vec3_u32(~(global1.xxz | global1.wxw), vec3<u32>(_wgslsmith_clamp_u32(countOneBits(global0.c.a.a), _wgslsmith_div_u32(_wgslsmith_sub_u32(global1.x, u_input.c), global1.x), ~(global0.a.a.a.a | global1.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a.a.a.a, 46226u, 4294967295u) << (global1.wyx % vec3<u32>(32u)), vec3<u32>(global1.x, arg_2.a.a, 78106u), vec3<u32>(4294967295u, arg_2.a.a, 50995u)), select(global1.wxx, _wgslsmith_mod_vec3_u32(global1.zzy, global1.zxw), select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(arg_1.x, false, arg_1.x), false))), ~(~4294967295u)));
    global2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1713f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.b.x, -1005f)), global2.x)), global2.x, _wgslsmith_f_op_f32(trunc(global3.x))), vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global3.x)), _wgslsmith_f_op_f32(abs(937f)))) * 541f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1000f)))), -487f), !vec4<bool>(!arg_1.x & arg_1.x, all(select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.x)), true, !arg_1.x)));
    let var_1 = Struct_5(global0.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global2.zyw - _wgslsmith_f_op_vec3_f32(select(global3.yyz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1276f, global3.x, 189f)), vec3<bool>(false, arg_1.x, false)))))), Struct_2(global0.a.a.a), _wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(select(1i, 0i, true), select(global0.d, global0.d, false))), firstTrailingBit(2147483647i)), ~4294967295u);
    let var_2 = abs(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a.x, -2147483647i, global0.d, _wgslsmith_dot_vec4_i32(u_input.d, u_input.a)), -select(-u_input.a, ~vec4<i32>(-1i, -15458i, global0.d, 1i), !arg_1.x)));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, arg_0, global3.x, global0.b.x) * vec4<f32>(-717f, -1970f, global0.b.x, var_1.b.x)))));
    return vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-358f, _wgslsmith_f_op_f32(global2.x + 175f)))) * global2.x), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), 1000f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_2 {
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -913f), -536f, -370f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1840f, global2.x, global3.x, global0.b.x))) - vec4<f32>(global0.b.x, -142f, global3.x, 666f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global0.b.x, global3.x, global2.x) + vec4<f32>(943f, global2.x, global2.x, global2.x)))), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(min(-670f, 1107f)), vec2<bool>(true, false), arg_2))) * vec4<f32>(-2508f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global0.b.x))), -670f, _wgslsmith_f_op_f32(2287f - -504f))));
    var var_0 = vec2<bool>(any(select(vec4<bool>(false, true, any(vec3<bool>(false, false, true)), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, false, true, false)), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true))), all(vec2<bool>(any(vec2<bool>(true, true)), false)));
    global0 = Struct_5(Struct_3(arg_2), _wgslsmith_f_op_vec3_f32(-global2.wwx), Struct_2(global0.a.a.a), select(_wgslsmith_mult_i32(select(2147483647i, 30559i, true), _wgslsmith_clamp_i32(min(9672i, u_input.a.x), i32(-1i) * -23166i, min(arg_3.x, arg_0.x))), abs(_wgslsmith_dot_vec4_i32(abs(u_input.a), vec4<i32>(-34596i, -1i, 711i, global0.d))), true), countOneBits(5532u));
    var var_1 = Struct_1(select(72336u, arg_2.a.a, !(!any(vec4<bool>(true, var_0.x, true, true)))));
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1049f, -527f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.x + global3.x), _wgslsmith_f_op_f32(-1409f + global2.x))))), global2.x) - vec4<f32>(-1078f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -318f), _wgslsmith_f_op_f32(f32(-1f) * -1015f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * global2.x) - _wgslsmith_f_op_f32(-global3.x)))), global0.b.x, _wgslsmith_f_op_f32(ceil(global0.b.x))));
    return Struct_2(arg_2.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_4 {
    let var_0 = Struct_3(Struct_2(func_2(u_input.d.xyz, ~vec2<i32>(global0.d, global0.d), func_2(vec3<i32>(u_input.a.x, global0.d, u_input.a.x), ~u_input.a.xw, global0.c, vec4<i32>(36275i, 2661i, u_input.d.x, global0.d)), -u_input.a).a));
    var var_1 = vec4<f32>(global0.b.x, global4.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-927f, _wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(global4.c + global2.x)), true)), -1100f)), _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-162f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * global2.x), !all(vec4<bool>(false, false, false, false))))));
    var var_2 = Struct_5(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1153f, global0.b.x, global3.x)))))), func_2(u_input.d.wyz >> (~(~global1.wxx) % vec3<u32>(32u)), u_input.b.yw, Struct_2(func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 9640i, u_input.d.x), vec3<i32>(u_input.d.x, global0.d, 10384i)), _wgslsmith_div_vec2_i32(u_input.a.yx, u_input.a.yz), arg_0, ~vec4<i32>(global0.d, global0.d, -6914i, global0.d)).a), u_input.a), u_input.a.x, global1.x);
    global0 = Struct_5(Struct_3(Struct_2(Struct_1(~var_0.a.a.a))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-369f + _wgslsmith_f_op_f32(exp2(var_2.b.x))), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(min(749f, _wgslsmith_f_op_f32(round(global3.x)))), -1208f), func_2(u_input.d.yww >> (global1.yzw % vec3<u32>(32u)), u_input.b.xz, func_2(~(vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x) & vec3<i32>(global0.d, u_input.a.x, u_input.b.x)), reverseBits(-u_input.a.wz), Struct_2(Struct_1(arg_1.a.a)), firstTrailingBit(u_input.a ^ u_input.b)), u_input.b), global0.d, 26290u);
    global0 = Struct_5(Struct_3(func_2(-u_input.b.zww, _wgslsmith_div_vec2_i32(min(vec2<i32>(-6793i, -2147483647i), vec2<i32>(u_input.b.x, 2147483647i)), vec2<i32>(global0.d, u_input.a.x)), func_2(vec3<i32>(0i, var_2.d, 2147483647i), -vec2<i32>(global0.d, global0.d), Struct_2(global4.b), max(u_input.b, vec4<i32>(var_2.d, global0.d, 2147483647i, global0.d))), vec4<i32>(~(-1i), 1i, global0.d & -2147483647i, 0i))), _wgslsmith_f_op_vec3_f32(max(global0.b, vec3<f32>(_wgslsmith_div_f32(-1233f, -1000f), _wgslsmith_f_op_f32(round(-1681f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 179f) * -1000f)))), Struct_2(global4.a.a), 70733i, func_2(min(vec3<i32>(_wgslsmith_add_i32(var_2.d, var_2.d), global0.d, global0.d >> (global0.c.a.a % 32u)), -u_input.d.yzx), _wgslsmith_mult_vec2_i32(vec2<i32>(var_2.d, _wgslsmith_dot_vec4_i32(u_input.b, u_input.a)), ~u_input.d.zy), Struct_2(arg_0.a), vec4<i32>(_wgslsmith_mult_i32(u_input.d.x, u_input.a.x ^ var_2.d), _wgslsmith_mult_i32(global0.d, ~19787i), _wgslsmith_clamp_i32(var_2.d, u_input.d.x, -36629i) >> (func_2(vec3<i32>(-20531i, 2147483647i, var_2.d), u_input.b.yz, Struct_2(Struct_1(7264u)), vec4<i32>(u_input.a.x, var_2.d, var_2.d, 16314i)).a.a % 32u), ~global0.d)).a.a);
    return Struct_4(global0.a.a, Struct_1(~(~arg_1.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b.x + global3.x), _wgslsmith_f_op_f32(trunc(global3.x)))), 1037f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-155f + _wgslsmith_f_op_f32(global4.c + 275f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.x - var_2.b.x))))));
}

fn func_1() -> vec2<i32> {
    global4 = func_4(func_2(firstLeadingBit(~vec3<i32>(u_input.b.x, global0.d, global0.d)), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.d.xx, vec2<i32>(1217i, u_input.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, global0.d, -591i), -vec3<i32>(global0.d, u_input.a.x, u_input.a.x))), global4.a, -_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -6627i, u_input.b.x), vec4<i32>(u_input.d.x, u_input.d.x, u_input.b.x, global0.d))), func_2(vec3<i32>(-(~0i), 0i, _wgslsmith_clamp_i32(1i, u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-9416i, 22962i), vec2<i32>(-3930i, u_input.b.x)))), u_input.b.zz, global0.a.a, abs(abs(~u_input.b))), firstTrailingBit(_wgslsmith_div_vec3_u32(global1.ywz, global1.wwx >> (vec3<u32>(u_input.c, 4294967295u, 5741u) % vec3<u32>(32u)))));
    global1 = abs(vec4<u32>(~u_input.c, 21357u, select(4228u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.a.a, 40919u, 5066u, global1.x) | vec4<u32>(46125u, global1.x, 0u, 16614u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a.a.a.a, global4.a.a.a, u_input.c, 16521u), vec4<u32>(1u, 5877u, 4294967295u, global0.e), vec4<u32>(4294967295u, global0.c.a.a, u_input.c, 4294967295u))), true), func_2(vec3<i32>(u_input.a.x, u_input.d.x, 35821i), ~vec2<i32>(2147483647i, u_input.d.x), func_2(u_input.d.wyz, u_input.a.xz, Struct_2(global4.b), vec4<i32>(u_input.b.x, global0.d, global0.d, -45597i)), max(u_input.b, u_input.a)).a.a ^ ~52770u));
    var var_0 = select(vec4<bool>(!any(vec3<bool>(true, false, true)) || any(vec3<bool>(true, true, false)), !(u_input.a.x < u_input.d.x), !any(vec3<bool>(false, false, true)), !(!all(vec2<bool>(true, false)))), select(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, any(vec4<bool>(false, false, true, false)), true, true), vec4<bool>(true, true, true, true)), vec4<bool>(!any(vec2<bool>(false, true)), true, true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false))), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false))), vec4<bool>(false, any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), true, any(vec2<bool>(true, -366f <= global4.c))));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(round(global4.c)), _wgslsmith_f_op_f32(f32(-1f) * -459f), global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c) + -1033f), _wgslsmith_f_op_f32(-global3.x))));
    let var_1 = _wgslsmith_mult_i32(abs(max(abs(2783i), ~min(u_input.b.x, u_input.b.x))), -global0.d >> (select(u_input.c, ~(18200u << (u_input.c % 32u)), !var_0.x & var_0.x) % 32u));
    return select(reverseBits(vec2<i32>(_wgslsmith_div_i32(global0.d, -21343i), var_1) << (vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, 0u, u_input.c), vec4<u32>(4294967295u, 9516u, u_input.c, 0u))) % vec2<u32>(32u))), -u_input.a.yw, all(vec2<bool>(true, !(!var_0.x))));
}

fn func_5(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = vec3<f32>(global3.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1494f * _wgslsmith_f_op_f32(trunc(-1964f))), global2.x, !(!any(vec3<bool>(true, false, false))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-global2.x)), -2056f)));
    var var_1 = global0.c;
    var var_2 = global4.b.a;
    let var_3 = !select(vec4<bool>(true, true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true))), any(vec4<bool>(true, false, true, true))), vec4<bool>(false, all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), false, all(vec2<bool>(true, true))), true);
    var var_4 = _wgslsmith_mod_vec4_i32(min(-u_input.a, vec4<i32>(~u_input.b.x, -48815i, -9764i, u_input.a.x)) | firstTrailingBit(-vec4<i32>(u_input.d.x, u_input.a.x, -19676i, arg_0.x)), select(_wgslsmith_clamp_vec4_i32(u_input.b, (vec4<i32>(-57669i, -1217i, global0.d, -7895i) ^ vec4<i32>(0i, arg_0.x, -27916i, 46582i)) >> (vec4<u32>(global0.c.a.a, u_input.c, var_1.a.a, 0u) % vec4<u32>(32u)), u_input.b), select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -44111i, global0.d), vec3<i32>(arg_0.x, 2147483647i, u_input.b.x)), -1i, _wgslsmith_mult_i32(arg_0.x, 119i), u_input.a.x), select(vec4<i32>(-1i, u_input.a.x, 1i, 28200i), -vec4<i32>(u_input.d.x, global0.d, -2147483647i, u_input.d.x), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, var_3.x, var_3.x, var_3.x), !var_3, !vec4<bool>(true, false, var_3.x, false))), true));
    return global0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_4(func_5(func_1()), global4.b, 390f);
    global4 = func_4(Struct_2(Struct_1(global1.x)), func_4(func_4(global4.a, func_4(func_4(Struct_2(global4.a.a), global4.a, vec3<u32>(25701u, 70851u, global0.a.a.a.a)).a, func_4(global4.a, Struct_2(Struct_1(4294967295u)), vec3<u32>(global1.x, global1.x, u_input.c)).a, global1.yyz << (global1.zwx % vec3<u32>(32u))).a, ~min(vec3<u32>(global1.x, global0.a.a.a.a, global0.a.a.a.a), global1.wzz)).a, global0.a.a, ~firstLeadingBit(vec3<u32>(0u, global1.x, global1.x))).a, vec3<u32>(~(~1176u), 1u, min(33455u, _wgslsmith_add_u32(u_input.c >> (u_input.c % 32u), 0u))));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.b.x, global3.x, 238f, -282f), vec4<f32>(420f, global3.x, 708f, -789f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 647f, global2.x))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.x, 302f, global0.b.x, global2.x), vec4<f32>(1189f, 1000f, global3.x, global4.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(442f, global0.b.x, -1106f, global2.x)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-439f, global4.c, 2229f, 775f)))))));
    var var_0 = min(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32((vec3<i32>(global0.d, u_input.d.x, u_input.a.x) | vec3<i32>(-20012i, u_input.d.x, -1i)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(-37606i, global0.d, 0i), u_input.b.xzx), -abs(vec3<i32>(global0.d, u_input.a.x, 22252i))), vec3<i32>(_wgslsmith_add_i32(-1i | u_input.d.x, 18512i), -2147483647i, -4723i)), ~vec3<i32>(~_wgslsmith_dot_vec2_i32(u_input.d.yy, vec2<i32>(-10079i, -52965i)), -u_input.a.x, -global0.d >> (_wgslsmith_add_u32(1u, u_input.c) % 32u)));
    let var_1 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global4.c, -1258f, -1111f, global0.b.x), vec4<f32>(global2.x, -1228f, global0.b.x, global0.b.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, var_1.x, -1557f, global4.c) - vec4<f32>(1639f, -200f, 876f, -207f))) * vec4<f32>(-445f, global2.x, _wgslsmith_f_op_f32(min(-164f, 481f)), _wgslsmith_f_op_f32(global4.c * global4.c)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-457f, _wgslsmith_f_op_f32(f32(-1f) * -1037f), _wgslsmith_f_op_f32(-global4.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.wzx), vec3<f32>(global3.x, 448f, global3.x)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1476f, global2.x, -1053f) * global2.zwy), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, 1110f, global2.x) + vec3<f32>(global2.x, 805f, -281f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-422f, global4.c, global0.b.x) - global2.wxw)), vec3<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_div_f32(global2.x, global0.b.x), _wgslsmith_div_f32(global0.b.x, global2.x))))), ~firstTrailingBit(u_input.b.x), abs(-_wgslsmith_add_vec3_i32(u_input.d.xxw, -u_input.a.xwx)));
}

