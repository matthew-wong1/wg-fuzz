struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 37232u;
    let var_1 = Struct_1((arg_0 > arg_1) != (true | any(vec2<bool>(arg_2.x, arg_2.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(157f)))), 485f, _wgslsmith_dot_vec3_i32(-u_input.b.wwy, select(vec3<i32>(1i << (arg_1 % 32u), 19188i, ~(-1i)), u_input.b.xxx, arg_3.a)));
    let var_2 = firstTrailingBit(0i);
    var var_3 = 1i;
    let var_4 = !vec4<bool>(false, false, all(!vec4<bool>(true, arg_3.a, var_1.a, true)) | arg_2.x, arg_3.a);
    return Struct_1(arg_2.x, _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(sign(arg_3.c)), var_2);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - arg_1), arg_3.b) - -1970f)));
    var_0 = 495f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), 1000f), 1000f)) + -726f);
    let var_1 = !select(!vec4<bool>(true, arg_3.a, arg_2.x, true), vec4<bool>(!(!arg_2.x), all(select(vec2<bool>(false, false), vec2<bool>(arg_2.x, arg_3.a), vec2<bool>(arg_2.x, arg_2.x))), !arg_3.a, false), all(!vec2<bool>(arg_3.a, arg_3.a)) || !(arg_1 != 536f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - -235f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b)));
    return 49423u;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool) -> bool {
    let var_0 = arg_1.a;
    var var_1 = vec4<bool>(!(_wgslsmith_mult_u32(22284u, func_3(16533u, arg_1.c, vec3<bool>(false, false, false), Struct_1(false, arg_0.x, arg_0.x, -2147483647i))) == select(countOneBits(79626u), 1u, all(vec4<bool>(false, false, arg_2, arg_2)))), !(!select(true, false, arg_1.a)), arg_1.a || true, true);
    var_1 = select(!(!vec4<bool>(true, var_1.x, var_1.x, true)), !vec4<bool>(true, func_1(4294967295u, 51452u, var_1.xww, arg_1).a && true, all(vec2<bool>(var_0, true)), var_1.x), vec4<bool>(arg_1.a, false, arg_1.a, false));
    let var_2 = vec3<u32>(1u, func_3(1u, _wgslsmith_f_op_f32(sign(arg_1.c)), var_1.yzw, Struct_1(func_1(~4294967295u, _wgslsmith_clamp_u32(0u, 1u, 1u), vec3<bool>(true, arg_2, arg_2), func_1(1u, 66821u, var_1.wyw, Struct_1(false, arg_0.x, arg_1.b, 2147483647i))).a, 1626f, 1335f, 19264i)), 4294967295u);
    let var_3 = arg_1.c;
    return true;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1123f, -2347f, 818f, arg_2.b) * vec4<f32>(-269f, -197f, -954f, arg_2.b))))), vec4<f32>(_wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(arg_2.b + -437f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -372f) * arg_2.b), _wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(arg_2.b + -466f)), _wgslsmith_div_f32(-372f, _wgslsmith_f_op_f32(1000f + arg_2.c))))));
    let var_1 = !select(select(!(!vec2<bool>(arg_0, arg_1)), vec2<bool>(arg_0, true), !vec2<bool>(arg_2.a, false)), !vec2<bool>(func_1(arg_3.x, arg_3.x, vec3<bool>(arg_2.a, false, arg_0), arg_2).a, arg_1), !vec2<bool>(all(vec4<bool>(true, arg_1, arg_1, false)), 11572u == arg_3.x));
    let var_2 = 34855u;
    let var_3 = arg_2.d;
    let var_4 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, arg_2.c, _wgslsmith_f_op_f32(-554f * _wgslsmith_f_op_f32(-377f - _wgslsmith_div_f32(1000f, arg_2.c))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1479f + var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -613f)))))));
    return func_1(_wgslsmith_dot_vec3_u32(arg_3.wzx, max(select(arg_3.wxy, arg_3.zwx, false), vec3<u32>(~1u, ~arg_3.x, 33629u))), var_2, !vec3<bool>(_wgslsmith_f_op_f32(893f + var_0.x) <= _wgslsmith_div_f32(arg_2.b, var_4.x), true, func_1(abs(27091u), var_2 & 1u, vec3<bool>(arg_2.a, true, arg_2.a), func_1(var_2, var_2, vec3<bool>(true, false, arg_2.a), Struct_1(false, var_4.x, arg_2.b, 13722i))).a), Struct_1(!select(arg_1 || false, false, any(vec3<bool>(false, true, var_1.x))), arg_2.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c - arg_2.b), _wgslsmith_div_f32(-320f, arg_2.c)), ~(i32(-1i) * -40511i) >> (arg_3.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (_wgslsmith_dot_vec4_i32(u_input.b, ~(-vec4<i32>(21635i, u_input.b.x, u_input.a, u_input.b.x))) < ~(~_wgslsmith_add_i32(u_input.b.x, u_input.b.x))) & true;
    var var_1 = func_4((u_input.a <= 23012i) | (false && func_2(_wgslsmith_div_vec2_f32(vec2<f32>(-1295f, -1798f), vec2<f32>(1055f, -112f)), func_1(0u, 51248u, vec3<bool>(false, true, false), Struct_1(true, -688f, -1640f, -12998i)), true)), all(vec3<bool>(func_1(firstTrailingBit(18386u), 1u, select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), func_1(61272u, 4294967295u, vec3<bool>(false, true, true), Struct_1(false, 1000f, -384f, u_input.b.x))).a, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1204f, 743f) - vec2<f32>(-894f, -649f)), func_1(114485u, 25095u, vec3<bool>(false, true, true), Struct_1(false, -123f, 407f, 1i)), true), false)), Struct_1(any(vec3<bool>(any(vec4<bool>(false, true, false, true)), true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1382f)) + 1045f), _wgslsmith_f_op_f32(ceil(1958f)), ~_wgslsmith_add_i32(1i, _wgslsmith_sub_i32(u_input.a, u_input.b.x))), vec4<u32>(firstLeadingBit(32872u << (firstLeadingBit(35891u) % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, _wgslsmith_sub_u32(37024u, 0u)), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(1u, 4294967295u)), vec2<u32>(1u, 1u))), 0u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(0u, 0u, 49617u, 4294967295u)) >> (_wgslsmith_add_u32(31110u, 39947u) % 32u), 4294967295u)));
    var_0 = var_1.a | false;
    let x = u_input.a;
    s_output = StorageBuffer((vec3<i32>(2147483647i, func_4(false, false, Struct_1(false, var_1.b, 667f, -50346i), vec4<u32>(1u, 94342u, 4294967295u, 1u)).d, _wgslsmith_div_i32(u_input.b.x, u_input.b.x)) << ((abs(vec3<u32>(18556u, 73074u, 4294967295u)) >> (select(vec3<u32>(0u, 1u, 29511u), vec3<u32>(0u, 1915u, 4294967295u), var_1.a) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ firstLeadingBit(u_input.b.zyw), _wgslsmith_f_op_f32(-var_1.b));
}

