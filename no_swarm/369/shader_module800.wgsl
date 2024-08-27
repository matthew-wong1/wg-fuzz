struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = 693f;
    global0 = Struct_3(global0.a, global0.b, global0.d, _wgslsmith_f_op_f32(min(370f, -164f)));
    var var_1 = global0.d;
    var_0 = -199f;
    let var_2 = _wgslsmith_mod_i32(-(~abs(~u_input.b.x)), 2117i);
    return !(!(!(!(!vec2<bool>(true, global0.a.b)))));
}

fn func_4(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = -2147483647i;
    var var_1 = Struct_2(u_input.a);
    let var_2 = vec3<f32>(-412f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-753f * global0.d) + -1376f)) - global0.c), _wgslsmith_f_op_f32(arg_0.b.d - 837f));
    var var_3 = global0.a;
    var_0 = 35555i;
    return vec2<bool>(select(true, !arg_0.b.b.b, true) & var_3.b, true);
}

fn func_2() -> vec4<i32> {
    global0 = Struct_3(Struct_1(vec4<u32>(~(~1955u), ~1u, 0u, global0.b.a.x ^ u_input.c.x), true), global0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), global0.c))), _wgslsmith_f_op_f32(-global0.c));
    var var_0 = func_4(Struct_4(Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(18810u, global0.b.a.x, 4195u, u_input.c.x), global0.a.a), global0.b.a), any(func_3(Struct_2(14934i)))), Struct_3(global0.a, global0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.d))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-462f + -390f), _wgslsmith_f_op_f32(exp2(global0.c)))))));
    let var_1 = Struct_4(global0.b, Struct_3(global0.b, global0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + global0.c)))), _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c))))));
    var_0 = func_3(Struct_2(i32(-1i) * -2147483647i));
    global0 = Struct_3(Struct_1(max((u_input.c | vec4<u32>(44423u, 0u, 4294967295u, 50146u)) << (u_input.c % vec4<u32>(32u)), min(global0.a.a, vec4<u32>(global0.a.a.x, u_input.c.x, 20747u, var_1.b.b.a.x))), var_1.b.a.b && !var_0.x), var_1.b.a, _wgslsmith_f_op_f32(f32(-1f) * -2379f), global0.d);
    return vec4<i32>(~firstLeadingBit(u_input.b.x), -u_input.b.x, ~_wgslsmith_add_i32(u_input.b.x, 14422i) << (var_1.a.a.x % 32u), u_input.b.x);
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_4 {
    global0 = Struct_3(Struct_1(vec4<u32>(_wgslsmith_sub_u32(arg_3.a.a.x, 46640u) >> (1u % 32u), 0u, ~1u, 11166u << (arg_0.x % 32u)), !arg_1 | (_wgslsmith_f_op_f32(-arg_3.b.d) == 1000f)), Struct_1(~_wgslsmith_div_vec4_u32(abs(vec4<u32>(arg_3.a.a.x, arg_3.b.a.a.x, global0.a.a.x, 40678u)), _wgslsmith_div_vec4_u32(global0.a.a, vec4<u32>(global0.b.a.x, u_input.c.x, u_input.c.x, global0.a.a.x))), true), -1713f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(735f * _wgslsmith_f_op_f32(trunc(arg_3.b.d)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(449f, -328f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.b.c)) + _wgslsmith_f_op_f32(max(global0.d, global0.c)))))));
    let var_0 = firstLeadingBit(vec3<i32>(u_input.a, ~(~firstLeadingBit(-1i)), ~(-1i)));
    var var_1 = arg_2.zzw;
    var var_2 = global0.d;
    var var_3 = 16650u;
    return arg_3;
}

