struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: array<bool, 13> = array<bool, 13>(true, true, true, false, false, false, true, true, false, false, false, true, true);

var<private> global2: vec2<u32> = vec2<u32>(30856u, 47458u);

var<private> global3: array<f32, 30>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec3<u32>) -> vec4<f32> {
    global0 = array<bool, 3>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.zx, arg_0.xy), 30u)], _wgslsmith_f_op_f32(1191f + 855f), -797f, 101f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, global3[_wgslsmith_index_u32(4294967295u, 30u)], global3[_wgslsmith_index_u32(arg_0.x, 30u)], -311f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 30u)], -1514f, 1637f, -938f) * vec4<f32>(1668f, 1795f, -1000f, global3[_wgslsmith_index_u32(arg_0.x, 30u)]))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<i32>) -> i32 {
    let var_0 = vec2<bool>(any(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(global2.x, 3u)], false, true), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(u_input.b.x, 3u)], false), true)) || false, false);
    let var_1 = u_input.b.wxw;
    global0 = array<bool, 3>();
    global3 = array<f32, 30>();
    let var_2 = Struct_4(global0[_wgslsmith_index_u32(var_1.x, 3u)]);
    return _wgslsmith_add_i32(~abs(~(-1i)), ~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), abs(vec4<i32>(arg_1.x, 36057i, -25172i, arg_1.x)), -vec4<i32>(2147483647i, arg_1.x, arg_1.x, arg_1.x)), ~max(vec4<i32>(2147483647i, arg_1.x, -37357i, -1i), vec4<i32>(arg_1.x, -2147483647i, arg_1.x, arg_1.x))));
}

