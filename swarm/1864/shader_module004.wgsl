struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(40812i, -22811i, 1i, 0i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> vec4<i32> {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, 42055u), vec3<u32>(arg_0.b, arg_0.b, arg_0.a)), vec3<u32>(~0u, arg_1.x, arg_0.b | arg_0.a)), vec3<u32>(~arg_1.x, ~(~18329u), ~reverseBits(1u))), arg_0.b);
    global0 = select(_wgslsmith_clamp_vec4_i32(-(~(~vec4<i32>(59575i, 2147483647i, -1i, global0.x))), _wgslsmith_div_vec4_i32(-(~vec4<i32>(63137i, global0.x, global0.x, u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, u_input.a, 2147483647i, global0.x), vec4<i32>(u_input.a, 8170i, -2876i, 24042i)) | reverseBits(vec4<i32>(global0.x, 15586i, global0.x, global0.x))), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-17764i, -19663i), vec2<i32>(u_input.a, -54448i)), vec2<i32>(0i, 13607i) | vec2<i32>(global0.x, u_input.a)), ~2147483647i, abs(u_input.a), _wgslsmith_add_i32(reverseBits(global0.x), -u_input.a))), vec4<i32>(firstTrailingBit(_wgslsmith_clamp_i32(6543i, -32405i, _wgslsmith_mod_i32(u_input.a, -12871i))), 1i, _wgslsmith_mod_i32(-1i, global0.x), abs(-2147483647i)), vec4<bool>(arg_0.c.a.x, true, true, !(max(-2478i, u_input.a) > u_input.a)));
    global0 = -vec4<i32>(global0.x, u_input.a, -17213i, global0.x) & select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, global0.x, _wgslsmith_mod_i32(4810i, 40833i), global0.x), select(vec4<i32>(u_input.a, global0.x, u_input.a, 1i), vec4<i32>(-25624i, u_input.a, global0.x, u_input.a), arg_0.c.a.x) >> (select(vec4<u32>(0u, 58903u, arg_0.a, 1u), vec4<u32>(0u, arg_0.a, 1u, 1u), vec4<bool>(false, false, true, true)) % vec4<u32>(32u)), ~(vec4<i32>(-25807i, u_input.a, 1i, u_input.a) & vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), _wgslsmith_mult_vec4_i32(vec4<i32>(-global0.x, firstLeadingBit(global0.x), ~2147483647i, max(u_input.a, -41878i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, global0.x, -25356i, 0i), vec4<i32>(global0.x, -7300i, u_input.a, global0.x)) & vec4<i32>(u_input.a, global0.x, global0.x, -10611i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1409f + -998f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-883f)) + -1686f));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(select(2034f, _wgslsmith_f_op_f32(f32(-1f) * -1274f), any(arg_0.c.a))))));
    var var_2 = select(!(!vec2<bool>(all(arg_0.c.a), arg_0.c.a.x | arg_0.c.a.x)), vec2<bool>(true, true), vec2<bool>(any(!(!vec3<bool>(arg_0.c.a.x, arg_0.c.a.x, arg_0.c.a.x))), select(arg_0.c.a.x || arg_0.c.a.x, all(vec3<bool>(true, arg_0.c.a.x, true)) | arg_0.c.a.x, false)));
    return min(countOneBits(vec4<i32>(~u_input.a, -firstLeadingBit(global0.x), 2147483647i, abs(_wgslsmith_mult_i32(global0.x, -24990i)))), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, u_input.a, 43396i, 1i)), abs(vec4<i32>(global0.x, -48192i, 0i, 2147483647i))) ^ (vec4<i32>(u_input.a, 26382i, -2147483647i, u_input.a) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(48633u, 1u, arg_0.b, 62549u), vec4<u32>(32500u, 17639u, 38509u, arg_0.a)) % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_add_vec4_i32(abs(vec4<i32>(-1i, global0.x, 2147483647i, global0.x)), countOneBits(vec4<i32>(-1i, global0.x, 0i, -16264i))))));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    global0 = vec4<i32>(global0.x, -7108i, abs(u_input.a), reverseBits(abs(select(global0.x, -43171i, select(true, true, false)))));
    var var_1 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, true)), !(arg_0 <= arg_0)), vec2<bool>(true, true)));
    global0 = (min(vec4<i32>(u_input.a, u_input.a, global0.x, -19500i) >> (vec4<u32>(arg_0, 42137u, 1u, arg_0) % vec4<u32>(32u)), func_3(Struct_2(43207u, 4586u, Struct_1(var_1.a)), ~vec2<u32>(4294967295u, arg_0))) << (vec4<u32>(arg_0, ~arg_0 ^ ~arg_0, 61633u, 83820u) % vec4<u32>(32u))) << (vec4<u32>(firstTrailingBit(~(arg_0 & 21290u)), arg_0, arg_0 & select(_wgslsmith_sub_u32(arg_0, arg_0), _wgslsmith_mult_u32(1u, arg_0), var_1.a.x), arg_0) % vec4<u32>(32u));
    var var_2 = Struct_2((_wgslsmith_mod_u32(min(103461u, arg_0), 0u) & 49798u) ^ abs(_wgslsmith_sub_u32(4294967295u >> (arg_0 % 32u), 1u)), ~(~(~40569u)), Struct_1(vec2<bool>(true, false)));
    return Struct_2(_wgslsmith_mult_u32(var_2.a, 64880u), 4294967295u, var_2.c);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: Struct_4) -> i32 {
    var var_0 = max(0u, arg_0.b) << (arg_0.b % 32u);
    var_0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(~select(~11644u, 22827u ^ arg_3.a, any(vec3<bool>(arg_0.c.a.x, false, true))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_0.a), vec2<u32>(1979u, arg_3.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(79434u, arg_0.a), vec2<u32>(4294967295u, arg_0.a))), 22209u)), ~4294967295u);
    let var_1 = func_2(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(min(vec4<u32>(4294967295u, arg_3.b, arg_3.b, 1u), vec4<u32>(arg_0.a, arg_3.b, 30316u, 4294967295u))), select(vec4<u32>(1u, 4294967295u, 1u, 0u), ~vec4<u32>(34029u, 30052u, 0u, arg_3.a), select(false, arg_0.c.a.x, arg_0.c.a.x))), vec4<u32>(~firstLeadingBit(arg_0.a), 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(31256u, 0u, 31324u, arg_3.b), vec4<u32>(arg_0.b, arg_3.a, 22245u, arg_0.b)), abs(arg_3.a | 1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(590f, arg_3.c.x, 492f, arg_3.c.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c.x, 828f, arg_3.c.x, arg_3.c.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(arg_3.c.x, -1000f)), arg_3.c.x, _wgslsmith_div_f32(-111f, arg_3.c.x), 1397f)))).c;
    global0 = firstTrailingBit(countOneBits(vec4<i32>(-firstTrailingBit(arg_2.x), ~21424i, u_input.a, arg_2.x)));
    var_0 = ~(~arg_3.a);
    return u_input.a;
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = -_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, ~(i32(-1i) * -1i)), _wgslsmith_mod_vec2_i32(global0.yw, global0.xz) << (~(~vec2<u32>(3797u, 24540u)) % vec2<u32>(32u)));
    var var_1 = -_wgslsmith_clamp_vec4_i32(-select(min(vec4<i32>(-2147483647i, -26835i, -27802i, u_input.a), vec4<i32>(-1i, u_input.a, global0.x, arg_0)), firstLeadingBit(vec4<i32>(35525i, -33243i, -2147483647i, 2147483647i)), all(vec4<bool>(arg_1.a.x, false, arg_1.a.x, arg_1.a.x))), vec4<i32>(-_wgslsmith_mod_i32(arg_0, 15029i), -_wgslsmith_sub_i32(global0.x, global0.x), _wgslsmith_dot_vec2_i32(-global0.zy, -global0.wz), _wgslsmith_dot_vec3_i32(vec3<i32>(-5007i, 2147483647i, -58699i), _wgslsmith_clamp_vec3_i32(global0.zwy, vec3<i32>(14622i, var_0.x, -7876i), global0.zxz))), vec4<i32>(_wgslsmith_mod_i32(1i, select(var_0.x, -2147483647i, true)), 14907i, global0.x, func_3(func_2(0u, vec4<f32>(479f, -637f, 147f, 260f)), vec2<u32>(1u, 1u)).x));
    let var_2 = arg_1.a;
    let var_3 = arg_1.a;
    var_0 = var_1.yx | ~(~abs(vec2<i32>(2147483647i, u_input.a) & global0.zy));
    return 0u;
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> vec2<i32> {
    global0 = max(vec4<i32>(44306i, global0.x, ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 1i, u_input.a, global0.x), vec4<i32>(u_input.a, u_input.a, u_input.a, -32766i))), -13261i), -_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, -26090i, 2147483647i, u_input.a), vec4<i32>(~global0.x, i32(-1i) * -25602i, u_input.a, reverseBits(u_input.a))));
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(-_wgslsmith_clamp_i32(u_input.a, u_input.a, global0.x), ~(-1i), firstLeadingBit(_wgslsmith_mult_i32(19745i, u_input.a)))), -(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(global0.zx, global0.zx), countOneBits(vec2<i32>(global0.x, u_input.a))) & vec2<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), _wgslsmith_mod_i32(u_input.a, -26595i))));
    var var_1 = Struct_2(0u, func_5(func_4(func_2(1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(-120f, -2049f, -1007f, -1000f) - vec4<f32>(-923f, -505f, -2302f, -1049f))), func_2(63503u << (1u % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2228f, 1818f, 1092f, 194f) - vec4<f32>(264f, 1099f, 239f, -707f))).c.a, global0.zy, Struct_4(1u, 1u, _wgslsmith_div_vec2_f32(vec2<f32>(2700f, -1002f), vec2<f32>(-866f, -892f)))), Struct_1(vec2<bool>(!arg_1.x, false))), func_2(min(1u, 1u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(892f, 2003f, -1098f, -528f) * vec4<f32>(-1000f, 1091f, -731f, -430f))))).c);
    var_0 = countOneBits(u_input.a);
    global0 = -countOneBits(select(vec4<i32>(30657i, 1i, global0.x, global0.x) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -45485i, global0.x, -15782i), vec4<i32>(global0.x, global0.x, 20717i, -1i)), vec4<i32>(-1i) * -vec4<i32>(2147483647i, u_input.a, global0.x, 39i), !vec4<bool>(false, true, false, arg_0)));
    return global0.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_1(all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)))), !vec3<bool>(true, any(vec2<bool>(true, true)), true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1501f))), 401f)));
    let var_2 = select(!vec2<bool>(true, all(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, func_2(4294967295u, vec4<f32>(696f, -1038f, -1414f, -641f)).c.a.x), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), true), true));
    let var_3 = ~firstLeadingBit(_wgslsmith_sub_vec2_u32(~min(vec2<u32>(0u, 48513u), vec2<u32>(14768u, 58690u)), ~(~vec2<u32>(34243u, 63509u))));
    global0 = firstTrailingBit(firstLeadingBit(vec4<i32>(global0.x, -33080i << (func_5(u_input.a, Struct_1(var_2)) % 32u), 2147483647i, var_0.x)));
    var var_4 = Struct_1(var_2);
    var var_5 = Struct_4(1u, var_3.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(253f, 1000f)) - vec2<f32>(967f, 1713f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-115f, 561f)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1370f, -465f), vec2<f32>(-401f, -1991f))), vec2<bool>(var_4.a.x == false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(firstLeadingBit(_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(var_3, var_3))), 1u, countOneBits(29990u)));
}

