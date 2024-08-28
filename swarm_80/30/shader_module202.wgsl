struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -18434i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: u32) -> vec2<bool> {
    global0 = -_wgslsmith_div_i32(i32(-1i) * -20289i, abs(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.c.x, u_input.c.x, 27189i)), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.c.x, u_input.c.x), vec3<i32>(0i, u_input.c.x, -1i)))));
    global0 = 1i;
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(192f, -768f, -120f, 198f)))))), ~(~(~abs(vec4<i32>(24877i, u_input.c.x, u_input.c.x, 6973i)))), u_input.c.x);
    global0 = reverseBits(u_input.c.x);
    var var_1 = vec4<u32>(_wgslsmith_div_u32(u_input.a.x, 21926u), ~1u, max(u_input.b.x, arg_3 & u_input.b.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, _wgslsmith_add_u32(58509u, arg_3), 4294967295u, 4294967295u & u_input.b.x), vec4<u32>(_wgslsmith_mult_u32(arg_3, arg_3), 1u, reverseBits(38690u), ~arg_3)), arg_3, 62176u));
    return arg_1.zy;
}

fn func_2(arg_0: i32) -> Struct_2 {
    global0 = 2147483647i;
    global0 = u_input.c.x << (abs(1u) % 32u);
    var var_0 = select(func_3(Struct_1(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), u_input.a.x == u_input.b.x), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), true), _wgslsmith_div_i32(u_input.c.x, 2147483647i) == _wgslsmith_add_i32(arg_0, -464i)), Struct_1(vec3<bool>(all(vec4<bool>(true, false, false, true)), false, any(vec4<bool>(false, false, false, false)))), 4294967295u), !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(func_3(Struct_1(vec3<bool>(false, false, false)), vec4<bool>(true, true, false, true), Struct_1(vec3<bool>(false, true, false)), 70053u), vec2<bool>(true, true), true), func_3(Struct_1(vec3<bool>(false, true, false)), vec4<bool>(true, true, true, true), Struct_1(vec3<bool>(false, false, false)), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x))), true);
    let var_1 = Struct_3(~(~(~select(u_input.a.yz, u_input.b, var_0.x))), Struct_1(vec3<bool>(!var_0.x, true, any(!vec4<bool>(false, true, var_0.x, false)))), _wgslsmith_f_op_f32(-1f));
    global0 = _wgslsmith_sub_i32(1i, _wgslsmith_add_i32(~abs(_wgslsmith_clamp_i32(arg_0, -1i, 12836i)), -u_input.c.x));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, 416f, -636f, var_1.c)), select(~(~(-vec4<i32>(u_input.c.x, arg_0, -19285i, u_input.c.x))), vec4<i32>(arg_0, arg_0, -71256i, u_input.c.x ^ -arg_0), any(var_1.b.a)), u_input.c.x);
}

