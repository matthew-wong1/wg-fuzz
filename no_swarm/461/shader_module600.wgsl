struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_3;

var<private> global2: f32;

var<private> global3: array<Struct_2, 15>;

var<private> global4: array<vec2<i32>, 11>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-global1.d.x);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0)))), _wgslsmith_f_op_f32(f32(-1f) * -812f), -394f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, -729f, -144f)) + global0.yzz) - global0.zww)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -302f, -130f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, global1.d.x, -108f), vec3<f32>(var_0, -671f, global0.x)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global0.xyy))))));
    let var_2 = global1.c;
    let var_3 = !global1.c.c.a;
    let var_4 = vec2<f32>(-348f, global1.d.x);
    return global1.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: u32) -> bool {
    var var_0 = _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_mult_i32(arg_1.c.e.b.x >> (global1.c.a % 32u), firstLeadingBit(-2147483647i)), global1.c.b.b.x ^ abs(u_input.d), u_input.d)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~(vec3<i32>(0i, global1.c.b.b.x, 2147483647i) ^ global1.c.d.b.xxx), global1.c.d.b.yzw), global1.c.d.b.zzx));
    let var_1 = arg_1.a;
    let var_2 = select(arg_1.b.xw, !vec2<bool>(firstTrailingBit(arg_1.c.b.b.x) == _wgslsmith_clamp_i32(-97523i, var_0.x, -10532i), global1.b.x), global1.b.xw);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -126f)), 1f, global1.d.x, _wgslsmith_f_op_f32(select(-586f, 872f, _wgslsmith_div_u32(1u, abs(u_input.a)) <= ~u_input.a)));
    let var_3 = Struct_1(true, vec4<i32>(~(-_wgslsmith_mod_i32(0i, var_0.x)), _wgslsmith_dot_vec2_i32(global4[_wgslsmith_index_u32(4294967295u, 11u)], vec2<i32>(arg_1.c.d.b.x, arg_0.x) >> ((vec2<u32>(global1.c.a, arg_1.a.x) & vec2<u32>(global1.a.x, 104307u)) % vec2<u32>(32u))), -arg_1.c.c.b.x & -var_0.x, global1.c.b.b.x));
    return all(!select(select(!var_2, var_2, !arg_1.b.wz), var_2, false));
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(-9639i, firstTrailingBit(-11633i), global1.c.c.b.x), vec3<i32>(u_input.c.x | u_input.c.x, 35724i, _wgslsmith_clamp_i32(u_input.d, u_input.d, u_input.d)) << (vec3<u32>(~0u, ~arg_0, min(40142u, u_input.e)) % vec3<u32>(32u))), Struct_3(firstLeadingBit(abs(func_3())), vec4<bool>(any(!vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x)), global1.b.x, global1.b.x, any(global1.b.yy) & false), Struct_2(1u, Struct_1(global1.c.d.a, select(global1.c.b.b, vec4<i32>(52883i, u_input.c.x, 2147483647i, global1.c.e.b.x), true)), global1.c.d, Struct_1(!global1.b.x, ~vec4<i32>(-30616i, global1.c.d.b.x, -1i, 0i)), Struct_1(!global1.b.x, global1.c.b.b)), _wgslsmith_f_op_vec2_f32(round(global0.wz))), global1.c.a & arg_0);
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1233f)));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(global1.d.x, _wgslsmith_f_op_f32(-442f * _wgslsmith_f_op_f32(-global0.x)))), -1348f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1120f, global1.d.x) - _wgslsmith_f_op_f32(f32(-1f) * -464f))), global0.x));
    global3 = array<Struct_2, 15>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global0.ywx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(global0.wwx, vec3<f32>(global0.x, -1523f, -243f))))) - global0.yyy))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.d.x, -622f, 465f)))));
    return Struct_3(select(_wgslsmith_mod_vec4_u32(~(~global1.a), vec4<u32>(func_3().x, 53521u & arg_0, _wgslsmith_mod_u32(20327u, arg_0), 1u)), reverseBits(global1.a), select(global1.b, vec4<bool>(global1.b.x, true || global1.b.x, global1.c.b.a && global1.c.d.a, global1.b.x & global1.c.c.a), select(!vec4<bool>(true, false, global1.c.b.a, true), vec4<bool>(global1.c.e.a, true, true, true), global1.b))), global1.b, Struct_2(arg_0, Struct_1(!global1.c.e.a, ~vec4<i32>(global1.c.d.b.x, -1i, u_input.d, global1.c.e.b.x)), Struct_1(any(select(global1.b.zz, global1.b.xx, true)), global1.c.c.b), Struct_1(!(arg_0 <= 70203u), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(global1.c.b.b, global1.c.d.b), global1.c.b.b)), Struct_1(false, vec4<i32>(global1.c.e.b.x, 2147483647i, -u_input.d, -35099i << (0u % 32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(725f, _wgslsmith_f_op_f32(ceil(1063f))) + vec2<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    var var_0 = max(global1.c.c.b, abs(~vec4<i32>(max(64053i, 0i), -70767i >> (global1.a.x % 32u), arg_0.c.b.b.x, -arg_0.c.e.b.x)));
    var var_1 = Struct_2(global1.c.a, Struct_1(global1.b.x, vec4<i32>(-1i, _wgslsmith_clamp_i32(global1.c.d.b.x, global1.c.d.b.x, -46886i) ^ global1.c.c.b.x, -_wgslsmith_mult_i32(global1.c.e.b.x, var_0.x), ~var_0.x | (var_0.x | 9766i))), Struct_1(any(select(global1.b.wwz, select(arg_0.b.zwx, vec3<bool>(global1.c.c.a, false, true), false), arg_0.b.xwx)), max(_wgslsmith_add_vec4_i32(arg_0.c.c.b, countOneBits(vec4<i32>(u_input.d, global1.c.e.b.x, u_input.d, 16061i))), arg_0.c.c.b)), Struct_1(!(u_input.c.x != var_0.x) & !(!arg_0.b.x), vec4<i32>(-25562i, var_0.x, -18815i, ~0i)), Struct_1(global1.a.x > 4294967295u, vec4<i32>(u_input.c.x, max(-1i, func_2(arg_0.a.x).c.e.b.x), max(u_input.d ^ arg_0.c.d.b.x, abs(-1i)), -u_input.c.x)));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.d.x))) + func_2(~arg_0.c.a).d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2632f * 170f), _wgslsmith_f_op_f32(round(1619f))), global0.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.d.x)), arg_0.d.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-378f + global1.d.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-977f - global1.d.x), _wgslsmith_f_op_f32(trunc(arg_0.d.x)), _wgslsmith_div_f32(549f, -1394f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -568f, global1.d.x, arg_0.d.x) + vec4<f32>(-1000f, -488f, -1555f, global0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-547f, 1000f, -238f, global0.x) * vec4<f32>(-2606f, 1738f, -459f, arg_0.d.x))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(abs(arg_0.d.x)), global0.x, global1.d.x)));
    var var_2 = Struct_3(~(~vec4<u32>(u_input.e << (arg_0.a.x % 32u), u_input.e, 4294967295u, 0u)), select(vec4<bool>(all(arg_0.b.xxw), false, any(select(arg_0.b.ww, vec2<bool>(false, var_1.c.a), var_1.c.a)), any(vec4<bool>(false, arg_0.b.x, false, true))), vec4<bool>(741f != _wgslsmith_div_f32(1304f, global0.x), false, true, all(arg_0.b.zy)), !select(func_2(u_input.b.x).b, !vec4<bool>(var_1.b.a, false, arg_0.b.x, false), global1.b.x)), global1.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(func_2(~4294967295u).d.x, arg_0.d.x) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -716f), _wgslsmith_f_op_f32(-168f * 934f))));
    return var_1.b;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_3 {
    global4 = array<vec2<i32>, 11>();
    var var_0 = -7392i;
    var var_1 = Struct_3(vec4<u32>(57297u, _wgslsmith_sub_u32(arg_1.a, 39641u), 11200u, abs(~u_input.b.x)), global1.b, Struct_2(1u, arg_1.b, arg_1.b, arg_1.c, func_5(func_2(_wgslsmith_add_u32(arg_1.a, arg_1.a)))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(2563f + global0.x)));
    var var_2 = global1.a.yx;
    var var_3 = max(abs(abs(abs(u_input.b))), ~vec2<u32>(abs(1u), 1u) & ~var_1.a.zy);
    return Struct_3(_wgslsmith_div_vec4_u32(global1.a, global1.a), select(var_1.b, vec4<bool>(!arg_1.b.a, !arg_1.e.a, 4294967295u == var_1.c.a, !(var_1.c.e.a && false)), true && !global1.b.x), global3[_wgslsmith_index_u32(min(var_2.x, 21930u), 15u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(var_1.d)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global1.d.x))))), 18748u > ~var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(~(-firstTrailingBit(_wgslsmith_mult_vec2_i32(global1.c.d.b.wx, u_input.c.yy))), global3[_wgslsmith_index_u32(u_input.a, 15u)]);
    var var_0 = -_wgslsmith_sub_i32(max(global1.c.b.b.x, global1.c.c.b.x), 1i);
    global3 = array<Struct_2, 15>();
    var var_1 = Struct_3(vec4<u32>(u_input.e, 0u, ~func_1(vec2<i32>(u_input.d, u_input.c.x), Struct_2(40674u, global1.c.e, global1.c.b, global1.c.d, Struct_1(true, global1.c.e.b))).c.a ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 35943u), global1.a.yzy), u_input.b.x >> (4294967295u % 32u)), _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.c.a, u_input.a, 4294967295u), global1.a.zzz), countOneBits(28419u))), !(!global1.b), Struct_2(~(~firstTrailingBit(global1.c.a)), global1.c.b, Struct_1(global1.b.x, func_2(global1.a.x ^ global1.c.a).c.b.b), Struct_1(!(global1.c.c.b.x != u_input.c.x), global1.c.e.b), Struct_1(!(global1.c.e.b.x == u_input.c.x), vec4<i32>(firstTrailingBit(u_input.c.x), -78953i, 1i, 59226i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, global0.x), _wgslsmith_f_op_vec2_f32(select(global1.d, vec2<f32>(global1.d.x, global0.x), true)), global1.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global1.d))), true))));
    let var_2 = ~var_1.c.a;
    let var_3 = vec4<f32>(global1.d.x, -777f, _wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(sign(-1000f))), func_1(global1.c.c.b.xw, Struct_2(16414u, var_1.c.e, global1.c.d, Struct_1(global1.a.x < u_input.a, func_2(4568u).c.b.b), func_5(Struct_3(vec4<u32>(global1.c.a, global1.c.a, var_2, var_1.a.x), var_1.b, Struct_2(var_1.a.x, Struct_1(var_1.b.x, global1.c.e.b), Struct_1(var_1.b.x, vec4<i32>(global1.c.b.b.x, global1.c.e.b.x, u_input.c.x, u_input.c.x)), Struct_1(global1.c.c.a, vec4<i32>(1i, var_1.c.d.b.x, 63453i, var_1.c.b.b.x)), global1.c.e), vec2<f32>(1519f, global1.d.x))))).d.x);
    var var_4 = global3[_wgslsmith_index_u32(global1.c.a, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(func_2(65969u).c.b.b.x, countOneBits(countOneBits(~var_1.a.yx)), ~u_input.e);
}

