struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_1,
    d: u32,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -965f;

var<private> global1: array<bool, 29> = array<bool, 29>(true, false, false, false, false, false, true, false, false, true, true, true, true, true, true, false, true, false, false, true, true, false, true, false, false, true, true, true, false);

var<private> global2: vec4<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.e.x)) * _wgslsmith_f_op_f32(trunc(959f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-225f, arg_0.e.x, true)) + _wgslsmith_f_op_f32(select(-1280f, 599f, arg_0.b.a))), arg_0.e.x, -592f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(226f, arg_0.e.x)), _wgslsmith_div_f32(-1000f, 1262f), 1388f, _wgslsmith_f_op_f32(round(-514f)))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(117f, arg_0.e.x, -523f, arg_0.e.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, arg_0.e.x, 795f, 351f)))), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2474f, -810f, 194f, arg_0.e.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.e.x, arg_0.e.x, arg_0.e.x, arg_0.e.x), vec4<f32>(arg_0.e.x, arg_0.e.x, arg_0.e.x, 829f)))))))));
    global1 = array<bool, 29>();
    let var_1 = -290f;
    let var_2 = !vec2<bool>(any(vec3<bool>(true, !global1[_wgslsmith_index_u32(arg_0.d, 29u)], true)), any(!vec2<bool>(true, global1[_wgslsmith_index_u32(global2.x, 29u)])) & arg_0.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_1, -1597f, arg_0.e.x), _wgslsmith_f_op_vec4_f32(var_0 - var_0), var_2.x))) - var_0));
    return vec3<bool>(all(var_2), arg_0.a, !(!arg_0.a));
}

fn func_2(arg_0: f32) -> Struct_5 {
    var var_0 = Struct_5(Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(16642u, 4294967295u, u_input.b, 2695u), vec4<u32>(32114u, global2.x, u_input.b, global2.x)) << (abs(vec4<u32>(global2.x, 7544u, 15581u, 1u) << (vec4<u32>(u_input.e, u_input.a, u_input.b, global2.x) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_2(Struct_1(reverseBits(~vec4<u32>(37777u, global2.x, 1u, 16108u))), !select(func_3(Struct_4(global1[_wgslsmith_index_u32(23798u, 29u)], Struct_3(false, 46943u, global1[_wgslsmith_index_u32(u_input.b, 29u)]), Struct_1(vec4<u32>(global2.x, global2.x, global2.x, 1u)), u_input.b, vec3<f32>(arg_0, -649f, -589f))), func_3(Struct_4(false, Struct_3(false, 1u, global1[_wgslsmith_index_u32(24238u, 29u)]), Struct_1(vec4<u32>(global2.x, u_input.e, global2.x, 0u)), 36815u, vec3<f32>(arg_0, arg_0, arg_0))), false), _wgslsmith_f_op_f32(-arg_0), vec4<i32>(u_input.c.x, _wgslsmith_add_i32(1i, -25951i), u_input.c.x | -u_input.c.x, firstTrailingBit(30578i))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(455f, -232f, -760f))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(arg_0, 601f, arg_0))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(840f, 1287f, 853f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, 1739f, arg_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 1458f)) - vec3<f32>(-468f, arg_0, arg_0)), !(!global1[_wgslsmith_index_u32(32075u, 29u)]))), func_3(Struct_4(true, Struct_3(global1[_wgslsmith_index_u32(global2.x, 29u)], 132394u, true), Struct_1(vec4<u32>(u_input.e, u_input.b, global2.x, u_input.e)), u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 688f, arg_0)))))), Struct_1(vec4<u32>(u_input.a, 63735u, 85729u, ~19621u)));
    var var_1 = Struct_3(true, _wgslsmith_mod_u32(56520u, 13644u), false);
    let var_2 = var_0.d;
    let var_3 = var_0.b.b.xy;
    var var_4 = _wgslsmith_f_op_f32(-var_0.b.c);
    return Struct_5(var_0.b.a, Struct_2(Struct_1(select(vec4<u32>(34165u, var_1.b, global2.x, 22237u), _wgslsmith_mod_vec4_u32(var_0.b.a.a, var_2.a), vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(23082u, 29u)]))), vec3<bool>(global1[_wgslsmith_index_u32(~(~1u), 29u)], var_1.a, any(!var_0.b.b)), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) + arg_0)), ~(~(vec4<i32>(u_input.c.x, var_0.b.d.x, var_0.b.d.x, u_input.c.x) & vec4<i32>(u_input.c.x, -45694i, var_0.b.d.x, var_0.b.d.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 138f, var_0.c.x)), Struct_1(_wgslsmith_mod_vec4_u32(~vec4<u32>(global2.x, global2.x, 83271u, var_1.b), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 23351u, 1u), var_0.d.a), vec4<u32>(1u, var_0.a.a.x, 34010u, 1196u)))));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(974f)), arg_3.c);
    global2 = arg_0.a.a;
    let var_1 = Struct_1(arg_0.b.a.a);
    let var_2 = !func_2(_wgslsmith_f_op_f32(-var_0.x)).b.b.yy;
    global1 = array<bool, 29>();
    return func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(270f - _wgslsmith_f_op_f32(trunc(arg_3.c))))))).b;
}

