struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_1) -> i32 {
    global0 = -2147483647i;
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_1.a))))), vec4<f32>(-645f, _wgslsmith_div_f32(-407f, _wgslsmith_f_op_f32(f32(-1f) * -241f)), 1085f, _wgslsmith_f_op_f32(step(742f, 442f))), true)), Struct_2(arg_3.b), Struct_1(all(!(!vec3<bool>(true, false, arg_1.c.a))), ~1u));
    let var_1 = arg_3;
    var var_2 = max(var_1.b, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, arg_3.b), u_input.b.wwz >> (vec3<u32>(arg_3.b, var_0.b.a, arg_0.b) % vec3<u32>(32u))) ^ select(u_input.b.yzz, arg_2.c.yzy, arg_2.b.a || arg_0.a), reverseBits(u_input.b.xxz)));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(min(arg_1.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(arg_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-167f, -608f, arg_1.a.x, 1012f)), !vec4<bool>(true, arg_0.a, arg_2.d.a, false))))))), var_0.b, arg_3);
    return _wgslsmith_add_i32(~1i ^ _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, u_input.c, 9281i, -360i), u_input.e), ~u_input.e), vec4<i32>(u_input.c, reverseBits(u_input.c), abs(-35656i), ~1i)), min(-(~u_input.a.x), ~26032i & u_input.e.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> Struct_1 {
    global0 = ~(-1i);
    let var_0 = !select(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), false)), vec4<bool>(u_input.d.x >= ~u_input.d.x, true, true, all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true))));
    var var_1 = _wgslsmith_add_u32(11408u, u_input.d.x);
    var_1 = 6542u;
    let var_2 = select(_wgslsmith_add_vec3_i32(vec3<i32>(abs(~12481i), 2147483647i, abs(arg_1)), reverseBits(vec3<i32>(u_input.e.x, countOneBits(2147483647i), _wgslsmith_sub_i32(16279i, arg_1)))), _wgslsmith_div_vec3_i32(vec3<i32>(1i, -5883i, func_3(Struct_1(var_0.x, 42098u), Struct_3(vec4<f32>(788f, arg_0.x, arg_0.x, 591f), Struct_2(61768u), Struct_1(false, 4294967295u)), Struct_4(Struct_2(0u), Struct_1(var_0.x, u_input.b.x), u_input.b, Struct_1(var_0.x, u_input.d.x)), Struct_1(false, 83968u))), min(u_input.e.wzw, _wgslsmith_sub_vec3_i32(u_input.e.ywy, u_input.e.zzw))), select(vec3<bool>(!(var_0.x && var_0.x), any(vec3<bool>(var_0.x, true, var_0.x)), -1892f == _wgslsmith_div_f32(arg_0.x, -801f)), vec3<bool>(var_0.x, (u_input.a.x << (1u % 32u)) <= -2079i, var_0.x), true));
    return Struct_1(any(vec2<bool>(select(var_0.x, false, var_0.x), all(!var_0.xw))), u_input.b.x);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_4(Struct_2(~arg_2.b), func_2(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1701f)), 967f)), -1133f), u_input.e.x), abs(u_input.b), Struct_1(true, _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b.x, arg_2.b) >> (max(arg_2.b, 46167u) % 32u), firstLeadingBit(u_input.d.x))));
    var var_1 = var_0.a;
    global0 = -10241i;
    var var_2 = _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -660f)));
    let var_3 = var_0.d.a;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 600f) + 679f))), -1301f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(499f - _wgslsmith_f_op_f32(floor(-863f)));
    global0 = 13782i;
    var_1 = _wgslsmith_f_op_f32(func_1(1396f, u_input.e.yyx, Struct_1(!(any(vec2<bool>(true, true)) == true), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 0u) >> (u_input.b.ww % vec2<u32>(32u)), ~u_input.d), 11110u))));
    var var_2 = u_input.c;
    var_2 = u_input.a.x;
    var var_3 = !((func_2(vec2<f32>(1578f, -944f), min(u_input.c, u_input.c)).a | false) || (all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)) == any(select(vec2<bool>(true, true), vec2<bool>(true, false), false))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~(~_wgslsmith_mod_i32(-u_input.e.x, countOneBits(21976i))));
}

