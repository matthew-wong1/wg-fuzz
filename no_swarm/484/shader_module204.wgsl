struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec3<bool>) -> vec4<bool> {
    let var_0 = Struct_1(~(~firstTrailingBit(vec2<u32>(u_input.a, 17797u)) | vec2<u32>(abs(0u), ~60027u)), arg_1.x, _wgslsmith_f_op_f32(arg_1.x * arg_0.x));
    var var_1 = Struct_4(Struct_3(Struct_2(50658u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.zzz), _wgslsmith_f_op_vec3_f32(arg_0.wxx + vec3<f32>(var_0.b, arg_1.x, -783f))), true)), arg_2, var_0);
    var_1 = Struct_4(Struct_3(Struct_2(var_0.a.x, vec3<f32>(_wgslsmith_f_op_f32(sign(1605f)), _wgslsmith_f_op_f32(arg_0.x * -183f), _wgslsmith_div_f32(arg_1.x, var_1.a.a.b.x)), all(!vec2<bool>(true, var_1.b.x)))), !arg_2, Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.x, var_1.c.a.x), ~(vec2<u32>(u_input.a, 1512u) << (var_1.c.a % vec2<u32>(32u)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b, arg_0.x))))), var_1.a.a.b.x));
    var var_2 = var_1.c.a.x;
    let var_3 = vec3<bool>(false, false, all(!select(select(var_1.b.yy, vec2<bool>(true, arg_2.x), vec2<bool>(true, true)), vec2<bool>(true, true), arg_2.zx)));
    return select(vec4<bool>(true, var_1.a.a.c, var_3.x, true), select(select(vec4<bool>(true, select(var_3.x, var_1.a.a.c, arg_2.x), var_1.a.a.c, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(var_1.a.a.c, arg_2.x, var_1.b.x, false), var_3.x), vec4<bool>(arg_2.x, arg_2.x, true, false), select(vec4<bool>(arg_2.x, false, var_3.x, true), vec4<bool>(var_1.a.a.c, false, false, arg_2.x), true)), vec4<bool>(all(vec2<bool>(var_1.b.x, var_1.b.x)), arg_2.x, true, false)), vec4<bool>(var_3.x, true | all(vec3<bool>(var_3.x, var_1.a.a.c, var_3.x)), all(vec2<bool>(false, var_3.x)), false), all(!(!vec4<bool>(var_3.x, var_3.x, var_3.x, var_1.b.x)))), vec4<bool>(!(false && var_1.a.a.c), !(!var_3.x), true, any(select(vec4<bool>(true, false, arg_2.x, var_3.x), !vec4<bool>(true, true, false, var_3.x), !vec4<bool>(true, arg_2.x, var_3.x, arg_2.x)))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: i32) -> Struct_3 {
    var var_0 = _wgslsmith_mod_vec4_i32(-vec4<i32>(_wgslsmith_mod_i32(u_input.b.x & arg_2, -2147483647i), 2147483647i, u_input.b.x, arg_0 >> (0u % 32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, select(1i, -21367i, all(vec3<bool>(true, true, true))), arg_2, firstTrailingBit(u_input.b.x)), abs(-(~vec4<i32>(-2147483647i, u_input.b.x, 411i, u_input.b.x)))));
    var_0 = min(abs(-_wgslsmith_sub_vec4_i32(vec4<i32>(-35810i, var_0.x, arg_2, 2147483647i), -vec4<i32>(50704i, -31112i, -2147483647i, -42263i))), -(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -15025i), vec4<i32>(1i, 35438i, -27482i, 1021i) << (vec4<u32>(arg_1, 70880u, 4294967295u, u_input.a) % vec4<u32>(32u)))));
    var var_1 = !vec2<bool>(false, !any(func_3(vec4<f32>(-1000f, -731f, 2128f, 1114f), vec2<f32>(-850f, -865f), vec3<bool>(true, false, false))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2002f)))))));
    let var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-_wgslsmith_mod_vec2_i32(abs(var_0.ww), vec2<i32>(-30285i, -2147483647i)), var_0.yz), _wgslsmith_clamp_vec2_i32(vec2<i32>(-arg_2, -2147483647i), u_input.b << (vec2<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 37752u), vec2<u32>(u_input.a, 0u))) % vec2<u32>(32u)), u_input.b | u_input.b));
    return Struct_3(Struct_2(firstTrailingBit(4294967295u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, var_2, var_2), vec3<f32>(-462f, var_2, 233f))), vec3<f32>(var_2, 411f, var_2))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1146f, 345f, var_2), vec3<f32>(896f, var_2, var_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, 783f)))), any(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)))));
}

