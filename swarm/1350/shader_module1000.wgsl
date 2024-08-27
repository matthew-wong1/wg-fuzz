struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 31>;

var<private> global1: f32;

var<private> global2: Struct_2;

var<private> global3: Struct_2;

var<private> global4: vec4<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: u32) -> i32 {
    var var_0 = Struct_2(~16235i, Struct_1(vec3<i32>(~(global2.b.c ^ -27119i), firstLeadingBit(1i), select(2147483647i, -1757i, true)), global2.d.x, u_input.c.x), global4.x, global3.d, global3.b);
    let var_1 = _wgslsmith_sub_u32(arg_1, arg_1);
    let var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(arg_1 << ((4294967295u | var_1) % 32u), 31u)] ^ countOneBits(var_0.b.a.zz)), (var_0.e.a.yy & (~u_input.c | select(global3.e.a.xx, var_0.b.a.yy, var_0.d))) >> (~(global4.wy << (~vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_3 = global3.b;
    global0 = array<vec2<i32>, 31>();
    return reverseBits(var_2.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> u32 {
    let var_0 = Struct_2(-3173i, global2.e, 65134u, select(vec2<bool>(arg_0.d.x, true | all(vec4<bool>(false, false, false, true))), select(select(vec2<bool>(arg_0.b.b, arg_0.b.b), global2.d, select(arg_0.d, vec2<bool>(true, true), arg_0.e.b)), select(vec2<bool>(true, true), global2.d, !arg_0.d.x), vec2<bool>(all(global2.d), true)), !global2.d), global3.e);
    var var_1 = (var_0.c & ~max(1u, firstTrailingBit(819u))) | countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(~15216u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.c, arg_1.x, 1u, global4.x), vec4<u32>(global3.c, 1u, global2.c, u_input.b)), ~0u), ~_wgslsmith_mod_vec3_u32(global4.ywx, vec3<u32>(0u, arg_1.x, global2.c))));
    global0 = array<vec2<i32>, 31>();
    var var_2 = Struct_2(global2.a, global2.e, firstTrailingBit(65082u), !(!global2.d), Struct_1(global2.b.a | _wgslsmith_mod_vec3_i32(-vec3<i32>(-12239i, var_0.b.a.x, -2147483647i), vec3<i32>(-6014i, -2147483647i, global3.e.a.x)), global3.e.b, _wgslsmith_sub_i32(-2147483647i, -var_0.b.a.x) & var_0.a));
    let var_3 = select(var_2.e.b, global3.b.b, any(!vec2<bool>(var_0.d.x | global2.b.b, arg_0.d.x)));
    return var_2.c;
}

