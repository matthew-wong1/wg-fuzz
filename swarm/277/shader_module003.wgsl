struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 101508u, 36104u, 4294967295u);

var<private> global1: vec3<i32> = vec3<i32>(-25910i, 0i, i32(-2147483648));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> u32 {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_div_i32(abs(abs(~(-6770i))), u_input.b.x), u_input.b.x);
    var var_1 = Struct_3(~global0.x, Struct_2(firstLeadingBit(44564u)), abs(~vec4<i32>(_wgslsmith_clamp_i32(1i, 36144i, global1.x), -3279i, 1i, u_input.a.x)), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1736f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-232f))))), 1682f));
    var var_2 = Struct_3(var_1.b.a, Struct_2(10986u), var_1.c, var_1.d);
    var_2 = Struct_3(~(~(28573u << (1u % 32u))), var_1.b, _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(390i, 22258i, var_2.c.x, var_0) & (var_2.c ^ vec4<i32>(var_0, u_input.d, 1i, var_2.c.x)), var_1.c), vec4<i32>(_wgslsmith_mult_i32(u_input.d, firstLeadingBit(2147483647i)), -46234i, firstTrailingBit(~2147483647i), u_input.d)), _wgslsmith_f_op_vec2_f32(-var_1.d));
    var_2 = Struct_3(80983u | _wgslsmith_add_u32(1u, 1u | select(u_input.c, 25510u, arg_0.x)), var_2.b, _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(reverseBits(-20543i), -2147483647i, var_2.c.x | 9411i, u_input.d), _wgslsmith_add_vec4_i32(var_1.c, ~vec4<i32>(var_0, var_1.c.x, -65199i, 74239i))), -abs(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.d, var_2.c.x, global1.x), vec4<i32>(global1.x, -7839i, var_1.c.x, u_input.a.x)))), vec2<f32>(1278f, -318f));
    return u_input.c << (arg_1.a % 32u);
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> bool {
    global1 = u_input.a;
    global1 = vec3<i32>(~(~(~global1.x)), reverseBits(~_wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(arg_0, 48878i))), -reverseBits(-26503i)) ^ vec3<i32>(~(~4383i) >> (u_input.c % 32u), global1.x, -17224i);
    global0 = ~(~_wgslsmith_div_vec4_u32((vec4<u32>(global0.x, arg_1.x, 1u, 0u) << (vec4<u32>(4294967295u, 27104u, 12958u, 68075u) % vec4<u32>(32u))) & firstLeadingBit(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 1u)), vec4<u32>(func_3(vec3<bool>(false, true, true), Struct_2(4294967295u)), u_input.c, 29960u, global0.x)));
    global1 = u_input.a & vec3<i32>(-44770i, _wgslsmith_mod_i32(abs(0i), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(global1.x, u_input.a.x, -18141i))) >> (0u % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-57521i, 2147483647i, arg_0, u_input.d), vec4<i32>(41340i, u_input.a.x, global1.x, 1i)), arg_0) & u_input.d);
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(127f, 1737f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(590f, 479f) * vec2<f32>(-123f, -886f)))))), ~(~(~vec4<u32>(6781u, global0.x, 68969u, global0.x))));
    return !(!any(vec4<bool>(true, false, false, true)) || !any(vec3<bool>(false, false, false))) && false;
}

