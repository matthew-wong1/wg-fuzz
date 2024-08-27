struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> i32 {
    return _wgslsmith_mod_i32(max(_wgslsmith_div_i32(_wgslsmith_mod_i32(-26404i, -1i), -20890i), firstTrailingBit(-1290i)), ~(~(~1742i))) & 1i;
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_1(true, !select(false, true, false || all(vec2<bool>(true, false))));
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(trunc(417f));
    var_2 = _wgslsmith_f_op_f32(290f + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-253f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2228f - -368f), _wgslsmith_f_op_f32(sign(600f)))))));
    var_0 = Struct_1(true, var_0.a);
    return vec4<u32>(4294967295u, ~(~(~0u)), u_input.b.x, ~max(u_input.b.x, u_input.b.x ^ 4294967295u)) >> (vec4<u32>(68779u, 4294967295u << (_wgslsmith_sub_u32(1u, min(u_input.a, 4294967295u)) % 32u), u_input.a, 1u) % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = func_2() > ~(-(0i << (~u_input.b.x % 32u)));
    var_0 = all(!vec3<bool>(arg_0.a.a, any(vec2<bool>(arg_0.a.b, true)), !arg_2.b));
    var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.a, 15560u, 1u, u_input.b.x), vec4<u32>(arg_0.b.x, 17861u, arg_0.b.x, arg_0.b.x)), ~vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 1u)) | func_3(), ~_wgslsmith_mod_vec4_u32(vec4<u32>(56003u, 4294967295u, 4294967295u, 4294967295u) ^ vec4<u32>(arg_0.b.x, u_input.a, 37768u, u_input.a), vec4<u32>(18820u, 48112u, arg_0.b.x, 4294967295u) << (vec4<u32>(1u, arg_0.b.x, 0u, 0u) % vec4<u32>(32u)))) != arg_0.b.x;
    let var_1 = max(countOneBits(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0.b.yz, countOneBits(vec2<u32>(arg_0.b.x, 1u))), firstLeadingBit(20238u), 0u, 0u)), select(~(~(~vec4<u32>(65023u, 17090u, u_input.a, u_input.b.x))), ~vec4<u32>(u_input.b.x, u_input.a, arg_0.b.x, 31923u) >> (vec4<u32>(~u_input.b.x, u_input.a, u_input.b.x, 1u) % vec4<u32>(32u)), !select(vec4<bool>(arg_2.b, arg_0.a.a, arg_2.a, false), !vec4<bool>(arg_2.a, false, arg_2.a, arg_0.a.a), select(vec4<bool>(arg_2.b, arg_0.a.b, false, false), vec4<bool>(true, arg_0.a.a, true, arg_2.a), arg_0.a.a))));
    var var_2 = arg_0.b;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(235f, 1640f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-705f, _wgslsmith_f_op_f32(-arg_1)) - vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 * -1000f)))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 744f, arg_2.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 1319f, arg_2.x)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1301f, -1000f, -148f), vec3<f32>(arg_2.x, arg_2.x, -830f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, 1632f) * vec3<f32>(arg_2.x, 1931f, 206f))))) * vec3<f32>(arg_2.x, arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -184f))));
    var var_1 = Struct_3(arg_3, max(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 8633u, u_input.a), vec3<u32>(u_input.b.x, 5835u, 34115u))), countOneBits(u_input.b)));
    var var_2 = select(!(!select(!vec2<bool>(arg_3.a, arg_3.a), vec2<bool>(true, true), !var_1.a.b)), vec2<bool>(!any(!vec4<bool>(arg_3.a, arg_1, true, false)), true), !select(!vec2<bool>(arg_1, arg_1), select(vec2<bool>(true, false), !vec2<bool>(arg_3.a, true), select(vec2<bool>(arg_1, true), vec2<bool>(true, var_1.a.a), true)), vec2<bool>(arg_3.a, !arg_3.b)));
    let var_3 = select(!select(!select(vec3<bool>(arg_1, true, true), vec3<bool>(arg_1, var_1.a.b, false), arg_3.a), select(!vec3<bool>(true, arg_1, arg_1), select(vec3<bool>(var_2.x, arg_1, false), vec3<bool>(arg_1, var_1.a.b, arg_1), true), true), !select(vec3<bool>(true, arg_1, var_2.x), vec3<bool>(true, false, arg_3.b), true)), vec3<bool>(all(vec3<bool>(var_2.x, !var_2.x, var_2.x)), all(vec4<bool>(var_1.a.b, true, select(false, true, var_2.x), var_2.x)), all(vec2<bool>(true, any(vec3<bool>(true, var_2.x, false))))), true);
    var var_4 = _wgslsmith_div_i32((-max(11459i, -2147483647i) | _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, -2147483647i, 31631i), countOneBits(vec4<i32>(2147483647i, 2147483647i, 0i, 18751i)))) << (~_wgslsmith_sub_u32(~0u, max(4294967295u, 0u)) % 32u), abs(_wgslsmith_clamp_i32(firstLeadingBit(i32(-1i) * -7834i), 1i, ~(-34862i))));
    return select(~(-2147483647i << (~var_1.b.x % 32u)), firstLeadingBit(abs(-1i << (0u % 32u))), true) & 4149i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_4(44348u, all(vec2<bool>(true, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1261f, 525f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_3(Struct_1(false, false), vec3<u32>(46284u, u_input.b.x, u_input.b.x)), -252f, Struct_1(true, true))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(768f, 374f)))), Struct_1(any(vec3<bool>(true, true, true)), true));
    var var_1 = 38294i;
    let var_2 = _wgslsmith_div_vec2_u32(func_3().wz, ~(vec2<u32>(max(u_input.b.x, 4294967295u), u_input.a) << ((u_input.b.yz >> (vec2<u32>(49649u, 78384u) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var_0 = ~min(_wgslsmith_mult_i32(-4283i, ~_wgslsmith_add_i32(0i, -26882i)), ~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(1i, -2147483647i))));
    let var_3 = Struct_3(Struct_1(true, true), min(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), u_input.b, u_input.b)), ~(~u_input.b)));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(617f, 875f, -752f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-213f, -1703f, 613f), vec3<f32>(268f, 1000f, -229f), vec3<bool>(var_3.a.a, false, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(558f, -1295f, -694f) + vec3<f32>(-298f, -1714f, -467f))), false)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 485f, 635f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1805f, 1650f, -1003f), vec3<f32>(-1844f, 426f, -684f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(751f, 1293f, 247f) * vec3<f32>(1937f, 1165f, -116f))) * vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-800f, 2242f, 192f), vec3<f32>(-130f, -454f, 689f))))));
    let var_5 = !var_3.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(1i, 1i, 1i), ~(vec4<i32>(firstTrailingBit(1i), 22958i, ~(-41976i), -44974i) >> (abs(vec4<u32>(var_3.b.x, 23951u, 73068u, 22700u) >> (vec4<u32>(var_2.x, 66672u, 31007u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))), select(2147483647i, -15995i, true));
}

