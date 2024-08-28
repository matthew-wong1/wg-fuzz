struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 11>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    let var_0 = true;
    var var_1 = _wgslsmith_mult_u32(0u << (1u % 32u), abs(69569u));
    var var_2 = global1[_wgslsmith_index_u32(1u, 11u)];
    var_2 = Struct_1(var_2.a, ~min(~firstLeadingBit(var_2.b), _wgslsmith_mod_u32(var_2.b << (var_2.b % 32u), 72507u)));
    let var_3 = vec2<bool>(true, all(select(!select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, true)), select(select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, true, true), vec3<bool>(true, true, true)), !vec3<bool>(var_0, var_0, var_0), var_0), true)));
    return _wgslsmith_mult_vec3_u32(var_2.a, var_2.a);
}

fn func_4(arg_0: vec3<u32>) -> u32 {
    let var_0 = -2147483647i;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2042f, -1850f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -416f), 2156f), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1903f, -947f) * vec2<f32>(-1000f, 162f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) * _wgslsmith_f_op_f32(round(718f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -973f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x - 1000f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-636f - var_1.x), _wgslsmith_f_op_f32(-var_1.x))));
    let var_2 = false;
    var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1222f, -155f)))) + _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(abs(-598f)))), -1754f)));
    return _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(abs(arg_0.x), firstTrailingBit(arg_0.x), ~1u, arg_0.x >> (arg_0.x % 32u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 1u, arg_0.x), vec4<u32>(41272u, arg_0.x, arg_0.x, 14902u))), vec4<u32>(arg_0.x, 0u, 4294967295u, ~reverseBits(arg_0.x) ^ arg_0.x));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> i32 {
    let var_0 = arg_0;
    var var_1 = Struct_1(~vec3<u32>(select(arg_1.x, ~arg_1.x, true), arg_1.x, arg_1.x), func_4(firstLeadingBit(func_3(u_input.a.x))) | 4294967295u);
    var_1 = global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_1.a.x, 13140u, 22412u, 1u), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 1u), vec4<bool>(true, true, true, false)), abs(vec4<u32>(arg_1.x, arg_1.x, var_1.a.x, 45906u))), 0u)), 11u)];
    global0 = _wgslsmith_f_op_f32(-var_0);
    var_1 = global1[_wgslsmith_index_u32(var_1.b, 11u)];
    return u_input.a.x;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec4<u32>) -> bool {
    var var_0 = countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(u_input.a.x, arg_0.x)), _wgslsmith_mod_i32(u_input.a.x, -48922i), arg_0.x, -arg_0.x), abs(~vec4<i32>(arg_0.x, -1i, 2147483647i, arg_0.x)))) << (~_wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(arg_1.x, 0u, 4294967295u, 21515u)), vec4<u32>(4345u, firstLeadingBit(arg_1.x), _wgslsmith_dot_vec4_u32(arg_1, arg_2), arg_2.x)) % vec4<u32>(32u));
    global1 = array<Struct_1, 11>();
    var_0 = vec4<i32>(0i, -(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.a.x, 42316i, arg_0.x), ~arg_0) ^ _wgslsmith_add_i32(-34415i, var_0.x << (arg_1.x % 32u))), var_0.x, 43932i);
    let var_1 = Struct_1(vec3<u32>(countOneBits(~4294967295u), ~_wgslsmith_sub_u32(arg_1.x, arg_1.x), abs(0u)) | ~vec3<u32>(~arg_2.x, reverseBits(1u), ~35280u), func_3(-2147483647i).x);
    var var_2 = vec3<f32>(722f, _wgslsmith_f_op_f32(trunc(-905f)), 829f);
    return false;
}

fn func_1() -> vec4<bool> {
    var var_0 = vec2<u32>(1u, 1u);
    global0 = _wgslsmith_f_op_f32(sign(717f));
    let var_1 = global1[_wgslsmith_index_u32(var_0.x, 11u)];
    let var_2 = var_1.b;
    global0 = -2271f;
    return vec4<bool>(true, false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-729f - _wgslsmith_f_op_f32(-1728f - 354f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1048f) * _wgslsmith_f_op_f32(913f + -617f))), func_5(max(u_input.a, vec4<i32>(~(-26010i), _wgslsmith_add_i32(0i, u_input.a.x), _wgslsmith_clamp_i32(25374i, u_input.a.x, 44026i), func_2(-1846f, vec3<u32>(35806u, var_1.b, 28405u)))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u)), firstLeadingBit(~vec4<u32>(68078u, var_0.x, 4294967295u, 4294967295u))), vec4<u32>(~(~var_1.b), reverseBits(1u) | (var_1.a.x & 20824u), 1u, _wgslsmith_mod_u32(var_1.b << (var_1.b % 32u), _wgslsmith_mod_u32(1u, 6546u)))));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(func_3(u_input.a.x), ~(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_3.b, arg_2.b), countOneBits(4294967295u)) << (abs(_wgslsmith_div_u32(38524u, arg_3.a.x)) % 32u)));
    var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), 295f))), _wgslsmith_f_op_f32(f32(-1f) * -849f)));
    return Struct_1(var_0.a << (vec3<u32>(4294967295u, ~select(4294967295u, arg_3.b, true), 0u) % vec3<u32>(32u)), arg_2.b);
}

