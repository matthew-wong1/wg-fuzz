struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(4843u, true), Struct_1(23812u, false), Struct_1(17493u, false), Struct_1(62831u, true), Struct_1(135941u, false), Struct_1(1u, false), Struct_1(46850u, false), Struct_1(1u, false), Struct_1(0u, false), Struct_1(1u, true), Struct_1(26172u, true), Struct_1(13306u, true), Struct_1(0u, false), Struct_1(1u, true), Struct_1(4294967295u, false), Struct_1(0u, false), Struct_1(0u, true), Struct_1(1u, true), Struct_1(0u, false), Struct_1(4294967295u, false), Struct_1(4294967295u, true), Struct_1(108350u, false), Struct_1(0u, false), Struct_1(0u, false), Struct_1(44906u, false), Struct_1(0u, false), Struct_1(3025u, false), Struct_1(10601u, true), Struct_1(0u, false), Struct_1(114206u, false), Struct_1(68609u, false));

var<private> global1: array<u32, 2>;

var<private> global2: vec2<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> vec3<bool> {
    global0 = array<Struct_1, 31>();
    let var_0 = Struct_2(~min(vec4<i32>(~15389i, u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, 41448i), vec2<i32>(-28084i, -18959i)), _wgslsmith_sub_i32(u_input.b, -8469i)), vec4<i32>(_wgslsmith_mod_i32(global2.x, u_input.c), -u_input.b, firstTrailingBit(-40565i), -2147483647i)), global0[_wgslsmith_index_u32(~countOneBits(1u), 31u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1)));
    let var_1 = var_0;
    let var_2 = Struct_3(Struct_1(firstLeadingBit(var_1.b.a), arg_0.b), var_1, Struct_2(vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.a.zy, var_0.a.wz << (vec2<u32>(var_1.b.a, 0u) % vec2<u32>(32u))), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_0.a.zzy, var_0.a.wzy), -1i), ~select(13807i, u_input.b, false), -25269i), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.a.x, select(3868u, firstLeadingBit(5588u), var_1.c)), 31u)], any(vec4<bool>(!arg_0.b, all(vec2<bool>(false, var_1.c)), all(vec3<bool>(arg_0.b, false, true)), !arg_0.b))));
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-1387f * 310f), -747f)))));
    return vec3<bool>(true, !(-860f >= arg_1), all(vec2<bool>(var_1.b.b, all(!vec2<bool>(true, var_1.b.b)))));
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = !select(select(func_3(global0[_wgslsmith_index_u32(abs(u_input.a.x), 31u)], 1f, arg_0.b), select(select(vec3<bool>(false, true, arg_0.b), vec3<bool>(true, false, arg_0.b), arg_0.b), vec3<bool>(true, false, arg_0.b), all(vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b))), any(vec3<bool>(arg_0.b, false, arg_0.b))), select(vec3<bool>(arg_0.b, global2.x < global2.x, true), vec3<bool>(true, arg_0.b, true), arg_0.b), !func_3(Struct_1(0u, arg_0.b), _wgslsmith_f_op_f32(abs(-1000f)), arg_0.a != 1u).x);
    var var_1 = all(vec3<bool>(false, false, all(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, var_0.x, arg_0.b), var_0.x))));
    global1 = array<u32, 2>();
    var var_2 = ~(-vec2<i32>(global2.x, u_input.c));
    let var_3 = global1[_wgslsmith_index_u32(select(abs(firstLeadingBit(0u)), _wgslsmith_sub_u32(26226u, global1[_wgslsmith_index_u32(u_input.a.x, 2u)]) ^ ~_wgslsmith_mult_u32(firstTrailingBit(11005u), _wgslsmith_clamp_u32(arg_0.a, arg_0.a, 58851u)), true), 2u)];
    return true;
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> Struct_1 {
    let var_0 = -(vec3<i32>(-1i) * -vec3<i32>(u_input.c, global2.x, ~global2.x));
    var var_1 = global2.x;
    var var_2 = !vec2<bool>(true, func_2(Struct_1(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), !arg_0.x)));
    let var_3 = Struct_2(vec4<i32>(_wgslsmith_mult_i32(-global2.x | -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(63336i, -16166i, global2.x, var_0.x), reverseBits(vec4<i32>(0i, 1i, 0i, -19472i)))), 2147483647i, var_0.x, u_input.b), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit((vec4<u32>(81517u, 4294967295u, u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], 2u)]) | vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], 29963u, u_input.a.x)) >> (~vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], 4294967295u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), firstTrailingBit(_wgslsmith_sub_vec4_u32(~vec4<u32>(54228u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 2u)], 151760u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 1909u, u_input.a.x), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5498u, 2u)], 2u)], 15163u, u_input.a.x))))), 31u)], var_2.x);
    let var_4 = Struct_3(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(18451u, var_3.b.a, u_input.a.x), reverseBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b.a, var_3.b.a, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, 1u, 44492u)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, var_3.b.a), 2u)]), vec4<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(0u, 2u)], 1u), u_input.a.xy), global1[_wgslsmith_index_u32(29576u, 2u)] & 4294967295u, 27247u)), false), Struct_2(_wgslsmith_sub_vec4_i32(var_3.a, min(_wgslsmith_mult_vec4_i32(var_3.a, var_3.a), var_3.a)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(reverseBits(var_3.b.a), 2u)], 31u)], true), Struct_2(vec4<i32>(var_0.x, _wgslsmith_sub_i32(global2.x, var_0.x), _wgslsmith_div_i32(1i, var_0.x), reverseBits(u_input.c)), Struct_1(~firstTrailingBit(global1[_wgslsmith_index_u32(32013u, 2u)]), !arg_1), !select(false, var_3.c, true) || !arg_1));
    return global0[_wgslsmith_index_u32(29431u, 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    global2 = reverseBits(countOneBits(max(max(countOneBits(vec2<i32>(2147483647i, 24350i)), ~vec2<i32>(u_input.b, u_input.b)), vec2<i32>(global2.x, global2.x) ^ select(vec2<i32>(global2.x, u_input.b), vec2<i32>(10495i, u_input.c), vec2<bool>(false, true)))));
    let var_1 = u_input.a.x;
    var var_2 = !vec2<bool>(true, 158f < _wgslsmith_f_op_f32(sign(-726f)));
    let var_3 = Struct_2(-vec4<i32>(-global2.x | -1i, global2.x, _wgslsmith_add_i32(12237i, ~(-1i)), ~(-1i)), func_1(select(!(!vec3<bool>(var_2.x, var_2.x, var_2.x)), !vec3<bool>(true, false, var_2.x), !select(vec3<bool>(true, var_2.x, true), vec3<bool>(false, true, true), var_2.x)), !var_2.x), var_2.x);
    var var_4 = ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global1[_wgslsmith_index_u32(75324u, 2u)], 4294967295u, var_1, var_3.b.a)) << (_wgslsmith_add_vec4_u32(~vec4<u32>(10734u, 1u, 11280u, var_3.b.a), ~vec4<u32>(var_3.b.a, 0u, u_input.a.x, 20078u)) % vec4<u32>(32u)), select(~vec4<u32>(53270u, 0u, var_3.b.a, u_input.a.x), ~vec4<u32>(var_1, 1549u, var_1, 98163u), vec4<bool>(true, true, true, false)) & max(vec4<u32>(u_input.a.x, var_1, 44386u, 15451u), ~vec4<u32>(var_3.b.a, u_input.a.x, 1u, 0u)));
    var_2 = vec2<bool>(func_3(func_1(func_3(Struct_1(u_input.a.x, var_3.b.b), _wgslsmith_f_op_f32(floor(965f)), var_3.c), true), -193f, all(vec4<bool>(all(vec3<bool>(true, var_2.x, var_2.x)), true, global2.x <= global2.x, any(vec3<bool>(var_2.x, false, var_2.x))))).x, (var_2.x && true) && false);
    let var_5 = select(min(u_input.a.yx, countOneBits(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], 25413u))), countOneBits(vec2<u32>(u_input.a.x | 23071u, ~global1[_wgslsmith_index_u32(31908u, 2u)])), !(!select(vec2<bool>(var_3.b.b, var_3.b.b), vec2<bool>(var_3.c, var_2.x), vec2<bool>(false, var_2.x)))) ^ u_input.a.xx;
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec4<u32>(abs(global1[_wgslsmith_index_u32(var_3.b.a, 2u)]), _wgslsmith_sub_u32(0u, var_3.b.a), func_1(vec3<bool>(var_3.b.b, false, var_3.b.b), false).a, var_1 & 4294967295u), countOneBits(vec4<u32>(4294967295u, var_1, var_3.b.a, global1[_wgslsmith_index_u32(var_5.x, 2u)]) ^ vec4<u32>(var_1, 89883u, global1[_wgslsmith_index_u32(1u, 2u)], var_3.b.a)), !var_3.c));
}

