struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = vec4<bool>(false, !(arg_0 | (arg_0 != (arg_1.d.x <= u_input.b.x))), arg_1.c & !(!arg_1.c), !arg_1.c);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a, arg_1.a))), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.d, -25593i, abs(-1i), -2147483647i), vec4<i32>(0i, 0i, _wgslsmith_mod_i32(-1i, ~(-19166i)), arg_1.b.x)), true, _wgslsmith_clamp_vec4_u32(select(~vec4<u32>(arg_1.d.x, 0u, u_input.b.x, arg_1.d.x), ~(~arg_1.d), vec4<bool>(all(var_0.yzz), 1i > arg_1.b.x, any(vec4<bool>(true, true, false, false)), u_input.b.x <= 1u)), _wgslsmith_sub_vec4_u32(arg_1.d, _wgslsmith_mod_vec4_u32(arg_1.d, arg_1.d)) >> ((~vec4<u32>(arg_1.d.x, 4294967295u, u_input.c, 1u) & (vec4<u32>(1u, arg_1.d.x, u_input.c, 15814u) >> (vec4<u32>(u_input.c, u_input.b.x, 34806u, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u)), arg_1.d));
    var var_2 = arg_1;
    var var_3 = -1000f;
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1092f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1945f * arg_1.a), 669f, var_2.c))) - arg_1.a);
}

fn func_2() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1365f)), _wgslsmith_f_op_f32(func_3(false, Struct_1(1756f, vec4<i32>(u_input.d, u_input.a, 1i, u_input.d), false, vec4<u32>(31556u, 0u, 47219u, u_input.b.x)))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)))), min(vec4<i32>(u_input.a ^ 2147483647i, -27341i, -u_input.d, u_input.a), vec4<i32>(-1i) * -vec4<i32>(u_input.d, -71494i, u_input.a, -54088i)) | min(vec4<i32>(firstTrailingBit(u_input.d), u_input.d, 1i, select(14455i, -1i, true)), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.a, -2147483647i), vec4<i32>(-1i, -28899i, -1i, 752i)))), all(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, true), vec2<bool>(false, false))), abs(vec4<u32>(u_input.c, ~u_input.c, u_input.c ^ 1u, 1u)) >> (countOneBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c, u_input.c, 16629u, u_input.b.x), vec4<u32>(u_input.b.x, 4081u, 30568u, 18448u), ~vec4<u32>(u_input.c, 0u, u_input.c, u_input.b.x))) % vec4<u32>(32u)));
    let var_1 = reverseBits(~(-(vec4<i32>(u_input.d, -1i, var_0.b.x, -1i) | var_0.b) ^ countOneBits(-vec4<i32>(0i, 134i, var_0.b.x, -2147483647i))));
    var var_2 = Struct_1(724f, abs(var_1), any(!select(select(vec2<bool>(var_0.c, true), vec2<bool>(var_0.c, var_0.c), var_0.c), select(vec2<bool>(false, var_0.c), vec2<bool>(false, false), true), !vec2<bool>(var_0.c, false))), ~_wgslsmith_sub_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.c, 3681u, var_0.d.x, 40022u)), var_0.d));
    var var_3 = _wgslsmith_dot_vec2_i32(select(var_1.yw, var_0.b.zz ^ ~select(vec2<i32>(var_2.b.x, var_0.b.x), var_0.b.wz, vec2<bool>(true, true)), select(vec2<bool>(false || var_2.c, all(vec2<bool>(var_2.c, var_0.c))), vec2<bool>(any(vec3<bool>(var_0.c, var_2.c, true)), var_0.c), false)), firstLeadingBit(var_2.b.xx));
    var var_4 = _wgslsmith_f_op_f32(-var_2.a);
    return var_2.b.x;
}

