struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 70503u;

var<private> global1: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(vec4<f32>(1977f, -906f, -650f, -2056f), Struct_1(vec2<i32>(13845i, 2147483647i), 1000f, vec2<u32>(108963u, 8363u), 1i, true)), Struct_5(vec4<f32>(1351f, 2487f, 347f, -270f), Struct_1(vec2<i32>(2147483647i, 40985i), 157f, vec2<u32>(6950u, 36529u), -1i, true)), Struct_5(vec4<f32>(829f, -1117f, 1254f, -1439f), Struct_1(vec2<i32>(6183i, i32(-2147483648)), -1159f, vec2<u32>(1u, 5722u), -15709i, true)), Struct_5(vec4<f32>(1099f, -584f, 274f, 883f), Struct_1(vec2<i32>(12768i, 0i), 1687f, vec2<u32>(18415u, 4294967295u), -8844i, true)), Struct_5(vec4<f32>(399f, -1000f, -1111f, -2012f), Struct_1(vec2<i32>(i32(-2147483648), -1i), -1149f, vec2<u32>(1u, 37075u), -5238i, true)), Struct_5(vec4<f32>(-1812f, 1000f, 254f, 1048f), Struct_1(vec2<i32>(1i, 36610i), -718f, vec2<u32>(0u, 17870u), 0i, false)), Struct_5(vec4<f32>(635f, 583f, 1000f, -1000f), Struct_1(vec2<i32>(13476i, 0i), -153f, vec2<u32>(14163u, 75505u), -11742i, false)), Struct_5(vec4<f32>(-257f, 401f, 649f, 289f), Struct_1(vec2<i32>(-33263i, i32(-2147483648)), 1698f, vec2<u32>(1u, 1u), 1i, false)), Struct_5(vec4<f32>(-516f, 326f, 1140f, 813f), Struct_1(vec2<i32>(11566i, 63794i), 1536f, vec2<u32>(4294967295u, 46919u), 10582i, true)), Struct_5(vec4<f32>(-250f, -1000f, -901f, 293f), Struct_1(vec2<i32>(48888i, 17342i), -868f, vec2<u32>(22118u, 4294967295u), 5420i, false)), Struct_5(vec4<f32>(281f, 600f, 938f, -1040f), Struct_1(vec2<i32>(20233i, i32(-2147483648)), -569f, vec2<u32>(1u, 0u), -1i, false)), Struct_5(vec4<f32>(-985f, -524f, 2106f, -810f), Struct_1(vec2<i32>(1i, i32(-2147483648)), 1096f, vec2<u32>(4294967295u, 1u), 2147483647i, true)), Struct_5(vec4<f32>(-765f, 461f, 933f, 2028f), Struct_1(vec2<i32>(1i, -24900i), 2384f, vec2<u32>(4294967295u, 49277u), i32(-2147483648), false)), Struct_5(vec4<f32>(-373f, -187f, 2273f, -164f), Struct_1(vec2<i32>(0i, -5968i), 172f, vec2<u32>(78666u, 47991u), 20900i, false)));

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<i32>(-1i, 0i), -1249f, vec2<u32>(18578u, 61337u), 0i, true), Struct_1(vec2<i32>(72915i, -16473i), 453f, vec2<u32>(39848u, 0u), 1i, false), Struct_1(vec2<i32>(-24453i, -1i), -1197f, vec2<u32>(1u, 1u), 2147483647i, false), Struct_1(vec2<i32>(0i, 0i), 789f, vec2<u32>(81927u, 4294967295u), 1i, true), Struct_1(vec2<i32>(i32(-2147483648), 24165i), 896f, vec2<u32>(1u, 1u), -3431i, false), Struct_1(vec2<i32>(-39936i, -24844i), 1000f, vec2<u32>(51288u, 4394u), 7040i, true));

var<private> global3: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(36412u, 53377u, 27866u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(0u, 0u, 10012u));