fn func_4(arg_0: bool, arg_1: vec2<f32>) -> u32 {
    global0 = abs(abs(firstLeadingBit(abs(vec4<u32>(global0.x, 1u, global0.x, 67676u))))) >> (_wgslsmith_mult_vec4_u32(select(~select(vec4<u32>(u_input.c, 4294967295u, 18067u, 4294967295u), vec4<u32>(u_input.c, 30697u, u_input.c, 2660u), vec4<bool>(arg_0, arg_0, true, false)), vec4<u32>(1u, global0.x, max(global0.x, 0u), ~global0.x), !select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, false, true), vec4<bool>(arg_0, true, true, true))), ~abs(vec4<u32>(28481u, u_input.c, u_input.c, 4294967295u))) % vec4<u32>(32u));
    let var_0 = vec3<u32>(select(_wgslsmith_add_u32(u_input.c, global0.x), _wgslsmith_mod_u32(~u_input.c, abs(func_3(vec3<bool>(arg_0, true, arg_0), Struct_2(global0.x)))), select(false, !arg_0, global0.x <= 4294967295u)), ~min(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(27922u, 35713u, global0.x), vec3<u32>(global0.x, global0.x, 4294967295u)), abs(u_input.c)), abs(reverseBits(u_input.c))), 4294967295u);
    let var_1 = ~select(~_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, 12602i, -12947i, 2147483647i), vec4<i32>(74746i, 24727i, -1i, global1.x)), ~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-20545i, 36139i, 2147483647i, u_input.d), vec4<i32>(global1.x, u_input.d, -27459i, u_input.a.x)), vec4<i32>(1i, u_input.d, u_input.b.x, global1.x) >> (vec4<u32>(0u, 0u, 4294967295u, 0u) % vec4<u32>(32u))), !((false != arg_0) || true));
    global0 = firstLeadingBit(~vec4<u32>(select(0u ^ var_0.x, func_3(vec3<bool>(arg_0, arg_0, arg_0), Struct_2(var_0.x)), arg_0), (1u ^ global0.x) | min(4294967295u, var_0.x), 1u, abs(49089u)));
    global1 = min(~vec3<i32>(global1.x, -653i, u_input.d), vec3<i32>(firstTrailingBit(_wgslsmith_clamp_i32(global1.x, -55848i, global1.x) ^ ~global1.x), countOneBits(-2147483647i), _wgslsmith_add_i32((u_input.d << (u_input.c % 32u)) & ~(-15824i), _wgslsmith_add_i32(~u_input.a.x, _wgslsmith_sub_i32(-9759i, global1.x)))));
    return _wgslsmith_sub_u32(~(global0.x << (~global0.x % 32u)) & var_0.x, 1u);
}

fn func_1() -> u32 {
    global1 = u_input.a;
    global1 = vec3<i32>(~(((i32(-1i) * -34573i) ^ _wgslsmith_div_i32(global1.x, -25580i)) << (4294967295u % 32u)), i32(-1i) * -1i, u_input.b.x);
    let var_0 = Struct_2(~func_4(func_2(_wgslsmith_add_i32(1i, 45646i), global0.xww), vec2<f32>(1000f, _wgslsmith_f_op_f32(1411f + 1000f))));
    var var_1 = Struct_2(abs(global0.x));
    let var_2 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, ~_wgslsmith_add_u32(26190u, u_input.c), u_input.c, ~1u), vec4<u32>(abs(var_0.a ^ 99005u), _wgslsmith_mod_u32(global0.x, _wgslsmith_sub_u32(var_0.a, var_1.a)), 48520u, abs(global0.x))));
    return 54325u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-554f, -1277f)))), -194f));
    global1 = u_input.a;
    global1 = vec3<i32>(~(-reverseBits(countOneBits(64241i))), _wgslsmith_mod_i32(-20478i, (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 1i, u_input.a.x), vec3<i32>(6496i, 2147483647i, -1i)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c, global0.x), vec3<u32>(global0.x, global0.x, global0.x)) % 32u)) & min(~u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-15382i, u_input.d), vec2<i32>(10046i, 68881i)))), global1.x);
    global0 = vec4<u32>(0u, global0.x, _wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(0u, u_input.c, u_input.c, 26661u)), ~vec4<u32>(~36678u, global0.x, select(u_input.c, 114592u, false), 1u)), global0.x);
    var var_1 = vec4<u32>((57480u ^ reverseBits(_wgslsmith_mod_u32(global0.x, u_input.c))) & 47005u, _wgslsmith_sub_u32(~firstLeadingBit(16292u), global0.x), 1u, 1u | ~global0.x);
    global0 = ~vec4<u32>(3947u, ~select(max(34869u, 1u), func_1(), true), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, ~u_input.c, u_input.c), ~(vec3<u32>(global0.x, global0.x, 0u) >> (vec3<u32>(24650u, var_1.x, var_1.x) % vec3<u32>(32u)))));
    var var_2 = true;
    let var_3 = Struct_3(func_4(!(var_0.x != 314f), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x)) & global0.x, Struct_2(_wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(0u, 1u)), min(~var_1.x, _wgslsmith_div_u32(87543u, 1u)))), vec4<i32>(-1i & u_input.d, _wgslsmith_dot_vec3_i32(abs(u_input.a), max(vec3<i32>(u_input.b.x, -6710i, 48420i), u_input.a ^ vec3<i32>(-2147483647i, -12776i, -2147483647i))), -19941i, ~u_input.a.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(601f, var_0.x), var_0, false)))) * var_0), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 186f) * var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), var_0, true)))))));
    var var_4 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(var_3.d, var_3.d));
}

