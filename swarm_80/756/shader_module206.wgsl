struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
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

var<private> global0: array<f32, 27> = array<f32, 27>(-240f, 1226f, -715f, -109f, 1949f, 1569f, -1598f, 709f, 1046f, 1911f, 1130f, -1066f, -289f, -1141f, -1389f, 618f, -459f, -1268f, 452f, 658f, -781f, -148f, 818f, -206f, -727f, 345f, 1066f);

var<private> global1: Struct_4;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<bool>(true, true, false), 0i, vec3<f32>(-2915f, -1186f, -2588f)), Struct_1(vec3<bool>(false, true, false), 66617i, vec3<f32>(127f, 805f, 1596f)), Struct_1(vec3<bool>(true, false, false), 0i, vec3<f32>(-127f, -384f, 1270f)), Struct_1(vec3<bool>(true, false, true), 65471i, vec3<f32>(1000f, 1186f, -535f)), Struct_1(vec3<bool>(true, true, false), -23152i, vec3<f32>(1381f, -160f, -1159f)), Struct_1(vec3<bool>(false, true, true), -34096i, vec3<f32>(342f, -592f, 573f)), Struct_1(vec3<bool>(false, false, true), 2147483647i, vec3<f32>(323f, -1093f, 1193f)), Struct_1(vec3<bool>(false, false, false), 1i, vec3<f32>(1341f, 353f, 1000f)), Struct_1(vec3<bool>(false, false, false), i32(-2147483648), vec3<f32>(255f, 507f, 315f)));

var<private> global3: array<Struct_1, 5>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<bool> {
    let var_0 = any(!vec4<bool>(false, true, arg_1.a.x && true, true));
    global2 = array<Struct_1, 9>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1297f, 446f, 3170f, -570f)))));
    var var_2 = !(arg_2.x > ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 38132u, u_input.d.x, arg_2.x), select(vec4<u32>(u_input.b, 55969u, arg_2.x, 1u), vec4<u32>(0u, 76562u, 1u, 0u), true)));
    var var_3 = Struct_3(Struct_1(select(vec3<bool>(true, true, true), !(!vec3<bool>(global1.e.b, false, arg_1.a.x)), any(arg_1.a.yz)), 13529i, arg_1.c), all(select(vec4<bool>(var_0, true, global1.e.a.x, any(global1.e.a)), select(!vec4<bool>(global1.e.b, true, var_0, true), select(vec4<bool>(true, true, true, arg_1.a.x), vec4<bool>(true, arg_1.a.x, arg_1.a.x, true), vec4<bool>(false, true, true, arg_1.a.x)), false), !vec4<bool>(false, true, global1.e.b, var_0))), abs(vec2<u32>(u_input.d.x, _wgslsmith_sub_u32(arg_2.x, 1u))), select(global1.d, select(select(!vec3<bool>(arg_1.a.x, true, true), select(arg_1.a, arg_1.a, global1.d), global1.d), select(vec3<bool>(true, true, false), select(vec3<bool>(global1.d.x, global1.e.b, global1.e.b), arg_1.a, arg_1.a.x), all(arg_1.a)), global1.d), all(!select(global1.d.yz, global1.d.zx, global1.d.xx))), Struct_2(select(arg_1.a.xx, !(!vec2<bool>(false, var_0)), any(vec3<bool>(var_0, false, arg_1.a.x))), true, arg_1.c.zy, _wgslsmith_div_vec4_i32(global1.e.d, select(select(global1.e.d, global1.e.d, false), select(global1.e.d, global1.e.d, vec4<bool>(var_0, arg_1.a.x, true, global1.e.b)), true))));
    return !(!(!select(select(vec4<bool>(arg_1.a.x, false, arg_1.a.x, arg_1.a.x), vec4<bool>(var_0, false, global1.e.a.x, false), vec4<bool>(arg_1.a.x, var_3.b, false, var_0)), vec4<bool>(global1.e.a.x, var_3.b, false, var_0), select(vec4<bool>(var_0, var_3.d.x, var_0, var_3.b), vec4<bool>(false, var_3.b, arg_1.a.x, arg_1.a.x), vec4<bool>(false, true, global1.e.a.x, false)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_4 {
    let var_0 = func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.d.x, 27u)])) * arg_0.c.x), global0[_wgslsmith_index_u32(31485u, 27u)], -1105f, 479f)), Struct_1(vec3<bool>(true, select(all(global1.d.xz), true, true), !(arg_0.c.x > 698f)), arg_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(69520u, 27u)], arg_1.c.x, 489f) + arg_1.c) + vec3<f32>(-1124f, global1.a, arg_1.c.x)))), u_input.d.zz);
    global1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2183f))) - _wgslsmith_f_op_f32(-arg_1.c.x)), vec3<i32>(0i, global1.b.x, ~u_input.c.x), -3739i, !(!global1.d), global1.e);
    global1 = Struct_4(-1070f, global1.b, _wgslsmith_sub_i32(~(~global1.b.x), _wgslsmith_mult_i32(-1i, -arg_1.b)), vec3<bool>(true, !var_0.x, global1.a < 417f), global1.e);
    var var_1 = vec3<u32>(_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.b, 1u, u_input.d.x, 10840u), vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.b)), ~vec4<u32>(u_input.d.x, 66454u, u_input.b, u_input.b))), u_input.b, max(u_input.d.x, u_input.d.x)) & ~(~vec3<u32>(31614u ^ u_input.b, ~u_input.d.x, 1u));
    var var_2 = -21442i | _wgslsmith_clamp_i32(~countOneBits(~0i), _wgslsmith_mod_i32(select(13950i, arg_0.b, false), -30268i) | firstLeadingBit(global1.c & 14666i), arg_0.b);
    return Struct_4(global1.a, ~(~(~(global1.b & vec3<i32>(-1i, 5163i, 1i)))), 0i, !arg_1.a, Struct_2(!(!(!arg_1.a.yy)), all(global1.d), vec2<f32>(_wgslsmith_f_op_f32(global1.a + 1529f), -224f), ~select(firstLeadingBit(vec4<i32>(arg_0.b, -72302i, -38522i, 1i)), ~global1.e.d, var_0)));
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = func_2(global2[_wgslsmith_index_u32(0u, 9u)], arg_0.a, vec2<i32>(~max(countOneBits(arg_0.a.b), -471i & u_input.c.x), arg_0.e.d.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -543f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1413f, _wgslsmith_f_op_f32(f32(-1f) * -1588f)), global0[_wgslsmith_index_u32(77646u, 27u)], true))));
    let var_2 = arg_0.c.x;
    global1 = func_2(Struct_1(arg_0.a.a, countOneBits(-2147483647i) | _wgslsmith_dot_vec3_i32(var_0.b, var_0.b), arg_0.a.c), global3[_wgslsmith_index_u32(84595u, 5u)], ~global1.e.d.ww);
    var var_3 = abs(reverseBits(func_2(Struct_1(vec3<bool>(var_0.e.b, global1.d.x, global1.d.x), ~0i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-535f, var_0.a, arg_0.a.c.x))), global3[_wgslsmith_index_u32(0u, 5u)], _wgslsmith_sub_vec2_i32(vec2<i32>(global1.c, arg_0.a.b), -var_0.e.d.zx)).e.d.xyx));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(countOneBits(49223u), 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -822f) + _wgslsmith_f_op_f32(var_1.x + arg_0.e.c.x))), true)) * var_1.x);
}

