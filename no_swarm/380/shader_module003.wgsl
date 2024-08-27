struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = -vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.c.wy, u_input.b.yz), _wgslsmith_mod_i32(min(u_input.b.x, u_input.b.x), abs(-19258i)));
    let var_1 = u_input.d;
    let var_2 = select(vec2<bool>(any(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)), false), vec2<bool>(true || all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true))), true), !select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), var_0.x != var_0.x)));
    var_0 = u_input.b.xz;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-130f * _wgslsmith_f_op_f32(step(-706f, -429f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -990f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1674f, -2266f)) * _wgslsmith_f_op_f32(select(-1334f, 784f, var_2.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(727f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(133f)), 922f))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1465f, _wgslsmith_f_op_f32(f32(-1f) * -462f), -236f) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1481f, -339f, 418f, -1819f) + vec4<f32>(746f, 125f, -514f, -1134f))))))));
    return ~(arg_0 | abs(4689u));
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0.a.c.wz;
    var_0 = arg_0.a.c.zw;
    var var_1 = Struct_1(arg_0.a.a, _wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(arg_0.a.b, -vec4<i32>(u_input.c.x, -1i, -2147483647i, -4785i)), u_input.c.x << (~u_input.d % 32u), i32(-1i) * -24233i)), vec4<u32>(_wgslsmith_div_u32(1796u, arg_0.a.c.x), ~u_input.a >> (~1u % 32u), 25951u, 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(~65510u, func_3(8556u), u_input.a, ~5554u), arg_0.a.c));
    var_0 = vec2<u32>(u_input.d, 4294967295u);
    var_1 = arg_0.a;
    return -1324f;
}

fn func_1() -> Struct_1 {
    var var_0 = ~u_input.b.x;
    var_0 = u_input.b.x;
    var var_1 = vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-375f))))), _wgslsmith_f_op_f32(-1668f - _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(-1376f, u_input.c, vec4<u32>(1u, 28086u, 1u, 19982u), 17185u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1596f, -398f)) * 1183f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-148f))))))));
    let var_2 = all(select(!vec2<bool>(all(vec2<bool>(false, false)), true), vec2<bool>(true, true), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), false))));
    let var_3 = ~u_input.b.wz;
    return Struct_1(-2599f, u_input.c, select(firstLeadingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(33745u, 4294967295u, u_input.d, 2672u)), select(vec4<u32>(0u, u_input.d, u_input.a, u_input.d), vec4<u32>(0u, 2851u, 0u, 64903u), true), vec4<u32>(u_input.a, 1u, 1u, 37903u) | vec4<u32>(u_input.a, 115245u, 1u, 1u))), ~vec4<u32>(~u_input.a, 5361u, max(1u, 1u), 1u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_1.x, -905f)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(select(var_1.x, var_1.x, var_2)))), ~u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(any(vec3<bool>(true, true, any(vec2<bool>(true, true)))), true && select(false, true, true));
    var var_1 = Struct_2(func_1());
    var_1 = Struct_2(var_1.a);
    var_1 = Struct_2(func_1());
    let var_2 = 2147483647i;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-171f * var_1.a.a), _wgslsmith_mult_vec4_i32(u_input.c, var_1.a.b), var_1.a.c, ~(_wgslsmith_dot_vec2_u32(var_1.a.c.yx, vec2<u32>(var_1.a.c.x, u_input.d)) >> (_wgslsmith_dot_vec3_u32(var_1.a.c.yzw, vec3<u32>(31812u, u_input.d, var_1.a.d)) % 32u))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(526f, 2058f)))), vec2<f32>(1000f, 552f)))));
    var_3 = Struct_2(func_1());
    var_1 = Struct_2(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(abs(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x))), abs(var_1.a.c.zwz >> (_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(var_1.a.c.yxy, var_3.a.c.xww), var_3.a.c.zxw ^ vec3<u32>(var_3.a.c.x, 91415u, u_input.d)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_4.x, -847f, var_4.x), vec3<f32>(var_3.a.a, var_4.x, var_1.a.a))))))), ~10694i);
}

