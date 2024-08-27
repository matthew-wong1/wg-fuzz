struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(4294967295u, 985u, 4294967295u), vec3<u32>(1u, 50335u, 54736u), vec3<u32>(74631u, 47532u, 4294967295u), vec3<u32>(29647u, 1u, 6407u), vec3<u32>(4294967295u, 1u, 25817u), vec3<u32>(88544u, 53381u, 4294967295u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4294967295u, 0u, 96535u), vec3<u32>(46384u, 23736u, 38458u), vec3<u32>(0u, 1u, 48376u), vec3<u32>(116153u, 1u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 49664u, 0u), vec3<u32>(24920u, 52648u, 1u), vec3<u32>(29844u, 4294967295u, 1u), vec3<u32>(27298u, 1u, 15160u), vec3<u32>(0u, 83799u, 0u), vec3<u32>(0u, 0u, 9574u), vec3<u32>(4294967295u, 5418u, 21771u), vec3<u32>(14023u, 4294967295u, 26743u), vec3<u32>(1u, 35530u, 1u), vec3<u32>(4191u, 4294967295u, 0u), vec3<u32>(81497u, 1u, 0u), vec3<u32>(35466u, 68578u, 10338u), vec3<u32>(55494u, 12160u, 10160u), vec3<u32>(0u, 1u, 1u), vec3<u32>(124989u, 23957u, 1u), vec3<u32>(49511u, 25261u, 4294967295u));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_4) -> u32 {
    var var_0 = arg_3.b;
    let var_1 = any(select(!(!arg_3.b.b.e), vec3<bool>(arg_3.b.b.e.x, true, arg_2.x & arg_3.b.c.e.x), !var_0.b.e)) && any(arg_3.b.b.e.xy);
    var_0 = arg_3.b;
    var_0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_3.b.c.d.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.c.d.x)), var_0.b.d.x)))), Struct_1(firstLeadingBit(select(vec4<u32>(var_0.b.a.x, 120018u, 17007u, var_0.b.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_3.b.b.a.x, 0u, arg_1), vec4<u32>(var_0.c.a.x, 23114u, u_input.a.x, 4294967295u)), all(arg_3.b.b.e.yy))), 1i & max(1i, min(-1i, arg_3.b.c.c.x)), arg_3.b.c.c << (var_0.b.a % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b.a, _wgslsmith_f_op_f32(f32(-1f) * -220f), _wgslsmith_f_op_f32(-var_0.c.d.x), 818f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-945f, -104f, arg_3.b.b.d.x, 1041f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(372f, var_0.c.d.x, -281f, arg_3.b.a)))))), !select(!vec3<bool>(true, arg_3.b.b.e.x, var_1), arg_2.zyz, !arg_2.x)), arg_3.b.b);
    var var_2 = Struct_5(_wgslsmith_sub_vec2_u32(arg_3.b.b.a.zw, abs(var_0.c.a.wy)) & var_0.b.a.zy, arg_3.b);
    return _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(var_0.c.a.yzz, _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(24078u, arg_3.b.b.a.x, var_2.b.b.a.x)), vec3<u32>(arg_1, var_2.b.b.a.x, arg_1) ^ global0[_wgslsmith_index_u32(var_2.a.x, 28u)], firstTrailingBit(vec3<u32>(64124u, var_2.a.x, var_2.a.x)))), vec3<u32>(var_2.a.x, _wgslsmith_div_u32(~var_2.b.b.a.x, _wgslsmith_add_u32(arg_1 ^ 1u, 1u)), select(_wgslsmith_mult_u32(arg_3.b.c.a.x, var_2.b.c.a.x), ~59308u, all(vec3<bool>(var_2.b.c.e.x, arg_0, arg_2.x))) >> (~(~arg_3.b.b.a.x) % 32u)));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_3) -> vec4<f32> {
    global0 = array<vec3<u32>, 28>();
    var var_0 = select(arg_1.xz, !(!vec2<bool>(true, arg_1.x)), vec2<bool>(true, true));
    let var_1 = ~(~vec2<u32>(72155u, arg_0) & max(vec2<u32>(59664u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 11772u, 4294967295u), global0[_wgslsmith_index_u32(u_input.b, 28u)])), u_input.a.zz));
    var_0 = vec2<bool>(!all(vec4<bool>(false, false, select(false, var_0.x, var_0.x), true)), any(vec3<bool>(arg_1.x, all(vec2<bool>(true, true)), u_input.a.x > ~37216u)));
    let var_2 = Struct_2(491f, Struct_1(vec4<u32>(_wgslsmith_mod_u32(min(var_1.x, 4294967295u), _wgslsmith_sub_u32(89699u, 24761u)), func_3(any(vec3<bool>(arg_1.x, var_0.x, arg_1.x)), arg_0, vec4<bool>(true, false, false, arg_1.x), Struct_4(-21301i, Struct_2(314f, Struct_1(vec4<u32>(u_input.b, 0u, 22426u, 66984u), -30262i, vec4<i32>(-40655i, 28740i, 5159i, 2147483647i), vec4<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x), arg_1), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 12184u, 20406u), -13558i, vec4<i32>(-36245i, -2147483647i, -41120i, -2147483647i), vec4<f32>(-1125f, arg_2.a.x, 427f, -1670f), vec3<bool>(var_0.x, var_0.x, true))))), arg_0, _wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.x, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, u_input.b, 36141u, u_input.b), u_input.a))), -1i, vec4<i32>(1i, firstLeadingBit(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(22311i, 23303i, 2147483647i, -36152i), vec4<i32>(-18391i, 0i, 33853i, 14304i)) ^ ~(-1i), 2147483647i), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1094f, arg_2.a.x, -1057f, arg_2.a.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.x, arg_2.a.x, 172f, 2086f), vec4<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x), var_0.x))))), vec3<bool>(1u >= ~arg_0, any(vec2<bool>(false, var_0.x)), !arg_1.x | (false && var_0.x))), Struct_1(reverseBits(firstLeadingBit(~vec4<u32>(arg_0, 94432u, arg_0, var_1.x))), 2147483647i, vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, 763f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, arg_2.a.x, 1839f, 235f)))), !(!select(arg_1, vec3<bool>(var_0.x, var_0.x, var_0.x), arg_1))));
    return vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -205f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1079f))) - var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.b.d.x, -441f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.a.x)) + -103f));
}

