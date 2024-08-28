struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-658f, -288f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_div_f32(360f, -778f), _wgslsmith_f_op_f32(ceil(1000f))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-489f, -321f)))))));
    let var_1 = arg_0;
    let var_2 = -_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(30358i, 2147483647i, arg_1.a.x, 0i) & -vec4<i32>(arg_2.a.x, -28599i, arg_2.a.x, -15425i), (vec4<i32>(arg_2.a.x, -1i, arg_1.a.x, -3966i) ^ vec4<i32>(2147483647i, arg_1.a.x, 0i, 12437i)) & select(vec4<i32>(arg_2.a.x, -1i, arg_1.a.x, arg_2.a.x), vec4<i32>(40407i, -31635i, arg_2.a.x, arg_1.a.x), false)), arg_1.a.x);
    let var_3 = ~vec4<i32>(firstLeadingBit(_wgslsmith_mod_i32(firstTrailingBit(var_2), arg_2.a.x)), _wgslsmith_mult_i32(var_2, _wgslsmith_add_i32(_wgslsmith_div_i32(arg_2.a.x, var_2), 0i)), arg_1.a.x << (~u_input.d.x % 32u), -32466i);
    let var_4 = ~arg_0.x;
    return !(!(!arg_1.c) || true);
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = arg_0.b.x;
    let var_1 = _wgslsmith_f_op_f32(-828f * arg_1);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, var_1, arg_1))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, var_1, var_1, 540f), vec4<f32>(951f, var_1, -458f, arg_1), true)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, arg_1))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1773f, var_1, -785f, var_1)))), vec4<bool>(true, !(!arg_0.c), !all(vec4<bool>(true, arg_0.c, arg_0.c, true)), arg_0.c))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-610f, var_1, arg_1, arg_1)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(432f, arg_1, 967f, 1566f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(666f, arg_1, 175f, var_1), vec4<f32>(-641f, -846f, arg_1, 704f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, -1082f, -1179f, 586f), vec4<f32>(1426f, arg_1, -1738f, var_1))))), false)));
    let var_3 = Struct_1(vec3<i32>(arg_0.a.x, firstLeadingBit(arg_0.a.x), arg_0.a.x), vec3<u32>(var_0 & ~0u, ~arg_0.b.x, countOneBits(~(~var_0))), arg_0.c, vec4<u32>(0u, u_input.c.x, ~(~var_0), ~u_input.d.x));
    let var_4 = any(!select(!vec3<bool>(var_3.c, arg_0.c, false), !(!vec3<bool>(true, arg_0.c, var_3.c)), arg_0.c));
    return _wgslsmith_dot_vec2_u32(abs(min(max(var_3.b.xy ^ u_input.c.zx, vec2<u32>(u_input.d.x, 29100u)), min(vec2<u32>(57000u, 0u), vec2<u32>(1u, 0u)))), ~u_input.d.xz);
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-108f - 411f), -1000f)) + 426f));
    var var_1 = vec2<f32>(1f, var_0);
    var var_2 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(-_wgslsmith_add_i32(-20214i, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 1i) << (u_input.c.wwy % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i))), -_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 19838i, -14001i), _wgslsmith_mult_vec3_i32(vec3<i32>(34808i, 1i, 1i), vec3<i32>(-57769i, -28839i, -1i))), countOneBits(i32(-1i) * -26800i)), vec3<u32>(~_wgslsmith_div_u32(103177u, u_input.a.x), u_input.c.x, ~_wgslsmith_mod_u32(u_input.d.x, 52313u)) ^ u_input.c.xyx, true, vec4<u32>(u_input.b.x, u_input.d.x, func_4(Struct_1(vec3<i32>(1i, -6274i, -13776i), abs(vec3<u32>(u_input.c.x, 8030u, 1u)), func_3(vec2<u32>(700u, 0u), Struct_1(vec3<i32>(-1i, 0i, 0i), vec3<u32>(u_input.a.x, u_input.b.x, 4294967295u), false, vec4<u32>(u_input.b.x, 0u, u_input.c.x, 2418u)), Struct_1(vec3<i32>(-27682i, 0i, -1i), vec3<u32>(4294967295u, 9391u, u_input.c.x), false, u_input.d), vec4<bool>(false, true, true, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 84794u, 13781u), u_input.d, u_input.c)), var_1.x), 69014u));
    let var_3 = _wgslsmith_div_f32(var_1.x, -1687f);
    let var_4 = Struct_1(var_2.a, min(vec3<u32>(3209u, _wgslsmith_mod_u32(max(u_input.d.x, 69420u), _wgslsmith_div_u32(1u, u_input.d.x)), var_2.b.x), max(vec3<u32>(firstTrailingBit(0u), ~u_input.b.x, ~u_input.b.x), u_input.c.xwx)), var_2.c, ~(~abs(_wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(12782u, u_input.d.x, 1u, u_input.a.x)))));
    return ~max(countOneBits(vec4<u32>(61561u, 339u, 6291u, var_4.d.x)) << (reverseBits(~var_4.d) % vec4<u32>(32u)), ~(~u_input.d));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>) -> f32 {
    let var_0 = (firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(u_input.c.x, u_input.d.x), max(arg_1.x, 26894u), 26097u, _wgslsmith_mod_u32(27665u, 4294967295u))) >> (~((vec4<u32>(49275u, u_input.c.x, u_input.d.x, 33737u) | u_input.c) | ~vec4<u32>(u_input.b.x, arg_1.x, 47654u, arg_1.x)) % vec4<u32>(32u))) & select(abs(u_input.c), ~vec4<u32>(select(arg_1.x, u_input.d.x, false), ~u_input.c.x, 1u, 1u), vec4<bool>(any(vec3<bool>(true, false, false)), true, true, !(-375f < arg_0.x)));
    var var_1 = _wgslsmith_mod_u32(1u, var_0.x >> ((_wgslsmith_mod_u32(81642u >> (u_input.c.x % 32u), select(u_input.a.x, 91267u, true)) >> (~8488u % 32u)) % 32u));
    var_1 = _wgslsmith_dot_vec4_u32(u_input.a, func_2() | firstLeadingBit(u_input.a & vec4<u32>(34451u, 11952u, 45571u, arg_1.x))) >> (48587u % 32u);
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x)))))));
    let var_3 = _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(select(arg_1.x, 4294967295u, true), ~arg_1.x, _wgslsmith_clamp_u32(abs(arg_1.x), var_0.x, 11660u), arg_1.x)), vec4<u32>(~u_input.b.x, u_input.a.x >> (firstTrailingBit(u_input.c.x) % 32u), ~1u, _wgslsmith_sub_u32(1u, var_0.x ^ abs(var_0.x))));
    return _wgslsmith_f_op_f32(var_2 - 211f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1335f, 481f, -622f))), vec3<u32>(57958u >> (u_input.a.x % 32u), min(4294967295u, u_input.c.x), 38979u & u_input.c.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-677f - 668f), _wgslsmith_f_op_f32(func_1(vec3<f32>(227f, -340f, 1000f), vec3<u32>(u_input.c.x, 7199u, 7229u))), true)))));
    let var_1 = true;
    var var_2 = Struct_1(vec3<i32>(-select(1i, 1i, true), -1i, i32(-1i) * -(i32(-1i) * -1049i)), ~_wgslsmith_div_vec3_u32(u_input.d.xyy, _wgslsmith_mod_vec3_u32(func_2().ywy, min(vec3<u32>(u_input.b.x, 1u, 4294967295u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)))), var_1, ~firstLeadingBit(~firstLeadingBit(u_input.c)));
    var var_3 = vec4<bool>(var_1, all(select(vec2<bool>(!var_2.c, var_2.c | false), !vec2<bool>(var_2.c, false), select(select(vec2<bool>(var_2.c, var_1), vec2<bool>(var_1, false), var_2.c), vec2<bool>(true, true), any(vec4<bool>(var_1, false, true, var_2.c))))), true, select(_wgslsmith_sub_u32(max(u_input.d.x, 11715u), u_input.a.x) < 1u, all(vec2<bool>(true, !var_2.c)), var_1));
    var_2 = Struct_1(vec3<i32>(~var_2.a.x, abs(_wgslsmith_sub_i32(-2147483647i, var_2.a.x)), var_2.a.x) | var_2.a, u_input.d.wzy, true, ~vec4<u32>(~min(u_input.a.x, 1u), ~4294967295u, ~abs(1332u), ~func_2().x));
    var var_4 = ~var_2.a;
    var_4 = select(-select(var_2.a, _wgslsmith_div_vec3_i32(var_2.a >> (u_input.d.yyz % vec3<u32>(32u)), -var_2.a), !select(vec3<bool>(var_1, var_2.c, false), vec3<bool>(var_1, var_1, false), vec3<bool>(true, var_2.c, true))), -(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_4.x, var_4.x, -1i), vec3<i32>(-1801i, 43592i, -2147483647i), vec3<i32>(0i, -1i, var_2.a.x))), select(var_3.zww, select(vec3<bool>(var_3.x, var_1 | true, true), vec3<bool>(!var_1, all(vec2<bool>(var_3.x, false)), -757f < var_0), !select(var_3.zww, vec3<bool>(true, var_2.c, true), var_3.x)), var_2.c));
    let var_5 = Struct_1(var_2.a, vec3<u32>(~(_wgslsmith_div_u32(32699u, 82304u) | ~var_2.b.x), 0u, firstLeadingBit(var_2.d.x)), _wgslsmith_f_op_f32(-var_0) != -431f, ~_wgslsmith_clamp_vec4_u32(var_2.d << (~vec4<u32>(var_2.d.x, 0u, u_input.a.x, var_2.d.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(var_2.d, vec4<u32>(var_2.d.x, u_input.a.x, var_2.b.x, 127344u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, var_2.b.x, u_input.c.x), u_input.c), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, var_2.d.x), ~u_input.d)));
    let var_6 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_0)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, var_0))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

