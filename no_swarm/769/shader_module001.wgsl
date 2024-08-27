struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(1u, 24215u, 0u), vec3<u32>(75096u, 635u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(33638u, 3268u, 23356u), vec3<u32>(49629u, 57473u, 60698u), vec3<u32>(4294967295u, 0u, 11725u), vec3<u32>(81663u, 40138u, 0u), vec3<u32>(12161u, 4294967295u, 0u), vec3<u32>(0u, 1u, 1u), vec3<u32>(0u, 1u, 109270u), vec3<u32>(14483u, 45038u, 0u), vec3<u32>(17877u, 13090u, 16479u), vec3<u32>(27073u, 4294967295u, 12982u), vec3<u32>(0u, 67823u, 0u), vec3<u32>(43993u, 0u, 29360u), vec3<u32>(51853u, 0u, 4294967295u), vec3<u32>(0u, 1u, 4596u), vec3<u32>(5358u, 1u, 1u), vec3<u32>(19630u, 4294967295u, 17382u), vec3<u32>(13454u, 6388u, 80493u), vec3<u32>(102341u, 1u, 1u), vec3<u32>(0u, 45780u, 1u), vec3<u32>(65090u, 4294967295u, 50096u), vec3<u32>(4294967295u, 23954u, 1u), vec3<u32>(1u, 0u, 3808u), vec3<u32>(1u, 4294967295u, 12894u), vec3<u32>(9231u, 52970u, 0u));

var<private> global1: Struct_1 = Struct_1(vec2<f32>(243f, -280f));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global1.a.x))), 688f));
    var var_0 = !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(true, select(all(vec2<bool>(false, false)), true, false), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true))));
    var var_1 = select(vec4<bool>(var_0.x, !(!(!var_0.x)), var_0.x | false, true), select(vec4<bool>(false, !var_0.x, true, all(!var_0.wzw)), vec4<bool>(select(var_0.x, var_0.x, all(vec2<bool>(var_0.x, false))), var_0.x, !var_0.x, all(vec3<bool>(true, true, true))), !select(vec4<bool>(var_0.x, true, false, false), vec4<bool>(false, true, false, var_0.x), var_0.x)), select(vec4<bool>(any(vec4<bool>(var_0.x, true, var_0.x, var_0.x)), _wgslsmith_f_op_f32(-global1.a.x) != _wgslsmith_f_op_f32(floor(172f)), !var_0.x, !all(vec2<bool>(var_0.x, var_0.x))), select(!(!vec4<bool>(false, true, var_0.x, true)), !select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), true), false), vec4<bool>(firstTrailingBit(-35740i) < reverseBits(9284i), !var_0.x || false, all(vec2<bool>(false, var_0.x)), var_0.x)));
    let var_2 = vec2<i32>(i32(-1i) * -_wgslsmith_sub_i32(2147483647i, 63617i), (firstTrailingBit(firstLeadingBit(36341i)) | u_input.b) | ~u_input.b);
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-101f, global1.a.x, global1.a.x, -1393f), vec4<f32>(1581f, global1.a.x, global1.a.x, global1.a.x))))))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-560f, -1000f)))), global1.a.x, -1562f, -1651f)));
    return var_3.x;
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-197f, 1000f) * _wgslsmith_f_op_f32(floor(global1.a.x))) != _wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_dot_vec3_i32(countOneBits(select(vec3<i32>(52166i, 2147483647i, u_input.b), vec3<i32>(u_input.b, 0i, u_input.b), vec3<bool>(true, true, true))), ~firstLeadingBit(vec3<i32>(10985i, u_input.c, 41720i)))), Struct_2(_wgslsmith_f_op_f32(round(global1.a.x)), true, max(_wgslsmith_mult_i32(0i, ~u_input.c), select(firstLeadingBit(-31384i), -u_input.b, any(vec3<bool>(false, false, true))))), Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(ceil(global1.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, global1.a.x))))));
    let var_1 = var_0.b;
    var_0 = Struct_3(var_0.a, var_0.a, var_0.c);
    global1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.c.a, vec2<f32>(var_0.a.a, global1.a.x))) + vec2<f32>(-200f, global1.a.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.c.a - global1.a))), var_1.b)), var_0.c.a));
    global0 = array<vec3<u32>, 27>();
    return vec4<f32>(681f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -457f) + _wgslsmith_f_op_f32(-var_0.a.a)))), -764f, _wgslsmith_f_op_f32(895f + -1823f));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32) -> vec3<i32> {
    global0 = array<vec3<u32>, 27>();
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_1.zz + vec2<f32>(-1630f, arg_0.a)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)), vec2<f32>(global1.a.x, arg_1.x))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(-298f + arg_0.a)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(global1.a, vec2<f32>(arg_0.a, arg_1.x))), global1.a, true)))));
    let var_0 = select(max(~(~(-vec4<i32>(u_input.b, 0i, 1i, 40364i))), vec4<i32>(~(arg_0.c << (20958u % 32u)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_0.c, 19982i, -41745i), vec3<i32>(u_input.b, arg_0.c, -36312i), true), vec3<i32>(-7640i, u_input.b, arg_0.c) | vec3<i32>(arg_0.c, arg_0.c, 2147483647i)), -u_input.c, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -38925i, arg_0.c), vec3<i32>(u_input.c, -14976i, arg_0.c)))), select(_wgslsmith_sub_vec4_i32(-(vec4<i32>(arg_0.c, -51639i, 2147483647i, 2613i) | vec4<i32>(arg_0.c, u_input.b, -2147483647i, u_input.b)), _wgslsmith_div_vec4_i32(vec4<i32>(34233i, u_input.b, 7709i, 2147483647i), vec4<i32>(u_input.b, 17337i, u_input.b, -3269i)) & vec4<i32>(arg_0.c, 0i, u_input.c, arg_0.c)), abs(abs(vec4<i32>(-9617i, arg_0.c, u_input.b, arg_0.c))) << ((vec4<u32>(u_input.a.x, arg_2, u_input.a.x, 11259u) << (min(vec4<u32>(arg_2, u_input.a.x, 784u, arg_2), vec4<u32>(0u, 46924u, 0u, u_input.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true)), arg_0.b);
    let var_1 = select(select(vec3<bool>(true, true, true), vec3<bool>(true, arg_0.b || any(vec4<bool>(arg_0.b, true, arg_0.b, arg_0.b)), !(!arg_0.b)), !(!(!vec3<bool>(true, arg_0.b, true)))), !(!vec3<bool>(true, !arg_0.b, all(vec2<bool>(true, false)))), vec3<bool>(arg_0.b & true, arg_2 <= firstTrailingBit(1u), true));
    let var_2 = 4294967295u;
    return ~var_0.wyx;
}

fn func_5(arg_0: vec3<i32>) -> u32 {
    global1 = Struct_1(vec2<f32>(-436f, global1.a.x));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-409f, 1011f)), _wgslsmith_f_op_vec2_f32(-global1.a)))), vec2<f32>(global1.a.x, -775f), select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec2<bool>(false, false)))))));
    global0 = array<vec3<u32>, 27>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a.x, global1.a.x)));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(sign(916f)), all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), u_input.b), Struct_2(global1.a.x, true, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -17652i, -1i, 0i), vec4<i32>(arg_0.x, -16626i, u_input.c, 1i))) << (_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.a.x) % 32u)), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global1.a)))));
    return u_input.a.x;
}

