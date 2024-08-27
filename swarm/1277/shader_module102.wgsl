struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: f32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(false, true, false, true, false, false, true, false, false, true, false, false, false, false, true, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: Struct_1) -> vec2<bool> {
    global0 = array<bool, 16>();
    var var_0 = ~(~vec4<u32>(_wgslsmith_sub_u32(u_input.c, 30561u), arg_0.x, 13124u, ~arg_0.x)) >> (countOneBits(~arg_3.c) % vec4<u32>(32u));
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    let var_1 = arg_1.b;
    return !arg_1.b;
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> u32 {
    global0 = array<bool, 16>();
    var var_0 = Struct_1(arg_1.e, !any(select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c, 16u)], false), global0[_wgslsmith_index_u32(arg_0, 16u)])), max(vec4<u32>(~select(9851u, arg_0, arg_1.b.x), _wgslsmith_div_u32(0u, u_input.a.x), 0u, ~arg_0), vec4<u32>(13144u, max(~arg_0, ~arg_0), _wgslsmith_mod_u32(~u_input.a.x, 10638u), 23516u)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-1024f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(929f + _wgslsmith_f_op_f32(-arg_1.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-942f)) + _wgslsmith_div_f32(210f, 999f)))), true, vec4<u32>(20652u ^ _wgslsmith_clamp_u32(arg_1.d, ~var_0.c.x, 6281u), firstLeadingBit(u_input.a.x), var_0.c.x << (((65182u ^ var_0.c.x) | _wgslsmith_div_u32(arg_0, u_input.a.x)) % 32u), arg_1.a));
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    return 1u;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> vec3<i32> {
    global0 = array<bool, 16>();
    var var_0 = Struct_4(arg_3, vec2<bool>(all(select(vec4<bool>(true, arg_0.a.b, true, false), select(vec4<bool>(global0[_wgslsmith_index_u32(82080u, 16u)], arg_0.a.b, false, arg_2.c.a.b), vec4<bool>(true, true, arg_2.c.a.b, false), false), vec4<bool>(true, false, true, true))), all(func_3(~vec3<u32>(arg_3, u_input.a.x, u_input.a.x), Struct_4(u_input.a.x, vec2<bool>(arg_0.a.b, false), 883f, arg_2.c.a.c.x, arg_0.a.a), -vec4<i32>(1i, u_input.b, 52039i, arg_2.b.x), arg_0.a))), arg_0.a.a, u_input.c, -238f);
    var var_1 = ~_wgslsmith_sub_i32(arg_1, 29881i) & arg_1;
    var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.b, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.b, 21333i), -1i, -16934i), -u_input.b), vec3<i32>(u_input.b, abs(arg_1), -arg_2.b.x) ^ vec3<i32>(_wgslsmith_add_i32(1i, 1i), -arg_1, _wgslsmith_div_i32(arg_2.b.x, arg_1))), _wgslsmith_mod_i32(u_input.b, 2147483647i));
    var var_2 = ~14742i;
    return vec3<i32>(-20144i, 0i, ~(arg_1 ^ -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 16817i, 2147483647i, -9163i), vec4<i32>(0i, 578i, arg_2.b.x, u_input.b))));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: u32, arg_3: vec4<bool>) -> vec3<i32> {
    global0 = array<bool, 16>();
    let var_0 = func_5(Struct_2(Struct_1(-366f, true, vec4<u32>(0u, 1u, arg_0.x, arg_0.x))), 0i, Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(-567f, 740f), vec2<f32>(-669f, -271f)), -vec3<i32>(8934i, 55448i, u_input.b), Struct_2(Struct_1(1000f, global0[_wgslsmith_index_u32(arg_0.x, 16u)], vec4<u32>(arg_2, u_input.a.x, 0u, 34308u))), vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -284f), -1145f)), func_4(abs(~arg_2), Struct_4(1u, func_3(vec3<u32>(63854u, u_input.c, u_input.a.x), Struct_4(arg_0.x, arg_3.xy, 1742f, 1u, -1753f), vec4<i32>(-1i, 2147483647i, u_input.b, -3541i), Struct_1(-776f, false, vec4<u32>(arg_0.x, 4294967295u, 0u, arg_2))), -571f, min(u_input.a.x, 12u), 1000f))) << (u_input.a % vec3<u32>(32u));
    var var_1 = u_input.a;
    var_1 = ~(~(~((vec3<u32>(u_input.a.x, arg_2, arg_2) >> (arg_0 % vec3<u32>(32u))) & u_input.a)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -619f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1286f * -2848f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-581f + 1f))), _wgslsmith_div_f32(-1669f, _wgslsmith_f_op_f32(f32(-1f) * -487f)))));
    return vec3<i32>(_wgslsmith_clamp_i32(reverseBits(var_0.x), u_input.b, ~_wgslsmith_mod_i32(1i, 2147483647i)) >> (77982u % 32u), ~(-74644i), u_input.b);
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.c.a.a - arg_1.a.x)))), _wgslsmith_f_op_f32(round(arg_1.a.x)), _wgslsmith_f_op_f32(select(arg_1.a.x, -813f, any(vec2<bool>(arg_1.c.a.b, false)) && (-623f >= arg_2.a.x))))));
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    let var_1 = _wgslsmith_f_op_vec2_f32(round(arg_2.d.yx));
    return _wgslsmith_mod_i32(35881i, 17349i) | ((i32(-1i) * -2147483647i) | ~_wgslsmith_mult_i32(countOneBits(arg_1.b.x), arg_0));
}

