struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    var var_0 = !select(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, false), any(vec4<bool>(false, false, true, true))), select(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), false), -1000f > arg_1)), vec2<bool>(true, true));
    global0 = array<Struct_2, 14>();
    var var_1 = Struct_5(~(~countOneBits(arg_0.yww << (vec3<u32>(u_input.a.x, 13447u, u_input.a.x) % vec3<u32>(32u)))), u_input.a.x);
    return firstLeadingBit(select(max(var_1.b | 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(73771u, 4294967295u, u_input.a.x), max(vec3<u32>(var_1.b, var_1.b, 23803u), vec3<u32>(u_input.a.x, 0u, 0u)))), _wgslsmith_add_u32(18579u, var_1.b & var_1.b) ^ min(~u_input.a.x, ~var_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - arg_1) != -630f));
}

fn func_2(arg_0: Struct_5, arg_1: vec4<u32>) -> Struct_5 {
    var var_0 = any(vec4<bool>(true, true, true, true));
    global0 = array<Struct_2, 14>();
    let var_1 = arg_0.a.x;
    var var_2 = !(!(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_3 = true;
    return Struct_5((~arg_0.a & _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.x, arg_0.a.x, var_1), vec3<i32>(0i, var_1, arg_0.a.x))) ^ -arg_0.a, ~countOneBits(_wgslsmith_clamp_u32(~21190u, abs(arg_0.b), func_3(vec4<i32>(-32872i, 20895i, arg_0.a.x, arg_0.a.x), -363f))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3) -> Struct_4 {
    var var_0 = Struct_3(~arg_1.a, _wgslsmith_f_op_vec4_f32(arg_1.b * arg_1.b), all(!select(!vec4<bool>(false, true, arg_1.c, arg_1.c), vec4<bool>(arg_1.c, false, arg_1.c, arg_1.c), true)));
    var var_1 = global0[_wgslsmith_index_u32(11849u, 14u)];
    let var_2 = select(vec4<bool>(false, true, any(var_1.a), !arg_1.c), select(select(vec4<bool>(!var_0.c, 29514u >= u_input.a.x, true, var_0.c), vec4<bool>(arg_0.a.x >= arg_0.a.x, true | arg_1.c, true, !var_1.a.x), any(select(vec3<bool>(true, false, arg_1.c), vec3<bool>(true, var_0.c, false), vec3<bool>(arg_1.c, true, var_0.c)))), !select(vec4<bool>(arg_1.c, var_0.c, false, var_1.a.x), vec4<bool>(false, false, arg_1.c, var_0.c), select(vec4<bool>(true, var_1.a.x, arg_1.c, var_0.c), vec4<bool>(arg_1.c, var_1.a.x, var_0.c, true), vec4<bool>(false, var_0.c, false, var_1.a.x))), select(vec4<bool>(select(true, var_0.c, true), true, u_input.a.x <= arg_1.a, !var_0.c), select(!vec4<bool>(true, var_1.a.x, arg_1.c, arg_1.c), vec4<bool>(true, true, false, true), !var_0.c), any(!vec4<bool>(var_1.a.x, false, var_1.a.x, true)))), var_0.c);
    let var_3 = Struct_4(arg_0.a.x, arg_0.b);
    var_1 = global0[_wgslsmith_index_u32(var_3.b, 14u)];
    return Struct_4(min(-7377i, 26632i), ~(_wgslsmith_mod_u32(_wgslsmith_mod_u32(56162u, u_input.a.x), 87449u) | ~0u));
}

fn func_5(arg_0: vec2<f32>, arg_1: u32, arg_2: i32, arg_3: Struct_4) -> vec4<i32> {
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    var var_0 = !(!all(select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), true)));
    var var_1 = vec4<f32>(-389f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), arg_0.x, arg_0.x);
    let var_2 = Struct_1(0i, any(vec4<bool>(true, true, any(vec3<bool>(true, false, false)) | false, true)), vec4<i32>(-2147483647i, 19660i, min(~(arg_2 << (95103u % 32u)), ~(-5337i)), _wgslsmith_add_i32(arg_3.a, arg_3.a)), reverseBits(~u_input.a.x));
    return ~(-(countOneBits(var_2.c) >> (~vec4<u32>(u_input.a.x, arg_3.b, arg_3.b, 0u) % vec4<u32>(32u)))) << (vec4<u32>(min(23811u, select(func_3(var_2.c, var_1.x), 0u, var_2.b)), _wgslsmith_add_u32(arg_3.b, var_2.d), _wgslsmith_add_u32((arg_1 ^ u_input.a.x) << (~var_2.d % 32u), 57385u), ~27296u) % vec4<u32>(32u));
}

