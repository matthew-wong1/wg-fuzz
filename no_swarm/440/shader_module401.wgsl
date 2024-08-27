struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-368f, -1859f, -725f), vec3<f32>(-1164f, -682f, -479f), vec3<f32>(-660f, -1000f, -771f), vec3<f32>(1064f, 1762f, 860f), vec3<f32>(590f, -2157f, 1066f), vec3<f32>(131f, -177f, 618f));

var<private> global2: i32 = i32(-2147483648);

var<private> global3: array<f32, 14>;

var<private> global4: Struct_1 = Struct_1(false, vec4<u32>(114088u, 44059u, 17146u, 46674u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<i32>) -> bool {
    let var_0 = Struct_4(Struct_1(!(true && !global4.a), ~(~vec4<u32>(0u, global4.b.x, u_input.c.x, 0u))), Struct_1(true, vec4<u32>(select(~4294967295u, _wgslsmith_sub_u32(4294967295u, 1u), true), global4.b.x, global4.b.x, ~u_input.c.x)), u_input.e, -vec2<i32>(_wgslsmith_clamp_i32(select(arg_1.x, arg_1.x, global4.a), _wgslsmith_mod_i32(8417i, 1i), 1i), 1i), 1i << (1u % 32u));
    var var_1 = Struct_2(var_0.b, select(vec4<bool>(global0[_wgslsmith_index_u32(global4.b.x, 21u)] < _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(global4.b.x, 14u)])), all(vec2<bool>(var_0.b.a, false)), var_0.a.a, !(!var_0.a.a)), select(!(!vec4<bool>(true, var_0.b.a, global4.a, global4.a)), select(!vec4<bool>(global4.a, var_0.a.a, global4.a, var_0.a.a), vec4<bool>(true, true, true, true), vec4<bool>(true, global4.a, var_0.b.a, true)), global4.a), vec4<bool>(true, _wgslsmith_mult_i32(var_0.e, -74868i) == -var_0.c.x, !var_0.a.a, true)));
    return global4.a;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec4<i32>) -> i32 {
    var var_0 = global4.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1513f - arg_0.x) + arg_0.x) * 1367f));
    let var_2 = Struct_3(Struct_2(Struct_1(global4.a, ~_wgslsmith_mult_vec4_u32(global4.b, vec4<u32>(0u, 1u, 4294967295u, global4.b.x))), vec4<bool>(func_3(_wgslsmith_f_op_vec3_f32(max(arg_0, arg_1.wzw)), u_input.e.zx), true, global4.a, false)), Struct_1(!global4.a, ~countOneBits(~global4.b)), Struct_1(global4.a, ~vec4<u32>(min(22412u, global4.b.x), firstTrailingBit(global4.b.x), u_input.b, 0u)), select(!vec4<bool>(any(vec3<bool>(false, false, true)), global4.a, all(vec2<bool>(false, global4.a)), all(vec4<bool>(true, global4.a, global4.a, true))), vec4<bool>(all(!vec3<bool>(global4.a, true, true)), any(select(vec2<bool>(true, false), vec2<bool>(global4.a, false), false)), global4.a, true), vec4<bool>(!(52749u < global4.b.x), true, all(select(vec2<bool>(false, global4.a), vec2<bool>(global4.a, false), vec2<bool>(global4.a, true))), global4.a)));
    let var_3 = 101985u;
    let var_4 = Struct_3(var_2.a, var_2.b, var_2.a.a, vec4<bool>(!(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global4.b.x, 21u)]) < _wgslsmith_f_op_f32(max(455f, -1774f))), any(var_2.a.b.zzy), global4.b.x < global4.b.x, !any(select(var_2.a.b.xyw, var_2.d.ywy, vec3<bool>(var_2.a.b.x, true, var_2.a.b.x)))));
    return 0i;
}

