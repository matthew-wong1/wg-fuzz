struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: u32) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(~(arg_0 >> (arg_3 % 32u)), 7934u, 1u, _wgslsmith_div_u32(48053u | arg_3, ~arg_0)), reverseBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, 35088u, arg_3), vec4<u32>(4294967295u, arg_3, u_input.a, arg_3)), 81088u, arg_3, ~arg_3))), arg_0, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(472f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-894f, -684f)))))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), true)));
    var var_1 = !var_0.d.x;
    var_1 = firstLeadingBit(~countOneBits(_wgslsmith_add_i32(arg_2.x, -2147483647i))) > -2147483647i;
    var var_2 = true;
    let var_3 = arg_0;
    return var_0.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> vec2<u32> {
    var var_0 = Struct_1(~(~(func_3(47935u, u_input.b, vec3<i32>(-64026i, arg_1, 19079i), 0u) | _wgslsmith_add_vec4_u32(vec4<u32>(29527u, 4294967295u, u_input.a, arg_0.x), vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u)))), u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(871f, 1000f) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -885f) - vec2<f32>(-445f, 872f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(221f, -1113f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(923f, -2014f)))), !vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, u_input.a <= max(u_input.a, 56148u)));
    let var_1 = Struct_1(vec4<u32>(74430u, _wgslsmith_mult_u32(u_input.a, max(4294967295u, 15052u)), abs(4294967295u), ~u_input.a) | firstLeadingBit(var_0.a), ~var_0.b, _wgslsmith_f_op_vec2_f32(-var_0.c), var_0.d);
    var var_2 = var_1;
    let var_3 = var_1;
    var var_4 = var_3;
    return firstTrailingBit(vec2<u32>(arg_0.x, ~(~var_2.b)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> u32 {
    let var_0 = arg_0.c;
    var var_1 = func_2(arg_0.a.yyz, _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(u_input.b, ~vec4<i32>(-2147483647i, -1i, u_input.b.x, 60312i))));
    var_1 = arg_0.a.wy;
    let var_2 = var_1.x;
    var var_3 = !any(select(!(!arg_0.d), !(!arg_0.d), false));
    return select(arg_0.b, 1u | (4294967295u | ~(~var_1.x)), arg_0.d.x);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = select(!arg_3.d.x, all(arg_3.d.yx), false);
    let var_1 = arg_2;
    let var_2 = arg_3.c.x;
    var var_3 = -_wgslsmith_add_i32(~u_input.b.x, -1322i);
    let var_4 = Struct_1(vec4<u32>(u_input.a, _wgslsmith_div_u32(func_3(~u_input.a, vec4<i32>(38142i, -2147483647i, 6297i, 36390i), u_input.b.wzw << (vec3<u32>(1u, u_input.a, 0u) % vec3<u32>(32u)), arg_1).x, _wgslsmith_div_u32(countOneBits(0u), arg_2.a.x)), ~select(4294967295u, ~u_input.a, true), u_input.a & _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.b, var_1.b, 2909u, 0u), arg_3.a)), ~abs(arg_3.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(670f, var_2))))))) + var_1.c), !arg_3.d);
    return Struct_1(max(~(arg_3.a & var_1.a), _wgslsmith_div_vec4_u32(arg_3.a ^ vec4<u32>(1u, 0u, arg_0.b, u_input.a), ~vec4<u32>(0u, arg_1, var_4.a.x, u_input.a))) << (arg_0.a % vec4<u32>(32u)), abs(var_4.b) | 29437u, vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.x), 210f), arg_2.d);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a, arg_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-arg_0.c.x)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1306f, arg_0.c.x)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-206f, 427f) - _wgslsmith_f_op_vec2_f32(max(arg_0.c, vec2<f32>(-1427f, 1415f)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.c.x, arg_0.c.x), _wgslsmith_f_op_vec2_f32(select(arg_0.c, arg_0.c, arg_0.d.x)))), true))), arg_0.d);
    var var_1 = select(vec3<bool>(false, var_0.d.x, var_0.d.x), select(vec3<bool>(var_0.d.x, any(var_0.d.yz), all(!vec4<bool>(true, false, var_0.d.x, var_0.d.x))), func_4(func_4(Struct_1(vec4<u32>(1u, 1u, 11892u, arg_0.a.x), arg_0.b, vec2<f32>(-1157f, arg_0.c.x), var_0.d), var_0.a.x, var_0, Struct_1(var_0.a, 1u, vec2<f32>(-1613f, -443f), var_0.d)), ~_wgslsmith_div_u32(u_input.a, arg_0.b), func_4(arg_0, var_0.a.x, arg_0, func_4(arg_0, var_0.a.x, arg_0, Struct_1(vec4<u32>(4294967295u, 9766u, arg_0.a.x, arg_0.b), 11760u, vec2<f32>(arg_0.c.x, 1282f), vec4<bool>(arg_0.d.x, true, false, false)))), func_4(func_4(Struct_1(vec4<u32>(32060u, 0u, arg_0.b, 0u), u_input.a, vec2<f32>(533f, var_0.c.x), var_0.d), var_0.a.x, Struct_1(arg_0.a, arg_0.b, vec2<f32>(-357f, 1296f), var_0.d), var_0), firstLeadingBit(4294967295u), arg_0, var_0)).d.xyx, false), false);
    var var_2 = Struct_1(var_0.a, _wgslsmith_mult_u32(select(min(~u_input.a, ~var_0.b), ~43795u, func_4(var_0, _wgslsmith_add_u32(arg_0.a.x, u_input.a), var_0, var_0).d.x), firstLeadingBit(arg_0.b)), _wgslsmith_f_op_vec2_f32(-arg_0.c), arg_0.d);
    return var_0;
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(27432u, 14473u), arg_2.xy), ~(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.x, arg_2.x), vec2<u32>(1u, 0u)) | arg_2.xx)) | select(arg_0.a.xz, ~arg_2.yx, vec2<bool>(func_5(func_4(Struct_1(arg_0.a, arg_2.x, vec2<f32>(1172f, arg_0.c.x), vec4<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x, false)), 0u, arg_0, Struct_1(vec4<u32>(71385u, arg_0.b, u_input.a, 4294967295u), arg_2.x, arg_0.c, arg_0.d))).d.x, any(!arg_0.d)));
    var var_1 = max(2147483647i, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b.x | 18580i, i32(-1i) * -2147483647i), _wgslsmith_clamp_i32(68240i, -2147483647i & u_input.b.x, -u_input.b.x)) << (~(~(~10860u)) % 32u));
    let var_2 = arg_0.d.x;
    var_1 = select(0i | u_input.b.x, -84764i, var_2) ^ -1i;
    var var_3 = !func_4(Struct_1((vec4<u32>(35054u, 42824u, var_0.x, 4294967295u) << (arg_0.a % vec4<u32>(32u))) & vec4<u32>(1u, 0u, 1u, 0u), 39080u << ((arg_2.x << (arg_0.a.x % 32u)) % 32u), arg_0.c, arg_0.d), ~(~max(66734u, var_0.x)), Struct_1(~vec4<u32>(4294967295u, var_0.x, 0u, 29900u), arg_0.b, vec2<f32>(arg_1, -349f), func_5(Struct_1(arg_0.a, arg_2.x, arg_0.c, arg_0.d)).d), Struct_1(arg_0.a, select(u_input.a, arg_2.x, false) & 15160u, vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.c.x, -340f)), arg_1), select(func_4(arg_0, 1u, Struct_1(vec4<u32>(arg_0.b, 46629u, 1u, arg_0.a.x), arg_0.b, vec2<f32>(arg_0.c.x, -892f), vec4<bool>(var_2, true, var_2, arg_0.d.x)), Struct_1(vec4<u32>(47714u, 10435u, arg_0.b, arg_0.b), 1u, arg_0.c, arg_0.d)).d, vec4<bool>(arg_0.d.x, var_2, var_2, true), arg_0.d))).d;
    return Struct_1(~func_5(arg_0).a, _wgslsmith_add_u32(10496u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_0.a.yy & arg_2.yz, arg_2.yz), ~_wgslsmith_dot_vec4_u32(arg_0.a, arg_0.a))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c) - arg_0.c)))), !(!select(arg_0.d, select(arg_0.d, arg_0.d, false), any(vec3<bool>(var_3.x, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.yzy;
    var var_1 = func_6(func_5(func_4(Struct_1(abs(vec4<u32>(61666u, 4294967295u, u_input.a, u_input.a)), ~u_input.a, vec2<f32>(886f, -1325f), vec4<bool>(true, true, true, true)), _wgslsmith_mult_u32(u_input.a, func_1(Struct_1(vec4<u32>(17074u, 56565u, u_input.a, u_input.a), 5278u, vec2<f32>(-540f, 1061f), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, true, false), 2613u)), Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 45409u), vec4<u32>(32029u, u_input.a, u_input.a, 33176u)), 56290u, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, -978f))), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))), Struct_1(~vec4<u32>(0u, u_input.a, 1u, 1u), 1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1000f) * vec2<f32>(1000f, -131f)), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(sign(-386f)), countOneBits(vec3<u32>(u_input.a, min(_wgslsmith_sub_u32(4294967295u, 4294967295u), ~u_input.a), _wgslsmith_clamp_u32(~u_input.a, _wgslsmith_sub_u32(u_input.a, 1u), u_input.a))));
    var var_2 = Struct_1(~select(vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.a.xz, var_1.a.xy), 0u, abs(u_input.a), u_input.a), _wgslsmith_add_vec4_u32(abs(vec4<u32>(var_1.b, var_1.a.x, 1u, var_1.a.x)), vec4<u32>(u_input.a, 15384u, 0u, var_1.a.x)), var_1.d), _wgslsmith_dot_vec4_u32(var_1.a, ~var_1.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-963f, var_1.c.x), var_1.c, vec2<bool>(var_1.d.x, false))) * vec2<f32>(727f, var_1.c.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(-825f, -1161f)))), vec4<bool>(var_1.c.x < _wgslsmith_div_f32(833f, var_1.c.x), true, var_1.d.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -597f), true)) != _wgslsmith_f_op_f32(1349f - var_1.c.x)));
    var var_3 = 2147483647i;
    var_2 = func_4(Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(var_2.a.zzy, var_1.a.yyx) | 45602u, 1u, ~var_2.a.x << (u_input.a % 32u), _wgslsmith_dot_vec3_u32(var_1.a.wxy, vec3<u32>(var_1.a.x, 95790u, var_2.b)) << (u_input.a % 32u)), _wgslsmith_clamp_u32(firstLeadingBit(u_input.a ^ var_2.b), ~u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 26805u, 1u), vec3<u32>(140079u, 4294967295u, 4294967295u)), vec3<u32>(1u, 1u, 4294967295u))), var_2.c, var_2.d), var_2.a.x, Struct_1(var_1.a, _wgslsmith_mod_u32(abs(u_input.a), var_1.a.x) & (reverseBits(u_input.a) ^ var_1.a.x), var_1.c, vec4<bool>(func_6(Struct_1(vec4<u32>(0u, var_1.a.x, var_1.a.x, var_2.a.x), 77767u, vec2<f32>(var_1.c.x, var_1.c.x), vec4<bool>(false, false, false, false)), -226f, vec3<u32>(u_input.a, 104798u, var_1.a.x)).d.x, true, var_1.d.x, var_2.d.x)), Struct_1(vec4<u32>(~countOneBits(var_2.b), abs(u_input.a), u_input.a, u_input.a), _wgslsmith_div_u32(func_6(func_6(Struct_1(var_2.a, 97162u, var_1.c, var_2.d), var_1.c.x, vec3<u32>(var_1.b, 47628u, 14247u)), _wgslsmith_f_op_f32(floor(663f)), abs(vec3<u32>(var_1.a.x, var_1.a.x, var_2.b))).b, var_1.b), vec2<f32>(var_1.c.x, 132f), vec4<bool>(false || (var_1.d.x != true), true, true, var_1.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(u_input.a), ~firstTrailingBit(21896u)), func_4(func_5(Struct_1(var_2.a, var_1.b, var_2.c, var_2.d)), 0u & ~var_2.a.x, Struct_1(~vec4<u32>(1u, u_input.a, 1u, 89790u), 29043u, var_1.c, select(vec4<bool>(true, false, var_2.d.x, var_2.d.x), var_2.d, vec4<bool>(true, var_1.d.x, false, var_2.d.x))), func_5(func_6(Struct_1(var_1.a, var_1.b, vec2<f32>(-1116f, 1074f), vec4<bool>(false, var_1.d.x, false, var_1.d.x)), -280f, vec3<u32>(var_2.a.x, var_2.a.x, var_1.a.x)))).a.x, var_2.b), var_0.x, vec4<u32>(countOneBits(countOneBits(51315u)) & var_1.a.x, 1u, var_1.b, var_2.a.x), var_0.x);
}

