struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: i32,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 11>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool) -> vec4<u32> {
    var var_0 = !any(!select(select(vec4<bool>(arg_1, false, false, true), vec4<bool>(arg_1, false, arg_1, arg_1), true), !vec4<bool>(false, true, true, arg_1), any(vec4<bool>(arg_1, true, true, arg_1))));
    let var_1 = arg_0.x;
    let var_2 = abs(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(reverseBits(_wgslsmith_clamp_vec2_u32(arg_0.yy, arg_0.xz, vec2<u32>(arg_0.x, 62951u))), _wgslsmith_sub_vec2_u32(arg_0.yx, ~arg_0.xy)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(15513u, 4294967295u), arg_0.xx, ~arg_0.yx)));
    let var_3 = Struct_2(u_input.a, ~(~(~(vec3<u32>(28151u, var_2.x, 40997u) & vec3<u32>(var_2.x, arg_0.x, 4294967295u)))), !select(select(select(vec2<bool>(true, arg_1), vec2<bool>(false, arg_1), arg_1), vec2<bool>(true, true), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), arg_1)), select(!vec2<bool>(false, arg_1), vec2<bool>(false, true), vec2<bool>(arg_1, true)), vec2<bool>(arg_1, !arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(352f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1200f - 842f) * _wgslsmith_f_op_f32(-133f * -308f)), 1294f, _wgslsmith_f_op_f32(f32(-1f) * -1130f))));
    var var_4 = Struct_2(-(~u_input.b), var_3.b, select(var_3.c, select(var_3.c, var_3.c, var_3.c.x), select(select(select(var_3.c, var_3.c, var_3.c), select(var_3.c, var_3.c, var_3.c), var_3.c), select(select(vec2<bool>(false, true), vec2<bool>(var_3.c.x, arg_1), false), !var_3.c, arg_1), vec2<bool>(true, select(false, var_3.c.x, arg_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d.x, -2096f, var_3.d.x, 872f)))))));
    return vec4<u32>(76267u, _wgslsmith_mult_u32(4294967295u, arg_0.x), firstTrailingBit(var_3.b.x), 0u);
}

fn func_2() -> u32 {
    let var_0 = ~select(vec4<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(4294967295u, 6121u), ~0u), ~0u, ~(~1u), 46134u), select(vec4<u32>(1u, 1u, 1u, 1u) ^ func_3(vec3<u32>(4294967295u, 18245u, 4294967295u), false), _wgslsmith_mod_vec4_u32(~vec4<u32>(55475u, 4294967295u, 53981u, 0u), max(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(4294967295u, 0u, 33877u, 46757u))), true), vec4<bool>((u_input.a >> (0u % 32u)) < -2147483647i, false, any(vec4<bool>(true, true, true, true)), select(all(vec3<bool>(true, false, false)), true, true)));
    global0 = array<vec3<u32>, 11>();
    let var_1 = Struct_3(vec4<bool>(all(vec4<bool>(var_0.x <= var_0.x, false, any(vec2<bool>(true, false)), all(vec2<bool>(false, false)))), all(vec3<bool>(true, false, true)), true, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, -25041i, 15705i), vec4<i32>(-1i, -2147483647i, 0i, 6292i)) == _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, u_input.b), vec2<i32>(u_input.a, 0i))), !(!all(vec3<bool>(false, true, true))), ~_wgslsmith_add_i32(1i, ~(-3951i)), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), true), Struct_2(-u_input.a, global0[_wgslsmith_index_u32(var_0.x, 11u)], !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_2 = var_1.a.xy;
    global0 = array<vec3<u32>, 11>();
    return ~_wgslsmith_clamp_u32(func_3(func_3(vec3<u32>(var_0.x, 27128u, 0u), any(var_1.a.yz)).zwx, var_2.x).x, abs(var_0.x), ~6342u);
}

