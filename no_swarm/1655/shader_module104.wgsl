struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> vec2<u32> {
    let var_0 = Struct_1(~abs(u_input.d.xy), select(vec3<bool>(true, true, true), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, all(vec2<bool>(false, true)), true))), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), 0i, -vec2<i32>(-u_input.c, _wgslsmith_add_i32(u_input.c, u_input.a)) >> (~(select(vec2<u32>(33654u, u_input.b), vec2<u32>(0u, 80915u), false) << ((vec2<u32>(4294967295u, u_input.d.x) << (vec2<u32>(8783u, 0u) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = Struct_4(var_0, u_input.d);
    var var_2 = Struct_5(var_1, Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(573f, -1974f, false)), _wgslsmith_f_op_f32(select(-1637f, 2232f, var_1.a.b.x)), !var_0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(trunc(arg_0.x)))), !select(var_0.c, var_0.b.yz, var_0.b.x), u_input.d.x));
    let var_3 = select(select(var_2.a.a.b, var_1.a.b, (_wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(-var_2.b.a)) == any(!vec3<bool>(var_2.a.a.b.x, true, false))), select(var_0.b, select(select(select(var_2.a.a.b, vec3<bool>(var_0.c.x, var_1.a.b.x, true), var_2.a.a.b), vec3<bool>(var_0.b.x, false, true), vec3<bool>(true, var_0.c.x, false)), vec3<bool>(true, !var_0.c.x, false), select(var_2.a.a.b, vec3<bool>(false, true, true), !var_1.a.c.x)), select(vec3<bool>(true, true, true), vec3<bool>(!var_0.b.x, var_1.a.c.x, true), _wgslsmith_mult_u32(u_input.b, 1u) == ~u_input.b)), var_0.c.x);
    let var_4 = Struct_3(arg_0.x, vec2<bool>(select(var_2.b.a != _wgslsmith_f_op_f32(sign(702f)), !(!var_3.x), true), true), var_1.a.a.x);
    return vec2<u32>(_wgslsmith_mod_u32(~1u, u_input.d.x), ~_wgslsmith_mod_u32(1u, u_input.d.x)) ^ countOneBits(var_1.a.a);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(~(-28581i) & (u_input.a >> (u_input.d.x % 32u)), _wgslsmith_mult_i32(-u_input.a, u_input.c), countOneBits(u_input.c)) >> (vec3<u32>(~u_input.d.x, min(max(59458u, 42332u), _wgslsmith_clamp_u32(u_input.d.x, u_input.b, 63749u)), u_input.b) % vec3<u32>(32u)), -abs(select(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 30275i, u_input.a), vec3<i32>(u_input.a, 2147483647i, 19929i)), vec3<i32>(1i, -1i, 10069i), vec3<bool>(true, true, true))));
    var var_1 = Struct_4(Struct_1(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(950f, -470f))), vec3<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), true), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), false)), -7748i << (0u % 32u), -vec2<i32>(u_input.c, u_input.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, min(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), u_input.b), ~1u), abs(u_input.d)));
    var_0 = var_1.a.e.x;
    let var_2 = ~(~firstTrailingBit(4294967295u));
    let var_3 = ~(~select(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 1u, 4294967295u, 0u) | vec4<u32>(82299u, 3176u, u_input.b, var_2), vec4<u32>(var_2, 0u, var_2, var_2)), any(!vec2<bool>(var_1.a.c.x, false))));
    return Struct_1(vec2<u32>(1u, _wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(6740u, var_2, 18267u, var_2), vec4<u32>(42756u, var_2, var_2, var_2), var_1.a.b.x), ~vec4<u32>(var_3, 1u, 4294967295u, u_input.d.x)))), select(var_1.a.b, select(select(var_1.a.b, !vec3<bool>(var_1.a.b.x, var_1.a.b.x, var_1.a.b.x), !var_1.a.c.x), vec3<bool>(false, u_input.c <= 0i, var_1.a.b.x), (var_1.a.c.x | var_1.a.c.x) == true), var_1.a.b.x || (_wgslsmith_dot_vec3_u32(vec3<u32>(23765u, var_1.b.x, 0u), var_1.b) != ~69159u)), vec2<bool>(all(select(!vec3<bool>(var_1.a.b.x, false, var_1.a.c.x), select(var_1.a.b, var_1.a.b, vec3<bool>(var_1.a.b.x, false, false)), u_input.a <= -23985i)), -456f <= _wgslsmith_f_op_f32(253f + _wgslsmith_f_op_f32(floor(-1000f)))), ~var_1.a.d, (min(-vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(var_1.a.e.x, var_1.a.e.x) >> (vec2<u32>(var_2, var_2) % vec2<u32>(32u))) >> (~vec2<u32>(117973u, 4294967295u) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_i32(abs(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -56790i), vec2<i32>(-1i, -1i))), ~var_1.a.e));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = -1149f;
    let var_1 = !(any(vec3<bool>(any(vec3<bool>(true, false, true)), u_input.c <= 20499i, false)) & true);
    var_0 = arg_0;
    var var_2 = func_2();
    var_0 = _wgslsmith_f_op_f32(arg_0 + 1063f);
    return Struct_3(arg_0, select(vec2<bool>(false, var_1), var_2.c, var_2.b.zz), ~var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(round(1f)), -vec4<i32>(_wgslsmith_add_i32(abs(-2147483647i), -32152i & u_input.c), countOneBits(~(-2147483647i)), _wgslsmith_add_i32(countOneBits(u_input.a), -1i), u_input.a));
    var var_1 = u_input.c;
    var var_2 = 1i;
    var_2 = u_input.c;
    var_2 = -17719i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(1i, u_input.a, u_input.c)) >> (~_wgslsmith_add_vec3_u32(~u_input.d, u_input.d) % vec3<u32>(32u)), firstTrailingBit(~reverseBits(10435u)), var_0.a, -10936i);
}

