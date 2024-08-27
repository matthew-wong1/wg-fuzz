struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(1i, 34861u);
    let var_1 = Struct_2(vec3<u32>(78137u, 35931u, _wgslsmith_sub_u32(~select(arg_0.b, arg_0.b, false), 4294967295u)), max(_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(1i, -14i), -20574i), abs(-66372i)), u_input.c.x), var_0, Struct_1(max(~(~19531i), 21681i), ~var_0.b));
    let var_2 = var_1;
    let var_3 = select(select(firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(arg_0.a, arg_0.a), -2147483647i, u_input.b, 1i)), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.c.x, 51874i, var_2.d.a, arg_0.a) | ~vec4<i32>(0i, arg_0.a, arg_0.a, arg_0.a), vec4<i32>(-1i, 2147483647i, -arg_0.a, u_input.c.x << (9297u % 32u))), !vec4<bool>(all(vec3<bool>(true, false, false)), false, true, all(vec2<bool>(true, false)))), abs(vec4<i32>(firstTrailingBit(1i), 22264i, -14155i, firstLeadingBit(-arg_0.a))), any(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))));
    let var_4 = Struct_1(_wgslsmith_add_i32(1i, var_1.c.a), 31218u);
    return countOneBits(1u);
}

fn func_2(arg_0: bool) -> vec4<u32> {
    var var_0 = vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, 10188u, ~(~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a))), 1u);
    var_0 = u_input.a.yx;
    var_0 = vec2<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(~select(u_input.a.x, 1u, true), func_3(Struct_1(-3995i, u_input.a.x))), ~u_input.a.x));
    var var_1 = Struct_1(u_input.b, 56458u);
    let var_2 = false;
    return ~_wgslsmith_add_vec4_u32(min(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 0u, u_input.a.x, 4294967295u), min(vec4<u32>(1u, 101319u, 0u, 59897u), vec4<u32>(4294967295u, var_0.x, 0u, u_input.a.x))), vec4<u32>(u_input.a.x >> (u_input.a.x % 32u), ~4294967295u, firstTrailingBit(14286u), select(17702u, var_1.b, true))), ~vec4<u32>(u_input.a.x, select(var_0.x, var_0.x, false), 1u & var_0.x, 0u ^ var_0.x));
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_1(1i, 0u);
    var var_1 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(~35129u, _wgslsmith_clamp_u32(firstTrailingBit(44542u), max(0u, 1u), 20084u), _wgslsmith_dot_vec4_u32(func_2(true), vec4<u32>(u_input.a.x, 796u, arg_0.x, var_0.b)), _wgslsmith_dot_vec2_u32(~u_input.a.zx, reverseBits(vec2<u32>(4293u, var_0.b)))), _wgslsmith_sub_vec4_u32(arg_0, vec4<u32>(arg_0.x, countOneBits(u_input.a.x), ~arg_0.x, 1u)), countOneBits(abs(arg_0) >> (~arg_0 % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -742f))))));
    let var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 30598u, arg_0.x), ~reverseBits(vec3<u32>(_wgslsmith_sub_u32(0u, var_1.x), firstLeadingBit(97925u), var_1.x)));
    var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(var_3, 58757u >> (_wgslsmith_add_u32(var_3, 11499u) % 32u), _wgslsmith_mod_u32(var_0.b, 4294967295u), _wgslsmith_clamp_u32((1u ^ var_0.b) | _wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~(~0u), arg_0.x)), countOneBits(arg_0));
    return Struct_2(vec3<u32>(_wgslsmith_div_u32(49899u, abs(max(arg_0.x, 46258u))), arg_0.x, abs(func_2(true).x)), reverseBits(_wgslsmith_clamp_i32(var_0.a, var_0.a, -(i32(-1i) * -2147483647i))), Struct_1(_wgslsmith_clamp_i32(-234i, _wgslsmith_add_i32(var_0.a << (1u % 32u), -2147483647i), ~(-2147483647i)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_3 << (113324u % 32u), var_0.b, 21448u, 1u << (arg_0.x % 32u)), _wgslsmith_clamp_vec4_u32(arg_0, arg_0, arg_0 & vec4<u32>(u_input.a.x, arg_0.x, arg_0.x, 1u)))), Struct_1(1i, 4294967295u));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool, arg_3: vec3<u32>) -> vec4<bool> {
    let var_0 = arg_1;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-273f, _wgslsmith_f_op_f32(f32(-1f) * -1713f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-112f)), -629f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(975f)) - _wgslsmith_f_op_f32(trunc(1215f)))))));
    var var_2 = firstTrailingBit(vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, countOneBits(arg_1.a.x)) & (u_input.a.x ^ arg_3.x), ~(u_input.a.x ^ var_0.c.b) | 20670u, arg_1.c.b));
    var var_3 = arg_1;
    var_3 = func_1(firstTrailingBit(min(vec4<u32>(36528u ^ var_2.x, var_3.c.b, arg_1.a.x, abs(var_2.x)), vec4<u32>(_wgslsmith_div_u32(var_3.a.x, 4294967295u), func_2(arg_2).x, var_0.c.b & 4602u, ~arg_1.c.b))));
    return select(!vec4<bool>(any(vec2<bool>(arg_0.x, arg_2)), arg_2, arg_0.x, all(vec3<bool>(arg_2, true, true))), arg_0, arg_0.x);
}

