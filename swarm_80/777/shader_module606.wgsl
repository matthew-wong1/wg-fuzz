struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<f32>;

var<private> global2: bool;

var<private> global3: Struct_1 = Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, true), vec4<u32>(60126u, 1u, 56320u, 34186u), vec2<u32>(111149u, 1u), -1i);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(~arg_2.d.x), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.d.x, 4294967295u, arg_3.d.x), vec3<u32>(u_input.b, arg_2.c.x, arg_2.c.x)), 0u) | _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 4294967295u), ~arg_3.d), global3.d.x, 1u), ~max(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(arg_3.c, vec4<u32>(1u, global3.d.x, 32694u, 49825u)), arg_3.c >> (arg_2.c % vec4<u32>(32u))), vec4<u32>(29430u, u_input.b, global3.d.x, 9771u) << (vec4<u32>(arg_3.c.x, 13485u, 0u, u_input.b) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32((vec4<u32>(0u, global3.c.x, 29818u, 4294967295u) & ~arg_3.c) & abs(_wgslsmith_mult_vec4_u32(arg_2.c, vec4<u32>(u_input.b, 4294967295u, global3.c.x, 4166u))), _wgslsmith_add_vec4_u32(vec4<u32>(global3.c.x, 108160u, arg_2.c.x, 19375u), _wgslsmith_clamp_vec4_u32(global3.c, vec4<u32>(u_input.b, arg_2.d.x, 0u, u_input.b), vec4<u32>(4294967295u, u_input.b, 0u, global3.c.x))) & max(_wgslsmith_div_vec4_u32(global3.c, global3.c), max(vec4<u32>(0u, u_input.b, arg_3.d.x, 4294967295u), arg_2.c))));
    let var_1 = all(select(vec2<bool>(!any(vec4<bool>(arg_2.b.x, false, false, true)), all(select(vec3<bool>(arg_3.a.x, arg_3.a.x, true), global3.b, vec3<bool>(false, true, global3.b.x)))), vec2<bool>(~arg_3.e > arg_3.e, !(global1.x == 394f)), !select(vec2<bool>(arg_2.b.x, false), !vec2<bool>(global3.a.x, false), !global3.b.yz)));
    var var_2 = _wgslsmith_mult_u32(1u, 1u) << (_wgslsmith_dot_vec3_u32(max(vec3<u32>(~arg_3.c.x, 89708u, abs(42631u)), firstTrailingBit(_wgslsmith_clamp_vec3_u32(arg_3.c.xww, vec3<u32>(var_0.x, arg_3.d.x, arg_2.c.x), vec3<u32>(arg_3.c.x, 2289u, 0u)))), ~abs(~vec3<u32>(arg_3.d.x, var_0.x, 0u))) % 32u);
    var var_3 = arg_3;
    let var_4 = arg_2;
    return 29846u;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: bool) -> vec2<bool> {
    let var_0 = Struct_1(!(!select(vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(true, global3.a.x), false | global3.b.x)), arg_0.b, firstLeadingBit(arg_2.c), ~_wgslsmith_mod_vec2_u32(~firstTrailingBit(vec2<u32>(global3.c.x, 4294967295u)), vec2<u32>(1u, 51900u) << (global3.c.xz % vec2<u32>(32u))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.wx, _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.e, 28766i), u_input.a.yw), _wgslsmith_mult_vec2_i32(u_input.a.zy, vec2<i32>(-16298i, global3.e)))), -vec2<i32>(-1i, 0i)));
    global2 = !(any(var_0.b.zy) & !global3.b.x);
    let var_1 = Struct_1(!vec2<bool>(min(arg_1.x, global3.d.x) > _wgslsmith_dot_vec2_u32(var_0.c.ww, vec2<u32>(28877u, global3.d.x)), all(select(vec4<bool>(global3.a.x, arg_0.a.x, var_0.a.x, arg_2.b.x), vec4<bool>(true, var_0.b.x, false, var_0.b.x), vec4<bool>(true, global3.a.x, global3.b.x, arg_0.b.x)))), !arg_2.b, ~(~arg_0.c), ~(~arg_2.d), -2147483647i);
    global2 = any(select(!(!(!vec4<bool>(false, arg_0.b.x, var_1.a.x, true))), vec4<bool>(!var_0.b.x, !(1u > arg_0.c.x), false, !any(var_0.a)), select(!select(vec4<bool>(var_1.b.x, false, var_0.b.x, var_0.a.x), vec4<bool>(var_0.a.x, arg_0.b.x, arg_0.a.x, false), vec4<bool>(false, true, true, var_1.b.x)), !vec4<bool>(false, arg_3, true, true), true)));
    let var_2 = reverseBits(-1i);
    return vec2<bool>(false, !var_1.a.x);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global2 = false;
    var var_0 = Struct_1(func_4(Struct_1(global3.a, !vec3<bool>(true, global3.a.x, global3.b.x), vec4<u32>(1u, ~global3.d.x, 1u, func_3(u_input.a.x, vec3<f32>(global1.x, -867f, -265f), Struct_1(global3.b.xz, vec3<bool>(global3.a.x, global3.a.x, global3.b.x), global3.c, global3.d, -2147483647i), Struct_1(global3.a, global3.b, vec4<u32>(19252u, 1u, u_input.b, u_input.b), vec2<u32>(u_input.b, 39791u), 17164i))), vec2<u32>(~u_input.b, ~u_input.b), 1i), global3.c.xzw, Struct_1(select(global3.a, vec2<bool>(true, true), all(vec2<bool>(true, true))), vec3<bool>(any(vec4<bool>(global3.a.x, global3.a.x, false, global3.b.x)), true, select(global3.a.x, global3.a.x, true)), global3.c, global3.d, global3.e), any(vec4<bool>(arg_0.x <= 1i, true, true, any(vec2<bool>(false, global3.a.x))))), select(!global3.b, !vec3<bool>(!global3.a.x, true, 1i > global3.e), all(select(select(vec3<bool>(global3.a.x, global3.a.x, true), global3.b, global3.b), vec3<bool>(global3.b.x, global3.a.x, global3.a.x), select(global3.b, global3.b, false)))), ~(global3.c ^ ~global3.c), global3.c.wy, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(reverseBits(global3.e), arg_0.x)), ~_wgslsmith_div_vec2_i32(-u_input.a.zz, ~u_input.a.yw)));
    var var_1 = ~(~(~var_0.c.x ^ var_0.d.x) & ~global3.c.x);
    var_1 = reverseBits(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(var_0.c, ~vec4<u32>(4294967295u, u_input.b, 0u, var_0.c.x)), var_0.c));
    let var_2 = _wgslsmith_sub_u32(max(50519u, _wgslsmith_add_u32(56805u, var_0.d.x)), 48874u);
    return Struct_1(global3.b.yz, !select(!select(vec3<bool>(global3.a.x, false, false), vec3<bool>(true, false, global3.b.x), var_0.b), !select(global3.b, vec3<bool>(true, var_0.a.x, true), var_0.b), any(vec3<bool>(true, false, var_0.b.x))), _wgslsmith_add_vec4_u32(countOneBits(~var_0.c), global3.c), _wgslsmith_mult_vec2_u32(reverseBits(abs(global3.c.xx & var_0.c.xz)), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, var_0.c.x), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(global3.c.yy, vec2<u32>(121167u, 52317u)), ~global3.d, _wgslsmith_sub_vec2_u32(global3.c.zx, vec2<u32>(var_0.d.x, var_0.d.x))))), ~global3.e);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = -vec3<i32>(arg_0.e, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_0.e, 40379i, 1i), firstLeadingBit(u_input.a.x)), arg_1.e);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global1.x, -575f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
    global0 = -17334i << (~arg_0.c.x % 32u);
    global3 = func_2(~u_input.a);
    global2 = true;
    return _wgslsmith_dot_vec3_u32(global3.c.zxz, ~firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(74937u, arg_3.d.x, 12114u), arg_3.c.zyy)));
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    let var_0 = ~func_5(func_2(_wgslsmith_div_vec4_i32(u_input.a | u_input.a, u_input.a)), Struct_1(vec2<bool>(!global3.a.x, global3.a.x), !(!global3.b), global3.c, ~vec2<u32>(global3.c.x, 0u), _wgslsmith_mult_i32(7374i, -44003i)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(7068i, i32(-1i) * -48963i), -2576i), func_2(u_input.a));
    global0 = u_input.a.x | 33195i;
    var var_1 = Struct_1(select(vec2<bool>(global3.b.x, func_4(Struct_1(global3.b.zy, vec3<bool>(global3.b.x, global3.a.x, global3.a.x), global3.c, arg_0.yz, -8282i), vec3<u32>(var_0, 38396u, 35936u) & vec3<u32>(0u, var_0, global3.c.x), Struct_1(global3.a, vec3<bool>(global3.a.x, global3.b.x, global3.a.x), vec4<u32>(38273u, 0u, 15742u, 4294967295u), vec2<u32>(27498u, var_0), 2147483647i), true).x), global3.b.yy, global3.b.x), !global3.b, ~(~vec4<u32>(arg_0.x, 7608u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, var_0), global3.c.yxy), ~var_0)), vec2<u32>(_wgslsmith_dot_vec3_u32(arg_0, ~vec3<u32>(var_0, arg_0.x, var_0)), 0u), u_input.a.x);
    var var_2 = func_2(vec4<i32>(_wgslsmith_dot_vec3_i32(countOneBits(select(vec3<i32>(68564i, global3.e, global3.e), vec3<i32>(-2147483647i, 7773i, 10782i), var_1.a.x)), vec3<i32>(19451i, 2147483647i, ~38013i)), reverseBits(firstLeadingBit(firstTrailingBit(0i))), ~(~17353i) ^ _wgslsmith_dot_vec2_i32(u_input.a.zw, vec2<i32>(25931i, 36342i)), _wgslsmith_clamp_i32(-1i, -2147483647i, -_wgslsmith_mod_i32(-20918i, var_1.e))));
    var var_3 = ~global3.c.x;
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_vec3_i32(vec3<i32>(~1i, u_input.a.x, 48936i), u_input.a.xzy);
    var var_1 = -vec3<i32>(func_1(abs(global3.c.ywx)), var_0.x, global3.e);
    let var_2 = _wgslsmith_add_vec4_i32(u_input.a, max(~abs(-vec4<i32>(u_input.a.x, 2147483647i, global3.e, global3.e)), select(firstLeadingBit(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(var_0.x, -32320i, global3.e, -13231i))), firstTrailingBit(select(u_input.a, vec4<i32>(global3.e, -17819i, global3.e, 1i), true)), false)));
    var var_3 = func_2(~var_2);
    var var_4 = max(~(~firstLeadingBit(var_3.e) >> (42079u % 32u)), countOneBits(42647i));
    let var_5 = ~(~u_input.a.wyz);
    let var_6 = func_2(~vec4<i32>(-79385i, _wgslsmith_add_i32(max(var_5.x, var_3.e), var_0.x), var_1.x, 15632i));
    let x = u_input.a;
    s_output = StorageBuffer(~global3.c.xyx, abs(1u), -6567i, abs(firstTrailingBit(~vec2<u32>(u_input.b, 24819u)) | ~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 62681u), vec2<u32>(u_input.b, var_3.d.x))));
}

