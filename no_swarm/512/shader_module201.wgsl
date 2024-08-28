struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, true), vec2<u32>(4294967295u, 33190u), vec3<f32>(2584f, 929f, 725f), 75677i);

var<private> global2: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(-452f, -880f, 130f, -1948f), vec4<f32>(-509f, 184f, 1203f, -231f), vec4<f32>(-485f, 1950f, -806f, 1451f), vec4<f32>(-643f, -753f, 678f, -1898f), vec4<f32>(601f, -1114f, 1000f, -653f), vec4<f32>(2050f, 1351f, -1328f, 1386f), vec4<f32>(882f, 2428f, -417f, 634f), vec4<f32>(-546f, -492f, -628f, 2535f), vec4<f32>(334f, -866f, 1297f, 537f), vec4<f32>(-1141f, 384f, -909f, 1000f), vec4<f32>(545f, -1119f, -2267f, -493f), vec4<f32>(-1000f, -880f, -844f, 690f), vec4<f32>(-1792f, 426f, -367f, -820f), vec4<f32>(1227f, 783f, 394f, -547f), vec4<f32>(-1000f, -989f, -468f, -329f), vec4<f32>(632f, -929f, 1451f, 891f), vec4<f32>(-583f, -160f, -284f, -1000f), vec4<f32>(281f, 488f, 271f, -127f), vec4<f32>(1685f, -281f, -425f, -1163f), vec4<f32>(381f, -2336f, -172f, 1000f), vec4<f32>(-933f, -2901f, 1000f, -1384f), vec4<f32>(-596f, -1653f, -1527f, -173f), vec4<f32>(-181f, -1515f, 886f, -481f), vec4<f32>(1325f, 270f, -291f, -442f), vec4<f32>(617f, -136f, 1126f, -173f), vec4<f32>(-1648f, 1000f, -250f, -335f), vec4<f32>(-341f, 1960f, 675f, -1085f), vec4<f32>(-780f, 1256f, -1912f, 623f), vec4<f32>(-838f, 796f, 322f, 1510f), vec4<f32>(1034f, -1000f, 1753f, -118f), vec4<f32>(-509f, 849f, 179f, -1600f), vec4<f32>(561f, 1000f, -488f, -1635f));

