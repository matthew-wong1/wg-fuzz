struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27>;

var<private> global1: array<i32, 24> = array<i32, 24>(2147483647i, 2147483647i, 24697i, 1i, -24153i, 19443i, 11976i, -284i, -39680i, -58859i, 0i, 36265i, 30096i, 19598i, -1i, 1i, -1i, -8898i, 44026i, -1i, -32481i, -1171i, -1i, -54217i);

var<private> global2: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(38847i, -16531i), vec2<i32>(i32(-2147483648), -26233i), vec2<i32>(40909i, 52082i), vec2<i32>(-38628i, 31346i), vec2<i32>(2147483647i, 0i), vec2<i32>(i32(-2147483648), -10108i), vec2<i32>(0i, 39020i), vec2<i32>(62007i, -29782i), vec2<i32>(15897i, 44617i), vec2<i32>(2147483647i, -488i), vec2<i32>(1i, 17320i));

var<private> global3: Struct_1 = Struct_1(vec3<u32>(35185u, 1u, 49826u), vec3<u32>(4294967295u, 70997u, 0u));

var<private> global4: array<Struct_1, 14>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    let var_0 = Struct_2(global4[_wgslsmith_index_u32(max(global3.a.x, arg_0.a.a.x), 14u)], _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(u_input.c), _wgslsmith_div_vec2_i32(u_input.c >> (global3.b.yy % vec2<u32>(32u)), u_input.c)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.d.x, 24u)]) << (arg_0.a.a.zy % vec2<u32>(32u)), -global2[_wgslsmith_index_u32(global3.a.x, 11u)])), select(vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), !any(vec4<bool>(false, false, false, false))), vec2<bool>(true, true)));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-269f * 228f))) - -149f);
    global4 = array<Struct_1, 14>();
    let var_3 = Struct_2(global4[_wgslsmith_index_u32(u_input.a, 14u)], var_0.b, var_0.c);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2 * var_2), var_2, var_2));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> Struct_2 {
    global4 = array<Struct_1, 14>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_3(global4[_wgslsmith_index_u32(1u, 14u)], 1i, -max(-23010i, 8883i)))));
    var var_1 = vec2<bool>(true, arg_1.x);
    global3 = global4[_wgslsmith_index_u32(abs(abs(u_input.d.x) | 2120u), 14u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, 24437u, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(global3.b.x, 4294967295u, global3.a.x), vec3<u32>(global3.a.x, 1399u, u_input.d.x))), vec3<u32>(~global3.a.x, 37360u, 1u)), countOneBits(_wgslsmith_div_i32(1i, u_input.b)) | u_input.c.x, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global1[_wgslsmith_index_u32(global3.a.x, 24u)], 28514i, global1[_wgslsmith_index_u32(u_input.d.x, 24u)]) ^ vec4<i32>(-2147483647i, -1i, -1i, -86610i), select(vec4<i32>(2481i, 11114i, u_input.c.x, arg_0), vec4<i32>(-65745i, 15006i, arg_0, u_input.b), vec4<bool>(false, false, arg_1.x, arg_1.x))))))).x;
    return Struct_2(global4[_wgslsmith_index_u32(17868u, 14u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32((select(vec2<u32>(global3.a.x, 0u), global3.a.zy, false) | _wgslsmith_div_vec2_u32(vec2<u32>(23350u, 20052u), global3.b.zz)) ^ select(u_input.d.xz ^ u_input.d.zx, vec2<u32>(global3.b.x, 0u), true), vec2<u32>(~10662u, ~(~u_input.a))), 11u)], arg_1.yy);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> u32 {
    global2 = array<vec2<i32>, 11>();
    var var_0 = abs(vec3<i32>(u_input.b, i32(-1i) * -reverseBits(56929i), 1i));
    var var_1 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(min(global3.a.x, ~arg_1.a.b.x), _wgslsmith_div_u32(_wgslsmith_clamp_u32(75714u, 4294967295u, arg_2.b.x), global3.a.x & 21926u), arg_1.a.b.x), vec3<u32>(arg_2.a.x, firstTrailingBit(arg_2.b.x), ~(0u ^ u_input.d.x)));
    var var_2 = (i32(-1i) * -1i) >> (arg_2.a.x % 32u);
    let var_3 = func_2(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(i32(-1i) * -20530i, i32(-1i) * -8234i), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, global1[_wgslsmith_index_u32(global3.b.x, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)], arg_1.c), vec4<i32>(1i, -2147483647i, global1[_wgslsmith_index_u32(arg_1.a.a.x, 24u)], arg_1.b)), ~(-1i))), global2[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(arg_0.x, 13823u)), 11u)]), vec3<bool>((any(vec2<bool>(false, true)) && true) & true, false, all(vec2<bool>(true, false))));
    return u_input.d.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<bool>) -> bool {
    let var_0 = func_2(-30734i, select(vec3<bool>(arg_3.x, arg_3.x, true), vec3<bool>(any(vec3<bool>(true, false, arg_3.x)), true, !arg_3.x), vec3<bool>(true, true, arg_3.x))).a;
    global3 = Struct_1(~_wgslsmith_mult_vec3_u32(~global3.b, ~(arg_2.a.a << (vec3<u32>(7057u, 1u, 0u) % vec3<u32>(32u)))), ((reverseBits(arg_1.a) | vec3<u32>(1u, arg_0.x, arg_0.x)) << (vec3<u32>(u_input.d.x << (1u % 32u), _wgslsmith_clamp_u32(global3.a.x, u_input.a, arg_1.a.x), ~arg_1.b.x) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_u32(vec3<u32>(~global3.b.x, ~21067u, ~arg_2.a.a.x), arg_2.a.a));
    return arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(1u, 14u)];
    global1 = array<i32, 24>();
    var var_1 = global4[_wgslsmith_index_u32(~(~3217u), 14u)];
    let var_2 = vec2<bool>(func_4(vec3<u32>(max(~61793u, ~97811u), _wgslsmith_div_u32(1u, global3.a.x) >> (u_input.a % 32u), ~min(var_0.b.x, global3.a.x)), Struct_1(global3.b, ~abs(u_input.d)), Struct_3(global4[_wgslsmith_index_u32(max(func_1(global3.a, global0[_wgslsmith_index_u32(var_1.a.x, 27u)], global4[_wgslsmith_index_u32(41624u, 14u)], -456f), 0u), 14u)], -41460i, _wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, 54984i), 2147483647i ^ global1[_wgslsmith_index_u32(var_0.b.x, 24u)])), vec4<bool>(any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true)) != true, any(vec2<bool>(true, false)), any(vec3<bool>(false, true, true)))), any(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), func_2(global1[_wgslsmith_index_u32(var_0.a.x, 24u)], vec3<bool>(true, false, true)).c, true), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))))));
    var var_3 = ~u_input.c;
    var var_4 = func_2(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(reverseBits(abs(firstLeadingBit(var_1.a.x))), 24u)], -1034i | -(~global1[_wgslsmith_index_u32(17307u, 24u)])), vec3<bool>(all(!select(vec4<bool>(var_2.x, true, false, true), vec4<bool>(var_2.x, true, false, var_2.x), false)), false, all(vec4<bool>(true, true, any(vec4<bool>(var_2.x, var_2.x, var_2.x, true)), var_2.x))));
    var var_5 = -_wgslsmith_mod_i32(var_3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(70239i, 7344i, global1[_wgslsmith_index_u32(51625u, 24u)]), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, var_3.x, -1i), vec3<i32>(u_input.b, 1i, 0i)))) ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, 8829i, -1i, -1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(19156u, 24u)], var_3.x, var_4.b.x, 0i), firstTrailingBit(vec4<i32>(var_4.b.x, 0i, -34420i, 17429i)), -vec4<i32>(var_3.x, var_4.b.x, 52678i, u_input.b))), var_3.x);
    var var_6 = global0[_wgslsmith_index_u32(var_0.a.x, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, var_4.a.b.x, u_input.b, u_input.d.x, _wgslsmith_mod_u32(func_1(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b.x, u_input.a, global3.a.x), vec3<u32>(0u, global3.a.x, var_1.b.x)), Struct_3(var_6.a, 0i | var_6.b, ~(-2147483647i)), Struct_1(vec3<u32>(var_0.a.x, u_input.d.x, 21052u), ~vec3<u32>(var_0.b.x, var_0.b.x, var_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(403f, -355f))), 45937u));
}

