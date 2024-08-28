struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(all(vec3<bool>(true, true, true)) && (countOneBits(12186i) < _wgslsmith_mult_i32(u_input.c.x, u_input.c.x)), ~u_input.d.x, vec4<bool>(u_input.c.x < 1i, !all(vec4<bool>(true, false, true, false)), !any(vec4<bool>(true, false, false, true)), true), ~_wgslsmith_mult_i32(~u_input.c.x, -1i)), 10299u);
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-304f, -663f, 1586f, 1321f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(385f - -1112f), 894f, _wgslsmith_f_op_f32(f32(-1f) * -731f), -1931f)), var_0.a.c))));
    var_0 = Struct_2(Struct_1(var_0.a.a, _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(select(1u, 48749u, var_0.a.a), var_0.a.b)), select(!select(vec4<bool>(true, var_0.a.c.x, var_0.a.a, true), var_0.a.c, var_0.a.c), !vec4<bool>(var_0.a.a, false, var_0.a.c.x, var_0.a.a), var_0.a.c.x), var_0.a.d), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(u_input.d) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.b, u_input.b.x, var_0.a.b), u_input.d, u_input.d), u_input.d), vec3<u32>(_wgslsmith_sub_u32(u_input.b.x << (var_0.a.b % 32u), _wgslsmith_clamp_u32(18390u, 52354u, 5864u)), _wgslsmith_dot_vec2_u32(u_input.d.yy, min(u_input.d.xy, u_input.d.yz)), ~(~var_0.b))));
    var_0 = Struct_2(Struct_1(var_0.a.a | !any(var_0.a.c.zxz), var_0.b, !select(!vec4<bool>(false, false, false, var_0.a.a), vec4<bool>(false, var_0.a.a, false, true), var_0.a.c.x), select(-1i >> (min(41533u, u_input.b.x) % 32u), 2147483647i, true)), ~(~(~89877u)));
    var var_2 = any(vec3<bool>(var_0.a.a, !(!select(false, var_0.a.a, var_0.a.a)), all(!vec2<bool>(var_0.a.c.x, false))));
    return var_0.a.c.xw;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = 4294967295u;
    var var_1 = all(!vec4<bool>(true, all(func_3()), true, !(var_0 > 4294967295u)));
    var_1 = all(select(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), vec2<bool>(true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), true))), vec2<bool>(true, any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true))))));
    var var_2 = vec2<f32>(-339f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1559f + -493f)))));
    var var_3 = _wgslsmith_div_u32(max(var_0 << (1u % 32u), select(_wgslsmith_sub_u32(var_0, 21936u), u_input.a >> (0u % 32u), true)) >> (u_input.d.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(u_input.b.x), 0u, ~_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, 21547u, u_input.d.x))), ~firstLeadingBit(vec3<u32>(var_0, 694u, 1u))));
    return Struct_1(false, 40704u, !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false))), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), true), false)), _wgslsmith_dot_vec4_i32(~((vec4<i32>(-2147483647i, u_input.e, -8783i, arg_0) | vec4<i32>(arg_0, 2147483647i, -10390i, -43126i)) >> (abs(vec4<u32>(var_0, 0u, 4294967295u, u_input.b.x)) % vec4<u32>(32u))), vec4<i32>(6759i & (arg_0 ^ arg_0), ~1i, arg_0, firstTrailingBit(arg_0 ^ 38052i))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> i32 {
    var var_0 = reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(abs(u_input.e & arg_0.a.d), -7542i, arg_0.a.d), -vec3<i32>(select(u_input.e, -20971i, arg_0.a.c.x), u_input.e, ~(-1i))));
    let var_1 = firstLeadingBit(firstLeadingBit(vec2<u32>(~countOneBits(arg_0.b), firstLeadingBit(26866u))));
    let var_2 = _wgslsmith_dot_vec2_i32(-(~_wgslsmith_mod_vec2_i32(var_0.yx, var_0.xz) << (var_1 % vec2<u32>(32u))), vec2<i32>(abs(_wgslsmith_mod_i32(u_input.e, -36338i)), func_2(firstLeadingBit(~(-2147483647i))).d));
    return -14299i;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: vec4<i32>) -> f32 {
    let var_0 = false;
    var var_1 = func_4(Struct_2(func_2(_wgslsmith_mult_i32(arg_1, i32(-1i) * -22542i)), 4294967295u), countOneBits(u_input.d.yz));
    var var_2 = Struct_2(arg_0, _wgslsmith_mod_u32(arg_0.b, min(firstTrailingBit(u_input.d.x), arg_0.b)) | arg_0.b);
    let var_3 = func_2(var_2.a.d).a;
    return _wgslsmith_f_op_f32(-1053f - _wgslsmith_f_op_f32(select(698f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(636f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -523f)))), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_f32(step(-128f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_1(true, u_input.b.x, vec4<bool>(true, false, true, true), -2147483647i), firstTrailingBit(0i), vec3<bool>(true, true, true), ~vec4<i32>(u_input.e, u_input.e, 1i, u_input.c.x))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1648f, 599f), _wgslsmith_f_op_f32(f32(-1f) * -1893f)))))))));
    var_0 = ~_wgslsmith_add_u32(u_input.b.x | _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(2957u, u_input.b.x, 4294967295u), u_input.d), reverseBits(vec3<u32>(9680u, 21548u, u_input.a))), ~countOneBits(u_input.a) << (~68126u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

