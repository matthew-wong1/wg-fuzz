struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<bool> {
    let var_0 = vec3<u32>(firstLeadingBit(~(~(u_input.a.x | u_input.a.x))), firstLeadingBit(_wgslsmith_mod_u32(7475u, u_input.b.x)), 16912u);
    let var_1 = vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(var_0.xy, var_0.xz), var_0.x);
    let var_2 = Struct_5(_wgslsmith_sub_vec4_i32(vec4<i32>(45083i, _wgslsmith_mod_i32(-1i, -25067i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -19872i, 8168i), vec3<i32>(-19992i, -18403i, -23041i)), ~(-1i)), vec4<i32>(max(-1i, 0i), firstLeadingBit(9887i), select(0i, -1i, true), -2147483647i)) | vec4<i32>(select(15407i, 2147483647i << (var_0.x % 32u), true), abs(-2147483647i), ~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), max(vec4<i32>(54223i, -19818i, -16981i, 2147483647i), vec4<i32>(37341i, 2147483647i, 1i, 8703i)))), _wgslsmith_mult_u32(75098u, ~var_1.x), Struct_4(firstLeadingBit(~_wgslsmith_sub_u32(4294967295u, 66470u)), Struct_2(1i, abs(var_0), Struct_1(vec2<bool>(true, true), true, _wgslsmith_mod_vec3_i32(vec3<i32>(1i, -29617i, -2147483647i), vec3<i32>(1311i, 1i, -10782i)), _wgslsmith_dot_vec2_u32(var_1.zy, var_0.zx))), -1i));
    var var_3 = var_2.c.b;
    var_3 = var_2.c.b;
    return vec4<bool>(!(!(_wgslsmith_add_u32(var_3.c.d, var_2.c.a) <= firstTrailingBit(var_0.x))), var_3.c.a.x, 1f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1065f * _wgslsmith_div_f32(-1227f, 308f)))), all(!select(!vec4<bool>(false, true, false, var_2.c.b.c.a.x), select(vec4<bool>(var_2.c.b.c.a.x, false, var_3.c.a.x, false), vec4<bool>(true, var_2.c.b.c.a.x, false, var_3.c.b), true), all(vec2<bool>(var_2.c.b.c.b, false)))));
}

fn func_2(arg_0: f32, arg_1: Struct_5, arg_2: vec3<i32>, arg_3: i32) -> bool {
    var var_0 = ~_wgslsmith_mult_i32(-arg_3, -(~_wgslsmith_add_i32(arg_1.c.b.a, arg_3)));
    let var_1 = Struct_3(func_3());
    var var_2 = arg_0;
    var_0 = ~(-49627i);
    var var_3 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-249f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1603f)))), arg_0, arg_0), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1062f, -146f)) + _wgslsmith_div_f32(1000f, -577f))), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), 1357f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1315f - 1000f) + 196f) - _wgslsmith_f_op_f32(step(arg_0, arg_0))))));
    return func_3().x;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: i32) -> Struct_4 {
    var var_0 = !vec4<bool>(true, true, select(true, arg_0, true), arg_0);
    var_0 = select(!(!(!vec4<bool>(false, false, false, var_0.x))), select(vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_2), vec2<i32>(arg_2, arg_2)) < arg_2, func_2(arg_1.x, Struct_5(vec4<i32>(arg_2, 12409i, 27043i, arg_2), 9896u, Struct_4(u_input.b.x, Struct_2(-1i, u_input.a.yzw, Struct_1(var_0.ww, var_0.x, vec3<i32>(arg_2, arg_2, arg_2), u_input.b.x)), -1i)), vec3<i32>(20537i, 9603i, 44128i), 0i) | !var_0.x, !(u_input.a.x < 35798u), true), !vec4<bool>(any(var_0.yz), true, false, var_0.x || arg_0), func_3()), vec4<bool>(_wgslsmith_mult_u32(~4294967295u, max(u_input.b.x, 1u)) >= (reverseBits(53176u) << (~4294967295u % 32u)), func_2(-852f, Struct_5(~vec4<i32>(0i, arg_2, 2147483647i, 2147483647i), u_input.b.x, Struct_4(u_input.a.x, Struct_2(arg_2, u_input.a.wzw, Struct_1(var_0.zx, var_0.x, vec3<i32>(1i, -4208i, arg_2), u_input.a.x)), arg_2)), ~(-vec3<i32>(10001i, 1i, arg_2)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_2, arg_2), ~vec3<i32>(24695i, -11842i, 0i))), func_3().x, !(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.a.x, 0u, u_input.b.x)) < ~63897u)));
    let var_1 = Struct_3(select(select(!func_3(), vec4<bool>(true, !var_0.x, any(vec3<bool>(true, true, var_0.x)), true), false), func_3(), arg_1.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -819f) * -313f)));
    let var_2 = reverseBits(-firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2, arg_2, -2147483647i, -2147483647i) << (vec4<u32>(16336u, 0u, u_input.a.x, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(arg_2, 1i, arg_2, arg_2))));
    let var_3 = vec4<u32>(_wgslsmith_mod_u32(~u_input.a.x, 1u), abs(u_input.b.x), 44088u & firstTrailingBit(25639u), u_input.b.x);
    return Struct_4(20424u, Struct_2(arg_2, select(~abs(var_3.yyz), ~(~vec3<u32>(0u, 4294967295u, 0u)), !(!var_0.zyx)), Struct_1(!func_3().wz, !all(vec3<bool>(true, true, true)), (var_2.xwz | var_2.xzw) ^ var_2.zwz, _wgslsmith_dot_vec2_u32(vec2<u32>(53446u, u_input.b.x), u_input.b.wy))), abs(_wgslsmith_add_i32(var_2.x, var_2.x >> (var_3.x % 32u))));
}