fn func_7(arg_0: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1100f, -1929f, -922f, -364f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-986f, 898f, 1081f, -1026f), vec4<f32>(1357f, -494f, -205f, -420f))), vec4<bool>(true, arg_0, all(vec4<bool>(false, true, false, true)), arg_0))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-1898f, 989f, 391f, -1224f), vec4<f32>(-775f, 870f, 372f, -526f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-267f, -1603f, 1885f, 1713f), vec4<f32>(1329f, 208f, 130f, 1355f), true)))), vec4<f32>(-471f, 1524f, _wgslsmith_f_op_f32(594f * 3042f), _wgslsmith_f_op_f32(f32(-1f) * -711f))))));
    var var_1 = (u_input.c << (~17099u % 32u)) <= 1u;
    let var_2 = ~(-((vec2<i32>(-1372i, 397i) & -vec2<i32>(1i, u_input.b)) << (max(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 12651u), u_input.a.yx), ~vec2<u32>(4294967295u, u_input.a.x)) % vec2<u32>(32u))));
    let var_3 = Struct_4(reverseBits(~8726u | u_input.c), select(vec2<bool>(all(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 16u)])), all(!vec4<bool>(arg_0, global0[_wgslsmith_index_u32(19033u, 16u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 16u)]))), select(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], arg_0), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)])), vec2<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 16u)], arg_0 || global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), any(vec2<bool>(true, false)) && false), select(vec2<bool>(true, arg_0), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 16u)], false), vec2<bool>(true, true))), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) * _wgslsmith_f_op_f32(-var_0.x)))), func_4(u_input.a.x, Struct_4(~0u, vec2<bool>(any(vec3<bool>(true, arg_0, false)), !global0[_wgslsmith_index_u32(4294967295u, 16u)]), -1260f, 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))))), var_0.x);
    var var_4 = _wgslsmith_div_vec4_i32(-vec4<i32>(var_2.x, ~1i, u_input.b, var_2.x), vec4<i32>(_wgslsmith_clamp_i32(i32(-1i) * -32234i, 1i, 0i) ^ var_2.x, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-10155i, var_2.x, var_2.x, u_input.b) >> (vec4<u32>(u_input.a.x, u_input.a.x, 42017u, u_input.c) % vec4<u32>(32u))), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(3959i, -23275i, 41619i, u_input.b), vec4<i32>(var_2.x, var_2.x, -52186i, u_input.b), vec4<i32>(var_2.x, 2147483647i, -41669i, -1i)), vec4<i32>(-17214i, 1i, u_input.b, var_2.x) ^ vec4<i32>(var_2.x, -37925i, -2147483647i, -1i))), -2700i, ~_wgslsmith_add_i32(3894i, -1i) ^ -func_5(Struct_2(Struct_1(1427f, false, vec4<u32>(43970u, var_3.d, 87376u, var_3.a))), var_2.x, Struct_3(var_0.xy, vec3<i32>(55353i, var_2.x, -85860i), Struct_2(Struct_1(-163f, arg_0, vec4<u32>(1u, 68299u, u_input.a.x, 130596u))), vec3<f32>(-1611f, 515f, var_0.x)), 0u).x));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_3.c), false, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_3.d, var_3.a, 57356u), vec4<u32>(57525u, 10501u, 4294967295u, 4294967295u)), 1u, ~1u, u_input.a.x) >> (select(vec4<u32>(81211u, 45648u, 1u, var_3.d) ^ vec4<u32>(u_input.c, u_input.a.x, var_3.a, 93240u), vec4<u32>(var_3.a, 1u, 1768u, u_input.a.x), select(vec4<bool>(true, arg_0, true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(var_3.a, 16u)], true, global0[_wgslsmith_index_u32(u_input.c, 16u)]), global0[_wgslsmith_index_u32(var_3.a, 16u)])) % vec4<u32>(32u))));
}

