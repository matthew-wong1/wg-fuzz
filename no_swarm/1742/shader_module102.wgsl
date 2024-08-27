struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(623u, 4294967295u, 1u), vec3<u32>(29764u, 26744u, 1u), vec3<u32>(2259u, 0u, 52306u), vec3<u32>(96112u, 90326u, 0u), vec3<u32>(4294967295u, 69424u, 13871u), vec3<u32>(100507u, 12298u, 20220u), vec3<u32>(35346u, 37542u, 52385u), vec3<u32>(4294967295u, 3679u, 4294967295u), vec3<u32>(61503u, 1u, 0u), vec3<u32>(20114u, 38838u, 1u), vec3<u32>(29834u, 10822u, 36318u), vec3<u32>(0u, 0u, 5230u), vec3<u32>(4294967295u, 1u, 16270u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 11668u, 61541u), vec3<u32>(4294967295u, 58569u, 4294967295u), vec3<u32>(9268u, 1u, 66305u), vec3<u32>(1370u, 29721u, 74488u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(30885u, 33925u, 10443u), vec3<u32>(22229u, 2410u, 0u), vec3<u32>(22533u, 4294967295u, 4294967295u), vec3<u32>(17221u, 64142u, 4294967295u), vec3<u32>(22463u, 6115u, 0u), vec3<u32>(1035u, 0u, 4294967295u), vec3<u32>(12732u, 72381u, 34890u), vec3<u32>(0u, 49773u, 0u), vec3<u32>(42273u, 93902u, 5118u));

var<private> global1: bool;

var<private> global2: array<vec2<u32>, 32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = Struct_3(arg_1.d, arg_3);
    global2 = array<vec2<u32>, 32>();
    global0 = array<vec3<u32>, 28>();
    global0 = array<vec3<u32>, 28>();
    var var_1 = Struct_3(Struct_1((_wgslsmith_add_vec2_u32(vec2<u32>(62342u, 28661u), vec2<u32>(7690u, var_0.b.d)) & _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 28129u), vec2<u32>(arg_3.a.x, 0u))) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.a.d, 38095u), select(vec2<u32>(var_0.b.d, arg_1.d.d), vec2<u32>(34990u, arg_3.a.x), vec2<bool>(true, true))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.b - var_0.a.b) + var_0.b.b)), abs(-7426i), _wgslsmith_dot_vec2_u32(~(var_0.b.a ^ vec2<u32>(22154u, 38757u)), arg_3.a)), Struct_1(firstLeadingBit(vec2<u32>(~0u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.b)))), ~1i, var_0.a.d));
    return max(abs(vec2<i32>(1i, arg_1.d.c) << (arg_3.a % vec2<u32>(32u))), arg_0.yy);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> i32 {
    global0 = array<vec3<u32>, 28>();
    global1 = !(!((_wgslsmith_f_op_f32(arg_0.b + 341f) > -394f) != all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false))));
    global1 = any(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, true, false), true));
    global0 = array<vec3<u32>, 28>();
    var var_0 = arg_0;
    return max(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0.c, -1i, u_input.c.x, u_input.c.x)), vec4<i32>(var_0.c, -2147483647i, -2147483647i, 2147483647i)), countOneBits(-25048i)), vec3<i32>(-1i) * -(vec3<i32>(var_0.c, 0i, arg_1.x) >> (global0[_wgslsmith_index_u32(var_0.d, 28u)] % vec3<u32>(32u)))));
}

fn func_2() -> Struct_1 {
    global2 = array<vec2<u32>, 32>();
    var var_0 = u_input.c.x;
    global1 = true;
    global1 = ~func_4(Struct_1(vec2<u32>(10321u, u_input.b.x), -499f, 1i, 0u), ~func_3(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 0i), Struct_2(Struct_1(u_input.a.xz, 864f, u_input.c.x, u_input.d), u_input.c.x, u_input.b.xy, Struct_1(global2[_wgslsmith_index_u32(u_input.b.x, 32u)], 246f, -2147483647i, u_input.d)), Struct_2(Struct_1(vec2<u32>(u_input.d, u_input.d), -737f, -2147483647i, u_input.b.x), u_input.c.x, global2[_wgslsmith_index_u32(1u, 32u)], Struct_1(vec2<u32>(90151u, u_input.b.x), -1000f, u_input.c.x, 29526u)), Struct_1(vec2<u32>(u_input.d, u_input.d), 589f, u_input.c.x, 4294967295u))) == ~select(u_input.c.x, 0i, true);
    var var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~countOneBits(2147483647i), 33188i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c.x, 2147483647i, 18320i), vec4<i32>(-5540i, u_input.c.x, -1i, u_input.c.x))), u_input.c), -(~(-func_4(Struct_1(u_input.a.zz, 1000f, u_input.c.x, u_input.b.x), vec2<i32>(u_input.c.x, -2147483647i)))), _wgslsmith_mod_i32(u_input.c.x, ~(~(~u_input.c.x))));
    return Struct_1(~global2[_wgslsmith_index_u32(~0u, 32u)], -656f, ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(var_1.x, -2147483647i, u_input.c.x)), u_input.c), vec3<i32>(1i, -2147483647i, var_1.x) | u_input.c), _wgslsmith_mult_u32(~(1u | u_input.b.x), 1u));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: vec3<f32>) -> i32 {
    let var_0 = 7391u;
    global1 = true;
    global0 = array<vec3<u32>, 28>();
    let var_1 = Struct_2(Struct_1(vec2<u32>(firstTrailingBit(29335u) << (27484u % 32u), ~(var_0 << (arg_0.x % 32u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(u_input.c.x, u_input.c.x)), u_input.a.x), -u_input.c.x, global2[_wgslsmith_index_u32(1u, 32u)], func_2());
    var var_2 = u_input.c;
    return abs(func_3(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(var_2.x, 43824i, -1i, -7424i) | vec4<i32>(var_1.b, 0i, u_input.c.x, var_2.x)), vec4<i32>(-2147483647i, 0i, var_1.d.c, var_2.x)), Struct_2(Struct_1(~vec2<u32>(3517u, u_input.a.x), _wgslsmith_f_op_f32(step(-255f, -307f)), countOneBits(var_1.b), ~var_0), 0i, ~(~vec2<u32>(26895u, 60860u)), Struct_1(vec2<u32>(121324u, 4294967295u), _wgslsmith_div_f32(var_1.d.b, 158f), -var_2.x, firstTrailingBit(u_input.a.x))), Struct_2(Struct_1(_wgslsmith_div_vec2_u32(var_1.a.a, arg_0.zx), -1025f, var_1.b, var_1.c.x), abs(2147483647i) & u_input.c.x, u_input.b.yz, Struct_1(global2[_wgslsmith_index_u32(abs(u_input.b.x), 32u)], arg_1, select(u_input.c.x, var_2.x, true), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(1u, var_1.a.a.x)))), var_1.d).x);
}

