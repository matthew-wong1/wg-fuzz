struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: Struct_3,
    d: vec3<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global1: Struct_4;

var<private> global2: Struct_4 = Struct_4(-1000f, vec2<i32>(-18794i, 17498i), Struct_3(vec3<i32>(2147483647i, 37884i, 2147483647i), vec4<u32>(30860u, 70738u, 7089u, 41131u), vec4<f32>(-718f, 612f, -106f, -593f), vec4<f32>(433f, -557f, 1225f, -1550f), Struct_1(-8740i, vec2<i32>(i32(-2147483648), i32(-2147483648)), -1730f)), vec3<i32>(1i, -14933i, 24879i), Struct_3(vec3<i32>(i32(-2147483648), -29295i, -1i), vec4<u32>(4294967295u, 4294967295u, 48360u, 0u), vec4<f32>(-879f, -181f, 1208f, -533f), vec4<f32>(-658f, 310f, 318f, -387f), Struct_1(i32(-2147483648), vec2<i32>(-1i, 2147483647i), -420f)));

var<private> global3: f32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = global2.d.x;
    global3 = global2.c.d.x;
    global3 = _wgslsmith_f_op_f32(sign(global2.e.c.x));
    global1 = Struct_4(-456f, u_input.e, Struct_3(u_input.a, firstTrailingBit(vec4<u32>(u_input.d.x, global2.e.b.x, 58817u, u_input.d.x) | (global1.e.b ^ global1.c.b)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2230f, 531f, -484f, global1.c.d.x), global1.c.d, false))), global2.c.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-804f, _wgslsmith_f_op_f32(trunc(global1.a)), global1.e.c.x, global1.a)), Struct_1(-21970i, global2.b >> (u_input.d % vec2<u32>(32u)), global1.e.e.c)), ~vec3<i32>(1i, ~_wgslsmith_div_i32(14137i, -1i), reverseBits(-1i)), global1.e);
    var var_1 = u_input.d;
    return global2.c.d.x;
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = global2.e.e;
    let var_1 = vec4<f32>(global1.e.d.x, _wgslsmith_f_op_f32(func_3()), 806f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.e.c.x, _wgslsmith_f_op_f32(sign(-129f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))));
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-global2.e.c.x), _wgslsmith_f_op_f32(select(1191f, _wgslsmith_div_f32(-249f, global1.a), any(vec2<bool>(true, true)))), global2.c.c.x)));
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(func_3()));
    global0 = ~min(global2.e.b.zz & vec2<u32>(global2.c.b.x, 18115u), ~countOneBits(global2.c.b.xx)) & ~_wgslsmith_mult_vec2_u32(u_input.d, reverseBits(vec2<u32>(0u, 42002u)));
    return global1.c;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> bool {
    global1 = Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c.c.x), _wgslsmith_f_op_f32(-1f))))), _wgslsmith_mod_vec2_i32(global1.b, ~vec2<i32>(countOneBits(1i), global1.b.x)), Struct_3(global2.e.a >> (((arg_0.b.wwx & vec3<u32>(global2.e.b.x, global0.x, 4628u)) << ((global2.e.b.xwz << (vec3<u32>(44549u, 0u, global1.c.b.x) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(global2.c.b.x, global2.e.b.x), 5190u, _wgslsmith_dot_vec3_u32(global1.e.b.xwy, arg_1.b.zyw), 15763u ^ global0.x)), global1.c.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.c.d.x, -383f, 100f, arg_0.c.x), vec4<f32>(global1.c.c.x, 1000f, -721f, global2.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(596f, -1830f, -527f, global1.a))) + vec4<f32>(1522f, 1959f, arg_1.d.x, global2.c.d.x))), arg_0.e), ~global1.c.a, func_2(_wgslsmith_div_f32(global1.a, global2.c.d.x)));
    var var_0 = Struct_4(global2.e.c.x, vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.e.a, 1i, 0i), func_2(global2.e.c.x).a), ~min(_wgslsmith_dot_vec3_i32(vec3<i32>(1236i, arg_0.e.b.x, u_input.c), global1.d), firstLeadingBit(2147483647i))), Struct_3(countOneBits(vec3<i32>(global2.d.x >> (u_input.d.x % 32u), arg_1.a.x, -33807i)), _wgslsmith_add_vec4_u32(global1.e.b, _wgslsmith_add_vec4_u32(global2.c.b, vec4<u32>(39963u, arg_0.b.x, global0.x, arg_1.b.x))) ^ ~max(arg_1.b, arg_1.b), arg_1.c, _wgslsmith_f_op_vec4_f32(-global2.e.d), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.e.b.x, -2147483647i, arg_0.e.a, arg_0.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(global2.d.x, arg_1.a.x, arg_0.e.b.x, arg_1.e.b.x), vec4<i32>(0i, 78339i, 0i, -1i), vec4<i32>(global1.c.e.a, 2147483647i, global2.b.x, -1i))), _wgslsmith_mult_vec2_i32(abs(u_input.e), vec2<i32>(global1.c.a.x, 1i)), arg_0.c.x)), u_input.a, global2.e);
    var var_1 = !((false && ((16160u <= arg_2) && false)) == true);
    var var_2 = vec3<i32>(-1i, -var_0.e.e.b.x, 2485i);
    var var_3 = _wgslsmith_f_op_vec4_f32(global1.c.d * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.e.d)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.c.c), vec4<f32>(2360f, global2.a, 290f, global1.e.c.x))), all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false))))));
    return any(!vec2<bool>(any(vec4<bool>(true, false, true, true)), all(vec2<bool>(true, false)))) && true;
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: i32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-484f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -954f), _wgslsmith_f_op_f32(-global2.a)))))));
    let var_1 = ~vec4<i32>(-39617i, 3290i, ~(i32(-1i) * -3982i), -1i);
    let var_2 = -1087f;
    global0 = select(global1.c.b.zx, global1.c.b.yw, true);
    var var_3 = Struct_2(arg_1.x, global2.c.b.x);
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2))), global1.d.yx, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -180f), false)))), -_wgslsmith_sub_vec3_i32(vec3<i32>(~u_input.e.x, -6488i, u_input.e.x), u_input.a), Struct_3(~(~vec3<i32>(-1i, u_input.c, global1.e.a.x)), global1.e.b, vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.c.x - -1759f) - _wgslsmith_f_op_f32(func_3())), var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, -2231f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, -431f, var_2, global2.c.c.x)))), Struct_1(select(~5990i, global1.e.a.x >> (global2.e.b.x % 32u), !arg_0), vec2<i32>(1i, -global2.c.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1361f)), _wgslsmith_f_op_f32(func_3())))));
}

