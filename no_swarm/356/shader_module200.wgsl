struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: f32,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: vec4<u32>;

var<private> global2: vec3<i32>;

var<private> global3: i32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<i32> {
    let var_0 = -324f;
    global0 = array<vec2<bool>, 14>();
    return _wgslsmith_mod_vec2_i32(u_input.c.zy, vec2<i32>(~global2.x, reverseBits(global2.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_5) -> bool {
    let var_0 = _wgslsmith_mult_u32(max(~(~(~40485u)), ~0u), 1u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.a, _wgslsmith_div_f32(-1586f, -1911f))));
    global3 = firstLeadingBit(-max(~(-u_input.b), 6358i));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_div_f32(var_1.x, var_1.x))), 1200f));
    let var_3 = arg_3;
    return true;
}

fn func_2() -> i32 {
    var var_0 = vec4<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), func_4(-func_3(), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -432f)), vec4<u32>(global1.x | 4294967295u, ~global1.x, _wgslsmith_mult_u32(global1.x, global1.x), global1.x)), _wgslsmith_div_vec2_u32(global1.yz, vec2<u32>(42249u, global1.x)), Struct_5(vec3<bool>(true, true, true))), false, true);
    var_0 = select(!select(select(vec4<bool>(false, true, false, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, true, true), false), global1.x != 1u), select(!vec4<bool>(false, var_0.x, false, var_0.x), !vec4<bool>(false, var_0.x, var_0.x, true), true), true), !(!select(vec4<bool>(false, false, true, var_0.x), select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, false, false, var_0.x), true), !vec4<bool>(true, true, var_0.x, true))), all(var_0.xwy));
    let var_1 = Struct_2(select(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a, reverseBits(0i)), select(~u_input.c.x, global2.x, -2147483647i < global2.x)), 0i, false), _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(21189u, _wgslsmith_clamp_u32(1u, 1u, 4294967295u))), vec2<u32>(_wgslsmith_div_u32(~0u, 101968u), _wgslsmith_add_u32(~global1.x, 0u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1200f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -509f))), ~(~vec4<u32>(150386u, 1u, 26670u, global1.x))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.a, var_1.c.a))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.a, var_1.c.a)))), !vec2<bool>(false, var_0.x))), Struct_3(~1u, vec4<bool>(var_0.x, true, true, var_0.x), var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.a) * -426f), max(vec4<i32>(var_1.a << (1u % 32u), -2147483647i | var_1.a, u_input.c.x, u_input.a), ~(vec4<i32>(70671i, 15762i, u_input.a, u_input.b) ^ vec4<i32>(u_input.b, u_input.c.x, -1i, 901i))) ^ vec4<i32>(~abs(-14201i), 2147483647i, ~u_input.b, ~var_1.a));
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1048f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2209f - 688f) - var_2.c), -239f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.c)), _wgslsmith_f_op_f32(ceil(var_2.b.c.c.a))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_2.c)))), -1042f, -1582f, _wgslsmith_f_op_f32(min(1234f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(460f)))))))));
    return -17582i;
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-286f, 227f, 176f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(787f, 978f, -1166f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1169f, 579f, -991f), vec3<f32>(-1000f, 492f, -126f))) - vec3<f32>(-1239f, 1237f, -917f)), _wgslsmith_div_i32(1i, 1i) > func_2())) - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-308f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1445f + -962f))), -988f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1369f, 1f, 679f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-184f, -938f, 1828f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(387f, 1387f, 102f))), vec3<f32>(_wgslsmith_f_op_f32(round(604f)), _wgslsmith_f_op_f32(round(-487f)), _wgslsmith_f_op_f32(1267f - 1800f)), arg_0))));
    let var_1 = _wgslsmith_mod_i32(firstLeadingBit(-1i), -(~_wgslsmith_div_i32(global2.x << (global1.x % 32u), global2.x << (0u % 32u))));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1299f, var_0.x)))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-924f, 532f, -237f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-320f, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.x)))), 348f)), select(!select(!vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, true, arg_0), true), !(!(!vec3<bool>(arg_0, arg_0, arg_0))), !(!arg_0))));
    let var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 247f) + -1112f), -645f), Struct_3(arg_1.x, !select(select(vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(true, true, arg_0, arg_0), arg_0), vec4<bool>(true, true, true, true), any(vec3<bool>(arg_0, arg_0, false))), Struct_2(u_input.a, global1.wy, Struct_1(_wgslsmith_f_op_f32(-276f + 774f), min(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(74115u, 0u, global1.x, 50327u))))), _wgslsmith_f_op_f32(ceil(131f)), vec4<i32>(_wgslsmith_mult_i32(1i, 2147483647i), var_1, u_input.b, -4657i));
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.a.x, 1000f, 192f), vec3<f32>(var_0.x, -729f, var_0.x))), vec3<f32>(var_0.x, var_0.x, 163f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * _wgslsmith_f_op_f32(min(var_2.b.c.c.a, -164f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c, 312f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-142f, -1194f, var_0.x) * vec3<f32>(-525f, var_2.c, -277f)), vec3<f32>(553f, var_0.x, var_0.x)))))));
    return func_3().x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(all(vec3<bool>(true, true, u_input.b <= -2147483647i)), true, !(1u <= firstTrailingBit(global1.x)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(25552u, global1.x, global1.x), 0u, 1u) >= 4294967295u);
    var var_1 = vec2<i32>(global2.x, -func_1(false, ~global1.yyy));
    global1 = firstTrailingBit(vec4<u32>(abs(26988u), ~1u, ~global1.x, 7904u)) >> ((min(vec4<u32>(~5038u, ~global1.x, global1.x, 1u), ~(vec4<u32>(35239u, global1.x, 23345u, 17651u) | vec4<u32>(global1.x, global1.x, 29764u, global1.x))) ^ (vec4<u32>(13309u, reverseBits(global1.x), global1.x & 0u, 0u >> (global1.x % 32u)) >> (~vec4<u32>(global1.x, 1348u, global1.x, 0u) % vec4<u32>(32u)))) % vec4<u32>(32u));
    let var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1977f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-532f)))) * 1f)), Struct_3(0u, vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x))), true, var_0.x & false, true), Struct_2(countOneBits(-7804i), ~_wgslsmith_mod_vec2_u32(global1.wz, global1.zx), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1693f), max(vec4<u32>(global1.x, global1.x, global1.x, 40039u), vec4<u32>(global1.x, global1.x, global1.x, 4294967295u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(409f, 1000f))), _wgslsmith_f_op_f32(-1128f - -1134f))) - 1000f), -vec4<i32>(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(66351i, global2.x), u_input.c.zx), -74620i), _wgslsmith_mod_i32(firstTrailingBit(global2.x), select(global2.x, -28468i, var_0.x)), var_1.x, min(-2147483647i, -2147483647i) ^ u_input.a));
    var var_3 = _wgslsmith_f_op_f32(var_2.a.x - 1000f);
    var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1147f)), _wgslsmith_f_op_f32(floor(-1402f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, vec2<i32>(-52655i << (global1.x % 32u), 42928i));
}

