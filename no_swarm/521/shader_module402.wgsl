struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> f32 {
    global0 = vec2<i32>(global0.x, global0.x);
    global0 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(countOneBits(-(~vec2<i32>(-2147483647i, global0.x))), vec2<i32>(select(global0.x, firstLeadingBit(global0.x), true), 48467i)), (_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 0i) ^ vec2<i32>(global0.x, 23386i), vec2<i32>(global0.x, 2147483647i)) << (_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(20341u, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 6454u)) % vec2<u32>(32u))) >> (_wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a)), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(14517u, u_input.a), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, u_input.a)))) % vec2<u32>(32u)));
    global0 = ~vec2<i32>(_wgslsmith_div_i32(-27567i, _wgslsmith_add_i32(global0.x << (1u % 32u), max(global0.x, global0.x))), global0.x);
    var var_0 = u_input.a;
    var var_1 = Struct_4(Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-global0.x, 1i), firstTrailingBit(~vec2<i32>(33731i, global0.x)), countOneBits(vec2<i32>(global0.x, global0.x)) | (vec2<i32>(global0.x, global0.x) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.a, 24409u, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(11090u, 4294967295u, 42331u, 16998u), vec4<u32>(u_input.a, u_input.a, 9471u, u_input.a), vec4<u32>(4294967295u, u_input.a, 0u, 35937u)))), -_wgslsmith_mult_vec2_i32(select(-vec2<i32>(-36951i, global0.x), vec2<i32>(global0.x, 27458i), !arg_1), ~vec2<i32>(global0.x, global0.x) | -vec2<i32>(global0.x, global0.x)));
    return _wgslsmith_f_op_f32(abs(-566f));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1) -> bool {
    global0 = _wgslsmith_div_vec2_i32(~arg_2.a, arg_2.a);
    global0 = firstLeadingBit(arg_2.a | arg_2.a);
    var var_0 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec4<f32>(-229f, -1000f, -2309f, -1631f), true)))))), arg_2, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 10663i, -1i), vec3<i32>(2147483647i, global0.x, -691i) >> (arg_2.b.wyz % vec3<u32>(32u))), ~firstLeadingBit(0i)) ^ -1i);
    let var_1 = ~select(select(var_0.b.b.zww, var_0.b.b.xxw, all(vec3<bool>(true, true, true))), vec3<u32>(min(1u, arg_2.b.x), _wgslsmith_add_u32(24511u, u_input.a), arg_2.b.x << (u_input.a % 32u)) | vec3<u32>(58485u, arg_2.b.x, u_input.a), !any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)));
    var_0 = Struct_3(var_0.a, arg_2, ~reverseBits(i32(-1i) * -arg_1));
    return any(vec2<bool>(false, !(all(vec4<bool>(true, true, true, true)) | true)));
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = select(vec3<bool>(-global0.x <= 1i, arg_0, all(vec2<bool>(arg_0, true))), !(!vec3<bool>(true, func_2(vec4<u32>(4294967295u, u_input.a, 43834u, 1u), -32176i, Struct_1(vec2<i32>(global0.x, global0.x), vec4<u32>(u_input.a, u_input.a, 119323u, u_input.a))), true)), vec3<bool>(false, arg_0, !(all(vec2<bool>(arg_0, false)) & true)));
    let var_1 = firstLeadingBit(u_input.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(154f, 1269f) + vec2<f32>(891f, 2815f)), vec2<f32>(1066f, 986f), select(vec2<bool>(arg_0, arg_0), var_0.xx, var_0.xy)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-130f, -1167f), vec2<f32>(170f, 1783f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1830f, 1987f) + vec2<f32>(-1534f, 418f)), !vec2<bool>(var_0.x, true))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1206f, 899f))))))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-919f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1426f - -754f) - -1070f)))));
    var var_3 = vec4<bool>(any(select(!vec2<bool>(false, arg_0), var_0.zy, !vec2<bool>(false, arg_0))), all(select(!(!vec4<bool>(var_0.x, var_0.x, arg_0, var_0.x)), !(!vec4<bool>(arg_0, true, arg_0, false)), vec4<bool>(var_0.x, !var_0.x, arg_0, !var_0.x))), false, !func_2(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(var_1, var_1, var_1)), _wgslsmith_mult_u32(u_input.a, var_1), ~u_input.a, firstLeadingBit(u_input.a)), -2147483647i, Struct_1(~vec2<i32>(-55012i, global0.x), countOneBits(vec4<u32>(var_1, 4294967295u, 1u, var_1)))));
    global0 = -vec2<i32>(~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0.x, -1i), vec3<i32>(global0.x, -1i, 33489i)), -14456i), global0.x);
    return Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1700f), Struct_1(firstLeadingBit(~vec2<i32>(1i, 3894i)), _wgslsmith_add_vec4_u32(vec4<u32>(var_1, u_input.a, u_input.a, 4294967295u) ^ vec4<u32>(9580u, 36152u, u_input.a, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, 1u, 0u, 55994u), vec4<u32>(4294967295u, 1u, 24171u, 1u), vec4<u32>(20745u, var_1, 71205u, u_input.a))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_1, 1u, var_1, var_1), ~vec4<u32>(4294967295u, 4294967295u, 35927u, 1u)) % vec4<u32>(32u))), global0.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_3) -> Struct_4 {
    global0 = select(arg_3.b.a, ~(~arg_3.b.a), all(vec4<bool>((-10588i << (arg_0.x % 32u)) <= arg_3.b.a.x, true, true, true)));
    var var_0 = Struct_4(arg_3.b, select(arg_3.b.a, arg_3.b.a, select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true)))));
    var_0 = Struct_4(func_1(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))).b, var_0.a.a | (max(~var_0.a.a, abs(vec2<i32>(arg_2, 2147483647i))) & _wgslsmith_mult_vec2_i32(-vec2<i32>(var_0.a.a.x, 38701i), min(vec2<i32>(global0.x, -16388i), vec2<i32>(-52947i, -20520i)))));
    return Struct_4(Struct_1(arg_3.b.a, arg_0 | var_0.a.b), firstTrailingBit((_wgslsmith_sub_vec2_i32(var_0.a.a, var_0.b) >> (vec2<u32>(var_0.a.b.x, u_input.a) % vec2<u32>(32u))) & vec2<i32>(1i << (0u % 32u), _wgslsmith_sub_i32(14367i, arg_2))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec4<u32>((1u ^ _wgslsmith_mod_u32(0u, u_input.a)) >> (~_wgslsmith_mod_u32(50210u, u_input.a) % 32u), u_input.a, ~1u, 0u), vec3<u32>(66261u, u_input.a, ~34612u), ~(i32(-1i) * -48205i), func_1(false));
    let var_1 = ~vec4<i32>(0i, -59460i, 55137i, _wgslsmith_dot_vec2_i32(min(var_0.a.a, vec2<i32>(7843i, -2147483647i)), var_0.a.a)) << (select(~var_0.a.b, var_0.a.b, !(!any(vec3<bool>(false, false, false)))) % vec4<u32>(32u));
    var var_2 = func_4(var_0.a.b, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_0.a.b.x, var_0.a.b.x), u_input.a ^ 62290u, 16024u) << (firstTrailingBit(vec3<u32>(8753u, var_0.a.b.x, u_input.a)) % vec3<u32>(32u)), vec3<u32>(u_input.a & _wgslsmith_add_u32(var_0.a.b.x, 3719u), ~u_input.a << (~1u % 32u), max(_wgslsmith_dot_vec2_u32(var_0.a.b.yz, vec2<u32>(u_input.a, 74399u)), u_input.a << (var_0.a.b.x % 32u)))), countOneBits(global0.x >> (0u % 32u)), func_1(1i == _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(var_1, vec4<i32>(var_0.b.x, -2147483647i, var_0.a.a.x, -46599i)), var_1)));
    global0 = _wgslsmith_add_vec2_i32(abs(var_2.a.a), func_4(firstLeadingBit(var_2.a.b), ~max(var_0.a.b.xyy, _wgslsmith_mod_vec3_u32(var_0.a.b.yxz, var_0.a.b.zyw)), -12490i, Struct_3(432f, Struct_1(var_2.b, _wgslsmith_div_vec4_u32(vec4<u32>(20823u, 17891u, u_input.a, var_2.a.b.x), var_0.a.b)), 2147483647i)).a.a);
    var_2 = func_4(select(func_4(_wgslsmith_mult_vec4_u32(var_2.a.b, select(vec4<u32>(var_0.a.b.x, u_input.a, 40790u, var_0.a.b.x), var_0.a.b, vec4<bool>(false, false, true, false))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(47143u, var_2.a.b.x, var_0.a.b.x), var_2.a.b.wyw), -1i, Struct_3(-649f, Struct_1(vec2<i32>(34263i, -1i), var_0.a.b), abs(1i))).a.b, countOneBits(~vec4<u32>(u_input.a, var_0.a.b.x, var_2.a.b.x, var_2.a.b.x)), !vec4<bool>(func_2(var_2.a.b, -26805i, Struct_1(vec2<i32>(var_0.b.x, var_1.x), var_0.a.b)), true, true, true)), ~(~vec3<u32>(var_2.a.b.x, ~0u, ~0u)), ((14194i ^ var_1.x) >> (abs(u_input.a) % 32u)) ^ (-global0.x & (-var_2.a.a.x ^ _wgslsmith_div_i32(var_2.b.x, 2147483647i))), func_1(select(true, true, _wgslsmith_f_op_f32(func_3(vec4<f32>(930f, 1373f, 119f, 1034f), true)) <= -1190f)));
    var var_3 = ~vec4<u32>(u_input.a, u_input.a, var_0.a.b.x, func_1(var_2.a.a.x == -27785i).b.b.x);
    var_3 = var_0.a.b;
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-1366f * _wgslsmith_f_op_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -751f), _wgslsmith_f_op_f32(-587f * 728f), _wgslsmith_f_op_f32(f32(-1f) * -2243f), _wgslsmith_div_f32(181f, 212f)), true))), var_0.a, var_0.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -723f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(398f, -1293f), _wgslsmith_f_op_f32(-var_4.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2875f, var_4.a)) - _wgslsmith_div_f32(var_4.a, -531f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_4.a, -1010f, -436f))))), vec3<bool>(var_4.b.b.x < u_input.a, true, true))));
}

