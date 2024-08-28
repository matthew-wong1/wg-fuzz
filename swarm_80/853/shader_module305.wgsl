struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2() -> i32 {
    let var_0 = ~firstTrailingBit(i32(-1i) * -50838i);
    var var_1 = var_0;
    global0 = array<vec4<bool>, 10>();
    global0 = array<vec4<bool>, 10>();
    var_1 = var_0 >> (~_wgslsmith_add_u32(70820u, abs(u_input.a.x | 4294967295u)) % 32u);
    return reverseBits(_wgslsmith_sub_i32(reverseBits(var_0 & 0i) << (1u % 32u), 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> bool {
    let var_0 = 1205f;
    global0 = array<vec4<bool>, 10>();
    let var_1 = Struct_1(max(firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(71455u, u_input.a.x), vec2<u32>(0u, 0u)), arg_1, ~4294967295u)), max(vec3<u32>(_wgslsmith_clamp_u32(u_input.b, 66008u, 0u), max(u_input.b, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_0.x, 31448u, arg_1), vec4<u32>(34959u, 0u, 15344u, 0u))), ~(~vec3<u32>(arg_0.x, arg_0.x, arg_0.x)))), vec4<i32>(-42348i, -1i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-1i, -53608i, 44205i), vec3<bool>(true, false, false)), vec3<i32>(0i, 1i, ~(-2147483647i))), ~(i32(-1i) * -59397i) << (abs(arg_0.x) % 32u)), -((-59825i >> (arg_1 % 32u)) ^ 1i) << (arg_0.x % 32u), false, 4088i);
    global0 = array<vec4<bool>, 10>();
    let var_2 = !vec3<bool>(false, _wgslsmith_f_op_f32(round(var_0)) == _wgslsmith_f_op_f32(sign(-639f)), true);
    return var_2.x;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global0 = array<vec4<bool>, 10>();
    var var_0 = vec4<bool>(arg_1.d, !any(!select(vec3<bool>(false, false, true), vec3<bool>(arg_1.d, arg_3, false), vec3<bool>(false, arg_1.d, true))), arg_0 >= ~4294967295u, arg_2.d);
    global0 = array<vec4<bool>, 10>();
    let var_1 = arg_2;
    let var_2 = all(vec2<bool>(!func_3(vec2<u32>(var_1.a.x, u_input.b), var_1.a.x) & var_0.x, arg_3));
    return Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, ~arg_0, ~abs(var_1.a.x)), ~var_1.a), select(reverseBits(firstTrailingBit(vec4<i32>(arg_1.c, 0i, arg_1.b.x, arg_1.b.x))), _wgslsmith_clamp_vec4_i32(reverseBits(arg_1.b), var_1.b ^ arg_1.b, vec4<i32>(-3686i, arg_1.b.x, arg_2.e, -7368i)), any(select(global0[_wgslsmith_index_u32(var_1.a.x, 10u)], global0[_wgslsmith_index_u32(var_1.a.x, 10u)], vec4<bool>(false, true, arg_3, arg_1.d)))) >> (abs(vec4<u32>(1u, _wgslsmith_div_u32(arg_2.a.x, 29070u), _wgslsmith_dot_vec3_u32(arg_2.a, arg_2.a), reverseBits(23578u))) % vec4<u32>(32u)), arg_1.e, all(!select(var_0.zx, vec2<bool>(var_1.d, var_1.d), false & var_1.d)), 0i);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(firstLeadingBit(vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(45642u, arg_3.a.x), vec2<u32>(4266u, 0u)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_3.a.x, 4294967295u), arg_1.a.xz)), ~(~arg_2.a.x))), abs(~vec4<i32>(arg_1.b.x, 12819i, -62031i, ~arg_3.c)), _wgslsmith_sub_i32(~_wgslsmith_mult_i32(0i, firstTrailingBit(arg_1.e)), arg_3.e), true, -2147483647i);
    var var_1 = arg_1.a.x;
    let var_2 = arg_1;
    var var_3 = vec2<bool>(any(vec3<bool>(true & var_2.d, arg_2.d, arg_1.d)), arg_1.d);
    let var_4 = func_4(0u, func_4(_wgslsmith_mult_u32(4294967295u, 1u) & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 1699u), vec4<u32>(1u, u_input.a.x, 0u, 1u)), func_4(_wgslsmith_clamp_u32(~var_0.a.x, 53484u, 9916u), func_4(31924u, func_4(arg_3.a.x, Struct_1(vec3<u32>(u_input.b, 1u, arg_0.x), arg_3.b, -24648i, arg_2.d, arg_2.c), Struct_1(vec3<u32>(1u, var_0.a.x, arg_3.a.x), arg_3.b, arg_3.e, false, arg_3.e), false), arg_1, true), arg_2, !var_3.x), func_4(arg_1.a.x, func_4(arg_0.x, arg_3, Struct_1(vec3<u32>(1u, 1u, 17172u), vec4<i32>(var_2.e, -73237i, 14890i, var_0.e), 30970i, true, -2147483647i), true), Struct_1(reverseBits(arg_3.a), -arg_2.b, ~var_2.c, false, firstTrailingBit(arg_3.e)), false), func_3(~(~vec2<u32>(var_2.a.x, u_input.a.x)), ~func_4(arg_0.x, arg_1, arg_1, var_2.d).a.x)), func_4(4294967295u, func_4(29495u, arg_3, Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(55322u, arg_0.x, 0u), var_0.a), vec4<i32>(arg_3.b.x, var_2.c, -20667i, -1976i) ^ arg_3.b, arg_1.c, !var_3.x, -var_2.c), arg_2.d), var_2, true), true);
    return ~vec4<i32>(var_2.b.x, var_2.b.x, 2147483647i, _wgslsmith_clamp_i32(var_0.e << (32845u % 32u), ~0i, -1i)) | -max(arg_3.b, _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 1i, var_0.e, arg_2.e), vec4<i32>(47564i, arg_2.c, var_4.c, -2147483647i)) >> (vec4<u32>(var_4.a.x, arg_1.a.x, 1u, 11588u) % vec4<u32>(32u)));
}

