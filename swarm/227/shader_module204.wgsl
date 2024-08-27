struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true));

var<private> global1: Struct_1 = Struct_1(true, 1553f, 4294967295u, vec3<bool>(true, false, false));

var<private> global2: bool = false;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<i32> {
    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-861f * -1799f), -180f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(trunc(-816f)))))), 11861u, select(select(!(!global1.d), vec3<bool>(global1.d.x, global1.a, any(global1.d.zz)), all(global1.d.xz)), !select(vec3<bool>(true, global1.d.x, true), !global1.d, any(global1.d)), true | any(select(global1.d, global1.d, vec3<bool>(global1.a, global1.a, true)))));
    var var_0 = firstTrailingBit(countOneBits(reverseBits(44193u) >> (global1.c % 32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-459f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.b, global1.b)) + 1518f))));
    let var_2 = Struct_2(86188u, select(vec2<bool>(true, global1.a), global1.d.zx, any(vec2<bool>(global1.d.x, select(true, global1.d.x, global1.d.x)))), (_wgslsmith_mod_vec3_u32(abs(vec3<u32>(4294967295u, 1u, global1.c)), vec3<u32>(global1.c, 4294967295u, 73918u) & vec3<u32>(global1.c, 25079u, 58693u)) & (~vec3<u32>(global1.c, global1.c, 0u) | countOneBits(vec3<u32>(global1.c, global1.c, 4294967295u)))) | vec3<u32>(0u, 0u, 5803u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.x, global1.b)), 435f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1104f) * _wgslsmith_f_op_f32(round(617f))))))));
    var var_3 = ~_wgslsmith_div_u32(~var_2.a, var_2.a);
    return u_input.a.zy;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(abs(562f));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(1275f * global1.b), _wgslsmith_f_op_f32(ceil(-652f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global2 = u_input.b < (-_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(0i, u_input.b)), func_3()) << ((firstTrailingBit(~0u) ^ ((global1.c >> (79960u % 32u)) << (global1.c % 32u))) % 32u));
    global1 = Struct_1(false, global1.b, ~firstLeadingBit(global1.c), !global1.d);
    return Struct_2(global1.c, select(select(vec2<bool>(true, global1.d.x || true), global1.d.zy, global1.d.yx), global1.d.yx, select(global1.d.xy, vec2<bool>(false, true), select(true, true, false))), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.c, 1u, 4294967295u), abs((vec3<u32>(1u, global1.c, global1.c) ^ vec3<u32>(global1.c, global1.c, global1.c)) ^ (vec3<u32>(global1.c, 35454u, global1.c) & vec3<u32>(37826u, 35539u, global1.c))), _wgslsmith_clamp_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(91753u, global1.c, global1.c), vec3<u32>(global1.c, global1.c, 4294967295u)), ~vec3<u32>(1u, global1.c, 24975u), ~select(vec3<u32>(0u, 52058u, global1.c), vec3<u32>(global1.c, global1.c, 21847u), global1.d))), -163f);
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    return Struct_2(~global1.c, !func_2().b, arg_1.c, global1.b);
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_1.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, arg_1.d, _wgslsmith_f_op_f32(trunc(651f))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_1.d, arg_1.d))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, 753f, global1.b), vec3<f32>(1022f, -801f, global1.b)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1483f, 814f, -680f)), all(vec4<bool>(arg_1.b.x, true, true, true)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2345f, 949f, -564f) + vec3<f32>(787f, -1466f, -939f))))))));
    global2 = false;
    var var_2 = ~(~(_wgslsmith_mult_u32(select(4294967295u, 1u, false), ~arg_1.c.x) & (abs(var_0.x) << (89064u % 32u))));
    var var_3 = Struct_1(any(!(!(!vec2<bool>(arg_1.b.x, arg_1.b.x)))), _wgslsmith_f_op_f32(trunc(-455f)), 34509u, select(select(select(vec3<bool>(global1.a, false, false), global1.d, true), global1.d, global1.d), vec3<bool>(func_2().d == -648f, ~u_input.b <= u_input.b, true), vec3<bool>(global1.a, true, global1.d.x)));
    return Struct_1(func_2().b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -886f))) * arg_1.d), func_2().a, select(global1.d, global1.d, arg_1.b.x));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(!all(vec3<bool>(true, global1.d.x || false, true)), arg_1.x, ~min(func_5(_wgslsmith_f_op_f32(ceil(-149f)), Struct_2(arg_0.c, vec2<bool>(true, arg_0.d.x), vec3<u32>(global1.c, arg_0.c, arg_0.c), arg_0.b)).c, global1.c), vec3<bool>(arg_0.d.x, global1.a, any(global1.d)));
    var_0 = Struct_1(arg_1.x != arg_1.x, arg_0.b, var_0.c, var_0.d);
    var var_1 = func_5(arg_1.x, func_2());
    let var_2 = func_2();
    var_0 = Struct_1(true, _wgslsmith_f_op_f32(min(2226f, global1.b)), global1.c, !var_1.d);
    return func_5(_wgslsmith_f_op_f32(f32(-1f) * -353f), func_2());
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = 2147483647i;
    global2 = global1.a;
    var var_1 = false;
    let var_2 = func_6(func_5(arg_2.d, func_4(arg_0.x, func_2())), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1232f, 1159f, arg_2.d, -259f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1837f, 1240f, -682f, global1.b) - vec4<f32>(-1798f, -652f, 1040f, arg_2.d)))))), vec4<i32>(~_wgslsmith_mod_i32(arg_0.x, max(u_input.b, -2147483647i)), func_3().x, u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_0.yy, arg_0.xw), u_input.a.x)));
    return _wgslsmith_add_vec4_i32(countOneBits(select(_wgslsmith_sub_vec4_i32(reverseBits(arg_0), vec4<i32>(0i, 2171i, -2426i, 34760i)), -vec4<i32>(u_input.a.x, u_input.b, u_input.b, arg_0.x), vec4<bool>(true, var_2.a, var_2.d.x, !var_2.a))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, arg_0.x, 0i, -30785i), vec4<i32>(48558i, 21746i, 0i, 28758i) >> (vec4<u32>(25569u, 33787u, 15192u, arg_2.a) % vec4<u32>(32u))) & vec4<i32>(~(-34357i), arg_0.x, 2147483647i, u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(abs(-2147483647i), -(~(-30925i)), u_input.a.x, -41359i), func_1(~min(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.b), vec4<i32>(-49453i, u_input.a.x, u_input.b, -1i)), select(global1.d, !vec3<bool>(global1.d.x, global1.a, false), vec3<bool>(global1.a, global1.a, true)), Struct_2(global1.c & 11921u, global1.d.yx, vec3<u32>(4294967295u, global1.c, global1.c), _wgslsmith_div_f32(504f, 278f))));
    global1 = func_5(1818f, Struct_2(global1.c, !(!global1.d.xx), min(~abs(vec3<u32>(global1.c, 88356u, 9232u)), func_2().c), 817f));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1952f);
    let var_2 = global1.a;
    var var_3 = abs(_wgslsmith_add_u32(_wgslsmith_div_u32(global1.c >> (29336u % 32u), global1.c), 73351u | ~global1.c) & func_5(_wgslsmith_f_op_f32(-global1.b), func_4(1i, Struct_2(global1.c, global1.d.zz, vec3<u32>(global1.c, 1u, global1.c), -1333f))).c);
    let var_4 = u_input.a.x;
    var var_5 = true;
    let var_6 = _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_0.x, _wgslsmith_div_i32(0i, -1i), -(~13045i))), -firstTrailingBit(vec3<i32>(~var_4, 2147483647i, ~(-36496i))));
    let var_7 = all(vec2<bool>(true, global1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(0u, 0u, 0u, global1.c) >> (vec4<u32>(59622u, global1.c, 21033u, global1.c) % vec4<u32>(32u)), ~vec4<u32>(global1.c, 1u, 22882u, global1.c), global0[_wgslsmith_index_u32(func_2().c.x, 5u)]), ~(~(~vec4<u32>(1u, 1u, global1.c, 4294967295u)))), countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u & global1.c, reverseBits(4294967295u)), vec2<u32>(39334u, global1.c << (11959u % 32u)))), _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_mod_u32(96165u, 111925u)), global1.c) ^ 25307u, _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(0i, 1i, u_input.a.x, var_6)), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, u_input.b, var_4), vec4<i32>(u_input.b, u_input.b, -1i, 66087i))), ~select(vec4<i32>(u_input.a.x, -14397i, var_0.x, var_0.x), vec4<i32>(u_input.b, 0i, var_4, 45507i), vec4<bool>(var_7, true, true, true))), ~firstLeadingBit(vec4<i32>(0i, 44337i, u_input.a.x, u_input.b))), _wgslsmith_clamp_u32(global1.c, 31892u, _wgslsmith_add_u32(1u | (global1.c & 36256u), ~1u)));
}

