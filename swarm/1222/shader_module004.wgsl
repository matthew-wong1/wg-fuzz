struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_mult_u32(~0u, u_input.b.x);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-373f))))), _wgslsmith_f_op_f32(floor(1015f))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>) -> vec2<bool> {
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 652f), vec3<f32>(_wgslsmith_f_op_f32(step(-758f, arg_1)), 616f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2421f), _wgslsmith_f_op_f32(-445f - 1000f))), _wgslsmith_f_op_f32(-arg_1)))));
    var var_2 = Struct_1(arg_0.c.zx, arg_0.c.x, !arg_0.c, -(~u_input.a));
    var_0 = firstLeadingBit(_wgslsmith_div_i32(1i, -46952i ^ _wgslsmith_dot_vec3_i32(var_2.d, _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.a.x), vec3<i32>(0i, 1i, arg_0.d.x)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_1 + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -486f, arg_1))))));
    return !arg_0.c.xz;
}

fn func_2() -> Struct_2 {
    return Struct_2(Struct_1(func_4(Struct_1(vec2<bool>(true, true), true, vec4<bool>(true, true, true, true), -u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), false))), (u_input.a.xz | u_input.a.zx) >> (u_input.b % vec2<u32>(32u))), !((63161u >= u_input.c) & false), vec4<bool>(true, true, true, true), vec3<i32>(~(-u_input.a.x), u_input.a.x, ~(~u_input.a.x))), _wgslsmith_add_vec4_u32(select(vec4<u32>(47932u, u_input.b.x, u_input.b.x, u_input.c) & vec4<u32>(0u, u_input.b.x, 0u, 4294967295u), reverseBits(vec4<u32>(u_input.b.x, 21922u, u_input.b.x, u_input.b.x)), vec4<bool>(true, true, true, true)) >> ((vec4<u32>(u_input.c, u_input.b.x, 0u, u_input.c) & (vec4<u32>(u_input.b.x, 0u, u_input.c, 51959u) ^ vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 4294967295u))) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, u_input.b.x, 0u, u_input.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 70419u, u_input.c), vec4<u32>(u_input.c, 1u, u_input.c, 4294967295u)) & countOneBits(vec4<u32>(4294967295u, 1u, 11u, 8599u)))), Struct_1(vec2<bool>(false, abs(-1i) >= ~u_input.a.x), func_4(Struct_1(vec2<bool>(true, true), true, vec4<bool>(false, false, false, false), u_input.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * 270f), _wgslsmith_f_op_f32(-883f * -1001f))), u_input.a.zz).x, vec4<bool>(true, true, true, true), -vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(5472i, 3748i, u_input.a.x), vec3<i32>(u_input.a.x, 2147483647i, -18865i)), _wgslsmith_mult_vec3_i32(u_input.a, u_input.a), ~u_input.a)));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(449f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -990f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * -874f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-407f, 1611f, -990f) + vec3<f32>(748f, -248f, 417f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(653f, 456f, -639f)))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1732f, 313f, -608f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-823f, 765f, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 621f, 1422f) - vec3<f32>(var_0.x, var_0.x, 1041f)) * vec3<f32>(var_0.x, 319f, -635f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -730f, -717f) + vec3<f32>(var_0.x, -1093f, var_0.x))))));
    var var_1 = func_2();
    let var_2 = Struct_1(select(select(var_1.a.c.xz, vec2<bool>(true, true), var_1.c.c.xx), !select(var_1.c.c.yz, !vec2<bool>(var_1.c.b, false), var_1.a.c.x), all(var_1.c.c.yz)), all(var_1.c.c), vec4<bool>(false, var_1.a.b, true | (_wgslsmith_f_op_f32(var_0.x - -558f) < _wgslsmith_f_op_f32(f32(-1f) * -754f)), true), ~var_1.a.d);
    var var_3 = func_2();
    return any(vec2<bool>(false && (_wgslsmith_f_op_f32(step(2244f, 451f)) >= _wgslsmith_div_f32(var_0.x, 1040f)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(!vec2<bool>(all(vec4<bool>(false, true, false, false)), true), func_1(), func_2().c.c, u_input.a), firstLeadingBit(vec4<u32>(~(~u_input.b.x), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, 4294967295u, 0u), vec4<u32>(0u, u_input.b.x, 4294967295u, 0u)), _wgslsmith_sub_u32(1u, u_input.b.x)), u_input.b.x, ~(~u_input.c))), Struct_1(func_4(func_2().c, _wgslsmith_f_op_f32(f32(-1f) * -234f), ~u_input.a.yz << (_wgslsmith_add_vec2_u32(u_input.b, u_input.b) % vec2<u32>(32u))), true, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, false, false, false))), ~_wgslsmith_mod_vec3_i32(u_input.a, _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(2147483647i, 2147483647i, 2147483647i)))));
    let var_1 = 1u;
    var var_2 = func_2();
    let var_3 = var_0.c;
    var var_4 = var_2.c.a.x;
    var_0 = Struct_2(Struct_1(!(!var_3.c.zy), false & var_2.c.c.x, !var_2.a.c, ~_wgslsmith_div_vec3_i32(reverseBits(var_0.a.d), vec3<i32>(var_0.a.d.x, u_input.a.x, -1i) ^ vec3<i32>(15052i, var_2.a.d.x, var_0.c.d.x))), abs(var_2.b), func_2().a);
    let x = u_input.a;
    s_output = StorageBuffer((24626u >> (abs(_wgslsmith_div_u32(var_0.b.x, 4294967295u)) % 32u)) >> (3199u % 32u), vec4<i32>(var_2.a.d.x << (firstTrailingBit(abs(var_2.b.x)) % 32u), _wgslsmith_dot_vec2_i32(-vec2<i32>(-7872i, -10019i), vec2<i32>(u_input.a.x, ~60426i)), 1i, max(_wgslsmith_add_i32(var_2.c.d.x, u_input.a.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.b.x, var_0.b.x), vec3<u32>(102927u, 1u, u_input.b.x)) % 32u), 0i)));
}

