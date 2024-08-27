struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: vec2<f32>, arg_3: i32) -> f32 {
    var var_0 = !(!(!vec4<bool>(true, false, false, any(vec3<bool>(true, true, true)))));
    let var_1 = arg_0.d;
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(arg_0.a, arg_0.a))))))), _wgslsmith_div_u32(70517u, 4294967295u), abs(min(_wgslsmith_div_vec4_i32(vec4<i32>(1515i, 1i, -50014i, arg_0.d.b), vec4<i32>(0i, 1i, 2147483647i, arg_3)), select(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 25526i, arg_3, 0i)), -u_input.a, var_0.x))), var_1);
    var var_3 = -1396f;
    let var_4 = Struct_1(firstTrailingBit(select(~u_input.a.wz << (~vec2<u32>(u_input.b.x, arg_0.b) % vec2<u32>(32u)), arg_0.c.zw, !(!var_0.zw))), var_2.d.a.b, _wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_add_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(37182u, 21847u, 36816u), vec3<u32>(11366u, arg_1, var_2.d.a.b.x)), 1u), firstLeadingBit(_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(var_2.d.a.d.x, arg_1) | vec2<u32>(u_input.b.x, var_2.d.a.d.x)))));
    return -388f;
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(1118f));
    let var_1 = vec4<bool>(true, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-u_input.a.zx, reverseBits(u_input.a.zx)), firstLeadingBit(_wgslsmith_add_i32(u_input.a.x, arg_1.b))) != u_input.a.x, -37229i <= min(~1i, _wgslsmith_clamp_i32(6999i, -27326i, ~0i)), true);
    var var_2 = !vec4<bool>(!(var_1.x & any(var_1)), false, true, (true & any(var_1)) == ((var_1.x || var_1.x) | (arg_1.c.d.x < u_input.b.x)));
    let var_3 = Struct_2(Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 1i), u_input.a.ww << (vec2<u32>(29211u, 46963u) % vec2<u32>(32u))) & select(~arg_1.a.a, vec2<i32>(1i, u_input.a.x) >> (vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u)), vec2<bool>(false, var_2.x)), ~vec2<u32>(u_input.b.x, abs(arg_1.c.d.x)), arg_1.a.c, vec2<u32>(u_input.b.x, u_input.b.x)), ~u_input.a.x & _wgslsmith_mod_i32(~u_input.a.x, arg_1.c.a.x), Struct_1(-(~u_input.a.yy), abs(vec2<u32>(~arg_1.c.d.x, abs(1u))), -356f, vec2<u32>(countOneBits(u_input.b.x), ~4294967295u)), _wgslsmith_div_vec2_f32(arg_1.d, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(select(arg_1.c.c, arg_0, true))), vec2<f32>(arg_1.a.c, _wgslsmith_f_op_f32(trunc(192f))), !(!var_1.yz)))));
    var_2 = var_1;
    return _wgslsmith_clamp_i32(-(u_input.a.x << (1u % 32u)), arg_1.b, -44010i);
}