var<private> global4: Struct_1 = Struct_1(vec2<i32>(-61453i, -387i), -116f, vec2<u32>(24917u, 0u), 0i, true);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> i32 {
    global1 = array<Struct_5, 14>();
    global3 = array<vec3<u32>, 3>();
    let var_0 = vec3<i32>(countOneBits(-29468i), 48114i, global4.a.x);
    var var_1 = u_input.b;
    let var_2 = any(vec2<bool>(false, true));
    return _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_sub_vec4_i32((u_input.b | vec4<i32>(var_1.x, global4.d, -4033i, 0i)) << (abs(vec4<u32>(1u, u_input.e, global4.c.x, u_input.e)) % vec4<u32>(32u)), reverseBits(vec4<i32>(49698i, -2147483647i, global4.d, -2147483647i)))), ((vec4<i32>(-62118i, var_0.x, -2147483647i, global4.a.x) ^ _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(global4.a.x, -32298i, -20749i, -1i))) << (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.e, global4.c.x, 44103u), ~vec4<u32>(26514u, 4294967295u, 50741u, global4.c.x)) % vec4<u32>(32u))) >> (~vec4<u32>(select(29282u, u_input.c, false), ~1u, 4294967295u, 0u) % vec4<u32>(32u)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(vec2<i32>(2147483647i, func_3(!any(vec4<bool>(global4.e, false, false, false)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1279f, -443f)))), firstTrailingBit(global4.c), u_input.d.x, true);
    global0 = 1u;
    global1 = array<Struct_5, 14>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a.x, 1i), vec2<i32>(var_0.a.x, global4.a.x), vec2<i32>(21385i, -1i))), u_input.d.zz), -1051f, select(global4.c, ~(global4.c | vec2<u32>(4294967295u, 13049u)), vec2<bool>(true, var_0.e == true)), ~(i32(-1i) * -global4.a.x), !all(vec3<bool>(false, var_0.e, global4.e))));
    let var_2 = 0u ^ _wgslsmith_mod_u32(~(~_wgslsmith_dot_vec2_u32(global4.c, var_1.a.c)), countOneBits(38115u));
    return Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global4.b))))), ~var_0.c, select(0i & _wgslsmith_mod_i32(var_0.d, -25437i), -firstLeadingBit(1i), true), var_1.a.e));
}

fn func_1() -> f32 {
    let var_0 = Struct_4(func_2(), _wgslsmith_dot_vec2_u32(abs(~(vec2<u32>(global4.c.x, 0u) | vec2<u32>(u_input.c, global4.c.x))), max(global4.c ^ ~vec2<u32>(global4.c.x, u_input.c), ~(vec2<u32>(u_input.e, 4294967295u) | global4.c))));
    let var_1 = u_input.d.x;
    global4 = global2[_wgslsmith_index_u32(~func_2().a.c.x, 6u)];
    var var_2 = ~0u;
    var var_3 = 1u;
    return _wgslsmith_f_op_f32(f32(-1f) * -1066f);
}

fn func_4(arg_0: vec3<f32>, arg_1: u32) -> Struct_1 {
    let var_0 = 3631u;
    global2 = array<Struct_1, 6>();
    global4 = global2[_wgslsmith_index_u32(arg_1, 6u)];
    let var_1 = Struct_4(func_2(), var_0);
    var var_2 = ~(min(vec4<u32>(global4.c.x, 1u, u_input.c, var_1.a.a.c.x) >> (~vec4<u32>(u_input.e, 0u, 0u, u_input.e) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 1u, var_0, 1u), countOneBits(vec4<u32>(1u, u_input.c, var_1.a.a.c.x, 24082u)))) ^ vec4<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, arg_1), vec2<u32>(7500u, var_0)), ~u_input.e), ~40383u, ~_wgslsmith_div_u32(arg_1, 4294967295u), ~abs(global4.c.x)));
    return var_1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global4.b, -539f, -232f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(539f, global4.b, 382f)))) - vec3<f32>(_wgslsmith_f_op_f32(func_1()), 1556f, -908f)), ~(~0u));
    let var_1 = vec4<u32>(~u_input.e, ~global4.c.x, 0u, u_input.e);
    global2 = array<Struct_1, 6>();
    var var_2 = u_input.c;
    var_2 = ~(~1u);
    var var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-351f, global4.b, global4.b, 1322f)))), vec4<f32>(-400f, _wgslsmith_f_op_f32(select(2969f, -125f, var_0.e)), func_4(vec3<f32>(416f, global4.b, 1000f), var_1.x).b, _wgslsmith_f_op_f32(floor(1080f))), false)))), func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1336f * -1023f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(var_0.b - 1000f)), _wgslsmith_div_f32(var_0.b, -1000f)), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -287f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global4.b)) * 1837f)))), _wgslsmith_div_vec2_u32(select(vec2<u32>(1u, func_4(var_3.a.wwx, 1u).c.x), abs(~vec2<u32>(var_0.c.x, var_1.x)), true), ~_wgslsmith_sub_vec2_u32(global4.c, var_1.wy)), u_input.d, u_input.b);
}

