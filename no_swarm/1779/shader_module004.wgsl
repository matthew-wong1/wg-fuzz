struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_2.a);
    var var_1 = arg_1;
    global0 = countOneBits(arg_0.x);
    global0 = _wgslsmith_div_u32(countOneBits(~u_input.b) >> (~37803u % 32u), countOneBits(1u));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.a * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1878f, arg_2.a.x, -146f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -392f))), _wgslsmith_f_op_f32(min(arg_1, var_0.x)), -1549f) * _wgslsmith_f_op_vec3_f32(arg_2.a - vec3<f32>(_wgslsmith_f_op_f32(arg_2.a.x + arg_2.a.x), _wgslsmith_f_op_f32(-arg_1), -303f))));
    return any(!select(select(select(vec2<bool>(false, arg_3), vec2<bool>(arg_3, arg_3), false), !vec2<bool>(true, arg_3), false), select(select(vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, arg_3), arg_3), select(vec2<bool>(false, true), vec2<bool>(true, arg_3), false), false), arg_3));
}

fn func_2() -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-731f, 122f, 389f)), select(u_input.c, vec2<i32>(_wgslsmith_add_i32(0i, u_input.c.x) >> (~4294967295u % 32u), i32(-1i) * -38036i), !func_3(~vec2<u32>(u_input.b, u_input.b), _wgslsmith_f_op_f32(160f - -1891f), Struct_2(vec3<f32>(442f, 351f, -409f), u_input.c), true)));
    let var_1 = !select(!vec3<bool>(false, true, select(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(!all(vec2<bool>(true, true)), true, select(true, false, 30949u <= u_input.b)));
    var var_2 = Struct_1((countOneBits(-u_input.c.x) > u_input.c.x) || var_1.x, ~(~(~(~u_input.b))));
    var var_3 = !var_1;
    var_3 = vec3<bool>(true, var_0.a.x <= _wgslsmith_f_op_f32(-476f - var_0.a.x), _wgslsmith_mod_u32(84052u, countOneBits(22891u)) < ~_wgslsmith_mult_u32(u_input.b, _wgslsmith_div_u32(6476u, 18703u)));
    return var_1.x;
}

fn func_1() -> Struct_1 {
    global0 = u_input.b;
    var var_0 = ~(-abs(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, u_input.a.x), vec2<i32>(u_input.c.x, 1i))));
    var var_1 = ~vec2<u32>(~4294967295u, 4294967295u);
    global0 = abs(~_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_add_u32(var_1.x, u_input.b)), u_input.b));
    global0 = 33413u;
    return Struct_1(func_2() && true, reverseBits(var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = var_0.b;
    var var_1 = u_input.a;
    global0 = u_input.b;
    var var_2 = _wgslsmith_add_vec4_i32(-firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.c.x, 1i, var_1.x), ~vec4<i32>(u_input.c.x, -1694i, 1i, var_1.x))), abs(vec4<i32>(6179i, 1i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), -28402i)) ^ -u_input.a);
    var_2 = _wgslsmith_mod_vec4_i32(u_input.a, u_input.a);
    var var_3 = firstTrailingBit(select(u_input.b, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(41627u, u_input.b)), ~vec2<u32>(0u, 68951u), ~vec2<u32>(1u, u_input.b)), ~(~vec2<u32>(u_input.b, 11717u))), func_3(~vec2<u32>(2498u, 63947u) & _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_0.b), vec2<u32>(0u, var_0.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1767f)))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -798f, 932f)), vec2<i32>(u_input.a.x, var_1.x)), ~u_input.b >= ~15025u)));
    var var_4 = !(!vec3<bool>(var_0.a, false, !var_0.a));
    var var_5 = _wgslsmith_mod_vec3_i32(~max(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 1i, 2147483647i), var_2.ywx & var_2.zxw), var_2.xwz), u_input.a.zwx);
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~(vec3<u32>(u_input.b, 57127u, 45168u) >> (vec3<u32>(0u, 1u, 4294967295u) % vec3<u32>(32u)))), ~firstTrailingBit(~vec3<u32>(u_input.b, var_0.b, 1u)), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -887f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-392f)), _wgslsmith_f_op_f32(416f * 789f), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(911f)) * _wgslsmith_f_op_f32(round(-780f)))) - 1043f), _wgslsmith_sub_vec3_i32(select(max(vec3<i32>(-1i, 49264i, 1i), vec3<i32>(-1i, u_input.a.x, var_2.x)), vec3<i32>(var_2.x, var_2.x, 2147483647i), true) | var_2.zyw, -firstLeadingBit(~vec3<i32>(var_5.x, var_2.x, var_5.x))), 17223u);
}

