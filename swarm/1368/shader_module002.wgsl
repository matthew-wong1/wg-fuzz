struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: bool = false;

var<private> global2: array<vec4<u32>, 26>;

var<private> global3: array<Struct_5, 18>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> bool {
    var var_0 = ~(-519i) ^ abs(i32(-1i) * -u_input.a.x);
    return all(!select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>) -> i32 {
    let var_0 = ~global2[_wgslsmith_index_u32(4294967295u, 26u)];
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(342f, 1330f, -440f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -276f, 681f) * vec3<f32>(-1087f, -390f, 1268f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1700f, 1000f, -1556f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(573f, 479f, -1192f) + vec3<f32>(1617f, -662f, 161f))))));
    let var_2 = ~(~vec2<i32>(-1621i, _wgslsmith_clamp_i32(45557i, arg_0.x, 8362i) ^ countOneBits(arg_0.x)));
    global3 = array<Struct_5, 18>();
    var var_3 = vec3<bool>(_wgslsmith_f_op_f32(-1f) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1286f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.x)))), true, true);
    return -46861i;
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: i32, arg_3: vec2<f32>) -> vec3<f32> {
    let var_0 = u_input.a.x;
    var var_1 = ~(~arg_0);
    global0 = _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(~select(vec4<i32>(arg_2, 42579i, global0.x, 2147483647i) ^ vec4<i32>(u_input.a.x, -30911i, 76142i, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, u_input.b, -2147483647i, global0.x), vec4<i32>(16255i, arg_2, 2147483647i, -2147483647i)), vec4<bool>(true, true, true, true)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(14360i, global0.x, var_0, 1i), -(vec4<i32>(var_0, u_input.b, 6474i, -11300i) << (global2[_wgslsmith_index_u32(arg_0, 26u)] % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(-vec4<i32>(-21117i, var_0, 1i, 14166i), _wgslsmith_mod_vec4_i32(vec4<i32>(9673i, 1i, -32942i, -52743i), vec4<i32>(36822i, -1i, 42325i, arg_2))))), -max(_wgslsmith_mod_vec4_i32(vec4<i32>(-42561i, var_0, global0.x, global0.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, global0.x, 0i, var_0), vec4<i32>(arg_2, -24839i, arg_2, var_0))), -_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, u_input.b, u_input.a.x, u_input.a.x), vec4<i32>(0i, -33620i, 40038i, global0.x))));
    let var_2 = _wgslsmith_div_i32(select(abs(global0.x), 39250i, any(vec3<bool>(false, false, false)) && all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), -40338i);
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0 | countOneBits(6285u), 0u, 77107u << ((arg_0 | arg_0) % 32u)), abs(arg_0)) | 22150u;
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(-123f * -715f)), -644f))));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -885f), 1167f))));
    global3 = array<Struct_5, 18>();
    global1 = _wgslsmith_f_op_f32(1631f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(927f, 1037f)))))) == _wgslsmith_f_op_f32(ceil(-906f));
    global3 = array<Struct_5, 18>();
    global2 = array<vec4<u32>, 26>();
    return select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, true)), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), true)), select(select(vec2<bool>(func_1(), true), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false))), vec2<bool>(any(vec4<bool>(true, true, true, true)), !(-20720i >= arg_1)), select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)))));
}

fn func_2(arg_0: u32) -> vec3<bool> {
    global0 = reverseBits(countOneBits(~(-select(vec4<i32>(u_input.a.x, -2147483647i, 0i, global0.x), vec4<i32>(global0.x, u_input.b, 2147483647i, global0.x), vec4<bool>(true, true, false, false)))));
    var var_0 = abs(arg_0) << (4294967295u % 32u);
    var_0 = 0u;
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-760f * -635f)))) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1100f))))), global0.x <= u_input.a.x, false);
    var var_2 = select(vec2<bool>(var_1.x, false), func_5(Struct_2(_wgslsmith_f_op_vec3_f32(func_4(73301u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(364f, 1848f)), func_3(global0.wz, vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(942f, -1390f), vec2<f32>(-1031f, 1015f)))))), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global0.x, -2147483647i, -1i) >> (vec4<u32>(arg_0, arg_0, 10078u, 10983u) % vec4<u32>(32u)), ~vec4<i32>(2147483647i, 0i, -2147483647i, -1i)) >> (~select(arg_0, arg_0, false) % 32u)), var_1.x);
    return vec3<bool>(func_1(), var_1.x, ~arg_0 < arg_0);
}

