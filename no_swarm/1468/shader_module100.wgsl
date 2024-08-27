struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, -2866i, 2147483647i, i32(-2147483648));

var<private> global2: u32;

var<private> global3: array<vec2<i32>, 5>;

var<private> global4: Struct_3;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = countOneBits(vec4<i32>(~abs(arg_2.b.x), reverseBits(arg_1.x & 0i), arg_3.b.x, _wgslsmith_div_i32(select(arg_2.b.x, -8560i, false), -32831i)) & _wgslsmith_add_vec4_i32(select(max(vec4<i32>(arg_3.c.x, -1i, arg_3.c.x, 0i), vec4<i32>(1i, -42022i, -1i, -1i)), vec4<i32>(-1i, arg_1.x, global1.x, arg_2.b.x), select(vec4<bool>(false, arg_3.d.x, arg_3.d.x, false), vec4<bool>(arg_3.d.x, arg_3.d.x, false, arg_3.d.x), vec4<bool>(arg_3.d.x, true, arg_3.d.x, arg_3.d.x))), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, -27152i, arg_3.b.x, 1i), vec4<i32>(-34486i, arg_2.b.x, 0i, 0i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-4556i, arg_3.b.x, arg_2.b.x, global4.b.x), vec4<i32>(arg_3.b.x, 6025i, -8916i, -2147483647i)))));
    let var_1 = var_0;
    return var_1;
}

