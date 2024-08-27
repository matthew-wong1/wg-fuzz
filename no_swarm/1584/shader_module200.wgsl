struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(1i, 28750i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-18784i, i32(-2147483648)));

var<private> global1: vec3<i32>;

var<private> global2: array<bool, 6> = array<bool, 6>(true, true, false, true, true, true);

var<private> global3: array<f32, 22> = array<f32, 22>(1446f, 906f, 740f, -817f, 670f, 899f, -379f, -656f, 623f, 918f, 2449f, -518f, 759f, 102f, -1957f, 1306f, 1254f, -405f, 388f, 636f, -494f, -347f);

var<private> global4: vec2<i32> = vec2<i32>(-3090i, 38668i);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: u32) -> vec3<u32> {
    let var_0 = abs(vec4<u32>(3008u, _wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(53u, u_input.b.x), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_3, u_input.b.x), vec2<u32>(arg_3, 47917u))), ~u_input.b.x ^ _wgslsmith_div_u32(106036u, arg_3)), _wgslsmith_clamp_u32(~2866u, u_input.b.x, 10344u), ~0u));
    global3 = array<f32, 22>();
    var var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(~28455u, _wgslsmith_div_u32(u_input.b.x, var_0.x), ~1333u) | firstLeadingBit(u_input.b), vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), u_input.b.x, _wgslsmith_clamp_u32(u_input.b.x, ~u_input.b.x, ~5045u)));
    let var_2 = ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b.x, var_0.x >> (u_input.b.x % 32u), var_0.x), ~(~u_input.b.x)) | arg_3;
    let var_3 = Struct_4(u_input.c.x != global1.x, _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_2, arg_3 & 0u), 22u)], _wgslsmith_div_f32(1474f, -267f))), vec4<bool>(true, all(arg_0.e), any(!select(vec3<bool>(arg_1.x, true, false), vec3<bool>(true, false, false), vec3<bool>(false, global2[_wgslsmith_index_u32(var_2, 6u)], false))), !select(arg_0.a.x, true, true) && (_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.x, 22u)]) == -1611f)), !select(select(vec2<bool>(arg_2, arg_0.d), select(vec2<bool>(false, arg_0.a.x), arg_1, arg_1), select(arg_1, vec2<bool>(true, false), vec2<bool>(arg_0.e.x, global2[_wgslsmith_index_u32(var_0.x, 6u)]))), select(!vec2<bool>(false, arg_1.x), vec2<bool>(arg_1.x, true), global3[_wgslsmith_index_u32(1u, 22u)] != global3[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec2<bool>(select(true, arg_2, arg_0.d), any(vec3<bool>(false, global2[_wgslsmith_index_u32(8516u, 6u)], true)))));
    return u_input.b;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: vec4<i32>) -> bool {
    var var_0 = firstTrailingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(arg_1, func_3(Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], false), 1i, -22661i, global2[_wgslsmith_index_u32(21282u, 6u)], vec2<bool>(false, global2[_wgslsmith_index_u32(82041u, 6u)])), vec2<bool>(false, true), global2[_wgslsmith_index_u32(74260u, 6u)], u_input.b.x) | func_3(Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(5203u, 6u)], true), global1.x, arg_0, global2[_wgslsmith_index_u32(arg_1.x, 6u)], vec2<bool>(false, false)), vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 6u)]), global2[_wgslsmith_index_u32(arg_1.x, 6u)], u_input.b.x)), reverseBits(vec3<u32>(arg_1.x, 1u, u_input.b.x) ^ ~arg_1)));
    var var_1 = select(!(!select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(63245u, 6u)], true), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], global2[_wgslsmith_index_u32(var_0.x, 6u)], false, global2[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 6u)], global2[_wgslsmith_index_u32(var_0.x, 6u)], true))), vec4<bool>(true, any(!(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 6u)], false, global2[_wgslsmith_index_u32(arg_1.x, 6u)]))), global2[_wgslsmith_index_u32(22627u, 6u)], global2[_wgslsmith_index_u32(~countOneBits(_wgslsmith_clamp_u32(4294967295u, 86920u, 11938u)), 6u)]), false);
    var var_2 = _wgslsmith_f_op_f32(1f - global3[_wgslsmith_index_u32(arg_1.x, 22u)]) >= global3[_wgslsmith_index_u32(var_0.x, 22u)];
    global2 = array<bool, 6>();
    var var_3 = global4.x;
    return global2[_wgslsmith_index_u32(select(4294967295u, 1u, !(var_1.x && global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_1.x, 1436u), 6u)])), 6u)];
}

