struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = arg_0;
    var var_1 = !select(select(!select(vec2<bool>(true, arg_0.a), vec2<bool>(true, true), arg_0.a), vec2<bool>(true, arg_0.a), var_0.a), !vec2<bool>(var_0.a, arg_0.a), vec2<bool>(all(vec2<bool>(false, true)), arg_0.a));
    let var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c.x, u_input.c, var_0.c.x, 53700u) << (vec4<u32>(arg_0.c.x, 63849u, var_0.c.x, 6406u) % vec4<u32>(32u)), vec4<u32>(firstLeadingBit(arg_0.c.x), 35799u & var_0.c.x, min(arg_0.c.x, 16047u), _wgslsmith_mod_u32(u_input.c, 1u))), 1u) >> (~(~(~(vec2<u32>(30745u, 60184u) << (vec2<u32>(0u, var_0.c.x) % vec2<u32>(32u))))) % vec2<u32>(32u));
    let var_3 = countOneBits(abs(global0.x));
    global0 = min(vec3<i32>(max(1i, _wgslsmith_sub_i32(-u_input.a, 0i)), ~firstTrailingBit(_wgslsmith_clamp_i32(2147483647i, var_0.d.x, u_input.a)), -2147483647i & global0.x), _wgslsmith_sub_vec3_i32(-vec3<i32>(21699i, arg_0.e.x, reverseBits(-81333i)), var_0.e));
    return !vec3<bool>(any(vec3<bool>(all(vec2<bool>(false, var_0.a)), select(arg_0.a, false, true), all(vec2<bool>(false, true)))), false, !var_1.x);
}