fn func_1(arg_0: Struct_3) -> Struct_4 {
    global3 = 457f;
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(abs(167f));
    global2 = func_5(func_4(func_2(-695f), func_2(global1.a), ~(arg_0.b.x | _wgslsmith_sub_u32(arg_0.b.x, u_input.d.x))), arg_0.c.yxx, ~(-28010i));
    global3 = _wgslsmith_f_op_f32(func_3());
    return Struct_4(arg_0.c.x, -global2.b, global1.e, global2.d, Struct_3(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.b.x, u_input.e.x, u_input.e.x), select(vec3<i32>(global1.e.e.a, 23809i, 13815i), global2.d, true)) << (firstTrailingBit(~vec3<u32>(arg_0.b.x, 30114u, 0u)) % vec3<u32>(32u)), _wgslsmith_add_vec4_u32(abs(select(global1.c.b, vec4<u32>(global1.c.b.x, arg_0.b.x, 0u, 4294967295u), false)), select(vec4<u32>(4294967295u, 4294967295u, arg_0.b.x, 1u), vec4<u32>(4294967295u, arg_0.b.x, arg_0.b.x, 39002u), false) << (global2.e.b % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global2.e.d - arg_0.d)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1123f + global1.c.d.x), _wgslsmith_div_f32(global1.e.e.c, 1000f), global2.c.d.x, _wgslsmith_f_op_f32(abs(1436f))) * vec4<f32>(_wgslsmith_f_op_f32(step(var_1, 568f)), global2.e.e.c, _wgslsmith_f_op_f32(floor(1661f)), -2282f)), Struct_1(_wgslsmith_dot_vec3_i32(-global1.e.a, u_input.a), -global1.d.xx ^ -vec2<i32>(u_input.a.x, -15587i), _wgslsmith_f_op_f32(trunc(global1.c.e.c)))));
}

