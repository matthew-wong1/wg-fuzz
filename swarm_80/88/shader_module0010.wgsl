struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31>;

var<private> global1: vec2<u32> = vec2<u32>(28382u, 28074u);

var<private> global2: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(253f, 150f, -437f), vec3<f32>(-2178f, -224f, -2258f), vec3<f32>(1742f, -2083f, -1466f), vec3<f32>(1208f, 296f, 510f), vec3<f32>(-449f, -1742f, -499f), vec3<f32>(1184f, -1502f, -423f), vec3<f32>(-971f, -507f, 1877f), vec3<f32>(926f, 1751f, -224f), vec3<f32>(778f, 1535f, -681f), vec3<f32>(1668f, -1025f, -268f), vec3<f32>(-1000f, -708f, -504f), vec3<f32>(-1013f, -385f, -446f), vec3<f32>(240f, -246f, -349f), vec3<f32>(1119f, -284f, -398f));

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-379f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1430f * -513f), 2247f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-291f)), 1f, -1541f, _wgslsmith_f_op_f32(step(909f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -799f), 859f))))));
    global2 = array<vec3<f32>, 14>();
    global0 = array<vec3<i32>, 31>();
    let var_1 = arg_0;
    global1 = vec2<u32>(~firstLeadingBit(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.c, 40561u), vec2<u32>(arg_0.b, u_input.a.x)))), global1.x & ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, global3.b, 71459u, u_input.b.x), vec4<u32>(0u, 23776u, 76563u, u_input.b.x)));
    return true & all(select(select(select(var_1.a.ww, vec2<bool>(true, global3.a.x), true), arg_0.a.zx, !var_1.a.xz), !vec2<bool>(true, global3.a.x), false));
}

fn func_2() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-316f * -1000f), -1963f, _wgslsmith_f_op_f32(abs(-1477f)), _wgslsmith_f_op_f32(-546f + 346f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(137f, -755f, 1000f, -361f), vec4<f32>(129f, 237f, 798f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-267f, -1000f, 497f, -2003f)))))), vec4<f32>(_wgslsmith_f_op_f32(660f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1234f)), _wgslsmith_f_op_f32(-1032f - 314f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(267f, -1401f))), _wgslsmith_div_f32(767f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-478f, -2967f, false)) - _wgslsmith_f_op_f32(trunc(-166f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -176f) * -675f))));
    let var_1 = global3.a.x;
    var var_2 = _wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.c, global1.x, 17994u, 59113u), vec4<u32>(1u, global1.x, global3.c, u_input.b.x)), 1u >> (global1.x % 32u)), 35786u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global1.x, global3.c, 1u), u_input.b << (u_input.b % vec3<u32>(32u))))) << (vec3<u32>(1724u, global1.x, reverseBits(global1.x)) % vec3<u32>(32u));
    let var_3 = Struct_1(vec4<bool>(!select(all(global3.a.ww), any(global3.a.yy), global3.a.x & true), any(vec4<bool>(func_3(Struct_1(global3.a, 4294967295u, 87503u)), true, false, true)), !any(global3.a.yz), global3.a.x), 4294967295u, 1u);
    global3 = Struct_1(!(!var_3.a), 1u, 20106u);
    return vec3<u32>(0u, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(29303u, 1u, global3.c), vec3<u32>(var_3.c, 4294967295u, 0u)), 5626u), max(_wgslsmith_mult_u32(52105u, ~(global1.x ^ u_input.a.x)), firstTrailingBit(_wgslsmith_sub_u32(min(var_2.x, global1.x), var_2.x))));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = arg_1.yy;
    let var_1 = 0u;
    global3 = Struct_1(global3.a, ~abs(~4294967295u), ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 38528u) | u_input.b.zz, _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(arg_1.x, 4294967295u))), arg_1.x));
    var var_2 = vec3<bool>(true, true, any(select(vec2<bool>(true, true), select(select(global3.a.xw, global3.a.xz, global3.a.wz), select(vec2<bool>(global3.a.x, global3.a.x), global3.a.yw, vec2<bool>(false, global3.a.x)), select(global3.a.yz, global3.a.wx, global3.a.xw)), any(select(vec3<bool>(false, global3.a.x, global3.a.x), vec3<bool>(global3.a.x, global3.a.x, global3.a.x), false)))));
    let var_3 = Struct_1(select(vec4<bool>(var_2.x, var_2.x, true, true), global3.a, !(!global3.a)), 1u, var_0.x);
    return var_3;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(!select(!global3.a, arg_1.a, all(arg_2.zy)), ~1499u, _wgslsmith_add_u32(arg_1.b ^ _wgslsmith_dot_vec2_u32(vec2<u32>(15466u, 0u), vec2<u32>(arg_0.c, 3225u)), countOneBits(_wgslsmith_clamp_u32(global3.b, global3.c, global3.b) << (~arg_3.x % 32u))));
    let var_1 = func_4(-513f, u_input.b);
    var var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1129f)), vec3<u32>(~min(4294967295u, var_1.b) << (61636u % 32u), select(4294967295u & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 58662u, 66446u, 4294967295u), vec4<u32>(1298u, arg_1.b, 1u, 0u)), ~var_0.c, true), arg_1.c));
    let var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -12515i, 0i, 1927i), -vec4<i32>(0i, 2147483647i, -2147483647i, 1i)), -(i32(-1i) * -6346i)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -2147483647i) >> (vec2<u32>(var_1.b, 85437u) % vec2<u32>(32u)), select(vec2<i32>(2147483647i, -1i), vec2<i32>(79189i, 0i), vec2<bool>(arg_1.a.x, arg_2.x))) & vec2<i32>(firstTrailingBit(0i), -2147483647i));
    let var_4 = func_4(_wgslsmith_f_op_f32(-1330f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1100f - -920f)))), ~((arg_3.zzw ^ _wgslsmith_div_vec3_u32(vec3<u32>(18462u, 0u, 1u), u_input.b)) >> (u_input.b % vec3<u32>(32u))));
    return Struct_1(select(!var_1.a, !global3.a, arg_0.a), 24241u, ~44100u);
}