fn func_2(arg_0: u32) -> vec3<i32> {
    let var_0 = all(select(vec3<bool>(~17431u >= _wgslsmith_div_u32(u_input.c, arg_0), true, any(vec3<bool>(true, false, true))), func_3(Struct_1(true, 0i, ~vec3<u32>(1u, 1u, arg_0), vec3<i32>(u_input.a, -1i, -2147483647i), vec3<i32>(-5122i, global0.x, -1i) & vec3<i32>(45526i, global0.x, global0.x))), vec3<bool>(true, true, true)));
    global0 = -((abs(vec3<i32>(global0.x, -32358i, -2147483647i) | vec3<i32>(42357i, 1i, 55222i)) | _wgslsmith_mult_vec3_i32(-vec3<i32>(global0.x, -27356i, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.a, -82805i), vec3<i32>(global0.x, global0.x, 0i)))) & -vec3<i32>(-1i, u_input.a, -u_input.a));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(964f))));
    global0 = vec3<i32>(_wgslsmith_clamp_i32(u_input.a, reverseBits(-u_input.a & -u_input.a), global0.x), -global0.x, -1i);
    let var_2 = Struct_2(Struct_1(true, 1i, reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 24872u, u_input.c), vec3<u32>(arg_0, 4294967295u, arg_0))) ^ (vec3<u32>(4294967295u, u_input.b, u_input.b) & vec3<u32>(61831u, 0u, 0u)), vec3<i32>(~(52795i << (1u % 32u)), ~1i, max(_wgslsmith_mult_i32(1i, -69992i), 1i)), countOneBits(_wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, u_input.a, u_input.a), ~vec3<i32>(u_input.a, -17156i, 46652i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-889f, 2130f, -132f, 1209f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1374f, -476f, -245f, 1629f))))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1250f) - _wgslsmith_f_op_f32(floor(785f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1243f, -387f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1365f) * -1133f))));
    return vec3<i32>(_wgslsmith_mult_i32(0i, -33965i), global0.x, max(~var_2.a.b, var_2.a.e.x & -9264i) ^ var_2.a.e.x) & var_2.a.e;
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_3 {
    global0 = ~(~_wgslsmith_sub_vec3_i32(select(vec3<i32>(global0.x, u_input.a, u_input.a), vec3<i32>(-44707i, global0.x, -13163i) | vec3<i32>(-26141i, global0.x, u_input.a), vec3<bool>(true, true, true)), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(-1i, -8453i, 10407i) >> (vec3<u32>(arg_1, u_input.c, 4294967295u) % vec3<u32>(32u)))));
    global0 = reverseBits(_wgslsmith_mod_vec3_i32(-firstTrailingBit(vec3<i32>(u_input.a, 28615i, global0.x)), select(abs(vec3<i32>(-2147483647i, global0.x, 1i) >> (vec3<u32>(7169u, 70430u, u_input.b) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(func_2(53639u), max(vec3<i32>(2147483647i, global0.x, -28844i), vec3<i32>(u_input.a, global0.x, 2147483647i))), true)));
    var var_0 = _wgslsmith_sub_u32(~(arg_1 | _wgslsmith_mult_u32(36703u, arg_1)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, abs(arg_1), _wgslsmith_clamp_u32(arg_1, 22246u, 41052u), _wgslsmith_add_u32(arg_1, u_input.b)), max(vec4<u32>(arg_1, arg_1, 67345u, u_input.b), vec4<u32>(u_input.c, 1u, 1u, u_input.c))));
    let var_1 = firstLeadingBit(~1u << ((arg_1 & (firstLeadingBit(0u) >> (~u_input.c % 32u))) % 32u));
    let var_2 = Struct_1(!all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)))), -39165i, reverseBits(firstTrailingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, var_1, 44302u), vec3<u32>(69158u, 4294967295u, 1u)))), vec3<i32>(u_input.a, _wgslsmith_clamp_i32(-2147483647i, max(u_input.a, _wgslsmith_mod_i32(-24382i, 2147483647i)), firstTrailingBit(37697i) & -11897i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, 2147483647i), -(u_input.a & global0.x), -1i ^ countOneBits(u_input.a))), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(abs(1i), ~64813i, abs(0i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -68356i, u_input.a), vec3<i32>(-34173i, -1i, 1i)), global0.x, -global0.x), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, global0.x), vec3<i32>(global0.x, global0.x, 1i)))));
    return Struct_3(Struct_1(false, _wgslsmith_div_i32((11246i | global0.x) & -1i, min(-1i, _wgslsmith_add_i32(-11170i, 35321i))), vec3<u32>(4294967295u, ~arg_1, ~u_input.b), var_2.e, vec3<i32>(-abs(0i), ~(~1i), global0.x)), Struct_1(var_2.a, 59368i, _wgslsmith_clamp_vec3_u32(var_2.c, vec3<u32>(var_1, var_2.c.x, var_2.c.x) >> ((vec3<u32>(4294967295u, 45481u, 57264u) | vec3<u32>(20617u, 4567u, arg_1)) % vec3<u32>(32u)), vec3<u32>(var_2.c.x & 68u, 4294967295u >> (0u % 32u), u_input.c)), _wgslsmith_add_vec3_i32(~vec3<i32>(-17085i, 1i, 23513i) << (var_2.c % vec3<u32>(32u)), -reverseBits(vec3<i32>(17017i, var_2.e.x, -2147483647i))), var_2.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(797f + -1219f))))), ~0u);
    global0 = func_2(~23054u);
    var_0 = func_1(-863f, _wgslsmith_mod_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(var_0.a.c, vec3<u32>(u_input.b, 1u, 0u)), ~var_0.b.c.x), var_0.b.c.x));
    global0 = var_0.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(u_input.c, var_0.b.c.x, 4294967295u, u_input.b), vec4<u32>(var_0.b.c.x, 4294967295u, 1u, 1u) & vec4<u32>(4294967295u, 4294967295u, u_input.b, 3016u), true), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, var_0.b.c.x, 4294967295u, 39466u), vec4<u32>(var_0.a.c.x, var_0.b.c.x, u_input.b, u_input.c)), abs(vec4<u32>(u_input.b, 4294967295u, 4294967295u, var_0.a.c.x)))), _wgslsmith_sub_u32(var_0.a.c.x, ~_wgslsmith_dot_vec2_u32(var_0.b.c.zz, var_0.b.c.zy))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1021f - -346f)), _wgslsmith_f_op_f32(max(-1587f, _wgslsmith_f_op_f32(max(-460f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(843f, -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1787f, -1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1918f)))))), vec3<u32>(u_input.b, select(~select(var_0.a.c.x, 1u, false), select(14893u, var_0.a.c.x, any(vec4<bool>(var_0.b.a, true, var_0.a.a, var_0.a.a))), !all(vec3<bool>(false, false, var_0.b.a))), (_wgslsmith_dot_vec3_u32(var_0.b.c, vec3<u32>(7518u, 0u, 0u)) & 4294967295u) ^ abs(u_input.b)));
}

