struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: i32 = 83347i;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> u32 {
    global1 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-u_input.a, u_input.a, ((u_input.a | arg_0) << (~94103u % 32u)) ^ u_input.a), ~(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -2147483647i) ^ vec2<i32>(-38710i, u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, -2147483647i), vec2<i32>(19763i, u_input.a))) >> (~4294967295u % 32u)));
    let var_0 = abs(vec4<u32>(1u, 1u, 1u, 1u));
    global1 = _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, arg_0), 36912i), -_wgslsmith_mult_vec3_i32(~(~vec3<i32>(27919i, -2147483647i, 0i)), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, 18056i, u_input.a), vec3<i32>(1i, 37387i, -1i)), -vec3<i32>(u_input.a, -1i, 71384i))));
    global1 = arg_0;
    var var_1 = Struct_1(!arg_2, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(454f + arg_1.b.x), _wgslsmith_f_op_f32(arg_1.b.x * -1000f)) * arg_1.b) * _wgslsmith_f_op_vec2_f32(select(arg_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_1.b))), arg_1.a))));
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, ~_wgslsmith_dot_vec2_u32(var_0.wy, vec2<u32>(var_0.x, var_0.x)), _wgslsmith_dot_vec2_u32(var_0.yz & var_0.zw, var_0.xw)), vec4<u32>(countOneBits(reverseBits(var_0.x)), var_0.x, countOneBits(firstTrailingBit(59726u)), firstLeadingBit(var_0.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_3(-43042i, any(!select(select(vec3<bool>(arg_1.a, true, arg_2.x), vec3<bool>(false, arg_1.a, false), true), !vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(true, true, true))), _wgslsmith_clamp_vec3_i32(select(max(vec3<i32>(0i, 0i, 1i), vec3<i32>(1i, 25109i, -29596i) << (vec3<u32>(35631u, arg_0, arg_0) % vec3<u32>(32u))), abs(countOneBits(vec3<i32>(23961i, -13979i, -3955i))), !select(vec3<bool>(true, false, false), vec3<bool>(true, arg_2.x, arg_1.a), vec3<bool>(false, false, true))), vec3<i32>(25966i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, 12601i))), ~select(u_input.a, 43548i, arg_2.x)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(2147483647i, u_input.a, u_input.a), _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a)), select(vec3<i32>(-5046i, -1i, u_input.a), vec3<i32>(u_input.a, -64774i, u_input.a), vec3<bool>(false, true, arg_2.x))), vec3<i32>(u_input.a, u_input.a & 14525i, min(1i, u_input.a)))), arg_1, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -753f));
    global1 = _wgslsmith_div_i32(-_wgslsmith_clamp_i32(reverseBits(u_input.a), var_0.c.x, firstLeadingBit(1i)), var_0.c.x) ^ _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(1i, var_0.a, -1i, var_0.a)), ~abs(-vec4<i32>(u_input.a, u_input.a, var_0.a, 2147483647i)));
    var var_1 = all(vec3<bool>(false, arg_2.x, false));
    let var_2 = vec4<u32>(~min(2722u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(0u, arg_0)) >> (1u % 32u)), arg_0, _wgslsmith_sub_u32(~select(arg_0, ~53829u, !arg_2.x), min(arg_0, arg_0) << (47060u % 32u)), arg_0);
    let var_3 = vec3<bool>(false, select(var_0.d.a, true, var_0.b), any(vec2<bool>(all(select(vec3<bool>(arg_1.a, false, true), vec3<bool>(false, var_0.d.a, false), arg_1.a)), !(!arg_2.x))));
    return ~_wgslsmith_dot_vec4_u32(~select(~var_2, var_2, select(vec4<bool>(true, var_0.d.a, false, arg_1.a), vec4<bool>(false, true, false, arg_2.x), var_3.x)), vec4<u32>(arg_0, _wgslsmith_sub_u32(~0u, 39741u), 4294967295u, arg_0));
}

fn func_2() -> u32 {
    let var_0 = u_input.a;
    global0 = 1u;
    var var_1 = func_4(_wgslsmith_clamp_u32(1u & ~func_3(1i, Struct_1(false, vec2<f32>(724f, -976f)), false), ~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(87452u, 33769u))), countOneBits(1u)), Struct_1(!any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 1520f)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1220f), -2116f))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), all(vec4<bool>(true, true, true, true))));
    var var_2 = 328f;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-571f, 1733f, 140f), vec3<f32>(-906f, 1000f, 1000f))))))));
    return _wgslsmith_sub_u32(~(~func_4(1u, Struct_1(true, vec2<f32>(var_3.x, 646f)), vec2<bool>(true, true)) >> (~select(12922u, 43220u, true) % 32u)), max(~_wgslsmith_mod_u32(_wgslsmith_add_u32(81125u, 3842u), ~0u), ~16073u));
}

