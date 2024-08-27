struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: bool,
    e: vec3<f32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec3<bool> {
    return !(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, all(vec4<bool>(true, false, true, false))), select(false, false, false) & true));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_2(arg_0.c, func_3(-arg_0.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(174f))))), vec4<bool>(false, _wgslsmith_f_op_f32(trunc(arg_0.c.a.x)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1001f + arg_0.c.a.x)), !(true != !arg_0.b), arg_0.c.b.x), 1821f, arg_0.c);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(1171f - -137f));
    let var_2 = firstLeadingBit(~(~0u));
    var var_3 = min(reverseBits(~vec4<i32>(arg_2, arg_2, 0i, arg_2)) << (abs(vec4<u32>(29116u, ~var_2, ~var_2, firstTrailingBit(4294967295u))) % vec4<u32>(32u)), vec4<i32>(17301i, 2147483647i, ~arg_0.a, _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a.x, -arg_0.a, ~2147483647i), select(1i, ~arg_2, arg_1 || false))));
    let var_4 = arg_2;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a.a - _wgslsmith_f_op_vec3_f32(-arg_0.e)), arg_0.c.b, u_input.a, u_input.a.x), !select(arg_0.c.b, func_3(var_4, var_0.e.a.x), select(arg_0.c.b, !vec3<bool>(true, var_0.b.x, arg_1), -4315i >= arg_0.c.d)), vec4<bool>(!(33388u >= _wgslsmith_dot_vec3_u32(vec3<u32>(78832u, var_2, 21630u), vec3<u32>(0u, var_2, 34944u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(floor(-509f))) <= var_1.a, true, false | arg_0.d), _wgslsmith_div_f32(-221f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d + var_0.d) - -313f))), var_0.e);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-141f, arg_0.d, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1493f, -1275f, arg_0.e.b.x)) * 706f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -243f), -1705f, _wgslsmith_f_op_f32(round(arg_0.e.a.x)), _wgslsmith_f_op_f32(max(328f, -1000f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.a.x, -161f, -1484f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-325f, -1646f, arg_0.a.a.x))))))), !arg_0.c.zzx, _wgslsmith_add_vec3_i32(~arg_0.e.c, _wgslsmith_sub_vec3_i32(u_input.a, _wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(15299i, u_input.a.x, arg_0.a.d)))), func_2(Struct_3(-u_input.a.x, !arg_0.c.x, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, 661f, 299f)), !arg_0.a.b, abs(vec3<i32>(arg_0.a.c.x, u_input.a.x, u_input.a.x)), -2147483647i), arg_0.e.b.x, vec3<f32>(150f, _wgslsmith_f_op_f32(trunc(arg_0.e.a.x)), _wgslsmith_f_op_f32(1347f * 274f))), arg_0.e.b.x, u_input.a.x >> (arg_2.x % 32u)).a.c.x);
    let var_2 = !var_1.b.xz;
    let var_3 = _wgslsmith_f_op_vec4_f32(round(var_0));
    var var_4 = Struct_3(-21758i, (firstTrailingBit(_wgslsmith_mult_u32(arg_2.x, 45482u)) ^ firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(7244u, 16101u, 4294967295u), vec3<u32>(arg_2.x, 28384u, 1u)))) <= arg_2.x, Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a.a * vec3<f32>(arg_0.e.a.x, var_0.x, 885f)))), !vec3<bool>(4294967295u != arg_2.x, true, var_1.b.x), vec3<i32>(-2147483647i, -14272i, 12690i), _wgslsmith_clamp_i32(_wgslsmith_add_i32(-var_1.d, ~var_1.d), i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_1.c.x), vec2<i32>(u_input.a.x, -52139i)) & 2147483647i)), true, arg_0.a.a);
    return true;
}

fn func_1() -> vec3<bool> {
    return !select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, false, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), func_4(func_2(Struct_3(u_input.a.x, false, Struct_1(vec3<f32>(-1598f, -771f, -1788f), vec3<bool>(true, false, true), vec3<i32>(u_input.a.x, 1i, 42852i), -1i), false, vec3<f32>(625f, -1364f, 1667f)), false, u_input.a.x), Struct_4(322f), vec3<u32>(1u, 1u, 1u))), false & !any(vec3<bool>(true, false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(4662u & ~abs(_wgslsmith_clamp_u32(4294967295u, 1u, 31197u)));
    var var_1 = select(!func_1(), vec3<bool>(true, false, false), vec3<bool>(any(select(vec4<bool>(true, false, false, true), func_2(Struct_3(u_input.a.x, false, Struct_1(vec3<f32>(-1000f, 1138f, -1853f), vec3<bool>(true, true, true), vec3<i32>(35867i, u_input.a.x, 17194i), u_input.a.x), true, vec3<f32>(978f, 826f, 2991f)), false, u_input.a.x).c, true)), true, false || func_1().x));
    var_1 = func_1();
    var_1 = vec3<bool>(((var_0 | var_0) >> (var_0 % 32u)) >= ~reverseBits(_wgslsmith_clamp_u32(852u, 66956u, 1u)), !any(!func_2(Struct_3(2147483647i, var_1.x, Struct_1(vec3<f32>(193f, -187f, 160f), vec3<bool>(true, var_1.x, true), u_input.a, -36285i), var_1.x, vec3<f32>(-122f, -569f, -409f)), var_1.x, -1i).c), true);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-278f, -1168f, var_1.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-506f + -691f))) * 1f)));
    var_1 = !vec3<bool>((true & var_1.x) && !var_1.x, !any(vec3<bool>(true, true, var_1.x)), select(true, true, all(vec4<bool>(true, false, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -190f), var_2, vec4<f32>(var_2, _wgslsmith_f_op_f32(ceil(var_2)), 230f, var_2));
}

