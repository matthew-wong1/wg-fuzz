struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: u32 = 4294967295u;

var<private> global2: vec4<u32>;

var<private> global3: i32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1404f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -103f) + -1302f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1412f))))));
    var var_1 = Struct_1(true, 11116u, u_input.b, true, ~u_input.a);
    var_1 = Struct_1(var_1.a, 72961u, u_input.b, true, ~17951u);
    global1 = var_1.b;
    var var_2 = !select(!(!select(vec2<bool>(var_1.a, false), vec2<bool>(var_1.a, var_1.d), false)), !(!select(vec2<bool>(var_1.d, false), vec2<bool>(var_1.d, var_1.a), vec2<bool>(var_1.a, var_1.d))), var_1.d);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.x)))) * var_0.x);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_3, vec3<f32>(297f, _wgslsmith_f_op_f32(f32(-1f) * -686f), _wgslsmith_f_op_f32(f32(-1f) * -1442f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_3.x * 1461f), arg_3.x, arg_3.x) - arg_3))));
    var var_1 = vec2<bool>(arg_1, arg_1);
    var var_2 = all(select(select(select(vec4<bool>(arg_1, arg_0, false, arg_0), vec4<bool>(arg_1, arg_2.a, false, true), !vec4<bool>(var_1.x, false, true, arg_0)), !vec4<bool>(arg_0, false, arg_0, arg_2.d), true), select(vec4<bool>(select(true, var_1.x, var_1.x), all(vec4<bool>(arg_1, false, arg_2.a, var_1.x)), 1u < global2.x, false), select(vec4<bool>(arg_1, false, false, arg_2.d), select(vec4<bool>(var_1.x, arg_1, true, true), vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(arg_2.d, true, false, true)), !vec4<bool>(var_1.x, true, true, arg_2.d)), select(vec4<bool>(false, true, arg_0, true), select(vec4<bool>(arg_1, arg_2.d, var_1.x, false), vec4<bool>(arg_1, false, arg_0, arg_1), false), !vec4<bool>(arg_2.d, false, arg_2.a, var_1.x))), true & all(!vec4<bool>(arg_1, false, arg_1, var_1.x))));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)));
    global0 = array<u32, 26>();
    return var_0.yx;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = Struct_1(true, ~_wgslsmith_dot_vec2_u32(abs(_wgslsmith_add_vec2_u32(arg_1.c.xy, global2.yw)), abs(~u_input.c.xz)), vec4<u32>(_wgslsmith_dot_vec2_u32(global2.ww, vec2<u32>(~global2.x, arg_1.e | u_input.b.x)), _wgslsmith_sub_u32(~4294967295u, _wgslsmith_sub_u32(47629u, arg_1.b)) | u_input.b.x, arg_1.e, _wgslsmith_add_u32(global2.x, 1u)), !(!arg_1.a), u_input.a);
    let var_1 = Struct_1(true, ~max(~83036u, ~17425u), select(var_0.c, vec4<u32>(0u, _wgslsmith_dot_vec4_u32(u_input.b, var_0.c), arg_1.b, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 4294967295u, arg_1.c.x)), countOneBits(global2.x))), vec4<bool>(false, any(vec4<bool>(true, true, false, true)) | false, false, false)), var_0.a, 1u);
    let var_2 = countOneBits(vec3<u32>(abs(_wgslsmith_mod_u32(var_1.c.x, 1u)), ~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 26u)], 26u)], 27245u), ~12956u) & max(reverseBits(vec3<u32>(var_0.b, u_input.a, 4294967295u)), ~(~vec3<u32>(arg_1.e, 65377u, global2.x))));
    global1 = _wgslsmith_mult_u32(var_1.e, 43663u);
    var var_3 = ~(~vec2<u32>(~(~var_2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, 32547u, 43788u), u_input.c) & u_input.c.x));
    return firstLeadingBit(~countOneBits(~_wgslsmith_mod_u32(41955u, 4294967295u)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1682f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -722f)), true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(973f, 1000f)) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -556f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))));
    global2 = u_input.b;
    var var_1 = ~0u;
    var var_2 = _wgslsmith_mod_u32(~45784u, func_4(_wgslsmith_f_op_vec2_f32(func_3(!(0u < global2.x), true, Struct_1(true, _wgslsmith_clamp_u32(1u, global2.x, global2.x), select(u_input.b, vec4<u32>(global0[_wgslsmith_index_u32(global2.x, 26u)], u_input.b.x, 17549u, u_input.c.x), vec4<bool>(false, true, true, true)), true, global2.x), vec3<f32>(_wgslsmith_f_op_f32(-377f + 848f), -1379f, _wgslsmith_f_op_f32(433f - 602f)))), Struct_1(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32718u, 26u)], 26u)], global0[_wgslsmith_index_u32(3428u, 26u)], 99441u), u_input.b), _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(0u, global0[_wgslsmith_index_u32(605u, 26u)], 50849u, global2.x))), 26u)], ~abs(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(1u, 26u)], global2.x, u_input.a)), all(vec2<bool>(false, false)), max(~84279u, ~global2.x)), _wgslsmith_f_op_f32(-1218f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(615f + -170f)))));
    global1 = global2.x;
    return Struct_1(all(vec2<bool>(true, false)), 4294967295u, vec4<u32>(_wgslsmith_mod_u32(~(~1u), 45000u), u_input.c.x, 0u, 28746u), !(any(vec2<bool>(false, true)) && select(true, true, true)), u_input.a);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(!select(~global0[_wgslsmith_index_u32(22529u, 26u)] >= reverseBits(42318u), select(2147483647i, 2147483647i, false) >= 1i, arg_1.d), ~abs(global2.x), vec4<u32>(arg_1.e, 1u, arg_0.b, 741u), all(!vec2<bool>(!arg_0.d, !arg_0.a)), 1u);
    global1 = 19059u;
    global3 = ~firstTrailingBit(2147483647i);
    var var_1 = !select(!select(select(vec2<bool>(false, true), vec2<bool>(arg_0.a, arg_0.a), false), !vec2<bool>(arg_0.a, false), !vec2<bool>(arg_0.a, arg_1.d)), vec2<bool>(var_0.a, !(0u < global2.x)), arg_0.a);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1179f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(876f + _wgslsmith_f_op_f32(1473f - _wgslsmith_div_f32(-1217f, 1602f))))));
    return Struct_1(true, global0[_wgslsmith_index_u32(~23774u, 26u)], vec4<u32>(4294967295u, arg_0.b, _wgslsmith_mod_u32(select(~24069u, firstLeadingBit(var_0.b), select(true, var_0.a, var_1.x)), global2.x), _wgslsmith_div_u32(_wgslsmith_div_u32(~var_0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, 26265u, 47293u), arg_0.c.xwz)), global2.x)), !(!(!(arg_1.d | arg_0.a))), 30672u);
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec2<bool>(true || func_5(func_5(func_1(), func_1()), func_5(func_1(), func_1())).d, (((-13554i >> (global0[_wgslsmith_index_u32(4294967295u, 26u)] % 32u)) > 1i) || false) && true);
    var var_1 = 157f;
    var var_2 = Struct_1(false, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_add_u32(min(u_input.a, 126269u), ~arg_0.x), _wgslsmith_div_u32(func_5(arg_1, func_5(arg_2, arg_2)).e, ~(~4294967295u))), 26u)], 26u)], arg_2.c, true, _wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(~1u, arg_1.c.x & 16545u)));
    var var_3 = var_0;
    let var_4 = Struct_1(false, arg_1.e, ~(firstLeadingBit(arg_1.c ^ vec4<u32>(1u, arg_0.x, arg_1.b, var_2.e)) ^ abs(vec4<u32>(7290u, arg_0.x, 12226u, 1u))), func_1().a, arg_1.e);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -11432i;
    let var_0 = func_6(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(min(vec3<u32>(u_input.c.x, 8693u, global2.x), ~u_input.c), vec3<u32>(59163u, _wgslsmith_dot_vec2_u32(global2.wz, vec2<u32>(32098u, 801u)), 0u)), global2.xyz), Struct_1(!(~global2.x < _wgslsmith_dot_vec3_u32(global2.wwz, global2.zyy)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global2.x), ~global2.x), firstTrailingBit(u_input.b), true, _wgslsmith_clamp_u32(~firstTrailingBit(14198u), firstLeadingBit(~u_input.c.x), global2.x)), func_5(func_1(), Struct_1(true, 1u >> ((global0[_wgslsmith_index_u32(12229u, 26u)] & u_input.b.x) % 32u), select(vec4<u32>(0u, 1u, 35630u, 0u), vec4<u32>(1u, 15271u, global2.x, 1u), false) << (max(vec4<u32>(global0[_wgslsmith_index_u32(1u, 26u)], 4294967295u, 1u, global2.x), vec4<u32>(global2.x, 32360u, 72137u, 91056u)) % vec4<u32>(32u)), true, 31950u)));
    let var_1 = _wgslsmith_clamp_i32(-(~(-1i)), _wgslsmith_mod_i32(~max(firstLeadingBit(-1i), -2147483647i), i32(-1i) * -28554i), _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(-2147483647i, -44780i, -9505i, 1i)), vec4<i32>(1i, 1i, 1i, 1i))), vec4<i32>(-1i) * -vec4<i32>(-1i, 33283i, -2147483647i, -2147483647i)));
    var var_2 = Struct_1(all(!(!select(vec2<bool>(false, var_0.d), vec2<bool>(true, false), vec2<bool>(false, true)))), ~20702u, ~select(u_input.b, _wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(var_0.b, 26u)], 1u, var_0.b, var_0.c.x), vec4<u32>(global0[_wgslsmith_index_u32(51087u, 26u)], var_0.b, 102763u, 0u)), select(vec4<bool>(var_0.d, true, false, var_0.a), vec4<bool>(false, true, true, var_0.a), false)) << (vec4<u32>(8817u, global2.x, _wgslsmith_mult_u32(global2.x, var_0.b) & 0u, ~(~u_input.c.x)) % vec4<u32>(32u)), select(func_5(func_1(), Struct_1(var_0.d & var_0.a, _wgslsmith_add_u32(82816u, var_0.e), ~vec4<u32>(global2.x, 1u, global2.x, 1u), var_0.d, global2.x)).a, !(!any(vec3<bool>(true, true, var_0.a))), !((var_1 < var_1) | true)), _wgslsmith_div_u32(min(_wgslsmith_mod_u32(global2.x | 40377u, ~u_input.b.x), select(u_input.a & global0[_wgslsmith_index_u32(55886u, 26u)], reverseBits(u_input.c.x), !var_0.d)), ~4294967295u));
    let var_3 = var_0;
    let var_4 = ~abs(vec4<u32>(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(602f, 1657f) + vec2<f32>(434f, 940f)), Struct_1(true, var_0.b, vec4<u32>(4492u, 4294967295u, var_3.b, 36785u), var_3.d, u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -689f)), var_3.c.x, _wgslsmith_mult_u32(global2.x, global2.x), global0[_wgslsmith_index_u32(~1u, 26u)]));
    var var_5 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-602f, _wgslsmith_f_op_f32(max(-278f, _wgslsmith_f_op_f32(-1f)))));
    let var_6 = u_input.a;
    var var_7 = all(!select(select(select(vec3<bool>(false, var_3.d, true), vec3<bool>(var_3.d, var_0.d, false), vec3<bool>(var_2.a, var_2.d, true)), !vec3<bool>(var_2.a, true, false), select(vec3<bool>(true, var_3.a, var_0.a), vec3<bool>(false, var_2.a, true), false)), vec3<bool>(false && var_2.d, false && var_3.d, var_1 > var_1), ~2147483647i != var_1));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-var_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1312f))), -324f));
}

