struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(0i, 58214i, 0i, -7602i, 15219i, i32(-2147483648), -16303i, -1i, 15929i, -9103i, -8521i, 15798i, 0i, -6284i, -26465i, 0i, -21924i, 2147483647i, 0i, -7853i, 1i, 1i, -1i, -1421i, 1i, 0i, -1i, 1i);

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(vec4<u32>(13043u, 20675u, 0u, 37520u), vec2<f32>(1235f, 793f), false, false), Struct_1(vec4<u32>(3980u, 22147u, 1u, 4294967295u), vec2<f32>(-690f, 1000f), true, true), Struct_1(vec4<u32>(37999u, 1u, 1u, 1291u), vec2<f32>(750f, -192f), true, false)), Struct_2(Struct_1(vec4<u32>(1u, 1u, 1u, 59790u), vec2<f32>(279f, -750f), false, true), Struct_1(vec4<u32>(1u, 4446u, 4294967295u, 4294967295u), vec2<f32>(-1536f, -432f), false, true), Struct_1(vec4<u32>(10424u, 53653u, 99935u, 4294967295u), vec2<f32>(1066f, -955f), true, true)), Struct_2(Struct_1(vec4<u32>(0u, 12402u, 19567u, 22198u), vec2<f32>(-1415f, -105f), true, true), Struct_1(vec4<u32>(0u, 4294967295u, 16026u, 0u), vec2<f32>(1323f, -1921f), false, false), Struct_1(vec4<u32>(44581u, 51864u, 27889u, 1u), vec2<f32>(589f, -1000f), true, true)), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 51212u, 23927u), vec2<f32>(-1160f, -1313f), true, false), Struct_1(vec4<u32>(80745u, 4294967295u, 16581u, 19254u), vec2<f32>(-579f, 376f), false, true), Struct_1(vec4<u32>(18366u, 0u, 1u, 4294967295u), vec2<f32>(859f, 289f), true, true)), Struct_2(Struct_1(vec4<u32>(1611u, 1u, 1u, 0u), vec2<f32>(-1060f, 957f), true, true), Struct_1(vec4<u32>(1u, 1168u, 1u, 56764u), vec2<f32>(-816f, 150f), true, false), Struct_1(vec4<u32>(0u, 40760u, 4294967295u, 1u), vec2<f32>(-217f, -272f), false, false)), Struct_2(Struct_1(vec4<u32>(1231u, 24815u, 20506u, 0u), vec2<f32>(1000f, -2549f), true, false), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec2<f32>(1289f, 1858f), true, true), Struct_1(vec4<u32>(0u, 21106u, 56755u, 1u), vec2<f32>(192f, 1151f), false, false)), Struct_2(Struct_1(vec4<u32>(62879u, 0u, 1u, 52599u), vec2<f32>(1380f, 968f), false, false), Struct_1(vec4<u32>(44042u, 80483u, 44011u, 0u), vec2<f32>(-664f, -555f), true, true), Struct_1(vec4<u32>(4294967295u, 48568u, 55064u, 0u), vec2<f32>(1790f, -1592f), false, true)), Struct_2(Struct_1(vec4<u32>(1u, 0u, 1u, 1u), vec2<f32>(-1000f, -653f), true, true), Struct_1(vec4<u32>(18936u, 0u, 47422u, 4294967295u), vec2<f32>(769f, 251f), true, false), Struct_1(vec4<u32>(8295u, 51387u, 65893u, 36528u), vec2<f32>(-1062f, -550f), false, true)), Struct_2(Struct_1(vec4<u32>(24705u, 0u, 4294967295u, 1u), vec2<f32>(2008f, 1082f), false, false), Struct_1(vec4<u32>(4294967295u, 42499u, 0u, 57015u), vec2<f32>(-2745f, -390f), false, true), Struct_1(vec4<u32>(6658u, 0u, 0u, 0u), vec2<f32>(2494f, -320f), true, true)), Struct_2(Struct_1(vec4<u32>(33777u, 28404u, 54865u, 0u), vec2<f32>(-498f, 624f), true, true), Struct_1(vec4<u32>(20615u, 22280u, 34873u, 0u), vec2<f32>(1691f, 750f), true, false), Struct_1(vec4<u32>(1u, 67213u, 13030u, 46800u), vec2<f32>(-845f, -1630f), false, false)), Struct_2(Struct_1(vec4<u32>(10846u, 0u, 0u, 16035u), vec2<f32>(-1509f, 528f), false, true), Struct_1(vec4<u32>(30546u, 0u, 0u, 1u), vec2<f32>(-1213f, 115f), false, true), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec2<f32>(874f, -1675f), false, true)), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 12662u, 4294967295u), vec2<f32>(967f, 1000f), true, false), Struct_1(vec4<u32>(2412u, 67238u, 1u, 16814u), vec2<f32>(-1758f, -447f), true, false), Struct_1(vec4<u32>(85876u, 0u, 1380u, 4294967295u), vec2<f32>(-1160f, 732f), false, true)), Struct_2(Struct_1(vec4<u32>(1u, 0u, 4294967295u, 0u), vec2<f32>(665f, 898f), true, false), Struct_1(vec4<u32>(1u, 41660u, 0u, 0u), vec2<f32>(-315f, -1000f), true, false), Struct_1(vec4<u32>(60840u, 23222u, 0u, 0u), vec2<f32>(1817f, -2800f), true, true)), Struct_2(Struct_1(vec4<u32>(3702u, 4294967295u, 10490u, 4294967295u), vec2<f32>(478f, -1412f), false, false), Struct_1(vec4<u32>(0u, 14741u, 4294967295u, 4294967295u), vec2<f32>(190f, -729f), true, true), Struct_1(vec4<u32>(0u, 2106u, 25003u, 4294967295u), vec2<f32>(1374f, 1380f), false, false)));

