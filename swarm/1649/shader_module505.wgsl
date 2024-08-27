struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_mod_i32(~abs(_wgslsmith_div_i32(countOneBits(11221i), arg_1.b)), max(var_0.b, arg_1.a));
    let var_2 = vec2<u32>(~1u >> (u_input.a % 32u), ~(~reverseBits(_wgslsmith_mod_u32(u_input.b, var_0.c.x))));
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(748f, -714f), vec2<f32>(-1225f, -844f), arg_0.x)))), vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(314f, 1303f) * vec2<f32>(130f, -843f)))))));
    var var_4 = ~abs(vec2<u32>(4294967295u, firstLeadingBit(var_0.c.x))) | ~abs(_wgslsmith_sub_vec2_u32(~var_0.c.wy, vec2<u32>(arg_1.c.x, 37561u) & vec2<u32>(3086u, 0u)));
    return firstLeadingBit(abs(7313i));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> i32 {
    let var_0 = ~vec3<i32>(~(func_3(vec3<bool>(false, false, true), Struct_1(36914i, -61483i, vec4<u32>(0u, 0u, 1u, 0u), vec4<bool>(false, true, true, true)), 28704i) ^ _wgslsmith_clamp_i32(-25096i, -2147483647i, -16332i)), _wgslsmith_mod_i32(select(_wgslsmith_mod_i32(109267i, -1i), i32(-1i) * -1i, true), _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, -2147483647i), vec2<i32>(-2206i, -486i))), 1i);
    var var_1 = select(vec3<i32>(_wgslsmith_add_i32(var_0.x << (23819u % 32u), _wgslsmith_mod_i32(var_0.x, 21843i)), firstTrailingBit(1i), var_0.x) | _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(var_0, vec3<i32>(var_0.x, var_0.x, var_0.x)) << (_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.x, u_input.a, 1u), vec3<u32>(arg_1.x, 27014u, u_input.a)) % vec3<u32>(32u)), ~(~vec3<i32>(-30001i, var_0.x, var_0.x))), max(var_0, var_0), all(vec3<bool>(true, true, true)));
    var_1 = ~(-firstTrailingBit(var_0));
    var var_2 = !select(vec2<bool>(true, any(vec3<bool>(true, true, true))), vec2<bool>(false, arg_0 > abs(1u)), true);
    var var_3 = u_input.a >= ~_wgslsmith_dot_vec3_u32(abs(arg_1 >> (vec3<u32>(4294967295u, 30111u, 1u) % vec3<u32>(32u))), select(reverseBits(vec3<u32>(1u, 0u, u_input.a)), ~arg_1, select(var_2.x, false, false)));
    return ~(~var_0.x);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !(true | select(any(vec2<bool>(false, false)), true, any(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x)) || all(arg_0.d.xyz)));
    var var_1 = false;
    let var_2 = arg_0.d.x;
    var_1 = false || all(select(!(!vec3<bool>(var_2, false, var_2)), vec3<bool>(arg_0.d.x, false, arg_0.d.x), false));
    let var_3 = vec2<u32>(1u, ~abs(~(0u | u_input.b)));
    return arg_0;
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    var var_0 = -498f;
    var var_1 = func_4(Struct_1(~(-2147483647i), countOneBits(func_2(53079u, vec3<u32>(3472u, 4294967295u, u_input.b))) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 65498u, 4294967295u), vec4<u32>(u_input.a, u_input.b, u_input.b, 0u)) % 32u), ~vec4<u32>(56117u, u_input.a, u_input.b, 58075u) & ((vec4<u32>(u_input.a, 36086u, u_input.b, u_input.a) >> (vec4<u32>(u_input.b, 53996u, u_input.a, u_input.b) % vec4<u32>(32u))) & _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, 0u, u_input.b), vec4<u32>(u_input.b, u_input.b, 5816u, 5048u))), vec4<bool>(true, true, true, true)));
    let var_2 = var_1.d;
    let var_3 = _wgslsmith_div_vec4_u32(var_1.c, _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.c.x, 16184u, var_1.c.x, var_1.c.x) | max(var_1.c, vec4<u32>(u_input.b, 0u, u_input.a, 0u)), vec4<u32>(_wgslsmith_mod_u32(var_1.c.x, u_input.a), ~u_input.a, 4479u, firstLeadingBit(u_input.b))), var_1.c));
    let var_4 = ~4294967295u;
    return _wgslsmith_sub_i32(select(var_1.b, -(~_wgslsmith_sub_i32(var_1.b, -8811i)), any(var_1.d)), func_3(vec3<bool>(!var_1.d.x, false, true), func_4(func_4(func_4(Struct_1(17798i, var_1.a, var_3, var_1.d)))), var_1.a));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = Struct_1(_wgslsmith_mult_i32(func_3(select(var_0.d.xyx, vec3<bool>(arg_1.d.x, false, arg_1.d.x), arg_1.d.wyz), var_0, _wgslsmith_div_i32(-arg_0.x, 0i)), _wgslsmith_dot_vec3_i32(~arg_0, arg_0)), arg_0.x, abs(vec4<u32>(u_input.b, _wgslsmith_dot_vec3_u32(arg_1.c.wxy, _wgslsmith_add_vec3_u32(var_0.c.zxz, arg_1.c.xyw)), abs(var_0.c.x), 1u)), !(!(!func_4(arg_1).d)));
    var var_2 = 1i;
    let var_3 = arg_1.c;
    var_2 = 22895i;
    return func_4(func_4(func_4(func_4(Struct_1(arg_0.x, -2147483647i, vec4<u32>(6723u, 0u, 0u, 1u), var_0.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-559f, -1234f, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(650f, -196f)) - _wgslsmith_f_op_f32(-1230f * -1797f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1558f)) + 760f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1343f)), _wgslsmith_f_op_f32(-212f - -353f))))));
    var var_1 = func_5(-vec3<i32>(func_1(_wgslsmith_f_op_vec2_f32(-var_0.wy)), -max(6873i, -2767i), -2147483647i), Struct_1(~func_2(firstLeadingBit(u_input.a), ~vec3<u32>(u_input.b, u_input.b, 14185u)), -1i, func_4(func_4(func_4(Struct_1(58963i, 2147483647i, vec4<u32>(5406u, u_input.a, u_input.a, 31288u), vec4<bool>(true, false, false, true))))).c, !select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false), true)));
    var_1 = func_4(Struct_1(func_3(var_1.d.wzy, func_4(Struct_1(var_1.b, var_1.b, var_1.c, var_1.d)), -1i), ~func_4(Struct_1(1i, -49777i, var_1.c, vec4<bool>(var_1.d.x, true, false, false))).a, var_1.c, vec4<bool>(!(var_0.x < 1635f), var_1.d.x, func_5(select(vec3<i32>(1i, var_1.a, var_1.a), vec3<i32>(-2147483647i, -1i, 1i), var_1.d.x), func_4(Struct_1(var_1.a, var_1.a, var_1.c, var_1.d))).d.x, true | var_1.d.x)));
    var var_2 = var_1.d.x;
    let var_3 = !(!select(var_1.d.yx, !vec2<bool>(true, var_1.d.x), vec2<bool>(var_1.d.x && var_1.d.x, var_1.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(~(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 0i, var_1.a), vec3<i32>(2147483647i, var_1.b, 1i)) >> (var_1.c.zyw % vec3<u32>(32u))), func_5(vec3<i32>(var_1.b ^ -20937i, -2147483647i, var_1.a), func_4(func_5(vec3<i32>(-1234i, var_1.a, -2147483647i), Struct_1(12588i, var_1.a, var_1.c, vec4<bool>(var_1.d.x, var_1.d.x, true, var_1.d.x)))))).c);
}