fn func_5(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: Struct_5) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3684f), 763f) + arg_2.c.yz);
    let var_1 = vec4<i32>(firstLeadingBit(1i), ~0i, 46537i, select(max(arg_2.b.d.x, ~u_input.c.x), abs(2147483647i), !(!arg_0.b.b.x)));
    var var_2 = func_3(Struct_4(true, Struct_3(false, 4294967295u, true), func_4(Struct_5(Struct_1(vec4<u32>(42290u, arg_0.d.a.x, 26551u, u_input.e)), Struct_2(Struct_1(arg_0.a.a), vec3<bool>(arg_2.b.b.x, arg_0.b.b.x, global1[_wgslsmith_index_u32(global2.x, 29u)]), var_0.x, vec4<i32>(1i, 2147483647i, arg_0.b.d.x, 21483i)), vec3<f32>(-365f, var_0.x, 602f), arg_2.b.a), !(!arg_0.b.b.yy), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_2.b.c, arg_2.c.x))), Struct_2(func_4(Struct_5(Struct_1(arg_0.b.a.a), Struct_2(Struct_1(vec4<u32>(u_input.b, arg_0.b.a.a.x, 38895u, arg_0.a.a.x)), arg_2.b.b, -1433f, vec4<i32>(-2147483647i, arg_2.b.d.x, -64803i, 1i)), vec3<f32>(arg_2.c.x, arg_0.c.x, 288f), Struct_1(vec4<u32>(4294967295u, arg_0.b.a.a.x, global2.x, 23823u))), arg_2.b.b.xy, var_0.x, Struct_2(arg_2.a, arg_0.b.b, var_0.x, vec4<i32>(arg_2.b.d.x, u_input.c.x, -2147483647i, 1i))).a, vec3<bool>(false, arg_0.b.b.x, false), _wgslsmith_f_op_f32(step(arg_0.c.x, arg_2.b.c)), vec4<i32>(var_1.x, arg_2.b.d.x, var_1.x, 30029i))).a, _wgslsmith_mult_u32(~(89159u >> (1u % 32u)), ~_wgslsmith_clamp_u32(3705u, 107327u, arg_1.x)), func_2(506f).c)).zz;
    let var_3 = -1i;
    var var_4 = -1i;
    return select(!select(-682f < _wgslsmith_f_op_f32(sign(var_0.x)), !var_2.x & !var_2.x, !(true || arg_0.b.b.x)), false | func_3(Struct_4(true, Struct_3(var_2.x, arg_1.x, var_2.x), func_4(arg_0, arg_0.b.b.xy, 1200f, arg_0.b).a, 63523u, arg_0.c)).x, -2147483647i != arg_0.b.d.x);
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec2<f32>, arg_3: u32) -> Struct_4 {
    var var_0 = vec2<bool>(func_5(Struct_5(Struct_1(arg_0.a.a ^ arg_0.a.a), func_4(func_2(arg_0.c), arg_0.b.yy, arg_1, arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_2.x) + vec3<f32>(-1466f, -1829f, arg_2.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(172f, -472f, arg_2.x), vec3<f32>(arg_0.c, arg_1, -465f))), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, 38232u, u_input.e, arg_3), arg_0.a.a, vec4<u32>(global2.x, arg_0.a.a.x, 1u, u_input.e)))), arg_0.a.a.zyw, Struct_5(Struct_1(~arg_0.a.a), arg_0, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(878f, 1000f, -2282f) * vec3<f32>(-1000f, arg_1, -828f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_1, -967f)))), Struct_1(vec4<u32>(1u, 1u, arg_0.a.a.x, arg_0.a.a.x)))), _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.c.yy, vec2<i32>(arg_0.d.x, -11682i))), 1i) >= arg_0.d.x);
    let var_1 = arg_0.b;
    var var_2 = Struct_4(arg_0.b.x, Struct_3(any(func_4(func_2(arg_2.x), select(vec2<bool>(false, var_1.x), arg_0.b.zy, vec2<bool>(arg_0.b.x, true)), arg_0.c, func_2(arg_0.c).b).b), ~49623u, true), func_4(Struct_5(Struct_1(~arg_0.a.a), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f)).b, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-732f, arg_1, arg_0.c) * vec3<f32>(arg_2.x, -1366f, -537f)), func_2(arg_2.x).c)), Struct_1(arg_0.a.a)), func_3(Struct_4(false & arg_0.b.x, Struct_3(var_1.x, 1u, false), func_4(Struct_5(Struct_1(vec4<u32>(55005u, arg_0.a.a.x, global2.x, arg_0.a.a.x)), arg_0, vec3<f32>(566f, -139f, arg_0.c), Struct_1(vec4<u32>(688u, arg_0.a.a.x, global2.x, u_input.a))), arg_0.b.yz, -1913f, arg_0).a, 1u ^ arg_3, _wgslsmith_f_op_vec3_f32(-vec3<f32>(975f, -1272f, arg_0.c)))).zy, _wgslsmith_f_op_f32(-1269f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x)))), Struct_2(arg_0.a, vec3<bool>(false, func_4(Struct_5(arg_0.a, Struct_2(arg_0.a, vec3<bool>(arg_0.b.x, true, var_0.x), 201f, arg_0.d), vec3<f32>(-1111f, arg_0.c, -1573f), Struct_1(arg_0.a.a)), vec2<bool>(true, arg_0.b.x), arg_1, arg_0).b.x, true), arg_1, countOneBits(max(arg_0.d, u_input.c)))).a, ~_wgslsmith_dot_vec4_u32(arg_0.a.a, _wgslsmith_add_vec4_u32(max(arg_0.a.a, vec4<u32>(4294967295u, global2.x, 1u, 58467u)), vec4<u32>(0u, u_input.e, 0u, global2.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_2.x, 503f)))) + arg_0.c), 475f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c + arg_1)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(108f)), -1460f))))));
    let var_3 = var_2.e.x;
    global1 = array<bool, 29>();
    return Struct_4(func_3(Struct_4(any(select(var_1.yx, var_1.yx, vec2<bool>(false, global1[_wgslsmith_index_u32(var_2.c.a.x, 29u)]))), Struct_3(true, func_2(var_2.e.x).a.a.x, var_0.x), Struct_1(select(vec4<u32>(u_input.d.x, arg_3, 100985u, 4294967295u), vec4<u32>(arg_0.a.a.x, 18249u, 4294967295u, arg_0.a.a.x), var_1.x)), u_input.a, var_2.e)).x, var_2.b, func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + -1351f))))).a, _wgslsmith_clamp_u32(arg_3, ~countOneBits(68052u), 4294967295u), _wgslsmith_f_op_vec3_f32(var_2.e + var_2.e));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 29>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1318f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1241f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1162f)))));
    global1 = array<bool, 29>();
    let var_0 = func_1(Struct_2(Struct_1(vec4<u32>(u_input.b, 4294967295u | global2.x, ~4294967295u, u_input.d.x)), !(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], false, false)), _wgslsmith_f_op_f32(f32(-1f) * -1283f), u_input.c | u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -137f)), -512f))), vec2<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(253f + 827f)))), 345f), global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, u_input.c.x, _wgslsmith_clamp_i32((u_input.c.x | 5610i) ^ (u_input.c.x >> (u_input.a % 32u)), 41048i, countOneBits(_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, 2147483647i))), ~_wgslsmith_clamp_vec3_u32(func_1(Struct_2(Struct_1(vec4<u32>(global2.x, 23786u, 4294967295u, 0u)), vec3<bool>(false, var_0.b.a, true), -1000f, u_input.c), var_0.e.x, _wgslsmith_f_op_vec2_f32(select(var_0.e.yx, var_0.e.xx, global1[_wgslsmith_index_u32(var_0.c.a.x, 29u)])), u_input.d.x).c.a.wyw, ~_wgslsmith_add_vec3_u32(global2.zwy, vec3<u32>(u_input.e, 21712u, 0u)), ~vec3<u32>(u_input.a, var_0.c.a.x, var_0.c.a.x)));
}