fn func_1(arg_0: vec3<u32>) -> bool {
    let var_0 = ~min(firstLeadingBit(min(~vec2<u32>(71681u, u_input.a), arg_0.yz)), arg_0.yx);
    let var_1 = func_2(firstLeadingBit(6802i), 0u, ~(max(~(-4827i), 1i) >> (u_input.a % 32u)));
    let var_2 = var_1.a;
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_4) -> vec4<u32> {
    var var_0 = true;
    var var_1 = 2147483647i;
    let var_2 = arg_3.c.b;
    let var_3 = u_input.a;
    let var_4 = Struct_1(vec2<u32>(~((arg_3.c.a.x & var_3) & 0u), reverseBits(_wgslsmith_mod_u32(countOneBits(1u), _wgslsmith_dot_vec2_u32(arg_3.c.a, vec2<u32>(var_3, arg_3.a.a.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -101f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-545f, -1247f))))), _wgslsmith_f_op_f32(max(-710f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.b.x))))));
    return vec4<u32>(var_4.a.x & ~69337u, firstTrailingBit(_wgslsmith_mod_u32(~u_input.a, abs(var_4.a.x)) & (1u << (var_3 % 32u))), ~var_3, var_4.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~(~vec4<u32>(select(u_input.a, 27648u, false), _wgslsmith_clamp_u32(61761u, u_input.a, u_input.a), _wgslsmith_mult_u32(u_input.a, u_input.a), _wgslsmith_div_u32(74841u, 1u))));
    var_0 = countOneBits(~vec4<u32>(_wgslsmith_add_u32(0u, var_0.x), ~11380u, 36759u, ~0u)) | func_4(select(vec2<bool>(all(vec3<bool>(false, true, false)), func_1(var_0.wxz)), func_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(411f, 488f, 385f, 137f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-541f, -272f))), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true)).yw, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), func_2(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i, u_input.b.x), u_input.b.x, -u_input.b.x), _wgslsmith_add_u32(~3790u, func_2(30358i, 55679u, u_input.b.x).a.a), -select(u_input.b.x, 1i, false)).a, vec2<bool>(true, true), Struct_4(func_2(reverseBits(1i), u_input.a, -39788i), vec3<bool>(true, true, true), Struct_1(vec2<u32>(78582u, u_input.a), -767f, _wgslsmith_f_op_f32(f32(-1f) * -229f))));
    var var_1 = ~(_wgslsmith_add_i32(u_input.b.x, (u_input.b.x | u_input.b.x) << (abs(u_input.a) % 32u)) ^ (0i >> (var_0.x % 32u)));
    let var_2 = false;
    var var_3 = Struct_4(Struct_3(func_2(6810i, ~(~var_0.x), ~max(-39402i, u_input.b.x)).a), select(vec3<bool>(true, var_2, var_2), !select(select(vec3<bool>(var_2, true, var_2), vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, var_2, var_2)), vec3<bool>(var_2, var_2, true), !vec3<bool>(var_2, var_2, var_2)), func_3(vec4<f32>(1f, 1f, 1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1609f), _wgslsmith_f_op_f32(round(1271f))), vec3<bool>(true, var_2 || true, any(vec3<bool>(var_2, false, var_2)))).wzw), Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~var_0.zy, reverseBits(var_0.wy)), abs(~var_0.wz)), -1215f, _wgslsmith_f_op_f32(-1f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_sub_i32(-20678i, ~1i), -(-49020i & u_input.b.x)), var_0.x, abs(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), ~vec3<i32>(u_input.b.x, 0i, -813i))), select(_wgslsmith_add_i32(~(~u_input.b.x), u_input.b.x), abs(-2147483647i), func_1(func_4(func_3(vec4<f32>(var_3.c.b, var_3.a.a.b.x, var_3.a.a.b.x, var_3.a.a.b.x), vec2<f32>(var_3.a.a.b.x, 1097f), var_3.b).zy, Struct_2(u_input.a, var_3.a.a.b, true), !var_3.b.yx, Struct_4(Struct_3(Struct_2(var_0.x, var_3.a.a.b, true)), var_3.b, Struct_1(var_0.xz, 555f, var_3.c.b))).zyw)));
}

