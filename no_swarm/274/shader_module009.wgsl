struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: vec4<u32>;

var<private> global3: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-1413f, -781f), vec2<f32>(-679f, 293f), vec2<f32>(-1325f, 544f), vec2<f32>(1000f, -780f), vec2<f32>(-1230f, 796f), vec2<f32>(121f, 1310f), vec2<f32>(1028f, -677f), vec2<f32>(-1041f, 971f), vec2<f32>(636f, -273f), vec2<f32>(720f, 1273f), vec2<f32>(-815f, 540f), vec2<f32>(1399f, 968f), vec2<f32>(828f, 962f), vec2<f32>(-1113f, 773f), vec2<f32>(1763f, 2604f), vec2<f32>(-1000f, -1313f), vec2<f32>(1146f, -1961f), vec2<f32>(-1221f, -1000f), vec2<f32>(-425f, -1210f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    global2 = vec4<u32>(_wgslsmith_mult_u32(global2.x, 4294967295u), ~(_wgslsmith_add_u32(0u, firstTrailingBit(4294967295u)) ^ _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global2.x, global2.x), 1u, ~u_input.a.x)), ~(~(~select(global2.x, global2.x, true))), _wgslsmith_clamp_u32(firstLeadingBit(~(~16689u)), u_input.c.x, u_input.c.x >> (~40973u % 32u)));
    var var_0 = Struct_1(vec4<u32>(global2.x, u_input.a.x, ~_wgslsmith_dot_vec2_u32(~u_input.c, ~vec2<u32>(global2.x, global2.x)), 38701u), countOneBits(~u_input.a.xxx), select(vec3<bool>(global1.x, global1.x, any(vec3<bool>(global1.x, global1.x, true))), select(!(!vec3<bool>(true, global1.x, global1.x)), select(select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, global1.x, global1.x)), select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(false, true, false), true), vec3<bool>(true, global1.x, false)), vec3<bool>(true, all(vec2<bool>(global1.x, global1.x)), any(vec2<bool>(false, global1.x)))), vec3<bool>(global1.x, firstTrailingBit(u_input.b) > countOneBits(u_input.b), false)), !select(vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(all(vec2<bool>(false, true)), global1.x), true));
    let var_1 = true;
    var var_2 = ~vec3<u32>(~1u, 0u, 4294967295u) & _wgslsmith_div_vec3_u32(~(~var_0.a.yxx), vec3<u32>(_wgslsmith_sub_u32(4294967295u, ~u_input.d), ~53485u, 1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(39050u, global2.x, global2.x, 52018u), var_0.a) % 32u)));
    var var_3 = Struct_1(vec4<u32>(_wgslsmith_div_u32(var_2.x, _wgslsmith_mod_u32(~11497u, var_2.x)), ~(_wgslsmith_clamp_u32(u_input.c.x, 1u, u_input.c.x) & _wgslsmith_add_u32(88138u, var_0.b.x)), var_2.x, var_2.x), ~max(~vec3<u32>(var_2.x, 1u, 8991u) & (u_input.a.wyy | u_input.a.xyx), ~vec3<u32>(0u, var_2.x, 1u)), var_0.c, vec2<bool>(true, global1.x));
    return _wgslsmith_dot_vec4_i32(min(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)), ~(-16638i), -56284i, u_input.b & 38708i), vec4<i32>(-2147483647i, _wgslsmith_clamp_i32(-13294i, u_input.b, 2147483647i), -14398i, u_input.b)), vec4<i32>(u_input.b, ~1i, u_input.b, ~u_input.b)), vec4<i32>(abs(_wgslsmith_clamp_i32(u_input.b, u_input.b, 0i)), u_input.b, 2147483647i, ~1i) ^ vec4<i32>(~u_input.b, _wgslsmith_mod_i32(-16873i, u_input.b), ~u_input.b, firstTrailingBit(_wgslsmith_sub_i32(22349i, -31395i))));
}

fn func_2(arg_0: vec4<f32>) -> bool {
    global2 = ~vec4<u32>(global2.x, global2.x, ~select(abs(0u), ~22582u, true), global2.x);
    return firstTrailingBit(_wgslsmith_sub_i32(func_3(), min(55247i, _wgslsmith_mod_i32(u_input.b, u_input.b)))) == 21445i;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_0)))))));
    let var_1 = arg_1;
    global2 = var_1.a;
    global3 = array<vec2<f32>, 19>();
    let var_2 = Struct_1(_wgslsmith_sub_vec4_u32(var_1.a, (vec4<u32>(global2.x, u_input.d, var_1.b.x, arg_1.b.x) | vec4<u32>(var_1.b.x, 11488u, 44936u, 1u)) ^ u_input.a), vec3<u32>(1u ^ arg_1.b.x, _wgslsmith_add_u32(41918u, 0u), 0u), arg_1.c, arg_2.zx);
    return ~global2.x;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = firstTrailingBit(vec2<i32>(func_3() << (~12813u % 32u), -min(u_input.b, -1i & u_input.b)));
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_mult_vec4_u32(u_input.a, max(abs(u_input.a), u_input.a))), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(0u, arg_2), arg_0.x, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(61536u, global2.x, 4294967295u, u_input.a.x))) | select(arg_0, vec3<u32>(4294967295u, 31649u, 62729u), all(vec4<bool>(false, false, false, global1.x))), u_input.a.wyz), vec3<bool>(!func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 1044f, -572f, 1000f) * vec4<f32>(513f, 136f, 1198f, 416f))), func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 284f, -102f, -1000f) - vec4<f32>(arg_1.x, -1414f, arg_1.x, arg_1.x)), vec4<f32>(-965f, arg_1.x, 715f, 1276f), vec4<bool>(global1.x, arg_3.x, arg_3.x, true)))), global1.x), select(select(!vec2<bool>(global1.x, global1.x), select(select(arg_3, vec2<bool>(global1.x, true), arg_3), select(arg_3, vec2<bool>(global1.x, true), vec2<bool>(false, false)), select(arg_3, vec2<bool>(false, false), false)), select(!vec2<bool>(global1.x, false), select(vec2<bool>(false, true), vec2<bool>(true, false), arg_3), !arg_3)), arg_3, !(global1.x || global1.x) | global1.x));
    var var_2 = Struct_1(_wgslsmith_mult_vec4_u32(~(~min(var_1.a, u_input.a)), abs(~vec4<u32>(u_input.d, 4294967295u, global2.x, u_input.c.x))), ~vec3<u32>(_wgslsmith_sub_u32(~arg_2, var_1.a.x), 55578u, arg_2), vec3<bool>(global1.x, arg_3.x | !all(var_1.c), !select(true, any(vec4<bool>(true, false, var_1.c.x, true)), false)), var_1.c.zz);
    global3 = array<vec2<f32>, 19>();
    var var_3 = false;
    return Struct_1(var_1.a, _wgslsmith_mod_vec3_u32(~(~vec3<u32>(var_2.a.x, arg_2, 1u)), ~arg_0), vec3<bool>(select(var_1.c.x, all(vec2<bool>(var_2.c.x, arg_3.x)), all(select(vec2<bool>(true, var_1.c.x), var_1.c.xx, false))), all(vec2<bool>(var_2.d.x, var_2.d.x)), false), !(!var_1.c.yx));
}