var<private> global2: bool;

var<private> global3: i32;

var<private> global4: array<vec4<i32>, 22>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<bool>) -> vec4<bool> {
    global2 = arg_2.x;
    var var_0 = Struct_3(~(~2147483647i));
    global1 = array<Struct_2, 14>();
    global0 = array<i32, 28>();
    var_0 = arg_1;
    return vec4<bool>(select(!all(select(arg_2.zx, vec2<bool>(true, false), arg_2.zy)), true, arg_0.b.d), all(arg_2), false, ~_wgslsmith_mod_i32(~591i, firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a, 28u)])) > min(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 8907u, 21166u), vec3<u32>(41695u, 24561u, 61093u)), 28u)], select(0i, -var_0.a, 7632i <= arg_1.a)));
}

fn func_2() -> vec4<bool> {
    return select(!func_3(Struct_2(Struct_1(vec4<u32>(0u, u_input.a, u_input.a, 0u), vec2<f32>(1288f, 2262f), true, false), Struct_1(vec4<u32>(53776u, u_input.a, 27829u, 36133u), vec2<f32>(-1000f, 256f), false, false), Struct_1(vec4<u32>(u_input.a, 30768u, u_input.a, u_input.a), vec2<f32>(-349f, -344f), false, false)), Struct_3(i32(-1i) * -1i), vec3<bool>(true, false, false)), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), 15241u <= u_input.a), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, true, false, false)), true, true, any(vec4<bool>(true, false, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), !any(vec3<bool>(true, false, false))), false);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_2.x, arg_2.x))))) * _wgslsmith_f_op_f32(1388f * _wgslsmith_f_op_f32(floor(arg_2.x))));
    let var_2 = Struct_3(18401i);
    var var_3 = var_2;
    global1 = array<Struct_2, 14>();
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: f32) -> vec4<u32> {
    let var_0 = func_4(select(!(!(!vec4<bool>(true, false, arg_0.c, arg_0.d))), !select(!vec4<bool>(true, arg_0.c, false, false), !vec4<bool>(arg_0.c, false, true, arg_0.d), vec4<bool>(false, arg_0.c, false, true)), func_2()), vec2<i32>(arg_2, arg_1), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3)) - 724f), arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_f32(select(461f, _wgslsmith_f_op_f32(sign(-132f)), true))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(190f, arg_0.b.x, 818f, 2242f))))), !vec4<bool>(arg_0.c, arg_0.c, func_3(Struct_2(arg_0, arg_0, arg_0), Struct_3(arg_1), vec3<bool>(true, arg_0.c, arg_0.c)).x, true & arg_0.c))));
    var var_1 = abs(~countOneBits(~vec2<i32>(arg_2, -2147483647i)));
    let var_2 = ~(~_wgslsmith_mod_vec3_u32(arg_0.a.xwy << (vec3<u32>(u_input.a, arg_0.a.x, 31680u) % vec3<u32>(32u)), ~arg_0.a.yww) >> (~((arg_0.a.yxy >> (arg_0.a.yzx % vec3<u32>(32u))) << (~arg_0.a.wyw % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_clamp_i32(-var_0.a, global0[_wgslsmith_index_u32(var_2.x >> (reverseBits(52333u) % 32u), 28u)], arg_2 ^ 1i);
    let var_4 = all(vec2<bool>(~arg_0.a.x >= (reverseBits(u_input.a) ^ var_2.x), arg_0.c));
    return ~select(vec4<u32>(30360u, ~var_2.x, 1u, 0u), vec4<u32>(1u, firstTrailingBit(~949u), arg_0.a.x, _wgslsmith_dot_vec2_u32(arg_0.a.xy, _wgslsmith_clamp_vec2_u32(vec2<u32>(1076u, 1u), var_2.zy, vec2<u32>(var_2.x, 8133u)))), !select(select(vec4<bool>(var_4, arg_0.c, true, false), vec4<bool>(false, var_4, false, false), false), vec4<bool>(arg_0.c, false, var_4, arg_0.d), vec4<bool>(var_4, var_4, var_4, var_4)));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_2(arg_2.a, arg_2.c, Struct_1(min(_wgslsmith_mult_vec4_u32(arg_1, vec4<u32>(arg_1.x, 4294967295u, u_input.a, u_input.a)), arg_1), arg_2.a.b, arg_2.b.c, arg_2.b.c));
    var var_1 = arg_0;
    var_1 = vec3<i32>(-1i) * -vec3<i32>(var_1.x, _wgslsmith_sub_i32(countOneBits(global0[_wgslsmith_index_u32(59994u, 28u)]), global0[_wgslsmith_index_u32(1u, 28u)]), global0[_wgslsmith_index_u32(15125u, 28u)]);
    let var_2 = !(!select(func_3(var_0, Struct_3(2147483647i), !vec3<bool>(false, var_0.c.d, var_0.c.d)), !vec4<bool>(false, true, arg_2.c.d, arg_2.b.d), select(vec4<bool>(true, arg_2.c.d, false, true), !vec4<bool>(false, false, arg_2.b.d, true), all(vec2<bool>(true, arg_2.a.c)))));
    var var_3 = ~(min(countOneBits(vec3<i32>(2147483647i, 1i, arg_0.x)), _wgslsmith_mod_vec3_i32(arg_0, arg_0)) ^ ~arg_0) ^ abs(~arg_0);
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)]) | vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], -2147483647i), ~vec3<i32>(-26619i, global0[_wgslsmith_index_u32(43252u, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)]))), ~max(select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 65346u, 62489u), vec4<u32>(75602u, 0u, u_input.a, u_input.a)), func_1(Struct_1(vec4<u32>(u_input.a, 0u, u_input.a, 0u), vec2<f32>(2700f, -723f), false, true), global0[_wgslsmith_index_u32(u_input.a, 28u)], 24046i, -976f), true), ~vec4<u32>(u_input.a, 1u, u_input.a, 1u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(5195u, 51067u, u_input.a, 4294967295u), vec4<u32>(16967u, u_input.a, u_input.a, 4294967295u))), Struct_2(Struct_1(~reverseBits(vec4<u32>(53104u, 19122u, u_input.a, u_input.a)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1097f, 520f), vec2<f32>(-838f, -1038f), false)))), true, -31006i <= (global0[_wgslsmith_index_u32(6348u, 28u)] | global0[_wgslsmith_index_u32(u_input.a, 28u)])), Struct_1(select(vec4<u32>(4294967295u, u_input.a, 64721u, u_input.a), vec4<u32>(u_input.a, u_input.a, 14095u, 0u), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1453f, 836f) + vec2<f32>(-838f, -278f)) * vec2<f32>(-175f, 889f)), true && select(false, false, false), true), Struct_1(max(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, 4294967295u, 4294967295u), vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u)), vec4<u32>(u_input.a, 4294967295u, 0u, 1u) | vec4<u32>(u_input.a, 2026u, u_input.a, 0u)), vec2<f32>(_wgslsmith_f_op_f32(max(2253f, 2213f)), 567f), all(vec4<bool>(true, true, true, true)), true)), -409f);
    var var_1 = select(!select(vec4<bool>(var_0.d, all(vec3<bool>(true, false, var_0.c)), true, var_0.c), !select(vec4<bool>(true, true, var_0.c, false), vec4<bool>(var_0.c, var_0.d, true, var_0.d), false), !(u_input.a < 2243u)), !(!vec4<bool>(var_0.a.x <= 8678u, var_0.d, var_0.d, true)), vec4<bool>((abs(7823i) | global0[_wgslsmith_index_u32(var_0.a.x & 0u, 28u)]) < global0[_wgslsmith_index_u32(select(~15912u, ~0u, false), 28u)], !var_0.d, var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(489f + -884f)) > var_0.b.x));
    let var_2 = Struct_2(func_5(vec3<i32>(18816i >> (~var_0.a.x % 32u), -global0[_wgslsmith_index_u32(21755u, 28u)], 0i | firstTrailingBit(2147483647i)), vec4<u32>(1u, ~(u_input.a | u_input.a), ~var_0.a.x, select(~var_0.a.x, 1u, var_0.b.x < -504f)), Struct_2(func_5(abs(vec3<i32>(global0[_wgslsmith_index_u32(70870u, 28u)], global0[_wgslsmith_index_u32(43734u, 28u)], -72404i)), _wgslsmith_div_vec4_u32(var_0.a, var_0.a), Struct_2(Struct_1(var_0.a, vec2<f32>(1060f, var_0.b.x), true, var_0.d), Struct_1(vec4<u32>(17298u, 56105u, var_0.a.x, 0u), vec2<f32>(-202f, 1106f), var_0.d, var_1.x), Struct_1(vec4<u32>(var_0.a.x, 4294967295u, var_0.a.x, var_0.a.x), var_0.b, true, false)), _wgslsmith_f_op_f32(min(-583f, -1069f))), Struct_1(vec4<u32>(0u, 4294967295u, 1u, var_0.a.x), _wgslsmith_div_vec2_f32(var_0.b, vec2<f32>(-1037f, 888f)), false, true), func_5(min(vec3<i32>(2147483647i, -2147483647i, -1i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], 2147483647i, global0[_wgslsmith_index_u32(var_0.a.x, 28u)])), vec4<u32>(0u, 44151u, var_0.a.x, u_input.a), Struct_2(Struct_1(var_0.a, vec2<f32>(1091f, var_0.b.x), var_0.c, true), Struct_1(vec4<u32>(var_0.a.x, u_input.a, var_0.a.x, u_input.a), vec2<f32>(1017f, var_0.b.x), false, true), Struct_1(var_0.a, var_0.b, var_0.d, var_0.c)), _wgslsmith_f_op_f32(-var_0.b.x))), -164f), Struct_1(vec4<u32>(u_input.a, 4294967295u, ~(~0u), u_input.a), var_0.b, var_0.c, !var_0.c), Struct_1(vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(var_0.a.ww, var_0.a.yy)), ~(var_0.a.x & var_0.a.x), _wgslsmith_mult_u32(var_0.a.x, 32858u | u_input.a), var_0.a.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1146f, var_0.b.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), func_3(Struct_2(Struct_1(var_0.a, var_0.b, var_1.x, var_1.x), func_5(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(var_0.a.x, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)]), vec4<u32>(9975u, var_0.a.x, 1u, 0u), Struct_2(Struct_1(vec4<u32>(60564u, var_0.a.x, 18018u, var_0.a.x), var_0.b, var_1.x, var_0.c), Struct_1(vec4<u32>(4294967295u, u_input.a, u_input.a, 1u), var_0.b, var_0.d, var_1.x), Struct_1(var_0.a, var_0.b, var_1.x, true)), var_0.b.x), Struct_1(var_0.a, vec2<f32>(-889f, var_0.b.x), var_1.x, var_0.d)), func_4(select(vec4<bool>(var_0.c, var_0.c, true, true), vec4<bool>(true, var_0.d, true, true), var_1.x), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], 0i), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1355f, var_0.b.x, var_0.b.x, -1572f), vec4<f32>(var_0.b.x, -1000f, var_0.b.x, -1030f)))), !select(vec3<bool>(true, false, var_0.d), vec3<bool>(false, var_0.d, true), vec3<bool>(var_1.x, true, var_0.c))).x, !var_1.x));
    global3 = _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(var_0.a.x, 4294967295u), ~var_0.a.x), 28u)], -22864i), reverseBits(-1i)), ~(-_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)])) & -global0[_wgslsmith_index_u32(func_5(-vec3<i32>(-27733i, global0[_wgslsmith_index_u32(u_input.a, 28u)], 2147483647i), var_2.b.a, Struct_2(var_2.c, var_2.a, Struct_1(var_2.c.a, vec2<f32>(295f, 397f), var_0.d, true)), -278f).a.x, 28u)]);
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1442f, var_2.c.b.x)))) - _wgslsmith_f_op_f32(floor(-825f))) - var_0.b.x), _wgslsmith_f_op_f32(-var_2.c.b.x)));
    global4 = array<vec4<i32>, 22>();
    global1 = array<Struct_2, 14>();
    let var_4 = func_5(vec3<i32>(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, var_0.a.x), 28u)], _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(var_2.a.a.x, 28u)], global0[_wgslsmith_index_u32(var_2.c.a.x, 28u)]), vec3<i32>(global0[_wgslsmith_index_u32(3362u, 28u)], 11798i, global0[_wgslsmith_index_u32(var_0.a.x, 28u)]))), -2147483647i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.x, var_2.c.a.x, 4294967295u, 55150u), vec4<u32>(26343u, 83667u, u_input.a, u_input.a)), var_0.a), 28u)]) << (var_2.b.a.wzx % vec3<u32>(32u)), vec4<u32>(select(~(var_0.a.x << (var_0.a.x % 32u)), var_0.a.x, var_0.d), u_input.a, _wgslsmith_div_u32(0u, min(_wgslsmith_mod_u32(1u, 107731u), 1u)), ~var_0.a.x), var_2, _wgslsmith_f_op_f32(-278f + _wgslsmith_f_op_f32(-var_2.a.b.x)));
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-func_5(vec3<i32>(-1i, 2147483647i, -1i), vec4<u32>(828u, 4294967295u, var_2.b.a.x, var_4.a.x), global1[_wgslsmith_index_u32(~21627u, 14u)], var_2.b.b.x).b))) - vec2<f32>(var_2.b.b.x, -993f));
    let x = u_input.a;
    s_output = StorageBuffer(~global0[_wgslsmith_index_u32(~1u, 28u)]);
}

