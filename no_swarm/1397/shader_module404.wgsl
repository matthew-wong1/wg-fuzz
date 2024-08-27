struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: Struct_3,
    d: u32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec3<u32>;

var<private> global2: f32 = -105f;

var<private> global3: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    global1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(~0u, u_input.c.x, 52975u), select(~vec3<u32>(global1.x, u_input.c.x, 30316u), ~select(u_input.c, vec3<u32>(global1.x, u_input.b.x, u_input.c.x), global0.x), false)), ~u_input.c);
    global0 = !(!select(select(vec2<bool>(global0.x, false), !vec2<bool>(global0.x, true), vec2<bool>(global0.x, false)), !select(vec2<bool>(false, global0.x), vec2<bool>(false, false), vec2<bool>(true, true)), false));
    let var_0 = abs(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~u_input.a, u_input.a), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(-u_input.a, vec2<i32>(1i, -46171i)), _wgslsmith_sub_vec2_i32(-u_input.a, select(u_input.d.zy, u_input.d.zx, false)))));
    var var_1 = -8172i;
    let var_2 = Struct_5(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -501f))), _wgslsmith_f_op_f32(sign(-659f))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1596f, -1721f))))), Struct_3(Struct_2(~(~u_input.b), -_wgslsmith_mod_i32(var_0, -36704i), Struct_1(vec4<bool>(global0.x, true, global0.x, global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), false), _wgslsmith_f_op_f32(-823f * 858f), abs(vec2<i32>(-1i, var_0)), ~u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1281f, -154f, 975f)))), Struct_1(!(!vec4<bool>(false, global0.x, false, global0.x)), !(!vec2<bool>(true, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1207f) * _wgslsmith_f_op_f32(round(-2254f))), ~vec2<i32>(var_0, 29807i), _wgslsmith_mod_i32(~u_input.a.x, max(-34856i, 28488i))), 1696f), _wgslsmith_mult_u32(~(~(~u_input.b.x)), 22109u), Struct_4(Struct_1(!select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(false, true, false, global0.x), vec4<bool>(global0.x, false, global0.x, false)), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true), global0.x), -786f, u_input.d.xx, ~5708i | _wgslsmith_dot_vec2_i32(u_input.a, u_input.a))));
    return true;
}

