struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
    e: i32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = 773f;
    var var_1 = Struct_1(firstTrailingBit(11899i));
    var var_2 = _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_mod_i32(var_1.a, -8128i), -2147483647i, arg_2, select(_wgslsmith_div_i32(39481i, var_1.a), min(arg_3.a, arg_2), arg_0.a.x)), u_input.d);
    let var_3 = !select(!select(vec2<bool>(false, arg_0.a.x), vec2<bool>(true, true), arg_0.a.xx), arg_0.a.xx, true);
    var_2 = arg_1.a;
    return min(u_input.a, countOneBits(reverseBits(13788u)));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    let var_0 = Struct_2(select(select(vec3<bool>(true, true, all(vec4<bool>(true, false, false, true))), vec3<bool>(1934u < u_input.a, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true))));
    let var_1 = countOneBits(arg_0);
    let var_2 = true;
    let var_3 = Struct_1(0i);
    let var_4 = Struct_2(var_0.a);
    return u_input.d.wzy;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: vec3<i32>) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_sub_i32(~arg_2, arg_2)), _wgslsmith_dot_vec3_i32(arg_3, abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-6607i, 32150i, 94200i), u_input.d.xzz, arg_3))), u_input.d.x));
    let var_1 = ~_wgslsmith_mult_vec2_i32(arg_3.yy, arg_3.yy);
    return ~reverseBits(~vec4<u32>(_wgslsmith_div_u32(arg_1, arg_1), u_input.a, abs(arg_1), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 53849u, 88006u, u_input.a), vec4<u32>(4294967295u, 47279u, arg_1, 11715u))));
}

fn func_1(arg_0: u32) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -150f) * _wgslsmith_f_op_f32(-1f)), 387f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-845f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2974f - 889f))))));
    let var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, arg_0, 100071u, arg_0), select(vec4<u32>(0u, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, arg_0, 44187u, 0u), false)), firstLeadingBit(vec4<u32>(func_2(Struct_2(vec3<bool>(true, true, true)), Struct_1(-20712i), u_input.b, Struct_1(u_input.b)), arg_0, 4294967295u, ~u_input.a))), ~select(~vec4<u32>(u_input.a, u_input.a, arg_0, 1u) >> (min(vec4<u32>(51728u, 4294967295u, 1u, 29919u), vec4<u32>(45144u, 1u, 1u, u_input.a)) % vec4<u32>(32u)), func_4(var_0.x, arg_0, ~u_input.c, func_3(u_input.d.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u | u_input.a, u_input.a, _wgslsmith_mod_u32(arg_0, 0u), 53354u), firstTrailingBit(~(~vec4<u32>(u_input.a, u_input.a, 16362u, arg_0))), vec4<u32>(firstTrailingBit(0u), 4294967295u, _wgslsmith_div_u32(4294967295u & arg_0, 1u), 93456u << (~u_input.a % 32u))));
    var var_2 = var_0;
    var var_3 = vec2<i32>(u_input.b, 2147483647i);
    var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0)))), vec2<f32>(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(1721f * var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1218f) + var_0.x) * -478f)));
    return select(!vec3<bool>(select(true, all(vec3<bool>(true, false, true)), any(vec2<bool>(false, true))), !(5196u != arg_0), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true))), vec3<bool>(any(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false)), any(vec3<bool>(false, true, select(false, false, true))), true), vec3<bool>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)) == _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true)), all(vec3<bool>(false, true, u_input.c != 1086i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(!vec2<bool>(true, all(vec2<bool>(false, false))), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), any(vec3<bool>(true, false, false))), vec2<bool>(true, true)));
    var var_1 = Struct_2(select(!func_1(_wgslsmith_sub_u32(u_input.a, u_input.a)), vec3<bool>(u_input.a <= 1u, any(select(vec3<bool>(true, true, var_0), vec3<bool>(true, false, true), false)), true), vec3<bool>(true, true, true)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2502f, 1496f), vec2<f32>(1015f, 1058f)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1254f - 374f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(947f, -593f))))));
    var_1 = Struct_2(var_1.a);
    let var_3 = var_2.x;
    var var_4 = select(vec2<bool>(!(func_1(25292u).x && (var_1.a.x & false)), true), !(!var_1.a.zy), vec2<bool>(!(!all(var_1.a.zy)), true));
    var var_5 = !var_0;
    var var_6 = Struct_1(-firstTrailingBit(_wgslsmith_mult_i32(20965i, _wgslsmith_add_i32(u_input.c, 7716i))));
    var var_7 = _wgslsmith_f_op_f32(trunc(-770f));
    let x = u_input.a;
    s_output = StorageBuffer(17079u, -43452i, _wgslsmith_f_op_f32(max(864f, _wgslsmith_f_op_f32(f32(-1f) * -1358f))), u_input.c, 26075i);
}