fn func_1() -> bool {
    global0 = array<vec3<u32>, 27>();
    global0 = array<vec3<u32>, 27>();
    var var_0 = _wgslsmith_mod_u32(~func_5(func_4(Struct_2(928f, false, u_input.b), _wgslsmith_f_op_vec4_f32(func_2()), 4294967295u)), countOneBits(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 59014u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))));
    let var_1 = any(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), true), any(vec3<bool>(true, true, false))), true));
    let var_2 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), abs(firstLeadingBit(min(vec2<u32>(0u, u_input.a.x), u_input.a.zy))));
    return !(!(var_1 | !var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(func_1(), u_input.a.x > ~u_input.a.x, !all(vec4<bool>(true, true, true, true)), true);
    var var_1 = Struct_2(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(-483f + _wgslsmith_f_op_f32(global1.a.x - 1347f))), any(!select(select(vec3<bool>(false, var_0.x, true), var_0.yzx, var_0.xxz), select(var_0.wyw, var_0.xww, var_0.x), all(var_0.zwy))), _wgslsmith_mult_i32(-_wgslsmith_sub_i32(u_input.b, 19820i), u_input.c) >> (~55768u % 32u));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(global1.a.x - 1464f), (~(~0u) | (~u_input.a.x ^ 10696u)) <= _wgslsmith_div_u32(4294967295u, 8295u), _wgslsmith_clamp_i32(11390i, ~(~(-21324i) & -var_1.c), var_1.c));
    var var_3 = ~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, 139484u, 1u) % vec4<u32>(32u)), min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), abs(vec4<u32>(69155u, u_input.a.x, 145u, 50539u)))));
    var_3 = ~vec4<u32>(95546u, var_3.x, ~(1u & ~var_3.x), var_3.x);
    var var_4 = Struct_1(global1.a);
    var var_5 = u_input.a.x;
    var var_6 = ~(-(max(vec3<i32>(var_2.c, u_input.c, var_1.c), vec3<i32>(var_2.c, -31164i, u_input.b)) | vec3<i32>(var_1.c, 52996i, u_input.c))) >> (min(_wgslsmith_mult_vec3_u32(abs(countOneBits(var_3.xxw)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, var_3.x), vec3<u32>(28858u, 1u, 59387u))), ~abs(var_3.zxx)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(1i, var_6.x, -21814i), firstLeadingBit(1i)), firstTrailingBit(var_6.zy) | _wgslsmith_add_vec2_i32(-var_6.zy, _wgslsmith_add_vec2_i32(vec2<i32>(-6619i, 1i), var_6.yz))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(719f + 1122f)) + 1259f), var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1190f))))), -192f), ~vec2<u32>(1u, var_3.x | 4294967295u), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-8172i, var_2.c, -6465i, u_input.c), min(_wgslsmith_sub_vec4_i32(vec4<i32>(17481i, var_1.c, -37039i, 10787i), vec4<i32>(u_input.c, 1i, 2147483647i, u_input.c)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.c, -29849i, 64826i, var_2.c), vec4<i32>(u_input.c, var_2.c, u_input.c, 37297i), vec4<i32>(-40559i, 15783i, -25925i, -10963i)))), ~countOneBits(vec4<i32>(var_6.x, -9937i, var_1.c, 28757i)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.c, var_6.x, 0i, -1i), countOneBits(vec4<i32>(var_6.x, -827i, 1i, 31075i)), firstTrailingBit(vec4<i32>(-2147483647i, -16760i, var_1.c, 0i))), _wgslsmith_div_vec4_i32(~(-vec4<i32>(var_1.c, var_6.x, var_2.c, u_input.c)), -vec4<i32>(u_input.b, var_6.x, 2147483647i, -73779i))));
}