fn func_5(arg_0: i32, arg_1: vec3<bool>) -> u32 {
    var var_0 = Struct_3(abs((u_input.a ^ arg_0) >> (1u % 32u)), true, ~_wgslsmith_add_vec3_i32(min(vec3<i32>(3990i, -321i, -1i), vec3<i32>(-1i, -25167i, arg_0)), abs(vec3<i32>(arg_0, 17952i, 1i))) | _wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, u_input.a, arg_0) ^ firstTrailingBit(vec3<i32>(arg_0, arg_0, -1i)), -abs(vec3<i32>(1i, -2147483647i, u_input.a))), Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-281f + 800f) + -1000f), -458f)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1125f) + _wgslsmith_f_op_f32(step(-425f, -161f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1207f - -1123f)))), 1f));
    global1 = _wgslsmith_sub_i32(-max(9922i, -arg_0), u_input.a);
    let var_1 = ~(~select(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(20673u, 32138u, 23864u, 51538u), vec4<u32>(4294967295u, 4294967295u, 12026u, 1u)), arg_1.x)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(func_4(~4294967295u, var_0.d, select(vec2<bool>(arg_1.x, true), vec2<bool>(arg_1.x, false), true)), 1u, countOneBits(~53823u), _wgslsmith_clamp_u32(16479u, 60982u, 0u) << (1u % 32u)), vec4<u32>(_wgslsmith_mod_u32(reverseBits(1u), reverseBits(1u)), 10602u, ~43310u, ~firstLeadingBit(1u)));
    let var_2 = Struct_4(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(693f, 1011f)) * _wgslsmith_f_op_f32(max(var_0.d.b.x, 308f)))) + 520f));
    var var_3 = false;
    return 1u;
}

fn func_1() -> Struct_3 {
    let var_0 = true;
    var var_1 = func_5(-1i, vec3<bool>(1u != func_2(), var_0, false));
    let var_2 = _wgslsmith_clamp_u32(~func_3(-30569i, Struct_1(var_0, vec2<f32>(-667f, 714f)), all(!vec2<bool>(false, var_0))), 0u, func_3(min(~u_input.a, 2147483647i), Struct_1(all(select(vec3<bool>(false, var_0, var_0), vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, true, var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-120f, 749f)))), true));
    var var_3 = Struct_1(false, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -640f), _wgslsmith_f_op_f32(round(1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(520f, -615f))) * vec2<f32>(_wgslsmith_div_f32(684f, 602f), -280f)))));
    let var_4 = Struct_2(1i, Struct_1(!var_0, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.b.x, var_3.b.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1234f)))))), var_3.a, _wgslsmith_mod_i32(0i, firstLeadingBit(~(~u_input.a))));
    return Struct_3(_wgslsmith_add_i32(63143i, -2147483647i), false, firstLeadingBit(countOneBits(firstTrailingBit(vec3<i32>(-1i, var_4.e, var_4.a)))) | vec3<i32>(_wgslsmith_clamp_i32(var_4.a, 1i, _wgslsmith_sub_i32(-1i, 1i)), var_4.e, -reverseBits(1i)), var_4.b, vec2<f32>(466f, _wgslsmith_f_op_f32(-794f + _wgslsmith_f_op_f32(-var_4.b.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -21973i;
    global0 = firstLeadingBit(17109u);
    global0 = firstTrailingBit(1u << (countOneBits(73215u) % 32u));
    var var_0 = func_1();
    var var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x * var_0.e.x))), 575f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.b.x, -346f) * _wgslsmith_f_op_f32(var_0.e.x + var_0.e.x))))), func_3(-(firstLeadingBit(27017i) << (1u % 32u)), var_0.d, any(select(select(vec3<bool>(var_0.b, false, var_0.d.a), vec3<bool>(true, false, true), vec3<bool>(false, true, var_0.d.a)), vec3<bool>(true, false, var_0.d.a), !vec3<bool>(var_0.d.a, var_0.b, var_0.b)))));
}

