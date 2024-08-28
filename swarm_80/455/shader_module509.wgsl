struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<bool>(false, false, false, true), 191f), Struct_1(vec4<bool>(false, true, false, true), -1150f), Struct_1(vec4<bool>(true, true, true, true), 695f), Struct_1(vec4<bool>(true, false, true, false), -563f), Struct_1(vec4<bool>(false, false, true, true), -1180f), Struct_1(vec4<bool>(false, false, false, false), 407f), Struct_1(vec4<bool>(false, true, false, true), 247f), Struct_1(vec4<bool>(false, false, false, false), 320f), Struct_1(vec4<bool>(false, false, true, false), -674f), Struct_1(vec4<bool>(true, false, false, false), 1000f), Struct_1(vec4<bool>(true, true, false, true), -1000f), Struct_1(vec4<bool>(false, true, false, true), 178f), Struct_1(vec4<bool>(false, false, true, false), -864f), Struct_1(vec4<bool>(false, true, false, false), -903f), Struct_1(vec4<bool>(false, true, false, false), 1555f), Struct_1(vec4<bool>(false, false, false, false), -1755f), Struct_1(vec4<bool>(false, true, true, false), -252f), Struct_1(vec4<bool>(false, true, false, false), -728f), Struct_1(vec4<bool>(false, false, false, true), 892f), Struct_1(vec4<bool>(false, false, true, true), 326f), Struct_1(vec4<bool>(false, true, true, false), 1091f), Struct_1(vec4<bool>(true, true, false, false), 165f));

var<private> global1: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-1165f, -866f, 449f), vec3<f32>(1143f, 1563f, -885f), vec3<f32>(-1474f, 653f, 945f), vec3<f32>(931f, 1502f, -295f), vec3<f32>(1519f, -1693f, -328f), vec3<f32>(-1461f, 454f, 1261f), vec3<f32>(537f, -1605f, 859f), vec3<f32>(-1000f, 748f, -1357f), vec3<f32>(-1000f, -2989f, 139f), vec3<f32>(-687f, 363f, 232f), vec3<f32>(877f, 332f, 194f), vec3<f32>(-1537f, 1003f, 1769f), vec3<f32>(1587f, -762f, 1371f), vec3<f32>(-1633f, 1366f, -356f), vec3<f32>(-2165f, 1221f, 1378f), vec3<f32>(-348f, 721f, 601f), vec3<f32>(565f, -316f, -523f), vec3<f32>(735f, -1004f, -808f), vec3<f32>(-1000f, -313f, 395f), vec3<f32>(-427f, -755f, -1643f), vec3<f32>(-1246f, 110f, -191f));

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: vec4<f32> = vec4<f32>(-178f, -811f, 992f, -1169f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec3<f32>) -> vec2<i32> {
    global2 = vec2<bool>(global2.x, true);
    return select(-(~vec2<i32>(1i, 2147483647i)), arg_1.wx, vec2<bool>(!(!(!global2.x)), all(vec2<bool>(true, true))));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> vec4<bool> {
    let var_0 = abs(~1u);
    global2 = vec2<bool>(true, true);
    var var_1 = Struct_3(u_input.c, ~(-(vec2<i32>(-2147483647i, 40908i) << (u_input.b % vec2<u32>(32u))) | firstLeadingBit(vec2<i32>(arg_0, 63177i))));
    var var_2 = vec3<bool>(!(global3.x <= 228f), false, !(!global2.x));
    global0 = array<Struct_1, 22>();
    return vec4<bool>(var_2.x, !(!var_2.x), any(!(!(!vec2<bool>(true, var_2.x)))), var_2.x);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    let var_0 = Struct_4(vec2<i32>(-1i, -4950i), abs(~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, -28761i, arg_1.a, u_input.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.b.x, arg_2.b.x, arg_1.a, u_input.a), vec4<i32>(-14553i, -2147483647i, 1i, 1i)))), vec3<u32>(~_wgslsmith_clamp_u32(arg_2.a, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.d, arg_1.c.x)), u_input.b.x | 4294967295u), 0u, 17219u), !func_3(min(2847i, _wgslsmith_sub_i32(-32945i, 348i)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.b.x, u_input.b.x), vec3<u32>(31229u, u_input.b.x, arg_1.c.x))));
    global0 = array<Struct_1, 22>();
    return Struct_2(-var_0.a.x, _wgslsmith_f_op_f32(sign(arg_1.e.b)), _wgslsmith_div_vec2_u32(abs(reverseBits(u_input.b)) & vec2<u32>(arg_1.c.x, 4294967295u), vec2<u32>(abs(arg_2.a), ~(1u | u_input.d))), !select(!(!vec3<bool>(var_0.d.x, false, false)), arg_1.d, arg_1.e.a.yzx), Struct_1(!vec4<bool>(func_3(var_0.b, vec3<u32>(arg_2.a, arg_2.a, var_0.c.x)).x, arg_1.d.x, false, arg_2.a > arg_2.a), global3.x));
}

