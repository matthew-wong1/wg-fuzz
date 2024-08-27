struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: vec4<i32>) -> i32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -925f));
    var_0 = arg_1;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2403f * arg_1.a) - var_0.a) - var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2152f) + arg_1.a)));
    let var_2 = !select(vec3<bool>(true, true, any(vec2<bool>(true, true))), vec3<bool>(true, true, true), (var_0.a <= _wgslsmith_f_op_f32(-1000f - var_1.x)) || true);
    var_0 = arg_1;
    return arg_2.x;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_f32(-1000f, 1f), -12231i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-847f, 2088f, 934f)), _wgslsmith_f_op_f32(sign(1000f)), firstLeadingBit(firstTrailingBit(vec2<i32>(arg_0.x, -2147483647i) & vec2<i32>(1i, arg_0.x))));
    var_0 = Struct_1(1595f, -34483i, vec3<f32>(-358f, -215f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, -647f)))), var_0.c.x, abs(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_0.x, var_0.e.x, 2147483647i), vec4<i32>(var_0.b, u_input.a, arg_0.x, 21328i)), 1i << (u_input.b.x % 32u)) << (_wgslsmith_mult_vec2_u32(~u_input.d.wx, ~u_input.b) % vec2<u32>(32u))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-839f, 164f))), var_0.c.x)) - var_0.c.x), 1i, vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - var_0.c.x))), _wgslsmith_f_op_f32(select(1298f, -702f, (u_input.b.x ^ 0u) < (u_input.c & u_input.b.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.c.x, var_0.a), var_0.a)), var_0.e);
    let var_1 = -774f;
    var var_2 = Struct_1(-1503f, select(_wgslsmith_dot_vec2_i32(vec2<i32>(func_3(vec2<f32>(123f, var_0.d), Struct_5(-489f), vec4<i32>(-43927i, var_0.b, -45687i, arg_0.x)), abs(u_input.a)), countOneBits(~vec2<i32>(-1i, 1i))), u_input.e, !select(false, select(false, true, false), all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1, -902f, var_0.d)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(var_0.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -828f, 1374f) - vec3<f32>(805f, var_1, 811f))))) + _wgslsmith_div_vec3_f32(var_0.c, vec3<f32>(_wgslsmith_f_op_f32(trunc(-790f)), _wgslsmith_f_op_f32(step(var_1, var_1)), 1692f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-346f * var_0.c.x)), select(abs(vec2<i32>(arg_0.x, -var_0.b)), -var_0.e, true));
    return Struct_1(_wgslsmith_f_op_f32(select(var_2.c.x, _wgslsmith_f_op_f32(round(var_1)), true)), 0i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, 1206f)), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -795f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1, var_2.c.x)))))), arg_0.zy);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>) -> Struct_5 {
    let var_0 = firstLeadingBit(firstTrailingBit(~(vec3<u32>(35132u, 25401u, u_input.d.x) & u_input.d.zyw))) & abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.c, u_input.c) & vec3<u32>(4294967295u, 1u, u_input.b.x), _wgslsmith_add_vec3_u32(u_input.d.yxy, vec3<u32>(u_input.c, 4294967295u, 1u))));
    let var_1 = 771f;
    let var_2 = var_0;
    var var_3 = u_input.d.yyz;
    var var_4 = true;
    return Struct_5(var_1);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: bool) -> f32 {
    let var_0 = func_4(func_2(abs(select(vec3<i32>(u_input.e, 2147483647i, 95913i), -vec3<i32>(2147483647i, u_input.e, u_input.a), arg_1.x))), -27241i, vec3<bool>(any(vec3<bool>(true, false | arg_1.x, !arg_3)), !all(select(arg_1, vec2<bool>(arg_3, false), arg_3)), _wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(abs(arg_0.x))) < _wgslsmith_f_op_f32(abs(-1986f))));
    var var_1 = var_0;
    var var_2 = ~firstTrailingBit(~vec4<i32>(-21668i, u_input.a, -2147483647i, i32(-1i) * -5365i));
    var_2 = abs(reverseBits(firstLeadingBit(_wgslsmith_add_vec4_i32(~vec4<i32>(var_2.x, u_input.a, var_2.x, var_2.x), ~vec4<i32>(var_2.x, 1i, 1i, 2147483647i)))));
    var_2 = -_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(-2147483647i), 2147483647i, 1i, select(0i, var_2.x, arg_1.x)), -select(vec4<i32>(u_input.e, 1i, var_2.x, u_input.a), vec4<i32>(var_2.x, var_2.x, u_input.e, u_input.e), false)), max(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -2417i, u_input.a, -89603i), vec4<i32>(u_input.e, -37579i, 11468i, -14622i))), firstLeadingBit(vec4<i32>(u_input.e, u_input.e, u_input.e, 58486i) << (u_input.d % vec4<u32>(32u)))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_div_f32(756f, _wgslsmith_div_f32(945f, _wgslsmith_f_op_f32(1034f * arg_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(-330f < _wgslsmith_f_op_f32(func_1(vec4<f32>(-409f, 211f, 741f, 204f), vec2<bool>(true, true), Struct_5(-1394f), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-171f * -1064f), func_4(Struct_1(232f, u_input.a, vec3<f32>(-115f, 1405f, -432f), 395f, vec2<i32>(u_input.e, -36005i)), u_input.e, vec3<bool>(true, true, true)).a), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-856f, -1340f) - vec2<f32>(-1920f, 1378f))))))), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-659f, 445f))), Struct_5(_wgslsmith_f_op_f32(floor(-1159f))), vec4<i32>(-395i, u_input.e, 5139i, 0i) << (u_input.d % vec4<u32>(32u))) & u_input.e, countOneBits(firstTrailingBit(select(func_2(vec3<i32>(40096i, u_input.a, -1i)).e, min(vec2<i32>(u_input.a, -49368i), vec2<i32>(-13272i, u_input.e)), false))));
}

