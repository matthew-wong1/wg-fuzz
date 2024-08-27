struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = false;
    var var_1 = ~arg_2.b;
    var_1 = 4294967295u ^ arg_2.b;
    let var_2 = true;
    var var_3 = -2147483647i ^ u_input.c.x;
    return -1i;
}

fn func_2(arg_0: f32) -> vec4<i32> {
    let var_0 = Struct_2(u_input.e.xx);
    let var_1 = select(vec4<bool>(true, true, true, true), !(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), true)), true);
    var var_2 = Struct_2(_wgslsmith_clamp_vec2_u32(countOneBits(u_input.e.zz), min(var_0.a, vec2<u32>(u_input.b, u_input.e.x) >> (vec2<u32>(u_input.d, var_0.a.x) % vec2<u32>(32u))) | u_input.e.yz, firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(var_0.a.x, 2879u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), u_input.e.zy)))));
    var_2 = Struct_2(abs(var_0.a));
    var_2 = var_0;
    return -vec4<i32>(func_3(vec3<bool>(arg_0 == arg_0, all(vec3<bool>(var_1.x, var_1.x, false)), var_1.x), var_0, Struct_1(_wgslsmith_f_op_f32(min(arg_0, -1911f)), 1u, _wgslsmith_add_vec3_u32(u_input.e, vec3<u32>(3348u, 4294967295u, var_0.a.x)), true), arg_0), 1i, abs(u_input.a), _wgslsmith_mod_i32(u_input.a, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 7178i, -47241i), vec4<i32>(-55890i, u_input.a, -1i, 1i)))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> i32 {
    var var_0 = func_2(arg_1.a);
    var_0 = _wgslsmith_add_vec4_i32(firstTrailingBit(reverseBits(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.x, var_0.x, u_input.a, 8996i), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.a, 1i, 18070i), vec4<i32>(u_input.a, u_input.a, var_0.x, 23911i))))), max(vec4<i32>(func_3(vec3<bool>(arg_1.d, arg_1.d, true), Struct_2(vec2<u32>(4294967295u, 4294967295u)), arg_1, _wgslsmith_f_op_f32(-704f * 856f)), 1i, abs(countOneBits(var_0.x)), -u_input.a), vec4<i32>(var_0.x, -1i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_0.x, 63397i, u_input.a), vec4<i32>(1i, 27589i, 58678i, var_0.x)), vec4<i32>(2147483647i, u_input.a, var_0.x, var_0.x) & vec4<i32>(-27945i, -30234i, var_0.x, -51291i)), u_input.c.x)));
    var var_1 = arg_1;
    var var_2 = u_input.a;
    var_2 = abs(u_input.a);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(-vec4<i32>(countOneBits(4522i), _wgslsmith_add_i32(_wgslsmith_mult_i32(-1838i, u_input.c.x), u_input.a << (9741u % 32u)), u_input.a, u_input.a), vec4<i32>(1i, reverseBits(36136i >> (0u % 32u)), -9679i, ~func_1(false, Struct_1(1162f, 13547u, vec3<u32>(434u, u_input.e.x, 4294967295u), false))) >> (reverseBits(firstLeadingBit(firstLeadingBit(vec4<u32>(0u, 54438u, u_input.d, u_input.b)))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(106f, _wgslsmith_f_op_f32(abs(369f)))) + 294f);
    var_1 = 1f;
    let var_2 = select(!vec2<bool>(func_1(true, Struct_1(-513f, 0u, u_input.e, true)) != (i32(-1i) * -1i), true), select(select(vec2<bool>(true, any(vec4<bool>(false, true, true, true))), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<bool>(false, all(vec4<bool>(false, false, true, true)))), vec2<bool>(true, true), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), all(vec4<bool>(true, true, false, true)))), select(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true), vec2<bool>(true, true), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true))));
    var_1 = 1436f;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(469f)));
    var_1 = -1679f;
    let var_4 = ~vec3<u32>(u_input.e.x, u_input.b << (~u_input.b % 32u), u_input.e.x);
    var var_5 = u_input.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.c.x, 1i), var_0.x | var_0.x, abs(var_0.x), _wgslsmith_mult_i32(43748i, 5683i)), ~vec4<i32>(u_input.a, u_input.c.x, 9395i, u_input.a)), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(var_0.yxx), vec3<i32>(u_input.a, 1i, u_input.a)), -(~var_0.zwz)), _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.x, -2147483647i), 0i), 27236i)));
}

