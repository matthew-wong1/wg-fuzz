struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<bool>(true, true), vec3<f32>(1209f, 1293f, -430f), vec4<bool>(true, true, false, true), vec3<f32>(-1129f, 934f, 287f)), Struct_1(vec2<bool>(true, false), vec3<f32>(-1331f, 1287f, -463f), vec4<bool>(false, true, false, false), vec3<f32>(-666f, 217f, 1580f)), Struct_1(vec2<bool>(false, true), vec3<f32>(-1787f, -1253f, 361f), vec4<bool>(false, false, false, true), vec3<f32>(-313f, 736f, 734f)), Struct_1(vec2<bool>(false, false), vec3<f32>(1974f, -1087f, -1000f), vec4<bool>(true, true, false, true), vec3<f32>(422f, 1000f, 966f)), Struct_1(vec2<bool>(true, true), vec3<f32>(283f, -609f, 1313f), vec4<bool>(true, false, true, false), vec3<f32>(560f, -1216f, 236f)), Struct_1(vec2<bool>(true, false), vec3<f32>(-455f, 2319f, -226f), vec4<bool>(false, true, true, false), vec3<f32>(1000f, 824f, 1529f)), Struct_1(vec2<bool>(false, false), vec3<f32>(-583f, -504f, -1000f), vec4<bool>(true, true, true, true), vec3<f32>(1515f, 620f, -2274f)), Struct_1(vec2<bool>(false, true), vec3<f32>(273f, -1474f, -587f), vec4<bool>(true, true, true, false), vec3<f32>(-1704f, -251f, -937f)), Struct_1(vec2<bool>(false, false), vec3<f32>(-1215f, -2092f, -1341f), vec4<bool>(true, true, true, true), vec3<f32>(1305f, -859f, 897f)), Struct_1(vec2<bool>(false, true), vec3<f32>(-232f, 399f, 1616f), vec4<bool>(true, true, false, false), vec3<f32>(1000f, -780f, 1103f)), Struct_1(vec2<bool>(false, false), vec3<f32>(-693f, -801f, -1590f), vec4<bool>(false, true, false, false), vec3<f32>(-2455f, 294f, 1337f)), Struct_1(vec2<bool>(true, false), vec3<f32>(-2490f, -660f, 856f), vec4<bool>(true, true, false, true), vec3<f32>(-1807f, -1230f, 1295f)), Struct_1(vec2<bool>(false, true), vec3<f32>(156f, -1164f, -1002f), vec4<bool>(true, true, true, false), vec3<f32>(-584f, -2485f, -259f)), Struct_1(vec2<bool>(false, false), vec3<f32>(654f, -2803f, 230f), vec4<bool>(false, true, true, false), vec3<f32>(100f, 611f, 784f)), Struct_1(vec2<bool>(true, true), vec3<f32>(317f, 519f, -768f), vec4<bool>(true, true, true, false), vec3<f32>(431f, 854f, -546f)), Struct_1(vec2<bool>(false, true), vec3<f32>(-1000f, 481f, -371f), vec4<bool>(true, true, false, false), vec3<f32>(181f, 150f, 1034f)));

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, true), vec3<f32>(-1307f, -1399f, 284f), vec4<bool>(false, true, false, false), vec3<f32>(1094f, -1312f, 179f));

var<private> global3: array<vec3<bool>, 16>;

var<private> global4: u32 = 79078u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global3 = array<vec3<bool>, 16>();
    global4 = 55147u;
    global2 = arg_1;
    return arg_0.c.x;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<f32>, arg_3: vec2<bool>) -> f32 {
    global1 = array<Struct_1, 16>();
    var var_0 = Struct_2(reverseBits(~_wgslsmith_add_i32(u_input.a.x, u_input.a.x << (arg_0 % 32u))), Struct_1(arg_3, global2.d, !select(global0.c, !global0.c, select(global2.c, global2.c, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.d) * vec3<f32>(arg_2.x, global2.d.x, global0.d.x)))));
    global1 = array<Struct_1, 16>();
    var var_1 = Struct_2(var_0.a, Struct_1(select(!select(vec2<bool>(arg_3.x, true), arg_3, global0.a), vec2<bool>(all(var_0.b.a), global2.b.x != 296f), var_0.b.c.wy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1139f, global0.d.x, -1000f))) + _wgslsmith_f_op_vec3_f32(arg_2.ywz * vec3<f32>(331f, global2.d.x, global2.b.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, var_0.b.d.x, 1366f) * vec3<f32>(1131f, -945f, 966f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-915f, 652f, global2.b.x)))), select(vec4<bool>(global2.a.x != global0.c.x, func_3(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], var_0.b), true, arg_3.x), !(!vec4<bool>(true, global0.c.x, true, global2.c.x)), false), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, 303f, -1000f), arg_2.ywy))))));
    var_1 = Struct_2(4511i, var_0.b);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-784f + -987f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.d.x, _wgslsmith_f_op_f32(f32(-1f) * -812f), true))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: bool) -> u32 {
    let var_0 = Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(func_2(63691u, _wgslsmith_f_op_f32(arg_1 * global0.b.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2332f, arg_0.x, -1000f, global2.b.x), vec4<f32>(global2.b.x, global0.d.x, -343f, -740f))), select(global2.a, global0.c.yy, vec2<bool>(true, global2.c.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_1, global2.b.x)))), -1947f), global0.b)), global0.c, vec3<f32>(260f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(215f)))), -500f));
    let var_1 = global2.d.x;
    var var_2 = firstTrailingBit(~20662u);
    var var_3 = vec3<bool>(firstTrailingBit(2147483647i) == abs(~_wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.xz)), all(global0.c.zz), any(!(!global2.c)) & arg_2);
    global4 = _wgslsmith_clamp_u32(1u, u_input.d.x, u_input.d.x);
    return 29858u;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = reverseBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(abs(u_input.b), ~vec2<u32>(1u, u_input.d.x) ^ ~u_input.d.zw), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1415f, -644f, global0.d.x, global2.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -1219f), !global0.a.x), _wgslsmith_clamp_u32(0u, u_input.d.x, u_input.d.x)));
    let var_0 = max(countOneBits(-_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(0i, 3350i, 2147483647i, u_input.a.x)), firstTrailingBit(vec4<i32>(u_input.c, 39743i, 64312i, u_input.c)))), (vec4<i32>(firstTrailingBit(u_input.c), u_input.c, ~u_input.c, 1i) & ~_wgslsmith_add_vec4_i32(vec4<i32>(-22111i, u_input.c, -61522i, u_input.c), vec4<i32>(4685i, u_input.c, 6467i, -1i))) ^ vec4<i32>(~_wgslsmith_div_i32(-43485i, u_input.c), u_input.a.x, 1i, 1i));
    var var_1 = abs(max(-_wgslsmith_div_i32(-1i, -42810i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), var_0.wx), 7182i)));
    var var_2 = global1[_wgslsmith_index_u32(~u_input.d.x, 16u)];
    global1 = array<Struct_1, 16>();
    let var_3 = global1[_wgslsmith_index_u32(max(62115u, firstTrailingBit(4294967295u)), 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(min(countOneBits(~(~u_input.d)), vec4<u32>(~u_input.b.x, u_input.b.x, u_input.b.x << (u_input.d.x % 32u), u_input.b.x) >> (~u_input.d % vec4<u32>(32u))), var_0);
}