fn func_4(arg_0: f32, arg_1: bool) -> u32 {
    var var_0 = firstLeadingBit(max(select(global1.e.d ^ global1.e.d, vec4<i32>(-15156i, -2147483647i, -51460i, global1.b.x), vec4<bool>(true, global1.e.a.x, false, false)), -vec4<i32>(u_input.c.x, 2147483647i, 1i, global1.c))) << (min(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(38684u, u_input.d.x, 59840u, 1u), vec4<u32>(4294967295u, u_input.b, u_input.b, 0u), false), vec4<u32>(_wgslsmith_sub_u32(u_input.d.x, 16433u), u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(92702u, u_input.b, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.b)), _wgslsmith_mult_u32(u_input.d.x, 0u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, ~u_input.b, 82580u, u_input.d.x), ~vec4<u32>(1u, u_input.b, 54704u, u_input.d.x), ~(~vec4<u32>(1u, u_input.d.x, u_input.b, 0u)))) % vec4<u32>(32u));
    var var_1 = true;
    var var_2 = global3[_wgslsmith_index_u32(~min(1u, _wgslsmith_div_u32(1u, ~1u)), 5u)];
    var var_3 = Struct_1(!var_2.a, u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(max(793f, arg_0)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.c.x + -1910f))))), var_2.c.x, global1.a));
    let var_4 = Struct_3(global3[_wgslsmith_index_u32(u_input.d.x, 5u)], !all(!vec2<bool>(var_3.a.x, false)), ~u_input.d.yz, func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, var_2.c.x, -115f, arg_0)))), global2[_wgslsmith_index_u32(41227u, 9u)], _wgslsmith_add_vec2_u32(~u_input.d.yx, ~abs(vec2<u32>(54919u, u_input.b)))).wyz, Struct_2(var_2.a.xy, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 361f, -188f)), global3[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(49106u, u_input.d.x, u_input.d.x), u_input.d.x), 5u)], select(~vec2<u32>(88207u, u_input.d.x), vec2<u32>(1u, 4294967295u) ^ u_input.d.yx, arg_1)).x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c.x, 131f)), _wgslsmith_f_op_vec2_f32(global1.e.c * vec2<f32>(var_2.c.x, 1476f)), false)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-744f, -2211f)))), global1.e.d));
    return firstLeadingBit(var_4.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 27>();
    var var_0 = global1.e.c.x;
    var_0 = global0[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(global1.d, global1.e.d.x, vec3<f32>(global1.e.c.x, 1684f, global1.a)), global1.e.a.x, vec2<u32>(u_input.d.x, 0u), vec3<bool>(false, false, global1.e.a.x), global1.e)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -856f))))) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 27u)] * _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~1u, 27u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 27u)], -1761f), global1.e.a.x)))), !(global1.d.x && global1.d.x)), 27u)];
    let var_1 = func_2(Struct_1(!global1.d, -18495i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], -784f, -956f)))))), global2[_wgslsmith_index_u32(u_input.b, 9u)], abs(_wgslsmith_sub_vec2_i32(u_input.c, select(vec2<i32>(-41972i, global1.e.d.x) << (vec2<u32>(u_input.d.x, 4294967295u) % vec2<u32>(32u)), global1.b.yx, global1.d.x))));
    global0 = array<f32, 27>();
    let var_2 = global1.e;
    let var_3 = -3662i;
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-163f, _wgslsmith_f_op_f32(exp2(global1.a))))));
    var_0 = _wgslsmith_f_op_f32(ceil(-2161f));
    let x = u_input.a;
    s_output = StorageBuffer(var_3);
}

