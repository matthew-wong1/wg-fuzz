struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 18>;

var<private> global1: Struct_4;

var<private> global2: f32 = 1320f;

var<private> global3: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true));

var<private> global4: array<bool, 20>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = array<Struct_5, 18>();
    let var_0 = Struct_4(_wgslsmith_add_vec3_u32(max(vec3<u32>(4294967295u, global1.a.x, u_input.c.x), global1.a), global1.a) ^ _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, 0u, 1u), vec3<u32>(u_input.c.x, global1.a.x, 31059u)), select(vec3<u32>(100047u, global1.a.x, u_input.c.x), u_input.c.wyw, vec3<bool>(false, global4[_wgslsmith_index_u32(0u, 20u)], global4[_wgslsmith_index_u32(u_input.c.x, 20u)]))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 18u)];
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(253f))), 887f))), _wgslsmith_f_op_f32(ceil(-461f)));
    let var_3 = var_0;
    return Struct_1(all(!(!select(vec2<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 20u)], true), vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 20u)], var_1.b.a), false))), min(var_1.b.b, ~var_1.a.ywy), _wgslsmith_mod_i32(0i, -arg_0 | arg_0));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_5, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_4(vec3<u32>(~firstLeadingBit(~8379u), 4294967295u, _wgslsmith_div_u32(~(78849u & u_input.c.x), 65572u)));
    var var_1 = Struct_2(arg_1.a, arg_3.b, arg_3.c);
    global2 = _wgslsmith_f_op_f32(abs(1f));
    var var_2 = u_input.b;
    var var_3 = var_1.a;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(max(u_input.b, max(20914i, 3238i)), -12842i, -1i, _wgslsmith_mult_i32(arg_3.b.x, i32(-1i) * -29206i) << ((~u_input.c.x << (reverseBits(4294967295u) % 32u)) % 32u)), arg_3.b);
}

fn func_1() -> vec3<i32> {
    let var_0 = func_2(0i);
    global4 = array<bool, 20>();
    var var_1 = func_2(_wgslsmith_sub_i32(_wgslsmith_add_i32(1i, -1i), 25178i));
    global3 = array<vec4<bool>, 32>();
    var var_2 = var_1.c;
    return vec3<i32>(0i, func_3(func_2(_wgslsmith_div_i32(-1i, var_1.b.x & -35009i)), Struct_2(_wgslsmith_f_op_f32(564f - _wgslsmith_f_op_f32(round(-1811f))), vec4<i32>(select(-59435i, 2147483647i, global4[_wgslsmith_index_u32(0u, 20u)]), -1i, u_input.a.x, var_1.b.x), Struct_1(!var_0.a, vec3<i32>(-1i, -2507i, u_input.b), _wgslsmith_dot_vec3_i32(var_1.b, vec3<i32>(u_input.b, u_input.a.x, -1i)))), global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(6516u, 50471u, 0u), u_input.c.zyw)) | global1.a.x, 18u)], Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -316f)), -firstTrailingBit(vec4<i32>(var_0.c, var_0.b.x, u_input.a.x, u_input.b)), func_2(-29549i))), ~1i ^ var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~vec2<i32>(1i, 1i));
    var_0 = u_input.a.zz;
    var var_1 = ~u_input.c.ywy;
    let var_2 = Struct_5(-_wgslsmith_mult_vec4_i32((vec4<i32>(-2147483647i, 1i, 46089i, 1i) & vec4<i32>(var_0.x, 79427i, -7750i, -2147483647i)) ^ max(vec4<i32>(-1i, u_input.a.x, var_0.x, var_0.x), vec4<i32>(-5653i, -48723i, u_input.b, -1i)), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, -1i, -17423i, 0i), vec4<i32>(2147483647i, u_input.a.x, var_0.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 0i, 0i)))), Struct_1(false, max(vec3<i32>(abs(u_input.b), i32(-1i) * -7479i, ~u_input.a.x), func_1()), min(abs(17299i), -(~11532i))));
    var var_3 = _wgslsmith_clamp_u32(u_input.c.x << (u_input.c.x % 32u), 1u, 58808u);
    var var_4 = !(!any(select(vec2<bool>(global4[_wgslsmith_index_u32(34574u, 20u)], global4[_wgslsmith_index_u32(48551u, 20u)]), vec2<bool>(global4[_wgslsmith_index_u32(global1.a.x, 20u)], false), vec2<bool>(var_2.b.a, true))) || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-703f * 1109f)) > _wgslsmith_div_f32(-914f, _wgslsmith_f_op_f32(ceil(-1082f)))));
    var var_5 = vec2<i32>(1i, ~_wgslsmith_div_i32(-1i, 6528i)) | (vec2<i32>(_wgslsmith_clamp_i32(func_2(u_input.b).c, ~var_2.b.b.x, -2147483647i), 2147483647i) & min(~(~vec2<i32>(var_2.a.x, var_0.x)), var_2.b.b.xz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1270f, -820f, 1000f), _wgslsmith_div_vec4_f32(vec4<f32>(-1595f, 322f, -623f, -836f), vec4<f32>(1104f, -115f, -1792f, -1064f))))), vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(1288f + -138f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(565f * -662f), 508f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - 2301f))), -876f))), ~global1.a.zy, ~u_input.c, var_1.x ^ (~select(71001u, global1.a.x, false) | 1u), global1.a.x);
}