fn func_5(arg_0: Struct_2) -> bool {
    global2 = array<vec2<u32>, 32>();
    let var_0 = Struct_3(func_2(), func_2());
    global0 = array<vec3<u32>, 28>();
    let var_1 = ~u_input.b & select(max(min(firstTrailingBit(u_input.b), ~u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, 1u), 28u)]), select(vec3<u32>(0u, 1u, 4294967295u) >> ((vec3<u32>(arg_0.c.x, 0u, 1u) ^ vec3<u32>(4294967295u, arg_0.c.x, arg_0.d.a.x)) % vec3<u32>(32u)), vec3<u32>(~14157u, abs(arg_0.a.d), abs(10614u)), vec3<bool>(true, any(vec3<bool>(true, false, true)), all(vec3<bool>(true, true, false)))), !all(vec2<bool>(true, true)));
    global2 = array<vec2<u32>, 32>();
    return !((arg_0.d.c ^ -2147483647i) <= u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !func_5(Struct_2(Struct_1(vec2<u32>(u_input.a.x, u_input.b.x), _wgslsmith_f_op_f32(round(209f)), 36948i | u_input.c.x, 537u), func_1(vec3<u32>(u_input.a.x, u_input.b.x, 119391u), -627f, vec3<f32>(-1693f, 827f, -1570f)), firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x), global2[_wgslsmith_index_u32(31275u, 32u)])), Struct_1(countOneBits(vec2<u32>(u_input.b.x, u_input.b.x)), -1059f, 25851i, 4294967295u)));
    var var_0 = ~2147483647i;
    var var_1 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(~1u & u_input.a.x, firstTrailingBit(~u_input.d)), abs(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 19621u), u_input.b.xy))), 216f, u_input.c.x, u_input.b.x);
    let var_2 = _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c.xz, u_input.c.yx) | reverseBits(firstTrailingBit(u_input.c.zy)), countOneBits(select(vec2<i32>(var_1.c | var_1.c, func_4(Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], 2379f, u_input.c.x, var_1.d), u_input.c.xx)), u_input.c.yx, select(vec2<bool>(true, true), vec2<bool>(false, true), true))), u_input.c.zy);
    var_0 = u_input.c.x >> (16847u % 32u);
    let var_3 = Struct_3(Struct_1(countOneBits(vec2<u32>(var_1.a.x, var_1.d) & global2[_wgslsmith_index_u32(var_1.d, 32u)]) | select(u_input.a.yy, u_input.a.xx, vec2<bool>(true, true)), _wgslsmith_f_op_f32(-729f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1495f)))), -2147483647i, 1u), func_2());
    var_1 = Struct_1(~(~(~vec2<u32>(var_3.b.a.x, 1u))), -341f, ~firstLeadingBit(-(var_1.c >> (var_1.a.x % 32u))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(0u, 32u)], ~vec2<u32>(u_input.d, u_input.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(5713u, 4294967295u, var_1.d), global0[_wgslsmith_index_u32(~u_input.b.x, 28u)])), _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(~countOneBits(u_input.a.x), 32u)], (var_1.a ^ vec2<u32>(var_3.a.d, 84242u)) >> (vec2<u32>(30744u, 18090u) % vec2<u32>(32u)))));
    var var_4 = _wgslsmith_f_op_f32(sign(680f));
    global1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(select(-vec4<i32>(1i, -31470i, var_2.x, -52505i) >> (vec4<u32>(var_1.d, u_input.a.x, var_1.d, 25855u) % vec4<u32>(32u)), vec4<i32>(u_input.c.x, var_1.c, abs(var_3.a.c), func_1(global0[_wgslsmith_index_u32(4294967295u, 28u)], 1425f, vec3<f32>(-506f, -1654f, var_3.b.b))), (0u <= u_input.a.x) || false) >> (countOneBits(~firstTrailingBit(vec4<u32>(0u, 60747u, var_1.d, u_input.a.x))) % vec4<u32>(32u)), 0i, 302f, firstLeadingBit(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(0u, var_1.d, 1u, 768u), ~vec4<u32>(var_3.a.a.x, 1u, u_input.d, 0u), vec4<bool>(true, true, true, true)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(37664u, var_3.b.d, var_3.b.a.x, 1u), vec4<u32>(44926u, 4294967295u, u_input.d, var_3.b.d)), vec4<u32>(~4294967295u, abs(0u), _wgslsmith_add_u32(27894u, 121101u), _wgslsmith_sub_u32(56941u, u_input.a.x)))));
}

