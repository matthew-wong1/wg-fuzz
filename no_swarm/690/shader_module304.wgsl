struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(arg_0.c * _wgslsmith_div_f32(_wgslsmith_f_op_f32(891f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a)))), arg_0.a));
    var var_1 = !all(vec4<bool>(all(select(vec4<bool>(false, true, arg_0.d.x, arg_0.d.x), vec4<bool>(false, arg_0.d.x, true, false), vec4<bool>(arg_0.d.x, true, false, true))), true, any(arg_0.d), true));
    var var_2 = arg_0.d.x;
    var_2 = all(!vec3<bool>(true, all(vec2<bool>(arg_0.d.x, false)), arg_0.d.x));
    let var_3 = vec3<i32>(_wgslsmith_mod_i32(2147483647i, arg_0.e.x), 2147483647i, abs(-1i)) ^ reverseBits(vec3<i32>(_wgslsmith_div_i32(-15861i, -arg_0.b.x), ~(~0i), arg_0.b.x));
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32, arg_3: u32) -> vec2<i32> {
    var var_0 = firstTrailingBit(arg_2);
    let var_1 = vec4<f32>(848f, arg_0.a, arg_0.a, arg_0.a);
    let var_2 = Struct_1(420f, vec2<i32>(arg_0.e.x << (_wgslsmith_dot_vec4_u32(select(u_input.a, vec4<u32>(arg_2, arg_3, 685u, arg_3), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), u_input.a) % 32u), arg_0.e.x << (reverseBits(arg_3 & arg_2) % 32u)), var_1.x, vec2<bool>(func_3(arg_0), u_input.a.x <= ~u_input.a.x), select(arg_0.b, reverseBits(reverseBits(~arg_0.e)), true));
    var_0 = u_input.a.x;
    var var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(abs(1u), ~46383u), 4294967295u), reverseBits(u_input.a.x | arg_2), 27942u | arg_2), u_input.a.wwy, vec3<u32>(arg_2, _wgslsmith_mod_u32(~8804u, abs(firstTrailingBit(67077u))), ~_wgslsmith_mod_u32(~arg_2, arg_2)));
    return ~(vec2<i32>(arg_0.e.x, var_2.e.x) ^ _wgslsmith_clamp_vec2_i32(~arg_0.b, -vec2<i32>(var_2.e.x, var_2.e.x), max(arg_0.e, arg_0.b))) ^ arg_0.b;
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<bool>) -> vec4<bool> {
    let var_0 = arg_2.x;
    var var_1 = -vec2<i32>(firstTrailingBit(~(~1i)), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-1i, 1i, 1i)), ~vec3<i32>(1i, 1i, 1i)));
    var_1 = vec2<i32>((i32(-1i) * -23875i) | (2147483647i & (var_1.x | abs(var_1.x))), ~(~(~(-var_1.x))));
    var_1 = select(_wgslsmith_sub_vec2_i32(vec2<i32>(18120i, -1i) >> (~u_input.a.yz % vec2<u32>(32u)), vec2<i32>(0i ^ var_1.x, var_1.x)) & _wgslsmith_clamp_vec2_i32(func_2(Struct_1(-1060f, vec2<i32>(1i, var_1.x), 177f, vec2<bool>(var_0, false), vec2<i32>(var_1.x, -1i)), arg_2, arg_0, arg_0) & (vec2<i32>(var_1.x, -1i) & vec2<i32>(-1i, var_1.x)), max(vec2<i32>(-2147483647i, var_1.x) ^ vec2<i32>(var_1.x, var_1.x), _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(26823i, 2147483647i))), func_2(Struct_1(-947f, vec2<i32>(var_1.x, var_1.x), 809f, arg_2.yx, vec2<i32>(-1i, 61451i)), arg_2, 1u, 4294967295u) | vec2<i32>(var_1.x, var_1.x)), -vec2<i32>(1i, _wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-34922i, var_1.x, var_1.x), vec3<i32>(var_1.x, -2147483647i, -16275i)))), false);
    let var_2 = var_1.x << (u_input.a.x % 32u);
    return select(!(!(!vec4<bool>(true, arg_2.x, var_0, arg_2.x))), arg_2, any(select(arg_1.yx, vec2<bool>(true, arg_2.x), arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec2<bool>(true, true), !vec2<bool>(all(vec4<bool>(true, false, true, false)), select(false, true, false)), !all(func_1(14585u, vec3<bool>(false, true, true), vec4<bool>(false, false, false, false)))), !func_1(u_input.a.x, select(func_1(0u, vec3<bool>(false, false, true), vec4<bool>(false, true, true, false)).zzw, vec3<bool>(true, true, true), true), vec4<bool>(false, any(vec4<bool>(true, false, true, false)), true, true)).wy, !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), func_1(u_input.a.x, vec3<bool>(true, true, false), vec4<bool>(true, false, true, true)).x), vec2<bool>(all(vec3<bool>(true, false, false)), true)));
    var_0 = select(vec2<bool>(true, true), select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x)), var_0.x || true), vec2<bool>(true, true || var_0.x), any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), !vec2<bool>(false, var_0.x)))), !select(vec2<bool>(false, var_0.x), !vec2<bool>(var_0.x, false), !func_1(21845u, vec3<bool>(var_0.x, var_0.x, false), vec4<bool>(true, true, false, true)).xy));
    let var_1 = 1u;
    var_0 = vec2<bool>(false, false);
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~var_1, u_input.a.x, ~u_input.a.x, ~(~0u)) << (~vec4<u32>(var_1, countOneBits(51054u), min(var_1, var_1), u_input.a.x) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_add_u32(var_1, u_input.a.x), 1u, _wgslsmith_div_u32(_wgslsmith_mult_u32(~u_input.a.x, 1u), ~firstTrailingBit(0u)), 0u), ~vec4<u32>(1u, 1u, var_1, _wgslsmith_add_u32(u_input.a.x, ~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-853f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(706f, -857f, var_0.x)), _wgslsmith_f_op_f32(select(-885f, -943f, var_0.x)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1000f))))), -54060i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1026f)) * -166f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1759f + -1606f)))) + _wgslsmith_f_op_f32(step(-344f, 503f))), -731f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-120f))));
}

