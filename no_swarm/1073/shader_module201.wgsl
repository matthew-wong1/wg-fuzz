struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_4,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<bool, 11>;

var<private> global1: array<Struct_3, 24>;

var<private> global2: vec3<f32> = vec3<f32>(1000f, 474f, 191f);

var<private> global3: Struct_1 = Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 15856i, 24639i), vec3<u32>(4913u, 61089u, 26320u), vec2<u32>(4294967295u, 55030u));

var<private> global4: vec2<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: i32) -> u32 {
    var var_0 = -1000f;
    return ~(global4.x << (~global4.x % 32u));
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = Struct_5(arg_0.e.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_f_op_f32(f32(-1f) * -168f)))))), Struct_4(_wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global3.a.x, 9911i, global3.a.x), global3.a), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 60603i, arg_0.b.c.a.x, global3.a.x), vec4<i32>(arg_0.e.c.a.x, -2147483647i, -2147483647i, -13339i)), vec4<i32>(arg_0.b.d.a.x, 3482i, global3.a.x, arg_0.d.a.x))), arg_0.b.e.a.x), Struct_3(~_wgslsmith_div_u32(countOneBits(global3.c.x), 0u), arg_0.e, any(!select(vec4<bool>(global0[_wgslsmith_index_u32(global3.b.x, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], true), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(arg_0.d.b.x, 11u)]), arg_0.c)), arg_0.d, Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(~56418u, 11u)], all(vec4<bool>(arg_0.e.a.x, true, arg_0.e.a.x, global0[_wgslsmith_index_u32(arg_0.a, 11u)]))), arg_0.e.b, Struct_1(firstLeadingBit(global3.a), vec3<u32>(30095u, 40329u, global3.c.x) >> (vec3<u32>(1u, 4667u, 35359u) % vec3<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(global4.x, arg_0.d.c.x))), arg_0.e.d, Struct_1(arg_0.b.c.a, vec3<u32>(46287u, 16218u, 0u), vec2<u32>(u_input.a, 1u)))), _wgslsmith_add_i32(arg_0.e.c.a.x, _wgslsmith_dot_vec4_i32(~(-arg_0.d.a), global3.a)));
    let var_1 = ~arg_0.b.b;
    let var_2 = !(-1560f != _wgslsmith_f_op_f32(sign(149f)));
    let var_3 = arg_0.b;
    let var_4 = select(select(!(!select(vec3<bool>(var_2, false, var_3.a.x), vec3<bool>(true, var_3.a.x, true), vec3<bool>(true, var_2, true))), select(select(!vec3<bool>(true, var_3.a.x, arg_0.c), !vec3<bool>(var_0.d.c, var_2, false), global4.x > 100627u), select(vec3<bool>(var_0.d.e.a.x, arg_0.b.a.x, true), !vec3<bool>(arg_0.c, var_2, global0[_wgslsmith_index_u32(var_1.x, 11u)]), vec3<bool>(true, true, arg_0.e.a.x)), select(vec3<bool>(true, true, true), vec3<bool>(arg_0.b.a.x, var_2, var_2), vec3<bool>(arg_0.b.a.x, false, var_0.d.c))), !select(!vec3<bool>(arg_0.b.a.x, true, arg_0.e.a.x), vec3<bool>(var_0.d.e.a.x, true, arg_0.c), select(vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 11u)], true, arg_0.b.a.x), vec3<bool>(arg_0.e.a.x, false, true), vec3<bool>(false, var_2, var_2)))), !vec3<bool>(var_2, all(!vec3<bool>(arg_0.e.a.x, true, true)), true), vec3<bool>(!(var_0.d.c & (16259i != arg_0.b.e.a.x)), all(vec4<bool>(true, all(vec2<bool>(var_0.d.c, arg_0.e.a.x)), select(var_3.a.x, false, global0[_wgslsmith_index_u32(19482u, 11u)]), u_input.a >= u_input.a)), all(!select(vec3<bool>(false, true, false), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.e.b.x, 11u)], false), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], true, arg_0.c)))));
    return var_0.b;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_5(Struct_1(vec4<i32>(global3.a.x, global3.a.x << (~0u % 32u), -1288i, i32(-1i) * -15760i), global3.b, countOneBits(~vec2<u32>(u_input.a, 37542u))), _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(47992u, Struct_2(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 11u)]), vec4<u32>(4294967295u, 1u, 1u, global4.x), Struct_1(global3.a, global3.b, global3.b.xx), Struct_1(global3.a, global3.b, global3.b.yz), Struct_1(vec4<i32>(global3.a.x, -2147483647i, 49758i, -3055i), vec3<u32>(global4.x, 59178u, global4.x), vec2<u32>(44237u, 10526u))), true, Struct_1(vec4<i32>(global3.a.x, 14587i, global3.a.x, global3.a.x), global3.b, vec2<u32>(18520u, 24472u)), Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(global4.x, 11u)]), vec4<u32>(global4.x, u_input.a, 1u, global4.x), Struct_1(vec4<i32>(0i, global3.a.x, global3.a.x, global3.a.x), global3.b, global3.b.xx), Struct_1(global3.a, global3.b, vec2<u32>(4294967295u, 1u)), Struct_1(vec4<i32>(global3.a.x, global3.a.x, 22724i, 65690i), global3.b, vec2<u32>(global4.x, 0u))))))))), Struct_4(global3.a.x, 21651i), global1[_wgslsmith_index_u32(~(~reverseBits(global4.x)) | ~4294967295u, 24u)], _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(79289i, abs(global3.a.x)), ~(-15858i), _wgslsmith_add_i32(global3.a.x, global3.a.x)), global3.a.zxz));
    var_0 = Struct_5(var_0.d.e.c, global2.x, Struct_4(firstTrailingBit(_wgslsmith_clamp_i32(countOneBits(-22147i), 1676i, var_0.e >> (u_input.a % 32u))), -_wgslsmith_dot_vec2_i32(global3.a.xx, ~vec2<i32>(var_0.d.e.d.a.x, 20144i))), global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(11405u, global3.b.x), var_0.a.c.x, _wgslsmith_dot_vec2_u32(var_0.a.c, vec2<u32>(13966u, var_0.d.e.b.x)), global4.x), ~(~var_0.d.b.b))), 24u)], ~(~firstTrailingBit(-global3.a.x)));
    let var_1 = Struct_4(abs(var_0.d.e.c.a.x), -_wgslsmith_clamp_i32(global3.a.x << (global3.c.x % 32u), 1i, ~(-7755i)) & -2147483647i);
    global0 = array<bool, 11>();
    global3 = Struct_1(vec4<i32>(global3.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -1i, -44702i, var_0.a.a.x), vec4<i32>(2147483647i, -73525i, 2147483647i, -8811i)), _wgslsmith_mult_vec4_i32(vec4<i32>(9489i, global3.a.x, 0i, -11861i), var_0.d.e.d.a >> (var_0.d.e.b % vec4<u32>(32u)))), ~(~(~(-2147483647i))), _wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.b, var_1.b, var_1.a), min(vec3<i32>(global3.a.x, -1377i, 30011i), vec3<i32>(var_0.e, 24191i, var_1.b))) ^ _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.e, 61563i), ~24778i)), global3.b, _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(global3.c.x, global4.x), ~(~var_0.d.e.d.c)), max(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 17735u), ~var_0.a.b.zz), select(~global3.b.zx, vec2<u32>(global3.c.x, global3.c.x) | var_0.d.e.b.yw, all(vec3<bool>(false, false, false))))));
    return !select(select(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 11u)]), !select(vec3<bool>(var_0.d.b.a.x, false, var_0.d.c), vec3<bool>(var_0.d.c, false, true), vec3<bool>(var_0.d.e.a.x, global0[_wgslsmith_index_u32(11115u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)])), false), vec3<bool>(!select(global0[_wgslsmith_index_u32(0u, 11u)], var_0.d.e.a.x, true), global0[_wgslsmith_index_u32(abs(0u), 11u)], false), !global0[_wgslsmith_index_u32(1u, 11u)]);
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: f32) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-381f)), _wgslsmith_f_op_f32(-global2.x))), -1148f);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-524f, var_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1167f), _wgslsmith_f_op_f32(min(arg_2, global2.x)))), arg_2, _wgslsmith_div_f32(_wgslsmith_div_f32(global2.x, 1992f), _wgslsmith_f_op_f32(624f + arg_2)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(467f, -145f, arg_2, 1487f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2082f, 865f, 1041f, -1000f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 1862f, 1575f, -911f) * vec4<f32>(global2.x, var_0.x, -481f, -713f))), vec4<f32>(_wgslsmith_f_op_f32(-arg_2), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -369f), 1000f)), all(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(1u, 11u)])) != global0[_wgslsmith_index_u32(max(firstLeadingBit(10232u), 1u), 11u)])));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 589f) + var_1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2 * -844f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global2.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-554f, global2.x, -642f, _wgslsmith_f_op_f32(-global2.x)))));
    let var_2 = !(!(!select(!vec4<bool>(arg_0, true, global0[_wgslsmith_index_u32(global4.x, 11u)], true), !vec4<bool>(arg_1.x, arg_1.x, arg_0, true), global3.a.x >= global3.a.x)));
    var var_3 = arg_1.yy;
    return Struct_1(~(-global3.a), ~global3.b, global3.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.b;
    let var_1 = global3.a.wzy;
    var var_2 = func_4(true || global0[_wgslsmith_index_u32(~u_input.a | func_1(global0[_wgslsmith_index_u32(1u, 11u)], vec2<u32>(1u, 4294967295u), -global3.a.x), 11u)], func_2(), global2.x);
    var var_3 = -(firstTrailingBit(_wgslsmith_sub_i32(-17365i, var_1.x) >> (~1u % 32u)) << (~(~u_input.a) % 32u));
    let var_4 = -244f;
    let var_5 = -1271f;
    var_3 = var_1.x;
    var var_6 = Struct_3(49975u, Struct_2(!(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(var_2.b.x, 11u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 11u)]), true)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, _wgslsmith_mod_u32(1u, 76030u), var_0.x, var_0.x), min(vec4<u32>(37949u, global4.x, var_2.b.x, var_2.b.x) >> (vec4<u32>(0u, 14453u, 1u, 25654u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, global3.b.x, u_input.a, 4294967295u), vec4<u32>(global3.b.x, 42494u, var_2.c.x, u_input.a)))), func_4(true, vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(33258u, 8004u), 11u)], any(vec4<bool>(false, global0[_wgslsmith_index_u32(var_2.b.x, 11u)], true, true)), all(vec4<bool>(true, global0[_wgslsmith_index_u32(30962u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(global3.b.x, 11u)]))), var_4), Struct_1(~(~vec4<i32>(11420i, 1i, 0i, var_2.a.x)), min(~global3.b, ~var_2.b), select(min(var_2.c, var_0.yy), reverseBits(vec2<u32>(global4.x, 4294967295u)), global0[_wgslsmith_index_u32(countOneBits(47891u), 11u)])), Struct_1(~var_2.a, vec3<u32>(var_2.c.x, u_input.a, 1u) & vec3<u32>(1u, var_0.x, var_2.c.x), var_2.c)), all(!vec4<bool>(true, true, false, false | global0[_wgslsmith_index_u32(4294967295u, 11u)])), func_4(select(true, all(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 11u)], true)), all(vec2<bool>(global0[_wgslsmith_index_u32(14406u, 11u)], false))), !func_2(), -1034f), Struct_2(!select(func_2().yx, vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 11u)], global0[_wgslsmith_index_u32(28231u, 11u)])), vec4<u32>(select(var_2.b.x, 6291u, global0[_wgslsmith_index_u32(var_0.x, 11u)]), func_1(true, vec2<u32>(global4.x, var_0.x), global3.a.x), var_0.x, ~global4.x) | ~(vec4<u32>(global3.c.x, 4294967295u, 32478u, 44395u) & vec4<u32>(0u, global4.x, 78153u, 0u)), Struct_1(-min(global3.a, var_2.a), firstLeadingBit(_wgslsmith_clamp_vec3_u32(global3.b, var_2.b, vec3<u32>(45252u, 20968u, 1u))), vec2<u32>(~63157u, 0u)), Struct_1(_wgslsmith_mult_vec4_i32(global3.a, var_2.a), global3.b, var_0.yx), func_4(global0[_wgslsmith_index_u32(countOneBits(var_2.b.x), 11u)], vec3<bool>(true, true, true), var_4)));
    var var_7 = -1754f;
    let x = u_input.a;
    s_output = StorageBuffer(-var_6.b.c.a.xww, vec4<f32>(107f, _wgslsmith_f_op_f32(sign(-945f)), var_5, -1000f), var_6.d.a.x);
}