fn func_4(arg_0: Struct_2) -> u32 {
    var var_0 = vec2<i32>(32841i, -51901i) | ~(max(vec2<i32>(-1296i, u_input.c.x), vec2<i32>(u_input.c.x, u_input.c.x)) ^ vec2<i32>(max(28147i, 21506i), u_input.c.x));
    global0 = _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_mod_vec3_i32((arg_0.b.xwz << (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))) | max(vec3<i32>(2147483647i, -2147483647i, var_0.x), arg_0.b.wyz), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.c, 43876i, arg_0.b.x) & arg_0.b.wxx, -vec3<i32>(var_0.x, u_input.c.x, var_0.x)))), arg_0.b.zyw | (vec3<i32>(i32(-1i) * -1i, 46229i >> (1u % 32u), firstLeadingBit(arg_0.c)) | ~countOneBits(vec3<i32>(0i, u_input.c.x, u_input.c.x))));
    global0 = ~u_input.c.x;
    var var_1 = Struct_1(!vec3<bool>(true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), true)), false));
    var_1 = Struct_1(!select(var_1.a, !(!vec3<bool>(false, var_1.a.x, var_1.a.x)), select(var_1.a.x, var_1.a.x, false) && any(vec3<bool>(var_1.a.x, true, var_1.a.x))));
    return _wgslsmith_clamp_u32(u_input.b.x, (48022u >> (~u_input.a.x % 32u)) ^ ~_wgslsmith_sub_u32(select(u_input.b.x, 39522u, var_1.a.x), 1u), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(min(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a), u_input.b.x & 29942u), 0u)));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = _wgslsmith_add_u32(abs(1u), ~(func_4(func_2(arg_0)) & 124218u));
    global0 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 0i, 2147483647i), ~_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.c.x, u_input.c.x), vec3<i32>(-15124i, u_input.c.x, u_input.c.x)), vec3<i32>(u_input.c.x, -1i, arg_0)), vec3<i32>(arg_0, ~arg_0, firstLeadingBit(57810i))));
    global0 = -37454i;
    global0 = -firstLeadingBit(-45052i);
    var var_1 = Struct_1(select(vec3<bool>(true, any(vec3<bool>(true, true, true)), true), vec3<bool>(true && any(vec3<bool>(false, true, false)), true, true), select(vec3<bool>(true, true, any(vec2<bool>(false, false))), vec3<bool>(true, true, true), all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)))));
    return Struct_3(~u_input.b >> (vec2<u32>(abs(u_input.a.x >> (0u % 32u)), ~_wgslsmith_sub_u32(0u, var_0)) % vec2<u32>(32u)), Struct_1(select(!select(var_1.a, vec3<bool>(var_1.a.x, var_1.a.x, false), vec3<bool>(true, var_1.a.x, false)), vec3<bool>(all(var_1.a), true, any(vec2<bool>(var_1.a.x, var_1.a.x))), var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(724f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -154f)))))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(-9100i, u_input.c.x, -8847i, u_input.c.x), ~vec4<i32>(u_input.c.x, -1i, 9693i, u_input.c.x) << (max(vec4<u32>(arg_0.a.x, arg_0.a.x, 26697u, 1u), vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 83665u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_div_i32(-26565i, -21597i), _wgslsmith_add_i32(2147483647i, -1i), abs(u_input.c.x), u_input.c.x & 23573i)) & (abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-31256i, u_input.c.x, u_input.c.x, u_input.c.x), ~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))) & vec4<i32>(u_input.c.x, max(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(-29090i, u_input.c.x, 0i, 15996i)), 47314i), 25423i, 24010i));
    global0 = 2147483647i << (max(abs(2001u), min(32669u, u_input.a.x)) % 32u);
    let var_1 = arg_0.b.a.x || all(vec2<bool>(true, true));
    global0 = _wgslsmith_mod_i32(select(39667i, -50002i, true), ~((0i | func_2(var_0.x).b.x) & -_wgslsmith_sub_i32(u_input.c.x, -2147483647i)));
    var var_2 = ~select(u_input.c.x, -2147483647i, arg_0.b.a.x);
    return func_2(countOneBits(9116i));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a.x, 190f, arg_1.a.x, arg_1.a.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(112f, 900f, 1525f, -1231f) * vec4<f32>(arg_1.a.x, arg_1.a.x, -236f, 794f))), arg_1.a)), _wgslsmith_f_op_vec4_f32(ceil(arg_1.a))));
    let var_1 = !(all(vec2<bool>(true, false)) & true) & true;
    let var_2 = Struct_3(vec2<u32>(25289u, 0u), Struct_1(!select(vec3<bool>(true, false, true), !vec3<bool>(var_1, false, var_1), select(vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, var_1, true), true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * var_0.x)))))));
    global0 = ~_wgslsmith_div_i32(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_1.b.xyz, arg_1.b.wxx), vec3<i32>(u_input.c.x, arg_1.c, 0i))), arg_1.b.x);
    let var_3 = var_2.a.x;
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(countOneBits(u_input.a.xz), func_6(abs(~(u_input.b & vec2<u32>(u_input.b.x, u_input.a.x))), func_5(func_1(u_input.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-755f, 710f, 1233f, -828f) - vec4<f32>(-1969f, 953f, -755f, 949f))))), 1000f);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(Struct_3(func_1(-2147483647i).a, Struct_1(vec3<bool>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x)), 734f), vec4<f32>(136f, var_0.c, func_5(var_0, vec4<f32>(-859f, var_0.c, 842f, var_0.c)).a.x, _wgslsmith_f_op_f32(sign(-578f)))).a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c))))));
    var var_2 = countOneBits(firstTrailingBit(u_input.c.x));
    var var_3 = var_0.b.a.x && true;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, u_input.b.x);
}

