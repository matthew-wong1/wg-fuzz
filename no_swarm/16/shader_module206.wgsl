struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(2147483647i, -1i), true, 14132u, vec2<i32>(15521i, 2147483647i), vec3<bool>(false, false, true));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-9774i, 2147483647i), true, 0u, vec2<i32>(27381i, -1i), vec3<bool>(true, false, false));

var<private> global2: array<vec3<u32>, 22>;

var<private> global3: vec2<u32> = vec2<u32>(15010u, 1u);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32) -> bool {
    global1 = Struct_1(u_input.b.zz, (all(global1.e.yz) || any(global0.e.zx)) & (arg_2 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1794f))), 1u, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-85211i, global0.d.x), countOneBits(global0.a), global1.a) << (u_input.c.wx % vec2<u32>(32u)), vec3<bool>(arg_0.e.x != (true | (arg_1.x != global0.e.x)), true, !any(vec2<bool>(arg_0.b, true))));
    global0 = arg_0;
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -188f);
    return false;
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: i32) -> vec3<f32> {
    let var_0 = Struct_1(min(vec2<i32>(abs(_wgslsmith_sub_i32(u_input.b.x, arg_3)), global1.a.x), global1.a), any(global0.e), ~global3.x, firstTrailingBit(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-13290i, arg_1.x, -2147483647i, -2147483647i), vec4<i32>(u_input.b.x, arg_3, global0.d.x, arg_1.x)), _wgslsmith_dot_vec3_i32(arg_1, u_input.b))), vec3<bool>(!func_2(Struct_1(vec2<i32>(3652i, global1.a.x), global1.b, global0.c, vec2<i32>(-8127i, u_input.b.x), global0.e), select(vec2<bool>(false, global1.e.x), global0.e.zz, global1.e.x), _wgslsmith_f_op_f32(-1164f + -374f)), true, true | any(vec4<bool>(true, false, true, global1.b))));
    global3 = _wgslsmith_mult_vec2_u32(firstTrailingBit(select(select(firstLeadingBit(u_input.c.ww), _wgslsmith_div_vec2_u32(vec2<u32>(arg_2.x, 4294967295u), arg_2), global0.e.zx), vec2<u32>(arg_2.x, 11674u) << (arg_2 % vec2<u32>(32u)), select(select(vec2<bool>(var_0.e.x, false), global0.e.yz, vec2<bool>(false, false)), vec2<bool>(false, false), any(vec4<bool>(global1.b, true, true, true))))), ~(~arg_2));
    global0 = Struct_1(abs(~vec2<i32>(firstTrailingBit(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-10466i, global1.a.x, arg_3, 12020i), vec4<i32>(var_0.a.x, 9286i, -1i, arg_1.x)))), var_0.e.x, ~4294967295u, _wgslsmith_clamp_vec2_i32(var_0.d, abs(vec2<i32>(-11244i, _wgslsmith_sub_i32(global0.a.x, 0i))), vec2<i32>(max(select(-1i, u_input.b.x, global1.e.x), 2147483647i), ~(~(-34322i)))), !vec3<bool>(all(vec3<bool>(false, var_0.e.x, var_0.b)), true, var_0.e.x));
    var var_1 = Struct_1(global1.d, !(!all(vec2<bool>(true, true))), 0u, vec2<i32>(_wgslsmith_mult_i32(global0.d.x, global1.a.x) << (~global0.c % 32u), -(~2147483647i)) & -abs(_wgslsmith_mult_vec2_i32(var_0.a, vec2<i32>(global0.a.x, -2147483647i))), global1.e);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1042f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-948f - _wgslsmith_f_op_f32(-2413f - 1209f)) - 494f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -473f)))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-970f, 1088f, -167f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(408f, 834f, -145f) - vec3<f32>(-298f, -261f, -745f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-989f, -605f, -1833f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-400f, -2672f, -974f))), vec3<bool>(false, global0.b, false)))) * vec3<f32>(435f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 229f)), _wgslsmith_f_op_f32(-505f * -200f))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32, arg_3: vec3<u32>) -> vec2<bool> {
    global0 = Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.d.x, -13741i), arg_1.d, vec2<i32>(2147483647i, _wgslsmith_add_i32(u_input.b.x, arg_1.a.x))), abs(arg_1.d), vec2<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.d.x, 27626i), u_input.b.xx), _wgslsmith_mod_i32(-23724i, 2147483647i), arg_1.b), 28453i)), arg_1.e.x, global3.x, vec2<i32>(-1i, global1.d.x), !select(vec3<bool>(!global1.e.x, func_2(arg_1, vec2<bool>(global0.b, true), 531f), func_2(arg_1, vec2<bool>(global1.b, true), 1295f)), !select(vec3<bool>(true, false, true), vec3<bool>(true, global0.b, false), vec3<bool>(false, true, false)), vec3<bool>(false, global0.e.x || false, false)));
    let var_0 = !global0.b;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(505f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -481f) + _wgslsmith_f_op_f32(max(-243f, -1704f))), _wgslsmith_f_op_f32(round(-916f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(arg_3.x << (global0.c % 32u), firstTrailingBit(_wgslsmith_mod_vec3_i32(u_input.b, u_input.b)), ~select(arg_3.zx, arg_0.zy, vec2<bool>(global1.e.x, true)), 26922i))));
    let var_2 = Struct_1(vec2<i32>(arg_1.a.x, -(~global1.a.x) >> (~(~0u) % 32u)), all(global1.e) & (~(17724u | global0.c) >= global3.x), 51505u, vec2<i32>(arg_1.d.x, -2147483647i), global0.e);
    global3 = arg_3.xy;
    return global1.e.xx;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(global1.a, !(!(_wgslsmith_mult_u32(1448u, arg_1.c) >= countOneBits(arg_1.c))), firstLeadingBit(27273u), countOneBits(u_input.b.zz), vec3<bool>(arg_1.b, true, true));
    let var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global1.a, _wgslsmith_clamp_vec2_i32(reverseBits(firstLeadingBit(vec2<i32>(var_0.a.x, -93332i))), vec2<i32>(firstLeadingBit(2147483647i), var_0.a.x << (global1.c % 32u)), -vec2<i32>(arg_1.a.x, 1i) >> (vec2<u32>(global0.c, 4294967295u) % vec2<u32>(32u))), ((vec2<i32>(u_input.b.x, 2147483647i) << (vec2<u32>(global0.c, 0u) % vec2<u32>(32u))) ^ firstLeadingBit(global1.d)) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(4788i, var_0.d.x) << (u_input.c.xw % vec2<u32>(32u)), vec2<i32>(1i, global0.a.x))), abs(vec2<i32>(1i ^ arg_1.d.x, _wgslsmith_mod_i32(2147483647i, arg_1.a.x)) ^ _wgslsmith_div_vec2_i32(reverseBits(arg_1.d), -vec2<i32>(global0.d.x, -57485i))));
    var var_2 = vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(~abs(2147483647i), _wgslsmith_div_i32(1i ^ u_input.b.x, ~var_1)), _wgslsmith_add_i32(-13693i, var_1 | var_1), _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(26125i, var_1), _wgslsmith_clamp_i32(-2147483647i, var_1, 2147483647i)), ~firstLeadingBit(-1i), global1.a.x)), arg_1.a.x, 1i, ~var_1);
    let var_3 = ~(~(vec3<u32>(global0.c, global3.x, 1u) << (((vec3<u32>(u_input.c.x, global3.x, global3.x) | vec3<u32>(global3.x, global3.x, arg_1.c)) & (global2[_wgslsmith_index_u32(1849u, 22u)] >> (u_input.c.yyx % vec3<u32>(32u)))) % vec3<u32>(32u))));
    global0 = arg_1;
    return arg_1;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = 27134u;
    let var_1 = arg_1;
    let var_2 = Struct_1(~firstLeadingBit(firstLeadingBit(-vec2<i32>(var_1.d.x, 0i))), false, 4294967295u, arg_2.d & vec2<i32>(_wgslsmith_mod_i32(-2147483647i, max(arg_2.a.x, -2147483647i)), firstTrailingBit(-arg_2.a.x)), !vec3<bool>(select(!arg_1.b, arg_1.c == 32727u, arg_2.b), !(!global1.e.x), min(76243u, arg_1.c) < (var_1.c << (74138u % 32u))));
    return firstTrailingBit(18800u);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~reverseBits(1u);
    let var_1 = all(vec2<bool>(arg_0.e.x | all(!vec4<bool>(true, true, global0.e.x, true)), false));
    let var_2 = arg_0;
    global2 = array<vec3<u32>, 22>();
    let var_3 = _wgslsmith_mult_u32(global3.x, arg_0.c);
    return func_4(func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, arg_0.c, var_2.c, 26280u), ~vec4<u32>(69395u, global0.c, global1.c, global1.c)) & ((vec4<u32>(108672u, 1u, global0.c, global0.c) << (u_input.c % vec4<u32>(32u))) | ~u_input.c), Struct_1(global0.a, global0.e.x, _wgslsmith_sub_u32(global3.x & 28305u, 4294967295u), global1.d, func_4(select(var_2.e.xy, var_2.e.xz, global0.e.x), func_4(global0.e.zy, Struct_1(vec2<i32>(56144i, global0.a.x), global1.b, arg_0.c, u_input.b.xy, var_2.e))).e), abs(~global3.x), u_input.c.xzz), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(~reverseBits(~vec2<i32>(2147483647i, global1.d.x)), global0.b, func_5(vec4<i32>(1i, u_input.b.x, -global0.d.x, global0.d.x), func_4(func_1(u_input.c, Struct_1(vec2<i32>(-2147483647i, global1.a.x), false, 37076u, vec2<i32>(-2147483647i, -2147483647i), vec3<bool>(true, global1.b, false)), 4294967295u, vec3<u32>(u_input.a, 4294967295u, global0.c)), Struct_1(u_input.b.zx, false, 0u, global1.d, vec3<bool>(global0.e.x, global1.e.x, global1.e.x))), Struct_1(vec2<i32>(u_input.b.x, global1.d.x), false, 24251u, ~vec2<i32>(global0.d.x, global0.d.x), global1.e)), -vec2<i32>(1i, i32(-1i) * -10851i), vec3<bool>(global0.e.x, any(func_4(vec2<bool>(true, false), Struct_1(vec2<i32>(u_input.b.x, global0.d.x), global1.b, u_input.a, vec2<i32>(u_input.b.x, global1.a.x), vec3<bool>(false, global0.e.x, global1.e.x))).e), global1.b)));
    global2 = array<vec3<u32>, 22>();
    global0 = Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.d.x, u_input.b.x), vec2<i32>(1i, -33547i)), vec2<i32>(1i, -31952i)), vec2<i32>(1i, -1i)) ^ global1.a, var_0.b, ~(~u_input.c.x), -vec2<i32>(global1.d.x, _wgslsmith_div_i32(~global1.a.x, -14592i)), func_6(Struct_1(countOneBits(~var_0.a), global1.e.x, 0u, global0.d, func_6(func_6(Struct_1(vec2<i32>(0i, 9387i), true, u_input.c.x, vec2<i32>(2147483647i, -30743i), global1.e))).e)).e);
    global1 = func_4(vec2<bool>(true, _wgslsmith_clamp_i32(-2147483647i, i32(-1i) * -10593i, _wgslsmith_dot_vec2_i32(global0.d, vec2<i32>(global0.a.x, global1.d.x))) == var_0.d.x), func_6(Struct_1(u_input.b.zy, all(!vec4<bool>(true, true, false, global1.e.x)), global0.c, _wgslsmith_add_vec2_i32(~vec2<i32>(-1i, global0.a.x), u_input.b.yz >> (u_input.c.zw % vec2<u32>(32u))), vec3<bool>(true, true, any(global1.e)))));
    var var_1 = false;
    var var_2 = ~(~14232u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global0.c, global1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(456f))))));
}

