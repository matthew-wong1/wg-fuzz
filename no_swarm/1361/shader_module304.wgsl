struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = ~(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, u_input.b)) << (~u_input.c.xx % vec2<u32>(32u))) ^ vec2<i32>(abs(-2147483647i), _wgslsmith_mod_i32(-2147483647i, -u_input.b)));
    return 0u;
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> vec4<bool> {
    var var_0 = vec3<u32>(func_3(any(vec4<bool>(true, true, false, any(vec3<bool>(true, arg_1, arg_1))))), 0u, u_input.a);
    return select(vec4<bool>(true, true, arg_1, true), vec4<bool>(arg_1 | true, true | (2147483647i <= u_input.b), false, all(vec3<bool>(true, true, arg_1))), any(select(select(!vec2<bool>(arg_1, false), vec2<bool>(arg_1, false), true), !vec2<bool>(arg_1, false), vec2<bool>(any(vec4<bool>(true, arg_1, arg_1, true)), arg_1))));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: u32, arg_3: vec4<bool>) -> vec3<f32> {
    var var_0 = !vec3<bool>(any(vec4<bool>(true, true, true, true)), true, !(!(arg_0.x && arg_0.x)));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-996f - -124f), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(ceil(251f))))) - _wgslsmith_f_op_f32(418f - 1f))));
    let var_2 = ~abs(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 33820u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 63966u), u_input.c.xz)), u_input.c.xy));
    let var_3 = Struct_1(u_input.b, ~(~select(vec4<u32>(5657u, 16622u, u_input.a, u_input.c.x), vec4<u32>(14532u, 0u, 50390u, 11439u), arg_3)) << (~min(~vec4<u32>(9660u, var_2.x, 51397u, 15099u), firstTrailingBit(vec4<u32>(0u, 55197u, 10714u, 49940u))) % vec4<u32>(32u)));
    var_0 = arg_3.wwx;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 + var_1), _wgslsmith_f_op_f32(-var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_1))) * vec3<f32>(-1626f, var_1, var_1));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: f32) -> vec4<bool> {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(func_4(!select(vec4<bool>(true, true, true, true), func_2(-vec4<i32>(0i, -8733i, u_input.b, arg_1.a), any(vec3<bool>(false, true, true))), false), 36065u, ~abs(_wgslsmith_mult_u32(1u, arg_1.b.x) ^ _wgslsmith_clamp_u32(u_input.c.x, arg_1.b.x, var_0.b.x)), !select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), func_2(vec4<i32>(16133i, -30630i, 36147i, 1i), true), true), true)));
    let var_2 = select(vec3<bool>(false, func_2(~(~vec4<i32>(-10792i, u_input.b, -1i, arg_1.a)), !any(vec4<bool>(true, false, false, true))).x, all(func_2(vec4<i32>(var_0.a, 7078i, -13006i, 19801i), false)) & true), select(func_2(~abs(vec4<i32>(1i, -1i, 2147483647i, var_0.a)), all(vec4<bool>(true, true, false, false))).wyy, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(false, true, false)), true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), select(vec3<bool>(~32381u != select(30472u, arg_2.x, false), true, true), select(select(func_2(vec4<i32>(var_0.a, 0i, u_input.b, 49996i), false).xxy, vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(all(vec2<bool>(false, true)), any(vec4<bool>(false, true, false, false)), true), vec3<bool>(true, true, true)), !func_2(~vec4<i32>(u_input.b, var_0.a, var_0.a, var_0.a), true).x));
    var_0 = Struct_1(-(i32(-1i) * -38608i), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(arg_2, ~arg_1.b), min(~arg_1.b ^ ~vec4<u32>(27584u, 67671u, u_input.a, arg_2.x), var_0.b)));
    var var_3 = _wgslsmith_mod_u32(~12652u, ~max(arg_1.b.x, firstLeadingBit(3418u)) << (62218u % 32u));
    return !select(vec4<bool>(var_2.x, var_2.x, true, var_2.x | any(var_2.yx)), !select(func_2(vec4<i32>(u_input.b, 48707i, 1i, -8285i), var_2.x), !vec4<bool>(var_2.x, var_2.x, true, var_2.x), var_2.x), true);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> vec4<u32> {
    let var_0 = arg_1;
    let var_1 = ~_wgslsmith_sub_u32(arg_1.b.x, _wgslsmith_mod_u32(var_0.b.x << (arg_2 % 32u), func_3(arg_0.x | arg_0.x)));
    let var_2 = Struct_1(_wgslsmith_div_i32(~countOneBits(~var_0.a), _wgslsmith_sub_i32(select(2835i, 2147483647i, arg_0.x), ~firstLeadingBit(var_0.a))), ~(vec4<u32>(abs(var_1), var_1, var_0.b.x, arg_2) | ~_wgslsmith_mult_vec4_u32(vec4<u32>(23593u, 4294967295u, 4294967295u, var_1), arg_1.b)));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec3_f32(func_4(!func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.a, 6606i, -15603i, arg_1.a), vec4<i32>(-52750i, -5030i, var_0.a, 8797i), vec4<i32>(-1i, -7891i, arg_3, var_2.a)), any(vec3<bool>(arg_0.x, arg_0.x, true))), var_0.b.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, var_2.b.x, arg_2, var_1)), ~firstTrailingBit(var_0.b)), select(!arg_0, vec4<bool>(true, all(vec2<bool>(true, arg_0.x)), arg_3 == 0i, arg_0.x), arg_0.x))).yx, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-385f, -541f) - vec2<f32>(-427f, -768f))) * vec2<f32>(_wgslsmith_f_op_f32(-492f + 1623f), 639f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-258f, 2097f), vec2<f32>(426f, 2079f)))) - vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, 1320f)), _wgslsmith_f_op_f32(max(-1502f, 1601f)))), false)), select(vec2<bool>(arg_0.x, arg_0.x), !arg_0.zy, !any(func_1(u_input.c.x, Struct_1(arg_3, vec4<u32>(arg_1.b.x, 12970u, 0u, arg_1.b.x)), var_2.b, 746f)))));
    var var_4 = _wgslsmith_sub_vec3_u32(~abs(firstLeadingBit(var_2.b.xwx)) ^ vec3<u32>(_wgslsmith_div_u32(arg_1.b.x, ~arg_1.b.x), var_1 | var_2.b.x, var_0.b.x), countOneBits(~vec3<u32>(~4294967295u, ~u_input.c.x, 24503u << (var_1 % 32u))));
    return select(vec4<u32>(_wgslsmith_mult_u32(~(~arg_2), ~countOneBits(4294967295u)), 0u, select(u_input.a ^ _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), ~var_1, (arg_1.a > arg_3) & select(false, arg_0.x, true)), ~var_4.x), vec4<u32>(12715u, ~1u, _wgslsmith_clamp_u32(var_0.b.x, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(var_1, 445u)), firstLeadingBit(vec2<u32>(var_4.x, arg_2))), 20285u), 21702u), select(!vec4<bool>(true, all(vec4<bool>(arg_0.x, true, arg_0.x, true)), true, false), arg_0, !all(vec4<bool>(true, arg_0.x, arg_0.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(~u_input.a, Struct_1(1i, vec4<u32>(~u_input.c.x, ~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.a, u_input.c.x), vec4<u32>(u_input.c.x, 1u, 0u, u_input.a)), u_input.c.x)), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.c.x, 18625u), vec4<u32>(u_input.a, 71262u, 4294967295u, u_input.a)) & (vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, 17460u) & vec4<u32>(u_input.c.x, 38467u, 73774u, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1684f + -596f))), Struct_1(u_input.b, _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x), ~vec4<u32>(53807u, u_input.c.x, u_input.a, 0u)), min(vec4<u32>(u_input.a, 39362u, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, 43358u, u_input.c.x, u_input.a)) | _wgslsmith_add_vec4_u32(vec4<u32>(1u, 41574u, 4294967295u, 53047u), vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, u_input.c.x)))), u_input.c.x, u_input.b & -2147483647i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(203f - -785f) * _wgslsmith_f_op_f32(f32(-1f) * -374f)))), -1415f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(402f - 1f))));
    let var_2 = 1017f;
    let var_3 = Struct_1(u_input.b, ~(vec4<u32>(reverseBits(1u), ~4294967295u, 28043u, 4294967295u ^ u_input.a) | vec4<u32>(min(0u, 16678u), 28712u, 36628u, 51786u)));
    var var_4 = _wgslsmith_clamp_vec2_i32(min(~vec2<i32>(2147483647i, -2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, i32(-1i) * -64220i), vec2<i32>(21362i, 35678i))), vec2<i32>(firstLeadingBit(select(1i, var_3.a, true)), var_3.a), vec2<i32>(_wgslsmith_add_i32(var_3.a, u_input.b), -8266i ^ ~firstTrailingBit(-6371i)));
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_5.a, u_input.b, 38830i), ~vec3<i32>(var_3.a, -2147483647i, -1i)), _wgslsmith_clamp_i32(var_4.x, -2147483647i, 25221i) << (abs(u_input.a) % 32u), ~var_5.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_1, 671f)), var_2))))), reverseBits(firstLeadingBit(~vec2<i32>(-55865i, var_5.a))) & -vec2<i32>(_wgslsmith_mult_i32(var_4.x, -2147483647i), 0i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(var_2)), -914f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-559f, var_1))), vec2<f32>(var_2, var_2), true))), func_2(~vec4<i32>(var_3.a, 1i, 15293i, var_5.a), true).x | (64253u < var_5.b.x))), min(vec2<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(2517u, u_input.a, u_input.c.x, 30010u), var_5.b), abs(var_0)), 1u), var_5.b.xw));
}

