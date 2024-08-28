struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: bool,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<i32, 10>;

var<private> global1: i32 = 18654i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<u32> {
    global1 = (-abs(min(global0[_wgslsmith_index_u32(4294967295u, 10u)], u_input.a)) | 0i) << (33109u % 32u);
    let var_0 = Struct_1(false, vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(select(vec2<u32>(22519u, 37989u), vec2<u32>(35055u, 1u), vec2<bool>(false, false)), vec2<u32>(9650u, 4294967295u)), vec2<u32>(1u, 1u)), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(8177u, 26383u, 1u, 1u), vec4<u32>(22501u, 69980u, 42998u, 1u)), 20855u), 1u));
    global1 = reverseBits(~global0[_wgslsmith_index_u32(51382u, 10u)]);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1725f, 674f, _wgslsmith_f_op_f32(sign(-147f)))))));
    var var_2 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32((vec4<u32>(var_0.b.x, var_0.b.x, 29955u, 38323u) << (vec4<u32>(var_0.b.x, var_0.b.x, 1u, 1u) % vec4<u32>(32u))) ^ abs(vec4<u32>(19936u, 3832u, var_0.b.x, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 3345u, var_0.b.x, 1u), vec4<u32>(38607u, 101708u, 79949u, var_0.b.x)) >> (reverseBits(vec4<u32>(0u, var_0.b.x, 70392u, 6308u)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_0.b.x, _wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(26392u, 1158u, 1u))), var_0.b.x, var_0.b.x, 0u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(2034u, 38595u, 0u, 1u), vec4<u32>(26781u, var_0.b.x, 117531u, var_0.b.x)) ^ ~(~vec4<u32>(var_0.b.x, 1u, var_0.b.x, 0u))), ~(~reverseBits(vec4<u32>(78928u, 5420u, 4294967295u, var_0.b.x))));
    return ~var_2.zyx;
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(select(true, arg_0, !arg_0), select(arg_3.a, ~func_3(), arg_0));
    global1 = -9902i;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1672f))));
    let var_2 = countOneBits(-(~max(-31670i, arg_1.x)));
    global1 = global0[_wgslsmith_index_u32(arg_2.x, 10u)];
    return Struct_1(true && any(vec3<bool>(select(false, var_0.a, false), true, arg_0 == false)), select(~vec3<u32>(1u, 1586u, arg_3.a.x), (vec3<u32>(21391u, var_0.b.x, 1u) ^ arg_3.a) | arg_3.a, var_0.a) | vec3<u32>(var_0.b.x, 103719u, 1u));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = abs(41248i);
    let var_1 = !select(!(!(!vec4<bool>(arg_2.a, arg_2.a, false, false))), vec4<bool>(any(!vec2<bool>(arg_2.a, false)), true, true, !(arg_1.c | true)), !select(select(vec4<bool>(arg_1.b.x, false, arg_2.a, arg_2.a), vec4<bool>(arg_2.a, arg_1.b.x, arg_1.a.x, arg_2.a), arg_1.c), !vec4<bool>(false, arg_1.c, arg_2.a, arg_1.a.x), !vec4<bool>(arg_2.a, false, arg_1.c, false)));
    let var_2 = !(!(!(!vec3<bool>(arg_2.a, false, arg_1.a.x))));
    let var_3 = arg_1.a.yz;
    let var_4 = arg_1;
    return abs(~(~vec2<i32>(27288i, _wgslsmith_mult_i32(1i, var_0))));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: vec3<i32>) -> u32 {
    global0 = array<i32, 10>();
    var var_0 = Struct_2(vec3<u32>(~44103u, ~arg_0.e, arg_0.d), _wgslsmith_mult_vec2_i32(min(_wgslsmith_clamp_vec2_i32(arg_2.zy, ~arg_2.yx, _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -41727i), arg_2.yz)), arg_2.xx), func_4(~vec2<u32>(arg_0.d, arg_0.e), Struct_3(arg_0.a, vec2<bool>(arg_1, true), arg_0.c, 21568u, arg_0.e), func_2(true, arg_2, vec2<u32>(arg_0.e, arg_0.e), Struct_2(vec3<u32>(arg_0.d, 4294967295u, 21819u), arg_2.xx, vec3<i32>(arg_2.x, u_input.b, 2147483647i)))) ^ (_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(-19154i, -2147483647i)) >> (~vec2<u32>(0u, arg_0.d) % vec2<u32>(32u)))), arg_2);
    global0 = array<i32, 10>();
    global1 = 0i;
    let var_1 = vec2<i32>(global0[_wgslsmith_index_u32(119002u, 10u)], -12960i);
    return ~arg_0.e >> (~(~max(arg_0.d, _wgslsmith_mod_u32(arg_0.e, 4294967295u))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~(~vec3<u32>(firstLeadingBit(58726u), 0u, ~1u)), -max((vec2<i32>(global0[_wgslsmith_index_u32(39795u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)]) | vec2<i32>(global0[_wgslsmith_index_u32(24931u, 10u)], global0[_wgslsmith_index_u32(25259u, 10u)])) & _wgslsmith_sub_vec2_i32(vec2<i32>(-6543i, global0[_wgslsmith_index_u32(4294967295u, 10u)]), vec2<i32>(0i, global0[_wgslsmith_index_u32(12987u, 10u)])), min(vec2<i32>(0i, global0[_wgslsmith_index_u32(24913u, 10u)]), vec2<i32>(u_input.a, u_input.a))), vec3<i32>(global0[_wgslsmith_index_u32(~func_1(Struct_3(vec3<bool>(false, true, false), vec2<bool>(true, true), false, 15787u, 39317u), true, vec3<i32>(u_input.a, u_input.b, global0[_wgslsmith_index_u32(0u, 10u)])), 10u)], u_input.b, 1i));
    global1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-(~(i32(-1i) * -15590i)), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(var_0.a.x ^ var_0.a.x, reverseBits(4294967295u))), 10u)]), var_0.b);
    global1 = _wgslsmith_dot_vec2_i32(-abs(vec2<i32>(_wgslsmith_div_i32(-1i, var_0.c.x), select(global0[_wgslsmith_index_u32(var_0.a.x, 10u)], u_input.b, true))), vec2<i32>(-42820i & _wgslsmith_sub_i32(var_0.c.x, u_input.b), max(_wgslsmith_mult_i32(var_0.c.x, -12179i), i32(-1i) * -2147483647i)) << (vec2<u32>(var_0.a.x, ~(var_0.a.x & var_0.a.x)) % vec2<u32>(32u)));
    var var_1 = func_2(all(vec2<bool>(true, true)), ~reverseBits(_wgslsmith_add_vec3_i32(firstLeadingBit(var_0.c), vec3<i32>(u_input.a, 2147483647i, 1i))), select(~max(var_0.a.xz, var_0.a.yy) | (vec2<u32>(var_0.a.x, var_0.a.x) & var_0.a.xx), select(countOneBits(var_0.a.yy) & vec2<u32>(1u, 18146u), vec2<u32>(abs(4294967295u), var_0.a.x), vec2<bool>(true, true)), vec2<bool>(false, true)), Struct_2(vec3<u32>(~_wgslsmith_div_u32(var_0.a.x, var_0.a.x), var_0.a.x, 5603u), select(vec2<i32>(-global0[_wgslsmith_index_u32(1u, 10u)], reverseBits(var_0.c.x)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -2147483647i), -vec2<i32>(var_0.c.x, u_input.a)), true), -var_0.c));
    var var_2 = Struct_2(vec3<u32>(min(~var_0.a.x ^ var_1.b.x, _wgslsmith_clamp_u32(31469u, 41731u, ~122001u)), ~(var_1.b.x << (4294967295u % 32u)) << ((39187u ^ (6938u ^ var_0.a.x)) % 32u), ~_wgslsmith_dot_vec2_u32(firstTrailingBit(var_1.b.zx), var_1.b.yx)), vec2<i32>(global0[_wgslsmith_index_u32(57549u ^ var_0.a.x, 10u)], -1676i) << ((~var_0.a.yz | _wgslsmith_add_vec2_u32(var_1.b.xz & vec2<u32>(var_0.a.x, var_1.b.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 50465u), vec2<u32>(var_1.b.x, var_0.a.x), var_0.a.yx))) % vec2<u32>(32u)), select(~_wgslsmith_clamp_vec3_i32(select(var_0.c, vec3<i32>(var_0.c.x, 0i, u_input.b), vec3<bool>(false, true, true)), vec3<i32>(global0[_wgslsmith_index_u32(var_0.a.x, 10u)], -2147483647i, var_0.b.x), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], -2991i, -44474i)), firstTrailingBit(var_0.c), select(vec3<bool>(!var_1.a, true & var_1.a, true), vec3<bool>(var_1.a, true, true), select(select(vec3<bool>(true, false, var_1.a), vec3<bool>(true, true, var_1.a), vec3<bool>(false, true, false)), vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(false, true, var_1.a)))));
    var_2 = Struct_2(reverseBits(vec3<u32>(~46396u, 20343u, var_0.a.x)) << (min(vec3<u32>(var_0.a.x, 19397u, var_1.b.x), vec3<u32>(6445u, 17590u, ~0u)) % vec3<u32>(32u)), vec2<i32>(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(-7592i, global0[_wgslsmith_index_u32(1u, 10u)], var_2.c.x, -2147483647i), vec4<i32>(var_2.b.x, var_2.c.x, -1i, 2147483647i))), global0[_wgslsmith_index_u32(~22065u, 10u)]), -var_0.c);
    let var_3 = ~(~(~func_2(var_1.a || var_1.a, var_0.c & var_2.c, vec2<u32>(var_0.a.x, var_2.a.x), Struct_2(vec3<u32>(3614u, 36725u, var_2.a.x), vec2<i32>(-1i, 1i), var_0.c)).b.x));
    var_1 = func_2(_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(88u, 65975u, var_1.b.x), vec3<u32>(4294967295u, 4294967295u, 1u))), var_1.b << (vec3<u32>(49088u, var_1.b.x, var_3) % vec3<u32>(32u))) <= select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.x, var_3, 4294967295u, 4294967295u) ^ vec4<u32>(9708u, 88887u, 39444u, 4294967295u), ~vec4<u32>(4294967295u, var_0.a.x, var_3, var_1.b.x)), ~1u, false), vec3<i32>(~var_0.b.x, -15787i, var_2.b.x), ~var_2.a.zy, var_0);
    global1 = -min(~func_4(vec2<u32>(var_1.b.x, 57382u), Struct_3(vec3<bool>(var_1.a, false, false), vec2<bool>(var_1.a, var_1.a), false, 16076u, 74737u), Struct_1(var_1.a, vec3<u32>(var_3, var_1.b.x, var_2.a.x))).x << (~var_2.a.x % 32u), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(-35149i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_f_op_f32(floor(-635f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -370f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_f_op_f32(floor(492f))))));
}