fn func_4(arg_0: Struct_4) -> Struct_5 {
    var var_0 = func_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-287f, 451f), vec2<f32>(-919f, -2959f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1066f, 968f))))), min(-24178i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-1i, 2689i, arg_0.b.c.c.x)), arg_0.b.c.c))).b;
    var_0 = Struct_2(var_0.c.c.x, select(func_1(true, vec2<f32>(_wgslsmith_f_op_f32(-599f * 269f), _wgslsmith_div_f32(1064f, -1734f)), arg_0.b.c.c.x).b.b, u_input.b.zwz, true), func_1(281i >= firstTrailingBit(var_0.a & 1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-177f, 404f), vec2<f32>(-125f, -905f)) * vec2<f32>(-373f, -917f)), abs(-2147483647i)).b.c);
    let var_1 = Struct_4(~countOneBits(_wgslsmith_div_u32(var_0.c.d & u_input.b.x, arg_0.b.c.d)), arg_0.b, ~2147483647i);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-129f, 318f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(925f, 1066f) - vec2<f32>(2462f, 523f)), _wgslsmith_div_vec2_f32(vec2<f32>(1145f, -919f), vec2<f32>(-809f, -1194f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-349f, 473f))))))));
    var var_3 = select(vec3<bool>(any(!select(vec2<bool>(false, var_0.c.b), arg_0.b.c.a, false)), false, var_1.b.c.b), func_3().zwz, any(!vec2<bool>(true, all(vec3<bool>(var_0.c.a.x, false, var_0.c.a.x)))));
    return Struct_5(select(vec4<i32>(countOneBits(~(-29772i)), 29824i, abs(firstLeadingBit(var_1.b.a)), min(var_0.a, var_0.c.c.x) ^ -36033i), -_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.b.c.c.x, -47708i, 2147483647i, arg_0.b.c.c.x) ^ vec4<i32>(var_0.a, var_1.c, 18065i, var_0.a), ~vec4<i32>(arg_0.c, 2147483647i, var_1.c, 0i)), all(vec4<bool>(!var_0.c.a.x, any(vec2<bool>(var_3.x, false)), true, var_3.x))), arg_0.b.c.d | func_1(any(select(vec3<bool>(var_0.c.a.x, arg_0.b.c.b, true), vec3<bool>(var_1.b.c.b, arg_0.b.c.a.x, false), true)), var_2, var_1.b.a).b.b.x, func_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2 - var_2), var_2)), -arg_0.b.a ^ (arg_0.c << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.b.x, var_0.c.d, var_1.b.c.d), u_input.b.yyw) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(all(vec4<bool>(true, true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-130f + -1215f)), _wgslsmith_div_f32(462f, -166f)), -22790i));
    var var_1 = var_0.c.b.c;
    var_0 = func_4(var_0.c);
    var var_2 = func_4(func_4(var_0.c).c);
    var var_3 = reverseBits(abs(71984u));
    let var_4 = ~_wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(50054u, u_input.b.x), ~func_1(true, vec2<f32>(866f, 804f), var_2.c.c).b.b.yx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-506f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1190f, 1000f, false)), 867f))))));
}