fn func_6(arg_0: i32, arg_1: Struct_4, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    let var_0 = arg_1;
    global0 = var_0.b;
    let var_1 = vec4<i32>(-55853i, u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.yx, select(abs(vec2<i32>(u_input.b.x, -2147483647i)), min(u_input.b.zx, vec2<i32>(u_input.b.x, arg_2)), func_3(Struct_2(arg_0)))), func_2().x | _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.b), -u_input.b)) | vec4<i32>(abs(2147483647i), u_input.b.x, arg_2 & -(i32(-1i) * -1i), u_input.b.x);
    global0 = Struct_3(global0.b, Struct_1(select(select(~vec4<u32>(var_0.b.b.a.x, 0u, global0.a.a.x, global0.a.a.x), countOneBits(vec4<u32>(global0.b.a.x, arg_1.a.a.x, 46803u, 1u)), vec4<bool>(false, false, true, arg_1.b.b.b)), arg_1.a.a ^ global0.b.a, arg_1.a.b), all(!(!vec2<bool>(global0.b.b, true)))), global0.c, -3036f);
    return func_5(min(vec2<u32>(_wgslsmith_dot_vec2_u32(global0.a.a.xz & arg_1.b.a.a.wx, u_input.c.yx), ~4294967295u), ~vec2<u32>(4294967295u, u_input.c.x)), true, reverseBits(vec4<i32>(1i | var_1.x, arg_0, arg_2 | -2147483647i, var_1.x)) >> (arg_3.a % vec4<u32>(32u)), Struct_4(Struct_1(arg_1.b.a.a, var_0.a.b), arg_1.b)).b;
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global0 = func_6(u_input.b.x, func_5(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(u_input.c.x, u_input.c.x) >> (~global0.a.a.yw % vec2<u32>(32u))), all(!vec4<bool>(arg_0.x, true, global0.b.b, true)), _wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(-9928i), _wgslsmith_sub_i32(0i, u_input.a), 1i, -1i), func_2()), Struct_4(global0.b, Struct_3(Struct_1(global0.a.a, arg_0.x), global0.a, _wgslsmith_f_op_f32(-1987f * -1474f), _wgslsmith_f_op_f32(min(global0.d, 1573f))))), -13259i, Struct_1(_wgslsmith_mult_vec4_u32(global0.b.a, countOneBits(vec4<u32>(16570u, global0.a.a.x, global0.b.a.x, global0.b.a.x))), arg_0.x));
    var var_0 = max(_wgslsmith_mod_vec3_u32(u_input.c.yzz, ~vec3<u32>(~global0.b.a.x, _wgslsmith_clamp_u32(48594u, 4294967295u, global0.a.a.x), u_input.c.x)), vec3<u32>(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.a.x, global0.a.a.x), u_input.c.xx)), 42435u, global0.a.a.x));
    let var_1 = !((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(577f + 1000f)) != _wgslsmith_div_f32(global0.d, -2210f)) | arg_0.x);
    let var_2 = vec2<u32>(4294967295u, 0u);
    global0 = Struct_3(global0.a, func_5(~vec2<u32>(~u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, global0.a.a.x)), global0.a.b, select(-(~vec4<i32>(-2147483647i, 3872i, u_input.a, u_input.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 43478i, 1i, u_input.b.x), firstLeadingBit(vec4<i32>(2147483647i, 55284i, -2147483647i, 1i))), true), Struct_4(global0.b, func_6(u_input.a, Struct_4(Struct_1(u_input.c, true), Struct_3(Struct_1(u_input.c, true), Struct_1(vec4<u32>(4294967295u, global0.b.a.x, global0.b.a.x, 49405u), var_1), global0.d, global0.d)), -13528i, global0.a))).b.b, _wgslsmith_f_op_f32(round(-1075f)), global0.d);
    return Struct_1(min(abs(u_input.c & global0.b.a), vec4<u32>(global0.a.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(18612u, 16440u, 1u), vec3<u32>(50882u, 3185u, var_0.x)), abs(~0u), var_0.x)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<bool>(global0.b.b, -u_input.b.x <= u_input.a));
    var var_1 = func_6(2147483647i, Struct_4(global0.b, func_6(-(~2147483647i), Struct_4(global0.b, Struct_3(Struct_1(vec4<u32>(global0.a.a.x, 1u, 4294967295u, var_0.a.x), var_0.b), Struct_1(vec4<u32>(u_input.c.x, 1u, global0.b.a.x, u_input.c.x), false), 254f, global0.d)), i32(-1i) * -u_input.a, Struct_1(~var_0.a, var_0.b))), -15748i, Struct_1(u_input.c, true)).b;
    var_0 = func_6(firstLeadingBit(~(-(~u_input.a))), func_5(var_1.a.wx, true, ~firstLeadingBit(vec4<i32>(-2147483647i, u_input.a, 16540i, -2147483647i)), Struct_4(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(11852u, var_1.a.x, global0.b.a.x, global0.a.a.x), vec4<u32>(37975u, global0.b.a.x, 0u, var_1.a.x)), var_0.b), Struct_3(Struct_1(u_input.c, false), func_1(vec2<bool>(var_0.b, var_1.b)), _wgslsmith_f_op_f32(-880f * -1000f), _wgslsmith_f_op_f32(abs(global0.d))))), _wgslsmith_dot_vec4_i32(select(-vec4<i32>(-2147483647i, u_input.a, u_input.b.x, 9006i), abs(vec4<i32>(1i, 23577i, -1i, -1i)), !vec4<bool>(var_1.b, true, false, global0.b.b)), abs(reverseBits(vec4<i32>(15034i, -2147483647i, 2147483647i, u_input.b.x)))) << (~_wgslsmith_clamp_u32(func_5(vec2<u32>(0u, 31065u), false, vec4<i32>(-2147483647i, u_input.b.x, u_input.a, 2147483647i), Struct_4(global0.b, Struct_3(global0.a, global0.b, global0.c, -458f))).a.a.x, ~var_1.a.x, 14315u) % 32u), Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(var_0.a.x, global0.a.a.x, 4294967295u, 4294967295u)) | global0.b.a, var_1.a), true)).b;
    let var_2 = false && (u_input.a >= u_input.b.x);
    var_0 = func_6(15603i, func_5(~_wgslsmith_sub_vec2_u32(var_0.a.zz, vec2<u32>(var_1.a.x, global0.a.a.x)), u_input.b.x < _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-1i, 1i, 39947i)), select(vec4<i32>(u_input.a, 0i, u_input.a, 3597i) ^ abs(vec4<i32>(-19390i, 0i, -35493i, u_input.a)), -vec4<i32>(2147483647i, -54344i, u_input.a, u_input.a), vec4<bool>(any(vec2<bool>(var_1.b, false)), all(vec3<bool>(global0.b.b, false, true)), var_1.b, global0.a.b)), Struct_4(global0.b, Struct_3(func_1(vec2<bool>(false, global0.b.b)), global0.a, 215f, _wgslsmith_div_f32(-3259f, -652f)))), 1i, Struct_1(vec4<u32>(~abs(var_0.a.x), 58428u, ~1u, u_input.c.x), true)).a;
    var var_3 = (global0.a.b | all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, var_0.b), select(true, false, var_2)))) || (var_0.b || (func_5(u_input.c.xy & vec2<u32>(4294967295u, var_1.a.x), !var_1.b, abs(vec4<i32>(u_input.a, 0i, u_input.b.x, 2147483647i)), func_5(var_0.a.yz, global0.a.b, vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.a), Struct_4(Struct_1(vec4<u32>(4294967295u, var_0.a.x, 55045u, global0.a.a.x), var_2), Struct_3(global0.a, global0.a, 1160f, 998f)))).a.b != !global0.a.b));
    var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b);
}