fn func_1() -> Struct_1 {
    let var_0 = -2372i >> (global2.x % 32u);
    var var_1 = _wgslsmith_clamp_i32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(0u, global2.x, 20330u))), _wgslsmith_div_vec4_f32(vec4<f32>(419f, 1247f, global3[_wgslsmith_index_u32(u_input.a, 30u)], 1413f), vec4<f32>(1085f, global3[_wgslsmith_index_u32(22159u, 30u)], -1000f, global3[_wgslsmith_index_u32(37405u, 30u)])))), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(-14753i, var_0), vec2<i32>(var_0, var_0) >> (u_input.b.xz % vec2<u32>(32u))), firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(45232i, 0i))))), ~abs(var_0), var_0);
    let var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~9418u, global2.x, 0u), u_input.b.wyx), vec3<u32>(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(global2.x, 50371u)), global2.x, ~_wgslsmith_add_u32(global2.x, global2.x)) ^ abs(~vec3<u32>(global2.x, 1u, u_input.b.x)));
    var var_3 = Struct_1(global2.x, select(select(select(!vec3<bool>(true, global0[_wgslsmith_index_u32(global2.x, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 3u)], true), false), !vec3<bool>(false, false, global1[_wgslsmith_index_u32(1u, 13u)]), select(select(vec3<bool>(global0[_wgslsmith_index_u32(60683u, 3u)], global0[_wgslsmith_index_u32(global2.x, 3u)], global0[_wgslsmith_index_u32(global2.x, 3u)]), vec3<bool>(true, false, global0[_wgslsmith_index_u32(49068u, 3u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(var_2, 13u)])), vec3<bool>(false, false, true), select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 13u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global1[_wgslsmith_index_u32(0u, 13u)]), global0[_wgslsmith_index_u32(68509u, 3u)]))), select(!select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(u_input.b.x, 3u)], true), vec3<bool>(global1[_wgslsmith_index_u32(global2.x, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], false), vec3<bool>(false, true, true)), !select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)], true), vec3<bool>(true, global1[_wgslsmith_index_u32(global2.x, 13u)], global0[_wgslsmith_index_u32(90773u, 3u)]), global1[_wgslsmith_index_u32(1u, 13u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 3u)], all(vec4<bool>(global1[_wgslsmith_index_u32(88783u, 13u)], true, true, false)))), !global0[_wgslsmith_index_u32(~var_2, 3u)] & true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1301f, global3[_wgslsmith_index_u32(global2.x, 30u)], _wgslsmith_f_op_f32(select(1479f, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, var_2, 1u), 30u)], true)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, -952f))))));
    let var_4 = Struct_4(!var_3.b.x);
    return Struct_1(~abs(~(~var_3.a)), var_3.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-803f, var_3.c.x, -292f, 1850f))))))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global0 = array<bool, 3>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -320f)));
    global2 = ~u_input.b.yz;
    let var_1 = select(all(select(select(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(55905u, 3u)], true), select(vec4<bool>(false, arg_2.b.x, arg_1.b.x, false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 3u)], true, arg_1.b.x, false), vec4<bool>(global1[_wgslsmith_index_u32(1013u, 13u)], global1[_wgslsmith_index_u32(19115u, 13u)], true, false)), !vec4<bool>(global1[_wgslsmith_index_u32(42020u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)], arg_2.a.b.x)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(arg_1.b.x, false, arg_1.a.b.x, false), false), !vec4<bool>(arg_2.a.b.x, true, arg_2.b.x, global1[_wgslsmith_index_u32(arg_2.a.a, 13u)]), select(vec4<bool>(true, global1[_wgslsmith_index_u32(global2.x, 13u)], global1[_wgslsmith_index_u32(12996u, 13u)], false), vec4<bool>(arg_1.b.x, arg_2.a.b.x, global1[_wgslsmith_index_u32(4294967295u, 13u)], arg_2.a.b.x), vec4<bool>(false, false, true, false))), !select(vec4<bool>(false, true, arg_2.b.x, false), vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 13u)], true, arg_1.b.x, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], true, false, global1[_wgslsmith_index_u32(37017u, 13u)])))), true, true);
    let var_2 = -_wgslsmith_div_vec2_i32(vec2<i32>(i32(-1i) * -1i, max(firstLeadingBit(1i), 1i)), -vec2<i32>(max(2147483647i, -23852i), -36219i));
    return arg_2.a;
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = arg_1.b.xy;
    var var_1 = Struct_3(!select(global1[_wgslsmith_index_u32(u_input.a, 13u)], true, true) | !select(true, any(vec4<bool>(false, arg_1.b.x, arg_1.b.x, global1[_wgslsmith_index_u32(42204u, 13u)])), global1[_wgslsmith_index_u32(1u, 13u)] | var_0.x), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(global2.x, 400u), 16669u), vec4<bool>(select(arg_1.b.x, global0[_wgslsmith_index_u32(~global2.x, 3u)], true), !arg_1.b.x, false, true), vec3<i32>(-794i, -2147483647i, 28226i));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-870f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1498f))), _wgslsmith_f_op_f32(386f + _wgslsmith_f_op_f32(arg_1.c.x * global3[_wgslsmith_index_u32(u_input.b.x, 30u)]))))));
    var_0 = var_1.c.xz;
    global2 = _wgslsmith_div_vec2_u32(vec2<u32>(10441u, arg_0), _wgslsmith_add_vec2_u32(vec2<u32>(func_4(_wgslsmith_div_u32(53432u, u_input.a), Struct_2(arg_1, var_1.c.yz), Struct_2(Struct_1(u_input.a, vec3<bool>(false, var_0.x, global1[_wgslsmith_index_u32(arg_1.a, 13u)]), arg_1.c), var_1.c.zz)).a, 1u), ~(~(~u_input.b.yx))));
    return StorageBuffer(_wgslsmith_mod_u32(~(4294967295u | u_input.a), ~u_input.b.x), -select(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.d.x, var_1.d.x, 6745i, var_1.d.x), vec4<i32>(var_1.d.x, -1i, 0i, 1i)) >> (~vec4<u32>(var_1.b, var_1.b, global2.x, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(var_1.d.x, -26937i, abs(var_1.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.x, var_1.d.x, var_1.d.x, var_1.d.x), vec4<i32>(var_1.d.x, var_1.d.x, var_1.d.x, -68500i))), var_1.a), arg_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(~_wgslsmith_mod_u32(u_input.a, _wgslsmith_div_u32(max(global2.x, u_input.a), ~u_input.a)), func_4(1623u ^ global2.x, Struct_2(func_1(), vec2<bool>(!global0[_wgslsmith_index_u32(global2.x, 3u)], global0[_wgslsmith_index_u32(22107u, 3u)] && true)), Struct_2(func_1(), vec2<bool>(func_1().b.x, any(vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 3u)], global1[_wgslsmith_index_u32(global2.x, 13u)], global1[_wgslsmith_index_u32(41652u, 13u)], true))))));
}

