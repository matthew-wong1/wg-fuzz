struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    return select(select(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), false), false), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, any(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), select(vec4<bool>(true || any(vec4<bool>(true, false, false, false)), true, true, !(u_input.c >= 16521u)), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, false), any(vec3<bool>(true, false, false))), vec4<bool>(true, any(vec2<bool>(false, true)), true, true), -u_input.e < ~u_input.e), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))), !vec4<bool>(true, _wgslsmith_mod_u32(u_input.d, u_input.c) >= u_input.c, !any(vec3<bool>(true, false, true)), !any(vec3<bool>(true, false, true))));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_1(vec4<u32>(min(~38794u, max(4294967295u, 33754u)), arg_2.x, u_input.c, max(~arg_0, min(arg_0, 17251u))) & max(vec4<u32>(u_input.a.x & 1u, u_input.c, 11791u, arg_2.x), ~u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-831f, -1000f))));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-1000f * var_0.b.x));
    var var_2 = !vec4<bool>(false, true, arg_1.x, !arg_1.x);
    var_2 = !vec4<bool>(true, true, arg_1.x & (_wgslsmith_f_op_f32(-var_1.a) >= -239f), -437f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(631f, 1499f))));
    var var_3 = !func_3();
    return Struct_3(Struct_1(_wgslsmith_mult_vec4_u32(abs(u_input.a) << (var_0.a % vec4<u32>(32u)), ~(var_0.a >> (var_0.a % vec4<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), var_0.b.x))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0.a.x;
    var var_1 = false;
    let var_2 = func_2(var_0, vec3<bool>(true, true, true), ~(vec3<u32>(firstLeadingBit(arg_0.a.x), ~0u, u_input.d >> (0u % 32u)) | (~u_input.a.zyy << (arg_0.a.xwz % vec3<u32>(32u)))));
    var_1 = func_3().x;
    let var_3 = func_3().yyy;
    return firstLeadingBit(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    var var_1 = vec4<u32>(0u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, 21246u), ~1u), func_1(Struct_1(vec4<u32>(50660u, 1u, u_input.a.x, 0u), vec2<f32>(-1960f, 955f)))), u_input.b), 4294967295u, ~4294967295u);
    var_1 = vec4<u32>(~(~47850u), min(_wgslsmith_add_u32(~u_input.b, var_1.x), var_1.x << ((31571u >> (1u % 32u)) % 32u)) | _wgslsmith_div_u32(~u_input.b, _wgslsmith_clamp_u32(u_input.d, 79062u >> (u_input.d % 32u), var_1.x << (0u % 32u))), ~var_1.x, _wgslsmith_dot_vec3_u32(u_input.a.wwy, _wgslsmith_add_vec3_u32(u_input.a.yzy, u_input.a.yyy >> (var_1.ywz % vec3<u32>(32u)))) | _wgslsmith_div_u32(30311u, _wgslsmith_mod_u32(1u ^ var_1.x, 1u)));
    var var_2 = select(~(-vec3<i32>(abs(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -28626i, var_0), vec3<i32>(var_0, var_0, -722i)), ~u_input.e)), abs(~vec3<i32>(_wgslsmith_clamp_i32(1i, u_input.e, var_0), _wgslsmith_mult_i32(u_input.e, 24127i), _wgslsmith_mod_i32(58379i, -20184i))), true);
    let var_3 = vec4<u32>(var_1.x, 9439u | u_input.c, ~u_input.d, _wgslsmith_mult_u32(~_wgslsmith_mod_u32(0u, firstTrailingBit(var_1.x)), 34384u));
    var_2 = ~(~_wgslsmith_sub_vec3_i32(~firstTrailingBit(vec3<i32>(u_input.e, var_2.x, var_0)), -vec3<i32>(u_input.e, -1519i, var_0) >> (~var_3.zwx % vec3<u32>(32u))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(2397f + -313f), -1097f, _wgslsmith_f_op_f32(select(-133f, -1463f, false)), 1358f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-488f, _wgslsmith_f_op_f32(1899f - 2054f), -2709f, _wgslsmith_f_op_f32(ceil(239f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

