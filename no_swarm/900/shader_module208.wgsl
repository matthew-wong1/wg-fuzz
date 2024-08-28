struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5>;

var<private> global1: i32;

var<private> global2: vec3<u32> = vec3<u32>(0u, 4294967295u, 0u);

var<private> global3: array<vec3<i32>, 24>;

var<private> global4: array<Struct_2, 4>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec4_u32(~(~(~u_input.d) | (_wgslsmith_add_vec4_u32(u_input.d, u_input.d) | vec4<u32>(u_input.d.x, global2.x, u_input.d.x, 1u))), vec4<u32>(~(~18306u) << (u_input.d.x % 32u), abs(57120u), global2.x ^ u_input.d.x, ~reverseBits(~u_input.d.x)));
    var_0 = ~(select(min(_wgslsmith_div_vec4_u32(u_input.d, u_input.d), u_input.d), vec4<u32>(11065u, ~u_input.d.x, max(4372u, 97847u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d.x, 36773u), vec3<u32>(16516u, global2.x, 4294967295u))), all(vec3<bool>(false, false, false))) ^ u_input.d);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(379f + -297f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(201f, _wgslsmith_f_op_f32(max(359f, _wgslsmith_f_op_f32(-592f - 292f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(372f + -517f) - _wgslsmith_f_op_f32(abs(1f))), false)), _wgslsmith_dot_vec4_u32(u_input.d, ~reverseBits(abs(u_input.d))), ~_wgslsmith_clamp_u32(1u, ~0u, ~firstLeadingBit(22614u)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), vec4<bool>(true, _wgslsmith_sub_i32(17569i, u_input.a) <= (u_input.c << (60279u % 32u)), any(vec2<bool>(true, false)) & false, true)));
    var var_2 = select(vec4<i32>(-1i) * -vec4<i32>(u_input.a ^ -31122i, -u_input.b.x, u_input.b.x, u_input.a ^ 6383i), ~_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.c, 0i, 43691i, u_input.c), min(vec4<i32>(u_input.c, 2147483647i, u_input.b.x, 20062i), vec4<i32>(u_input.a, -2147483647i, 11607i, u_input.a))), vec4<i32>(-1i) * -vec4<i32>(u_input.c, 2147483647i, u_input.c, u_input.a)), vec4<bool>(var_1.e.x, !select(false | var_1.e.x, false, select(true, var_1.e.x, true)), true, false));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, var_1.a, 153f, 171f), vec4<f32>(-873f, var_1.a, var_1.b, -367f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 128f, var_1.b, var_1.b))) - vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), -836f, -1513f, _wgslsmith_f_op_f32(-var_1.b))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, _wgslsmith_f_op_f32(ceil(var_1.a)), _wgslsmith_f_op_f32(var_1.b * -639f), _wgslsmith_f_op_f32(-var_1.a)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-387f, -467f, -1431f, var_1.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.a, var_1.b, 387f) - vec4<f32>(-392f, -1896f, var_1.a, var_1.b)), all(vec3<bool>(var_1.e.x, true, var_1.e.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(118f, var_1.a, -1005f, var_1.b))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(round(var_1.a)), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_div_f32(-727f, var_1.b)), vec4<f32>(_wgslsmith_div_f32(var_1.a, var_1.a), -364f, _wgslsmith_f_op_f32(f32(-1f) * -593f), _wgslsmith_f_op_f32(select(var_1.b, var_1.b, false)))))));
    return var_1.e.zw;
}

fn func_4(arg_0: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_mod_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(33503i, u_input.c), u_input.a >> (4294967295u % 32u), -65624i), ~countOneBits(global3[_wgslsmith_index_u32(0u, 24u)])), -_wgslsmith_sub_vec3_i32(vec3<i32>(~2147483647i, reverseBits(19075i), -6041i), countOneBits(firstLeadingBit(global3[_wgslsmith_index_u32(12937u, 24u)]))));
    global1 = -19407i;
    global1 = u_input.b.x;
    let var_1 = true;
    global4 = array<Struct_2, 4>();
    return (_wgslsmith_f_op_f32(_wgslsmith_div_f32(-114f, _wgslsmith_f_op_f32(ceil(-875f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1142f, 826f) * -212f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -746f)))) || true;
}

