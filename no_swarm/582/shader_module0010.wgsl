struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2;

var<private> global2: i32;

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<u32>(4294967295u, 1u, 103144u, 0u), 1u, -28526i), Struct_1(vec4<u32>(0u, 2712u, 38845u, 0u), 7502u, -1i), Struct_1(vec4<u32>(94573u, 4294967295u, 1u, 55206u), 4294967295u, -32326i), Struct_1(vec4<u32>(0u, 20691u, 4294967295u, 41265u), 8918u, -31922i), Struct_1(vec4<u32>(1u, 14947u, 1u, 0u), 4294967295u, 455i), Struct_1(vec4<u32>(1u, 27302u, 1u, 12561u), 1u, -28139i), Struct_1(vec4<u32>(53407u, 0u, 33609u, 4294967295u), 1u, 23732i), Struct_1(vec4<u32>(53321u, 4294967295u, 41011u, 50389u), 4294967295u, 22193i), Struct_1(vec4<u32>(1u, 20882u, 31165u, 0u), 1u, -1i), Struct_1(vec4<u32>(0u, 1u, 0u, 0u), 1u, 0i), Struct_1(vec4<u32>(1u, 1u, 1u, 0u), 0u, i32(-2147483648)), Struct_1(vec4<u32>(16939u, 1u, 94374u, 4294967295u), 0u, -41038i), Struct_1(vec4<u32>(1u, 56936u, 49238u, 41127u), 0u, -13766i), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 4294967295u), 4294967295u, -13597i), Struct_1(vec4<u32>(4294967295u, 35709u, 54606u, 37179u), 4294967295u, 1i), Struct_1(vec4<u32>(117715u, 88779u, 4294967295u, 1u), 58746u, 0i), Struct_1(vec4<u32>(30018u, 4294967295u, 8321u, 4294967295u), 1u, -72314i), Struct_1(vec4<u32>(0u, 1u, 1u, 0u), 1u, i32(-2147483648)), Struct_1(vec4<u32>(4294967295u, 65956u, 3292u, 36515u), 18017u, i32(-2147483648)), Struct_1(vec4<u32>(68332u, 15263u, 1u, 83410u), 4294967295u, 27474i), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 4294967295u), 4294967295u, 0i), Struct_1(vec4<u32>(1u, 1u, 19378u, 4294967295u), 4294967295u, 17691i), Struct_1(vec4<u32>(0u, 27661u, 0u, 40790u), 4294967295u, -39158i), Struct_1(vec4<u32>(22271u, 1u, 1u, 63357u), 0u, -42254i), Struct_1(vec4<u32>(89030u, 8313u, 96823u, 55062u), 0u, -33723i), Struct_1(vec4<u32>(2835u, 0u, 4294967295u, 1151u), 19684u, -3503i), Struct_1(vec4<u32>(50u, 55071u, 23121u, 24845u), 59333u, i32(-2147483648)), Struct_1(vec4<u32>(33193u, 0u, 4294967295u, 1u), 0u, i32(-2147483648)), Struct_1(vec4<u32>(1u, 101886u, 0u, 51152u), 1u, 26218i));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32, arg_1: f32) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(-382f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1208f))))), 825f, _wgslsmith_f_op_f32(global1.a.x - global1.a.x), global1.a.x);
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(global1.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1080f, global0.c.a.x, arg_1, var_0.x)) * _wgslsmith_f_op_vec4_f32(-global0.c.a))));
    var var_1 = global3[_wgslsmith_index_u32(reverseBits(u_input.d.x), 29u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-407f, arg_1) - _wgslsmith_f_op_f32(-global0.a.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(193f, global1.a.x)))) - var_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 1762f))));
    let var_3 = !select(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), !select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * -2100f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: f32) -> Struct_3 {
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(select(arg_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a), _wgslsmith_f_op_vec2_f32(abs(arg_1.a)))), !(!(!vec2<bool>(arg_0, true))))), abs(~vec4<i32>(1i, -11583i, ~(-1i), _wgslsmith_dot_vec3_i32(arg_1.b.xwz, vec3<i32>(508i, -2147483647i, 16253i)))), Struct_2(arg_1.c.a));
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 9104u, u_input.e.x, 40338u), ~vec4<u32>(u_input.a, u_input.a, ~u_input.d.x, u_input.d.x)), ~_wgslsmith_mult_u32(21396u, firstTrailingBit(4294967295u)), ~_wgslsmith_sub_i32(-abs(arg_2.x), -(~(-46076i))));
    var var_1 = abs(~arg_1.b.x) ^ arg_2.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(1u, _wgslsmith_f_op_f32(sign(global1.a.x)))) * _wgslsmith_f_op_f32(step(-359f, arg_1.c.a.x))));
    global0 = arg_1;
    return arg_1;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> f32 {
    let var_0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_1, -1493f))) != _wgslsmith_f_op_f32(-arg_0.x), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 850f)) - vec2<f32>(1024f, arg_0.x))), reverseBits(vec4<i32>(_wgslsmith_sub_i32(227i, global0.b.x), -global0.b.x, abs(-36522i), 8650i)), Struct_2(global0.c.a)), vec3<i32>(-42543i, ~_wgslsmith_add_i32(u_input.c, 1i), _wgslsmith_div_i32(i32(-1i) * -2147483647i, global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -427f)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(true, Struct_3(vec2<f32>(var_0.a.x, arg_0.x), global0.b, Struct_2(vec4<f32>(global1.a.x, var_0.a.x, 178f, global1.a.x))), countOneBits(var_0.b.zyy), _wgslsmith_f_op_f32(max(arg_0.x, global1.a.x))).c.a + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c.a + var_0.c.a) * _wgslsmith_f_op_vec4_f32(vec4<f32>(761f, 139f, -795f, 1487f) + vec4<f32>(530f, global0.a.x, -414f, -501f))))));
    let var_2 = u_input.e.x;
    var var_3 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(abs(global0.b.x), _wgslsmith_mult_i32(global0.b.x, u_input.c), _wgslsmith_div_i32(u_input.c, -1i)), firstLeadingBit(countOneBits(vec3<i32>(-2147483647i, -39561i, u_input.b)))), ~var_0.b.zyx << (_wgslsmith_sub_vec3_u32(vec3<u32>(var_2, u_input.d.x, u_input.d.x) & vec3<u32>(4294967295u, 62591u, 18787u), vec3<u32>(8653u, var_2, 1u)) % vec3<u32>(32u)));
    let var_4 = Struct_1(~countOneBits(firstLeadingBit(vec4<u32>(66484u, 15217u, 46815u, 4350u))), reverseBits(~(~arg_1) & 35138u), _wgslsmith_mod_i32(global0.b.x, reverseBits(~10035i)) | 2147483647i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(869f, _wgslsmith_f_op_f32(arg_0.x * -1639f))) + 428f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(global0.c.a.xz, global1.a.wx), vec2<f32>(global1.a.x, -299f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(global0.c.a.zzz, u_input.a)), _wgslsmith_f_op_f32(-global1.a.x))))), ~global0.b, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.a.x, 1789f, global0.a.x, 107f)))));
    let var_1 = global0.b.x;
    let var_2 = -2147483647i;
    let var_3 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -646f), 1000f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(409f, -1233f)), 722f)), global0.b, var_0.c);
    let var_4 = -_wgslsmith_dot_vec4_i32(-(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b.x, u_input.c, 0i, var_3.b.x), vec4<i32>(-45552i, global0.b.x, -10855i, var_2))), vec4<i32>(var_2, -min(-30987i, 5624i), abs(851i), 0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_3.c.a.x)))))), _wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(49653u, u_input.a, u_input.a, u_input.a)), vec4<u32>(27128u, u_input.d.x ^ u_input.d.x, ~29201u, max(firstTrailingBit(u_input.a), u_input.d.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(global0.c.a.wx)), vec2<f32>(var_0.c.a.x, var_3.a.x), true))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3(true, var_3, global0.b.xwx, -881f).c.a.zw + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_3.c.a.x, -1332f))))))), vec4<f32>(_wgslsmith_f_op_f32(1755f - var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(250f, global1.a.x))) * -1428f), _wgslsmith_f_op_f32(-var_3.c.a.x), 318f), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(var_2, 1i, u_input.b, var_3.b.x), global0.b), ~(~_wgslsmith_mod_vec4_i32(var_3.b, global0.b))));
}

