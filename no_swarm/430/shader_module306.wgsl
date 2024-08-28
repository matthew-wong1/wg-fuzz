struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> bool {
    var var_0 = arg_0;
    var_0 = Struct_1(~vec3<u32>(countOneBits(1u), arg_0.c.x, firstLeadingBit(71951u)), var_0.b, arg_0.c, -countOneBits(~(vec4<i32>(u_input.c.x, arg_0.d.x, -1i, 8228i) ^ vec4<i32>(arg_0.d.x, arg_0.d.x, 2147483647i, 5704i))));
    let var_1 = !(!select(select(vec2<bool>(true, true), select(vec2<bool>(arg_0.b, var_0.b), vec2<bool>(arg_0.b, true), vec2<bool>(arg_0.b, var_0.b)), false), select(select(vec2<bool>(false, true), vec2<bool>(var_0.b, arg_1.b), vec2<bool>(false, var_0.b)), vec2<bool>(arg_1.b, var_0.b), select(vec2<bool>(true, arg_0.b), vec2<bool>(false, false), vec2<bool>(true, true))), true));
    let var_2 = ~32450i;
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 - arg_2)));
    return !(!any(!vec3<bool>(arg_1.b, true, true)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> bool {
    let var_0 = arg_0.d.xwy >> (~(~u_input.d.yyw) % vec3<u32>(32u));
    let var_1 = ~min(reverseBits(vec4<i32>(1i, -9952i, -57790i, arg_0.d.x) | ~arg_3.d), ~(firstLeadingBit(arg_0.d) & arg_0.d));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f - -1938f))));
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, 1832f, -1203f) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-955f, var_2, -555f), vec3<f32>(706f, 286f, -643f)))))))));
    let var_4 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(~2147483647i, min(var_1.x, _wgslsmith_dot_vec4_i32(arg_0.d, arg_0.d))), 2147483647i, _wgslsmith_sub_i32(-48954i, arg_0.d.x), -17296i), vec4<i32>(firstTrailingBit(min(i32(-1i) * -31479i, max(0i, 3078i))), _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_1.x, var_1.x) & 22491i, 1i, countOneBits(_wgslsmith_dot_vec4_i32(var_1, var_1))), -1i, -(~(~(-32606i)))));
    return arg_0.b;
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d.x | u_input.d.x, 1u, ~0u), vec3<u32>(4390u, arg_0, 50043u)), func_4(Struct_1(~u_input.d.wyy, all(vec2<bool>(true, true)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, 31947u) ^ vec3<u32>(arg_0, u_input.d.x, 14322u), ~u_input.d.xxx), vec4<i32>(-1i, ~2147483647i, u_input.b, ~u_input.b)), (true == func_3(Struct_1(vec3<u32>(21836u, 20514u, arg_0), true, vec3<u32>(u_input.e, 60958u, 51532u), vec4<i32>(u_input.b, u_input.c.x, u_input.b, u_input.c.x)), Struct_1(u_input.d.ywx, true, vec3<u32>(u_input.e, 62906u, u_input.e), vec4<i32>(21973i, u_input.c.x, -3633i, u_input.b)), -353f)) & true, ~countOneBits(~46607u), Struct_1(_wgslsmith_add_vec3_u32(u_input.d.wzy, u_input.d.wyx), _wgslsmith_sub_i32(u_input.c.x, -2147483647i) < 25865i, vec3<u32>(~98950u, ~0u, u_input.e), ~vec4<i32>(u_input.b, 15060i, -1i, 17161i))), ~u_input.d.xyz, vec4<i32>(-1i) * -firstLeadingBit(~vec4<i32>(u_input.b, 20954i, 17759i, u_input.b)));
    let var_1 = select(!(!vec3<bool>(true, var_0.b, var_0.d.x != u_input.b)), select(select(vec3<bool>(!var_0.b, var_0.b, any(vec2<bool>(var_0.b, var_0.b))), vec3<bool>(!var_0.b, any(vec2<bool>(true, var_0.b)), true), !func_4(Struct_1(vec3<u32>(var_0.a.x, 0u, 31428u), true, var_0.a, var_0.d), true, 50180u, Struct_1(vec3<u32>(28054u, u_input.d.x, arg_0), false, vec3<u32>(var_0.a.x, 5013u, 1u), var_0.d))), !(!vec3<bool>(false, var_0.b, true)), var_0.b), select(!select(select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(var_0.b, true, false), false), select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(var_0.b, false, var_0.b), var_0.b), select(vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(false, false, true))), vec3<bool>(true == any(vec3<bool>(true, var_0.b, var_0.b)), true, true), _wgslsmith_mult_i32(27555i, -47412i) == (max(0i, u_input.b) << (_wgslsmith_clamp_u32(38819u, u_input.a, u_input.d.x) % 32u))));
    let var_2 = !vec2<bool>(true, var_0.b);
    var var_3 = Struct_1(var_0.a, false, ~vec3<u32>(96765u, abs(0u) << ((arg_0 | u_input.d.x) % 32u), 1u), ~(~(~abs(var_0.d))));
    var_3 = var_0;
    return _wgslsmith_f_op_f32(-1209f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-104f + -658f) - 223f))));
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<f32>(725f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1092f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(u_input.a)), _wgslsmith_f_op_f32(-1713f - -1384f)) - _wgslsmith_f_op_f32(step(-548f, _wgslsmith_f_op_f32(step(-1000f, -699f)))))), _wgslsmith_f_op_f32(f32(-1f) * -260f));
    var var_1 = _wgslsmith_div_f32(-823f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(u_input.d.x))))), _wgslsmith_f_op_f32(var_0.x * var_0.x)));
    return Struct_1(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(4137u, firstTrailingBit(15504u), _wgslsmith_sub_u32(1u, 1u)), u_input.d.xwy)), func_3(Struct_1(vec3<u32>(u_input.a, u_input.e, 4294967295u), true, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.d.x, 4294967295u), u_input.d.zwz), vec4<i32>(-2147483647i, u_input.c.x, u_input.b, u_input.c.x)), Struct_1(u_input.d.yzy, false, vec3<u32>(41725u, u_input.e, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.b, -10139i), vec4<i32>(2147483647i, u_input.c.x, 45697i, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-989f)))) & false, vec3<u32>(~0u, 1u, _wgslsmith_add_u32(countOneBits(u_input.d.x >> (u_input.d.x % 32u)), _wgslsmith_div_u32(0u, u_input.a) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(12071u, u_input.a, u_input.a, u_input.a), u_input.d))), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 38228i, -7605i), vec3<i32>(1i, u_input.b, 2147483647i)), _wgslsmith_clamp_i32(u_input.b, -33852i, u_input.c.x))), _wgslsmith_mult_i32(-2147483647i, firstLeadingBit(u_input.b)), u_input.b, -countOneBits(_wgslsmith_mod_i32(u_input.b, -43506i))));
}