fn func_4(arg_0: Struct_2) -> vec2<u32> {
    global0 = array<Struct_1, 22>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.e.b), -221f))) * 715f)));
    let var_1 = 18995u;
    let var_2 = !(!(abs(u_input.d) <= ~98930u)) || false;
    var var_3 = select(select(!vec2<bool>(!arg_0.e.a.x, true), vec2<bool>(all(arg_0.e.a), func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, -2147483647i, arg_0.a), vec3<i32>(-39171i, -2242i, arg_0.a)), ~vec3<u32>(25868u, 4294967295u, 57574u)).x), !(_wgslsmith_clamp_u32(var_1, arg_0.c.x, u_input.b.x) != 87606u)), func_2(arg_0.e.a.x, Struct_2(u_input.a << (arg_0.c.x % 32u), _wgslsmith_f_op_f32(-1300f - _wgslsmith_div_f32(var_0, -860f)), ~vec2<u32>(arg_0.c.x, u_input.b.x), arg_0.e.a.yzw, arg_0.e), Struct_3(52830u, ~(vec2<i32>(-57084i, arg_0.a) & vec2<i32>(arg_0.a, -2147483647i)))).e.a.wx, arg_0.d.xx);
    return vec2<u32>(36407u, arg_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 22>();
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, global3.x, global3.x, 849f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-912f, 770f, -1457f, 189f), vec4<f32>(global3.x, -372f, global3.x, global3.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x)))))));
    var var_0 = Struct_3(~u_input.b.x, _wgslsmith_mod_vec2_i32(-func_1(vec4<i32>(2147483647i, u_input.a, -17263i, -6158i), vec4<i32>(24279i, 39974i, 0i, u_input.a), vec3<f32>(global3.x, global3.x, global3.x)), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(21525i, u_input.a), _wgslsmith_sub_vec2_i32(vec2<i32>(288i, -43632i), vec2<i32>(u_input.a, 17451i))), max(vec2<i32>(1i, -77728i) | vec2<i32>(1i, u_input.a), ~vec2<i32>(u_input.a, 69358i)))));
    let var_1 = global2.x;
    var var_2 = Struct_4(vec2<i32>(7232i, _wgslsmith_add_i32(-1008i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, u_input.a, 2147483647i), vec3<i32>(1i, u_input.a, -29482i)))) >> (~func_4(func_2(global2.x, Struct_2(67830i, 616f, vec2<u32>(var_0.a, 16486u), vec3<bool>(false, false, global2.x), Struct_1(vec4<bool>(global2.x, true, true, true), global3.x)), Struct_3(u_input.d, var_0.b))) % vec2<u32>(32u)), u_input.a, ~_wgslsmith_mult_vec3_u32(min(vec3<u32>(1u, 1u, 2646u), vec3<u32>(var_0.a, 1u, var_0.a)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(66688u, 0u, 119694u), vec3<u32>(73943u, 1u, 16117u), vec3<u32>(35401u, 20764u, var_0.a)), ~firstLeadingBit(vec3<u32>(u_input.c, 0u, 76595u))), !vec4<bool>(true, !(77449u <= var_0.a), true, !(global2.x | global2.x)));
    var var_3 = vec4<i32>(~(~(-37075i)), ~(~21921i), var_0.b.x, _wgslsmith_mod_i32(max(~45716i, select(0i, -6792i, true)), ~(12496i << (1u % 32u)))) & ~(-max(vec4<i32>(2147483647i, var_2.a.x, var_2.b, var_0.b.x), vec4<i32>(u_input.a, -1i, -2147483647i, u_input.a) << (vec4<u32>(var_2.c.x, var_2.c.x, 12919u, 4294967295u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(func_1(~vec4<i32>(u_input.a, var_0.b.x, var_3.x, var_3.x), ~firstLeadingBit(vec4<i32>(71688i, 1i, u_input.a, var_0.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-135f, global3.x, 1100f) + global3.yww) + vec3<f32>(global3.x, -178f, global3.x))), var_2.a), ~_wgslsmith_add_i32(-u_input.a & (var_0.b.x << (u_input.b.x % 32u)), u_input.a ^ var_2.b));
}

