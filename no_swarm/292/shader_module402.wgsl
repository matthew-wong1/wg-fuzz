struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: bool) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(814f, 745f, arg_2.a.a.x)), 16117u, arg_2.a.c, arg_2.b);
    return max(~(~37601u) >> (_wgslsmith_dot_vec3_u32(select(~arg_2.a.c.wzx, _wgslsmith_div_vec3_u32(arg_1.zxy, vec3<u32>(0u, u_input.b.x, arg_2.a.c.x)), all(vec3<bool>(arg_3, true, false))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(13751u, arg_1.x, arg_1.x), arg_2.a.c.zyz)) % 32u), u_input.b.x);
}

fn func_4(arg_0: bool, arg_1: u32) -> vec3<f32> {
    let var_0 = min(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-11697i, 24500i), _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(-20302i, 1i)), -vec2<i32>(-1i, -8688i)), vec2<i32>(1i, 19606i << (0u % 32u))), vec2<i32>(_wgslsmith_mult_i32(~(~1i), ~(~(-2735i))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(21558i, -22346i), abs(vec2<i32>(-5667i, 145i))), _wgslsmith_div_i32(max(-1i, -54144i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(28275i, -13501i))))));
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-786f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1369f, -1839f, false)), _wgslsmith_f_op_f32(ceil(1000f))) - 520f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1528f, 1691f, true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(265f)), -745f, true))))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(func_4(true, func_3(u_input.b.x, u_input.b, Struct_3(Struct_2(vec3<f32>(1204f, 811f, -888f), 4294967295u, u_input.b, Struct_1(false)), Struct_1(true), Struct_1(true), vec2<bool>(false, true)), false) ^ _wgslsmith_add_u32(u_input.a, u_input.b.x))), u_input.b.x, abs(u_input.b), Struct_1(select(all(vec4<bool>(true, false, false, false)), true, all(vec4<bool>(true, true, true, false))))), Struct_1(true), Struct_1(any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), vec2<bool>(false && any(vec4<bool>(true, false, false, true)), any(vec2<bool>(true, select(true, true, true)))));
    var var_1 = vec4<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -200f) * _wgslsmith_f_op_f32(-var_0.a.a.x)), var_0.a.a.x);
    let var_2 = var_0.a.d;
    var var_3 = 1i;
    let var_4 = ~_wgslsmith_add_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(32083u, u_input.b.x, 85926u), vec3<u32>(var_0.a.c.x, u_input.a, u_input.b.x))), countOneBits(~_wgslsmith_mult_vec3_u32(u_input.b.xwx, var_0.a.c.xyw)));
    return Struct_3(var_0.a, var_0.c, Struct_1(all(vec2<bool>(true, true))), !var_0.d);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(~(-vec2<i32>(2147483647i, -3173i)), -_wgslsmith_add_vec2_i32(vec2<i32>(1i, 5750i), vec2<i32>(30267i, -1i))), _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 1i, 1i), ~firstTrailingBit(vec3<i32>(-69116i, -11195i, -53130i)))), vec2<i32>(1i, -1i));
    var_0 = _wgslsmith_add_vec2_i32(abs(-vec2<i32>(var_0.x, var_0.x) ^ vec2<i32>(var_0.x, var_0.x)), abs(vec2<i32>(reverseBits(-50227i), var_0.x))) & vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -1i, var_0.x), 10373i);
    let var_1 = true;
    var_0 = select(-vec2<i32>(min(var_0.x, -var_0.x), -14316i), reverseBits(vec2<i32>(firstTrailingBit(2147483647i), countOneBits(var_0.x))), false);
    let var_2 = 296f;
    return arg_1;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: i32, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = 4294967295u;
    var var_1 = func_5(func_2(), Struct_1(!arg_3.x), ~(var_0 & 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(577f, -1000f) - _wgslsmith_f_op_vec3_f32(func_4(all(arg_3.zz), 17011u)).yz)));
    var_1 = func_2().b;
    var_1 = func_2().a.d;
    var_1 = func_2().b;
    return Struct_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_u32(1u, u_input.a | 55423u);
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1734f, -1516f, 1241f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(666f, -1440f, 1366f) + vec3<f32>(-385f, 1903f, 379f))))), u_input.a, u_input.b, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 579f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1057f, 1444f)), 1i, select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))), func_5(func_2(), Struct_1(false), 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(257f + -306f)), _wgslsmith_f_op_f32(-408f * 810f))), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1439f, 783f)) + vec2<f32>(_wgslsmith_f_op_f32(674f * 1162f), _wgslsmith_f_op_f32(ceil(-1274f)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(1003f + -890f), -1128f), vec2<f32>(1f, 1f))), ~abs(-1i), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, true), true)), !select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), func_2().d));
    var_0 = _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(var_1.a.c | vec4<u32>(18049u, 15612u, var_1.a.c.x, u_input.b.x), vec4<u32>(u_input.b.x, 1u, u_input.a, _wgslsmith_div_u32(u_input.b.x, 4294967295u))), ~var_1.a.c.x);
    let var_2 = Struct_1(true);
    var_0 = 0u;
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a.x) - _wgslsmith_f_op_f32(var_1.a.a.x + var_1.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a.a.x, var_1.a.a.x))), var_1.a.a.x)), max(var_1.a.c.x, var_1.a.c.x) << (_wgslsmith_sub_u32(1u, ~(~var_1.a.c.x)) % 32u), u_input.b, var_1.b);
    let var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(16116i, 78241i, -28694i, -2147483647i), vec4<i32>(2147483647i, -33699i, 2147483647i, 0i)), -(~2482i)) >> (_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(35727u, var_3.b)), ~abs(u_input.a)) % 32u));
}

