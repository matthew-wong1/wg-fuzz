struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 14868u, 44909u, 4294967295u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1011f, 178f, -1434f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1017f, -312f, -558f), vec3<f32>(1847f, -1347f, -357f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2298f, 635f, -998f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1121f, 786f, -1550f) + vec3<f32>(371f, 1006f, -862f)), true)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(2387f)), -1067f))), true, arg_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-423f)), 547f, _wgslsmith_f_op_f32(select(-1029f, _wgslsmith_f_op_f32(f32(-1f) * -1317f), true))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-280f, -600f, 226f))))));
    global0 = ~(~(countOneBits(vec4<u32>(9591u, global0.x, global0.x, global0.x) | vec4<u32>(u_input.b, 1u, 0u, u_input.a.x)) << ((_wgslsmith_clamp_vec4_u32(vec4<u32>(101099u, 1u, global0.x, u_input.a.x), vec4<u32>(u_input.c, u_input.b, u_input.c, u_input.b), vec4<u32>(u_input.a.x, global0.x, u_input.a.x, u_input.a.x)) << (reverseBits(vec4<u32>(global0.x, 0u, global0.x, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(164f, -1023f, -324f), _wgslsmith_f_op_vec3_f32(vec3<f32>(319f, 692f, 1794f) * var_0.d))), _wgslsmith_clamp_u32(reverseBits(u_input.b), global0.x >> (global0.x % 32u), 1u) >= firstTrailingBit(_wgslsmith_add_u32(24396u, 0u)), _wgslsmith_div_i32(_wgslsmith_mod_i32(var_0.c, arg_0.x ^ -4729i), var_0.c), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(271f, var_0.d.x, 1306f)))))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.d.x, var_0.a.x, var_0.d.x), vec3<f32>(var_0.a.x, var_0.a.x, 1000f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(313f, var_0.a.x, var_0.d.x), var_0.d, var_0.b))) + _wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(var_0.d.x, 877f, 987f))), !(_wgslsmith_div_u32(u_input.a.x, global0.x) != 46453u), ~var_0.c, vec3<f32>(198f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -504f) - _wgslsmith_f_op_f32(step(-313f, var_0.d.x))), var_0.a.x)), 0i);
    let var_2 = u_input.d;
    var_0 = var_1.b;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.a.x, _wgslsmith_f_op_f32(trunc(var_0.a.x)))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.a.x, 454f)) - -493f), var_0.d.x) * vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1155f, var_1.a.a.x, false)))))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2285f - 690f))))), _wgslsmith_f_op_f32(f32(-1f) * -290f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(771f, -2045f))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1088f, var_0.x, -278f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))))))), false, ~arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-var_0.x)) + vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(var_0.x)), 703f))));
    var_1 = Struct_1(var_1.d, arg_0 >= 5808i, ~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, -33099i), vec2<i32>(-54876i, var_1.c)), firstTrailingBit(vec2<i32>(arg_0, arg_0))) | _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 81423i, -2147483647i, 2147483647i), reverseBits(vec4<i32>(u_input.d, u_input.d, 45666i, u_input.d) & vec4<i32>(-1i, 80205i, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(350f, var_0.x, var_0.x) * var_1.d), _wgslsmith_div_vec3_f32(var_1.a, var_1.a)) * var_1.a));
    global0 = vec4<u32>(4294967295u, _wgslsmith_div_u32(20322u, _wgslsmith_div_u32(u_input.a.x, ~abs(u_input.c))), 4294967295u, min(~global0.x, 92882u));
    let var_2 = _wgslsmith_f_op_vec2_f32(func_3(-(~(~(vec4<i32>(-40688i, -16737i, var_1.c, 2147483647i) & vec4<i32>(27341i, arg_0, arg_0, arg_0))))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(ceil(var_1.d)), false, _wgslsmith_dot_vec4_i32(-vec4<i32>(~0i, select(u_input.d, arg_0, true), 1i, i32(-1i) * -12547i), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, var_1.c, select(-2147483647i, u_input.d, var_1.b), firstLeadingBit(18025i)), ~vec4<i32>(u_input.d, 22756i, 0i, var_1.c))), var_1.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: bool) -> vec2<bool> {
    global0 = _wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(18049u, 26568u), global0.x ^ ~(global0.x ^ global0.x), ~u_input.c, ~max(arg_2.x | 1u, global0.x)), ~(vec4<u32>(73788u, firstTrailingBit(1u), global0.x << (global0.x % 32u), ~arg_2.x) ^ _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(1u, 4294967295u, global0.x, arg_2.x)), vec4<u32>(0u, 1u, 57535u, arg_2.x) ^ vec4<u32>(0u, global0.x, arg_2.x, 52905u))));
    global0 = vec4<u32>(1u, ~(~_wgslsmith_mult_u32(46590u, 36887u)), ~(arg_2.x ^ 0u), _wgslsmith_div_u32(min(~(~global0.x), _wgslsmith_mult_u32(global0.x, u_input.a.x) | _wgslsmith_sub_u32(arg_2.x, 0u)), ~(~53u)));
    var var_0 = true;
    let var_1 = _wgslsmith_div_f32(arg_0.a.x, -404f);
    var var_2 = Struct_2(arg_0, func_2(_wgslsmith_div_i32(arg_1.c, u_input.d)), -abs(min(max(-79139i, u_input.d), _wgslsmith_mult_i32(u_input.d, 20532i))));
    return vec2<bool>(any(!vec4<bool>(!var_2.b.b, false, false, var_2.b.b && arg_0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_2.b.d.x)))), -476f) != _wgslsmith_f_op_f32(round(arg_1.d.x)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> vec3<u32> {
    let var_0 = vec2<u32>(global0.x, min(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(17887u, 12152u, u_input.a.x, 0u), vec4<u32>(126903u, global0.x, u_input.a.x, 1u)), 4294967295u) << (53334u % 32u), 1u));
    var var_1 = select(select(select(vec2<bool>(any(vec3<bool>(arg_1.b.b, arg_0.a.b, arg_0.b.b)), any(vec3<bool>(false, arg_0.b.b, true))), vec2<bool>(true, select(false, arg_1.a.b, arg_0.b.b)), select(vec2<bool>(arg_1.a.b, true), select(vec2<bool>(true, true), vec2<bool>(false, arg_1.a.b), true), !vec2<bool>(arg_0.a.b, arg_0.b.b))), select(!(!vec2<bool>(arg_1.b.b, arg_0.b.b)), select(vec2<bool>(true, true), !vec2<bool>(arg_1.a.b, arg_1.b.b), arg_0.a.b), select(arg_0.b.b, true, arg_0.b.b)), select(func_4(func_2(-21661i), arg_0.b, vec3<u32>(var_0.x, 1u, 889u), true), !select(vec2<bool>(arg_1.b.b, true), vec2<bool>(arg_0.a.b, true), true), !select(vec2<bool>(false, arg_1.a.b), vec2<bool>(arg_0.a.b, false), arg_0.a.b))), select(!(!select(vec2<bool>(arg_0.a.b, false), vec2<bool>(true, arg_0.a.b), true)), select(!select(vec2<bool>(true, arg_0.b.b), vec2<bool>(false, false), vec2<bool>(true, true)), func_4(Struct_1(vec3<f32>(-512f, arg_1.a.a.x, arg_0.a.a.x), false, u_input.d, vec3<f32>(-288f, arg_1.b.a.x, arg_1.b.d.x)), arg_1.a, _wgslsmith_mult_vec3_u32(vec3<u32>(5533u, u_input.a.x, u_input.a.x), global0.zxz), true), arg_0.a.b), !func_4(arg_1.b, Struct_1(arg_0.b.a, false, 11581i, arg_1.a.a), global0.ywy, true)), vec2<bool>(arg_1.a.b, true));
    let var_2 = vec2<u32>(global0.x, 0u);
    var var_3 = ~(vec4<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, u_input.d, u_input.d), vec3<i32>(arg_1.c, -13840i, arg_1.b.c)), arg_1.a.c), 51236i, arg_0.c, -9514i) ^ vec4<i32>(~(~1i), arg_1.b.c, u_input.d, ~(arg_0.c << (1u % 32u))));
    global0 = ~vec4<u32>(~30405u, var_0.x, ~(~9872u), _wgslsmith_mult_u32(49360u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2.x, 0u), _wgslsmith_mod_vec3_u32(global0.wzw, vec3<u32>(0u, 4294967295u, u_input.a.x)))));
    return global0.yyx;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1548f, arg_1.b.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))) - _wgslsmith_f_op_f32(trunc(arg_1.a.a.x))));
    var var_1 = Struct_2(arg_1.a, arg_1.a, ~min(~u_input.d, _wgslsmith_sub_i32(u_input.d, _wgslsmith_mod_i32(arg_1.a.c, -919i))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.a.zx)) * _wgslsmith_f_op_vec2_f32(var_1.a.a.yy * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1275f, 833f) + vec2<f32>(_wgslsmith_div_f32(var_0.x, arg_1.a.a.x), _wgslsmith_f_op_f32(-arg_1.b.d.x)))));
    let var_3 = 45319i & _wgslsmith_div_i32(0i | (_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -35100i, -9687i, 2147483647i), vec4<i32>(-4323i, -34603i, -2147483647i, -2147483647i)) >> (firstTrailingBit(1u) % 32u)), 1i);
    let var_4 = Struct_2(Struct_1(vec3<f32>(788f, _wgslsmith_f_op_f32(max(443f, _wgslsmith_f_op_f32(-1188f - -864f))), _wgslsmith_f_op_f32(-var_0.x)), -1146f == _wgslsmith_f_op_f32(trunc(arg_1.b.d.x)), -(~var_3), _wgslsmith_f_op_vec3_f32(var_1.a.a * vec3<f32>(_wgslsmith_f_op_f32(var_1.b.a.x - -1124f), var_0.x, 167f))), func_2(-19714i), ~(-20636i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(724f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_0.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1010f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(Struct_2(Struct_1(vec3<f32>(-2746f, 473f, 1691f), true, -39185i, vec3<f32>(808f, 1083f, 1383f)), Struct_1(vec3<f32>(-1112f, 161f, 1122f), true, -1i, vec3<f32>(-804f, -1214f, -1338f)), u_input.d), Struct_2(Struct_1(vec3<f32>(353f, -918f, 1567f), false, -2147483647i, vec3<f32>(1099f, 2405f, -1357f)), Struct_1(vec3<f32>(1018f, 215f, 413f), true, -2147483647i, vec3<f32>(849f, -809f, -279f)), u_input.d), u_input.d) & reverseBits(global0.zwz), Struct_2(Struct_1(vec3<f32>(-1000f, 188f, 233f), true, -1i, vec3<f32>(1421f, 1536f, 1000f)), func_2(u_input.d), select(-12497i, u_input.d, false))))));
    let var_1 = countOneBits(vec4<u32>(global0.x, u_input.b | global0.x, ~1u, max(39587u, u_input.a.x)));
    let var_2 = any(func_4(func_2(select(u_input.d, u_input.d, all(vec4<bool>(true, true, true, true)))), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-529f, -1312f, -1000f) - vec3<f32>(537f, -499f, -1315f)))), false, ~reverseBits(u_input.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2062f, 850f, 738f)) * vec3<f32>(508f, -744f, -950f))), var_1.yxw, true));
    let var_3 = vec2<u32>(abs(var_1.x), 79072u);
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1025f, -2759f, -147f) * vec3<f32>(-723f, -2099f, 383f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(671f, -224f, -1077f)))))), true, (u_input.d | 1i) >> (reverseBits(var_3.x) % 32u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 472f, -446f), vec3<f32>(523f, 1637f, 653f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(449f, 1000f, -381f), vec3<f32>(-559f, 269f, -1000f)))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1061f, -436f, 1910f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(747f, 560f, 1682f)))), var_2, u_input.d, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-326f, 471f, -1065f)))))))), max(1i, u_input.d));
    global0 = max(var_1, abs(_wgslsmith_clamp_vec4_u32(~(vec4<u32>(var_1.x, var_3.x, global0.x, 4294967295u) << (vec4<u32>(14849u, global0.x, 1u, u_input.a.x) % vec4<u32>(32u))), ~abs(var_1), var_1)));
    global0 = vec4<u32>(0u, _wgslsmith_clamp_u32(var_3.x, 15033u, ~4294967295u), _wgslsmith_add_u32(global0.x, ~global0.x), ~var_3.x);
    var var_5 = vec3<f32>(var_4.a.d.x, var_4.b.d.x, _wgslsmith_f_op_f32(var_4.a.a.x - var_4.b.d.x));
    global0 = ~(~(~var_1) & ~vec4<u32>(u_input.b, var_3.x ^ 4294967295u, global0.x, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d >> (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_3.x | var_3.x, ~u_input.a.x, ~4294967295u), ~0u) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x))));
}

