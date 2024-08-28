struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<i32> {
    global0 = select(-(vec2<i32>(u_input.c.x, u_input.d.x) ^ ((vec2<i32>(-3701i, 2147483647i) & u_input.a.yy) << (firstTrailingBit(u_input.b) % vec2<u32>(32u)))), u_input.d.yx, vec2<bool>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-50304i, u_input.c.x), vec2<i32>(global0.x, u_input.c.x)) <= (_wgslsmith_add_i32(26635i, u_input.c.x) << ((u_input.b.x & u_input.b.x) % 32u)), true));
    global0 = u_input.c;
    var var_0 = Struct_3(Struct_1(0u, -select(firstLeadingBit(-8850i), u_input.d.x | u_input.c.x, false), countOneBits(u_input.b.x), -4137i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-318f, -829f, -1145f), vec3<f32>(267f, -273f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(353f, -103f, 1515f) * vec3<f32>(1581f, 1019f, -2435f)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false))) - vec3<f32>(_wgslsmith_f_op_f32(1902f - -700f), _wgslsmith_f_op_f32(abs(1509f)), _wgslsmith_div_f32(-737f, 763f)))));
    let var_1 = var_0.a;
    let var_2 = var_1.d | _wgslsmith_add_i32(abs(i32(-1i) * -var_0.a.b), 1i);
    return vec2<i32>(_wgslsmith_dot_vec3_i32(~(-_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, var_1.b, -36854i), u_input.d.zxy)), select(reverseBits(~vec3<i32>(var_0.a.d, 20868i, global0.x)), ~_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(3523i, -18644i, 1i)), vec3<bool>(all(vec3<bool>(true, true, true)), false, any(vec3<bool>(false, true, false))))), ~min(var_1.d, var_1.d));
}

fn func_2() -> f32 {
    global0 = max(~vec2<i32>(_wgslsmith_dot_vec3_i32(abs(u_input.a), vec3<i32>(50089i, -21359i, u_input.c.x)), -42145i << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(0u, u_input.b.x, 0u)) % 32u)), ~(-(vec2<i32>(2147483647i, global0.x) | vec2<i32>(13928i, 12933i)) & func_3()));
    global0 = firstLeadingBit(u_input.c >> (~_wgslsmith_sub_vec2_u32(~u_input.b, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(35417u, 1u))) % vec2<u32>(32u)));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -967f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-197f, 417f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(190f, 1361f)))))));
    var var_1 = firstTrailingBit(u_input.b.x);
    global0 = _wgslsmith_div_vec2_i32(~reverseBits(vec2<i32>(u_input.d.x, global0.x)), _wgslsmith_mult_vec2_i32(-vec2<i32>(0i, u_input.d.x & 1i), reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(u_input.d.x, 1i)))));
    return _wgslsmith_f_op_f32(var_0.x + var_0.x);
}

fn func_1(arg_0: vec4<u32>) -> vec4<f32> {
    var var_0 = !(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-152f, 325f)) - 1844f) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2())))));
    var var_1 = ~vec3<i32>(-2147483647i, global0.x, select(~1i ^ u_input.c.x, min(27918i << (0u % 32u), ~global0.x), any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))));
    var_0 = true;
    let var_2 = Struct_1(arg_0.x, _wgslsmith_add_i32(select(_wgslsmith_clamp_i32(u_input.c.x, ~(-1i), _wgslsmith_sub_i32(global0.x, -2147483647i)), _wgslsmith_mod_i32(global0.x, global0.x & global0.x), true), 50304i), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.b.x, 6963u), 12511u, countOneBits(~countOneBits(1u))), -55706i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1759f, -869f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(280f, -985f, false)))), -241f)));
    global0 = u_input.d.xx;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-469f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1000f))))), -1287f, -2596f, _wgslsmith_f_op_f32(var_2.e.x + -1120f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_vec2_i32(u_input.a.zy, reverseBits(~u_input.c)) << (u_input.b % vec2<u32>(32u));
    var var_0 = countOneBits(-6329i);
    global0 = -select(-u_input.a.xy, vec2<i32>(2147483647i, ~global0.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.b.x), vec3<u32>(3876u, u_input.b.x, 4294967295u)) == _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b, u_input.b), u_input.b));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec4<u32>(u_input.b.x, 8255u, u_input.b.x, 31759u))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u))))) * vec4<f32>(_wgslsmith_f_op_f32(1f + -865f), _wgslsmith_f_op_f32(sign(371f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1896f * -114f), 2958f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -1023f), _wgslsmith_f_op_f32(step(-1241f, 153f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -262f) + 1f))));
    let var_2 = Struct_3(Struct_1(select(0u, _wgslsmith_clamp_u32(76999u, 75010u, 0u), true) | u_input.b.x, select(select(32397i, u_input.d.x, true), global0.x, false), u_input.b.x, max(-_wgslsmith_div_i32(-1i, global0.x), _wgslsmith_div_i32(1i, i32(-1i) * -1i)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(935f - 435f), _wgslsmith_f_op_f32(var_1.x - var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-749f + var_1.x), _wgslsmith_div_f32(236f, -322f)), _wgslsmith_f_op_vec4_f32(func_1(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 112091u))).x)));
    let var_3 = var_2.a;
    var_0 = -7688i;
    let var_4 = !vec4<bool>(true, true, any(vec4<bool>(true, select(false, false, true), true, false)), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.c, 279f, u_input.d | (u_input.d << (_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.a, 0u, var_3.c, u_input.b.x), vec4<u32>(var_3.c, u_input.b.x, u_input.b.x, var_2.a.a)), vec4<u32>(var_3.c, var_3.a, var_3.c, 39060u) | vec4<u32>(var_2.a.c, 52038u, 23446u, var_2.a.c), ~vec4<u32>(var_2.a.c, 36799u, 58196u, var_2.a.c)) % vec4<u32>(32u))), vec2<i32>(0i, -abs(u_input.a.x)) ^ ~u_input.d.zw);
}

