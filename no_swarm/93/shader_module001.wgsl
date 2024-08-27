struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<u32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec2<u32> {
    let var_0 = true;
    let var_1 = ~u_input.a.yxx;
    let var_2 = !(!select(!vec3<bool>(false, var_0, false), select(!vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, var_0, true), true), true));
    var var_3 = Struct_1(vec3<i32>(-2147483647i, 0i, -(~u_input.c) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 66108i, u_input.c) & vec3<i32>(u_input.c, u_input.c, 17699i), vec3<i32>(u_input.c, u_input.c, -24106i) << (vec3<u32>(var_1.x, 27233u, var_1.x) % vec3<u32>(32u)))), any(vec3<bool>(true, any(!vec4<bool>(false, true, false, var_0)), any(vec4<bool>(var_2.x, true, var_0, true)) | var_2.x)), vec2<u32>(_wgslsmith_div_u32(~50044u, countOneBits(u_input.b)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.zx | vec2<u32>(4294967295u, var_1.x), var_1.xx), ~_wgslsmith_div_u32(u_input.a.x, var_1.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-936f)))), true);
    var var_4 = _wgslsmith_f_op_f32(-495f - var_3.d);
    return select(~vec2<u32>(~var_1.x, 0u), firstTrailingBit(abs(_wgslsmith_add_vec2_u32(var_3.c, var_1.yx))), select(vec2<bool>(select(true, true, all(vec3<bool>(false, var_3.b, var_2.x))), true), var_2.yy, !vec2<bool>(var_3.d == 1740f, false)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_2) -> bool {
    var var_0 = 1u;
    let var_1 = 1i;
    var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(func_3() >> (vec2<u32>(57680u, func_3().x) % vec2<u32>(32u)), ~(~u_input.a.yy)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(select(u_input.d.x, 4294967295u, arg_2.x), 4294967295u, ~91392u, _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.b, u_input.d.x, u_input.b, 0u))), vec4<u32>(1u << (u_input.a.x % 32u), 57617u, 1u, 0u)), ~0u));
    var_0 = u_input.d.x;
    var var_2 = Struct_1(min(~(-_wgslsmith_div_vec3_i32(vec3<i32>(-23498i, 12651i, -30873i), vec3<i32>(arg_0.a, 2147483647i, -2147483647i))), ~_wgslsmith_div_vec3_i32(vec3<i32>(-26062i, -1i, arg_0.a), select(vec3<i32>(2147483647i, u_input.c, 4629i), vec3<i32>(-47474i, 72067i, u_input.c), true))), (max(u_input.a.x, u_input.d.x) | 4294967295u) <= u_input.b, vec2<u32>(u_input.a.x, u_input.a.x) & vec2<u32>(0u, u_input.d.x), 1843f, (_wgslsmith_clamp_i32(~9069i, 2147483647i, -2147483647i) << (27835u % 32u)) >= -firstTrailingBit(arg_3.a));
    return !any(!arg_2) || false;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_1(vec3<i32>(-11250i, firstLeadingBit(~u_input.c), abs(arg_2 & u_input.c) >> (50326u % 32u)), !(!(!func_2(Struct_2(u_input.c), Struct_2(arg_1.a.x), vec3<bool>(arg_1.e, arg_1.b, false), Struct_2(-25335i)))), vec2<u32>(_wgslsmith_dot_vec4_u32(abs(u_input.d), ~(~vec4<u32>(u_input.a.x, 4294967295u, 0u, 98440u))), ~(~5064u)), _wgslsmith_f_op_f32(floor(1508f)), arg_0.x);
    var var_1 = vec4<i32>(abs(-1i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(-vec4<i32>(-2147483647i, -15653i, arg_1.a.x, -29944i)), ~(-vec4<i32>(-9081i, 65311i, arg_2, arg_1.a.x))), _wgslsmith_mult_vec4_i32(~abs(vec4<i32>(u_input.c, arg_1.a.x, arg_1.a.x, arg_2)), ~(vec4<i32>(1i, -21479i, u_input.c, arg_1.a.x) ^ vec4<i32>(-70873i, -1i, u_input.c, arg_1.a.x)))), _wgslsmith_mult_i32(~abs(_wgslsmith_clamp_i32(arg_2, -19627i, u_input.c)), abs(~(arg_2 | 2147483647i))), u_input.c);
    var var_2 = Struct_2(var_0.a.x);
    var var_3 = _wgslsmith_mult_u32(abs(u_input.a.x), 4294967295u);
    var var_4 = !vec3<bool>(!any(vec4<bool>(false, true, true, arg_1.e)), arg_0.x, !((var_1.x << (var_0.c.x % 32u)) == var_0.a.x));
    return Struct_1(_wgslsmith_div_vec3_i32(-var_0.a, vec3<i32>(-var_1.x, abs(~(-16167i)), 45916i)), true, var_0.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1232f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) - _wgslsmith_f_op_f32(-318f + -1071f))))), var_4.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: bool) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(arg_0.xxx));
    let var_1 = vec2<u32>(1u, u_input.d.x);
    let var_2 = u_input.d;
    let var_3 = func_1(arg_1.yz, func_1(arg_1.xy, func_1(vec2<bool>(all(arg_1.xz), arg_2.b || false), func_1(vec2<bool>(true, true), func_1(vec2<bool>(false, false), Struct_1(vec3<i32>(-1i, u_input.c, -50499i), true, vec2<u32>(91821u, 44534u), 1704f, arg_2.b), 1i), _wgslsmith_mult_i32(1i, u_input.c)), ~(-arg_2.a.x)), firstLeadingBit(arg_2.a.x)), u_input.c);
    let var_4 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, var_1.x ^ 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(23032u, 13963u, u_input.b, var_2.x), vec4<u32>(var_1.x, arg_2.c.x, var_1.x, 4294967295u)), arg_2.c.x), min(max(u_input.a, vec4<u32>(1u, arg_2.c.x, var_1.x, var_1.x)), reverseBits(vec4<u32>(1u, 37706u, var_3.c.x, 8807u)))), ~arg_2.c.x, 79109u, 0u), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_1.x, 73209u), _wgslsmith_div_u32(arg_2.c.x, 1u)), ~(~493u)), 0u, 12577u, arg_2.c.x));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1377f)) * _wgslsmith_f_op_f32(trunc(var_3.d))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2507f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1056f)))) * _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(exp2(arg_0.x)), false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_sub_i32(abs(0i << (func_1(!vec2<bool>(true, arg_3.b), Struct_1(arg_3.a, false, vec2<u32>(arg_2.x, u_input.a.x), 1000f, false), -1556i).c.x % 32u)), u_input.c);
    var_0 = abs(u_input.c);
    var var_1 = _wgslsmith_div_vec3_i32(-(~_wgslsmith_mod_vec3_i32(arg_3.a, _wgslsmith_mult_vec3_i32(arg_3.a, vec3<i32>(37742i, arg_3.a.x, -1i)))), arg_3.a);
    var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(-firstTrailingBit(firstLeadingBit(6019i)), _wgslsmith_sub_i32(1i, -var_1.x) << (1u % 32u), _wgslsmith_mult_i32(1i, -1i)), arg_3.a);
    var_0 = var_1.x;
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(func_1(vec2<bool>(true, arg_3.b), arg_3, u_input.c).d, _wgslsmith_f_op_f32(arg_3.d - arg_0.x)), _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(arg_0.x + arg_0.x), all(vec3<bool>(false, false, false))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-88030i);
    var var_1 = var_0;
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(445f, 1000f, -1279f, -1129f))), vec3<bool>(true, true, true), func_1(vec2<bool>(true, true), Struct_1(vec3<i32>(var_1.a, 28208i, 44736i), true, u_input.a.ww, -1184f, true), var_1.a), false)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1304f, -234f, -484f)))))), ~u_input.a.x, ~(select(u_input.d, vec4<u32>(88769u, 1u, 43399u, 70201u), false) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, u_input.d.x, 4294967295u), countOneBits(vec4<u32>(u_input.a.x, u_input.b, 4294967295u, u_input.b)), abs(vec4<u32>(33211u, u_input.d.x, u_input.a.x, 43387u))) % vec4<u32>(32u))), Struct_1(vec3<i32>(10652i, ~u_input.c, u_input.c ^ _wgslsmith_mult_i32(var_0.a, var_0.a)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), vec2<u32>(u_input.b, ~0u), -507f, true));
}