fn func_2() -> vec2<bool> {
    global1 = _wgslsmith_clamp_vec4_i32(~func_3(-2744f, vec3<i32>(~(-52383i), 2147483647i, ~global4.b.x), Struct_3(min(vec2<u32>(1u, global4.c.x), global4.a), abs(vec3<i32>(-1i, 58566i, 2147483647i)), ~global4.c), Struct_1(min(vec3<i32>(global1.x, 21800i, global4.b.x), global1.zwx), firstTrailingBit(vec2<i32>(global1.x, u_input.a)), -vec2<i32>(global1.x, global4.b.x), vec2<bool>(true, true))), ~countOneBits(-vec4<i32>(1i, 0i, global1.x, -16406i)) & vec4<i32>(global1.x, _wgslsmith_clamp_i32(global1.x, ~2147483647i, 1i), _wgslsmith_dot_vec2_i32(global4.b.zz, vec2<i32>(15281i, global1.x) << (u_input.b % vec2<u32>(32u))), 1i), vec4<i32>(_wgslsmith_dot_vec2_i32(global1.xx, select(global4.b.xy, global3[_wgslsmith_index_u32(1u, 5u)], false)), -5404i, -15497i, -9844i) & firstLeadingBit(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(global1.x, -39649i, u_input.a, u_input.a)), vec4<i32>(1i, u_input.a, u_input.a, -1i))));
    global1 = -countOneBits(~(-vec4<i32>(-2147483647i, 14195i, 36791i, u_input.a)) & ~(-vec4<i32>(-6115i, global1.x, 77911i, global1.x)));
    var var_0 = func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-465f * -639f)), _wgslsmith_f_op_f32(min(-1793f, _wgslsmith_f_op_f32(f32(-1f) * -852f))), true)))), vec3<i32>(-global4.b.x, (0i >> (global4.a.x % 32u)) ^ -u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(3595i, u_input.a, -1i, u_input.a) | vec4<i32>(0i, 28060i, global4.b.x, u_input.a), max(vec4<i32>(u_input.a, global1.x, global1.x, 2147483647i), vec4<i32>(global4.b.x, -45165i, -52405i, 1i)))) >> (vec3<u32>(global4.c.x, ~103117u, ~select(0u, global4.c.x, false)) % vec3<u32>(32u)), Struct_3(vec2<u32>(global4.a.x, u_input.c.x | 29037u), _wgslsmith_sub_vec3_i32(~global1.yxz, vec3<i32>(i32(-1i) * -2147483647i, func_3(1036f, vec3<i32>(1i, global1.x, u_input.a), Struct_3(global4.c.yy, vec3<i32>(15919i, 3667i, u_input.a), vec4<u32>(u_input.b.x, global4.c.x, 27149u, 66396u)), Struct_1(global1.xww, global1.xz, global3[_wgslsmith_index_u32(1u, 5u)], vec2<bool>(true, true))).x, _wgslsmith_mult_i32(global1.x, u_input.a))), vec4<u32>(_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(global4.c.x, u_input.b.x)), u_input.b.x, 29699u, min(_wgslsmith_div_u32(global4.a.x, 100508u), abs(91153u)))), Struct_1(abs(_wgslsmith_mod_vec3_i32(~vec3<i32>(1i, u_input.a, u_input.a), global1.wwy)), ~_wgslsmith_div_vec2_i32(func_3(556f, global1.wyz, Struct_3(u_input.b, vec3<i32>(2147483647i, -28867i, global4.b.x), vec4<u32>(u_input.d, u_input.b.x, global4.c.x, u_input.e)), Struct_1(global4.b, global1.wz, vec2<i32>(-557i, global1.x), vec2<bool>(false, false))).zy, vec2<i32>(global1.x, global1.x)), select(vec2<i32>(1i, u_input.a), -_wgslsmith_mult_vec2_i32(global4.b.zx, vec2<i32>(global1.x, 1i)), true), vec2<bool>(true, any(vec4<bool>(true, true, true, true))))).zx;
    global3 = array<vec2<i32>, 5>();
    let var_1 = Struct_3(_wgslsmith_mod_vec2_u32(vec2<u32>(global4.a.x, _wgslsmith_add_u32(1u, 1u)), firstLeadingBit(global4.a & _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.c))), global4.b, global4.c);
    return vec2<bool>(false, true | !(min(u_input.b.x, u_input.d) < (var_1.a.x & u_input.d)));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(global4.b << (countOneBits(global4.c.zyy) % vec3<u32>(32u)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b.x, ~_wgslsmith_dot_vec4_u32(global4.c, global4.c)), _wgslsmith_mult_u32(global4.c.x, select(~18749u, 0u ^ u_input.d, all(vec4<bool>(true, true, true, false))))), 5u)], vec2<i32>(reverseBits(~(-948i)), global4.b.x), select(select(vec2<bool>(true, true), func_2(), firstTrailingBit(global4.a.x) < u_input.e), !vec2<bool>(true, all(vec4<bool>(true, false, true, false))), true));
    var var_1 = Struct_1(firstTrailingBit(vec3<i32>(select(global1.x, global1.x << (13643u % 32u), func_2().x), ~(var_0.c.x ^ -53656i), ~1i)), -_wgslsmith_mult_vec2_i32(max(-global1.yz, vec2<i32>(global4.b.x, 0i) | global4.b.xz), vec2<i32>(0i, 1i)), -max(_wgslsmith_mod_vec2_i32(-global4.b.zy, ~vec2<i32>(global1.x, u_input.a)), ~min(global3[_wgslsmith_index_u32(37922u, 5u)], vec2<i32>(global4.b.x, global1.x))), var_0.d);
    let var_2 = Struct_1(var_1.a, vec2<i32>(2147483647i, u_input.a), -var_1.c, select(func_2(), select(var_0.d, select(vec2<bool>(true, true), select(var_1.d, vec2<bool>(var_0.d.x, var_1.d.x), false), true), _wgslsmith_sub_i32(1i, -58205i) >= (u_input.a | -1i)), var_0.d));
    var var_3 = countOneBits(vec4<u32>(~_wgslsmith_sub_u32(1u, 0u), 14625u, u_input.d, ~u_input.b.x) << (vec4<u32>(~firstLeadingBit(42919u), u_input.e, reverseBits(1u), 1u) % vec4<u32>(32u)));
    let var_4 = !(!(!(!(var_1.d.x & false))));
    return Struct_3(vec2<u32>(~_wgslsmith_sub_u32(~var_3.x, global4.a.x | global4.c.x), 0u), vec3<i32>(func_3(_wgslsmith_f_op_f32(-513f * 583f), vec3<i32>(max(var_1.a.x, var_2.a.x), _wgslsmith_mult_i32(50517i, var_2.a.x), ~var_1.c.x), Struct_3(global4.c.yx, vec3<i32>(global1.x, u_input.a, var_0.c.x), max(vec4<u32>(4294967295u, 0u, var_3.x, u_input.d), global4.c)), Struct_1(vec3<i32>(global4.b.x, -24879i, var_1.b.x), vec2<i32>(global4.b.x, -19627i), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, var_1.a.x), vec2<i32>(var_2.b.x, global4.b.x)), select(vec2<bool>(false, true), var_1.d, vec2<bool>(var_1.d.x, var_4)))).x, _wgslsmith_div_i32(max(global1.x << (62495u % 32u), 0i), 0i), -u_input.a), ~vec4<u32>(var_3.x, countOneBits(_wgslsmith_mod_u32(global4.c.x, 4294967295u)), 87466u, ~76699u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 44868i;
    global3 = array<vec2<i32>, 5>();
    var var_1 = func_1();
    global3 = array<vec2<i32>, 5>();
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(342f + -2065f))) * -325f))), abs(~(~_wgslsmith_div_vec2_u32(vec2<u32>(var_2.c.x, var_1.a.x), vec2<u32>(31226u, 39217u)))));
}

