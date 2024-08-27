struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(true, true, true, true, true, false, true, false, false, true, true, false, false, false, false, false, true, false, true, false, true, true, false, false, false, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = select(u_input.b.wxx, u_input.b.wyz, vec3<bool>(!(arg_0.a != -270f), true, true)) >> (u_input.b.wyx % vec3<u32>(32u));
    let var_1 = Struct_3(!select(select(!vec2<bool>(global0[_wgslsmith_index_u32(38274u, 26u)], true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, arg_0.b)), !vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 26u)], true)), !select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, arg_0.b), vec2<bool>(arg_0.b, true)), !select(vec2<bool>(arg_0.b, false), vec2<bool>(true, arg_0.b), vec2<bool>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(66346u, 26u)]))), ~select(~(~var_0.xz), _wgslsmith_mod_vec2_u32(u_input.b.ww, _wgslsmith_add_vec2_u32(u_input.b.xz, u_input.b.ww)), false), ~u_input.c);
    var var_2 = abs(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-25074i, 14512i), vec2<i32>(var_1.c, arg_0.c))), vec2<i32>(-arg_0.c, u_input.c)), ~vec2<i32>(min(u_input.c, 2147483647i), 1451i)));
    let var_3 = 1u;
    let var_4 = Struct_5(vec4<bool>(true, -372i <= ~(~arg_0.c), false, false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + arg_0.a) + arg_0.a))));
    return firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(41727u, var_1.b.x) << (0u % 32u), ~reverseBits(var_1.b.x)), ~var_1.b.x, abs(abs(select(var_0.x, var_0.x, var_1.a.x)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-152f + 517f)), -1126f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(1460f + 1000f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-103f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-951f)), 472f), -366f)));
    var var_1 = Struct_3(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 26u)])), vec2<bool>(true, true))), vec2<u32>(min(u_input.b.x ^ 0u, arg_0.x), func_3(Struct_1(var_0.x, false || global0[_wgslsmith_index_u32(17672u, 26u)], _wgslsmith_dot_vec2_i32(vec2<i32>(27330i, 2147483647i), vec2<i32>(2147483647i, arg_1))))), u_input.c);
    var var_2 = min(max(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 35372i), vec2<i32>(-1428i, arg_1)), vec2<i32>(0i, -12613i)), vec2<i32>(_wgslsmith_mult_i32(u_input.c, 16137i >> (1u % 32u)), _wgslsmith_add_i32(1i, arg_1))) << (abs(~var_1.b ^ (_wgslsmith_add_vec2_u32(u_input.b.wz, vec2<u32>(var_1.b.x, 4294967295u)) & ~vec2<u32>(1u, 0u))) % vec2<u32>(32u));
    var var_3 = Struct_4(vec3<bool>(any(vec2<bool>(all(vec4<bool>(var_1.a.x, false, false, true)), true)), true, true), vec2<i32>(select(abs(-37283i), 20874i, any(!vec2<bool>(var_1.a.x, false))), _wgslsmith_clamp_i32(reverseBits(firstTrailingBit(-1i)), _wgslsmith_div_i32(firstLeadingBit(arg_1), var_2.x), arg_1)), -_wgslsmith_clamp_i32(2147483647i, -(var_1.c & -36562i), _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1, -2147483647i, u_input.c, 2147483647i), -vec4<i32>(-38994i, var_2.x, -33496i, 2147483647i))));
    let var_4 = Struct_2(Struct_1(var_0.x, var_3.a.x, ~_wgslsmith_mod_i32(8773i, -2147483647i)), abs(_wgslsmith_mod_i32(~_wgslsmith_mod_i32(u_input.c, var_2.x), 35717i)));
    return var_4;
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    var var_0 = Struct_4(vec3<bool>(!(false | func_2(u_input.b.zyy, -2147483647i).a.b), select(select(-19431i, u_input.c, false) >= ~0i, !arg_0.a.b, !(arg_0.a.b == true)), true), max(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, -9048i), ~vec2<i32>(2147483647i, 0i)), -_wgslsmith_mod_vec2_i32(vec2<i32>(-12238i, 1i), vec2<i32>(-84068i, arg_0.b) >> (vec2<u32>(51541u, u_input.a) % vec2<u32>(32u)))), _wgslsmith_add_i32(u_input.c, ~1i));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-673f, 716f, arg_0.a.a))))), vec3<f32>(arg_0.a.a, arg_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1556f))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(216f, 1550f))), arg_0.a.a), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(arg_0.a.a, _wgslsmith_f_op_f32(arg_0.a.a * arg_0.a.a)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.a, _wgslsmith_div_f32(849f, arg_0.a.a)) - arg_0.a.a))));
    return Struct_3(vec2<bool>(firstTrailingBit(firstTrailingBit(u_input.b.x)) <= 83989u, true), vec2<u32>(1u, u_input.b.x), var_0.b.x);
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> Struct_1 {
    let var_0 = !vec3<bool>(arg_0.a.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(24936u, u_input.b.x), func_4(Struct_2(Struct_1(-1020f, global0[_wgslsmith_index_u32(arg_0.b.x, 26u)], 0i), 2147483647i)).b), _wgslsmith_mod_u32(8932u, 1u)), 26u)], func_4(Struct_2(Struct_1(132f, arg_0.a.x, 1i), firstTrailingBit(17682i))).a.x);
    let var_1 = u_input.c;
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    let var_2 = ~arg_0.c;
    return func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(~1u, ~_wgslsmith_add_u32(arg_1, 0u), ~u_input.b.x), u_input.b.zyx), _wgslsmith_sub_i32(select(var_2, _wgslsmith_mod_i32(_wgslsmith_div_i32(21174i, var_2), arg_0.c), true), -5946i)).a;
}