fn func_1() -> u32 {
    global3 = func_5(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(global3.a.x & true, global3.a.x, true, global3.a.x), select(select(vec4<bool>(false, global3.a.x, global3.a.x, global3.a.x), global3.a, false), vec4<bool>(global3.a.x, false, false, global3.a.x), false)), u_input.b.x, ~4294967295u), func_4(_wgslsmith_f_op_f32(floor(1f)), ~_wgslsmith_mod_vec3_u32(func_2(), u_input.b)), global3.a, _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(~4294967295u, _wgslsmith_mod_u32(global1.x, 40664u), ~15578u, 4294967295u)), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(global1.x, global3.b, 98250u, 1u), min(vec4<u32>(u_input.a.x, global1.x, u_input.a.x, global1.x), vec4<u32>(1548u, u_input.b.x, 4294967295u, u_input.b.x)), vec4<u32>(global1.x, global3.c, global1.x, global1.x) ^ vec4<u32>(global1.x, 48115u, global1.x, 4294967295u))));
    global2 = array<vec3<f32>, 14>();
    global2 = array<vec3<f32>, 14>();
    var var_0 = !global3.a.wy;
    let var_1 = 56425u;
    return _wgslsmith_dot_vec4_u32(firstLeadingBit(~(vec4<u32>(u_input.b.x, var_1, u_input.b.x, u_input.b.x) & vec4<u32>(35471u, var_1, 0u, global1.x))), ~abs(vec4<u32>(func_2().x, ~global3.b, 21582u, select(u_input.b.x, global1.x, false))));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> bool {
    let var_0 = u_input.a;
    return !arg_2.a.x & func_4(_wgslsmith_div_f32(-1884f, _wgslsmith_f_op_f32(trunc(1000f))), abs(vec3<u32>(arg_0.b, u_input.b.x, 0u) >> (firstLeadingBit(vec3<u32>(global1.x, u_input.b.x, 4294967295u)) % vec3<u32>(32u)))).a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!global3.a, !(!select(select(vec4<bool>(false, global3.a.x, global3.a.x, true), vec4<bool>(false, true, true, global3.a.x), global3.a), !vec4<bool>(global3.a.x, false, true, true), global3.a.x)), func_6(Struct_1(select(vec4<bool>(true, false, global3.a.x, true), !global3.a, true), func_1(), 22448u), global1.x, Struct_1(global3.a, global1.x, countOneBits(global3.b)), 0i));
    global2 = array<vec3<f32>, 14>();
    var_0 = !func_5(func_4(1f, reverseBits(vec3<u32>(global3.b, global3.c, u_input.a.x))), Struct_1(global3.a, global3.b << (func_4(-535f, vec3<u32>(u_input.a.x, global3.b, 3662u)).c % 32u), 1u), !global3.a, vec4<u32>(4294967295u, (global3.b >> (43598u % 32u)) >> (23856u % 32u), 79129u, ~(~28775u))).a;
    let var_1 = vec3<u32>(global1.x, u_input.b.x, ~global3.b);
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1880f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-911f, 824f)) * _wgslsmith_f_op_f32(-600f * 672f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1205f, 384f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(293f)))))), !global3.a.x));
    var var_3 = -firstLeadingBit(-76807i);
    let var_4 = -abs(-45906i);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(4294967295u, global1.x, func_4(-232f, var_1).b, var_1.x) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global3.b, global3.b, u_input.a.x, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, 63302u, 0u, 1u), vec4<u32>(global1.x, var_1.x, u_input.a.x, global3.c))), abs(vec4<u32>(0u, global3.c, 19839u, 19644u))), i32(-1i) * -16997i, vec2<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(64611u, global1.x, 13840u, 0u), vec4<u32>(global1.x, 41182u, 44980u, u_input.a.x), var_0.x) << (vec4<u32>(27588u, 1u, global1.x, 4294967295u) % vec4<u32>(32u)), max(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, global1.x, 28660u, 84272u), vec4<u32>(global3.c, 4294967295u, global3.c, 0u)), firstTrailingBit(vec4<u32>(23967u, 0u, u_input.b.x, var_1.x)))), var_1.x), ~_wgslsmith_div_vec3_i32(vec3<i32>(30805i, _wgslsmith_mod_i32(-23099i, -2147483647i), _wgslsmith_clamp_i32(var_4, var_4, 0i)), firstLeadingBit(vec3<i32>(var_4, 2147483647i, -8627i)) & vec3<i32>(13701i, -2147483647i, 11848i)));
}

