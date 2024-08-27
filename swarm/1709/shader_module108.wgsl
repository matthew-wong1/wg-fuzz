struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(2121f, -370f, 955f, -845f, -230f, 657f, -1242f, -1224f, 486f, -2327f, -1000f, 1601f, -2036f, -752f, 156f, -1000f, 241f, 663f, -145f);

var<private> global1: array<f32, 1>;

var<private> global2: vec3<u32> = vec3<u32>(1u, 14369u, 1u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> vec3<bool> {
    var var_0 = -2147483647i;
    let var_1 = Struct_5(Struct_1(56414u, ~vec4<i32>(1i, select(u_input.c.x, 42993i, false), arg_0, ~u_input.c.x)), -2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 19u)], 1069f))))))), Struct_4(Struct_1(u_input.b, vec4<i32>(-2147483647i, firstLeadingBit(u_input.c.x), -2147483647i, _wgslsmith_mult_i32(u_input.a, u_input.c.x))), vec3<bool>(false, select(false, true, true), true), Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, global2.x, u_input.b), vec3<u32>(0u, u_input.b, global2.x)), vec3<u32>(6601u, 40563u, 4294967295u)), vec4<i32>(4056i, _wgslsmith_mod_i32(u_input.a, arg_0), 0i, arg_0)), Struct_1(reverseBits(95472u), vec4<i32>(firstTrailingBit(u_input.c.x), -24801i, arg_0, 45202i ^ arg_0)), u_input.c));
    let var_2 = var_1.c.x;
    var var_3 = var_1.d;
    var var_4 = !vec4<bool>(any(vec4<bool>(!var_3.b.x, var_3.b.x, var_3.b.x, true)), any(select(vec3<bool>(var_3.b.x, var_3.b.x, true), vec3<bool>(var_1.d.b.x, false, var_3.b.x), vec3<bool>(var_3.b.x, var_1.d.b.x, false))), -1i != (countOneBits(u_input.c.x) << (var_3.c.a % 32u)), all(var_3.b));
    return !vec3<bool>(max(abs(u_input.c.x), u_input.a) > _wgslsmith_mod_i32(~u_input.a, abs(var_1.a.b.x)), true, all(vec4<bool>(select(true, false, var_4.x), true, true, select(false, var_3.b.x, true))));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: vec3<i32>) -> u32 {
    var var_0 = Struct_4(Struct_1(_wgslsmith_add_u32(u_input.b, global2.x), _wgslsmith_div_vec4_i32(vec4<i32>(-38408i, -1i, -23050i, u_input.c.x) & firstTrailingBit(vec4<i32>(0i, arg_3.x, arg_3.x, -1i)), reverseBits(min(vec4<i32>(11230i, 38364i, u_input.a, 7701i), vec4<i32>(arg_3.x, u_input.c.x, u_input.a, u_input.a))))), func_3(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, ~arg_3.x)), Struct_1(~58449u, -_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_3.x, -11267i, 2147483647i, u_input.a), vec4<i32>(arg_3.x, -4279i, u_input.a, 1i)), ~vec4<i32>(1i, arg_3.x, -27024i, -22463i))), Struct_1(_wgslsmith_div_u32(global2.x, ~u_input.b) ^ min(global2.x, ~34971u), ~abs(vec4<i32>(0i, -22059i, u_input.a, 2147483647i))), -firstTrailingBit(vec2<i32>(-1i, 1i)));
    return _wgslsmith_div_u32(u_input.b >> (_wgslsmith_add_u32(global2.x, countOneBits(54645u)) % 32u), arg_2.x);
}

