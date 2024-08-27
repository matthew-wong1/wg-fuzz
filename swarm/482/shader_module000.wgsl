struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29>;

var<private> global1: u32;

var<private> global2: vec3<bool>;

var<private> global3: Struct_1;

var<private> global4: array<vec4<i32>, 21>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> bool {
    let var_0 = Struct_2((min(31095u, firstTrailingBit(80675u)) >> (u_input.a.x % 32u)) << (28720u % 32u), arg_1, Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a)))), true, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.x, 1u, arg_2.x, arg_2.x), _wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(arg_2.x, 29u)], u_input.a, global0[_wgslsmith_index_u32(arg_2.x, 29u)]), ~vec4<u32>(global3.c, 10930u, u_input.a.x, 2905u)), u_input.a)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(global3.a)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3.a - vec4<f32>(arg_1.a.x, 1797f, -458f, global3.a.x)))), true, ~abs(u_input.a.x)), arg_1);
    global1 = _wgslsmith_div_u32(_wgslsmith_mult_u32(reverseBits(~(arg_1.c & u_input.a.x)), min(arg_1.c, ~1u) | (1u >> (1u % 32u))), 4294967295u);
    global1 = ~global3.c;
    var var_1 = u_input.c;
    let var_2 = var_0;
    return all(select(vec4<bool>(select(!global2.x, var_2.d.b || arg_0, arg_1.b), ~u_input.a.x < global3.c, any(global2.yx), false == arg_0), select(select(vec4<bool>(global2.x, true, true, arg_0), select(vec4<bool>(false, true, arg_1.b, arg_0), vec4<bool>(arg_0, false, var_0.c.b, global2.x), arg_1.b), !global3.b), vec4<bool>(all(vec2<bool>(var_0.d.b, true)), global2.x, any(vec3<bool>(true, true, arg_0)), all(vec2<bool>(true, arg_0))), vec4<bool>(var_0.e.b, false, true, arg_3 == -2147483647i)), any(!vec4<bool>(var_0.c.b, false, true, global2.x))));
}

fn func_4(arg_0: bool) -> vec4<f32> {
    let var_0 = false;
    var var_1 = _wgslsmith_add_u32(~u_input.a.x, _wgslsmith_mod_u32(15765u, ~firstLeadingBit(global3.c)));
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(75657u, _wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.xw), ~(global3.c | ~u_input.a.x)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(37299u, 79226u, 13675u, u_input.a.x))) >> ((0u & ~u_input.a.x) % 32u), _wgslsmith_div_u32(_wgslsmith_sub_u32(global3.c, 4294967295u), 4294967295u) & min(4294967295u, 18741u))), 21u)];
    global3 = Struct_1(vec4<f32>(626f, _wgslsmith_f_op_f32(f32(-1f) * -588f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x - _wgslsmith_f_op_f32(-1368f + 245f)) - global3.a.x), _wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1179f - -969f), _wgslsmith_f_op_f32(exp2(global3.a.x))))) == 289f, ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(9865u, 0u, 31950u, 21244u) >> (vec4<u32>(global3.c, 6032u, global3.c, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u, global3.c, 36019u), vec4<u32>(global3.c, global3.c, 4294967295u, u_input.a.x))), vec4<u32>(global3.c, 1u, u_input.a.x, ~4294967295u)));
    let var_3 = vec2<f32>(1803f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)))));
    return _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-305f * _wgslsmith_f_op_f32(step(2461f, global3.a.x))))), _wgslsmith_f_op_f32(exp2(global3.a.x)), _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(-global3.a.x))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(u_input.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(global3.a.x, global3.a.x)), global3.a.x, global3.a.x, global3.a.x)), all(select(select(vec4<bool>(global3.b, false, false, global3.b), vec4<bool>(true, true, false, true), global3.b), select(vec4<bool>(global2.x, false, false, global2.x), vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(global2.x, false, false, global3.b)), select(vec4<bool>(true, true, false, global2.x), vec4<bool>(global3.b, false, global2.x, false), true))), 1u), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.a)) * _wgslsmith_f_op_vec4_f32(func_4(func_3(global3.b, Struct_1(vec4<f32>(366f, global3.a.x, global3.a.x, global3.a.x), global3.b, global3.c), vec2<u32>(53002u, 4294967295u), u_input.b)))), all(global2.zz), u_input.a.x), Struct_1(global3.a, true, _wgslsmith_sub_u32(1u, max(66382u, firstLeadingBit(global3.c)))), Struct_1(_wgslsmith_f_op_vec4_f32(-global3.a), !(global3.a.x <= _wgslsmith_div_f32(global3.a.x, global3.a.x)), 39561u));
    let var_1 = 0u;
    let var_2 = Struct_2(min(_wgslsmith_mod_u32(~(~0u), _wgslsmith_mult_u32(0u, firstTrailingBit(43502u))), reverseBits(1u)), Struct_1(var_0.d.a, min(i32(-1i) * -24046i, -2147483647i) >= _wgslsmith_div_i32(u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, -1i)), countOneBits(12824u)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b.a * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a.x, global3.a.x, var_0.c.a.x, global3.a.x) + var_0.b.a)) - global3.a), global2.x || true, _wgslsmith_div_u32(_wgslsmith_add_u32(max(var_0.d.c, var_0.e.c), _wgslsmith_mod_u32(u_input.a.x, 1u)), 10360u)), var_0.b, var_0.e);
    global4 = array<vec4<i32>, 21>();
    global1 = max(reverseBits(53803u), 1u);
    return var_0.b;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    return _wgslsmith_dot_vec2_i32(-(~abs(u_input.c)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -67893i), ~u_input.c)) ^ abs(u_input.b);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    global3 = arg_0.b;
    let var_0 = ~func_5(Struct_2(arg_0.b.c, func_2(), func_2(), arg_0.e, arg_0.d), func_2());
    global0 = array<vec4<u32>, 29>();
    var var_1 = u_input.c.x;
    var var_2 = any(select(arg_1, select(arg_1, vec4<bool>(true, true, any(vec2<bool>(global2.x, arg_1.x)), !global3.b), false), arg_1));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(957f, arg_0.c.a.x, global3.a.x, arg_0.e.a.x), arg_0.c.a)) + arg_0.c.a))), !(abs(_wgslsmith_add_i32(u_input.b, var_0)) <= var_0), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~global3.c, _wgslsmith_mult_u32(global3.c, global3.c), _wgslsmith_clamp_u32(0u, u_input.a.x, u_input.a.x)), vec3<u32>(arg_0.d.c, arg_0.c.c, _wgslsmith_div_u32(arg_0.c.c, u_input.a.x)), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.wxz, vec3<u32>(0u, global3.c, global3.c), u_input.a.yxx), vec3<u32>(arg_0.b.c, 16095u, 0u))), firstTrailingBit(u_input.a.xzy)));
}

