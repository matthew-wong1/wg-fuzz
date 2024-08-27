struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: array<u32, 3>;

var<private> global2: Struct_1 = Struct_1(-1000f, vec4<f32>(1010f, 246f, 1501f, 379f), -14225i, vec2<u32>(4294967295u, 39506u), -562f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> f32 {
    var var_0 = ~38335u;
    let var_1 = vec2<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(~arg_0.d.x, _wgslsmith_add_u32(15124u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10021u, 27u)] << (arg_3.e.d.x % 32u), 27u)]), _wgslsmith_f_op_f32(trunc(arg_2)) == -1632f), 3u)], 3u)], 0u);
    global1 = array<u32, 3>();
    global1 = array<u32, 3>();
    let var_2 = 42874u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-630f, _wgslsmith_div_f32(172f, _wgslsmith_f_op_f32(-arg_3.e.b.x))) + 277f));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec4<bool>) -> bool {
    let var_0 = ~74862u;
    var var_1 = vec4<i32>(global2.c, u_input.a.x, _wgslsmith_sub_i32(-23081i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, -3i, global2.c), _wgslsmith_add_vec3_i32(u_input.d, vec3<i32>(arg_1.d.d, arg_1.d.b, arg_0.x)) | countOneBits(u_input.a.xxw))), arg_1.d.e.c);
    var var_2 = Struct_2(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), -_wgslsmith_dot_vec2_i32(select(u_input.d.zy, -vec2<i32>(2147483647i, -2468i), arg_2.x), arg_0.wx), arg_2.x, 0i ^ -_wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, global2.c), u_input.d.xz, arg_2.yy), _wgslsmith_sub_vec2_i32(u_input.a.yx, var_1.yy)), Struct_1(_wgslsmith_f_op_f32(-arg_1.d.e.e), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.d.e.a, arg_1.d.e.a))), -238f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 528f)), _wgslsmith_f_op_f32(max(global2.e, arg_1.d.e.e))), arg_0.x, firstLeadingBit(global2.d), -381f));
    let var_3 = _wgslsmith_f_op_f32(min(global2.b.x, _wgslsmith_f_op_f32(1046f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 886f) + arg_1.d.e.b.x))));
    global0 = array<u32, 27>();
    return false || (407f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_2.e, 2147483647i, var_3, Struct_2(arg_1.d.a, -20910i, arg_2.x, -2147483647i, var_2.e)))))));
}

