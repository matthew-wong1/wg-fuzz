struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>) -> vec4<bool> {
    return !vec4<bool>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, u_input.a.x, 1u), ~56612u) < firstLeadingBit(~0u), global0.x, global0.x, all(select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, true, false, global0.x), false)));
}

fn func_2() -> i32 {
    global0 = select(select(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-173f, 617f), vec2<f32>(-331f, -956f))), !(!func_3(vec2<f32>(965f, 108f))), false), vec4<bool>(global0.x || global0.x, select(any(func_3(vec2<f32>(1618f, 2440f))), global0.x, !select(true, global0.x, global0.x)), !(true & (global0.x != false)), !any(select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, false, global0.x, global0.x), global0.x))), !global0.x);
    global0 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(1u == _wgslsmith_div_u32(30052u, u_input.a.x), global0.x, true, true), vec4<bool>(true, !global0.x && true, true, 1265f >= _wgslsmith_f_op_f32(select(-1049f, 701f, true)))), vec4<bool>(true, true, !(!(true || global0.x)), false && global0.x), false);
    global0 = vec4<bool>(true, global0.x, global0.x, global0.x);
    global0 = vec4<bool>(all(vec3<bool>(global0.x, !(u_input.a.x >= u_input.a.x), false)), !global0.x, true, false);
    global0 = !func_3(vec2<f32>(1f, 1f));
    return -firstTrailingBit(_wgslsmith_mult_i32(~(~1i), -1i));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: vec4<f32>) -> f32 {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(-20896i, arg_1.x), arg_1.x) & _wgslsmith_sub_i32((2147483647i | arg_1.x) ^ -2147483647i, arg_1.x), ~33957i, _wgslsmith_mult_i32(10211i, func_2() ^ arg_1.x));
    global0 = select(vec4<bool>(global0.x, true, !(min(var_0.x, var_0.x) > _wgslsmith_sub_i32(-2147483647i, var_0.x)), var_0.x > 0i), select(!func_3(arg_2.yx), select(!(!vec4<bool>(global0.x, true, false, global0.x)), vec4<bool>(func_3(vec2<f32>(2285f, arg_0)).x, false, any(vec4<bool>(true, global0.x, true, global0.x)), global0.x && false), true), global0.x || any(func_3(arg_2.yw))), !vec4<bool>(!any(global0.yy), global0.x, !global0.x, !global0.x));
    let var_1 = vec3<i32>(-_wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(var_0.x, arg_1.x, var_0.x, 2147483647i)), vec4<i32>(countOneBits(var_0.x), _wgslsmith_mult_i32(arg_1.x, var_0.x), min(var_0.x, var_0.x), var_0.x)), ~58553i, select(arg_1.x, -20274i, global0.x && !select(false, global0.x, global0.x)));
    var var_2 = Struct_1(arg_2.wwy, (vec4<i32>(var_0.x, var_1.x, 2147483647i, ~2147483647i) | -vec4<i32>(0i, -35497i, var_1.x, -68128i)) << (firstLeadingBit(u_input.a) % vec4<u32>(32u)));
    var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1040f - arg_0), _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(max(arg_0, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * var_2.a.x) * _wgslsmith_f_op_f32(arg_0 + var_2.a.x)) * _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(round(-1000f))))), ~_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, 0i, var_1.x) | vec4<i32>(-1i, 1i, var_0.x, var_2.b.x), select(vec4<i32>(var_2.b.x, -1i, 0i, -8108i), vec4<i32>(var_2.b.x, var_0.x, var_1.x, -472i), vec4<bool>(global0.x, true, true, global0.x))) >> (abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(52583u, 43683u, 0u, 0u), u_input.a)) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + var_2.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * -225f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<f32>(1000f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1964f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(279f, vec2<i32>(1i, -2147483647i), vec4<f32>(-720f, 1413f, 403f, 828f)))), -1344f)), vec4<i32>(-1i) * -(~vec4<i32>(-39735i, 84711i, 45605i, 1i)));
    let var_1 = vec3<bool>(false, global0.x, func_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a.x, var_0.a.x))))))).x);
    let var_2 = var_0.a.zy;
    let var_3 = var_0;
    global0 = vec4<bool>(global0.x, all(vec2<bool>(func_3(var_2).x, true)) | true, false, global0.x);
    let var_4 = _wgslsmith_clamp_vec3_i32(vec3<i32>(~((var_3.b.x << (78163u % 32u)) << (u_input.a.x % 32u)), _wgslsmith_dot_vec4_i32(-var_3.b, -var_3.b >> (~u_input.a % vec4<u32>(32u))), -(~(-4724i))), _wgslsmith_sub_vec3_i32(var_3.b.zzx, var_3.b.ywy), _wgslsmith_clamp_vec3_i32(var_0.b.yww, -firstLeadingBit(vec3<i32>(var_3.b.x, var_3.b.x, var_3.b.x)), -(~reverseBits(var_3.b.zyw))));
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(var_5.b.x >> (abs(u_input.a.x) % 32u))), _wgslsmith_div_u32(abs(0u), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(1u, 1u, u_input.a.x), 58750u)));
}