fn func_1(arg_0: vec2<bool>) -> vec2<bool> {
    let var_0 = u_input.a.yzx;
    global3 = array<vec2<f32>, 19>();
    global0 = -firstLeadingBit(u_input.b);
    let var_1 = func_5(vec3<u32>(func_4(-573f, Struct_1(u_input.a, vec3<u32>(47588u, 4294967295u, 35546u), select(vec3<bool>(true, false, false), vec3<bool>(true, arg_0.x, arg_0.x), true), vec2<bool>(global1.x, true)), vec4<bool>(func_2(vec4<f32>(-255f, -1409f, 999f, -1608f)), global1.x, any(vec3<bool>(true, true, arg_0.x)), any(vec4<bool>(false, global1.x, true, true)))), max(_wgslsmith_div_u32(7673u, u_input.d), _wgslsmith_mult_u32(1u, 1u)) & ~u_input.c.x, 1u >> (_wgslsmith_div_u32(44251u, _wgslsmith_mod_u32(43626u, 4294967295u)) % 32u)), global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(53673u, _wgslsmith_mult_u32(global2.x, 74096u)), 19u)], ~(~var_0.x), !(!select(select(vec2<bool>(true, true), vec2<bool>(arg_0.x, false), true), !arg_0, vec2<bool>(true, true))));
    global3 = array<vec2<f32>, 19>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!(!select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, false), func_1(vec2<bool>(global1.x, false)))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-888f)), _wgslsmith_f_op_f32(sign(1068f)))), 1704f);
    var var_2 = vec3<i32>(-func_3(), ~max(u_input.b, u_input.b), _wgslsmith_mult_i32(u_input.b, -33121i)) & (vec3<i32>(-1i) * -vec3<i32>(-u_input.b, u_input.b, u_input.b & u_input.b));
    let var_3 = firstLeadingBit(0u >> (global2.x % 32u));
    var var_4 = vec4<f32>(var_1, var_1, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1)))));
    global1 = !select(select(!func_1(vec2<bool>(true, var_0)), vec2<bool>(true, true), vec2<bool>(var_0, var_0)), vec2<bool>(true, all(select(vec4<bool>(global1.x, true, false, var_0), vec4<bool>(var_0, true, false, true), global1.x))), !(!(!vec2<bool>(global1.x, true))));
    var var_5 = _wgslsmith_sub_vec2_u32(vec2<u32>(52403u, u_input.a.x), vec2<u32>(min(~_wgslsmith_dot_vec3_u32(u_input.a.xww, vec3<u32>(5315u, global2.x, 1u)), 66698u), 1u));
    let var_6 = Struct_1(vec4<u32>(0u, _wgslsmith_dot_vec2_u32(func_5(global2.yww >> (u_input.a.zyw % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, var_1)), select(28620u, u_input.c.x, var_0), !vec2<bool>(true, global1.x)).b.yx, min(vec2<u32>(global2.x, 0u), ~vec2<u32>(4294967295u, u_input.d))), ~1u, _wgslsmith_sub_u32(global2.x, 15129u)), select(~u_input.a.zww, min(vec3<u32>(36673u, var_3, global2.x), vec3<u32>(23835u, 1u, global2.x)) | ~global2.www, var_0), func_5(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_5.x, 66184u, u_input.c.x, 0u)), _wgslsmith_sub_u32(12844u, global2.x), ~1u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -191f)), var_1), var_5.x, vec2<bool>(select(true, global1.x & var_0, !var_0), !all(vec4<bool>(global1.x, false, var_0, global1.x)))).c, vec2<bool>(!global1.x, all(!vec2<bool>(false, var_0)) & func_5(firstLeadingBit(u_input.a.zzy), _wgslsmith_f_op_vec2_f32(max(global3[_wgslsmith_index_u32(54845u, 19u)], vec2<f32>(838f, var_4.x))), firstLeadingBit(global2.x), !vec2<bool>(var_0, true)).c.x));
    let x = u_input.a;
    s_output = StorageBuffer((~_wgslsmith_div_i32(1i, 22080i) | var_2.x) << (~(~u_input.a.x) % 32u), _wgslsmith_f_op_f32(-var_4.x), var_4.x);
}

