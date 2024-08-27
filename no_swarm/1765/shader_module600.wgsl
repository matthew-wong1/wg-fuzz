struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(3592i), vec2<u32>(2401u, 3136u), vec2<f32>(525f, -569f));

var<private> global1: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(1i, 2147483647i, 38647i), vec3<i32>(1i, -1329i, 1i), vec3<i32>(2147483647i, -7101i, i32(-2147483648)));

var<private> global2: Struct_3;

var<private> global3: Struct_4;

var<private> global4: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_1) -> i32 {
    global2 = arg_1;
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1442f, _wgslsmith_f_op_f32(f32(-1f) * -1047f)));
    let var_1 = Struct_2(Struct_1(44921i), vec2<u32>((_wgslsmith_mult_u32(global0.b.x, 1u) & abs(57621u)) ^ global0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, arg_2.x), arg_2.x, arg_1.a.b.x, 17945u), arg_2)), _wgslsmith_f_op_vec2_f32(-var_0));
    let var_2 = global3.b;
    let var_3 = !vec2<bool>(!(!all(vec3<bool>(global3.b.x, global3.b.x, false))), all(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(global3.a.a.b.x, arg_2.x)), 7u)]));
    return var_1.a.a;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: vec2<i32>) -> bool {
    let var_0 = global3.a.e.a;
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_div_i32(i32(-1i) * -71383i, abs(_wgslsmith_clamp_i32(1i ^ arg_3.x, 1i, ~6710i))), select(arg_3.x & _wgslsmith_sub_i32(~global2.a.a.a, _wgslsmith_add_i32(33782i, -2147483647i)), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(global2.a.c.x + 1013f)), global3.a, countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, arg_0, global3.a.a.b.x), u_input.c)), global0.a), !(!(!global3.b.x))));
    var var_2 = vec3<f32>(1417f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_1)))), arg_1);
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1), -751f, global3.a.e.c.x);
    let var_3 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~(~4294967295u), ~firstTrailingBit(global2.e.b.x), 1u, arg_0), u_input.c), abs(global3.a.e.b.x));
    return global3.b.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = global2.d.xyy;
    let var_1 = 37602u;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * global0.c.x)), 109f) + _wgslsmith_f_op_f32(-858f + _wgslsmith_f_op_f32(global3.a.e.c.x - global2.d.x))) * global3.a.d.x);
    var var_3 = arg_1.a;
    let var_4 = select(!(!(!select(vec3<bool>(false, false, global3.b.x), vec3<bool>(global3.b.x, global3.b.x, true), vec3<bool>(global3.b.x, global3.b.x, true)))), !(!vec3<bool>(any(vec4<bool>(true, global3.b.x, true, false)), global3.b.x | true, false && global3.b.x)), select(vec3<bool>(u_input.a.x < arg_1.a, select(all(vec4<bool>(global3.b.x, global3.b.x, global3.b.x, false)), func_2(var_1, arg_2.c.x, global0.a.a, vec2<i32>(-17704i, arg_2.a.a)), true), !global3.b.x), select(select(vec3<bool>(true, global3.b.x, global3.b.x), vec3<bool>(false, global3.b.x, true), false), vec3<bool>(global3.b.x & false, false, true), vec3<bool>(all(vec4<bool>(global3.b.x, global3.b.x, false, false)), any(vec3<bool>(global3.b.x, global3.b.x, true)), true)), vec3<bool>(false, global3.b.x, global3.b.x)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -217f))), arg_2.c.x), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.a.d.x))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32) -> vec3<bool> {
    return select(select(!vec3<bool>(global3.b.x, false, global3.b.x), vec3<bool>(true, true, true), !global3.b.x), !select(!select(vec3<bool>(global3.b.x, false, false), vec3<bool>(true, false, global3.b.x), global3.b.x), select(select(vec3<bool>(global3.b.x, true, global3.b.x), vec3<bool>(global3.b.x, global3.b.x, false), global3.b.x), select(vec3<bool>(false, true, global3.b.x), vec3<bool>(global3.b.x, global3.b.x, true), vec3<bool>(global3.b.x, false, true)), true), false), vec3<bool>(global3.b.x, !any(vec3<bool>(true, false, global3.b.x)), true));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: bool) -> Struct_2 {
    global2 = Struct_3(Struct_2(Struct_1(-2147483647i), ~u_input.b.xy, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global0.c - global3.a.e.c)))))), _wgslsmith_clamp_vec2_i32(firstTrailingBit(global3.a.b), vec2<i32>(global2.a.a.a ^ 0i, _wgslsmith_mult_i32(2147483647i, firstTrailingBit(2123i))), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(global0.a.a, -1i), -2147483647i), global2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.e.c.x), _wgslsmith_div_f32(1177f, global0.c.x)))), _wgslsmith_f_op_vec4_f32(-global2.d), Struct_2(global0.a, arg_1.wx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global2.d.zy, vec2<f32>(global2.d.x, 634f))))));
    let var_0 = !vec4<bool>(func_4(global2.e.a, arg_2.a.d.wxx, _wgslsmith_dot_vec3_i32(-vec3<i32>(global0.a.a, 0i, global3.a.b.x), _wgslsmith_add_vec3_i32(vec3<i32>(arg_2.a.a.a.a, u_input.a.x, 34494i), vec3<i32>(arg_2.a.a.a.a, global0.a.a, -77512i)))).x, !arg_2.b.x, func_2(0u, 552f, -1i, _wgslsmith_mult_vec2_i32(u_input.a.yy ^ vec2<i32>(-1803i, arg_2.a.b.x), _wgslsmith_div_vec2_i32(global2.b, vec2<i32>(global0.a.a, 1i)))), any(select(arg_0, func_4(Struct_1(-2147483647i), vec3<f32>(global3.a.a.c.x, -1593f, arg_2.a.c), u_input.a.x), all(arg_2.b))));
    let var_1 = vec3<f32>(global2.a.c.x, global3.a.a.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-378f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -466f), !(!arg_2.b.x & (var_0.x || true)))));
    let var_2 = Struct_1(-(global2.a.a.a | countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(44096i, arg_2.a.e.a.a, global3.a.a.a.a), global1[_wgslsmith_index_u32(87903u, 3u)]))));
    var var_3 = var_0.xz;
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(global2.e.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global3.a.a.c.x, -456f), _wgslsmith_f_op_f32(func_1(vec4<u32>(global3.a.e.b.x, 37719u, 1u, global0.b.x), Struct_1(-2147483647i), Struct_2(global0.a, vec2<u32>(u_input.c.x, global2.a.b.x), vec2<f32>(global3.a.c, -551f)))), global2.c) - vec3<f32>(_wgslsmith_f_op_f32(-547f * 1000f), global3.a.d.x, 244f)), _wgslsmith_div_i32(4499i, ~global3.a.a.a.a)), ~u_input.c, Struct_4(global3.a, !(!func_4(global2.e.a, global3.a.d.ywz, 41466i).zz)), true);
    let var_1 = firstTrailingBit(vec3<u32>(max(u_input.d, 63369u) | _wgslsmith_dot_vec3_u32(vec3<u32>(192u, var_0.b.x, 70474u), u_input.b), u_input.e, global2.e.b.x)) ^ vec3<u32>(4294967295u, 0u, 0u);
    global3 = Struct_4(Struct_3(global2.a, vec2<i32>(-_wgslsmith_add_i32(global0.a.a, -14739i), global3.a.e.a.a), var_0.c.x, vec4<f32>(_wgslsmith_f_op_f32(-1513f + var_0.c.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global2.d.x)))), -1000f, global0.c.x), func_5(select(vec3<bool>(true, true, true), !vec3<bool>(false, true, global3.b.x), !vec3<bool>(global3.b.x, global3.b.x, false)), u_input.c, Struct_4(global3.a, global3.b), global3.b.x)), select(vec2<bool>(all(vec4<bool>(false, global3.b.x, global3.b.x, true)), true), !(!(!vec2<bool>(false, global3.b.x))), global3.b.x && (true || global3.b.x)));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(485f))));
    global1 = array<vec3<i32>, 3>();
    global2 = Struct_3(global3.a.a, global2.b, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(-var_0.c.x)))), _wgslsmith_f_op_vec4_f32(-global2.d), Struct_2(global2.e.a, u_input.b.xy, _wgslsmith_f_op_vec2_f32(select(global3.a.a.c, var_0.c, vec2<bool>(true, true)))));
    var var_3 = select(!select(select(select(vec2<bool>(global3.b.x, true), vec2<bool>(false, true), vec2<bool>(true, global3.b.x)), vec2<bool>(true, global3.b.x), global3.b.x), vec2<bool>(true, func_4(Struct_1(global2.a.a.a), global2.d.xwx, global3.a.e.a.a).x), true | (-1134f <= global0.c.x)), select(!func_4(global3.a.a.a, vec3<f32>(-1005f, 455f, global2.e.c.x), global2.a.a.a).yy, global3.b, !global3.b.x), func_4(func_5(!(!vec3<bool>(false, global3.b.x, true)), u_input.c, Struct_4(Struct_3(Struct_2(Struct_1(global0.a.a), global2.a.b, vec2<f32>(global3.a.d.x, -1000f)), global2.b, 1000f, vec4<f32>(global2.c, var_0.c.x, -731f, global2.e.c.x), Struct_2(Struct_1(2147483647i), vec2<u32>(global3.a.e.b.x, 1u), global2.a.c)), vec2<bool>(global3.b.x, false)), global3.b.x).a, _wgslsmith_f_op_vec3_f32(global3.a.d.ywy + vec3<f32>(-121f, _wgslsmith_f_op_f32(-var_0.c.x), global2.c)), -5906i).zy);
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-var_0.a.a, 0i, u_input.a.x, abs(countOneBits(global0.a.a)) << (~firstLeadingBit(74693u) % 32u)), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global3.a.a.b, u_input.b.xx), var_0.b.x & 16904u), 1u), ~0u));
}

