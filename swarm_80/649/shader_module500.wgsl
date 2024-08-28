struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec3<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> bool {
    global0 = arg_0.d;
    global1 = !vec3<bool>(arg_0.e, !(true && global1.x) | any(vec3<bool>(false, true, global1.x)), arg_0.e);
    let var_0 = arg_0.b;
    global1 = select(vec3<bool>(true, arg_0.e | true, false), vec3<bool>(!(~u_input.a.x <= 1u), global1.x, global1.x), vec3<bool>(any(vec2<bool>(global1.x, any(vec4<bool>(true, arg_0.e, arg_0.e, true)))), reverseBits(u_input.b) >= -(~u_input.b), all(vec3<bool>(true, true, true))));
    global1 = vec3<bool>(false != (-6817i != _wgslsmith_clamp_i32(abs(global0.x), arg_0.d.x, 2147483647i)), !global1.x, !global1.x);
    return -528i == firstLeadingBit(_wgslsmith_mult_i32(arg_0.d.x, select(select(arg_0.d.x, -1899i, true), _wgslsmith_sub_i32(arg_0.d.x, 1i), all(global1.xy))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = -317f;
    global0 = -vec2<i32>(_wgslsmith_dot_vec4_i32(abs(firstLeadingBit(vec4<i32>(arg_2.d.x, 0i, global0.x, 1i))), -_wgslsmith_div_vec4_i32(vec4<i32>(0i, arg_2.a, arg_3.d.x, global0.x), vec4<i32>(arg_3.a, global0.x, 2147483647i, global0.x))), global0.x);
    var_0 = -1142f;
    let var_1 = arg_2;
    var var_2 = var_1;
    return _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-949f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -453f))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_sub_u32(~min(0u, ~4294967295u), u_input.a.x), ~(u_input.a.x >> (896u % 32u)));
    let var_1 = Struct_1(min(-2147483647i >> (var_0 % 32u), -1i) << (var_0 % 32u), -268f, -894f, min(min(-select(arg_0.d, arg_0.d, global1.xx), ~vec2<i32>(29720i, arg_0.a)), -arg_0.d), !any(global1.xy));
    var var_2 = Struct_1(0i, -1251f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -288f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(374f + arg_2.b) * arg_2.c))), vec2<i32>(-14217i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(19335i, u_input.b, -40126i) & vec3<i32>(-1i, arg_3.x, 97878i)), -vec3<i32>(2147483647i, arg_3.x, u_input.b))), true);
    let var_3 = ~vec3<u32>(_wgslsmith_add_u32(~select(u_input.a.x, var_0, arg_0.e), var_0), var_0, countOneBits(~(u_input.a.x ^ 64998u)));
    global0 = arg_0.d;
    return true;
}

