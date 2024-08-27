struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(1i, -1i, i32(-2147483648)), vec3<i32>(34272i, 42896i, i32(-2147483648)), vec3<i32>(1i, -39121i, -11043i), vec3<i32>(-1i, 0i, -1i), vec3<i32>(1i, 2147483647i, -17673i), vec3<i32>(-1i, 2147483647i, -38082i), vec3<i32>(-76270i, 1246i, 2147483647i), vec3<i32>(-6633i, -1i, 1i), vec3<i32>(1i, 29124i, 5788i), vec3<i32>(33881i, 34627i, 80099i), vec3<i32>(-61388i, 19244i, 0i), vec3<i32>(0i, 44811i, 60080i), vec3<i32>(10537i, -9788i, 0i), vec3<i32>(2147483647i, -1i, 38301i), vec3<i32>(2147483647i, 0i, -5274i), vec3<i32>(32018i, 2147483647i, -53325i), vec3<i32>(0i, 1i, 0i));

var<private> global1: array<bool, 14>;

var<private> global2: u32 = 1u;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec4<u32> {
    global1 = array<bool, 14>();
    global2 = arg_0.b.x;
    var var_0 = vec4<i32>(-65357i, 0i, -2147483647i, abs(-14414i));
    global0 = array<vec3<i32>, 17>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(734f, -955f), vec2<f32>(569f, 1710f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f)))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -824f), _wgslsmith_f_op_f32(sign(1133f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-381f, 550f) + vec2<f32>(1f, 1f))))));
    return abs(firstTrailingBit(abs(arg_0.b >> (vec4<u32>(96186u, arg_0.b.x, 8792u, 27445u) % vec4<u32>(32u)))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(~2493u ^ u_input.a, 14u)], true, true), _wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 6339u)), func_3(Struct_1(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 14u)], false), vec4<u32>(23906u, 43522u, u_input.a, u_input.a)), u_input.a))), Struct_1(!select(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 14u)], true, false), vec3<bool>(global1[_wgslsmith_index_u32(0u, 14u)], true, true), select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(1232u, 14u)]), vec3<bool>(global1[_wgslsmith_index_u32(49400u, 14u)], global1[_wgslsmith_index_u32(0u, 14u)], false), global1[_wgslsmith_index_u32(u_input.a, 14u)])), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a | 67722u, u_input.a, ~u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 39042u, 4294967295u, 13474u), vec4<u32>(77088u, 0u, u_input.a, u_input.a)) & vec4<u32>(146919u, u_input.a, 23513u, u_input.a))), select(!vec2<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 14u)], false, global1[_wgslsmith_index_u32(22461u, 14u)], true)), false), !select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 14u)]), vec2<bool>(global1[_wgslsmith_index_u32(35132u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)]), any(vec4<bool>(false, true, false, true))), vec2<bool>(true, 1u > ~u_input.a)));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0.a.b, ~var_0.b.b), 14u)];
    let var_2 = -214f;
    global2 = ~32339u;
    let var_3 = Struct_2(Struct_1(var_0.b.a, _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(84747u, 25685u, var_0.a.b.x, 27985u), var_0.b.b), max(_wgslsmith_sub_vec4_u32(var_0.b.b, vec4<u32>(4294967295u, u_input.a, u_input.a, 17362u)), var_0.b.b), var_0.a.b)), Struct_1(!(!var_0.b.a), reverseBits(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 62806u, u_input.a, u_input.a), vec4<u32>(var_0.a.b.x, u_input.a, 52148u, 19378u)))), !vec2<bool>(true, global1[_wgslsmith_index_u32(countOneBits(var_0.b.b.x), 14u)]));
    return var_0.a;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(~1u, 14u)], arg_3.a.x, false), ~arg_1.b.b), arg_1.b, !vec2<bool>(any(select(arg_1.b.a.xz, arg_1.b.a.xy, vec2<bool>(true, false))), !all(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 14u)], false))));
    let var_1 = countOneBits(_wgslsmith_mult_vec2_i32(~(-vec2<i32>(arg_2, arg_2)), select(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(-12535i, 41737i)), -vec2<i32>(2147483647i, arg_2)), vec2<i32>(arg_2, reverseBits(2147483647i)), true)));
    global2 = 74898u;
    global0 = array<vec3<i32>, 17>();
    global1 = array<bool, 14>();
    return Struct_1(select(select(vec3<bool>(arg_1.b.a.x, func_2().a.x, select(true, true, true)), !select(vec3<bool>(false, false, arg_1.b.a.x), vec3<bool>(false, true, true), false), _wgslsmith_add_i32(var_1.x, -24390i) == arg_2), vec3<bool>(true, true, true), arg_3.a.x), select(firstTrailingBit(vec4<u32>(4294967295u, ~u_input.a, arg_1.a.b.x, var_0.b.b.x)), vec4<u32>(_wgslsmith_clamp_u32(arg_1.b.b.x ^ u_input.a, _wgslsmith_clamp_u32(arg_1.a.b.x, var_0.a.b.x, var_0.b.b.x), 15058u), 18576u, _wgslsmith_mult_u32(~u_input.a, max(var_0.a.b.x, 0u)), 44768u), arg_1.b.a.x));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1131f)) * -354f);
    let var_1 = true;
    global0 = array<vec3<i32>, 17>();
    global1 = array<bool, 14>();
    global2 = arg_1.b.x;
    return arg_1;
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1) -> vec3<bool> {
    global1 = array<bool, 14>();
    let var_0 = Struct_2(Struct_1(arg_1.a, arg_1.b), arg_1, vec2<bool>(true, arg_1.a.x));
    global1 = array<bool, 14>();
    var var_1 = arg_1.b.x;
    var var_2 = ~(i32(-1i) * -1i);
    return func_2().a;
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<bool>) -> vec4<bool> {
    let var_0 = Struct_1(func_6(select(arg_2, arg_2, !select(arg_2.x, false, true)), func_5(min(_wgslsmith_div_u32(u_input.a, 8590u), ~u_input.a), func_4(_wgslsmith_f_op_f32(-910f * 111f), Struct_2(Struct_1(vec3<bool>(arg_2.x, global1[_wgslsmith_index_u32(75418u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)]), vec4<u32>(4294967295u, u_input.a, 49667u, u_input.a)), Struct_1(vec3<bool>(arg_2.x, false, false), vec4<u32>(u_input.a, 0u, 1u, 4294967295u)), arg_2), ~1i, func_2()))), countOneBits(min(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(20573u, u_input.a, 111622u, u_input.a) | vec4<u32>(74280u, 24778u, 111970u, 73583u)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 46661u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, 61111u), vec4<bool>(true, true, false, arg_2.x))))));
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(abs(_wgslsmith_add_i32(i32(-1i) * -26395i, ~21668i)), countOneBits(select(-35528i, 43053i, arg_2.x)) & (-26212i >> (var_0.b.x % 32u))), _wgslsmith_add_i32(abs(~0i), 17375i), -(i32(-1i) * -58524i));
    return !select(select(vec4<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(1u, 14u)], true, var_0.a.x, arg_2.x)), arg_1, global1[_wgslsmith_index_u32(~73587u, 14u)], true), select(!vec4<bool>(true, arg_1, var_0.a.x, false), vec4<bool>(global1[_wgslsmith_index_u32(var_0.b.x, 14u)], false, false, arg_2.x), !vec4<bool>(false, arg_2.x, arg_1, false)), global1[_wgslsmith_index_u32(~20544u, 14u)]), !vec4<bool>(!arg_2.x, !var_0.a.x, false, var_0.a.x == false), select(vec4<bool>(true, global1[_wgslsmith_index_u32(3465u, 14u)], false, func_2().a.x), vec4<bool>(arg_1, func_6(vec2<bool>(true, false), var_0).x, true, arg_2.x || true), select(select(vec4<bool>(var_0.a.x, global1[_wgslsmith_index_u32(var_0.b.x, 14u)], false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(u_input.a, 14u)])), !vec4<bool>(arg_2.x, true, false, arg_1), arg_0.x < arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 17>();
    let var_0 = !(!vec4<bool>(false, any(func_1(vec4<f32>(1745f, 1733f, -571f, -1050f), global1[_wgslsmith_index_u32(114039u, 14u)], vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(11255u, 14u)]))), select(global1[_wgslsmith_index_u32(u_input.a, 14u)] | global1[_wgslsmith_index_u32(138547u, 14u)], func_4(764f, Struct_2(Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(0u, 14u)], true, true), vec4<u32>(u_input.a, u_input.a, 59326u, u_input.a)), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(u_input.a, 14u)], false), vec4<u32>(29475u, 0u, u_input.a, u_input.a)), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(44045u, 14u)])), 1i, Struct_1(vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(u_input.a, 14u)]), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))).a.x, select(true, false, true)), all(func_1(vec4<f32>(-441f, -346f, 1094f, -1221f), false, vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 14u)])).yww)));
    let var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~abs(~vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_add_vec3_u32(~abs(vec3<u32>(u_input.a, 33496u, u_input.a)), ~max(vec3<u32>(19889u, 42960u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))), ~(~(select(vec3<u32>(8481u, 70900u, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a), var_0.zzw) | (vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(12874u, u_input.a, 5199u) % vec3<u32>(32u))))));
    global0 = array<vec3<i32>, 17>();
    global0 = array<vec3<i32>, 17>();
    global1 = array<bool, 14>();
    global2 = u_input.a;
    global2 = u_input.a;
    global0 = array<vec3<i32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x >> (u_input.a % 32u), var_1.x), var_1.yy), func_5(0u, func_2()).b.zy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(396f, 657f, -968f, -136f)))));
}