fn func_1() -> Struct_3 {
    let var_0 = func_5(func_4(func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), u_input.b.yzw), i32(-1i) * -27289i)), ~u_input.a);
    global0 = array<bool, 26>();
    let var_1 = select(vec3<bool>(var_0.b, global0[_wgslsmith_index_u32(1u, 26u)], true), vec3<bool>(all(vec3<bool>(var_0.a <= 108f, any(vec2<bool>(var_0.b, true)), true)), false, false), !vec3<bool>((global0[_wgslsmith_index_u32(u_input.a, 26u)] | var_0.b) && false, !(!var_0.b), var_0.b));
    global0 = array<bool, 26>();
    let var_2 = true;
    return func_4(func_2(~(~vec3<u32>(55820u, 1u, u_input.a)), 56043i));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = select(vec3<bool>(!(!(arg_1.b.x == 4294967295u)), true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, arg_1.b.x), 26u)] && true), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a ^ arg_1.b.x, 26u)], global0[_wgslsmith_index_u32(countOneBits(20811u), 26u)], false || arg_1.a.x)), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)] != global0[_wgslsmith_index_u32(u_input.b.x, 26u)], arg_1.a.x, u_input.c > u_input.c)));
    global0 = array<bool, 26>();
    var var_1 = arg_1.b.x;
    var var_2 = min(firstTrailingBit(~vec4<i32>(_wgslsmith_add_i32(-14903i, -1i), arg_1.c, -u_input.c, -9243i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.c, -2147483647i, arg_1.c, -44371i) ^ reverseBits(vec4<i32>(arg_1.c, 0i, arg_1.c, 1i)), ~(~vec4<i32>(arg_1.c, 0i, -1i, 1i))), min(-_wgslsmith_div_vec4_i32(vec4<i32>(13595i, u_input.c, -4700i, 4487i), vec4<i32>(-2147483647i, arg_1.c, 2147483647i, arg_1.c)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.c, u_input.c, -2147483647i), ~vec4<i32>(u_input.c, -20580i, arg_1.c, 5639i))), _wgslsmith_add_vec4_i32(~(-vec4<i32>(u_input.c, 1i, u_input.c, -1i)), vec4<i32>(arg_1.c, arg_1.c ^ u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, arg_1.c, u_input.c), vec3<i32>(13100i, u_input.c, u_input.c)), 0i))));
    global0 = array<bool, 26>();
    return !(!(!vec2<bool>(true, 1000f == arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1842f, 238f, 253f, -654f) * vec4<f32>(1066f, -1000f, -400f, -549f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(471f, -195f, -1433f, 853f) + vec4<f32>(146f, -322f, -108f, -375f)))))), func_1());
    var var_1 = false;
    let var_2 = vec3<i32>(~884i, ~(-u_input.c), u_input.c);
    let var_3 = Struct_2(Struct_1(func_2(vec3<u32>(~u_input.b.x, u_input.a, u_input.b.x), ~var_2.x).a.a, min(abs(11281u), _wgslsmith_dot_vec4_u32(vec4<u32>(7314u, 83091u, 1u, 0u), vec4<u32>(33539u, u_input.a, 1u, 4294967295u))) <= (u_input.b.x << (5981u % 32u)), u_input.c), -(u_input.c ^ (-1i << ((20640u << (u_input.a % 32u)) % 32u))));
    let var_4 = -1270f;
    var_1 = !var_0.x && (!global0[_wgslsmith_index_u32(37914u, 26u)] && (-_wgslsmith_sub_i32(-2147483647i, var_3.b) > ((var_3.a.c & var_3.a.c) | 1i)));
    global0 = array<bool, 26>();
    let var_5 = func_4(func_2(u_input.b.xwz, firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_div_i32(var_3.b, -60022i), 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(var_5.b)));
}

