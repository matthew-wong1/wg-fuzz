struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<u32>(4294967295u, 18126u, 23604u, 1u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> bool {
    let var_0 = !select(vec2<bool>(select(all(vec3<bool>(arg_1.a, arg_1.c, arg_1.d.a.d.x)), true, !arg_1.b.a.d.x), any(arg_1.b.a.d)), select(!select(arg_1.b.a.d.zy, vec2<bool>(false, arg_1.d.a.d.x), false), !(!vec2<bool>(true, arg_1.d.a.d.x)), vec2<bool>(arg_1.a, all(arg_1.d.a.d.yz))), !(!arg_1.d.a.d.yz));
    global0 = Struct_3(global0.a);
    var var_1 = arg_0;
    var var_2 = arg_1.d.a.d;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-486f - arg_0)) + arg_0), arg_0)) - _wgslsmith_f_op_f32(abs(1000f)));
    return var_0.x;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    var var_0 = arg_1.b & min(_wgslsmith_div_i32(select(u_input.b.x, ~u_input.b.x, true), arg_1.b), arg_1.a.b.x);
    let var_1 = vec4<bool>(arg_1.b >= u_input.b.x, arg_1.a.d.x, ~_wgslsmith_sub_i32(-1i, ~u_input.a) == firstLeadingBit(_wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.a, -8386i), vec2<i32>(0i, u_input.a)), vec2<i32>(arg_1.a.b.x, u_input.b.x))), arg_1.b < firstLeadingBit(_wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(0i, 5889i))));
    let var_2 = !select(select(vec3<bool>(func_3(arg_2, Struct_4(arg_1.a.d.x, Struct_2(arg_1.a, arg_1.a.a), true, arg_1)), arg_1.a.d.x, any(vec2<bool>(false, arg_1.a.d.x))), vec3<bool>(arg_1.a.d.x, u_input.a < -53976i, var_1.x | false), false), !(!arg_1.a.d), !select(!vec3<bool>(arg_1.a.d.x, var_1.x, false), select(arg_1.a.d, arg_1.a.d, var_1.x), var_1.yzz));
    let var_3 = select(var_1, var_1, func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-343f + arg_2)))), Struct_4(true, Struct_2(arg_1.a, 26537i), true, arg_1)));
    var var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-743f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-856f + _wgslsmith_f_op_f32(-341f * arg_2)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), -828f))))), _wgslsmith_f_op_f32(sign(2128f)), true));
    return arg_1.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = arg_0.a.d.zx;
    var var_1 = arg_0;
    let var_2 = 4294967295u;
    let var_3 = ~(17144u | global0.a.x);
    var var_4 = Struct_4(countOneBits(firstTrailingBit(~arg_0.a.c.x)) <= ~min(_wgslsmith_div_u32(1u, 1u), var_1.a.c.x), arg_0, var_0.x, Struct_2(Struct_1(countOneBits(-2147483647i), arg_1, vec4<u32>(global0.a.x, 0u, 4294967295u, 1u), select(arg_0.a.d, !arg_0.a.d, arg_0.a.d)), u_input.b.x));
    return Struct_1(~abs(~arg_1.x), ~abs(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.a.a, u_input.b.x, arg_0.a.b.x), var_1.a.b))), vec4<u32>(_wgslsmith_mult_u32(var_2, func_2(Struct_3(vec4<u32>(67854u, var_2, 110115u, 4294967295u)), Struct_2(var_4.d.a, -1i), _wgslsmith_f_op_f32(f32(-1f) * -823f)).c.x), ~arg_0.a.c.x, 1u, _wgslsmith_dot_vec4_u32(abs(firstLeadingBit(arg_0.a.c)), _wgslsmith_mult_vec4_u32(arg_0.a.c, vec4<u32>(1u, var_4.d.a.c.x, 4294967295u, 30926u)))), select(select(select(vec3<bool>(var_4.b.a.d.x, var_4.c, var_0.x), !vec3<bool>(true, true, var_0.x), vec3<bool>(true, var_4.d.a.d.x, false)), !var_4.b.a.d, func_2(Struct_3(vec4<u32>(var_1.a.c.x, 1u, global0.a.x, var_1.a.c.x)), var_4.b, _wgslsmith_f_op_f32(ceil(-2112f))).d), vec3<bool>(true, !all(vec3<bool>(arg_0.a.d.x, true, var_4.c)), true), var_4.d.a.d));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>) -> u32 {
    global0 = Struct_3(~_wgslsmith_sub_vec4_u32(func_4(Struct_2(Struct_1(2147483647i, vec3<i32>(-1i, -71361i, -1i), vec4<u32>(arg_1, 64059u, arg_0.c.x, 4294967295u), arg_0.d), 20334i), u_input.b).c, func_2(Struct_3(vec4<u32>(arg_0.c.x, 4585u, global0.a.x, global0.a.x)), Struct_2(arg_0, 32879i), 286f).c));
    let var_0 = 37375u;
    var var_1 = Struct_4(arg_0.d.x, Struct_2(arg_0, _wgslsmith_mult_i32(~1i, u_input.b.x)), ~var_0 >= 1999u, Struct_2(Struct_1(~arg_0.a, ~arg_2.xzw, _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, var_0, 4294967295u, arg_0.c.x), _wgslsmith_add_vec4_u32(global0.a, arg_0.c)), select(arg_0.d, !vec3<bool>(arg_0.d.x, false, false), arg_0.d)), _wgslsmith_mult_i32(arg_0.a, _wgslsmith_dot_vec3_i32(-u_input.b, arg_2.yyw))));
    var_1 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-212f)) - _wgslsmith_f_op_f32(trunc(1225f))), _wgslsmith_div_f32(-810f, _wgslsmith_f_op_f32(step(273f, -652f))))) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -404f))), Struct_2(arg_0, 23004i), all(select(select(!vec4<bool>(arg_0.d.x, arg_0.d.x, var_1.c, false), !vec4<bool>(true, var_1.a, var_1.a, false), all(vec2<bool>(var_1.d.a.d.x, false))), select(vec4<bool>(true, true, false, var_1.c), vec4<bool>(true, true, arg_0.d.x, true), vec4<bool>(false, arg_0.d.x, false, arg_0.d.x)), vec4<bool>(true, any(vec4<bool>(false, false, var_1.d.a.d.x, true)), false, true))), Struct_2(Struct_1(u_input.a, ~(-var_1.b.a.b), func_2(Struct_3(vec4<u32>(var_0, 11929u, 37290u, 77572u)), var_1.b, _wgslsmith_f_op_f32(min(467f, -1860f))).c, func_2(Struct_3(vec4<u32>(arg_0.c.x, 31735u, arg_0.c.x, global0.a.x)), Struct_2(Struct_1(var_1.d.a.b.x, u_input.b, var_1.b.a.c, arg_0.d), 2147483647i), _wgslsmith_f_op_f32(ceil(-981f))).d), -var_1.b.a.a));
    let var_2 = var_1.d;
    return var_0;
}