fn func_5(arg_0: f32, arg_1: vec4<u32>, arg_2: bool) -> Struct_2 {
    let var_0 = i32(-1i) * -_wgslsmith_mod_i32(~0i, firstLeadingBit(~u_input.b));
    let var_1 = func_1(arg_1).d;
    var var_2 = var_1.a;
    let var_3 = func_1(_wgslsmith_mod_vec4_u32(arg_1, ~reverseBits(arg_1) & vec4<u32>(var_1.b, _wgslsmith_sub_u32(45186u, arg_1.x), ~var_1.b, u_input.a.x))).d;
    var var_4 = Struct_2(func_1(arg_1).a, u_input.c.x, Struct_1(((var_3.a & var_1.a) >> (var_1.b % 32u)) >> ((~u_input.a.x & 4294967295u) % 32u), 38768u), func_1(_wgslsmith_div_vec4_u32(arg_1, arg_1)).c);
    return Struct_2(~abs(~var_4.a), var_3.a & ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, var_0, -27897i, var_3.a)), firstLeadingBit(vec4<i32>(112876i, var_1.a, -31894i, u_input.b))), Struct_1(1i, var_4.a.x), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.c.x, i32(-1i) * -u_input.c.x);
    let var_1 = func_5(_wgslsmith_f_op_f32(f32(-1f) * -607f), ~(~vec4<u32>(~u_input.a.x, ~4294967295u, 21664u, ~4294967295u)), all(select(func_4(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), func_1(vec4<u32>(u_input.a.x, 26455u, u_input.a.x, 4294967295u)), true, select(u_input.a, vec3<u32>(36717u, 54490u, 16896u), false)), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec4<bool>(false, true, false, false)), all(vec4<bool>(false, false, true, true)), true))));
    var_0 = -(~(~vec2<i32>(6970i, var_1.d.a)));
    let var_2 = u_input.a.x | ~10269u;
    var_0 = _wgslsmith_add_vec2_i32(u_input.c.xx, ~(~(u_input.c.zy << (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u))) << (~(var_1.a.zy >> (vec2<u32>(1u, 0u) % vec2<u32>(32u))) % vec2<u32>(32u))));
    let var_3 = (1u & countOneBits(func_3(func_5(-345f, vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 92009u), false).d))) >> (func_2(!(true != any(vec2<bool>(true, false)))).x % 32u);
    var_0 = vec2<i32>(-1i, 837i << ((~_wgslsmith_sub_u32(u_input.a.x, var_3) << (_wgslsmith_mod_u32(var_3 ^ u_input.a.x, 81862u) % 32u)) % 32u));
    var_0 = ~u_input.c.zx;
    var var_4 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1294f * 1f))), u_input.c.zz);
}