fn func_1() -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(86289i, -40566i), vec2<i32>(1i, 0i)), -2147483647i), !all(vec4<bool>(true, 41681u <= u_input.a.x, true, true)), _wgslsmith_div_vec4_i32(func_5(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1311f, 117f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-682f, -660f))))), 50042u, firstLeadingBit(-31478i), func_4(func_2(Struct_5(vec3<i32>(-8024i, 1i, 1i), 6141u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)), Struct_3(u_input.a.x, vec4<f32>(616f, -1000f, 1795f, 899f), false))), -(~min(vec4<i32>(1i, -2147483647i, -1i, -2147483647i), vec4<i32>(2147483647i, -1i, 1i, -17255i)))), 34278u);
    var var_1 = func_2(Struct_5(~func_5(vec2<f32>(1446f, 1345f), 85279u, 3409i, Struct_4(1i, var_0.d)).yzx & select(-var_0.c.zww, vec3<i32>(-13777i, 9983i, var_0.c.x) | vec3<i32>(1i, -601i, 78412i), !vec3<bool>(false, false, var_0.b)), func_3(var_0.c, _wgslsmith_f_op_f32(select(-727f, -1338f, false)))), reverseBits(~(~(~vec4<u32>(var_0.d, u_input.a.x, 44610u, 1u)))));
    var_1 = Struct_5(min(vec3<i32>(var_0.a, _wgslsmith_sub_i32(var_0.c.x, var_1.a.x) << (~var_0.d % 32u), func_5(vec2<f32>(1000f, -1114f), func_3(vec4<i32>(12848i, var_1.a.x, var_0.a, var_1.a.x), 361f), var_1.a.x, func_4(Struct_5(var_1.a, var_0.d), Struct_3(var_0.d, vec4<f32>(204f, -245f, 1448f, 917f), false))).x), reverseBits(~var_0.c.xzz)), var_0.d);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-555f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(171f * -2326f) - -913f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-575f)))))))));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2, 988f)) * -673f)), 1150f), 1091f, !var_0.b));
    return max(abs(var_0.c) >> ((~countOneBits(vec4<u32>(var_1.b, 0u, 0u, var_0.d)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(58943u, 45858u, 0u, var_1.b), vec4<u32>(0u, 53376u, u_input.a.x, var_0.d)) % vec4<u32>(32u))) % vec4<u32>(32u)), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit(9086u);
    var_0 = u_input.a.x;
    var var_1 = Struct_1(i32(-1i) * -9999i, all(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), u_input.a.x == _wgslsmith_sub_u32(21637u, u_input.a.x))), -(select(min(vec4<i32>(1i, 2147483647i, 0i, 1i), vec4<i32>(-1i, -1234i, -44392i, 12423i)), func_1(), true) << (~min(vec4<u32>(u_input.a.x, u_input.a.x, 38372u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u)) % vec4<u32>(32u))), u_input.a.x);
    var var_2 = Struct_1(_wgslsmith_dot_vec3_i32(func_5(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, 1000f))), func_2(Struct_5(vec3<i32>(var_1.c.x, 1i, var_1.a), 4294967295u), abs(vec4<u32>(49675u, 11298u, 13935u, var_1.d))).b, 25213i << (~u_input.a.x % 32u), Struct_4(~2147483647i, func_2(Struct_5(vec3<i32>(-2147483647i, -27237i, var_1.a), u_input.a.x), vec4<u32>(u_input.a.x, var_1.d, u_input.a.x, var_1.d)).b)).yww, var_1.c.yzw), any(vec3<bool>(false, u_input.a.x < reverseBits(u_input.a.x), -31682i >= -var_1.a)), min(vec4<i32>(i32(-1i) * -var_1.c.x, 34184i, 74986i, -2147483647i), -vec4<i32>(1i, -var_1.a, -8876i, -1i)), select(firstTrailingBit(4294967295u), func_4(func_2(Struct_5(vec3<i32>(var_1.a, -2147483647i, var_1.a), 1u), _wgslsmith_div_vec4_u32(vec4<u32>(21261u, var_1.d, 1u, 31878u), vec4<u32>(u_input.a.x, var_1.d, 48239u, u_input.a.x))), Struct_3(~4294967295u, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-669f, -464f, 382f, -1137f))), false)).b, all(select(!vec4<bool>(true, var_1.b, var_1.b, var_1.b), !vec4<bool>(false, false, var_1.b, true), select(vec4<bool>(true, var_1.b, var_1.b, true), vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b), false)))));
    let var_3 = select(!select(select(!vec4<bool>(false, true, var_2.b, var_2.b), select(vec4<bool>(var_1.b, true, var_1.b, var_1.b), vec4<bool>(var_2.b, true, var_1.b, true), true), !var_1.b), !(!vec4<bool>(true, var_1.b, false, true)), vec4<bool>(all(vec4<bool>(var_2.b, var_2.b, true, true)), true, !var_2.b, select(var_1.b, false, false))), !(!vec4<bool>(var_2.b, all(vec3<bool>(false, var_2.b, var_2.b)), var_2.b, true)), vec4<bool>(any(select(vec4<bool>(var_1.b, var_1.b, var_2.b, var_2.b), select(vec4<bool>(var_1.b, true, true, true), vec4<bool>(false, true, var_1.b, var_2.b), vec4<bool>(var_2.b, var_1.b, true, false)), true)), var_2.b, var_1.b, true));
    let var_4 = ~73217u;
    var_1 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(80328i | var_2.a, var_2.c.x << (var_2.d % 32u), var_1.c.x) & func_1().x, -10929i), true, -vec4<i32>(~abs(-10910i), func_2(Struct_5(var_2.c.xzy, 4294967295u), max(vec4<u32>(54706u, 15668u, 0u, 0u), vec4<u32>(1u, 40843u, 0u, 77316u))).a.x, var_1.a, min(var_2.a, -7560i)), ~_wgslsmith_mult_u32(var_1.d, _wgslsmith_add_u32(~4294967295u, ~u_input.a.x)));
    var var_5 = ~var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, _wgslsmith_add_u32(~func_4(Struct_5(var_2.c.xwy, 4294967295u), Struct_3(u_input.a.x, vec4<f32>(-496f, -1527f, 1037f, -919f), var_3.x)).b, _wgslsmith_clamp_u32(~56961u, ~(~0u), u_input.a.x | var_1.d)), firstLeadingBit(var_4 >> (abs(_wgslsmith_add_u32(var_4, var_1.d)) % 32u)), -76441i);
}