fn func_1() -> Struct_1 {
    global0 = array<vec3<u32>, 11>();
    var var_0 = Struct_3(vec4<bool>(true, false, (1u >> (func_2() % 32u)) == 8360u, select(all(vec4<bool>(true, true, true, true)), false, !all(vec2<bool>(false, false)))), false, u_input.a, vec4<bool>(false, func_2() != _wgslsmith_mod_u32(~1u, ~60308u), !all(vec2<bool>(true, true)) || true, false), Struct_2(countOneBits(_wgslsmith_mod_i32(1i, u_input.a ^ -2147483647i)), vec3<u32>(reverseBits(~4294967295u), func_2(), _wgslsmith_mod_u32(~19737u, 15900u)), select(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, true)), vec2<bool>(true, true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1720f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(415f * 240f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-589f, -1684f) * -1024f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-685f - 905f))))));
    let var_1 = Struct_1(vec2<i32>(-1i, u_input.b), min(vec2<i32>(var_0.e.a & 83955i, var_0.e.a), vec2<i32>(_wgslsmith_div_i32(var_0.e.a, var_0.e.a) << (15666u % 32u), var_0.c)), all(!(!vec2<bool>(var_0.b, true))), ~_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, var_0.c, u_input.b), vec3<i32>(var_0.c, var_0.c, u_input.a)) & ~vec3<i32>(var_0.c, -1i, 0i), -_wgslsmith_sub_vec3_i32(vec3<i32>(8449i, u_input.a, var_0.e.a), vec3<i32>(var_0.c, 1i, -1i))));
    var var_2 = (_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 33955u), ~vec2<u32>(var_0.e.b.x, 97373u)) << (var_0.e.b.zy % vec2<u32>(32u))) << (var_0.e.b.zy % vec2<u32>(32u));
    var var_3 = var_0.e;
    return Struct_1(vec2<i32>(u_input.a | -firstTrailingBit(0i), ~(~var_3.a) ^ ~min(var_1.d.x, 24430i)), var_1.a, false, firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(var_1.a.x, ~(-1i)), _wgslsmith_sub_i32(~var_3.a, var_1.b.x), var_3.a & ~(-19450i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(countOneBits(vec2<i32>(~u_input.b, -8989i)) >> (~vec2<u32>(4294967295u, ~27303u) % vec2<u32>(32u)));
    var var_1 = func_1();
    let var_2 = Struct_3(select(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, var_1.c, var_1.c, var_1.c), vec4<bool>(false, true, var_1.c, true)), select(vec4<bool>(false, var_1.c, false, true), vec4<bool>(var_1.c, true, var_1.c, false), true), select(vec4<bool>(true, var_1.c, var_1.c, var_1.c), vec4<bool>(true, var_1.c, true, var_1.c), var_1.c)), vec4<bool>(all(vec3<bool>(true, var_1.c, false)), var_1.c, !var_1.c, var_1.c), var_1.c), vec4<bool>(any(select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(true, var_1.c), vec2<bool>(true, var_1.c))), true, true, true), !vec4<bool>(true, var_1.c, var_1.c, var_1.c)), all(!vec2<bool>(all(vec2<bool>(false, false)), var_1.c)), abs(max(2966i, -25747i)), !(!(!vec4<bool>(var_1.c, true, true, false))), Struct_2(4189i, select(global0[_wgslsmith_index_u32(84708u, 11u)], vec3<u32>(1u, 1u, 1u), any(vec4<bool>(true, var_1.c, true, false))) >> (_wgslsmith_sub_vec3_u32(countOneBits(global0[_wgslsmith_index_u32(12316u, 11u)]), countOneBits(global0[_wgslsmith_index_u32(51660u, 11u)])) % vec3<u32>(32u)), !vec2<bool>(false, all(vec2<bool>(var_1.c, var_1.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(624f, -2283f, -896f, -1183f), vec4<f32>(-837f, 253f, -1000f, 404f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(907f, -617f, -1058f, 1215f)))))));
    global0 = array<vec3<u32>, 11>();
    var var_3 = ~firstTrailingBit(select(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(var_2.e.b.x, var_2.e.b.x, 1u, 0u)), ~vec4<u32>(36701u, 66553u, 3972u, var_2.e.b.x)), min(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_2.e.b.x, 51181u, var_2.e.b.x), vec4<u32>(14009u, var_2.e.b.x, 1u, var_2.e.b.x)), func_3(vec3<u32>(var_2.e.b.x, 113501u, 40646u), var_2.a.x)), vec4<bool>(true, true | var_1.c, 8158u != var_2.e.b.x, true || var_2.e.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(var_2.c, 1i, u_input.a, 34013i)), countOneBits(vec4<i32>(1i, -1i, -1i, 0i))), var_0.x), -1000f, var_2.e.b.yy);
}

