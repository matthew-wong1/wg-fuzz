struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-485f, 1855f), vec2<f32>(-865f, -1468f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-516f, -1100f) - vec2<f32>(-803f, -599f)))), vec2<f32>(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(min(1310f, -130f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1874f)) - _wgslsmith_f_op_f32(sign(-194f)))), Struct_1(abs(vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(358f)))), -359f), false), 118083u, countOneBits(vec2<i32>(firstLeadingBit(-u_input.a.x), ~u_input.a.x)), Struct_1(abs(vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(floor(721f)), -682f));
    let var_1 = !vec2<bool>(true, var_0.a.d);
    var_0 = Struct_3(var_0.a, 0u, var_0.c, var_0.d);
    var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-552f, _wgslsmith_f_op_f32(457f - -816f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -709f), _wgslsmith_div_f32(-666f, var_0.d.b))), var_0.d, all(vec3<bool>(true, select(var_0.a.d, true, false), var_0.d.b < var_0.a.a.x))), var_0.b, var_0.c, Struct_1(~(firstLeadingBit(vec4<u32>(11149u, var_0.b, var_0.d.a.x, var_0.b)) ^ _wgslsmith_sub_vec4_u32(var_0.a.c.a, vec4<u32>(var_0.a.c.a.x, 33589u, 0u, var_0.d.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1165f - var_0.d.b)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.a.b, var_0.a.a)) * var_0.a.b));
    return var_0.a.a;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_2.yx - _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1248f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1579f, arg_2.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3())))), !all(vec2<bool>(true, true))));
    var var_1 = ~(~firstTrailingBit(arg_1 & vec2<i32>(-1i, 1i)) ^ arg_1);
    var var_2 = -u_input.a;
    let var_3 = Struct_3(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(max(387f, _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * 327f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_2.x * 480f), _wgslsmith_f_op_f32(-var_0.x))), Struct_1(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 89548u, 4294967295u), vec4<u32>(1u, 47634u, 4294967295u, 1u))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.x - 296f), _wgslsmith_f_op_f32(floor(var_0.x))))), false), _wgslsmith_mod_u32(_wgslsmith_mod_u32(firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(49205u, 0u), vec2<u32>(0u, 0u))) << (1u % 32u), 0u), _wgslsmith_sub_vec2_i32(var_2.zy, arg_1), Struct_1(vec4<u32>(1u, 1u, 1u, 1u), arg_2.x, -934f));
    var_1 = vec2<i32>(var_2.x, _wgslsmith_add_i32(18943i, firstLeadingBit(firstTrailingBit(-30004i)))) & var_2.zy;
    return reverseBits(abs(arg_0)) | _wgslsmith_div_i32(1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(~1177i, min(54533i, -6277i)), firstTrailingBit(0i)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec2<u32>) -> vec4<bool> {
    return vec4<bool>(arg_2.x, !(false & !(arg_2.x && arg_1.d)), false, -90665i <= reverseBits(_wgslsmith_clamp_i32(10885i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0.x, -1i), vec3<i32>(u_input.a.x, arg_0.x, u_input.b)), 4789i)));
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(-_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(22741i, u_input.a.x, -3406i, u_input.b)), vec4<i32>(func_2(u_input.a.x, vec2<i32>(60100i, -1i), vec3<f32>(-2504f, -949f, -153f)), _wgslsmith_add_i32(-47336i, u_input.a.x), ~u_input.b, abs(-13890i))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1280f) * _wgslsmith_f_op_f32(trunc(2583f))), 1f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1055f), _wgslsmith_f_op_f32(floor(-1000f))))), Struct_1(~firstTrailingBit(vec4<u32>(54491u, 1u, 1u, 24534u)), -1287f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true), !(!vec2<bool>(all(vec2<bool>(true, false)), true)), abs(vec2<u32>(1u, abs(11439u << (1u % 32u)))));
    var var_1 = u_input.a;
    let var_2 = ~(_wgslsmith_mod_vec3_i32(reverseBits(u_input.a | vec3<i32>(35i, 1i, 0i)), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zz, var_1.xy), func_2(u_input.b, u_input.a.xy, vec3<f32>(-488f, -2407f, -280f)), u_input.a.x)) << (firstTrailingBit(firstTrailingBit(~vec3<u32>(51769u, 0u, 1u))) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_mult_i32(-2147483647i, (i32(-1i) * -var_2.x) << (_wgslsmith_mult_u32(abs(firstLeadingBit(4294967295u)), ~80785u) % 32u));
    let var_4 = reverseBits(var_1.x);
    return Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(298f, 1090f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), Struct_1(vec4<u32>(~max(1u, 0u), _wgslsmith_mod_u32(~14568u, _wgslsmith_clamp_u32(1u, 0u, 4294967295u)), _wgslsmith_div_u32(~30369u, _wgslsmith_clamp_u32(18552u, 10667u, 34886u)), 53263u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1626f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1264f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -232f), false)), 1000f)), all(vec3<bool>(-1i <= ~var_2.x, all(select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(var_0.x, false, var_0.x, var_0.x), var_0.x)), !var_0.x | !var_0.x)));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = func_1().c;
    var var_1 = arg_1.wz;
    let var_2 = ~(-73016i);
    let var_3 = _wgslsmith_sub_u32(var_0.a.x, arg_0.c.a.x | select(~firstLeadingBit(arg_0.c.a.x), 42031u, true));
    var var_4 = Struct_5(Struct_4(_wgslsmith_f_op_f32(arg_0.a.x * 279f), arg_0.b));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0.b)) * vec2<f32>(-685f, 559f))) - arg_0.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.b, vec2<f32>(133f, -2241f)))) + var_4.a.b), func_1().c, !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-613f)), 711f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1350f))));
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: Struct_4) -> Struct_4 {
    let var_0 = arg_1;
    var var_1 = arg_0.a.d;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(484f - 727f), arg_0.a.a.x)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(func_1().a)), arg_2.b)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.a.a, arg_0.a.a) - arg_2.b)))));
    var_1 = 19424u != arg_0.a.c.a.x;
    let var_3 = arg_2.a;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(-1000f, _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1440f, -1562f) - vec2<f32>(-273f, 217f))))))));
    let var_1 = func_6(Struct_3(func_5(func_1(), vec4<bool>(true, true, true, true)), 4294967295u, ~u_input.a.xx, func_1().c), u_input.a.x, Struct_4(746f, func_1().a));
    var_0 = Struct_4(func_1().b.x, var_0.b);
    var_0 = var_1;
    var var_2 = ~vec4<i32>(-firstTrailingBit(u_input.a.x), reverseBits(-2147483647i ^ -u_input.a.x), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a.x), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(-5837i, 0i)))), 2147483647i);
    var var_3 = func_6(Struct_3(func_5(func_5(Struct_2(var_0.b, vec2<f32>(-1339f, var_0.a), Struct_1(vec4<u32>(1u, 52873u, 24873u, 1u), -1000f, var_0.a), false), func_4(vec4<i32>(u_input.b, u_input.b, u_input.a.x, u_input.a.x), Struct_2(var_1.b, vec2<f32>(var_0.a, var_1.a), Struct_1(vec4<u32>(1u, 35077u, 6125u, 31914u), var_0.a, var_1.b.x), true), vec2<bool>(true, false), vec2<u32>(27184u, 4294967295u))), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false))), ~firstLeadingBit(1u), ~_wgslsmith_mod_vec2_i32(~vec2<i32>(var_2.x, u_input.a.x), select(vec2<i32>(u_input.b, var_2.x), u_input.a.zz, vec2<bool>(true, true))), func_1().c), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(20456i, u_input.b, var_2.x), vec3<i32>(-57113i, var_2.x, -47417i)), u_input.a), _wgslsmith_div_vec3_i32(u_input.a, var_2.zyx)), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(218f, var_0.b.x))) - var_3.a)), vec3<u32>(0u, 0u, ~(~64164u)), func_5(func_5(func_5(Struct_2(var_1.b, vec2<f32>(-602f, 1000f), Struct_1(vec4<u32>(1359u, 4294967295u, 1u, 1u), -553f, var_0.a), true), vec4<bool>(true, true, true, true)), !func_4(vec4<i32>(u_input.b, -74111i, 1i, 0i), Struct_2(var_3.b, vec2<f32>(var_0.a, var_1.b.x), Struct_1(vec4<u32>(13480u, 48949u, 0u, 0u), 1227f, var_1.b.x), true), vec2<bool>(false, false), vec2<u32>(7841u, 4294967295u))), select(vec4<bool>(all(vec3<bool>(false, true, true)), true, any(vec2<bool>(false, true)), false), vec4<bool>(true, true, 8229i >= var_2.x, func_1().d), true)).c.a.yy);
}

