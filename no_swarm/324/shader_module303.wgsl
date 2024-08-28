struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<u32> {
    var var_0 = Struct_1(-_wgslsmith_mult_vec3_i32(-arg_1.a, _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a.x, -2147483647i, -11944i), vec3<i32>(arg_1.a.x, arg_0.a.x, 1i)), arg_1.a)));
    let var_1 = vec4<bool>(!any(vec3<bool>(all(vec3<bool>(true, true, false)), any(vec2<bool>(true, false)), true)), ~_wgslsmith_sub_i32(-arg_0.a.x, firstLeadingBit(u_input.d.x)) < arg_1.a.x, !any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true)), any(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(u_input.c.x > arg_0.b.x, true, all(vec3<bool>(true, false, true))), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true))));
    var_0 = arg_1;
    let var_2 = Struct_3(~vec2<i32>(~arg_0.a.x, abs(u_input.a)), reverseBits(~arg_0.b));
    var var_3 = select(vec2<u32>(16056u, var_2.b.x), ~(vec2<u32>(1u, 0u) | arg_0.b.xx) << (arg_0.b.xw % vec2<u32>(32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.x - arg_2.x))))) <= _wgslsmith_f_op_f32(max(869f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_2.x)))))));
    return var_2.b;
}

fn func_2() -> vec3<i32> {
    var var_0 = u_input.d.zy >> (vec2<u32>(u_input.b.x, u_input.c.x) % vec2<u32>(32u));
    let var_1 = max(u_input.c.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(4294967295u, 9631u, u_input.b.x, u_input.c.x)), vec4<u32>(_wgslsmith_mod_u32(4294967295u, 1u), u_input.b.x, u_input.c.x >> (u_input.b.x % 32u), 1u)), func_3(Struct_3(abs(u_input.d.xz), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.c.x, u_input.c.x)), Struct_1(-vec3<i32>(var_0.x, 0i, 4349i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(688f, 1005f, -1727f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-975f, -339f, -544f))))));
    let var_2 = Struct_1(-abs(_wgslsmith_mod_vec3_i32(-u_input.d, vec3<i32>(11194i, var_0.x, u_input.a))));
    global0 = array<Struct_3, 27>();
    let var_3 = -1589f;
    return var_2.a;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = vec3<i32>(u_input.d.x, ~(i32(-1i) * -1i) | max(17571i, countOneBits(max(u_input.a, -28419i))), i32(-1i) * -1i);
    var var_1 = u_input.d;
    let var_2 = Struct_1(func_2());
    var_0 = vec3<i32>(_wgslsmith_sub_i32(-func_2().x, var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, min(7070i, var_0.x), 34783i), vec4<i32>(u_input.a ^ var_0.x, abs(var_1.x), i32(-1i) * -2147483647i, -var_0.x)) & ~abs(40966i), _wgslsmith_add_i32(~firstLeadingBit(u_input.d.x), -59187i) >> ((_wgslsmith_add_u32(max(arg_0.x, arg_0.x), ~0u) | (u_input.b.x | 1u)) % 32u));
    let var_3 = Struct_2(1f, Struct_1(reverseBits(u_input.d) << (~arg_0 % vec3<u32>(32u))));
    return var_3.b;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = vec4<bool>(false, true, _wgslsmith_div_u32(4294967295u, u_input.c.x) > 4294967295u, false);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1382f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, -1386f))))), func_1(vec3<u32>(25246u << (~arg_0 % 32u), 1u, ~abs(110317u))));
    var_0 = !vec4<bool>(true == all(!var_0.wx), false, !var_0.x, true);
    let var_2 = Struct_3(firstTrailingBit(countOneBits(var_1.b.a.zx)), vec4<u32>(countOneBits(select(arg_0 & 4294967295u, reverseBits(39271u), all(vec4<bool>(false, var_0.x, false, var_0.x)))), arg_0, _wgslsmith_clamp_u32(~31201u, _wgslsmith_mult_u32(arg_0, 13212u), max(1u, u_input.c.x)) << (~(~arg_0) % 32u), ~(~u_input.c.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, _wgslsmith_f_op_f32(ceil(-1880f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(round(arg_2))) + _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-arg_2))), -666f));
    return var_1.b;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_3 {
    global0 = array<Struct_3, 27>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-566f - 1f), _wgslsmith_f_op_f32(abs(1000f)))), Struct_1(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(68845i, arg_1.a.x, -2147483647i), vec3<i32>(arg_1.a.x, -7599i, 0i))) & ~vec3<i32>(u_input.d.x, arg_1.a.x, 10407i)));
    global0 = array<Struct_3, 27>();
    global0 = array<Struct_3, 27>();
    let var_1 = min(max(abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.c.x), u_input.c.zz)), _wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(2601u, arg_0.x, 1u, 38111u), vec4<u32>(1u, 1u, 17780u, u_input.c.x))), vec4<u32>(1u, ~29939u, arg_0.x << (arg_0.x % 32u), 1u))), u_input.c.x);
    return Struct_3(arg_1.a.zx, ~firstTrailingBit(~vec4<u32>(1u, 31467u, 1u, u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!(!(2147483647i > u_input.a))));
    let var_1 = !vec4<bool>(all(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true)), true, (-13299i > u_input.a) || !any(vec4<bool>(true, true, true, false)), true);
    let var_2 = func_5(~u_input.c, func_4(0u, func_1(u_input.c), _wgslsmith_f_op_f32(-1591f + _wgslsmith_f_op_f32(f32(-1f) * -321f))));
    var var_3 = vec2<i32>(u_input.a, 18781i);
    var var_4 = vec2<i32>(var_2.a.x ^ ~(~(~var_3.x)), _wgslsmith_mod_i32(u_input.d.x, ~(-7570i)));
    let var_5 = select(vec4<bool>(var_1.x, false, all(vec3<bool>(var_1.x & false, any(vec4<bool>(var_1.x, false, false, false)), all(var_1))), var_4.x != firstLeadingBit(1i)), select(var_1, var_1, select(!vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(any(vec2<bool>(true, true)), true, any(vec4<bool>(true, var_1.x, true, false)), var_1.x), var_1.x)), vec4<bool>(any(var_1.xyx), true, !any(!var_1.xz), _wgslsmith_f_op_f32(-1f) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-237f))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-1i), max(~reverseBits(vec4<u32>(0u, 1u, u_input.b.x, u_input.b.x)) << (vec4<u32>(_wgslsmith_sub_u32(4294967295u, 1u), abs(23367u), ~0u, 20403u) % vec4<u32>(32u)), vec4<u32>(1u, u_input.c.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_2.b.x, u_input.c.x), u_input.c.x, func_5(u_input.c, Struct_1(u_input.d)).b.x), u_input.c.x)));
}