fn func_1() -> Struct_1 {
    let var_0 = 243f;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(max(-482f, _wgslsmith_f_op_f32(-1400f * _wgslsmith_f_op_f32(f32(-1f) * -265f)))), vec4<i32>(~u_input.d, func_2(), 1i, -2147483647i), (max(6527u, u_input.c) != ~u_input.b.x) && (true & !select(true, false, false)), vec4<u32>(u_input.c, u_input.c, ~(~min(u_input.b.x, 4294967295u)), ~(~u_input.c)));
    let var_2 = u_input.b.x;
    let var_3 = _wgslsmith_mult_vec3_u32((~firstTrailingBit(vec3<u32>(var_1.d.x, 1u, var_2)) << (var_1.d.xxx % vec3<u32>(32u))) ^ ((~var_1.d.zwz | ~var_1.d.yzx) << (var_1.d.wzz % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_u32(min(_wgslsmith_clamp_vec3_u32(var_1.d.xxw, vec3<u32>(0u, u_input.b.x, 1u), vec3<u32>(var_1.d.x, var_1.d.x, 4294967295u)), ~vec3<u32>(var_1.d.x, 1442u, u_input.b.x)), ~(vec3<u32>(10122u, var_1.d.x, 40206u) & vec3<u32>(u_input.c, 4294967295u, 5415u))));
    var var_4 = _wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(~(vec4<u32>(var_2, 24344u, var_2, 83166u) << (var_1.d % vec4<u32>(32u))), ~var_1.d, var_1.d)), firstTrailingBit(var_1.d));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    var_0 = Struct_1(var_0.a, var_0.b, !var_0.c, var_0.d ^ var_0.d);
    var var_1 = func_1();
    var_1 = Struct_1(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-var_0.a)), ~_wgslsmith_add_vec4_i32(-var_0.b, abs(_wgslsmith_mod_vec4_i32(vec4<i32>(34125i, var_0.b.x, 48065i, u_input.a), vec4<i32>(-2147483647i, -1i, 0i, 0i)))), true, _wgslsmith_sub_vec4_u32(vec4<u32>(~var_0.d.x, ~1u, u_input.c, var_1.d.x), ~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zy, var_1.d.wx), u_input.c, _wgslsmith_sub_u32(50121u, var_0.d.x), select(var_1.d.x, u_input.c, var_0.c))));
    var var_2 = ~(_wgslsmith_sub_i32(44870i, var_1.b.x) ^ var_0.b.x);
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -153f)), ~vec4<i32>(abs(-48339i), -4232i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, var_0.b.x, var_0.b.x, 11581i), vec4<i32>(-1i, -2147483647i, -22222i, -13740i)), abs(var_0.b.x)), true, ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, var_0.d.x, 1166u, u_input.b.x), vec4<u32>(var_1.d.x, var_0.d.x, var_0.d.x, u_input.c)) & countOneBits(vec4<u32>(~u_input.c, 1u, var_1.d.x >> (4294967295u % 32u), 4294967295u << (var_1.d.x % 32u))));
    var_2 = _wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(1764i, -1i, select(var_0.b.x, 0i, false), _wgslsmith_sub_i32(var_1.b.x, -22546i))), _wgslsmith_mult_vec4_i32(countOneBits(-vec4<i32>(u_input.d, var_1.b.x, u_input.a, var_0.b.x) ^ var_1.b), var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-564f, -569f, 897f, 633f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(167f, -1517f, var_1.a, var_1.a)), !var_0.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1555f, var_0.a, -1069f, var_0.a) + vec4<f32>(622f, var_1.a, 1967f, -2294f)))), _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, -473f, 157f, -1000f) * vec4<f32>(-1105f, var_0.a, 803f, var_0.a))))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a, 751f, var_0.a), vec3<f32>(var_1.a, 239f, 639f))), vec3<f32>(var_1.a, -1301f, var_1.a)))), vec3<f32>(var_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-888f, 1000f), -1266f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-812f)))))), var_0.b.ywz, ~(~(~1u >> (var_1.d.x % 32u))), -1i);
}