fn func_6(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_3) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-arg_2.c.a));
    let var_1 = _wgslsmith_dot_vec4_i32(min(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -1i, arg_2.d.x, -2147483647i), abs(vec4<i32>(-2147483647i, global0.x, u_input.a.x, u_input.a.x))), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(0i, -10921i, 0i, u_input.b)), -vec4<i32>(0i, 16639i, u_input.b, arg_2.d.x))), vec4<i32>(~countOneBits(u_input.a.x), _wgslsmith_div_i32(countOneBits(-22163i), _wgslsmith_add_i32(arg_2.d.x, global0.x)), 1i, global0.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x | global0.x, 28216i, -35237i, u_input.b), ~select(vec4<i32>(arg_2.d.x, -18280i, -33614i, arg_2.d.x), vec4<i32>(arg_2.d.x, 1i, u_input.a.x, global0.x), arg_1.x)), abs(vec4<i32>(arg_2.d.x, 0i, 2147483647i, arg_2.d.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(0i, -1i, 12345i, arg_2.d.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-12053i, u_input.a.x, 38920i, global0.x), vec4<i32>(-30528i, global0.x, arg_2.d.x, 39472i))), ~max(vec4<i32>(arg_2.d.x, -2147483647i, arg_2.d.x, arg_2.d.x), vec4<i32>(global0.x, global0.x, 3958i, -21107i)))));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.c.a.x, _wgslsmith_f_op_f32(-var_0.a.x))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.c.a.x + _wgslsmith_f_op_f32(arg_2.c.a.x - -2265f)), -806f)))));
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, 4294967295u), 18u)];
    let var_4 = _wgslsmith_f_op_vec2_f32(-var_3.b);
    return ~abs(abs(0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    global1 = func_1();
    var var_1 = -222f != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1541f, 1177f, false))) + -1330f), func_6(func_2(0u), vec4<bool>(false, true, true, true), Struct_3(true, Struct_1(vec3<f32>(1541f, 731f, 850f), vec3<bool>(true, false, false)), Struct_2(vec3<f32>(1149f, 2241f, 495f)), u_input.a, vec4<bool>(true, false, true, true))) <= 54873u));
    let var_2 = (max(_wgslsmith_add_i32(global0.x, abs(-38620i)), 0i) | ~abs(0i)) << (_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(27532u, 62950u, 68100u)), vec3<u32>(1u, 1u, 1u)) % 32u);
    let var_3 = 54737i;
    var var_4 = ~0u;
    let var_5 = firstTrailingBit(min(~1u, 36155u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~var_5, _wgslsmith_clamp_u32(1u, ~_wgslsmith_div_u32(0u, 22579u), 87875u)), ~max(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_5, 53078u), vec2<u32>(var_5, 0u), vec2<u32>(var_5, 1u)), vec2<u32>(var_5, var_5) & vec2<u32>(1u, var_5)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_5, 19704u), vec2<u32>(4294967295u, 94013u))), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(abs(var_5), 47214u >> (var_5 % 32u), var_5), var_5), ~vec2<u32>(firstLeadingBit(var_5), _wgslsmith_clamp_u32(~var_5, 0u, 1u)), vec3<f32>(_wgslsmith_f_op_f32(945f + _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(91402u, vec2<f32>(-196f, -462f), 0i, vec2<f32>(-2392f, 184f))).x * -742f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-969f, -1147f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(101f, -168f, true)) - _wgslsmith_f_op_f32(ceil(526f)))));
}