fn func_1() -> vec3<u32> {
    let var_0 = any(vec4<bool>(!(!(19873i <= global4.x)), !(func_2(global4.x, u_input.b, vec4<i32>(global1.x, 67880i, u_input.a, 4124i)) && true), any(vec4<bool>(global2[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 6u)], true, global2[_wgslsmith_index_u32(4294967295u, 6u)] || true, any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], true, false)))), false));
    let var_1 = Struct_4(true, global3[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), ~u_input.b.x) >> (abs(u_input.b.x) % 32u), 22u)], !select(vec4<bool>(select(var_0, var_0, true), !var_0, false & global2[_wgslsmith_index_u32(u_input.b.x, 6u)], all(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(u_input.b.x, 6u)]))), vec4<bool>(var_0, select(true, var_0, var_0), false, !global2[_wgslsmith_index_u32(61933u, 6u)]), false & (global2[_wgslsmith_index_u32(27930u, 6u)] & true)), !select(vec2<bool>(true, true), !vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 6u)]), false));
    global1 = vec3<i32>(_wgslsmith_mult_i32(60896i, -u_input.a), firstLeadingBit(_wgslsmith_div_i32(~(-7346i), i32(-1i) * -11873i)), i32(-1i) * -35829i) >> (_wgslsmith_add_vec3_u32(~reverseBits(u_input.b ^ u_input.b), ~_wgslsmith_sub_vec3_u32(vec3<u32>(27894u, u_input.b.x, u_input.b.x), u_input.b | vec3<u32>(4294967295u, u_input.b.x, u_input.b.x))) % vec3<u32>(32u));
    var var_2 = Struct_4(!(!any(!var_1.d)), -1000f, var_1.c, !(!select(select(vec2<bool>(true, global2[_wgslsmith_index_u32(15358u, 6u)]), var_1.c.ww, global2[_wgslsmith_index_u32(121161u, 6u)]), var_1.c.zy, global4.x <= 2147483647i)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(721f)));
    return ~(~reverseBits(firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(1u, u_input.b.x, u_input.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -u_input.c | u_input.c;
    global2 = array<bool, 6>();
    global4 = ~select(_wgslsmith_mod_vec2_i32(-vec2<i32>(global4.x, global4.x), global0[_wgslsmith_index_u32(~u_input.b.x, 3u)]) & global1.xz, _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_sub_i32(34275i, -18353i)), -abs(vec2<i32>(u_input.a, global1.x))), any(vec3<bool>(-1631f != global3[_wgslsmith_index_u32(0u, 22u)], true, select(global2[_wgslsmith_index_u32(37159u, 6u)], global2[_wgslsmith_index_u32(1u, 6u)], false))));
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-658f, -712f, 805f, 1248f)));
    let var_1 = _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(select(vec3<u32>(u_input.b.x, 69501u, u_input.b.x), vec3<u32>(0u, u_input.b.x, u_input.b.x), true)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 1u, 11053u), countOneBits(vec3<u32>(8201u, u_input.b.x, 29385u)))), min(50963u, min(u_input.b.x ^ u_input.b.x, u_input.b.x))), 22u)] * var_0.x);
    var var_2 = vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], !(!any(vec4<bool>(false, false, global2[_wgslsmith_index_u32(0u, 6u)], false)) != true));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~u_input.b), -vec4<i32>(_wgslsmith_add_i32(-3613i, 1i), i32(-1i) * -global1.x, ~(~(-35935i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -8363i, global1.x, -54043i), vec4<i32>(global4.x, 1i, global1.x, u_input.a)) & max(global1.x, 2147483647i)), 1u, func_1());
}

