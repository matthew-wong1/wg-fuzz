struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-618f, -649f, -1113f, -401f), vec4<f32>(-635f, -1000f, 173f, 1000f), vec4<f32>(856f, -247f, -154f, -1845f), vec4<f32>(-528f, 487f, 1000f, 1286f), vec4<f32>(-1000f, -1500f, 678f, 841f), vec4<f32>(1245f, -369f, -979f, -397f), vec4<f32>(-267f, 439f, -1000f, -888f));

var<private> global1: i32;

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false));

var<private> global3: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true));

var<private> global4: Struct_4 = Struct_4(4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_1 = -613f;
    var var_2 = ~(global4.a >> (_wgslsmith_sub_u32(_wgslsmith_add_u32(reverseBits(global4.a), global4.a), 4294967295u) % 32u));
    return global2[_wgslsmith_index_u32(26848u, 18u)];
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: vec4<u32>) -> u32 {
    let var_0 = arg_0.xzw;
    global4 = Struct_4(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(17799u, arg_2.x, 4294967295u) ^ vec3<u32>(global4.a, 1u, arg_2.x)), ~arg_2.wyx), ~_wgslsmith_add_u32(~global4.a, 97252u)));
    global3 = array<vec4<bool>, 29>();
    var var_1 = arg_1.c;
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 172f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1120f), -533f, any(arg_0.wzy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1725f * -889f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1975f, 887f, -809f), vec3<f32>(666f, 2052f, -1695f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-902f, 982f, -272f), vec3<f32>(1813f, -231f, -1290f), arg_1.c.b.a)))), !vec3<bool>(!arg_1.c.a.a, false, func_2().a)))));
    return ~1u;
}

fn func_1() -> bool {
    let var_0 = func_3(vec4<bool>(true, !((u_input.a >= 2147483647i) & true), true, any(vec3<bool>(true, true, all(vec3<bool>(true, true, false))))), Struct_5(~(vec2<u32>(global4.a, global4.a) & ~vec2<u32>(56599u, global4.a)), Struct_4(reverseBits(86999u)), Struct_2(func_2(), func_2())), ~((~vec4<u32>(53196u, 1u, global4.a, 1u) | firstTrailingBit(vec4<u32>(526u, 105423u, 1u, 0u))) << (vec4<u32>(global4.a | 14779u, 58478u, ~67735u, 0u) % vec4<u32>(32u))));
    var var_1 = min(_wgslsmith_mult_vec4_i32(~(~vec4<i32>(-2147483647i, u_input.a, -18239i, -2147483647i) << (countOneBits(vec4<u32>(655u, 4294967295u, 4294967295u, 0u)) % vec4<u32>(32u))), abs(countOneBits(vec4<i32>(1i, 11919i, -1i, u_input.a)))), countOneBits(_wgslsmith_sub_vec4_i32(~abs(vec4<i32>(-19204i, u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(7959i, -10863i, 1i, -1i), vec4<i32>(-2147483647i, 0i, u_input.a, u_input.a)), ~vec4<i32>(0i, 15729i, u_input.a, u_input.a)))));
    var var_2 = select(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), global3[_wgslsmith_index_u32(~58778u, 29u)], true), vec4<bool>(true, true, true, true), global3[_wgslsmith_index_u32(1u, 29u)]);
    let var_3 = Struct_2(Struct_1(true), global2[_wgslsmith_index_u32(global4.a, 18u)]);
    var var_4 = max(~abs(4294967295u), ~var_0);
    return true;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = arg_0.b.a;
    global1 = arg_2;
    var var_1 = arg_3.a;
    var var_2 = _wgslsmith_add_u32(global4.a, _wgslsmith_dot_vec4_u32(vec4<u32>(~(~global4.a), ~(10232u >> (global4.a % 32u)), ~_wgslsmith_sub_u32(global4.a, 50804u), 4294967295u), ~countOneBits(~vec4<u32>(4294967295u, 1u, global4.a, 4294967295u))));
    var var_3 = 1u;
    return Struct_3(global4.a, 1000f, _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(0i, u_input.a) & arg_2, 5789i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(Struct_1(false), global2[_wgslsmith_index_u32(4294967295u, 18u)]), global0[_wgslsmith_index_u32(4294967295u, 7u)], 1i, Struct_1((all(vec3<bool>(true, true, false)) || true) | !func_1()));
    global4 = Struct_4(7878u);
    var var_1 = (~_wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.a, global4.a, global4.a, global4.a), abs(vec4<u32>(var_0.a, 0u, global4.a, 44640u))) << (vec4<u32>(21557u, firstTrailingBit(func_3(global3[_wgslsmith_index_u32(0u, 29u)], Struct_5(vec2<u32>(global4.a, global4.a), Struct_4(var_0.a), Struct_2(global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(var_0.a, 18u)])), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 32489u))), ~global4.a, _wgslsmith_div_u32(_wgslsmith_mod_u32(28207u, global4.a), 37181u)) % vec4<u32>(32u))) << (vec4<u32>(global4.a | 27217u, _wgslsmith_sub_u32(firstLeadingBit(global4.a), firstLeadingBit(global4.a)) >> (global4.a % 32u), 0u, var_0.a) % vec4<u32>(32u));
    let var_2 = var_1.x;
    let var_3 = func_1();
    var var_4 = var_0;
    var var_5 = Struct_5(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_0.a) | vec2<u32>(0u, global4.a), var_1.wz) & ~vec2<u32>(firstTrailingBit(var_1.x), var_4.a), Struct_4(~1u), Struct_2(func_2(), global2[_wgslsmith_index_u32(~var_1.x, 18u)]));
    let var_6 = vec4<bool>(all(select(!select(vec3<bool>(var_5.c.b.a, var_3, var_3), vec3<bool>(var_3, true, true), vec3<bool>(var_3, var_5.c.b.a, false)), vec3<bool>(true, all(vec3<bool>(false, true, var_3)), true), var_5.c.a.a)), var_1.x >= (var_1.x ^ var_1.x), var_5.c.a.a, any(vec3<bool>(!(var_3 && true), !(!var_5.c.a.a), true | var_5.c.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c, -634f, ~vec4<u32>(var_4.a, min(1u, 0u), ~var_4.a, max(31559u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), var_5.a))));
}

