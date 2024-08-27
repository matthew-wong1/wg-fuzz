struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_2;

var<private> global2: f32;

var<private> global3: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = select(select(arg_0, !vec4<bool>(all(global1.a.b.yz), any(vec4<bool>(true, arg_0.x, arg_0.x, true)), any(vec4<bool>(false, arg_0.x, true, global1.a.b.x)), any(arg_0.wyx)), vec4<bool>(!arg_1.a.b.x, !all(arg_0), true, true)), vec4<bool>(arg_0.x, true, (_wgslsmith_f_op_f32(trunc(-1177f)) != _wgslsmith_f_op_f32(min(arg_1.b, 217f))) || false, !(arg_1.a.b.x == false) == false), !select(false, any(vec3<bool>(false, arg_1.a.b.x, arg_0.x)), select(arg_0.x, arg_1.a.b.x, all(vec2<bool>(false, global1.a.b.x)))));
    global2 = -430f;
    var_0 = !(!(!vec4<bool>(arg_1.a.b.x, arg_1.a.b.x, true | arg_1.a.b.x, false)));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + 187f))), vec3<bool>(arg_0.x, false, var_0.x), abs(~vec4<i32>(arg_1.a.d, global1.a.c.x, u_input.c.x, -12510i)) >> ((abs(vec4<u32>(u_input.b, 1u, u_input.a, 89768u)) & vec4<u32>(global1.e.x, u_input.a, 49192u, 1u)) % vec4<u32>(32u)), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -47829i, 89059i, 84259i), u_input.d & global1.a.c)), ~(4294967295u >> (~(11714u ^ u_input.a) % 32u)), Struct_2(Struct_1(-366f, select(select(vec3<bool>(false, global1.a.b.x, false), var_0.zyy, global1.a.b.x), vec3<bool>(true, arg_0.x, true), arg_0.zwz), -(vec4<i32>(u_input.d.x, -1i, arg_1.a.c.x, u_input.c.x) >> (arg_1.e % vec4<u32>(32u))), -3823i), _wgslsmith_f_op_f32(min(global0.x, arg_1.d)), global1.b, global1.d, vec4<u32>(_wgslsmith_add_u32(u_input.a, 43612u), arg_1.e.x, firstTrailingBit(global1.e.x), _wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, arg_1.e.x), 26612u))), arg_1, arg_1.a);
    let var_2 = arg_0;
    return _wgslsmith_mult_vec3_u32(((~vec3<u32>(u_input.b, arg_1.e.x, 4294967295u) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.c.e.x, 4294967295u, 4294967295u), global1.e.zxx) % vec3<u32>(32u))) >> (vec3<u32>(~13287u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.e.x, global1.e.x), vec2<u32>(arg_1.e.x, 4294967295u))) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_1.e.x, global1.e.x, 0u, 34978u)), vec4<u32>(arg_1.e.x, 4294967295u, 0u, var_1.d.e.x)), abs(_wgslsmith_clamp_u32(45019u, var_1.b, 11197u)), 90663u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(~_wgslsmith_add_vec3_u32(arg_1.e.wzz | var_1.c.e.zwy, vec3<u32>(u_input.b, global1.e.x, 0u)), arg_1.e.xzy, _wgslsmith_div_vec3_u32(min(abs(var_1.c.e.xwy), global1.e.xzy), ~var_1.d.e.xwz)));
}

fn func_2() -> i32 {
    var var_0 = global1.a;
    let var_1 = 1674f;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1368f + var_1) + _wgslsmith_f_op_f32(global1.a.a + var_1)), _wgslsmith_f_op_f32(max(-603f, var_0.a)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x), _wgslsmith_f_op_f32(ceil(1937f))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global1.b)))) - 710f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-276f))))));
    return _wgslsmith_dot_vec3_i32(max(reverseBits(abs(vec3<i32>(23242i, -31023i, 0i))), min(vec3<i32>(var_0.c.x, 2147483647i, var_0.c.x), u_input.c.zzz) << ((vec3<u32>(global1.e.x, u_input.b, 6746u) | global1.e.yyy) % vec3<u32>(32u))) >> (func_3(select(!vec4<bool>(var_0.b.x, true, false, true), !vec4<bool>(var_0.b.x, true, global1.a.b.x, true), vec4<bool>(var_0.b.x, false, var_0.b.x, global1.a.b.x)), Struct_2(Struct_1(var_0.a, vec3<bool>(false, false, var_0.b.x), vec4<i32>(-2147483647i, var_0.c.x, var_0.c.x, 2147483647i), 0i), -1481f, 851f, _wgslsmith_f_op_f32(f32(-1f) * -787f), vec4<u32>(u_input.b, global1.e.x, 62885u, 98139u))) % vec3<u32>(32u)), ~var_0.c.yww & var_0.c.xyw);
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1682f, global0.x, _wgslsmith_f_op_f32(-global1.b), global0.x));
    global1 = Struct_2(Struct_1(-1027f, !select(!global1.a.b, vec3<bool>(true, true, false), global1.a.b.x), _wgslsmith_mult_vec4_i32(u_input.d, ~(~global1.a.c)), 31838i), var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.a.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 273f))))), _wgslsmith_f_op_f32(-var_0.x), vec4<u32>(~(u_input.b >> (1u % 32u)), countOneBits(u_input.b) >> (~u_input.a % 32u), u_input.b, ~36785u) | firstLeadingBit(vec4<u32>(global1.e.x, 30812u, 41595u, 0u) | ~vec4<u32>(global1.e.x, 11932u, 4294967295u, 0u)));
    global2 = 1f;
    var var_1 = vec3<i32>(func_2(), -_wgslsmith_add_i32(_wgslsmith_add_i32(0i, global1.a.c.x), global1.a.c.x), reverseBits(u_input.c.x)) << (vec3<u32>(_wgslsmith_dot_vec3_u32(~global1.e.zwx & vec3<u32>(18055u, 8874u, u_input.a), global1.e.yxx), ~_wgslsmith_mod_u32(~14403u, global1.e.x), 0u) % vec3<u32>(32u));
    let var_2 = Struct_4(u_input.d, global1.b, -1274f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-global0.x), -1621f) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_0.xyw * vec3<f32>(-1237f, global0.x, global0.x)), vec3<f32>(var_0.x, -847f, -1300f)))), vec3<f32>(global1.a.a, _wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global1.a.a))));
    return StorageBuffer(-select(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.d, var_1.x, var_2.a.x, u_input.c.x), vec4<i32>(-48570i, u_input.c.x, 32662i, var_2.a.x)), u_input.d.x, min(u_input.d.x, var_2.a.x) >= _wgslsmith_add_i32(global1.a.c.x, var_1.x)), _wgslsmith_add_i32(_wgslsmith_add_i32(52338i, u_input.d.x), global1.a.d), -25205i, -11184i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2084f, _wgslsmith_div_f32(global0.x, var_2.d.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