fn func_1() -> Struct_2 {
    return func_7(func_6(u_input.b, Struct_3(vec2<f32>(-413f, 350f), func_2(u_input.a, false, u_input.c, vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 16u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], true)), Struct_2(Struct_1(1838f, global0[_wgslsmith_index_u32(u_input.c, 16u)], vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, u_input.c))), vec3<f32>(-373f, 2075f, 1000f)), Struct_3(vec2<f32>(1751f, -1357f), -vec3<i32>(-27791i, 22462i, u_input.b), Struct_2(Struct_1(1524f, global0[_wgslsmith_index_u32(68542u, 16u)], vec4<u32>(32755u, u_input.a.x, u_input.c, u_input.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-338f, -1000f, 1097f) - vec3<f32>(707f, -1269f, -1711f)))) == -u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(~_wgslsmith_mult_u32(1u, select(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 16u)]) | ~u_input.a.x), u_input.c);
    var var_1 = func_1();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(var_1.a.a)), !all(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], false, true, global0[_wgslsmith_index_u32(var_1.a.c.x, 16u)]), vec4<bool>(true, false, true, var_1.a.b), true)) | global0[_wgslsmith_index_u32(~(u_input.c & var_1.a.c.x), 16u)], var_1.a.c);
    let var_3 = u_input.a.yy;
    let var_4 = func_1();
    var var_5 = all(select(!vec3<bool>(func_3(vec3<u32>(u_input.c, var_4.a.c.x, 36028u), Struct_4(24303u, vec2<bool>(false, true), var_2.a, var_2.c.x, var_1.a.a), vec4<i32>(9842i, -1632i, u_input.b, -2147483647i), var_2).x, var_2.b, true), !vec3<bool>(var_4.a.b, 30419i < u_input.b, true), select(vec3<bool>(true, true || var_4.a.b, u_input.b < 1i), select(vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.a.c.x, 16u)], false), select(vec3<bool>(var_4.a.b, false, global0[_wgslsmith_index_u32(4294967295u, 16u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_4.a.c.x, 16u)], global0[_wgslsmith_index_u32(var_4.a.c.x, 16u)], global0[_wgslsmith_index_u32(0u, 16u)]), var_1.a.b), !vec3<bool>(true, var_1.a.b, false)), func_7(true).a.b)));
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(func_1().a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1369f, -206f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1613f, 1336f)))))))), var_3);
}

