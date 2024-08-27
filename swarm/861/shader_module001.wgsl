struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(1u, 52839u, 30653u, 45235u, 6175u, 45570u, 1u, 0u, 78397u, 4294967295u, 1u, 4294967295u, 43522u, 4294967295u, 1u, 60570u, 73671u, 45887u, 49289u, 13249u, 4294967295u, 50708u, 4377u, 4294967295u);

var<private> global1: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(5827i, -1i, 10422i, 0i), vec4<i32>(-1186i, -1i, 53862i, -1i), vec4<i32>(i32(-2147483648), 1i, 77899i, 1978i), vec4<i32>(2911i, 2147483647i, -14564i, 22481i), vec4<i32>(1934i, 23954i, 24725i, 0i), vec4<i32>(-1i, 2147483647i, -1i, 75783i), vec4<i32>(-38108i, 1i, 1i, 12387i), vec4<i32>(-7016i, -1i, -28703i, -4401i), vec4<i32>(0i, -1i, -14088i, 35920i), vec4<i32>(28487i, -1i, 4672i, 1i), vec4<i32>(-10134i, 1i, 60527i, 70133i), vec4<i32>(-39562i, -80856i, 1861i, -1i));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: vec2<i32>) -> vec2<bool> {
    global0 = array<u32, 24>();
    var var_0 = Struct_2(~14061u ^ countOneBits(~arg_0.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(739f, -1192f, 255f), vec3<f32>(478f, 604f, -1031f), arg_2.x)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1661f, -395f, 329f))))), vec2<u32>(select(~4294967295u, global0[_wgslsmith_index_u32(~u_input.c, 24u)], true), _wgslsmith_dot_vec4_u32(~arg_0, arg_0)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-382f, -1611f, -342f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-461f, 1000f, -2158f) - vec3<f32>(-813f, 2154f, -327f))), vec3<f32>(1f, 1f, 1f)), _wgslsmith_mult_vec4_i32(-_wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)]), abs(countOneBits(vec4<i32>(28989i, arg_3.x, 2147483647i, -18406i))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(351f, 1002f))), -699f, -2078f, 506f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1094f))))), 1241f);
    let var_1 = _wgslsmith_add_vec3_u32(countOneBits(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(arg_0.x, 24u)], arg_0.x), arg_0.yzz, vec3<u32>(0u, u_input.c, global0[_wgslsmith_index_u32(4294967295u, 24u)])), vec3<u32>(54115u, u_input.c, arg_0.x) ^ vec3<u32>(var_0.b.b.x, global0[_wgslsmith_index_u32(52221u, 24u)], 17927u))) >> (~(~arg_0.wyx) % vec3<u32>(32u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_0.b.b.x, ~4294967295u), arg_0.ywy));
    var var_2 = var_0.b;
    var_0 = Struct_2(var_0.b.b.x << (var_1.x % 32u), var_0.b, var_0.c, var_2.c.x, var_0.e);
    return !vec2<bool>(all(vec3<bool>(arg_2.x, all(vec4<bool>(false, arg_2.x, arg_1.x, arg_2.x)), arg_1.x)), true & !(0i >= var_0.b.d.x));
}