fn func_4(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_u32(abs(37589u) >> (~(59481u << (u_input.c.x % 32u)) % 32u), 0u);
    global1 = array<vec3<f32>, 6>();
    var var_1 = false | !global4.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1552f, 1471f)));
    return Struct_2(Struct_1(true, ~((vec4<u32>(u_input.c.x, var_0, var_0, u_input.b) | vec4<u32>(9660u, global4.b.x, global4.b.x, u_input.c.x)) ^ ~global4.b)), vec4<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global4.b.x, 14u)] * 470f))) != _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(635f, global3[_wgslsmith_index_u32(u_input.b, 14u)]))), false || all(select(vec4<bool>(global4.a, false, global4.a, false), vec4<bool>(global4.a, true, true, false), vec4<bool>(global4.a, global4.a, false, false))), global4.a | true, (u_input.b != _wgslsmith_clamp_u32(1u, 14892u, global4.b.x)) & ((u_input.d != 1650i) & !global4.a)));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_1 {
    global4 = Struct_1(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.c.x, 14u)], -1089f), global3[_wgslsmith_index_u32(58157u ^ u_input.b, 14u)], 1f)), vec2<i32>(7624i, ~(arg_0.x ^ -52745i))), _wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(select(arg_1.a.b, arg_1.a.b, global4.a), select(vec4<u32>(4294967295u, 4294967295u, 4294967295u, arg_1.a.b.x), vec4<u32>(1u, u_input.c.x, arg_1.a.b.x, 0u), global4.a), arg_1.a.b), vec4<u32>(global4.b.x, _wgslsmith_mult_u32(u_input.c.x, ~1394u), 20240u, firstLeadingBit(~45505u))));
    let var_0 = Struct_1(global4.a, arg_1.a.b);
    let var_1 = Struct_4(Struct_1(var_0.a, vec4<u32>(_wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec3_u32(global4.b.wzx, vec3<u32>(4294967295u, 39224u, arg_1.a.b.x))), 1u, 1u, 4294967295u)), arg_1.a, -vec3<i32>(-u_input.d, u_input.a.x, 38825i) & _wgslsmith_add_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 0i, 0i), vec3<i32>(arg_0.x, u_input.e.x, -1i))), _wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.e.x, u_input.e.x) & vec3<i32>(-12463i, u_input.e.x, arg_0.x), vec3<i32>(-2147483647i, u_input.d, 0i))), vec2<i32>(firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-72573i, 1i), -arg_0.x)), 0i), ~select(select(_wgslsmith_dot_vec4_i32(vec4<i32>(-13204i, u_input.d, 1i, -1i), vec4<i32>(u_input.e.x, arg_0.x, 1866i, 23540i)), arg_0.x, true && global4.a), -17626i, !(!arg_1.a.a)));
    var var_2 = select(!arg_1.b.yyz, func_4(vec3<i32>(var_1.c.x, firstLeadingBit(-29444i), 2147483647i)).b.wyy, 1000f > _wgslsmith_div_f32(-1045f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global4.b.x & 4294967295u, 21u)] * _wgslsmith_f_op_f32(floor(-1357f)))));
    var var_3 = func_4(vec3<i32>(-9816i, -4355i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-68114i, 24048i, 81699i, u_input.d), vec4<i32>(-846i, u_input.a.x, 10508i, var_1.e) << (vec4<u32>(0u, var_1.a.b.x, 60621u, u_input.b) % vec4<u32>(32u))) | _wgslsmith_mult_i32(arg_0.x, ~arg_0.x))).a;
    return func_4(~min(vec3<i32>(_wgslsmith_add_i32(var_1.c.x, arg_0.x), _wgslsmith_div_i32(1i, arg_0.x), ~u_input.e.x), ~max(arg_0, vec3<i32>(-58465i, u_input.a.x, -2147483647i)))).a;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>) -> vec4<u32> {
    global4 = func_5(arg_0, func_4(vec3<i32>(u_input.e.x, ~func_2(vec3<f32>(global0[_wgslsmith_index_u32(global4.b.x, 21u)], global3[_wgslsmith_index_u32(global4.b.x, 14u)], global3[_wgslsmith_index_u32(0u, 14u)]), vec4<f32>(global0[_wgslsmith_index_u32(6658u, 21u)], global0[_wgslsmith_index_u32(u_input.b, 21u)], global3[_wgslsmith_index_u32(u_input.b, 14u)], 1732f), vec4<i32>(u_input.a.x, u_input.d, arg_0.x, 15379i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(u_input.e.x, 1i, -1i)), arg_0.x))));
    var var_0 = ~firstTrailingBit(_wgslsmith_sub_vec2_u32(countOneBits(~vec2<u32>(u_input.b, u_input.b)), ~(vec2<u32>(3132u, global4.b.x) & vec2<u32>(global4.b.x, global4.b.x))));
    global3 = array<f32, 14>();
    let var_1 = global4.b.x;
    global1 = array<vec3<f32>, 6>();
    return abs(select(~(global4.b << (abs(vec4<u32>(16810u, 4294967295u, 13814u, 1u)) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_add_u32(1277u, 32144u), select(~u_input.c.x, 1u, global4.b.x != var_0.x), ~global4.b.x, u_input.c.x), !select(!vec4<bool>(true, true, true, arg_1.x), vec4<bool>(true, false, false, true), vec4<bool>(global4.a, arg_1.x, global4.a, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(true, func_1(~firstTrailingBit(u_input.e), vec4<bool>(!global4.a, any(vec2<bool>(true, true)), true, true)) >> (_wgslsmith_sub_vec4_u32(select(global4.b, _wgslsmith_sub_vec4_u32(vec4<u32>(global4.b.x, 20150u, u_input.c.x, global4.b.x), vec4<u32>(global4.b.x, global4.b.x, global4.b.x, 69361u)), true), _wgslsmith_add_vec4_u32(global4.b, global4.b)) % vec4<u32>(32u)));
    let var_0 = Struct_4(Struct_1(!func_5(u_input.e, Struct_2(Struct_1(global4.a, global4.b), vec4<bool>(global4.a, global4.a, global4.a, true))).a, global4.b), func_5(reverseBits(vec3<i32>(417i, 27779i, u_input.a.x) ^ u_input.e), func_4(_wgslsmith_sub_vec3_i32(~u_input.e, _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.e.x, u_input.a.x), u_input.e)))), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(u_input.e.x, u_input.a.x, u_input.e.x)), -(vec3<i32>(-1i) * -u_input.e)), vec2<i32>(u_input.e.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~u_input.e, u_input.e), abs(u_input.a.x))), 1i);
    var var_1 = _wgslsmith_clamp_vec3_i32(u_input.e, ~(abs(min(vec3<i32>(u_input.e.x, 45846i, var_0.c.x), vec3<i32>(u_input.e.x, 1i, var_0.d.x))) >> (var_0.b.b.zzz % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.e.x, -41718i) << (~0u % 32u), _wgslsmith_div_i32(firstLeadingBit(var_0.e), -5715i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.e, var_0.d.x, u_input.a.x), var_0.c)), (-u_input.e & select(vec3<i32>(-1i, 2147483647i, var_0.c.x), vec3<i32>(u_input.d, -1i, u_input.e.x), false)) << (min(select(vec3<u32>(4294967295u, 4294967295u, var_0.b.b.x), vec3<u32>(26446u, 4294967295u, 54891u), vec3<bool>(var_0.a.a, false, false)), _wgslsmith_add_vec3_u32(var_0.b.b.wzw, global4.b.yxz)) % vec3<u32>(32u))));
    var_1 = var_0.c;
    var var_2 = vec2<u32>(10198u, (~(~0u) >> (~var_0.b.b.x % 32u)) ^ ~1u);
    let var_3 = (firstTrailingBit(select(select(vec4<i32>(2147483647i, 24699i, 0i, -2147483647i), vec4<i32>(u_input.d, u_input.e.x, 35666i, var_1.x), global4.a), ~vec4<i32>(var_0.c.x, var_0.c.x, u_input.a.x, var_0.d.x), !vec4<bool>(true, global4.a, var_0.a.a, false))) >> (~(~(global4.b ^ vec4<u32>(19074u, var_0.a.b.x, 31744u, var_0.b.b.x))) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_add_u32(func_4(vec3<i32>(u_input.e.x, u_input.e.x, -43022i)).a.b.x, 4294967295u), 0u, 1u, var_2.x) % vec4<u32>(32u));
    global3 = array<f32, 14>();
    let var_4 = ~(var_0.c ^ vec3<i32>(var_0.d.x, -1i, firstTrailingBit(~var_1.x)));
    global4 = func_5(vec3<i32>(countOneBits(firstTrailingBit(25946i)), _wgslsmith_dot_vec2_i32(var_3.zy, vec2<i32>(var_3.x, 1i)), var_3.x), func_4(var_4));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(2344i));
}