fn func_4(arg_0: Struct_5) -> Struct_2 {
    let var_0 = arg_0.b.b.d;
    let var_1 = firstTrailingBit(vec4<i32>(arg_0.b.c.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.b.b, arg_0.b.c.b), arg_0.b.c.c.xy), ~_wgslsmith_dot_vec4_i32(arg_0.b.b.c, vec4<i32>(arg_0.b.b.b, arg_0.b.b.c.x, arg_0.b.b.b, arg_0.b.b.b)), -1i)) << (~abs(vec4<u32>(~3242u, 1u & arg_0.a.x, abs(arg_0.b.c.a.x), ~4294967295u)) % vec4<u32>(32u));
    var var_2 = firstLeadingBit(u_input.a);
    let var_3 = -1i;
    let var_4 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1257f * 1000f))) == arg_0.b.a);
    return arg_0.b;
}

fn func_1(arg_0: i32) -> vec3<bool> {
    var var_0 = func_4(Struct_5(u_input.a.wy, Struct_2(-186f, Struct_1(countOneBits(u_input.a), 0i, ~vec4<i32>(1i, -32223i, arg_0, 2147483647i), _wgslsmith_f_op_vec4_f32(func_2(u_input.b, vec3<bool>(true, false, false), Struct_3(vec2<f32>(-1062f, 388f)))), vec3<bool>(true, true, true)), Struct_1(vec4<u32>(65140u, 35957u, 427u, u_input.b), -1i, vec4<i32>(33430i, arg_0, -38059i, 2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(202f, 1000f, 2006f, 1569f)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)))));
    global0 = array<vec3<u32>, 28>();
    global0 = array<vec3<u32>, 28>();
    var_0 = func_4(Struct_5(_wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.b, 37757u), vec2<u32>(var_0.c.a.x, ~0u)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b.d.x)) * -199f), var_0.c, Struct_1(vec4<u32>(0u, 70774u, var_0.c.a.x, 47308u), -arg_0, func_4(Struct_5(var_0.b.a.zw, Struct_2(var_0.b.d.x, Struct_1(vec4<u32>(4294967295u, var_0.c.a.x, u_input.b, 0u), var_0.c.b, var_0.c.c, var_0.b.d, vec3<bool>(false, var_0.b.e.x, true)), Struct_1(vec4<u32>(u_input.b, 0u, var_0.c.a.x, 5491u), var_0.c.b, vec4<i32>(arg_0, arg_0, arg_0, arg_0), var_0.c.d, vec3<bool>(var_0.b.e.x, true, var_0.b.e.x))))).b.c, vec4<f32>(var_0.a, -618f, var_0.b.d.x, -905f), select(vec3<bool>(false, var_0.b.e.x, var_0.b.e.x), vec3<bool>(false, false, var_0.b.e.x), var_0.b.e)))));
    let var_1 = Struct_5(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b << (var_0.b.a.x % 32u), ~25243u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, 34377u), vec3<u32>(var_0.b.a.x, 0u, var_0.c.a.x), _wgslsmith_mod_vec3_u32(var_0.b.a.zzx, vec3<u32>(var_0.c.a.x, 56749u, 4130u)))), 1373u), func_4(Struct_5(select(reverseBits(var_0.c.a.zz), ~vec2<u32>(1u, 0u), !var_0.c.e.x), Struct_2(-327f, Struct_1(vec4<u32>(var_0.c.a.x, u_input.b, u_input.b, 70809u), -1i, vec4<i32>(arg_0, 1i, -36452i, var_0.b.c.x), var_0.c.d, var_0.b.e), var_0.c))));
    return select(var_0.c.e, !vec3<bool>(var_1.b.b.e.x, true, true), !select(!(!vec3<bool>(false, var_1.b.c.e.x, false)), vec3<bool>(!var_1.b.b.e.x, 10045i != arg_0, var_0.b.e.x), var_0.b.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 28>();
    global0 = array<vec3<u32>, 28>();
    global0 = array<vec3<u32>, 28>();
    global0 = array<vec3<u32>, 28>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1684f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-712f, -495f))), 1f))));
    global0 = array<vec3<u32>, 28>();
    var var_1 = select(all(func_1(-2147483647i)), true, false) == true;
    let x = u_input.a;
    s_output = StorageBuffer(1744f, _wgslsmith_div_i32(~2147483647i, ~(-2147483647i)) << (u_input.a.x % 32u), ~(~((u_input.a.www << (vec3<u32>(4294967295u, u_input.a.x, 98055u) % vec3<u32>(32u))) | _wgslsmith_sub_vec3_u32(vec3<u32>(4538u, 82828u, u_input.b), vec3<u32>(23895u, u_input.a.x, u_input.a.x)))));
}