fn func_6(arg_0: vec3<bool>, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_mod_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(83337u, 0u, 1u), vec3<u32>(28432u, 14115u, 12061u))), _wgslsmith_sub_u32(arg_1, global3.c)), arg_3, func_2(), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.a * vec4<f32>(arg_3.a.x, arg_3.a.x, arg_3.a.x, -559f)) * vec4<f32>(arg_2, global3.a.x, _wgslsmith_div_f32(arg_2, -189f), _wgslsmith_f_op_vec4_f32(func_4(arg_3.b)).x)), true, ~(~arg_3.c)), arg_3);
    global0 = array<vec4<u32>, 29>();
    let var_1 = var_0.e;
    global1 = min(0u, (select(27218u, var_0.a << (4294967295u % 32u), var_0.b.b) << (4294967295u % 32u)) >> (51865u % 32u));
    var var_2 = Struct_2(_wgslsmith_add_u32(4294967295u, var_1.c), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, 113f, arg_2, var_0.d.a.x) * vec4<f32>(443f, arg_3.a.x, arg_2, -1142f)))), _wgslsmith_f_op_vec4_f32(trunc(func_1(Struct_2(global3.c, arg_3, var_0.c, var_0.d, Struct_1(vec4<f32>(var_0.b.a.x, 1218f, var_0.c.a.x, var_1.a.x), var_1.b, 0u)), vec4<bool>(false, var_0.e.b, false, true)).a)), !vec4<bool>(var_1.b, var_1.b, global3.b, var_1.b))), any(select(select(vec2<bool>(var_0.d.b, false), vec2<bool>(false, arg_0.x), arg_3.b), select(global2.xx, vec2<bool>(global2.x, global3.b), vec2<bool>(true, true)), arg_0.yy)), 4294967295u), func_1(Struct_2(arg_1, Struct_1(var_1.a, true, ~global3.c), func_2(), arg_3, arg_3), !select(!vec4<bool>(global3.b, true, true, var_1.b), vec4<bool>(true, global3.b, global3.b, false), select(vec4<bool>(var_1.b, var_1.b, arg_3.b, arg_0.x), vec4<bool>(false, true, arg_3.b, var_1.b), vec4<bool>(global2.x, var_0.e.b, false, true)))), Struct_1(vec4<f32>(global3.a.x, global3.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-349f, -464f))), 1372f), arg_0.x, firstTrailingBit(var_0.b.c)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.d.a, vec4<f32>(-1926f, 1000f, var_0.d.a.x, 958f)))), !(arg_3.a.x <= _wgslsmith_f_op_vec4_f32(func_4(false)).x), _wgslsmith_mult_u32(select(u_input.a.x, 0u, var_0.e.b), min(arg_3.c, var_0.e.c)) ^ arg_1));
    return !select(!(!vec3<bool>(true, true, global2.x)), !(!arg_0), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2816f;
    global1 = ~(~(1u ^ ~_wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.zw)));
    global2 = select(select(!(!select(vec3<bool>(global3.b, true, false), vec3<bool>(true, global2.x, false), global2.x)), vec3<bool>(true, true, true), !vec3<bool>(!global3.b, true, select(false, global2.x, global3.b))), select(vec3<bool>(_wgslsmith_f_op_f32(select(global3.a.x, global3.a.x, true)) >= global3.a.x, any(global2.xy), all(select(vec4<bool>(true, global2.x, true, true), vec4<bool>(true, false, global2.x, global3.b), vec4<bool>(global3.b, false, global3.b, global2.x)))), select(vec3<bool>(true, true, true), func_6(select(vec3<bool>(false, false, false), vec3<bool>(false, global2.x, global2.x), true), ~u_input.a.x, _wgslsmith_f_op_f32(-global3.a.x), func_1(Struct_2(20059u, Struct_1(vec4<f32>(global3.a.x, global3.a.x, global3.a.x, global3.a.x), global3.b, 4294967295u), Struct_1(vec4<f32>(global3.a.x, 429f, -238f, -793f), global2.x, 0u), Struct_1(vec4<f32>(-778f, global3.a.x, global3.a.x, -124f), global2.x, global3.c), Struct_1(vec4<f32>(global3.a.x, -696f, 973f, 1597f), global2.x, 978u)), vec4<bool>(true, true, global2.x, false))), any(vec4<bool>(global2.x, global3.b, global3.b, global2.x))), vec3<bool>(true, global2.x, select(true, func_3(false, Struct_1(vec4<f32>(1449f, -362f, global3.a.x, 201f), global2.x, 4294967295u), vec2<u32>(u_input.a.x, 4778u), 2147483647i), global2.x))), !func_6(func_6(vec3<bool>(true, true, true), u_input.a.x << (global3.c % 32u), 667f, func_1(Struct_2(u_input.a.x, Struct_1(vec4<f32>(-1045f, 101f, global3.a.x, global3.a.x), global3.b, u_input.a.x), Struct_1(vec4<f32>(203f, global3.a.x, -241f, global3.a.x), false, 10716u), Struct_1(vec4<f32>(-772f, global3.a.x, global3.a.x, global3.a.x), false, global3.c), Struct_1(global3.a, global3.b, global3.c)), vec4<bool>(global2.x, global2.x, global2.x, false))), _wgslsmith_div_u32(min(62495u, u_input.a.x), 37478u), 585f, func_2()));
    var_0 = -806f;
    global4 = array<vec4<i32>, 21>();
    let var_1 = Struct_2(1u, func_2(), func_1(Struct_2(_wgslsmith_mult_u32(global3.c, _wgslsmith_add_u32(4294967295u, u_input.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-575f, global3.a.x, -2040f, -433f), global3.a)), global3.a.x <= global3.a.x, 39842u), Struct_1(vec4<f32>(global3.a.x, 1056f, global3.a.x, 478f), global3.b, 4294967295u), Struct_1(vec4<f32>(1520f, 458f, global3.a.x, 1069f), true, u_input.a.x), func_2()), select(select(select(vec4<bool>(false, global3.b, true, true), vec4<bool>(false, global3.b, true, true), global2.x), vec4<bool>(true, true, true, true), global2.x), !(!vec4<bool>(global3.b, false, false, global3.b)), select(vec4<bool>(true, true, global2.x, false), !vec4<bool>(false, global3.b, true, false), vec4<bool>(true, true, true, global2.x)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(-1103f)), _wgslsmith_f_op_f32(select(883f, -806f, !global3.b)), _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(floor(global3.a.x))), func_2().c == global3.c, ~(~(~global3.c))), func_1(Struct_2(1u, Struct_1(global3.a, true, max(global3.c, 4294967295u)), func_2(), func_2(), Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(316f, global3.a.x, global3.a.x, global3.a.x), global3.a)), true, _wgslsmith_mult_u32(4294967295u, u_input.a.x))), !select(vec4<bool>(false, false, global2.x, false), !vec4<bool>(true, global3.b, global3.b, true), vec4<bool>(global3.b, true, false, false))));
    let var_2 = Struct_1(global3.a, global3.b, ~max(var_1.e.c, abs(30072u)));
    global1 = ~(~(~43114u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.a.x)) - var_1.e.a.x)))), _wgslsmith_f_op_vec2_f32(-global3.a.zy), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(~global4[_wgslsmith_index_u32(47152u, 21u)]), vec4<i32>(i32(-1i) * -14306i, u_input.b, u_input.c.x, _wgslsmith_add_i32(2147483647i, u_input.c.x))), min(vec4<i32>(~(-2147483647i), u_input.c.x, u_input.b, u_input.b), -global4[_wgslsmith_index_u32(60634u, 21u)])), ~global3.c);
}

