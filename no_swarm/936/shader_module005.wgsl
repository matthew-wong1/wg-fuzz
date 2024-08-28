struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    var var_0 = vec2<bool>(global0.a, true);
    let var_1 = 76769i;
    var var_2 = ~vec3<i32>(abs(2546i), var_1, _wgslsmith_dot_vec3_i32(vec3<i32>(-25783i, -69437i, -26431i) | vec3<i32>(var_1, var_1, var_1), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1, -33098i, var_1), vec3<i32>(var_1, 11039i, 2147483647i)))) ^ vec3<i32>(firstLeadingBit(1i) & _wgslsmith_div_i32(36003i, min(var_1, -12042i)), -30013i, -1i);
    var_0 = vec2<bool>(global0.a, !global0.a);
    var var_3 = Struct_2(var_0.x);
    return ~vec4<i32>(17589i, ~var_1, -12579i, i32(-1i) * -(0i >> (u_input.a % 32u)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = vec4<i32>(_wgslsmith_clamp_i32(~1i, -1i, firstTrailingBit(-(-2108i >> (u_input.a % 32u)))), -(countOneBits(_wgslsmith_div_i32(312i, -1i)) ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 1i, -1i, -28356i), func_3())), ~abs(-2147483647i) | -_wgslsmith_dot_vec4_i32(func_3(), vec4<i32>(0i, 38052i, -2147483647i, 0i)), ~abs(1i));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1055f)) - _wgslsmith_f_op_f32(max(-1611f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(589f))))) - 1f);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-404f, _wgslsmith_f_op_f32(f32(-1f) * -1040f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(808f * -2159f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-216f, 1058f)))))));
    var_1 = var_2.x;
    var_0 = _wgslsmith_mod_vec4_i32(min(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, var_0.x, 5818i, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, var_0.x, -5611i, -1i), vec4<i32>(2147483647i, var_0.x, var_0.x, 28168i))), countOneBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -2147483647i, var_0.x, -12802i), vec4<i32>(var_0.x, 1i, var_0.x, var_0.x)))), ~(-vec4<i32>(-1i, var_0.x, -38537i, var_0.x) & firstLeadingBit(countOneBits(vec4<i32>(var_0.x, var_0.x, var_0.x, 0i)))));
    return Struct_2(!(global0.a == !all(vec2<bool>(arg_0, global0.a))));
}