fn func_1(arg_0: vec3<u32>) -> vec3<u32> {
    global1 = array<f32, 1>();
    global2 = _wgslsmith_mult_vec3_u32(arg_0, select(~reverseBits(arg_0), ~(~arg_0 & vec3<u32>(arg_0.x, 0u, 13516u)), !(2147483647i == u_input.a) | true));
    global2 = ~vec3<u32>(_wgslsmith_mod_u32(firstTrailingBit(arg_0.x << (u_input.b % 32u)), min(~24229u, u_input.b)), func_2(true, vec4<bool>(true, true, true, true), min(~vec4<u32>(arg_0.x, global2.x, 18215u, global2.x), reverseBits(vec4<u32>(11817u, global2.x, u_input.b, u_input.b))), reverseBits(select(vec3<i32>(0i, u_input.c.x, 40922i), vec3<i32>(u_input.a, 0i, -35789i), vec3<bool>(true, true, true)))), _wgslsmith_dot_vec2_u32(~vec2<u32>(global2.x, u_input.b), global2.xz) | abs(global2.x));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(435f, 1022f, 291f, global1[_wgslsmith_index_u32(u_input.b, 1u)])), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 363f, -528f, 1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 331f, global0[_wgslsmith_index_u32(0u, 19u)], -820f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(global2.x, 19u)], -1355f, 206f, global0[_wgslsmith_index_u32(155426u, 19u)]) - vec4<f32>(global0[_wgslsmith_index_u32(arg_0.x, 19u)], global1[_wgslsmith_index_u32(88367u, 1u)], -998f, global0[_wgslsmith_index_u32(global2.x, 19u)]))), vec4<bool>(any(vec4<bool>(false, true, false, false)), any(vec3<bool>(false, false, true)), func_3(2147483647i).x, false))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], -508f, global0[_wgslsmith_index_u32(arg_0.x, 19u)], -375f), vec4<f32>(global0[_wgslsmith_index_u32(arg_0.x, 19u)], global0[_wgslsmith_index_u32(arg_0.x, 19u)], -976f, global0[_wgslsmith_index_u32(0u, 19u)])))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(21810u, 1u)], global1[_wgslsmith_index_u32(arg_0.x, 1u)], global1[_wgslsmith_index_u32(u_input.b, 1u)])))))));
    let var_1 = ~7424u;
    return vec3<u32>(reverseBits(~_wgslsmith_mod_u32(~var_1, arg_0.x)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(56497u, var_1), 38063u << (global2.x % 32u), firstLeadingBit(4294967295u)), _wgslsmith_sub_u32(var_1, 16572u) & _wgslsmith_clamp_u32(u_input.b, 44860u, 4294967295u)) >> (var_1 % 32u), ~(~global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 19>();
    let var_0 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(func_1(vec3<u32>(1952u, u_input.b, 0u)), reverseBits(vec3<u32>(84088u, 0u, u_input.b))), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 4294967295u, global2.x), vec3<u32>(0u, global2.x, global2.x)), vec3<u32>(u_input.b, u_input.b, 0u) | vec3<u32>(0u, u_input.b, 1u))), ~(func_1(vec3<u32>(43285u, global2.x, 24911u)) & (vec3<u32>(1u, global2.x, u_input.b) << (vec3<u32>(global2.x, global2.x, 1u) % vec3<u32>(32u)))));
    let var_1 = Struct_4(Struct_1(var_0.x, ~vec4<i32>(~0i, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), firstLeadingBit(u_input.a), u_input.c.x)), select(vec3<bool>(true, any(vec2<bool>(true, true)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true))), vec3<bool>(false, true, any(vec3<bool>(false, false, true))), !(!any(vec4<bool>(false, true, false, true)))), Struct_1(_wgslsmith_clamp_u32(5795u, global2.x, ~(u_input.b ^ 8057u)), -vec4<i32>(_wgslsmith_add_i32(u_input.c.x, 81i), 21654i, _wgslsmith_dot_vec4_i32(vec4<i32>(31061i, u_input.a, u_input.c.x, -24696i), vec4<i32>(u_input.a, u_input.c.x, 1i, 23997i)), ~1i)), Struct_1(_wgslsmith_sub_u32(u_input.b, min(~global2.x, var_0.x)), _wgslsmith_div_vec4_i32((vec4<i32>(u_input.c.x, 3499i, -44490i, -2147483647i) | vec4<i32>(0i, -15527i, 21209i, u_input.a)) << (vec4<u32>(var_0.x, 57715u, var_0.x, global2.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.a, 1i, 1i, u_input.a), vec4<i32>(u_input.c.x, 21342i, 1i, -13229i)), -vec4<i32>(2147483647i, u_input.c.x, -2147483647i, u_input.c.x)))), -_wgslsmith_div_vec2_i32(u_input.c, -countOneBits(u_input.c)));
    global1 = array<f32, 1>();
    let var_2 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~var_0.yz, vec2<u32>(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d.a, var_0.x), vec2<u32>(49629u, var_1.a.a)))), firstLeadingBit(firstTrailingBit(var_1.a.a)));
    global0 = array<f32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.x, 4294967295u), 1u)], _wgslsmith_f_op_f32(-1299f - -123f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(12529u, 1u)] + 1080f)), vec3<f32>(1f, 1f, 1f))));
}