fn func_1(arg_0: i32, arg_1: f32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(780f * _wgslsmith_f_op_f32(ceil(arg_1)))), arg_1, 1f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, arg_1, -835f))))) + vec3<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(exp2(arg_1)))) - vec3<f32>(-1293f, 215f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
    global0 = array<vec4<bool>, 10>();
    var var_1 = (~_wgslsmith_mod_vec2_u32(u_input.a, u_input.a) ^ select(~vec2<u32>(4294967295u, 16052u), max(abs(u_input.a), vec2<u32>(u_input.a.x, 4294967295u)), true)) >> (~(~reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 20625u), u_input.a))) % vec2<u32>(32u));
    let var_2 = !vec3<bool>(false, any(vec2<bool>(true, true)), false);
    var_1 = ~u_input.a;
    return reverseBits(func_5(vec2<u32>(u_input.b, u_input.a.x) << (_wgslsmith_mult_vec2_u32(~u_input.a, countOneBits(u_input.a)) % vec2<u32>(32u)), func_4(u_input.b, Struct_1(vec3<u32>(u_input.b, var_1.x, u_input.a.x), vec4<i32>(arg_0, 50953i, arg_0, 13029i), countOneBits(arg_0), true, -7227i), Struct_1(~vec3<u32>(71381u, 32043u, u_input.b), vec4<i32>(0i, 27997i, arg_0, -1i), func_2(), func_3(vec2<u32>(u_input.a.x, u_input.b), var_1.x), 1i >> (var_1.x % 32u)), !var_2.x), Struct_1(firstLeadingBit(vec3<u32>(0u, 11668u, 0u) ^ vec3<u32>(var_1.x, u_input.b, 4294967295u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-32486i, 21799i, arg_0, 1i) << (vec4<u32>(4294967295u, var_1.x, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<i32>(-12787i, 2147483647i, 29528i, arg_0)), 2147483647i, !func_3(vec2<u32>(75785u, 10297u), var_1.x), _wgslsmith_add_i32(-arg_0, 2147483647i)), func_4(19316u, Struct_1(vec3<u32>(u_input.a.x, var_1.x, var_1.x), vec4<i32>(-9570i, 2147483647i, arg_0, 16790i), -arg_0, true, _wgslsmith_clamp_i32(-1i, 20252i, -2147483647i)), func_4(13564u, func_4(var_1.x, Struct_1(vec3<u32>(u_input.a.x, u_input.b, u_input.a.x), vec4<i32>(-32604i, arg_0, -1i, arg_0), -66751i, var_2.x, -15012i), Struct_1(vec3<u32>(u_input.b, 1u, 43769u), vec4<i32>(-24120i, -11236i, arg_0, arg_0), arg_0, true, arg_0), true), func_4(28853u, Struct_1(vec3<u32>(var_1.x, var_1.x, 0u), vec4<i32>(2147483647i, arg_0, -19723i, 2147483647i), arg_0, false, 1i), Struct_1(vec3<u32>(4697u, 0u, 1u), vec4<i32>(-10188i, arg_0, -1i, arg_0), 16105i, true, -41343i), true), var_2.x), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, i32(-1i) * -1i), _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(-23518i, 2147483647i)), vec2<i32>(-40779i, -446i))), 401f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(241f, -403f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-213f, 1665f) + _wgslsmith_f_op_f32(1169f + 637f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1160f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_f_op_f32(sign(-853f)))))), reverseBits(abs(_wgslsmith_mult_i32(-1i, -2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1338f))))), ~vec3<i32>(firstTrailingBit(countOneBits(-1i)), ~21849i, -1i));
}