var<private> global3: array<vec2<i32>, 11>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(reverseBits(u_input.d.x), ~arg_1.a.b.x) & ~_wgslsmith_sub_u32(max(arg_1.a.b.x, 109422u), ~0u), 24812u, 403u, _wgslsmith_clamp_u32(~global1.b.x << (6320u % 32u), abs(48837u) | _wgslsmith_mod_u32(abs(37952u), _wgslsmith_sub_u32(4294967295u, arg_1.b)), ~global1.b.x));
    global3 = array<vec2<i32>, 11>();
    global2 = array<vec4<f32>, 32>();
    global2 = array<vec4<f32>, 32>();
    var var_1 = 2147483647i;
    return arg_1;
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -275f);
    let var_1 = -8488i < (-84028i << ((57229u | firstLeadingBit(global1.b.x)) % 32u));
    global2 = array<vec4<f32>, 32>();
    let var_2 = func_1(vec2<i32>(countOneBits(-23129i), ~min(u_input.c.x, 33800i) | -(i32(-1i) * -21181i)), Struct_2(Struct_1(global1.a, func_1(u_input.c, func_1(vec2<i32>(2147483647i, 1i), Struct_2(Struct_1(vec2<bool>(true, var_1), vec2<u32>(4294967295u, 52516u), vec3<f32>(global1.c.x, global1.c.x, global1.c.x), -1i), 30604u), 430f), _wgslsmith_f_op_f32(f32(-1f) * -758f)).a.b, vec3<f32>(global1.c.x, _wgslsmith_f_op_f32(round(global1.c.x)), global1.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.d, 26948i), firstLeadingBit(vec2<i32>(global1.d, global1.d)))), ~(~(~global1.b.x))), -934f).a;
    global1 = Struct_1(!vec2<bool>(all(!vec2<bool>(var_2.a.x, false)), _wgslsmith_f_op_f32(var_2.c.x * -523f) >= -848f), _wgslsmith_sub_vec2_u32(vec2<u32>(abs(1u), ~0u), select(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), ~var_2.b), u_input.d.zy, func_1(global3[_wgslsmith_index_u32(u_input.b, 11u)] & u_input.c, func_1(vec2<i32>(-11520i, 1i), Struct_2(var_2, 4826u), global1.c.x), _wgslsmith_f_op_f32(ceil(1271f))).a.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-168f)) * var_2.c.x), var_2.c.x, global1.c.x)), _wgslsmith_add_i32(~(-2147483647i), u_input.c.x));
    return ~(-9694i);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<i32> {
    global0 = ~_wgslsmith_div_i32(~1i, abs(_wgslsmith_sub_i32(2147483647i, 8890i))) ^ func_3();
    var var_0 = func_1(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e, 20180u), 11u)], Struct_2(Struct_1(!(!vec2<bool>(arg_2.a.x, false)), firstTrailingBit(~arg_1.zz), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global1.c))), -global1.d), 25840u), arg_2.c.x);
    let var_1 = ~_wgslsmith_sub_vec2_u32(var_0.a.b, select(~global1.b, arg_1.xx, vec2<bool>(true, !global1.a.x)));
    global2 = array<vec4<f32>, 32>();
    let var_2 = Struct_2(var_0.a, 1u);
    return vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, 0i, -29142i), abs(vec3<i32>(0i, global1.d, var_2.a.d))), -_wgslsmith_mult_i32(-5005i, var_2.a.d), var_0.a.d, ~global1.d);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = select(vec2<bool>(false, false), !(!vec2<bool>(true, !arg_2.a.x)), any(!select(select(vec3<bool>(arg_2.a.x, arg_1.a.a.a.x, arg_1.a.a.a.x), vec3<bool>(false, arg_1.a.a.a.x, true), true), vec3<bool>(true, arg_2.a.x, global1.a.x), true)));
    let var_1 = ~vec2<i32>(select(-1i, -1i, false), -11128i >> (1u % 32u));
    let var_2 = arg_1.a;
    let var_3 = reverseBits(~_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.d.wyw), u_input.d.www)) <= ~0u;
    let var_4 = ~_wgslsmith_add_i32(abs(1i) | func_1(u_input.c, func_1(arg_1.b.zz, Struct_2(Struct_1(vec2<bool>(false, false), arg_2.b, arg_1.a.a.c, 2147483647i), u_input.a), arg_2.c.x), global1.c.x).a.d, global1.d);
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(global1.d, u_input.c.x, global1.d, max(i32(-1i) * -67748i, _wgslsmith_div_i32(u_input.c.x, 34117i))) & abs(-vec4<i32>(global1.d, 21395i, global1.d, global1.d)), func_4(false, Struct_3(func_1(u_input.c, Struct_2(Struct_1(global1.a, global1.b, vec3<f32>(global1.c.x, global1.c.x, 150f), 2147483647i), u_input.b), _wgslsmith_f_op_f32(global1.c.x * global1.c.x)), func_2(vec3<f32>(567f, -1000f, global1.c.x), vec3<u32>(1u, u_input.e, global1.b.x), func_1(u_input.c, Struct_2(Struct_1(global1.a, global1.b, vec3<f32>(-1951f, global1.c.x, global1.c.x), u_input.c.x), u_input.e), 222f).a), global1.c.x), Struct_1(vec2<bool>(global1.a.x, any(global1.a)), _wgslsmith_clamp_vec2_u32(abs(global1.b), vec2<u32>(u_input.b, 14805u) ^ vec2<u32>(0u, global1.b.x), global1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global1.c, vec3<f32>(-1000f, global1.c.x, global1.c.x)))), countOneBits(-46749i) & func_1(vec2<i32>(u_input.c.x, 1i), Struct_2(Struct_1(vec2<bool>(false, false), vec2<u32>(u_input.d.x, 4294967295u), vec3<f32>(-1945f, 212f, global1.c.x), u_input.c.x), u_input.a), global1.c.x).a.d)));
    global2 = array<vec4<f32>, 32>();
    let var_1 = Struct_2(func_1(countOneBits(vec2<i32>(global1.d, 49889i)), func_1(vec2<i32>(-12750i, ~(-22693i)), func_1(~var_0.xz, func_1(u_input.c, Struct_2(Struct_1(global1.a, global1.b, vec3<f32>(457f, -2440f, 1113f), var_0.x), u_input.a), 1000f), _wgslsmith_f_op_f32(f32(-1f) * -435f)), global1.c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.c.x, 211f)))))).a, global1.b.x);
    let var_2 = func_1(vec2<i32>(var_1.a.d, firstTrailingBit(countOneBits(var_1.a.d))) ^ global3[_wgslsmith_index_u32(0u, 11u)], var_1, -1000f).a;
    let var_3 = var_1.a.a.x;
    global3 = array<vec2<i32>, 11>();
    global2 = array<vec4<f32>, 32>();
    let var_4 = var_2.c.zy;
    let var_5 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(1i, var_2.d, vec4<f32>(-242f, 1855f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(619f))))), var_5.c.x), global1.d);
}