fn func_2() -> u32 {
    var var_0 = func_4(Struct_2(_wgslsmith_sub_i32(-global3.e.c & ~(-52503i), func_3(global2.a, _wgslsmith_div_u32(0u, global3.c), 1u)), Struct_1(vec3<i32>(1i, -2147483647i, firstTrailingBit(global2.b.a.x)), any(vec3<bool>(global2.d.x, global3.e.b, false)), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.a, 1177i, 2147483647i, 54675i) << (vec4<u32>(u_input.b, 4544u, 1u, global2.c) % vec4<u32>(32u)), ~vec4<i32>(-43i, 1i, u_input.c.x, 0i))), _wgslsmith_clamp_u32(60876u, ~select(global2.c, 1u, false), ~global2.c), vec2<bool>(true, true), global2.e), ~(vec4<u32>(~global4.x, ~global3.c, 0u, _wgslsmith_mult_u32(4294967295u, global3.c)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(global2.c, global2.c, global4.x, u_input.a), ~vec4<u32>(1u, global2.c, 4294967295u, global2.c)) % vec4<u32>(32u))));
    let var_1 = all(!global2.d);
    global0 = array<vec2<i32>, 31>();
    var var_2 = vec2<bool>(all(select(select(global2.d, vec2<bool>(false, var_1), var_1 & var_1), vec2<bool>(true, true), any(vec2<bool>(true, true)))), var_1);
    var var_3 = global3.b.a.yy;
    return global4.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> vec3<bool> {
    global3 = Struct_2(-firstLeadingBit(-(-5893i & global3.a)), global2.e, func_2(), select(vec2<bool>(true, !all(vec3<bool>(false, global2.e.b, true))), !(!(!arg_3.d)), any(select(select(vec4<bool>(arg_3.e.b, true, false, global2.d.x), vec4<bool>(arg_3.e.b, arg_3.e.b, global3.d.x, false), vec4<bool>(global3.b.b, global2.b.b, global2.b.b, arg_3.d.x)), !vec4<bool>(true, global3.b.b, true, global2.e.b), vec4<bool>(global3.d.x, global2.b.b, global2.e.b, arg_3.d.x)))), arg_3.e);
    let var_0 = global2.b;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(674f, -734f)) - _wgslsmith_f_op_f32(156f - 1144f)) * 364f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(226f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -551f))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2259f * 371f) - -451f))))));
    global4 = vec4<u32>(_wgslsmith_sub_u32(65992u, arg_3.c), select(abs(1u), 4294967295u, all(select(select(vec4<bool>(false, global3.d.x, global2.b.b, global2.b.b), vec4<bool>(global3.b.b, true, false, arg_3.d.x), vec4<bool>(global2.e.b, true, global2.b.b, true)), vec4<bool>(arg_3.e.b, global2.b.b, global2.d.x, false), true))), u_input.b, _wgslsmith_add_u32(1u, arg_3.c));
    return !vec3<bool>(1i <= (func_3(24995i, global3.c, 67067u) ^ select(global3.b.a.x, 1846i, false)), all(global3.d), arg_3.e.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(func_1(~vec2<i32>(-1i, 1i), 2187i, u_input.b, Struct_2(global3.e.a.x, Struct_1(vec3<i32>(global3.b.c, global2.e.c, 30165i), true, global2.e.c), 1u, vec2<bool>(true, global2.d.x), Struct_1(global2.e.a, global3.b.b, u_input.c.x))), vec3<bool>(global2.d.x, global3.d.x, true), global3.e.b), func_1(max(-_wgslsmith_add_vec2_i32(global2.b.a.xx, vec2<i32>(global2.b.c, u_input.c.x)), ~vec2<i32>(13268i, global2.e.c)), 0i, global4.x, Struct_2(abs(-54784i), Struct_1(min(global3.e.a, global3.e.a), global3.e.b, 0i), select(func_4(Struct_2(global2.a, Struct_1(global3.e.a, true, global3.a), global4.x, vec2<bool>(true, true), Struct_1(vec3<i32>(1i, u_input.c.x, -23490i), global2.b.b, 2147483647i)), vec4<u32>(global2.c, 56757u, 53267u, u_input.a)), ~global3.c, any(vec4<bool>(false, false, false, global3.e.b))), !vec2<bool>(false, global2.b.b), Struct_1(vec3<i32>(-1i, global3.b.a.x, global2.e.c), any(vec3<bool>(global3.e.b, global2.e.b, true)), global2.e.a.x))), true);
    var var_1 = 24387u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1575f)))), 510f, _wgslsmith_f_op_f32(trunc(225f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1376f - -225f), -210f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1254f)), _wgslsmith_f_op_f32(floor(111f))))));
    let var_3 = global2.b.a.zz;
    var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1207f * var_2.x)))), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(sign(var_2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(abs(190f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + 717f) + 1f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(ceil(399f)), -1000f, 235f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(342f, var_2.x, 1341f, var_2.x) + vec4<f32>(var_2.x, -309f, 1414f, -1002f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-427f, -2358f, 746f, 1176f), vec4<f32>(var_2.x, var_2.x, -1277f, 479f))), vec4<f32>(var_2.x, -1203f, -2389f, 1000f)))));
    var var_4 = false | all(vec4<bool>(var_0.x, var_0.x, global2.d.x, true));
    var_1 = ~max(max(global2.c, _wgslsmith_clamp_u32(global2.c, ~9952u, _wgslsmith_clamp_u32(0u, 84689u, global2.c))), 46328u);
    let var_5 = firstLeadingBit(select(max(~vec4<u32>(77670u, 1u, 1u, global4.x), vec4<u32>(~1u, 13692u, ~12627u, _wgslsmith_dot_vec3_u32(vec3<u32>(24709u, 0u, 29010u), vec3<u32>(20172u, u_input.b, 30115u)))), vec4<u32>(u_input.b, ~9075u, ~global4.x, ~(~35071u)), select(select(vec4<bool>(true, true, true, true), !vec4<bool>(global3.b.b, global3.e.b, global2.b.b, var_0.x), vec4<bool>(true, var_0.x, true, global3.e.b)), vec4<bool>(global3.e.b, select(true, false, true), global3.e.b, true), _wgslsmith_dot_vec2_u32(global4.xx, global4.wy) > ~20752u)));
    var var_6 = Struct_2(-countOneBits(firstLeadingBit(global2.a)), Struct_1(vec3<i32>(global3.b.a.x, -(1i | global2.b.c), u_input.c.x), true, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-1i, 1i), global2.a), global3.e.a.xy)), ~(~13553u >> (firstLeadingBit(17439u) % 32u)) | _wgslsmith_add_u32(~(~51219u), ~global4.x), var_0.xy, global3.b);
    let x = u_input.a;
    s_output = StorageBuffer(global3.e.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, 179f, var_2.x, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(global2.b.b, false, false, true), var_6.b.b)))))), _wgslsmith_dot_vec2_i32(var_6.b.a.xx, global2.e.a.xz));
}