fn func_6(arg_0: Struct_3, arg_1: u32, arg_2: vec3<u32>) -> Struct_3 {
    var var_0 = -abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.a) & select(vec4<i32>(u_input.b.x, u_input.b.x, 29602i, u_input.a), vec4<i32>(u_input.a, -17966i, u_input.b.x, -16049i), true), vec4<i32>(_wgslsmith_mult_i32(u_input.a, u_input.b.x), u_input.a, -2147483647i ^ u_input.b.x, abs(u_input.b.x)), vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, u_input.a), u_input.a, _wgslsmith_div_i32(0i, u_input.b.x), 2147483647i)));
    var var_1 = vec2<bool>(-1000f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(278f))))), !select(true, true, false));
    var_1 = !vec2<bool>(!(true & var_1.x), true);
    var_0 = vec4<i32>(i32(-1i) * -2147483647i, ~u_input.b.x ^ u_input.b.x, -1i, var_0.x);
    let var_2 = -vec4<i32>(var_0.x, ~select(countOneBits(1i), ~2147483647i, true), u_input.b.x | max(-1i, u_input.a), reverseBits(-_wgslsmith_add_i32(u_input.b.x, 2147483647i)));
    return arg_0;
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> u32 {
    global0 = func_6(Struct_3(select(global0.a, vec4<u32>(_wgslsmith_mult_u32(global0.a.x, 4294967295u), _wgslsmith_mod_u32(70024u, 24498u), _wgslsmith_add_u32(global0.a.x, 232u), 0u), true & any(vec3<bool>(false, true, false)))), func_5(func_4(Struct_2(func_2(Struct_3(vec4<u32>(4294967295u, global0.a.x, global0.a.x, 4294967295u)), Struct_2(Struct_1(0i, u_input.b, global0.a, vec3<bool>(false, false, false)), u_input.b.x), 192f), 15617i), vec3<i32>(-u_input.a, -5331i, firstLeadingBit(-2147483647i))), ~(global0.a.x | ~6224u), -(~vec4<i32>(-1i, u_input.a, -2147483647i, -1i)) | _wgslsmith_sub_vec4_i32(select(vec4<i32>(-2147483647i, arg_0, 0i, u_input.b.x), vec4<i32>(arg_0, arg_0, -1i, u_input.a), true), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, -2147483647i, arg_0), vec4<i32>(u_input.b.x, 40752i, 14278i, arg_0)))), ~firstLeadingBit(countOneBits(global0.a.wzx)));
    var var_0 = global0.a.yz;
    var var_1 = var_0.x;
    let var_2 = 838f;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(122f, var_2), arg_1, !func_2(Struct_3(vec4<u32>(131462u, 0u, 4294967295u, 79464u)), Struct_2(Struct_1(arg_0, u_input.b, global0.a, vec3<bool>(false, true, false)), arg_0), arg_1.x).d.yx)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(arg_1)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_1))))))));
    return firstLeadingBit(func_6(func_6(func_6(func_6(Struct_3(vec4<u32>(4294967295u, 0u, var_0.x, global0.a.x)), 4294967295u, global0.a.xyy), var_0.x << (678u % 32u), ~global0.a.zwx), 68625u, vec3<u32>(var_0.x, func_6(Struct_3(global0.a), 33229u, vec3<u32>(15854u, 24473u, 0u)).a.x, _wgslsmith_add_u32(4294967295u, global0.a.x))), ~1u << (abs(_wgslsmith_mult_u32(var_0.x, global0.a.x)) % 32u), vec3<u32>(global0.a.x, min(global0.a.x, reverseBits(4294967295u)), ~_wgslsmith_sub_u32(4294967295u, 44164u))).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, any(vec2<bool>(true, true))), vec3<bool>(true, true, true)));
    global0 = Struct_3(vec4<u32>(func_1(abs(~u_input.a), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1200f, 275f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-444f, -818f))))), 25590u | ~(23854u & global0.a.x), global0.a.x, ~abs(52678u) ^ _wgslsmith_add_u32(1u, ~global0.a.x)));
    let var_1 = vec4<u32>(~abs(firstLeadingBit(global0.a.x)), func_6(Struct_3(global0.a), abs(_wgslsmith_mult_u32(global0.a.x, 0u)) ^ 1u, vec3<u32>(1u, 23273u, func_1(u_input.a, vec2<f32>(-452f, 603f))) >> (reverseBits(_wgslsmith_add_vec3_u32(global0.a.xxx, global0.a.xzw)) % vec3<u32>(32u))).a.x, 15188u, global0.a.x);
    var var_2 = vec4<i32>(u_input.a, i32(-1i) * -17194i, 18263i, u_input.b.x);
    let var_3 = Struct_1(-u_input.b.x << (var_1.x % 32u), vec3<i32>(u_input.a, -(~(-2607i)), var_2.x | abs(1i)), global0.a, vec3<bool>((-43493i > ~var_2.x) | any(vec4<bool>(true, true, true, true)), true, 1851u <= ~global0.a.x));
    var var_4 = func_2(Struct_3(global0.a), Struct_2(func_2(func_6(func_6(Struct_3(global0.a), global0.a.x, var_3.c.ywz), var_1.x << (var_1.x % 32u), vec3<u32>(84922u, 32785u, 0u)), Struct_2(var_3, 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-287f - -1486f) - _wgslsmith_f_op_f32(133f * 1086f))), i32(-1i) * -6860i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 530f)), -1295f)))).b.x;
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, -2147483647i, u_input.b.x), vec3<i32>(var_3.a, var_3.b.x, var_3.b.x)) | vec3<i32>(-11501i, 2147483647i, ~var_2.x)), _wgslsmith_f_op_f32(min(-1000f, 104f)), -1211f);
}