fn func_6(arg_0: Struct_4) -> Struct_1 {
    global2 = func_1(global2.e);
    let var_0 = select(vec3<bool>(global0.x == (max(u_input.b, 0u) ^ (u_input.b << (4294967295u % 32u))), any(vec4<bool>(true, true, true, true)) == any(vec4<bool>(true, false, true, true)), true), vec3<bool>(func_4(func_1(arg_0.c).e, Struct_3(vec3<i32>(69945i, -1i, u_input.e.x) << (global2.c.b.xxy % vec3<u32>(32u)), global1.e.b, vec4<f32>(-1234f, 238f, global2.a, -808f), _wgslsmith_f_op_vec4_f32(-global2.c.d), func_2(global1.e.c.x).e), global0.x), true, true), true);
    var var_1 = ~(~_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(func_2(-1194f).b.yzy, global2.e.b.yyx >> (vec3<u32>(1u, global2.e.b.x, arg_0.e.b.x) % vec3<u32>(32u)), countOneBits(global1.e.b.xzy)), global2.c.b.zxw));
    let var_2 = select(~_wgslsmith_dot_vec3_i32(-global2.c.a, -u_input.a) >= -(func_1(Struct_3(vec3<i32>(arg_0.d.x, 1i, u_input.e.x), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), arg_0.e.d, vec4<f32>(global1.e.c.x, 146f, 1596f, global2.a), Struct_1(u_input.a.x, global1.d.zy, arg_0.a))).c.e.a ^ ~u_input.e.x), func_4(Struct_3(~vec3<i32>(-1i, 37753i, 29635i), ~global2.e.b, global1.e.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1.e.e.c, 1322f, 2304f)), Struct_1(global1.e.e.a, vec2<i32>(10250i, u_input.a.x), global1.e.d.x)), arg_0.c, var_1.x) & var_0.x, true);
    var var_3 = func_5(true, vec3<f32>(arg_0.c.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(232f, arg_0.c.c.x), 284f, true))), -120f), abs(-11516i)).e.a.x;
    return global2.c.e;
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    var var_0 = Struct_2(global2.a, 4294967295u);
    let var_1 = func_2(-1293f).e;
    let var_2 = func_5(false, vec3<f32>(_wgslsmith_f_op_f32(global1.c.e.c + _wgslsmith_f_op_f32(-func_5(arg_2.x, global2.e.c.xwx, 26068i).e.d.x)), -364f, _wgslsmith_f_op_f32(arg_0 + 1369f)), -_wgslsmith_add_i32(abs(_wgslsmith_clamp_i32(u_input.a.x, -2147483647i, -1i)), -42939i));
    var_0 = Struct_2(153f, ~43501u);
    var var_3 = global2.e.b.ww;
    return _wgslsmith_f_op_f32(-var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(global1.c.d.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1253f, global1.e.c.x)))) * -348f));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.a * -245f))), -1359f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_7(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1148f)) * _wgslsmith_f_op_f32(-global2.a)), func_6(func_1(Struct_3(vec3<i32>(-16617i, u_input.e.x, 0i), vec4<u32>(1u, 0u, global1.e.b.x, 36598u), global2.c.c, vec4<f32>(global1.a, 1033f, 1731f, var_0), global2.e.e))), vec4<bool>(true, true, true, true))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + _wgslsmith_div_f32(-439f, global2.c.c.x))).e.c)));
    global1 = func_5(true, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(func_2(global2.a).c.yyy)))), ~(~_wgslsmith_mult_i32(u_input.e.x, u_input.e.x)));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.c.c.xxy * vec3<f32>(global2.e.e.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(620f * global1.c.d.x), _wgslsmith_f_op_f32(round(-1472f)))))), vec3<f32>(-1479f, 1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))), -699f))));
    var var_3 = global1.e.e;
    let var_4 = global2.e;
    var var_5 = abs(var_4.b.x);
    var var_6 = func_1(Struct_3(vec3<i32>(func_6(func_1(global2.e)).a, global1.d.x, -u_input.a.x), global2.c.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-415f, -1482f, _wgslsmith_f_op_f32(func_7(1000f, Struct_1(var_3.a, var_3.b, 1666f), vec4<bool>(false, false, true, true))), -542f) * vec4<f32>(-186f, global1.e.d.x, _wgslsmith_f_op_f32(-918f + var_2.x), 1000f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_3.c, -102f, 902f)), vec4<f32>(1628f, -488f, 174f, global1.c.c.x)))), global2.e.e)).c.e.c;
    var var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(926f, _wgslsmith_f_op_f32(var_3.c * var_2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~func_6(func_1(func_2(var_4.c.x))).b);
}

