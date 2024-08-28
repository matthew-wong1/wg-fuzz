struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: vec3<f32>,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, ~u_input.b), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(-3925i, u_input.b)), vec2<i32>(-u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -11918i), vec2<i32>(-12759i, u_input.b))))), vec2<i32>(u_input.b, 1i << (_wgslsmith_add_u32(u_input.c.x | 17716u, ~334u) % 32u)));
    var var_1 = -var_0;
    var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -6952i), countOneBits(vec2<i32>(u_input.b, var_0.x)), vec2<i32>(firstTrailingBit(~min(var_0.x, -78948i)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -2147483647i, -1i, -1i), vec4<i32>(var_0.x, var_0.x, u_input.b, 43425i)), vec4<i32>(var_0.x, var_0.x, -1i, var_0.x)) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(40302u, u_input.a.x, 1u, u_input.a.x), u_input.a), u_input.a) % 32u)));
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(148f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1077f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -510f))), _wgslsmith_f_op_f32(ceil(-800f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1750f, _wgslsmith_f_op_f32(sign(319f)))))), 2810f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2371f + -851f) * 905f))), -339f));
    var_1 = max(var_0, vec2<i32>(~(-34990i), i32(-1i) * -(i32(-1i) * -1i)));
    return Struct_1(var_0.x, firstLeadingBit(select(vec3<i32>(2147483647i, var_0.x, -u_input.b), vec3<i32>(_wgslsmith_sub_i32(4799i, var_1.x), ~var_1.x, var_0.x), vec3<bool>(any(vec2<bool>(true, true)), true, all(vec3<bool>(false, false, false))))));
}

fn func_3() -> vec4<bool> {
    var var_0 = select(vec2<bool>(false, select(true, false, u_input.c.x < 4294967295u)), vec2<bool>(true, !(u_input.b > u_input.b) && true), (reverseBits(firstLeadingBit(u_input.b)) > -(~30039i)) || !(true && any(vec3<bool>(false, false, false))));
    var_0 = vec2<bool>(_wgslsmith_mod_u32(4294967295u, u_input.c.x) != ~firstTrailingBit(u_input.a.x), var_0.x);
    var_0 = select(!(!(!select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x)))), select(vec2<bool>(true, true), !select(select(vec2<bool>(var_0.x, false), vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x)), select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true)), all(vec3<bool>(true, true, var_0.x))), all(!(!vec4<bool>(var_0.x, true, false, true)))), !select(select(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(true, var_0.x), vec2<bool>(false, true), false), true), select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), true), !vec2<bool>(var_0.x, var_0.x), !vec2<bool>(true, var_0.x)), true));
    let var_1 = Struct_2(u_input.a.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -912f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-478f, 465f))))));
    return vec4<bool>(true | !(!(var_0.x && var_0.x)), true, !(!all(vec3<bool>(false, var_0.x, var_0.x))), any(vec3<bool>(true, !select(var_0.x, false, var_0.x), !var_0.x & all(vec3<bool>(var_0.x, false, var_0.x)))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_2(1u);
    var var_1 = func_2();
    var_1 = arg_1;
    let var_2 = Struct_2(var_0.a);
    var_1 = arg_1;
    return Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(485f, 848f) + vec2<f32>(-566f, 1718f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-733f, -589f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1050f) + vec2<f32>(330f, 246f)))))), func_3().xxy, -(i32(-1i) * -24747i));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-294f, -504f)))))), vec3<bool>(true, !(_wgslsmith_f_op_f32(round(663f)) < _wgslsmith_f_op_f32(round(434f))), true), 1i);
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(step(var_0.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(var_0.a.x, var_0.a.x))))))), !var_0.b, u_input.b);
    let var_1 = ~(~_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mod_u32(91387u, 5389u)), ~_wgslsmith_mod_u32(u_input.c.x, u_input.c.x)));
    var_0 = func_4(false, func_2(), _wgslsmith_sub_vec2_i32(-(~vec2<i32>(-2147483647i, var_0.c) | -vec2<i32>(var_0.c, u_input.b)), abs(~_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 17191i), vec2<i32>(u_input.b, u_input.b), vec2<i32>(var_0.c, -59050i)))), vec2<bool>(all(select(func_3(), !vec4<bool>(true, var_0.b.x, true, false), vec4<bool>(var_0.b.x, true, false, var_0.b.x))), true));
    var_0 = Struct_3(var_0.a, select(var_0.b, var_0.b, vec3<bool>(!(var_0.b.x && var_0.b.x), u_input.b < 2147483647i, var_1 != var_1)), firstTrailingBit(~(-abs(var_0.c))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)), vec3<bool>(true, false, var_0.b.x), ~(-var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(u_input.b, u_input.b) << (30428u % 32u);
    let var_1 = func_1();
    var var_2 = var_1;
    let var_3 = 711f;
    var_2 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - var_1.a)), vec2<f32>(-842f, -888f)), vec3<bool>(all(func_3().zxw), !((var_1.b.x || false) == var_1.b.x), select(any(select(var_2.b, vec3<bool>(false, var_1.b.x, var_1.b.x), var_2.b.x)), var_2.b.x, any(var_2.b) || false)), max(var_0, var_1.c));
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(404f + _wgslsmith_f_op_f32(-992f * _wgslsmith_f_op_f32(max(var_1.a.x, var_2.a.x)))), _wgslsmith_f_op_f32(-var_3), var_3, -1899f));
    var var_5 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x >> (u_input.a.x % 32u), u_input.c.x, u_input.c.x, 17445u), max(_wgslsmith_div_vec4_u32(u_input.a, ~vec4<u32>(4294967295u, 1u, 18120u, u_input.a.x)), vec4<u32>(firstLeadingBit(u_input.c.x), ~(~u_input.c.x), ~(u_input.c.x << (u_input.c.x % 32u)), 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(3069u, ~u_input.c.x, _wgslsmith_mod_vec4_i32(vec4<i32>(abs(_wgslsmith_add_i32(-1i, var_2.c)), _wgslsmith_mod_i32(-16988i, var_1.c) ^ _wgslsmith_div_i32(var_2.c, var_1.c), ~(-37666i), -firstLeadingBit(2147483647i)), abs(select(vec4<i32>(var_2.c, 31878i, 2147483647i, var_1.c), ~vec4<i32>(var_0, 1i, 0i, u_input.b), vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, false)))), var_2.a);
}

