struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: f32) -> vec2<f32> {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(-292f, arg_1), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(step(arg_2, arg_1)))) + -752f), _wgslsmith_f_op_f32(-arg_2));
    var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, -953f, 928f, 841f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2040f, arg_1, var_0.x, arg_2))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_2, arg_2, 615f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, var_0.x, -127f, 145f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, _wgslsmith_f_op_f32(1138f - 366f), -393f, var_0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 765f, var_0.x, var_0.x))) * vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), -128f, 644f, _wgslsmith_f_op_f32(-arg_2)))));
    let var_1 = ~(~(~(u_input.c.x | 1u)) << ((select(select(u_input.a.x, 93267u, true), ~1u, true) << (41517u % 32u)) % 32u));
    let var_2 = ~32526u;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(845f, 589f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1088f))))), _wgslsmith_f_op_vec2_f32(-var_0.wx)));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: f32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-612f)), _wgslsmith_f_op_f32(1007f * -296f)) * _wgslsmith_f_op_vec2_f32(func_3(firstLeadingBit(vec3<i32>(-1973i, u_input.b, -2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2)), -794f), _wgslsmith_div_f32(-485f, _wgslsmith_f_op_f32(-arg_2))))), select(false, select(any(vec2<bool>(false, false)) & true, true, !any(vec2<bool>(true, true))), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(-arg_2))) * -607f)), _wgslsmith_div_vec2_i32((vec2<i32>(-1i) * -vec2<i32>(0i, u_input.b)) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(54054i, 0i), abs(vec2<i32>(u_input.b, u_input.b))), vec2<i32>(u_input.b, countOneBits(max(-2147483647i, 2147483647i)))), vec3<f32>(arg_2, 508f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1562f * 545f) + _wgslsmith_div_f32(arg_2, arg_2)))));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = 40558u;
    var var_1 = Struct_3(!vec2<bool>(true, -271f <= _wgslsmith_f_op_f32(floor(905f))), func_2(~(~4294967295u << (var_0 % 32u)), abs(u_input.c), _wgslsmith_f_op_f32(floor(-1052f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-317f, -919f, 2277f, -518f)))) * vec4<f32>(-163f, _wgslsmith_f_op_f32(1264f * -1127f), _wgslsmith_f_op_f32(f32(-1f) * -173f), _wgslsmith_f_op_f32(abs(-222f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(843f, -1833f, -1259f, -619f), vec4<f32>(-720f, 513f, 558f, -314f), vec4<bool>(true, false, true, false)))))), vec4<bool>(any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true))), true, 1u >= (arg_0 | 1u), true))), u_input.a.xw, func_2(arg_0, u_input.a, -384f));
    var var_2 = select(!(!vec3<bool>(192f > var_1.c.x, true, true)), !vec3<bool>(var_1.b.b, true, any(vec3<bool>(var_1.a.x, false, true))), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(var_1.a.x, var_1.a.x, var_1.b.b), vec3<bool>(var_1.b.b, var_1.e.b, true), vec3<bool>(false, false, true)), vec3<bool>(var_1.b.b, false, false), var_1.e.e.x <= var_1.b.c), vec3<bool>(true, func_2(var_0, u_input.a, var_1.b.e.x).b, any(var_1.a))), !select(vec3<bool>(var_1.e.b, false, var_1.b.b), select(vec3<bool>(true, false, true), vec3<bool>(var_1.b.b, false, var_1.e.b), false), !vec3<bool>(var_1.e.b, var_1.b.b, var_1.b.b)), select(vec3<bool>(var_1.a.x, var_1.e.d.x == u_input.b, var_1.b.b), vec3<bool>(false, any(vec4<bool>(var_1.b.b, var_1.b.b, var_1.e.b, var_1.a.x)), false), select(vec3<bool>(var_1.e.b, var_1.b.b, var_1.a.x), !vec3<bool>(var_1.b.b, var_1.b.b, false), vec3<bool>(var_1.e.b, var_1.a.x, var_1.a.x)))));
    let var_3 = min(~firstLeadingBit(u_input.a), abs(vec4<u32>(var_1.d.x, _wgslsmith_div_u32(firstTrailingBit(u_input.c.x), _wgslsmith_mult_u32(16465u, 28737u)), ~10083u >> (_wgslsmith_mod_u32(u_input.c.x, u_input.a.x) % 32u), ~var_0)));
    let var_4 = 15873u;
    return Struct_3(vec2<bool>(true, !(2147483647i > -u_input.b)), var_1.e, var_1.c, var_3.xx, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.b.e.x, var_1.e.c))))), var_1.a.x, 485f, vec2<i32>(2147483647i & u_input.b, func_2(22332u, _wgslsmith_div_vec4_u32(var_3, vec4<u32>(0u, 57138u, 1494u, 24589u)), _wgslsmith_f_op_f32(f32(-1f) * -2600f)).d.x), var_1.e.e));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec4<u32>) -> vec2<i32> {
    var var_0 = false;
    let var_1 = Struct_3(func_1(firstTrailingBit(4294967295u)).a, func_1(countOneBits(~50065u)).e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_1.c, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.b.e.x, 1000f, arg_1.c.x, 326f))), u_input.b >= -29271i)))), _wgslsmith_add_vec2_u32(arg_2.yx, ~arg_2.wz), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.b.a.x - arg_1.c.x), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x - -912f))), arg_1.e.a.x <= _wgslsmith_f_op_f32(-1000f + arg_1.b.a.x), arg_1.b.c, vec2<i32>(i32(-1i) * -1i, arg_1.b.d.x >> (1u % 32u)) | abs(func_1(u_input.c.x).b.d), arg_1.c.xwy));
    var var_2 = true && !func_1(26640u).a.x;
    let var_3 = ~(~arg_1.d.x);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1845f)));
    return _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.e.d.x, u_input.b), var_1.b.d), select(select(vec2<i32>(1i, arg_1.b.d.x), var_1.e.d, vec2<bool>(arg_1.e.b, var_1.e.b)), arg_1.e.d, any(vec4<bool>(true, arg_0, var_1.a.x, true))) << (~abs(arg_1.d) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_mult_i32(arg_1.b.d.x, firstLeadingBit(_wgslsmith_sub_i32(-738i, arg_1.b.d.x))), arg_1.e.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-802f + 1145f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(746f)) * _wgslsmith_f_op_f32(-1387f - 359f))))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-382f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1169f, -404f)) + _wgslsmith_f_op_f32(ceil(337f))) * -345f)), func_4(true, func_1(u_input.a.x), vec4<u32>(~(~u_input.a.x), firstTrailingBit(u_input.c.x << (81042u % 32u)), _wgslsmith_add_u32(39088u, 1u) & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.c.x, 17624u, 45700u), vec4<u32>(4294967295u, 4294967295u, 1u, u_input.c.x)), 4068u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-func_2(u_input.a.x & 11352u, u_input.c, -1439f).e))));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_div_i32(var_0.d.x, u_input.b), u_input.b);
    let var_2 = min(vec3<i32>(func_4(var_0.b, Struct_3(vec2<bool>(var_0.b, false), Struct_1(var_0.e.zz, true, 2320f, vec2<i32>(1i, var_0.d.x), var_0.e), vec4<f32>(var_0.c, -983f, -749f, var_0.a.x), u_input.c.zx, var_0), select(u_input.c, vec4<u32>(u_input.c.x, 4294967295u, u_input.a.x, u_input.a.x), true)).x, abs(func_1(94249u).e.d.x), ~35889i), ~firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, var_0.d.x, var_0.d.x), vec3<i32>(1i, -1i, -2147483647i)))) | vec3<i32>(0i, 26042i, -2147483647i);
    var var_3 = func_2(u_input.a.x, abs(~vec4<u32>(3234u, 4294967295u, 0u, u_input.a.x)) << (abs(u_input.a) % vec4<u32>(32u)), var_0.a.x).d.x ^ -46104i;
    var var_4 = reverseBits(select(vec4<i32>(var_2.x & 0i, var_2.x, abs(-1i), var_1), vec4<i32>(var_2.x, _wgslsmith_dot_vec2_i32(var_0.d, vec2<i32>(-1i, var_0.d.x)), 5189i, var_0.d.x & var_0.d.x), !all(vec4<bool>(false, false, false, var_0.b)))) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 5075u, u_input.a.x, 1u), u_input.a), _wgslsmith_dot_vec3_u32(u_input.c.zyz, u_input.a.zwy), 122622u, ~4294967295u), vec4<u32>(29429u & u_input.a.x, u_input.c.x, u_input.a.x >> (9150u % 32u), firstTrailingBit(4294967295u))) % vec4<u32>(32u));
    let var_5 = u_input.c;
    let var_6 = all(vec2<bool>(_wgslsmith_clamp_i32(1i, func_2(1u, var_5, var_0.c).d.x, -var_4.x) >= (1i | abs(u_input.b)), -(~(-1i)) != _wgslsmith_sub_i32(i32(-1i) * -2147483647i, _wgslsmith_add_i32(var_2.x, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_4.zz, u_input.b);
}

