struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_2) -> u32 {
    let var_0 = 489f;
    let var_1 = ~_wgslsmith_mod_vec2_u32(max(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(27711u, arg_2.x)), max(vec2<u32>(u_input.a.x, arg_2.x), ~u_input.a.xw)), countOneBits(vec2<u32>(~4294967295u, 4294967295u)));
    var var_2 = false;
    var_2 = arg_0;
    var_2 = true;
    return countOneBits(0u);
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(func_3(!(u_input.b < 53720u), Struct_2(true, Struct_1(vec4<i32>(54493i, 4263i, 9302i, 3275i))), vec3<u32>(~4294967295u, 1u, 0u), Struct_2(all(vec2<bool>(true, true)), Struct_1(vec4<i32>(34634i, -65082i, 0i, 7850i)))), u_input.a.x), abs(~(85075u >> (0u % 32u))) ^ u_input.a.x);
    let var_1 = !(!vec2<bool>(!any(vec4<bool>(true, false, false, false)), 65799u >= _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1616f, -2381f, 670f, -355f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-610f, -825f, 1097f, -1451f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2434f, 410f, -884f, 1451f) - vec4<f32>(-923f, 944f, 1371f, -909f))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -747f), _wgslsmith_f_op_f32(max(888f, -1673f)), _wgslsmith_f_op_f32(f32(-1f) * -733f), -2095f), vec4<f32>(-1000f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -1288f), -467f))));
    var_0 = ~(~19334u);
    let var_3 = Struct_2(true, Struct_1(min(~vec4<i32>(1i, -29409i, -57131i, -2147483647i), ~firstLeadingBit(vec4<i32>(9750i, 1i, -2147483647i, 0i)))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.xyw) * vec3<f32>(-885f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_2.x)), -660f)), var_3.b, vec4<i32>(abs(1i), -85851i, -2147483647i, var_3.b.a.x), vec4<u32>(u_input.b, u_input.b >> (_wgslsmith_add_u32(u_input.a.x, 45386u) % 32u), ~(~100279u), 84172u) | u_input.a, var_3);
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    var var_0 = vec2<f32>(-1450f, arg_0.a.x);
    let var_1 = func_2();
    return Struct_2(any(vec2<bool>(arg_2.a == false, any(vec3<bool>(arg_2.a, arg_2.a, arg_1)))), func_2().b);
}

fn func_4(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = select(select(select(!select(vec3<bool>(true, false, arg_0.a), vec3<bool>(false, true, false), vec3<bool>(arg_0.a, false, true)), !vec3<bool>(arg_0.a, arg_0.a, arg_0.a), select(vec3<bool>(arg_0.a, false, true), !vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, false, false))), !(!(!vec3<bool>(false, false, arg_0.a))), !vec3<bool>(all(vec4<bool>(true, arg_0.a, false, arg_0.a)), true, select(arg_0.a, arg_0.a, arg_0.a))), !(!select(select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, true, false), vec3<bool>(false, arg_0.a, false)), vec3<bool>(false, arg_0.a, true), vec3<bool>(true, false, arg_0.a))), select(select(!select(vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(true, true, false), vec3<bool>(arg_0.a, true, arg_0.a)), select(vec3<bool>(arg_0.a, false, arg_0.a), !vec3<bool>(arg_0.a, true, false), true), true), vec3<bool>(arg_0.a, func_2().e.a, arg_0.a), arg_0.a || true));
    return ~arg_0.b.a.yx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mod_vec2_i32(-func_4(func_1(Struct_4(vec3<f32>(182f, 1000f, 1091f), vec4<u32>(u_input.b, 4294967295u, 33u, 24573u), 962f, vec3<i32>(-30523i, 36893i, 0i)), false, Struct_2(true, Struct_1(vec4<i32>(0i, 57868i, -1944i, -2447i))))), -vec2<i32>(_wgslsmith_clamp_i32(-7603i, -1i, 1i), -47159i));
    var var_1 = func_1(Struct_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-426f, 663f, -1127f) - vec3<f32>(-623f, -578f, -443f))))), vec4<u32>(u_input.a.x, 76407u, ~_wgslsmith_add_u32(u_input.b, u_input.b), u_input.b), -1000f, vec3<i32>(_wgslsmith_mult_i32(var_0.x, var_0.x), ~var_0.x, 56677i) << (~(~vec3<u32>(u_input.b, u_input.b, 4294967295u)) % vec3<u32>(32u))), func_1(Struct_4(vec3<f32>(2385f, _wgslsmith_f_op_f32(1234f + 531f), 581f), abs(vec4<u32>(6164u, u_input.b, 4294967295u, u_input.a.x)), 1299f, ~min(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(var_0.x, -2147483647i, var_0.x))), true, Struct_2(true, Struct_1(firstTrailingBit(vec4<i32>(35231i, var_0.x, var_0.x, -1i))))).a, Struct_2(true & any(vec2<bool>(true, true)), func_2().b)).b;
    let var_2 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(select(31968u, 4294967295u | u_input.b, -11834i < var_1.a.x) & reverseBits(u_input.b), u_input.a.x, ~u_input.a.x), _wgslsmith_sub_u32(min(u_input.b, ~1u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), u_input.a.yy))));
    var var_3 = vec4<bool>(func_1(Struct_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-545f, 319f, -1426f) + vec3<f32>(-303f, -457f, -2055f)))), _wgslsmith_clamp_vec4_u32(u_input.a, ~u_input.a, countOneBits(vec4<u32>(var_2, 41447u, 4294967295u, var_2))), -1905f, _wgslsmith_sub_vec3_i32(var_1.a.yyz, func_1(Struct_4(vec3<f32>(-717f, 731f, 314f), vec4<u32>(var_2, u_input.b, 32969u, u_input.a.x), 1000f, vec3<i32>(-2147483647i, -2147483647i, -12497i)), true, Struct_2(true, Struct_1(vec4<i32>(var_1.a.x, 28375i, var_1.a.x, 13842i)))).b.a.xxw)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -851f) + _wgslsmith_f_op_f32(round(416f))) <= _wgslsmith_f_op_f32(func_2().a.x + 228f), Struct_2(true, func_2().e.b)).a, (50543u == _wgslsmith_dot_vec3_u32(func_2().d.yzz, vec3<u32>(0u, 62378u, 4294967295u))) | !func_2().e.a, select(func_2().e.a, any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), (false && select(false, false, true)) != true), all(vec2<bool>(true, true)));
    let var_4 = select(~(u_input.a.xzw & _wgslsmith_mod_vec3_u32(u_input.a.zzw, ~u_input.a.xwz)), ~_wgslsmith_mult_vec3_u32(u_input.a.ywy, ~(u_input.a.yyw >> (vec3<u32>(u_input.b, var_2, var_2) % vec3<u32>(32u)))), 1645f > _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(506f, 522f)), -1097f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xx, ~1i, _wgslsmith_mod_i32(reverseBits(min(var_1.a.x, var_1.a.x) ^ _wgslsmith_sub_i32(var_0.x, 1i)), ~(-countOneBits(var_0.x))), vec4<i32>(-firstLeadingBit(var_0.x) >> (~4294967295u % 32u), _wgslsmith_mod_i32(func_2().b.a.x, var_0.x), var_1.a.x, _wgslsmith_clamp_i32(-1i, ~var_1.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-3707i, -14729i), var_1.a.zy)) | (abs(var_0.x) ^ -179i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -466f)))));
}

