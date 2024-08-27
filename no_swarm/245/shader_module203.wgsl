struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    return any(!vec4<bool>(u_input.b > ~u_input.b, _wgslsmith_mult_i32(43440i, -1i) == abs(u_input.b), true, true));
}

fn func_2() -> bool {
    let var_0 = Struct_1(func_3(), vec4<f32>(-1058f, _wgslsmith_f_op_f32(240f - _wgslsmith_f_op_f32(f32(-1f) * -1385f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1381f, -123f)) - _wgslsmith_f_op_f32(-519f * 1573f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-315f + 2376f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-388f + 1792f), _wgslsmith_f_op_f32(min(-1796f, -1291f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1111f * -343f)))));
    let var_1 = 2147483647i;
    let var_2 = vec2<i32>(firstTrailingBit(var_1) << (u_input.a.x % 32u), firstLeadingBit(u_input.b));
    let var_3 = Struct_1(false, _wgslsmith_f_op_vec4_f32(var_0.b * _wgslsmith_f_op_vec4_f32(-var_0.b)));
    return var_3.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = u_input.a.wwx;
    let var_1 = arg_2.b.zy;
    var var_2 = select(vec4<bool>(any(!(!vec2<bool>(true, arg_0.a))), !any(vec3<bool>(arg_2.a, true, arg_0.a)), !any(!vec3<bool>(true, false, arg_2.a)), arg_2.a), vec4<bool>(!func_2(), var_1.x > _wgslsmith_f_op_f32(trunc(-879f)), true, !arg_2.a), vec4<bool>(arg_0.a, true, true, true));
    let var_3 = Struct_1(!(var_2.x & any(!vec2<bool>(arg_2.a, true))), arg_2.b);
    var var_4 = _wgslsmith_f_op_vec2_f32(-var_1);
    return 61285u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>((-1i | _wgslsmith_sub_i32(u_input.b, 2147483647i)) << ((func_1(Struct_1(false, vec4<f32>(-1951f, -329f, -719f, 1369f)), vec2<u32>(0u, u_input.a.x), Struct_1(false, vec4<f32>(372f, 576f, 507f, 1367f))) | ~0u) % 32u), ((u_input.b ^ u_input.b) >> (u_input.a.x % 32u)) << (_wgslsmith_dot_vec3_u32(~u_input.a.zyy, ~u_input.a.zxx) % 32u), 2147483647i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(~(-2147483647i), 21625i), 3706i << (u_input.a.x % 32u))) ^ vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, firstTrailingBit(-21499i)), ~1i), ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(26844i, 43418i), 35249i), 86649i, -4128i | -u_input.b);
    let var_1 = var_0.yzw;
    var var_2 = u_input.b == -_wgslsmith_dot_vec2_i32(min(-var_0.xw, vec2<i32>(var_1.x, var_1.x) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(~vec2<i32>(var_0.x, 26290i), vec2<i32>(var_1.x, 1i)));
    var var_3 = select(select(!select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), false), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true)), vec4<bool>(true, true, true, true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, false, false)), true, true, true), false)));
    let var_4 = _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(36308u, u_input.a.x), u_input.a.yy), u_input.a.yz);
    var_0 = reverseBits(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, u_input.b, u_input.b, -2147483647i), vec4<i32>(2147483647i, var_0.x, -1i, u_input.b)), firstLeadingBit(vec4<i32>(1i, -2147483647i, var_0.x, var_1.x))) | (vec4<i32>(-1i) * -vec4<i32>(var_1.x, var_0.x, u_input.b, var_1.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, var_0.x, var_1.x, 62267i), vec4<i32>(u_input.b, -26317i, -57722i, 47710i)), vec4<i32>(var_0.x, 40229i, -16435i, 1i), ~vec4<i32>(-2147483647i, -40482i, var_1.x, -1i)) << (u_input.a % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~min(var_4, u_input.a.zy))), u_input.a.x, u_input.b, var_4.x, u_input.a.x);
}