fn func_2(arg_0: vec3<u32>) -> vec3<bool> {
    global1 = vec3<bool>(global1.x, true, func_5(Struct_1(global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1237f + 574f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1238f, 1179f)))), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(global0.x, 4268i)), _wgslsmith_add_vec2_i32(vec2<i32>(2192i, 6080i), vec2<i32>(-1i, -35837i)), vec2<i32>(u_input.b, -1i) << (arg_0.xz % vec2<u32>(32u))), global1.x), _wgslsmith_f_op_vec2_f32(func_4(vec3<bool>(all(vec3<bool>(global1.x, global1.x, global1.x)), func_3(Struct_1(global0.x, 1311f, 220f, vec2<i32>(0i, global0.x), false), u_input.a.x), all(vec4<bool>(global1.x, global1.x, global1.x, true))), select(!global1.xy, !vec2<bool>(global1.x, true), true), Struct_1(_wgslsmith_div_i32(1i, global0.x), -1214f, _wgslsmith_f_op_f32(256f - 707f), min(vec2<i32>(global0.x, global0.x), vec2<i32>(global0.x, u_input.b)), true), Struct_1(u_input.b, _wgslsmith_f_op_f32(184f + 941f), 1340f, _wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, -16153i), vec2<i32>(u_input.b, global0.x)), false))), Struct_1(abs(~u_input.b), -1061f, _wgslsmith_f_op_f32(-1101f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), abs(vec2<i32>(u_input.b, global0.x) | vec2<i32>(u_input.b, global0.x)), global1.x), abs(-(~vec2<i32>(global0.x, global0.x)))));
    var var_0 = Struct_1(i32(-1i) * -(~(-global0.x)), 3209f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-910f + _wgslsmith_f_op_f32(f32(-1f) * -1420f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-160f, 275f) - _wgslsmith_f_op_vec2_f32(func_4(vec3<bool>(true, global1.x, false), vec2<bool>(false, global1.x), Struct_1(-26708i, -308f, -576f, vec2<i32>(u_input.b, -21351i), false), Struct_1(u_input.b, -184f, 790f, vec2<i32>(7383i, u_input.b), false))).x))), reverseBits(_wgslsmith_mult_vec2_i32(-(vec2<i32>(u_input.b, 43054i) | vec2<i32>(0i, 1i)), vec2<i32>(max(global0.x, 28028i), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 12240i, -2147483647i, -17959i), vec4<i32>(0i, u_input.b, 6800i, 11360i))))), func_5(Struct_1(firstLeadingBit(~global0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_f_op_f32(max(385f, 140f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(297f * -624f))), ~(vec2<i32>(45776i, global0.x) ^ vec2<i32>(2147483647i, global0.x)), all(select(vec2<bool>(global1.x, global1.x), global1.xz, global1.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1544f, 124f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-643f, 1474f))), !(global0.x <= u_input.b))), Struct_1(u_input.b, -1878f, _wgslsmith_f_op_f32(967f - -465f), _wgslsmith_add_vec2_i32(-vec2<i32>(global0.x, global0.x), select(vec2<i32>(u_input.b, 1i), vec2<i32>(global0.x, u_input.b), true)), true), vec2<i32>(-global0.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(38131i, 0i)), abs(vec2<i32>(-2147483647i, 9908i))))));
    let var_1 = -(~(~(~(-1i) ^ -u_input.b)));
    var var_2 = min(max(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, u_input.a.x, u_input.a.x), vec3<u32>(arg_0.x, 42009u, 1941u) << (vec3<u32>(u_input.a.x, 0u, 0u) % vec3<u32>(32u))), u_input.a.xyy ^ countOneBits(u_input.a.xxy)) >> (vec3<u32>(~6146u, _wgslsmith_dot_vec4_u32(reverseBits(u_input.a), vec4<u32>(arg_0.x, arg_0.x, 2708u, 16850u)), _wgslsmith_mult_u32(1u, 0u)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_add_u32(4294967295u, u_input.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 21737u, u_input.a.x), _wgslsmith_add_vec3_u32(arg_0, vec3<u32>(1u, arg_0.x, u_input.a.x))), vec3<u32>(select(4368u, 4294967295u, true), ~arg_0.x, _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, u_input.a.x))), reverseBits(8348u)));
    var_2 = firstLeadingBit(select(vec3<u32>(0u, ~(~var_2.x), arg_0.x), ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, 5420u, 1u), arg_0) | arg_0, any(vec2<bool>(false, true))));
    return !select(!(!vec3<bool>(true, global1.x, false)), !(!(!vec3<bool>(var_0.e, var_0.e, var_0.e))), global1.x);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> u32 {
    global1 = select(select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, global1.x, arg_1.e), vec3<bool>(true, false, true)), !select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, true, true), global1.x), vec3<bool>(true, false != arg_1.e, !global1.x)), vec3<bool>(true, true, true), func_2(_wgslsmith_add_vec3_u32(u_input.a.wzx, vec3<u32>(arg_0, 19032u, 72833u)))), vec3<bool>(arg_1.e, any(select(select(vec4<bool>(global1.x, true, false, true), vec4<bool>(true, false, false, global1.x), vec4<bool>(false, global1.x, global1.x, arg_1.e)), vec4<bool>(global1.x, arg_1.e, arg_1.e, arg_1.e), !arg_1.e)), !any(global1.zz)), arg_1.e);
    let var_0 = abs(1u) & _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a.x, 48132u), vec4<u32>(u_input.a.x, 24370u, 4294967295u, 1u), u_input.a)) << (u_input.a % vec4<u32>(32u)), reverseBits(u_input.a));
    var var_1 = vec4<bool>(arg_1.e, arg_1.e, true, _wgslsmith_f_op_f32(-arg_1.b) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(arg_1.c - 700f), !(var_0 <= 34043u))));
    global0 = vec2<i32>(global0.x, global0.x) & countOneBits(vec2<i32>(-2147483647i, _wgslsmith_sub_i32(abs(arg_1.d.x), countOneBits(-2147483647i))));
    global1 = var_1.wzx;
    return _wgslsmith_mod_u32(var_0, max(0u, var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_clamp_i32(global0.x, 15446i, _wgslsmith_div_i32(-2147483647i, 1i << (func_1(u_input.a.x, Struct_1(0i, 347f, 1324f, vec2<i32>(55509i, u_input.b), global1.x)) % 32u))), 993f, _wgslsmith_f_op_vec2_f32(func_4(select(!(!vec3<bool>(global1.x, false, global1.x)), !(!vec3<bool>(global1.x, global1.x, global1.x)), func_2(vec3<u32>(65713u, u_input.a.x, 1u)).x), select(vec2<bool>(true, all(vec4<bool>(global1.x, global1.x, false, global1.x))), !select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, true), global1.yx), global1.xz), Struct_1(abs(_wgslsmith_mod_i32(global0.x, global0.x)), _wgslsmith_f_op_f32(trunc(-489f)), _wgslsmith_f_op_f32(1f - -2195f), vec2<i32>(0i, 3859i), 1u >= u_input.a.x), Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-16175i, global0.x, global0.x, 0i), vec4<i32>(-6389i, global0.x, 1i, 5817i)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 877i, global0.x), vec4<i32>(global0.x, global0.x, global0.x, global0.x))), 542f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-832f, -713f)), _wgslsmith_f_op_f32(f32(-1f) * -1042f))), -(vec2<i32>(u_input.b, 28655i) ^ vec2<i32>(u_input.b, global0.x)), any(vec3<bool>(global1.x, true, global1.x))))).x, reverseBits(max(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -7814i), vec2<i32>(-31372i, global0.x)) << (~u_input.a.zw % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, 1i), vec3<i32>(1i, global0.x, global0.x)), _wgslsmith_add_i32(-8414i, -19449i)))), true);
    let var_1 = _wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(sign(-383f))));
    var var_2 = vec4<bool>(true, true, var_0.e, any(vec3<bool>((2147483647i != var_0.a) & false, true || !global1.x, var_0.e)));
    global0 = vec2<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_0.d.x ^ 1052i, _wgslsmith_sub_i32(0i, u_input.b), ~u_input.b, u_input.b | 0i)), reverseBits(vec4<i32>(29906i, 1i, u_input.b, -1i) >> (~u_input.a % vec4<u32>(32u)))), 2147483647i & u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