fn func_1() -> bool {
    global0 = Struct_2(!global0.a);
    global0 = func_2(all(vec4<bool>(any(vec3<bool>(global0.a, false, true)), true, any(vec4<bool>(true, true, false, global0.a)), !global0.a)) || global0.a);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(745f, 1121f, 601f), vec3<f32>(1806f, -1772f, -802f)), vec3<f32>(1628f, -2478f, 1280f), global0.a))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1116f, 2449f)) - _wgslsmith_f_op_f32(1111f * -750f)), _wgslsmith_f_op_f32(177f + 1195f), _wgslsmith_f_op_f32(f32(-1f) * -121f)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1075f), _wgslsmith_f_op_f32(-680f - -148f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(220f)), _wgslsmith_div_f32(-1273f, 2038f))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))))) + var_0.x);
    let var_2 = func_2(true);
    return any(!vec3<bool>(var_2.a | global0.a, global0.a, true)) | !(true && global0.a);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = -703f;
    var var_1 = func_2(true);
    var var_2 = _wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(28993u, u_input.a, u_input.a), vec3<u32>(1u, 47611u, 4294967295u), vec3<u32>(u_input.a, 1u, u_input.a)), countOneBits(vec3<u32>(4294967295u, 4294967295u, u_input.a)))) << (~(~_wgslsmith_mod_vec3_u32(vec3<u32>(1300u, 86834u, 28685u), vec3<u32>(40605u, 4294967295u, u_input.a))) % vec3<u32>(32u)), ~select(countOneBits(vec3<u32>(53133u, 547u, u_input.a)) << (abs(vec3<u32>(u_input.a, 0u, 0u)) % vec3<u32>(32u)), ~select(vec3<u32>(1u, u_input.a, 22676u), vec3<u32>(u_input.a, 4294967295u, 45515u), arg_0.xww), func_2(!var_1.a).a));
    var_2 = u_input.a;
    let var_3 = u_input.a;
    return Struct_2(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(vec4<bool>(true, func_1(), false, global0.a), Struct_1(~1i, -(~vec2<i32>(-2147483647i, -7329i))));
    let var_0 = Struct_1(_wgslsmith_clamp_i32(1i, ~(~0i), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-37841i, -2147483647i), vec2<i32>(4181i, -56696i))) >> (u_input.a % 32u)), firstTrailingBit(vec2<i32>(i32(-1i) * -22417i, ~1i)) & vec2<i32>(max(firstLeadingBit(2147483647i), func_3().x), _wgslsmith_sub_i32(firstTrailingBit(12443i), ~45727i)));
    let var_1 = vec2<i32>(-_wgslsmith_clamp_i32(select(abs(6870i), _wgslsmith_add_i32(var_0.b.x, var_0.a), func_1()), 2147483647i, ~(~var_0.a)), var_0.a ^ var_0.a);
    var var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(639f, -575f) * 351f)), -280f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-172f * 1843f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1000f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1781f + -1000f), -1378f)))));
    global0 = Struct_2(global0.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.yy, _wgslsmith_f_op_vec2_f32(var_2.zy + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(869f, 357f)))), global0.a)) * vec2<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - -1225f) - _wgslsmith_f_op_f32(exp2(var_2.x)))));
    var var_4 = select(select(vec2<bool>(false, !global0.a && (u_input.a > 25070u)), !select(!vec2<bool>(true, global0.a), select(vec2<bool>(global0.a, global0.a), vec2<bool>(false, global0.a), false), !vec2<bool>(false, global0.a)), select(vec2<bool>(true, true), !(!vec2<bool>(true, global0.a)), select(vec2<bool>(true, global0.a), select(vec2<bool>(false, global0.a), vec2<bool>(false, global0.a), global0.a), select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, true), vec2<bool>(false, true))))), !select(!select(vec2<bool>(true, false), vec2<bool>(global0.a, global0.a), vec2<bool>(true, false)), !(!vec2<bool>(global0.a, true)), global0.a), !vec2<bool>(any(vec2<bool>(global0.a, true)) | (u_input.a < 0u), global0.a));
    global0 = func_2(any(select(select(!vec4<bool>(false, true, global0.a, true), !vec4<bool>(false, var_4.x, global0.a, false), select(vec4<bool>(false, global0.a, true, global0.a), vec4<bool>(global0.a, var_4.x, global0.a, var_4.x), vec4<bool>(false, global0.a, global0.a, global0.a))), vec4<bool>(true, 46004u <= u_input.a, true, false), true)));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(488f, 154f, var_3.x), vec3<f32>(var_2.x, var_3.x, var_3.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.x, var_3.x, var_3.x), vec3<f32>(-2494f, var_3.x, var_2.x)))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 1000f, 585f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1137f, var_2.x, var_2.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -603f, var_2.x) + vec3<f32>(var_2.x, -980f, var_2.x))) * vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), 927f, _wgslsmith_div_f32(var_3.x, var_3.x)))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(1u, 13762u, u_input.a)) ^ (vec3<u32>(u_input.a, 1u, u_input.a) ^ vec3<u32>(4294967295u, u_input.a, 26720u)), vec3<u32>(_wgslsmith_div_u32(u_input.a, 0u), u_input.a, ~u_input.a)), vec4<i32>(1i, var_1.x, -2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a, 65494i, 1i) | vec3<i32>(2147483647i, 36210i, var_1.x), vec3<i32>(2147483647i, var_1.x, var_1.x) >> (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, 2147483647i, -2147483647i) ^ vec3<i32>(var_1.x, var_0.b.x, 1i), ~vec3<i32>(1i, -5564i, var_0.a)))), var_2.xz, _wgslsmith_f_op_vec4_f32(vec4<f32>(-364f, -1135f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-839f + var_3.x))), _wgslsmith_f_op_f32(trunc(var_3.x))) + vec4<f32>(-1030f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), var_2.x, _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-1000f + var_2.x)))));
}