fn func_2(arg_0: vec3<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -560f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-599f, -2150f))))))));
    var var_1 = var_0.x;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 523f))));
    global0 = array<u32, 24>();
    return select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !func_3(vec4<u32>(1073u, 89085u, 4294967295u, global0[_wgslsmith_index_u32(u_input.c, 24u)]), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, false), _wgslsmith_mult_vec2_i32(u_input.d.yy, vec2<i32>(u_input.a, 1i))), (_wgslsmith_f_op_f32(f32(-1f) * -303f) <= _wgslsmith_f_op_f32(var_0.x + var_0.x)) || false), !select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, false, false, true)), true), false));
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    let var_0 = 4294967295u;
    global0 = array<u32, 24>();
    let var_1 = select(!(!select(!arg_0.xx, arg_0.wy, vec2<bool>(arg_0.x, arg_0.x))), func_2(u_input.d), !select(func_3(~vec4<u32>(1u, 51622u, u_input.c, var_0), vec4<bool>(arg_0.x, true, false, false), arg_0, u_input.d.yz), select(!arg_0.wy, vec2<bool>(arg_0.x, arg_0.x), any(vec4<bool>(arg_0.x, arg_0.x, false, false))), all(vec3<bool>(arg_0.x, arg_0.x, false))));
    let var_2 = Struct_2(countOneBits(reverseBits(14700u)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1845f, -192f, -106f) - vec3<f32>(-163f, -1000f, 327f)) * vec3<f32>(-161f, 881f, 1245f)))), ~vec2<u32>(~var_0, 40788u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-159f, 852f, _wgslsmith_f_op_f32(abs(965f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1171f, 250f, -1141f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1376f, 948f) * vec3<f32>(-846f, -1000f, -1157f)))), -_wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(~4294967295u, 12u)], abs(global1[_wgslsmith_index_u32(var_0, 12u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -631f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1125f))), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-626f, -307f)), _wgslsmith_f_op_f32(max(-1118f, 619f))))))), -195f);
    global0 = array<u32, 24>();
    return u_input.d.x & u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.a ^ _wgslsmith_mult_i32(u_input.b, u_input.b);
    var var_1 = select(vec2<i32>(u_input.b, func_1(vec4<bool>(true, true, true, true)) ^ (u_input.d.x << (8755u % 32u))), select(u_input.d.yx, u_input.d.zy | -vec2<i32>(-2147483647i, u_input.d.x), !all(vec3<bool>(false, false, true)) && true), true);
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(1326f, _wgslsmith_f_op_f32(abs(1567f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(748f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -774f) + _wgslsmith_f_op_f32(ceil(466f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-193f, -155f)), _wgslsmith_f_op_f32(465f * 719f), true)))), reverseBits(max(firstTrailingBit(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 172u)), vec2<u32>(global0[_wgslsmith_index_u32(8397u, 24u)], 1u))) | abs(u_input.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-1606f + -716f), _wgslsmith_f_op_f32(min(-843f, -819f)), _wgslsmith_div_f32(-376f, -822f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(431f, 714f, 2065f) * vec3<f32>(-1129f, -1052f, -486f))))))), ~firstTrailingBit(vec4<i32>(u_input.a, 44111i, ~(-2147483647i), u_input.a >> (u_input.e.x % 32u))));
    let var_3 = var_0;
    let var_4 = Struct_2(_wgslsmith_dot_vec2_u32(abs(max(u_input.e, vec2<u32>(4294967295u, u_input.e.x))), abs(~vec2<u32>(var_2.b.x, 39863u))), Struct_1(vec3<f32>(var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1592f))), _wgslsmith_f_op_f32(exp2(var_2.c.x))), abs(vec2<u32>(2751u, 4796u) << (u_input.e % vec2<u32>(32u))) << (_wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(var_2.b.x, 24u)], var_2.b.x), var_2.b) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-270f, var_2.a.x, 206f)))))), vec4<i32>(var_0, _wgslsmith_sub_i32(func_1(vec4<bool>(false, false, false, true)), select(var_2.d.x, 1i, false)), abs(1i), var_3)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_2.a.x, -460f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.a.x - var_2.a.x))), _wgslsmith_f_op_f32(var_2.a.x - -1318f), var_2.c.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1499f, -1201f, var_2.c.x, 2727f) + vec4<f32>(var_2.c.x, var_2.a.x, 1435f, var_2.c.x)), vec4<f32>(673f, 279f, var_2.a.x, -1000f)) * vec4<f32>(1283f, _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_div_f32(var_2.c.x, -1000f), -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(-var_2.c.x))));
    var_1 = ~select(-(_wgslsmith_sub_vec2_i32(var_4.b.d.xx, vec2<i32>(var_3, var_3)) ^ min(var_2.d.wz, u_input.d.yz)), u_input.d.yy, !(!func_3(vec4<u32>(1u, global0[_wgslsmith_index_u32(16332u, 24u)], u_input.c, u_input.e.x), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), var_4.b.d.zx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.b.x, _wgslsmith_add_u32(countOneBits(u_input.c), 0u), abs(1u), reverseBits(_wgslsmith_mult_u32(1u, 12336u))), vec4<u32>(~u_input.c, firstTrailingBit(var_4.a) & (var_2.b.x | 0u), 0u, var_2.b.x), select(~(~vec4<u32>(var_4.a, 4294967295u, 1u, 4294967295u)), vec4<u32>(0u, _wgslsmith_sub_u32(69614u, u_input.e.x), var_4.a, 0u >> (global0[_wgslsmith_index_u32(var_2.b.x, 24u)] % 32u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), select(32817u, reverseBits(~76700u) >> (~_wgslsmith_sub_u32(u_input.c, 0u) % 32u), false), global1[_wgslsmith_index_u32(max(4294967295u, ~_wgslsmith_dot_vec2_u32(~u_input.e, ~u_input.e)), 12u)], 44320u);
}