fn func_5(arg_0: Struct_1) -> bool {
    let var_0 = func_1();
    let var_1 = 306f;
    var var_2 = Struct_1(min(vec3<u32>(abs(0u), min(arg_0.a.x, 4294967295u), 11031u ^ u_input.d.x), max(~vec3<u32>(u_input.a, 4294967295u, 4294967295u), ~vec3<u32>(var_0.c.x, u_input.e, 1349u))) << (u_input.d.xzz % vec3<u32>(32u)), true, vec3<u32>(_wgslsmith_div_u32(max(u_input.a, min(0u, u_input.e)), 0u), select(var_0.a.x, arg_0.c.x, true || arg_0.b) ^ ~39576u, 1u), vec4<i32>(var_0.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-13565i, -13146i, countOneBits(var_0.d.x)), vec3<i32>(_wgslsmith_div_i32(-1i, 2147483647i), min(u_input.c.x, 2147483647i), _wgslsmith_dot_vec4_i32(var_0.d, vec4<i32>(28988i, 2147483647i, arg_0.d.x, arg_0.d.x)))), _wgslsmith_add_i32(~u_input.c.x, u_input.b), reverseBits(_wgslsmith_div_i32(21014i, -1i))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, _wgslsmith_div_f32(1141f, -326f)) * var_1) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-629f * _wgslsmith_f_op_f32(sign(-742f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) * 2163f), _wgslsmith_f_op_f32(-1240f - _wgslsmith_f_op_f32(-1731f * 533f)), any(select(vec2<bool>(false, arg_0.b), vec2<bool>(false, arg_0.b), vec2<bool>(true, var_0.b))))))), _wgslsmith_f_op_f32(-1181f + 973f));
    var var_4 = vec2<i32>(var_2.d.x, firstLeadingBit(-80747i));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, !(!all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false))), !func_5(func_1()) & (_wgslsmith_f_op_f32(-1079f + _wgslsmith_f_op_f32(select(1574f, 1000f, true))) == _wgslsmith_f_op_f32(max(-451f, -1000f))));
    let var_1 = vec2<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(149f, _wgslsmith_f_op_f32(692f + -1000f))))) > -271f, true);
    var var_2 = func_1();
    var var_3 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~u_input.d.xz, u_input.d.xy), firstTrailingBit(select(~u_input.e, 0u << (var_2.a.x % 32u), all(vec3<bool>(false, false, var_1.x))))) != var_2.c.x;
    let var_4 = _wgslsmith_dot_vec2_i32(u_input.c.zy ^ firstLeadingBit(var_2.d.zy), vec2<i32>(_wgslsmith_clamp_i32(10164i, -2147483647i, i32(-1i) * -14504i), select(reverseBits(i32(-1i) * -26458i), -abs(-13587i), false)));
    var_3 = func_5(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(round(1017f)), _wgslsmith_f_op_f32(111f - -1116f), _wgslsmith_f_op_f32(186f - -148f)), vec3<f32>(2339f, _wgslsmith_f_op_f32(-1000f + 1051f), 545f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-949f, 378f, 564f) * vec3<f32>(-439f, -694f, 266f)) + vec3<f32>(438f, -1612f, 270f))))), _wgslsmith_mult_i32(2147483647i, var_4), u_input.c.xz, 0i);
}

