struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> vec3<f32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), -992f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -824f))));
    var var_1 = -_wgslsmith_clamp_vec3_i32(-_wgslsmith_add_vec3_i32(abs(vec3<i32>(-35759i, -20700i, arg_0)), vec3<i32>(27774i, 42515i, arg_0) ^ vec3<i32>(29145i, -2147483647i, arg_0)), ~(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, arg_0, -2147483647i), vec3<i32>(arg_0, 2147483647i, 2147483647i)) << (~vec3<u32>(0u, 1u, u_input.a) % vec3<u32>(32u))), select(-vec3<i32>(arg_0, -18823i, -2147483647i), -vec3<i32>(arg_0, arg_0, -1i) << (vec3<u32>(25563u, 4294967295u, u_input.a) % vec3<u32>(32u)), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true))));
    var_1 = vec3<i32>(var_1.x, 57612i, _wgslsmith_mult_i32(1i, 0i));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-375f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -793f), -1375f, true)))), var_0.x, -194f);
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_3(arg_0))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f) * _wgslsmith_f_op_f32(abs(-1137f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, -1925f)), var_0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(652f, 853f)) * -273f)), -233f));
    let var_2 = Struct_1(vec3<i32>(arg_0, abs(_wgslsmith_mult_i32(arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -32931i, 2147483647i), vec3<i32>(arg_0, arg_0, 19055i)))), -17808i), !select(any(vec4<bool>(true, true, false, true)), all(vec2<bool>(false, false)), u_input.a < u_input.a) | (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(-215f + 1335f), true)) <= var_0.x), true, ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_0, arg_0) << (_wgslsmith_clamp_u32(u_input.a, u_input.a, 30411u) % 32u), firstLeadingBit(_wgslsmith_mod_i32(arg_0, 21879i)), arg_0));
    let var_3 = vec4<i32>(14080i, firstLeadingBit(arg_0), select(var_2.d | min(2147483647i, -arg_0), -reverseBits(-45295i), false), ~_wgslsmith_add_i32(select(1i, firstLeadingBit(arg_0), any(vec4<bool>(var_2.c, true, var_2.b, var_2.b))), 1i));
    let var_4 = vec4<bool>(false, select(false, var_2.b, var_2.b), false, var_2.c);
    return _wgslsmith_f_op_f32(f32(-1f) * -492f);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-770f, -1623f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -308f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1827f + 869f)), 1205f))) - vec4<f32>(_wgslsmith_f_op_f32(max(-790f, _wgslsmith_div_f32(1593f, -271f))), -2556f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-520f, 1123f, false))))), _wgslsmith_f_op_f32(step(-529f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-702f, -360f, true))))))));
    var var_1 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), true), false));
    var var_2 = Struct_2(Struct_1(select(-vec3<i32>(19533i, 2147483647i, 27944i), ~(-vec3<i32>(-4865i, 67912i, -46096i)), vec3<bool>(true, true, false)), !var_1.x | !var_1.x, var_1.x, 1i), Struct_1(firstLeadingBit(firstTrailingBit(reverseBits(vec3<i32>(20920i, 1i, 0i)))), false, false, -1i), vec4<u32>(u_input.a, ~(~0u), ~(u_input.a >> (u_input.a % 32u)) & max(u_input.a ^ u_input.a, 4294967295u), _wgslsmith_div_u32(_wgslsmith_mult_u32(~0u, u_input.a), 1u)), vec4<u32>(~abs(u_input.a), ~(~63496u), u_input.a, 0u), 0i);
    let var_3 = firstLeadingBit(u_input.a);
    var var_4 = Struct_1(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(select(var_2.a.a.zz, vec2<i32>(var_2.a.d, 2147483647i), var_2.b.c), var_2.a.a.xx), -(~var_2.e)), ~var_2.b.d & 7561i, 15492i), var_1.x, any(!select(select(vec4<bool>(var_2.a.c, var_1.x, true, false), vec4<bool>(var_2.a.c, true, var_1.x, true), vec4<bool>(false, var_1.x, true, true)), select(vec4<bool>(true, var_2.b.b, var_1.x, var_1.x), vec4<bool>(var_2.a.c, true, var_2.b.b, true), vec4<bool>(var_2.b.c, false, var_2.b.c, var_2.b.c)), true)), var_2.b.d);
    return Struct_1(-var_4.a, !(2147483647i >= (i32(-1i) * -var_4.a.x)), any(vec4<bool>(var_1.x, var_2.a.b, !all(var_1.wwy), true)), _wgslsmith_dot_vec3_i32(var_2.a.a, var_4.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(36751u, u_input.a);
    var var_1 = func_1();
    var var_2 = Struct_2(Struct_1(var_1.a, true, false, ~(var_1.a.x ^ _wgslsmith_dot_vec2_i32(var_1.a.zy, vec2<i32>(2147483647i, 2653i)))), func_1(), min(firstLeadingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 74669u, u_input.a, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 21736u, 0u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))), vec4<u32>(~_wgslsmith_mod_u32(u_input.a, 4294967295u), ~4294967295u, u_input.a, 4294967295u)), _wgslsmith_div_vec4_u32(countOneBits(countOneBits(~vec4<u32>(u_input.a, u_input.a, 1u, 31361u))), _wgslsmith_div_vec4_u32(abs(vec4<u32>(83463u, 4294967295u, u_input.a, 25435u)) ^ abs(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), vec4<u32>(4294967295u, 0u, ~98668u, u_input.a))), var_1.d);
    let var_3 = func_1();
    let var_4 = var_3.a.x;
    var_2 = Struct_2(Struct_1(var_3.a, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(3347u, u_input.a, 4294967295u)), var_2.c.wwy) > min(min(0u, 0u), u_input.a), !var_1.c, ~(-_wgslsmith_mult_i32(var_4, var_2.a.d))), Struct_1(_wgslsmith_div_vec3_i32(select(reverseBits(var_2.b.a), var_1.a, select(vec3<bool>(var_2.b.c, true, false), vec3<bool>(true, var_2.b.c, false), false)), var_2.b.a), var_2.b.c, any(vec2<bool>(true, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i | var_4, ~var_4, i32(-1i) * -1i), min(vec3<i32>(var_2.a.a.x, 11671i, var_4), var_1.a) >> (abs(vec3<u32>(20737u, 41603u, 1u)) % vec3<u32>(32u)))), abs(_wgslsmith_sub_vec4_u32(min(max(vec4<u32>(u_input.a, 1u, 1u, 39249u), var_2.c), reverseBits(vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u))), vec4<u32>(0u, ~var_2.d.x, 14967u, _wgslsmith_sub_u32(1u, 1u)))), vec4<u32>(_wgslsmith_mod_u32(24273u, firstTrailingBit(53051u)), var_2.d.x, ~1u, var_2.d.x), _wgslsmith_dot_vec4_i32(~(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, var_4, var_4, var_1.d), vec4<i32>(1i, var_2.e, var_3.a.x, var_3.a.x)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 1102i, -2147483647i, 59659i), vec4<i32>(var_3.a.x, -1i, var_4, var_2.e))), select(abs(firstLeadingBit(vec4<i32>(var_3.d, -4792i, 2147483647i, var_2.a.a.x))), max(vec4<i32>(-23156i, var_3.a.x, var_1.d, 22212i), -vec4<i32>(10145i, var_4, var_4, -4288i)), true)));
    let var_5 = Struct_1(_wgslsmith_div_vec3_i32(-firstTrailingBit(var_1.a | var_1.a), vec3<i32>(-abs(var_2.a.a.x), countOneBits(select(var_3.a.x, var_2.a.a.x, var_1.b)), ~_wgslsmith_div_i32(var_2.e, 1710i))), true || (u_input.a < abs(_wgslsmith_div_u32(24204u, 16684u))), true, var_3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -277f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1015f - _wgslsmith_div_f32(-418f, _wgslsmith_f_op_f32(ceil(-799f)))) - -1175f), ~_wgslsmith_sub_vec2_u32(countOneBits(select(var_2.d.yz, var_2.d.yx, var_5.c)), ~(vec2<u32>(u_input.a, 32186u) ^ vec2<u32>(var_2.d.x, var_2.c.x))), ~vec4<u32>(~u_input.a, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, var_2.c.x), 23758u), _wgslsmith_sub_u32(abs(var_2.c.x), firstTrailingBit(var_2.d.x)), ~(~var_2.d.x)), _wgslsmith_sub_i32(var_1.a.x, _wgslsmith_add_i32(~(~var_1.d), (i32(-1i) * -28001i) >> (1u % 32u))));
}