fn func_2() -> vec2<bool> {
    let var_0 = func_4(select(select(func_3(), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(false, false)), vec2<bool>(false, select(false, false, false))), vec2<bool>(true, true), func_3().x | all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false))));
    var var_1 = -vec2<i32>(firstLeadingBit(0i), 0i);
    var var_2 = -12702i;
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1f)))), true));
    let var_4 = Struct_2(all(select(select(!vec4<bool>(true, var_0, false, var_0), select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, true, var_0, var_0), true), true), select(select(vec4<bool>(var_0, false, false, true), vec4<bool>(false, true, var_0, false), false), !vec4<bool>(true, false, var_0, false), vec4<bool>(false, true, var_0, true)), !var_0)));
    return func_3();
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> bool {
    var var_0 = !select(func_2(), !vec2<bool>(any(vec2<bool>(false, false)), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(floor(arg_0.x)) >= 1188f);
    var var_1 = Struct_3(Struct_1(2284f, 1f, ~1u, global2.x, !select(!vec4<bool>(var_0.x, true, false, false), !vec4<bool>(var_0.x, var_0.x, false, false), var_0.x)));
    let var_2 = global4[_wgslsmith_index_u32(45155u, 4u)];
    var var_3 = var_1.a.e.wz;
    var var_4 = var_3.x;
    return arg_0.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + var_1.a.a) * arg_0.x), _wgslsmith_f_op_f32(floor(arg_0.x)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))))));
}

fn func_5(arg_0: u32, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(floor(-440f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1614f)) + _wgslsmith_f_op_f32(-282f * 1000f))), 1u, ~(~arg_0) & 0u, vec4<bool>(true, (arg_1.x & arg_1.x) | false, arg_1.x, (arg_1.x || false) & select(arg_1.x, arg_1.x, arg_1.x))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_div_f32(var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-588f, var_0.a.b)))), var_0.a.a, arg_0, arg_0, var_0.a.e));
    let var_2 = var_0.a;
    global1 = _wgslsmith_dot_vec2_i32(((_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(u_input.b.x, u_input.b.x)) ^ min(u_input.b, vec2<i32>(-5591i, -51014i))) >> (~_wgslsmith_div_vec2_u32(global2.xz, vec2<u32>(53998u, 16893u)) % vec2<u32>(32u))) & u_input.b, firstLeadingBit(u_input.b));
    let var_3 = ~(~u_input.d.zzx >> (abs(u_input.d.xwx) % vec3<u32>(32u)));
    return Struct_1(var_0.a.b, _wgslsmith_f_op_f32(-var_0.a.a), 19930u, ~(~(~var_2.d >> (~var_2.d % 32u))), vec4<bool>(func_1(vec3<f32>(-152f, _wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(625f - -497f)), -2147483647i), false, false, var_0.a.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(max(~firstLeadingBit(1u >> (1u % 32u)), ~(~(~global2.x))), vec3<bool>(false, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(global2.x, 5u)])), u_input.a), true == (global2.x < ~0u)));
    var var_1 = global4[_wgslsmith_index_u32(abs(137077u), 4u)];
    var var_2 = u_input.b;
    global4 = array<Struct_2, 4>();
    var var_3 = func_2().x;
    var var_4 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(abs(u_input.d), ~u_input.d), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(u_input.d, min(vec4<u32>(global2.x, global2.x, u_input.d.x, u_input.d.x), ~u_input.d))));
    let var_5 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - var_0.b) * _wgslsmith_f_op_f32(var_0.b - -797f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(417f - 465f) - -1712f)) - var_0.a), 1408f, (~func_5(4294967295u, var_0.e.xzx).c << (1u % 32u)) ^ 4294967295u, 53068u, var_0.e);
    global1 = u_input.b.x ^ _wgslsmith_add_i32(-1i, u_input.a);
    var var_6 = var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(var_0.c, 24u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-915f, func_5(_wgslsmith_add_u32(u_input.d.x, 4782u), select(vec3<bool>(true, var_6.x, false), vec3<bool>(false, var_1.a, var_0.e.x), true)).a, -738f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.a) * -709f))), var_5.d);
}