fn func_7(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = arg_0;
    global0 = -441f;
    let var_1 = func_6(select(vec2<i32>(27872i, u_input.a.x), ~u_input.a.yx, func_1().wx), select(!func_1(), select(!vec4<bool>(false, arg_1, arg_1, true), !select(vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(arg_1, true, true, false)), select(!vec4<bool>(arg_1, arg_1, false, true), vec4<bool>(arg_1, arg_1, arg_1, arg_1), arg_1 | true)), false), Struct_1(countOneBits(vec3<u32>(_wgslsmith_mult_u32(4294967295u, var_0.b), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 22826u, arg_0.a.x, 95826u), vec4<u32>(4294967295u, arg_0.a.x, 15631u, 4294967295u)), ~76717u)), max(func_3(1i).x | func_6(u_input.a.zz, vec4<bool>(false, arg_1, arg_1, arg_1), global1[_wgslsmith_index_u32(var_0.b, 11u)], arg_0).a.x, 0u)), global1[_wgslsmith_index_u32(~min(0u >> (_wgslsmith_mod_u32(var_0.b, arg_0.a.x) % 32u), var_0.b), 11u)]);
    global1 = array<Struct_1, 11>();
    var_0 = Struct_1(vec3<u32>(var_1.a.x, 4294967295u, ~_wgslsmith_sub_u32(~var_0.b, ~0u)), arg_0.b);
    return func_6(vec2<i32>(-_wgslsmith_mod_i32(u_input.a.x, 2147483647i) & _wgslsmith_add_i32(u_input.a.x, u_input.a.x), -_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a.x, 19999i), u_input.a.x ^ u_input.a.x, countOneBits(u_input.a.x))), !(!vec4<bool>(arg_1, arg_1 || arg_1, func_5(u_input.a, vec4<u32>(arg_0.a.x, 0u, 4294967295u, 4294967295u), vec4<u32>(0u, var_1.a.x, 26045u, 0u)), any(vec3<bool>(arg_1, arg_1, arg_1)))), func_6(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(24752i, u_input.a.x), vec2<i32>(-1i, 47633i))), vec4<bool>(arg_1 && true, ~var_1.a.x >= ~1u, false, true), func_6(abs(_wgslsmith_sub_vec2_i32(u_input.a.zw, u_input.a.ww)), !select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, false, true, false), vec4<bool>(arg_1, true, false, arg_1)), func_6(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -1i), u_input.a.yy), vec4<bool>(true, arg_1, arg_1, arg_1), arg_0, arg_0), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, 0u), vec2<u32>(68056u, 4294967295u)), 11u)]), arg_0), Struct_1(~(~vec3<u32>(var_0.b, 18079u, var_0.a.x)), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstLeadingBit(vec3<u32>(127821u, _wgslsmith_dot_vec3_u32(~vec3<u32>(5553u, 34236u, 0u), vec3<u32>(1u, 4294967295u, 1u)), _wgslsmith_sub_u32(firstTrailingBit(10943u), 1u))), 0u);
    var var_1 = all(vec4<bool>(!all(vec4<bool>(true, true, true, true)), false, true, true));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - 2624f))), -2662f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2119f * 244f), _wgslsmith_f_op_f32(f32(-1f) * -1007f)))));
    var var_3 = func_7(func_6(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), -u_input.a.wx), select(!func_1(), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), true), global1[_wgslsmith_index_u32(~(~var_0.b), 11u)], var_0), true);
    let var_4 = func_6(-(~(-(u_input.a.yw & u_input.a.zw))), vec4<bool>(true || select(false, true, any(vec4<bool>(false, true, true, false))), true, all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)) | all(func_1().wzw), any(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))), global1[_wgslsmith_index_u32(1u, 11u)], func_6(_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.a.x, 1i) ^ abs(vec2<i32>(0i, -1i)), (u_input.a.wx >> (vec2<u32>(var_0.b, 0u) % vec2<u32>(32u))) >> (reverseBits(var_0.a.zz) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_div_i32(-2147483647i, u_input.a.x), u_input.a.x)), !vec4<bool>(u_input.a.x < u_input.a.x, u_input.a.x == u_input.a.x, true, true), global1[_wgslsmith_index_u32(4294967295u, 11u)], Struct_1(min(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, var_0.a.x), vec3<u32>(var_3.b, 3734u, var_3.b)), var_3.a), 1u)));
    global0 = 138f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(56346u, ~var_4.b, firstTrailingBit(firstTrailingBit(var_4.a.x))) & _wgslsmith_sub_vec3_u32(var_0.a, var_3.a), _wgslsmith_div_f32(507f, _wgslsmith_f_op_f32(-var_2.x)));
}

