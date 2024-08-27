struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> f32 {
    let var_0 = vec3<i32>(-11283i, 6354i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a | ~u_input.a, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.d, u_input.d, u_input.a.x), vec4<i32>(-2147483647i, u_input.d, -1i, u_input.d)), i32(-1i) * -16239i, firstLeadingBit(10507i), -2114i)), vec4<i32>(~u_input.a.x, u_input.a.x, ~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.d, u_input.d)), u_input.d)));
    let var_1 = any(!vec2<bool>(all(vec3<bool>(true, true, true)), true));
    var var_2 = var_1;
    var_2 = var_1;
    var var_3 = !select(vec4<bool>(!var_1, var_1, var_1, _wgslsmith_f_op_f32(round(321f)) == -1293f), vec4<bool>(~0u == u_input.b, var_1, true, var_1), (var_1 & !var_1) || var_1);
    return 1142f;
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(686f + -606f), _wgslsmith_f_op_f32(min(1413f, 853f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1204f)), -610f), -518f) - vec3<f32>(1f, 1f, 1f)), ~60803u);
    var var_1 = Struct_2(var_0, vec3<i32>(min(7423i, u_input.a.x), u_input.a.x, countOneBits(reverseBits(abs(0i)))), any(!vec3<bool>(420f == var_0.a.x, all(vec3<bool>(true, false, false)), true)), vec4<bool>(true, true, true, true), var_0);
    var var_2 = 1114f;
    var_1 = Struct_2(var_1.e, _wgslsmith_add_vec3_i32(~vec3<i32>(73145i, u_input.d, var_1.b.x) & -u_input.a.zxy, ~u_input.a.xyx), var_1.c, select(select(vec4<bool>(!var_1.d.x, !var_1.c, 0u >= var_0.b, true), select(!var_1.d, var_1.d, var_1.d), false), var_1.d, true), Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(452f - var_1.e.a.x), var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -423f)), -115f), ~u_input.e));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.x))) + -837f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1255f)))));
    return u_input.c.zy;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec2_u32(select(_wgslsmith_clamp_vec2_u32(select(u_input.c.xy, ~u_input.c.wx, select(vec2<bool>(true, true), vec2<bool>(false, false), true)), u_input.c.yy, _wgslsmith_div_vec2_u32(vec2<u32>(34287u, u_input.e), ~u_input.c.xz)), ~(~vec2<u32>(u_input.e, u_input.c.x)), vec2<bool>(true, _wgslsmith_f_op_f32(func_2()) <= _wgslsmith_f_op_f32(f32(-1f) * -937f))), func_3());
    let var_1 = _wgslsmith_mult_vec2_i32(u_input.a.wy, min(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.d, -1i), u_input.d), u_input.a.x), ~(u_input.a.xw << (vec2<u32>(7989u, var_0.x) % vec2<u32>(32u)))));
    var var_2 = Struct_3(~u_input.d, -871f, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(324f, 794f, -330f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1407f, -1356f, 579f))), ~27432u), -firstLeadingBit(-u_input.a.zyz), false, vec4<bool>(false && any(vec2<bool>(true, false)), all(vec3<bool>(true, false, true)) & true, u_input.d == select(u_input.a.x, 4337i, false), ~(-2147483647i) >= (-13870i & var_1.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1467f, 780f, -1000f)), min(min(var_0.x, 4294967295u), 4294967295u))));
    let var_3 = var_2.c.a.a.yz;
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_2.b))));
    return var_2.c.a;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = ~1u;
    let var_1 = Struct_3(3215i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1().a.x * _wgslsmith_f_op_f32(-806f + _wgslsmith_f_op_f32(-911f * arg_0.a.x))) * arg_0.a.x), Struct_2(Struct_1(arg_0.a, (var_0 | var_0) >> (~u_input.e % 32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(max(u_input.a.x, 2147483647i), _wgslsmith_dot_vec3_i32(u_input.a.xxy, vec3<i32>(u_input.d, u_input.d, u_input.a.x)), 0i), max(select(vec3<i32>(-1i, -2147483647i, u_input.d), u_input.a.xwz, false), -vec3<i32>(1i, u_input.d, -2147483647i)), _wgslsmith_clamp_vec3_i32(-u_input.a.wyw, _wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.d, u_input.d), u_input.a.zxx), vec3<i32>(7062i, u_input.a.x, u_input.a.x))), false, !vec4<bool>(arg_1, true, true, true), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(arg_0.a)), _wgslsmith_div_u32(1u, 23993u | var_0))));
    let var_2 = vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * -879f)), 1i == -u_input.d))), _wgslsmith_f_op_f32(arg_0.a.x * 304f), 493f);
    let var_3 = !select(var_1.c.d.ywy, !select(var_1.c.d.yxy, !var_1.c.d.yzx, var_1.c.d.yyx), true || any(vec2<bool>(false, true)));
    var var_4 = 730f;
    return ~24513u;
}

fn func_5(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = !(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec3<bool>(false, false, false)))));
    var_0 = !vec2<bool>(false, var_0.x);
    var var_1 = abs(~u_input.a.zz) | u_input.a.yz;
    var var_2 = vec4<u32>(func_4(func_1(), any(select(vec4<bool>(true, var_0.x, false, var_0.x), select(vec4<bool>(var_0.x, false, false, false), vec4<bool>(true, true, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, true)), vec4<bool>(false, var_0.x, false, false)))), ~42602u, ~48576u, min(firstTrailingBit(1u | ~arg_2.b), arg_2.b));
    var var_3 = Struct_4(min(u_input.c.yw, vec2<u32>(u_input.e, 4294967295u) & (vec2<u32>(u_input.b, 1u) >> (vec2<u32>(0u, arg_2.b) % vec2<u32>(32u)))), _wgslsmith_div_u32(~(~var_2.x), arg_1.x), 1u);
    return !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(all(select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, false, true))), true), vec2<bool>(var_0.x, all(vec4<bool>(var_0.x, false, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(vec2<i32>(u_input.a.x, i32(-1i) * -_wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.zz)), vec2<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.d), select(55714i, -u_input.d, true)));
    let var_1 = min(var_0.x, -var_0.x) ^ var_0.x;
    var_0 = u_input.a.zw;
    var_0 = reverseBits(vec2<i32>(1i, 15916i)) << (~firstTrailingBit(u_input.c.zy) % vec2<u32>(32u));
    var var_2 = !func_5(abs(-1i << (0u % 32u)) >> (func_4(func_1(), true) % 32u), u_input.c & countOneBits(vec4<u32>(u_input.c.x, 4294967295u, 0u, u_input.c.x) << (vec4<u32>(u_input.e, 1682u, 69206u, 1u) % vec4<u32>(32u))), func_1());
    var var_3 = Struct_2(func_1(), vec3<i32>(_wgslsmith_dot_vec3_i32(-u_input.a.ywz, vec3<i32>(_wgslsmith_mult_i32(1i, var_1), var_1, abs(var_0.x))), firstLeadingBit(1i), _wgslsmith_clamp_i32(-countOneBits(-4126i), _wgslsmith_add_i32(abs(var_0.x), -25161i), -(~var_0.x))), !var_2.x, select(!vec4<bool>(false, !var_2.x, true, var_2.x), vec4<bool>(any(select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(false, false, var_2.x), false)), var_2.x, !var_2.x, _wgslsmith_f_op_f32(round(-590f)) < _wgslsmith_f_op_f32(1000f * -894f)), !(!vec4<bool>(var_2.x, false, true, var_2.x))), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(sign(997f)), -1318f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(var_3.e.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.a.x - -2583f)))));
}

