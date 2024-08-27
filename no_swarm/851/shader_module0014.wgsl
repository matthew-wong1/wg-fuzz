struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: vec2<u32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_4 = Struct_4(vec4<bool>(true, false, false, false), 14114u, vec2<u32>(1u, 65740u), Struct_1(41127u, 850f, vec4<i32>(1i, 2147483647i, 2140i, 10009i), -1000f), -618f);

var<private> global2: array<bool, 32> = array<bool, 32>(false, false, false, true, true, true, true, false, true, false, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, true, false, false, true, true, true);

var<private> global3: array<Struct_2, 2>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: f32, arg_3: vec2<u32>) -> f32 {
    let var_0 = global1.a.xwz;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.d)), global1.e));
    global3 = array<Struct_2, 2>();
    return _wgslsmith_f_op_f32(ceil(-1899f));
}

fn func_3() -> vec2<u32> {
    global3 = array<Struct_2, 2>();
    global0 = ~(~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(112640u, 47993u), vec2<u32>(u_input.a.x, 48670u)) & u_input.a.x)));
    var var_0 = -global1.d.c.yy;
    var var_1 = Struct_3(global1.d, false, 1u, Struct_1(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.d.d), -907f)) * _wgslsmith_f_op_f32(-936f + global1.e)), -vec4<i32>(340i, -11914i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.d.c.x, 2147483647i), vec2<i32>(var_0.x, var_0.x)), var_0.x | 2147483647i), _wgslsmith_f_op_f32(-global1.e)), Struct_1(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -225f))), vec4<i32>(~(-var_0.x), _wgslsmith_mod_i32(min(2147483647i, var_0.x), ~1i), ~(-1i) | _wgslsmith_mult_i32(u_input.b.x, 1i), u_input.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-364f))))));
    let var_2 = Struct_2(select(vec2<bool>(all(global1.a.ywy), !select(global2[_wgslsmith_index_u32(26178u, 32u)], false, global2[_wgslsmith_index_u32(30045u, 32u)])), global1.a.yx, !select(vec2<bool>(var_1.b, global1.a.x), select(global1.a.xz, global1.a.zw, false), global1.a.wx)), true | (reverseBits(1i | u_input.b.x) <= ~_wgslsmith_div_i32(24236i, global1.d.c.x)), !(!(!global1.a)), Struct_1(max(abs(reverseBits(u_input.a.x)), 78577u), -551f, vec4<i32>(1i, 27504i, 33861i, -var_1.a.c.x), 1079f), global1.d.c.x ^ -_wgslsmith_sub_i32(-2147483647i, -49175i));
    return ~reverseBits(vec2<u32>(~(~0u), 1u));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~66628u, 1241u) << ((~1u << (u_input.a.x % 32u)) % 32u), 2u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.yy);
    global1 = Struct_4(global1.a, var_0.d.a, func_3(), Struct_1(u_input.a.x << (var_0.d.a % 32u), 118f, _wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.b.x, -24128i, global1.d.c.x, 2147483647i), u_input.b, global2[_wgslsmith_index_u32(u_input.a.x, 32u)]), ~var_0.d.c) ^ -u_input.b, var_0.d.d), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.d.d), _wgslsmith_f_op_f32(-global1.d.d))))));
    var var_2 = global3[_wgslsmith_index_u32(4294967295u, 2u)];
    global2 = array<bool, 32>();
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_1(~(~_wgslsmith_mult_u32(u_input.a.x, global1.d.a)), _wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(~(~global1.b), 2u)], vec2<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 1u), 32u)]), _wgslsmith_f_op_f32(-global1.d.b), min(min(u_input.a.wy, u_input.a.zy) | abs(global1.c), ~_wgslsmith_div_vec2_u32(global1.c, u_input.a.zy)))), vec4<i32>(_wgslsmith_div_i32(1722i, global1.d.c.x), u_input.b.x, (i32(-1i) * -1i) & u_input.b.x, ~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(global1.d.c, u_input.b), u_input.b & global1.d.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e)))));
    global3 = array<Struct_2, 2>();
    let var_2 = Struct_3(func_2(vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d * global1.d.d) * _wgslsmith_f_op_f32(f32(-1f) * -115f)), -116f, _wgslsmith_f_op_f32(-var_1.b))), false, _wgslsmith_mult_u32(38192u, u_input.a.x), Struct_1(firstTrailingBit(~func_3().x), -359f, _wgslsmith_div_vec4_i32(vec4<i32>(var_1.c.x, -37834i, 2147483647i, u_input.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 890i, global1.d.c.x, global1.d.c.x), global1.d.c)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a, global1.c.x, global1.d.a, u_input.a.x), max(vec4<u32>(1u, 60047u, global1.b, 0u), vec4<u32>(21384u, var_1.a, 4957u, 4294967295u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)) - _wgslsmith_f_op_f32(global1.d.b + _wgslsmith_f_op_f32(-global1.d.d)))), Struct_1(firstLeadingBit(30477u >> (~var_1.a % 32u)), 1123f, _wgslsmith_add_vec4_i32(vec4<i32>(2887i, abs(-1i), max(-1i, -2147483647i), ~1i), global1.d.c), 248f));
    var_0 = _wgslsmith_mod_i32(var_1.c.x, var_2.d.c.x) <= var_1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(-u_input.b.zw, _wgslsmith_mult_vec2_i32(-_wgslsmith_clamp_vec2_i32(u_input.b.xy, var_2.e.c.zw, vec2<i32>(-8844i, -2147483647i)), firstLeadingBit(vec2<i32>(global1.d.c.x, 1i) & u_input.b.yx)), any(select(!global1.a.wyw, global1.a.zxx, vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], global1.a.x, global2[_wgslsmith_index_u32(global1.d.a, 32u)])))), var_1.c.xx, _wgslsmith_div_f32(global1.e, var_1.d), _wgslsmith_div_u32(var_2.c, ~firstLeadingBit(21765u)), -_wgslsmith_add_i32(0i, var_2.a.c.x));
}

