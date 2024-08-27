struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: f32;

var<private> global2: array<Struct_3, 14>;

var<private> global3: array<vec3<f32>, 28>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, 922f) + vec2<f32>(831f, 1690f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b.zz - _wgslsmith_f_op_vec2_f32(min(arg_0.b.ww, arg_0.b.yz))))));
    return _wgslsmith_div_i32(arg_1.a, _wgslsmith_clamp_i32(-_wgslsmith_add_i32(9822i, -40556i), ~(-1i), u_input.b.x));
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> f32 {
    let var_0 = _wgslsmith_div_i32(func_3(arg_1, Struct_2(i32(-1i) * -arg_1.d.b.a)), -24993i);
    var var_1 = arg_1.a;
    global1 = _wgslsmith_f_op_f32(-var_1.d);
    global2 = array<Struct_3, 14>();
    global0 = array<vec2<bool>, 25>();
    return -1000f;
}

fn func_2() -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, -324f), 1046f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -225f)))));
    global2 = array<Struct_3, 14>();
    global3 = array<vec3<f32>, 28>();
    global3 = array<vec3<f32>, 28>();
    var var_0 = Struct_3(!(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), u_input.b.x != u_input.a.x)), Struct_2(abs(2147483647i)));
    return Struct_1(~(~select(vec2<u32>(11372u, 1u), vec2<u32>(1u, 39838u), false)), !var_0.a, vec4<bool>(select(select(var_0.a.x != var_0.a.x, false, !var_0.a.x), false, true), select(false, false, var_0.a.x), var_0.a.x, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -7147i, 0i, var_0.b.a), vec4<i32>(11674i, u_input.a.x, var_0.b.a, var_0.b.a)) & func_3(Struct_4(Struct_1(vec2<u32>(1u, 1u), var_0.a, vec4<bool>(false, var_0.a.x, true, var_0.a.x), -1194f), vec4<f32>(-1245f, 207f, 823f, 1094f), 260f, global2[_wgslsmith_index_u32(4294967295u, 14u)]), Struct_2(-1i)), Struct_4(Struct_1(vec2<u32>(9081u, 0u), vec3<bool>(var_0.a.x, var_0.a.x, true), vec4<bool>(var_0.a.x, false, true, false), -328f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(795f, 1193f, -814f, 342f))), _wgslsmith_f_op_f32(f32(-1f) * -417f), global2[_wgslsmith_index_u32(30283u, 14u)]))), _wgslsmith_f_op_f32(1387f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-540f))))));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: u32) -> Struct_4 {
    let var_0 = arg_2.d.a;
    let var_1 = false;
    global3 = array<vec3<f32>, 28>();
    let var_2 = u_input.b.x;
    var var_3 = ~select(~arg_2.a.a, vec2<u32>(arg_2.a.a.x, 1u << (min(1u, arg_3) % 32u)), select(vec2<bool>(var_1, true), !vec2<bool>(false, arg_1.x), arg_2.a.b.x));
    return Struct_4(func_2(), _wgslsmith_f_op_vec4_f32(-arg_2.b), _wgslsmith_f_op_f32(arg_2.c + arg_2.b.x), Struct_3(!select(vec3<bool>(arg_1.x, true, true), select(arg_2.d.a, vec3<bool>(var_0.x, var_0.x, arg_1.x), true), !var_0), arg_2.d.b));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5((vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, -38404i)) << (_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(21084u, 36191u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(21996u, 4294967295u, 8775u, 25358u)) | vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~1u, ~1u, 1u, 1u)) % vec4<u32>(32u)), vec2<bool>(true, -(~u_input.b.x) <= max(u_input.b.x, 2147483647i)), Struct_4(func_2(), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1774f, 1000f, 1851f, -2045f)))))), -846f, global2[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(~(~1u), _wgslsmith_clamp_u32(40393u, abs(4294967295u), ~0u), 11194u, 1u), min(max(~vec4<u32>(13424u, 0u, 4294967295u, 42766u), vec4<u32>(1u, 0u, 1u, 4294967295u)), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 39920u), vec2<u32>(87758u, 15217u)), 9647u, 14735u))));
    global2 = array<Struct_3, 14>();
    let var_1 = -2147483647i;
    var_0 = Struct_4(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(45643u, 4581u), _wgslsmith_mult_vec2_u32(var_0.a.a, ~vec2<u32>(var_0.a.a.x, 31309u))), !func_2().c.zxy, func_2().c, _wgslsmith_f_op_f32(round(var_0.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1892f * _wgslsmith_f_op_f32(func_4(-9305i, Struct_4(var_0.a, vec4<f32>(var_0.b.x, -532f, -459f, var_0.b.x), var_0.a.d, var_0.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1575f * var_0.a.d) - _wgslsmith_f_op_f32(var_0.b.x + -553f)), _wgslsmith_f_op_f32(abs(func_2().d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d) - 1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(3232f, var_0.c, 1569f, 1411f) * var_0.b) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b.x, 324f, var_0.a.d, -434f)))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(363f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.d + -211f) - 1069f)), -1197f), func_5(firstLeadingBit(select(~vec4<i32>(-51739i, 20092i, -18645i, var_1), vec4<i32>(1i, u_input.b.x, var_1, u_input.a.x), func_2().c)), !func_5(vec4<i32>(u_input.b.x, u_input.a.x, 25125i, 0i), select(vec2<bool>(var_0.d.a.x, true), var_0.a.b.xx, vec2<bool>(var_0.a.c.x, var_0.a.b.x)), func_5(vec4<i32>(var_0.d.b.a, 23029i, var_1, u_input.b.x), vec2<bool>(var_0.d.a.x, false), Struct_4(Struct_1(var_0.a.a, var_0.a.c.wyy, vec4<bool>(var_0.d.a.x, false, true, var_0.d.a.x), 1965f), var_0.b, var_0.b.x, global2[_wgslsmith_index_u32(var_0.a.a.x, 14u)]), var_0.a.a.x), ~11744u).d.a.xx, func_5(vec4<i32>(u_input.b.x, 46919i << (var_0.a.a.x % 32u), _wgslsmith_add_i32(var_0.d.b.a, var_0.d.b.a), var_0.d.b.a), select(vec2<bool>(var_0.d.a.x, var_0.d.a.x), var_0.d.a.yx, select(global0[_wgslsmith_index_u32(0u, 25u)], vec2<bool>(var_0.a.c.x, true), true)), Struct_4(Struct_1(var_0.a.a, vec3<bool>(var_0.a.c.x, var_0.d.a.x, var_0.d.a.x), vec4<bool>(var_0.d.a.x, var_0.a.b.x, var_0.d.a.x, var_0.d.a.x), var_0.c), vec4<f32>(var_0.a.d, var_0.a.d, var_0.b.x, var_0.a.d), _wgslsmith_f_op_f32(var_0.b.x + 484f), var_0.d), select(~var_0.a.a.x, 29375u, select(true, false, var_0.d.a.x))), firstLeadingBit(var_0.a.a.x)).d);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = func_1();
    let var_2 = global2[_wgslsmith_index_u32(var_1.a.x, 14u)];
    let var_3 = vec3<i32>(2147483647i, -var_2.b.a, -2147483647i);
    var_0 = _wgslsmith_sub_i32(1i, 1i);
    var_0 = func_5(-vec4<i32>(~(-2147483647i), u_input.a.x, ~_wgslsmith_add_i32(u_input.b.x, 2147483647i), u_input.a.x), vec2<bool>(true, var_1.b.x), func_5(vec4<i32>(-var_3.x, var_2.b.a, _wgslsmith_div_i32(var_2.b.a, var_3.x), 21002i) | vec4<i32>(u_input.a.x ^ u_input.b.x, func_5(vec4<i32>(var_3.x, 1i, -1i, var_3.x), global0[_wgslsmith_index_u32(11319u, 25u)], Struct_4(var_1, vec4<f32>(658f, 1000f, var_1.d, -1127f), var_1.d, Struct_3(vec3<bool>(false, true, true), Struct_2(39538i))), 0u).d.b.a, i32(-1i) * -1i, var_3.x), global0[_wgslsmith_index_u32(4294967295u, 25u)], func_5(vec4<i32>(u_input.b.x << (var_1.a.x % 32u), -1i, ~var_2.b.a, 0i), vec2<bool>(all(vec3<bool>(false, false, var_2.a.x)), true), func_5(select(vec4<i32>(var_3.x, 0i, -1i, -1i), vec4<i32>(u_input.a.x, -70554i, 1i, var_3.x), var_1.b.x), !var_1.c.yw, func_5(vec4<i32>(-50651i, var_3.x, -16513i, 2147483647i), vec2<bool>(var_2.a.x, false), Struct_4(var_1, vec4<f32>(var_1.d, var_1.d, var_1.d, var_1.d), 373f, global2[_wgslsmith_index_u32(var_1.a.x, 14u)]), 1u), 0u), 1u), 6975u), _wgslsmith_mult_u32(~firstTrailingBit(~6510u), var_1.a.x)).d.b.a;
    let var_4 = reverseBits(~1i);
    var_0 = ~min(_wgslsmith_mod_i32(i32(-1i) * -1i, u_input.b.x), -37488i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-19096i, 1i), i32(-1i) * -1i, func_3(Struct_4(Struct_1(var_1.a, var_1.b, var_1.c, -324f), vec4<f32>(1371f, var_1.d, -2339f, var_1.d), -1006f, Struct_3(var_2.a, Struct_2(15791i))), Struct_2(1i)), _wgslsmith_mod_i32(u_input.b.x, var_3.x)), vec4<i32>(~5053i, abs(-2328i), ~var_2.b.a, _wgslsmith_sub_i32(u_input.b.x, 45911i))), -var_4, func_3(func_5(firstTrailingBit(vec4<i32>(-1i, 2147483647i, var_3.x, var_2.b.a)), select(vec2<bool>(true, false), vec2<bool>(var_1.b.x, var_2.a.x), var_1.c.yw), Struct_4(var_1, vec4<f32>(var_1.d, -1137f, var_1.d, 1707f), -1200f, Struct_3(vec3<bool>(false, false, false), var_2.b)), _wgslsmith_sub_u32(var_1.a.x, 67703u)), Struct_2(func_3(Struct_4(var_1, vec4<f32>(239f, var_1.d, var_1.d, -1013f), -1251f, Struct_3(var_1.c.yzy, var_2.b)), Struct_2(u_input.b.x)))), 7700i));
}

