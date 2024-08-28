struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 27>;

var<private> global2: array<vec2<bool>, 10>;

var<private> global3: i32;

var<private> global4: array<f32, 28> = array<f32, 28>(1392f, 298f, 1147f, 2804f, -644f, 273f, -2520f, 234f, 1731f, -386f, 1589f, 1428f, 275f, 492f, -731f, -511f, -1000f, -152f, 2183f, -1190f, -1189f, -107f, 705f, -587f, -727f, -1385f, -140f, -1044f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = vec3<u32>(4294967295u, _wgslsmith_div_u32(~_wgslsmith_mod_u32(arg_0.x, u_input.c.x), 6475u), ~(~abs(u_input.c.x))) | _wgslsmith_div_vec3_u32(max(abs(arg_0.xxx), u_input.b.yyz), u_input.c);
    var var_1 = 2147483647i;
    global0 = (~28480u | min(min(4294967295u, _wgslsmith_div_u32(15384u, arg_0.x)), 1u)) ^ 1u;
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -345f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-941f, global4[_wgslsmith_index_u32(arg_0.x, 28u)])))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global4[_wgslsmith_index_u32(u_input.c.x, 28u)], -960f))) * vec2<f32>(1919f, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 28u)]))))));
    global4 = array<f32, 28>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(abs(~(~u_input.c.x)) | 143u, 27u)] == 0u;
    let var_1 = Struct_5(u_input.a.x, u_input.d, Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -208f), -firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), Struct_1(_wgslsmith_f_op_f32(func_2(firstTrailingBit(u_input.b))), (vec3<i32>(-1i, 1i, 2147483647i) ^ vec3<i32>(u_input.a.x, -1i, u_input.d)) ^ ~vec3<i32>(5949i, 351i, u_input.d)), Struct_1(-435f, firstTrailingBit(reverseBits(vec3<i32>(u_input.d, -2147483647i, u_input.d))))), vec3<i32>(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.d), 29789i), _wgslsmith_sub_i32(-20423i, _wgslsmith_add_i32(-1i, 7671i))), Struct_4(_wgslsmith_f_op_f32(-1534f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-223f))))), Struct_1(global4[_wgslsmith_index_u32(4294967295u, 28u)], vec3<i32>(u_input.a.x, u_input.d, u_input.a.x) & vec3<i32>(u_input.a.x, u_input.a.x, 51768i))));
    var_0 = arg_0.x | any(!vec3<bool>(all(arg_0), arg_0.x, arg_0.x));
    var var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x << (u_input.c.x % 32u), 0u ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11895u, 27u)], 27u)]), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.b.xx) >> (u_input.b.wy % vec2<u32>(32u))), abs(~u_input.c.x), ~(~u_input.c.x) & (~u_input.b.x << (1u % 32u))), firstLeadingBit(vec3<u32>(u_input.b.x, 24366u, global1[_wgslsmith_index_u32(~46665u << (0u % 32u), 27u)])));
    var var_3 = !arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.e.b.a, 229f)) + _wgslsmith_f_op_f32(f32(-1f) * -1003f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(559f)) - _wgslsmith_f_op_f32(ceil(-1000f))) - 779f)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(abs(4294967295u), 28u)]), global4[_wgslsmith_index_u32(select(select(0u, global1[_wgslsmith_index_u32(u_input.b.x, 27u)], true), 3390u, true), 28u)], false)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.c.x, 28u)]), _wgslsmith_f_op_f32(f32(-1f) * -776f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(u_input.c.x, 0u), 19396u, true), 28u)]), _wgslsmith_f_op_f32(func_2(vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, 1u), abs(u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.b.wx), 1u)))), true));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, true, false))), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 28u)], 1122f)) - -141f))), Struct_1(global4[_wgslsmith_index_u32(~(~reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)])), 28u)], -vec3<i32>(_wgslsmith_div_i32(-2147483647i, -41888i), -u_input.a.x, u_input.d)));
    let var_2 = Struct_5(~u_input.d, _wgslsmith_sub_i32(countOneBits(1i), _wgslsmith_div_i32(-u_input.d, u_input.d)) & firstLeadingBit(var_1.b.b.x), Struct_2(var_1.b, var_1.b, var_1.b), (~(vec3<i32>(u_input.d, 57838i, var_1.b.b.x) >> (vec3<u32>(u_input.b.x, u_input.c.x, 0u) % vec3<u32>(32u))) ^ min(abs(vec3<i32>(var_1.b.b.x, 29787i, -2147483647i)), ~var_1.b.b)) << (vec3<u32>(u_input.c.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 27u)]), 27u)], u_input.c.x) % vec3<u32>(32u)), Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-830f * 696f), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(56463u, 28u)])))), var_1.b));
    let var_3 = var_2.c;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.c.x, 28u)]), _wgslsmith_f_op_f32(select(-214f, var_1.a, true)))) * var_1.b.a) * var_1.b.a), var_1.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~1u;
    var var_0 = Struct_3(global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b.x & 945u, 4294967295u), ~0u), 28u)], _wgslsmith_mod_i32(-18460i, countOneBits(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.a.x, 2147483647i), vec3<i32>(u_input.a.x, 2147483647i, u_input.d)), 1i))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true)), any(vec3<bool>(true, true, true)));
    var var_1 = func_1();
    let var_2 = ~_wgslsmith_div_i32(-abs(u_input.a.x) << (u_input.b.x % 32u), 76887i);
    let var_3 = abs(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 27279i) & vec2<i32>(var_0.b, var_0.b), firstTrailingBit(vec2<i32>(u_input.a.x, 1546i))), abs(_wgslsmith_div_i32(-1i, 2147483647i))), (_wgslsmith_dot_vec2_i32(u_input.a, u_input.a) | (i32(-1i) * -17643i)) << (_wgslsmith_clamp_u32(1u, firstTrailingBit(34826u), 21445u | global1[_wgslsmith_index_u32(u_input.b.x, 27u)]) % 32u), 0i));
    let var_4 = vec3<f32>(_wgslsmith_div_f32(var_1.a, var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(1u, 4294967295u)), 28u)])), global4[_wgslsmith_index_u32(u_input.b.x >> (_wgslsmith_mod_u32(countOneBits(u_input.c.x) << ((u_input.c.x ^ u_input.b.x) % 32u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 27u)], 27u)]) % 32u), 28u)]);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x ^ (i32(-1i) * -var_1.b.x), 15772u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -827f)))));
}