fn func_2() -> bool {
    var var_0 = abs(41687u);
    var var_1 = abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_div_i32(-1i, -1i), u_input.a.x), vec2<i32>(func_4(_wgslsmith_f_op_f32(func_3(Struct_3(vec3<f32>(-1369f, 1000f, 1298f), 1u, vec4<i32>(-4429i, -12071i, 84776i, 9019i), Struct_2(Struct_1(u_input.a.zx, u_input.b, -282f, u_input.b), 37228i, Struct_1(vec2<i32>(-8158i, u_input.a.x), u_input.b, 300f, u_input.b), vec2<f32>(-400f, -453f))), 4294967295u, vec2<f32>(-337f, 983f), u_input.a.x)), Struct_2(Struct_1(vec2<i32>(31267i, u_input.a.x), u_input.b, -380f, vec2<u32>(8942u, u_input.b.x)), 6909i, Struct_1(vec2<i32>(-2147483647i, u_input.a.x), u_input.b, -290f, u_input.b), vec2<f32>(-890f, -206f))), min(1i, reverseBits(-2147483647i)))));
    let var_2 = false;
    return true & select(var_2, any(!vec3<bool>(var_2, var_2, var_2)), all(vec4<bool>(var_2, false & var_2, any(vec4<bool>(var_2, false, true, var_2)), true)));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = all(vec2<bool>((func_2() || true) | true, !(!all(vec2<bool>(true, true)))));
    let var_1 = Struct_1(firstLeadingBit(arg_1.zy), ~vec2<u32>(u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(-arg_0), countOneBits(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(18676u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(6168u, u_input.b.x)), ~vec2<u32>(u_input.b.x, u_input.b.x)), vec2<u32>(~u_input.b.x, max(u_input.b.x, u_input.b.x)))));
    let var_2 = arg_0;
    var_0 = all(vec3<bool>(!all(vec2<bool>(true, true)), all(vec3<bool>(true, true, true)), true));
    var var_3 = var_1;
    return var_1;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.xxw), _wgslsmith_f_op_vec3_f32(vec3<f32>(-232f, arg_2.x, arg_2.x) - vec3<f32>(644f, arg_1.c.c, -1000f))))))), _wgslsmith_dot_vec3_u32(firstTrailingBit(~(vec3<u32>(4294967295u, arg_1.a.d.x, 48363u) | vec3<u32>(arg_0, arg_1.a.d.x, arg_3.a.b.x))), _wgslsmith_clamp_vec3_u32(vec3<u32>(26118u, 0u, 23895u), vec3<u32>(41532u, arg_1.c.b.x, u_input.b.x) << (select(vec3<u32>(arg_0, 1u, arg_3.a.d.x), vec3<u32>(arg_1.a.b.x, 0u, 0u), vec3<bool>(false, true, false)) % vec3<u32>(32u)), vec3<u32>(arg_0, _wgslsmith_mod_u32(arg_0, 4294967295u), 0u >> (arg_1.a.d.x % 32u)))), u_input.a, arg_3);
    var var_1 = _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(var_0, var_0.b, vec2<f32>(arg_2.x, arg_1.d.x), arg_1.a.a.x)), arg_1.d.x)), 275f));
    var_1 = _wgslsmith_f_op_f32(-663f - _wgslsmith_f_op_f32(arg_1.a.c + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_1.a.c)), arg_2.x))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(-1i, u_input.a.x)), -vec2<i32>(-1i, 38754i) >> (select(arg_1.a.d, vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, true)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x << (63821u % 32u), firstTrailingBit(arg_3.c.b.x)), arg_3.c.b), _wgslsmith_f_op_f32(-arg_1.c.c), firstLeadingBit(vec2<u32>(706u, 0u) ^ countOneBits(arg_3.c.d))), -25376i, arg_1.c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(arg_1.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_3.d, arg_1.d)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-386f, -918f)))))))));
    let var_3 = min(firstLeadingBit(~vec4<u32>(arg_1.c.d.x, 0u, 0u, 1u) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, var_2.c.d.x, var_0.d.c.d.x, u_input.b.x), vec4<u32>(55806u, 0u, 1u, 23784u)) % vec4<u32>(32u))), vec4<u32>(~(~arg_0), ~arg_1.a.b.x, 116203u, 37141u)) << (~(~(~abs(vec4<u32>(var_2.c.d.x, u_input.b.x, u_input.b.x, var_2.a.b.x)))) % vec4<u32>(32u));
    return Struct_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(arg_2.xzw)))) * vec3<f32>(_wgslsmith_f_op_f32(-arg_3.d.x), _wgslsmith_f_op_f32(step(613f, 586f)), _wgslsmith_f_op_f32(-var_2.d.x))))), u_input.b.x | 4294967295u, max(select(-reverseBits(vec4<i32>(0i, var_0.c.x, u_input.a.x, 32281i)), u_input.a, select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)), ~((u_input.a ^ u_input.a) | abs(vec4<i32>(arg_3.c.a.x, 58291i, arg_1.c.a.x, arg_3.a.a.x)))), Struct_2(Struct_1(vec2<i32>(min(1i, -1i), arg_3.a.a.x), vec2<u32>(var_0.d.a.b.x, select(86562u, 8569u, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1088f, arg_1.a.c, true))), arg_3.c.b), _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.d.b, func_4(151f, Struct_2(arg_3.c, arg_1.b, var_0.d.a, var_0.a.zy))), 17471i), func_1(_wgslsmith_f_op_f32(257f + _wgslsmith_f_op_f32(step(1378f, 269f))), -(~vec4<i32>(u_input.a.x, var_0.c.x, arg_3.b, -7586i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.a.xx))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(var_0.a.xx)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_1 = max(firstLeadingBit(u_input.b.x) ^ max(min(1u, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)), _wgslsmith_mult_u32(1u, min(1u, u_input.b.x))), _wgslsmith_dot_vec4_u32(abs(min(reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, 47257u, u_input.b.x)), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), ~abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 2716u))));
    var var_2 = true;
    let var_3 = func_5(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b.x, 19424u), 1u), Struct_2(func_1(-988f, abs(-vec4<i32>(u_input.a.x, 15611i, -25288i, u_input.a.x))), -2147483647i, func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(767f - -988f), _wgslsmith_div_f32(-1117f, 915f)), u_input.a ^ u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1093f, -1176f) + vec2<f32>(-118f, -237f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(416f, 1372f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(905f, -1366f, 468f, 2063f), vec4<f32>(-1203f, 342f, -891f, -1936f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-255f, 232f, 742f, -394f))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-428f, 2025f, 1309f, -779f) * vec4<f32>(1500f, -1934f, -668f, -792f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2724f, -261f, 1012f, -985f), vec4<f32>(-1197f, -629f, 1318f, 219f))))))), Struct_2(func_1(_wgslsmith_f_op_f32(trunc(-1321f)), ~(-u_input.a)), u_input.a.x, Struct_1(u_input.a.ww, ~vec2<u32>(var_1, 0u) << (firstLeadingBit(vec2<u32>(var_1, u_input.b.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(floor(-971f)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(12693u, var_1), u_input.b), func_1(2302f, vec4<i32>(2147483647i, 1i, 8022i, 2147483647i)).d)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-497f, -2008f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(206f, -944f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1449f, -456f))))));
    var var_4 = ~var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, _wgslsmith_f_op_f32(213f + -608f), ~firstTrailingBit(~var_3.d.a.a.x), -var_3.d.b, ~vec4<u32>(u_input.b.x, var_1, _wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, u_input.b.x), u_input.b.x), 35065u));
}

