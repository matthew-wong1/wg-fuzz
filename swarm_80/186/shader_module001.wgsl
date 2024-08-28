struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = any(vec3<bool>(u_input.d.x > 43797u, true, arg_0.d | false)) && all(select(select(select(vec4<bool>(false, arg_1.d, true, false), vec4<bool>(arg_1.d, arg_1.d, false, arg_0.d), false), vec4<bool>(false, true, false, false), arg_1.d), !select(vec4<bool>(false, false, arg_3.d, arg_0.d), vec4<bool>(true, arg_1.d, true, arg_0.d), arg_3.d), true));
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, -arg_0.c | firstLeadingBit(arg_1.b.x)), abs(_wgslsmith_add_i32(_wgslsmith_mod_i32(reverseBits(arg_2.x), select(arg_2.x, -24273i, false)), _wgslsmith_mult_i32(-32877i, _wgslsmith_sub_i32(-61300i, arg_2.x)))));
    var var_2 = ~max(vec4<i32>(_wgslsmith_div_i32(1i, arg_3.b.x), -1i, -2147483647i, arg_1.c), (vec4<i32>(u_input.c.x, u_input.b.x, arg_3.b.x, u_input.b.x) >> (vec4<u32>(u_input.a, arg_1.a.x, 52229u, 2381u) % vec4<u32>(32u))) & vec4<i32>(1i, -26001i, 0i, -56813i)) >> (~vec4<u32>(15324u, u_input.d.x, 1u, arg_1.a.x) % vec4<u32>(32u));
    var_1 = _wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.b.x, arg_3.b.x, -1i), ~vec3<i32>(1i, 48100i, arg_3.c)), -1i, 2147483647i) << (0u % 32u);
    var var_3 = all(vec4<bool>(any(select(select(vec3<bool>(false, arg_1.d, false), vec3<bool>(true, true, arg_3.d), false), vec3<bool>(true, arg_3.d, arg_1.d), select(vec3<bool>(true, true, arg_3.d), vec3<bool>(arg_3.d, false, arg_3.d), vec3<bool>(arg_0.d, false, false)))), arg_3.d, false, false));
    return -2147483647i;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = ~(~140429u);
    var var_1 = arg_1;
    let var_2 = ~func_3(Struct_1(vec3<u32>(4294967295u, 0u, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.x, var_1.c), arg_1.b, arg_1.b), 0i ^ var_1.b.x, var_1.d), arg_1, vec3<i32>(i32(-1i) * -1i, -arg_1.c, -u_input.b.x), arg_1) >= arg_0.x;
    var_1 = Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(abs(268u << (var_0 % 32u)), _wgslsmith_div_u32(firstTrailingBit(80558u), _wgslsmith_add_u32(arg_1.a.x, 4294967295u)), ~_wgslsmith_sub_u32(1u, u_input.e)), ~arg_1.a), abs(arg_0), (~(-2724i) | abs(select(1i, arg_1.c, false))) | select(arg_1.c, -(arg_0.x & arg_0.x), any(!vec4<bool>(var_2, true, true, false))), true);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-973f * 1000f));
    return -268f;
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-vec2<i32>(u_input.b.x, -1i), Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 25468u), vec3<u32>(4294967295u, u_input.a, u_input.e)), vec2<i32>(-48376i, u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.b.yx, vec2<i32>(u_input.b.x, u_input.b.x)), false)))), _wgslsmith_div_f32(1845f, _wgslsmith_f_op_f32(146f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(960f * arg_0.x))))), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1352f))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-783f, 460f, false)) * -191f)) - _wgslsmith_f_op_f32(func_2(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.b.zx), ~vec2<i32>(-7925i, -32074i)), Struct_1(~vec3<u32>(56325u, u_input.e, u_input.e), max(vec2<i32>(u_input.c.x, u_input.b.x), vec2<i32>(u_input.c.x, u_input.b.x)), 15701i, true)))));
    let var_1 = firstTrailingBit(u_input.a);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_0.x, arg_0.x, arg_0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -391f, arg_0.x, arg_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1449f, 1287f, arg_0.x, 1285f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1304f, var_0.x, 1095f), vec4<f32>(var_0.x, -827f, 1067f, var_0.x))))) * vec4<f32>(_wgslsmith_div_f32(2055f, _wgslsmith_div_f32(-808f, var_0.x)), _wgslsmith_f_op_f32(-1845f + _wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(max(-856f, -843f)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1423f + _wgslsmith_f_op_f32(min(var_0.x, -687f))))), _wgslsmith_f_op_f32(arg_0.x - arg_0.x)));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~max(~((vec4<u32>(u_input.e, u_input.e, u_input.d.x, 0u) << (vec4<u32>(18537u, 10271u, 43836u, u_input.d.x) % vec4<u32>(32u))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, u_input.e, 1u, u_input.e), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), vec4<u32>(u_input.a, 18222u, u_input.a, 56649u)) % vec4<u32>(32u))), countOneBits(~(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.e, 0u))));
    let var_1 = countOneBits(var_0.x);
    var var_2 = ~(~var_0.x);
    let var_3 = u_input.b;
    var_2 = (u_input.d.x ^ ~1u) ^ var_1;
    var_2 = var_0.x;
    var_2 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, var_1, var_1, vec2<f32>(_wgslsmith_f_op_f32(-981f - _wgslsmith_f_op_f32(abs(-1456f))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(876f, 1515f, -1000f)))))));
}

