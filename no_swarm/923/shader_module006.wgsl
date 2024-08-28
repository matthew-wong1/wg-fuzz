struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = select(~(~(~vec2<i32>(-40193i, u_input.d.x))), -u_input.b, !(!vec2<bool>(true, all(vec2<bool>(false, true)))));
    var var_1 = select(!select(vec2<bool>(all(vec2<bool>(false, false)), true), vec2<bool>(any(vec4<bool>(true, true, false, true)), all(vec4<bool>(false, false, true, false))), true), !select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), any(vec3<bool>(select(false, var_0.x >= var_0.x, true), all(vec3<bool>(true, false, false)) && true, select(true, true, all(vec2<bool>(true, true))))));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -446f)))) <= -1187f;
    var_1 = !select(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(var_2, var_2))), !select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, false), vec2<bool>(false, true)), !(!var_2));
    var_1 = select(vec2<bool>(!var_1.x, true), select(!(!vec2<bool>(var_1.x, var_1.x)), !select(!vec2<bool>(var_2, var_2), vec2<bool>(true, true), true), var_1.x), vec2<bool>(!(!(!var_2)), all(select(vec4<bool>(false, true, var_2, false), vec4<bool>(false, var_1.x, var_1.x, false), true)) && true));
    return select(!vec4<bool>(true, false, true, !all(vec3<bool>(false, false, false))), !vec4<bool>(!all(vec3<bool>(false, false, true)), var_1.x, all(vec2<bool>(false, false)) || !var_1.x, !var_2), vec4<bool>(true, all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), var_1.x), !vec4<bool>(var_2, var_2, var_2, false), all(vec4<bool>(var_2, var_2, false, false)))), var_2, var_2));
}

fn func_2() -> vec3<u32> {
    let var_0 = any(func_3());
    let var_1 = Struct_2(Struct_1(421f, ~6313u, !vec3<bool>(func_3().x, var_0, 30417u <= u_input.c), -_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 6068i, u_input.b.x, -2147483647i), vec4<i32>(43731i, u_input.a, 29455i, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-59312i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.a, -7032i, u_input.a, 1i), vec4<i32>(u_input.b.x, u_input.d.x, u_input.a, -16097i))), vec3<u32>(_wgslsmith_div_u32(61545u, ~39859u), 19436u, countOneBits(~u_input.c))));
    let var_2 = Struct_3(select(var_1.a.d, var_1.a.d, !select(select(vec4<bool>(false, true, var_0, var_0), vec4<bool>(var_1.a.c.x, false, var_1.a.c.x, false), false), vec4<bool>(var_1.a.c.x, false, var_0, true), vec4<bool>(true, false, var_1.a.c.x, true))));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.a, var_1.a.a)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2204f * var_1.a.a)))), 490f))));
    let var_4 = var_0;
    return abs(var_1.a.e) | var_1.a.e;
}

fn func_1(arg_0: i32) -> vec3<i32> {
    var var_0 = ~(~_wgslsmith_dot_vec3_u32(func_2(), abs(firstTrailingBit(vec3<u32>(4294967295u, 1u, u_input.c)))));
    var var_1 = ~0u;
    var var_2 = _wgslsmith_clamp_u32(abs(~u_input.c & u_input.c), 54368u, u_input.c >> (u_input.c % 32u));
    var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(49402u, _wgslsmith_add_u32(0u, select(u_input.c ^ u_input.c, u_input.c, true)), u_input.c, u_input.c << (~(~2725u) % 32u)), ~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 14539u), vec4<u32>(u_input.c, u_input.c, 163203u, 44913u))) ^ ~firstTrailingBit(reverseBits(vec4<u32>(u_input.c, 4294967295u, 1u, 4294967295u))));
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mod_i32(~(_wgslsmith_div_i32(54160i, u_input.b.x) | u_input.b.x), ~0i));
    var var_1 = all(func_3());
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-696f * 166f), -811f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(573f))), 516f), vec3<f32>(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1416f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(443f, -481f)) * _wgslsmith_f_op_f32(max(-1000f, 295f)))))));
    var var_3 = Struct_2(Struct_1(var_2.x, u_input.c, vec3<bool>(true, true, true), -abs(~vec4<i32>(0i, var_0.x, u_input.a, var_0.x)), vec3<u32>(12018u, func_2().x, u_input.c)));
    var var_4 = _wgslsmith_f_op_vec2_f32(min(var_2.yx, _wgslsmith_f_op_vec2_f32(var_2.zx * var_2.xz)));
    var_1 = var_3.a.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_3.a.a, _wgslsmith_f_op_f32(357f * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, 1000f))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1053f)))))), u_input.c, u_input.d.x);
}