fn func_2() -> i32 {
    let var_0 = vec3<i32>(-(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 6334i), u_input.d) ^ ~u_input.a.x) & -1i, countOneBits(15707i), _wgslsmith_mod_i32(-38035i | u_input.d.x, 9785i));
    var var_1 = u_input.d.x;
    global0 = vec2<bool>(false, select(!(!(45943u <= u_input.c.x)), !global0.x, !any(vec3<bool>(true, true, true))));
    let var_2 = func_3();
    var var_3 = -u_input.a.x;
    return select(u_input.a.x, 1i, true) | -1i;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: vec4<f32>) -> Struct_5 {
    global1 = ~u_input.c;
    global0 = select(vec2<bool>(select(2147483647i < u_input.d.x, select(2147483647i == arg_2.x, !arg_0, true), false), 0u <= ~(~global1.x)), select(!vec2<bool>(global0.x, arg_0), !(!vec2<bool>(false, global0.x)), arg_0), arg_1.x);
    let var_0 = 398f;
    var var_1 = _wgslsmith_f_op_f32(arg_3.x - -929f);
    let var_2 = Struct_3(Struct_2(~reverseBits(_wgslsmith_sub_vec2_u32(u_input.c.zx, global1.zz)), -2147483647i, Struct_1(select(!arg_1, vec4<bool>(arg_0, global0.x, global0.x, true), arg_1), !arg_1.yy, -265f, u_input.d.yz, -select(arg_2.x, -1i, false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_3.xyx)), vec3<f32>(_wgslsmith_f_op_f32(min(-401f, var_0)), _wgslsmith_div_f32(arg_3.x, var_0), arg_3.x))), Struct_1(!vec4<bool>(arg_1.x, false, true, 409f == arg_3.x), !(!select(vec2<bool>(true, true), arg_1.xz, vec2<bool>(true, global0.x))), -139f, -u_input.a, arg_2.x), -1000f);
    return Struct_5(any(!select(select(global3[_wgslsmith_index_u32(global1.x, 25u)], vec3<bool>(arg_1.x, var_2.a.c.a.x, false), vec3<bool>(true, global0.x, false)), vec3<bool>(false, global0.x, true), select(global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(48236u, 25u)], var_2.b.a.xyy))), var_2.a.d.zy, var_2, var_2.a.a.x, Struct_4(Struct_1(var_2.b.a, var_2.b.a.wy, 921f, countOneBits(reverseBits(vec2<i32>(-2147483647i, -2147483647i))), -2147483647i)));
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(global0.x, !(!(!select(vec4<bool>(false, global0.x, true, false), vec4<bool>(global0.x, true, false, false), vec4<bool>(false, false, global0.x, global0.x)))), (vec3<i32>(u_input.d.x, -u_input.a.x, u_input.d.x) ^ u_input.d.zww) | vec3<i32>(-2147483647i, func_2(), i32(-1i) * -2147483647i), vec4<f32>(-2316f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-313f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2260f) * -2150f))), 514f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(803f, 550f))))));
    let var_1 = global0.x;
    global2 = var_0.e.a.c;
    var var_2 = !select(!(!select(var_0.c.a.c.a, var_0.c.b.a, global0.x)), select(!vec4<bool>(false, var_0.e.a.b.x, true, global0.x), var_0.c.b.a, !vec4<bool>(var_0.e.a.a.x, true, global0.x, true)), _wgslsmith_f_op_f32(sign(var_0.e.a.c)) < _wgslsmith_f_op_f32(-var_0.b.x));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))))));
    return func_4(global0.x, select(vec4<bool>(var_0.e.a.d.x >= 16962i, all(!var_2.wwy), u_input.b.x < _wgslsmith_add_u32(6680u, 1u), true), var_0.c.a.c.a, !var_0.c.b.a), firstTrailingBit(~_wgslsmith_add_vec3_i32(-u_input.d.zyx, _wgslsmith_mod_vec3_i32(vec3<i32>(1i, -1i, -28323i), u_input.d.yzx))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.b.c, var_3, var_3, var_0.b.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_3, -416f, -276f))) - vec4<f32>(-1340f, 1000f, 1285f, -155f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, var_3, 1140f, var_3) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(922f, 506f, 1870f, -1000f), vec4<f32>(var_0.e.a.c, -392f, -505f, var_0.b.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1240f, var_3, var_3, var_3))))))).c.a;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec4<u32>) -> vec2<bool> {
    let var_0 = arg_1.x;
    let var_1 = func_4(any(!(!arg_2.c.a.wxy)), select(!vec4<bool>(all(vec3<bool>(false, global0.x, true)), all(arg_2.c.a), true, false), !(!vec4<bool>(false, true, global0.x, global0.x)), _wgslsmith_f_op_f32(arg_2.d.x + arg_1.x) != _wgslsmith_f_op_f32(min(-2065f, 1f))), min(u_input.d.xzz << (vec3<u32>(arg_3.x, arg_3.x & u_input.c.x, 2859u << (u_input.c.x % 32u)) % vec3<u32>(32u)), u_input.d.xyz), vec4<f32>(arg_2.c.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 * -1000f), _wgslsmith_f_op_f32(min(arg_1.x, arg_0.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -993f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-654f)), -594f)));
    var var_2 = arg_3;
    var var_3 = func_4(any(var_1.c.b.a), vec4<bool>(all(arg_2.c.b), false, true, !(select(true, false, arg_2.c.b.x) & false)), -u_input.d.wyw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1))))));
    let var_4 = func_4(true, var_1.c.a.c.a, ~vec3<i32>(func_1().c.e, -(~1i), arg_2.c.d.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, var_1.c.c, -386f, _wgslsmith_f_op_f32(max(-153f, _wgslsmith_div_f32(-1385f, arg_1.x))))))).e;
    return vec2<bool>(false, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec2<bool>(all(select(global3[_wgslsmith_index_u32(1u, 25u)], select(global3[_wgslsmith_index_u32(u_input.b.x, 25u)], global3[_wgslsmith_index_u32(u_input.b.x, 25u)], vec3<bool>(global0.x, false, global0.x)), true)), false), select(select(vec2<bool>(global0.x, global0.x == false), !vec2<bool>(global0.x, global0.x), global0.x), vec2<bool>(true, true), any(func_5(vec2<f32>(1578f, 959f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1874f, 1084f, -765f, -607f))), func_1(), max(vec4<u32>(4294967295u, global1.x, global1.x, 4294967295u), vec4<u32>(global1.x, global1.x, 4294967295u, 25440u))))), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1173f, 339f))), vec4<f32>(-1289f, 722f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1824f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1137f + 1019f) + _wgslsmith_f_op_f32(310f + 510f))), Struct_2(global1.yz, _wgslsmith_div_i32(1i, 1i), Struct_1(select(vec4<bool>(false, false, global0.x, true), vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, false, true, global0.x)), !vec2<bool>(false, global0.x), _wgslsmith_f_op_f32(round(978f)), u_input.a, func_4(global0.x, vec4<bool>(global0.x, true, global0.x, global0.x), vec3<i32>(u_input.d.x, u_input.d.x, -2147483647i), vec4<f32>(-233f, 569f, 732f, -563f)).c.b.d.x), vec3<f32>(-977f, _wgslsmith_f_op_f32(1000f + 1045f), -1782f)), select(vec4<u32>(countOneBits(4535u), func_1().a.x, func_4(false, vec4<bool>(true, global0.x, false, true), u_input.d.yyw, vec4<f32>(246f, 293f, -353f, 861f)).c.a.a.x, u_input.b.x), _wgslsmith_clamp_vec4_u32(~vec4<u32>(55199u, 0u, 5918u, global1.x), ~vec4<u32>(9282u, 30981u, global1.x, 4294967295u), abs(vec4<u32>(u_input.b.x, 1u, 57710u, 0u))), false)).x);
    global3 = array<vec3<bool>, 25>();
    var var_0 = ~u_input.d.wy;
    let var_1 = Struct_1(vec4<bool>(true, true, true | global0.x, !all(func_1().c.a.zwy)), !(!func_4(u_input.b.x < 4294967295u, func_4(true, vec4<bool>(global0.x, true, global0.x, global0.x), vec3<i32>(var_0.x, 0i, u_input.d.x), vec4<f32>(661f, -1751f, -363f, 326f)).e.a.a, vec3<i32>(u_input.a.x, var_0.x, u_input.d.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(679f, -1452f, 2102f, 727f) - vec4<f32>(1000f, 400f, -2249f, -317f))).c.a.c.a.wz), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-834f * 1f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(384f, 786f))))), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, u_input.d.x), vec2<i32>(var_0.x, var_0.x)) ^ ~u_input.d.wx, _wgslsmith_add_vec2_i32(u_input.d.yw, vec2<i32>(-19811i, var_0.x) >> (global1.yz % vec2<u32>(32u)))), u_input.d.ww), ~u_input.a.x);
    let var_2 = global0.x;
    var var_3 = func_4(global0.x, select(func_4(true, select(!var_1.a, vec4<bool>(true, true, true, global0.x), var_1.a), vec3<i32>(~(-66069i), var_1.e << (7903u % 32u), 7230i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, 1009f, var_1.c, var_1.c) + vec4<f32>(var_1.c, var_1.c, var_1.c, var_1.c)))).c.b.a, func_4(all(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(2637u, 4294967295u, global1.x)), 25u)]), !select(var_1.a, vec4<bool>(true, false, false, global0.x), true), vec3<i32>(var_0.x | 0i, -var_0.x, -2147483647i), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, 435f, var_1.c, -945f))))).c.a.c.a, global0.x), ~firstLeadingBit(countOneBits(-vec3<i32>(-9157i, var_0.x, 0i))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-369f, 2777f)) - _wgslsmith_f_op_f32(var_1.c * var_1.c)), 472f, var_1.c, -656f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c - var_1.c)), 438f, -803f, var_1.c))));
    let var_4 = !global3[_wgslsmith_index_u32(47357u, 25u)];
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b.x), var_1.c);
    var var_5 = -countOneBits(_wgslsmith_clamp_vec2_i32(func_4(var_3.c.a.c.b.x | var_1.a.x, !var_1.a, vec3<i32>(var_3.c.a.c.e, -1i, -1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(3224f, 110f, var_3.e.a.c, -716f) + vec4<f32>(var_3.c.a.c.c, 370f, -223f, -636f))).e.a.d, abs(select(vec2<i32>(u_input.a.x, 46205i), var_3.c.a.c.d, var_3.e.a.a.yw)), max(vec2<i32>(var_3.e.a.d.x, -17595i), var_1.d)));
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_mult_u32(~3608u, ~global1.x) & 1u) >> (global1.x % 32u), var_1.d, var_0.x >> (select(func_4(any(var_3.e.a.a), var_1.a, u_input.d.xyx, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.c, var_3.e.a.c, var_1.c, var_1.c)))).c.a.a.x, _wgslsmith_dot_vec3_u32(~u_input.c, vec3<u32>(69865u, 100815u, var_3.d)), func_5(_wgslsmith_f_op_vec2_f32(select(var_3.c.a.d.xx, var_3.c.a.d.zy, var_1.b)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.c, var_1.c, -253f, 611f))), func_4(false, var_1.a, u_input.d.xwz, vec4<f32>(var_3.b.x, var_3.e.a.c, var_3.e.a.c, var_3.c.b.c)).c.a, _wgslsmith_add_vec4_u32(vec4<u32>(38796u, 8692u, 4294967295u, u_input.b.x), vec4<u32>(var_3.c.a.a.x, 4294967295u, 79135u, global1.x))).x) % 32u));
}