fn func_1(arg_0: bool) -> vec3<f32> {
    let var_0 = Struct_3(_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(select(30523u, max(11648u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70836u, 27u)], 27u)]), func_2(vec4<i32>(global2.c, 2147483647i, u_input.a.x, global2.c), Struct_3(global0[_wgslsmith_index_u32(42916u, 27u)], u_input.e, u_input.e.zy, Struct_2(-34475i, u_input.d.x, true, -55693i, Struct_1(777f, global2.b, global2.c, u_input.e.ww, global2.e)), false), vec4<bool>(false, arg_0, arg_0, arg_0))), 27u)], global1[_wgslsmith_index_u32(global2.d.x, 3u)]), u_input.e, _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.e.x, 0u), min(u_input.b.zz, global2.d)), Struct_2(global2.c, ~firstLeadingBit(16215i), true, -select(select(0i, -25083i, arg_0), reverseBits(-2147483647i), true), Struct_1(1147f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global2.b)), vec4<f32>(-667f, global2.b.x, -1743f, -508f)), _wgslsmith_mult_i32(u_input.a.x, -53280i), ~(~vec2<u32>(25096u, 18399u)), -718f)), all(select(select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_0), false | arg_0), vec2<bool>(true, true), false)));
    var var_1 = Struct_2(0i, _wgslsmith_add_i32(-29090i, var_0.d.d), arg_0, 22232i, Struct_1(_wgslsmith_f_op_f32(max(199f, _wgslsmith_f_op_f32(select(global2.e, 1527f, true)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-465f, global2.b.x, -1048f, -975f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d.e.a, global2.b.x, global2.b.x, -840f), vec4<f32>(var_0.d.e.b.x, -1068f, 1531f, 254f))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1672f, 116f, var_0.d.e.b.x, 1062f)))), select(true, var_0.d.c | true, !arg_0))), _wgslsmith_div_i32(abs(-1i), ~2147483647i), vec2<u32>(~var_0.d.e.d.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(29099u, 3u)], u_input.e.x), u_input.e.xy) % 32u), abs(var_0.d.e.d.x | global2.d.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-1495f - global2.b.x))))));
    var var_2 = !select(vec3<bool>(!(var_1.e.d.x < global2.d.x), false, !any(vec3<bool>(var_1.c, var_0.e, var_0.e))), select(vec3<bool>(false, 0i > var_0.d.a, func_2(vec4<i32>(var_0.d.a, global2.c, 1646i, var_0.d.d), var_0, vec4<bool>(var_0.e, var_0.e, var_0.d.c, true))), !(!vec3<bool>(arg_0, arg_0, var_1.c)), !(!vec3<bool>(var_1.c, true, true))), func_2(u_input.a, Struct_3(global0[_wgslsmith_index_u32(global2.d.x, 27u)], vec4<u32>(49929u, var_1.e.d.x, 4294967295u, 0u), var_0.d.e.d, Struct_2(var_0.d.a, -54862i, true, var_1.b, Struct_1(631f, global2.b, -2147483647i, var_0.d.e.d, global2.e)), var_0.d.e.a == var_0.d.e.b.x), !select(vec4<bool>(false, false, true, var_0.d.c), vec4<bool>(var_0.d.c, true, true, true), var_1.c)));
    let var_3 = var_0.d;
    let var_4 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.d.e.b.xww), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(838f, 1000f, var_0.d.e.b.x))))), !(!vec3<bool>(var_3.c, arg_0, var_2.x)))) - var_3.e.b.www), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.e.b.x + var_1.e.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.e + 136f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.e.e))))))));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(var_1.e.b.xwy)))), vec3<f32>(global2.e, _wgslsmith_f_op_f32(347f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2289f + global2.a))), -742f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-292f, _wgslsmith_f_op_f32(-global2.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(416f)), _wgslsmith_f_op_f32(max(global2.a, global2.b.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global2.a, 778f, false))))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -173f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e * global2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1630f) * _wgslsmith_f_op_f32(sign(global2.b.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b.zwx))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_1(false)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-117f, -125f, global2.e)))));
    var var_1 = Struct_1(-1143f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b * vec4<f32>(278f, _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(1067f * global2.e), var_0.x)), global2.b), _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.a.zy), vec2<i32>(global2.c, _wgslsmith_mod_i32(_wgslsmith_add_i32(2147483647i, global2.c), -47683i))), global2.d, _wgslsmith_f_op_f32(exp2(global2.e)));
    let var_2 = Struct_3(select(0u, _wgslsmith_mod_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(84569u, 3u)], 1u), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 3u)], 4294967295u), 27u)]), true) ^ ~_wgslsmith_mod_u32(global2.d.x | 0u, var_1.d.x), u_input.e, vec2<u32>(~global0[_wgslsmith_index_u32(reverseBits(var_1.d.x), 27u)], global0[_wgslsmith_index_u32(firstLeadingBit(abs(~var_1.d.x)), 27u)]), Struct_2(i32(-1i) * -_wgslsmith_clamp_i32(var_1.c, var_1.c, -2891i), u_input.c, !all(vec4<bool>(true, true, false, true)), min(var_1.c, -17276i), Struct_1(global2.b.x, var_1.b, 2714i, max(_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32330u, 27u)], 27u)], global1[_wgslsmith_index_u32(0u, 3u)]), var_1.d), ~u_input.b.xz), _wgslsmith_f_op_f32(var_1.a * -1398f))), !func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, global2.c, global2.c, var_1.c), vec4<i32>(-2147483647i, -65318i, 46546i, var_1.c), u_input.a), Struct_3(firstTrailingBit(1u), u_input.e, firstTrailingBit(u_input.b.xz), Struct_2(420i, global2.c, false, global2.c, Struct_1(1290f, var_1.b, -30079i, vec2<u32>(u_input.e.x, 60512u), -1028f)), true), vec4<bool>(func_2(vec4<i32>(u_input.a.x, 1i, 2147483647i, global2.c), Struct_3(var_1.d.x, vec4<u32>(global1[_wgslsmith_index_u32(0u, 3u)], global2.d.x, 1u, 0u), vec2<u32>(1u, global1[_wgslsmith_index_u32(23217u, 3u)]), Struct_2(u_input.d.x, -2147483647i, true, 26848i, Struct_1(var_1.a, vec4<f32>(global2.a, global2.b.x, global2.a, global2.a), global2.c, vec2<u32>(36638u, u_input.b.x), global2.e)), true), vec4<bool>(true, true, true, false)), any(vec2<bool>(false, true)), false, any(vec3<bool>(false, true, false)))));
    global2 = var_2.d.e;
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-1099f, var_0.x, _wgslsmith_f_op_f32(max(-1449f, _wgslsmith_f_op_vec3_f32(func_1(!var_2.d.c)).x))), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_1(true & all(vec4<bool>(false, true, var_2.d.c, var_2.e)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.d.e.b.x)))))));
    global0 = array<u32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(-1368f);
}

