struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: u32) -> f32 {
    var var_0 = Struct_1(vec4<bool>(arg_1, !(!all(vec2<bool>(arg_1, arg_1))), false, true), 6654i ^ select(-2572i, global0.x, true), (~firstLeadingBit(u_input.a) | u_input.a) ^ vec3<u32>(~firstTrailingBit(63307u), 4294967295u, 0u), _wgslsmith_f_op_vec4_f32(arg_0 * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1145f, -1000f, _wgslsmith_f_op_f32(step(arg_0.x, 130f)), _wgslsmith_div_f32(-1357f, 1000f)))));
    var var_1 = select(!(!vec4<bool>(true & arg_1, arg_1, true, !arg_1)), !select(select(vec4<bool>(true, var_0.a.x, var_0.a.x, false), select(vec4<bool>(false, var_0.a.x, arg_1, false), var_0.a, vec4<bool>(true, false, var_0.a.x, arg_1)), any(var_0.a.yyw)), select(vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(var_0.a.x, var_0.a.x, false, true), vec4<bool>(arg_1, arg_1, var_0.a.x, false)), vec4<bool>(true, !var_0.a.x, false, select(var_0.a.x, var_0.a.x, true))), !(!var_0.a));
    var_0 = Struct_1(vec4<bool>(!arg_1, any(var_1.xyy), true, true), firstTrailingBit(1i), _wgslsmith_add_vec3_u32(u_input.a, ~select(~vec3<u32>(1u, u_input.a.x, arg_2), u_input.a, var_0.b >= global0.x)), _wgslsmith_f_op_vec4_f32(var_0.d + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.x, arg_0.x, var_0.d.x, arg_0.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-764f, var_0.d.x, -1164f, 884f))), true)) + _wgslsmith_f_op_vec4_f32(select(arg_0, vec4<f32>(556f, arg_0.x, arg_0.x, var_0.d.x), arg_1 & true)))));
    var var_2 = Struct_1(vec4<bool>((var_0.b == _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, var_0.b, 25681i, global0.x), vec4<i32>(var_0.b, 6130i, var_0.b, global0.x))) && select(var_1.x | false, var_0.a.x, false), arg_1, true, var_1.x), var_0.b, _wgslsmith_sub_vec3_u32(~(vec3<u32>(0u, 0u, 41681u) | var_0.c), vec3<u32>(max(u_input.a.x | 0u, _wgslsmith_clamp_u32(var_0.c.x, 11238u, 1u)), 21695u, 11658u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0))));
    let var_3 = Struct_1(select(!vec4<bool>(arg_1, var_2.a.x, true, any(vec4<bool>(var_1.x, false, false, var_1.x))), select(!select(var_0.a, var_2.a, var_0.a), var_2.a, vec4<bool>(false | var_0.a.x, true, all(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), true)), !select(!var_2.a, !vec4<bool>(true, var_0.a.x, true, arg_1), var_2.a.x && false)), -(~((global0.x << (4294967295u % 32u)) << (var_2.c.x % 32u))), ~var_2.c, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(520f, -105f, _wgslsmith_f_op_f32(max(var_2.d.x, _wgslsmith_f_op_f32(267f - var_0.d.x))), _wgslsmith_f_op_f32(1398f * _wgslsmith_f_op_f32(110f * arg_0.x))))));
    return -406f;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2522f, -548f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-651f, -554f)))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(394f, arg_0)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-470f + arg_0), arg_0))));
    var var_1 = firstLeadingBit(global0.x);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -449f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1000f)))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(arg_0 - var_0.x)), _wgslsmith_f_op_f32(arg_0 - -128f)))));
    var var_2 = Struct_1(!vec4<bool>(!any(vec3<bool>(false, true, false)), true, abs(u_input.a.x) == ~1u, false), 2147483647i, ~u_input.a | vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_1.x), vec2<u32>(u_input.a.x, 1u)), vec2<u32>(79873u, 1u)), u_input.a.x, u_input.a.x), vec4<f32>(arg_0, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(201f, 389f, -585f, -575f) - vec4<f32>(-270f, -235f, var_0.x, -566f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-777f, arg_0, var_0.x, arg_0)))), true, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.x, arg_1.x, arg_1.x, u_input.a.x), select(vec4<u32>(1u, 4294967295u, arg_1.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 79936u, u_input.a.x), vec4<bool>(false, true, true, true))))), 840f, arg_0));
    var var_3 = var_2.a;
    return Struct_1(vec4<bool>(true, false, false, var_3.x), global0.x, _wgslsmith_add_vec3_u32(u_input.a, firstLeadingBit(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, 18935u), u_input.a)))), var_2.d);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: f32) -> bool {
    var var_0 = func_2(-103f, arg_0.yz);
    global0 = select(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(var_0.b << (arg_0.x % 32u), var_0.b ^ var_0.b, ~2147483647i, _wgslsmith_div_i32(global0.x, 0i)), vec4<i32>(0i | var_0.b, -1i, ~global0.x, 34696i ^ global0.x), func_2(_wgslsmith_div_f32(-1161f, 800f), arg_0.yz).a), vec4<i32>(global0.x, max(firstLeadingBit(0i), var_0.b), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(1i, 10543i, -1i, global0.x)), vec4<i32>(var_0.b, global0.x, var_0.b, 2147483647i) & vec4<i32>(0i, 2147483647i, var_0.b, -1i)), _wgslsmith_clamp_i32(~0i, _wgslsmith_div_i32(1i, var_0.b), global0.x)), -vec4<i32>(1i, abs(-23110i), _wgslsmith_mod_i32(var_0.b, 2147483647i), 0i)), firstLeadingBit(vec4<i32>(var_0.b, 1i, ~global0.x ^ abs(var_0.b), min(-2147483647i, _wgslsmith_mult_i32(global0.x, 0i)))), !vec4<bool>(true, !any(var_0.a), var_0.a.x, true));
    var var_1 = -405f;
    var_1 = -418f;
    let var_2 = Struct_1(vec4<bool>(func_2(419f, vec2<u32>(_wgslsmith_sub_u32(var_0.c.x, 11352u), ~1u)).a.x, var_0.a.x, arg_0.x < _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.zyw, vec3<u32>(60695u, u_input.a.x, u_input.a.x)), ~vec3<u32>(1u, u_input.a.x, 1u)), true), _wgslsmith_mult_i32(-2147483647i, -_wgslsmith_clamp_i32(2147483647i, 7463i << (0u % 32u), var_0.b & 2147483647i)), vec3<u32>(_wgslsmith_mult_u32(func_2(_wgslsmith_f_op_f32(trunc(arg_1)), vec2<u32>(0u, 32471u)).c.x, _wgslsmith_div_u32(1u, _wgslsmith_mult_u32(6750u, var_0.c.x))), _wgslsmith_div_u32(14990u, firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x))), _wgslsmith_sub_u32(~(~51420u), 49269u)), var_0.d);
    return true;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = !arg_0 & any(!arg_2.a.xxx);
    var var_1 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -399f)))), vec2<u32>(select(59711u, arg_1, true), ~(arg_1 << (arg_2.c.x % 32u))));
    var_1 = Struct_1(vec4<bool>(true, any(vec3<bool>(select(var_0, true, var_0), arg_3.x, false)), true, true), _wgslsmith_sub_i32(16608i, (~global0.x & firstLeadingBit(2935i)) & -_wgslsmith_mult_i32(global0.x, var_1.b)), u_input.a, _wgslsmith_f_op_vec4_f32(var_1.d * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d.x, 1736f, arg_2.d.x, -117f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.d.x, -512f, arg_2.d.x, -1550f)))) * var_1.d)));
    let var_2 = _wgslsmith_f_op_f32(sign(var_1.d.x));
    var_1 = arg_2;
    return func_2(_wgslsmith_f_op_f32(floor(1643f)), arg_2.c.zz | vec2<u32>(0u, _wgslsmith_add_u32(1u, _wgslsmith_add_u32(arg_2.c.x, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(all(vec2<bool>(select(func_1(vec4<u32>(1u, u_input.a.x, 39718u, u_input.a.x), 760f, -1000f), true, any(vec2<bool>(true, false))), func_2(_wgslsmith_f_op_f32(func_3(vec4<f32>(376f, -785f, -266f, -2329f), false, 4294967295u)), ~vec2<u32>(u_input.a.x, 0u)).a.x)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(15611u, u_input.a.x, 35765u, u_input.a.x), abs(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), Struct_1(!func_2(func_2(-896f, u_input.a.xy).d.x, select(u_input.a.yz, u_input.a.zz, vec2<bool>(true, false))).a, select(~(global0.x << (u_input.a.x % 32u)), 21023i, select(true, select(true, true, true), all(vec2<bool>(true, true)))), _wgslsmith_mod_vec3_u32(~min(u_input.a, u_input.a), ~u_input.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(1872f, -489f, _wgslsmith_f_op_f32(400f - 342f), -1340f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1341f, -1525f, 1000f, -385f)))), !vec2<bool>(true, true & (global0.x == 54610i)));
    var var_1 = func_2(1387f, _wgslsmith_add_vec2_u32(u_input.a.yz, ~(vec2<u32>(1u, 24688u) << (vec2<u32>(4294967295u, var_0.c.x) % vec2<u32>(32u)))));
    var var_2 = Struct_1(vec4<bool>(var_1.a.x, func_1(vec4<u32>(92058u, ~u_input.a.x, firstLeadingBit(var_0.c.x), 1u), _wgslsmith_f_op_f32(round(1555f)), 1561f), any(!vec3<bool>(var_0.a.x, false, var_0.a.x)), all(var_1.a.xz)), _wgslsmith_add_i32(_wgslsmith_mult_i32(var_0.b, firstTrailingBit(var_1.b & 0i)), 27790i), firstLeadingBit(min(u_input.a, vec3<u32>(37502u, 4294967295u, u_input.a.x)) << (abs(_wgslsmith_sub_vec3_u32(var_0.c, var_1.c)) % vec3<u32>(32u))), var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(~((max(vec4<u32>(0u, var_0.c.x, var_2.c.x, 4294967295u), vec4<u32>(52075u, 117544u, u_input.a.x, var_2.c.x)) ^ vec4<u32>(55895u, 0u, 1u, var_1.c.x)) >> (firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, var_1.c.x, var_1.c.x, var_2.c.x), vec4<u32>(var_1.c.x, var_0.c.x, var_0.c.x, 0u))) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(select(vec4<u32>(24408u, var_1.c.x, u_input.a.x, 4294967295u), vec4<u32>(var_0.c.x, var_1.c.x, 4294967295u, var_1.c.x), vec4<bool>(true, var_1.a.x, var_1.a.x, var_2.a.x)), ~vec4<u32>(var_1.c.x, u_input.a.x, 3712u, var_2.c.x)), ~abs(vec4<u32>(1u, var_1.c.x, var_0.c.x, 0u) | vec4<u32>(1756u, 0u, 0u, 4294967295u))), -(~(vec2<i32>(-2494i, 38303i) | global0.yw)), var_1.b);
}

