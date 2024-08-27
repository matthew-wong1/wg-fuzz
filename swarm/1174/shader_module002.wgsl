struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(0i, -21258i, -1i, i32(-2147483648)), vec4<i32>(32025i, 0i, 0i, 1i), vec4<i32>(4785i, 1i, -41269i, 0i), vec4<i32>(i32(-2147483648), -52930i, i32(-2147483648), 1i), vec4<i32>(-36173i, 0i, i32(-2147483648), -1i), vec4<i32>(0i, -26999i, 1i, 12963i), vec4<i32>(2147483647i, 1i, -8671i, -16579i), vec4<i32>(57154i, 2147483647i, -1i, 2147483647i), vec4<i32>(45941i, 1i, 29393i, -2903i), vec4<i32>(i32(-2147483648), -21031i, 34349i, 0i), vec4<i32>(27536i, 23946i, -34546i, -1i), vec4<i32>(15566i, 1i, 1i, 25745i), vec4<i32>(-7084i, -48367i, -16927i, -19973i), vec4<i32>(14714i, 2147483647i, 2147483647i, -1i), vec4<i32>(1i, i32(-2147483648), 2147483647i, 3486i), vec4<i32>(2147483647i, 21410i, -5394i, 1i), vec4<i32>(0i, -10873i, 30514i, -19759i), vec4<i32>(0i, 29632i, 2147483647i, 39455i), vec4<i32>(48227i, i32(-2147483648), -40926i, -7656i), vec4<i32>(0i, -1i, -1i, 0i), vec4<i32>(1i, 0i, i32(-2147483648), 1i), vec4<i32>(2147483647i, 2147483647i, -58296i, -7867i), vec4<i32>(1i, 1i, 2147483647i, -33519i), vec4<i32>(-1i, 15933i, i32(-2147483648), -29156i), vec4<i32>(1i, 10902i, 0i, 2147483647i), vec4<i32>(11457i, 10982i, 1i, 1i), vec4<i32>(-22583i, -1i, 99345i, -20847i), vec4<i32>(0i, 0i, 21476i, -49547i));

var<private> global1: array<u32, 24>;

var<private> global2: u32 = 53449u;

var<private> global3: array<Struct_1, 31>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> u32 {
    global2 = ~(~abs(_wgslsmith_sub_u32(countOneBits(32802u), 1u)));
    global3 = array<Struct_1, 31>();
    var var_0 = countOneBits(_wgslsmith_add_i32(-20497i, u_input.a));
    let var_1 = Struct_1(select(!select(arg_0.a, select(vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(arg_0.a.x, true), vec2<bool>(true, false)), select(arg_0.a, arg_0.a, arg_0.a)), select(arg_0.a, arg_0.a, arg_0.a), false), ~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c ^ u_input.c, vec2<u32>(14458u, global1[_wgslsmith_index_u32(4294967295u, 24u)])), u_input.c), !(!arg_0.a.x) & arg_0.a.x);
    var var_2 = Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(3275u, ~var_1.b.x) | vec2<u32>(_wgslsmith_add_u32(81706u, 0u), var_1.b.x), _wgslsmith_div_vec2_u32(max(u_input.c, var_1.b), vec2<u32>(~88774u, max(1u, global1[_wgslsmith_index_u32(var_1.b.x, 24u)])))));
    return min(34624u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.a.x, var_1.b.x, 59469u, u_input.e) >> (~vec4<u32>(var_2.a.x, global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(106194u, 24u)], 4294967295u) % vec4<u32>(32u)), vec4<u32>(u_input.e, ~37327u, ~var_1.b.x, 1884u)) >> (~(~96680u) % 32u));
}

fn func_2(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = u_input.c.x & func_3(Struct_3(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), -42484i);
    var var_1 = any(!vec4<bool>(!any(vec3<bool>(false, true, false)), select(all(vec3<bool>(true, false, true)), u_input.d.x != u_input.a, true), false, true));
    let var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(firstLeadingBit(global0[_wgslsmith_index_u32((arg_1 >> (arg_1 % 32u)) | var_0, 28u)]), ~(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(92759u, global1[_wgslsmith_index_u32(4294967295u, 24u)]), 28u)]), min(vec4<i32>(firstTrailingBit(u_input.d.x), i32(-1i) * -1i, -1i, u_input.a | u_input.a), reverseBits(abs(global0[_wgslsmith_index_u32(arg_1, 28u)])))), min(select(vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, u_input.a), vec4<i32>(u_input.d.x, u_input.d.x, u_input.a, 128i) >> (vec4<u32>(global1[_wgslsmith_index_u32(0u, 24u)], 77389u, 0u, 133516u) % vec4<u32>(32u)), vec4<bool>(false, false, true, false)) | _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1266i, u_input.a, 1i, u_input.a), global0[_wgslsmith_index_u32(20728u, 28u)]), vec4<i32>(u_input.a, u_input.d.x, u_input.d.x, u_input.a)), ~abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, u_input.b, arg_1, arg_1), vec4<u32>(16603u, arg_1, 41789u, var_0)), 28u)])));
    var var_3 = Struct_2(_wgslsmith_mult_vec2_u32(select(_wgslsmith_mod_vec2_u32(~u_input.c, vec2<u32>(arg_1, var_0)), ~(~u_input.c), true), ~_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, u_input.c), u_input.c >> (u_input.c % vec2<u32>(32u)))));
    let var_4 = Struct_3(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), global1[_wgslsmith_index_u32(0u, 24u)] < 4294967295u), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), false), vec2<bool>(any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false))), (arg_1 & arg_1) < ~arg_1), vec2<bool>(!all(vec4<bool>(false, true, true, true)), true)));
    return abs(min(4294967295u, 0u));
}

fn func_1() -> i32 {
    var var_0 = vec2<u32>(~(~func_2(553f, _wgslsmith_div_u32(u_input.e, u_input.c.x))), global1[_wgslsmith_index_u32(abs(1u), 24u)]);
    global3 = array<Struct_1, 31>();
    var var_1 = select(vec3<bool>(all(vec3<bool>(all(vec2<bool>(false, false)), false, all(vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(trunc(-682f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -731f)), false), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-124f - 745f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1389f))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-311f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1011f))))));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-firstTrailingBit(-u_input.d.x), 1i, countOneBits(~u_input.a), 9286i), _wgslsmith_sub_vec4_i32(~firstLeadingBit(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4294967295u, 1u), 28u)]) << (reverseBits(vec4<u32>(~global1[_wgslsmith_index_u32(u_input.c.x, 24u)], select(1u, var_0.x, true), 4294967295u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(18876u, 24u)]))) % vec4<u32>(32u)));
    var_0 = vec2<u32>(select(u_input.e, 0u, any(!(!vec2<bool>(true, var_1.x)))), global1[_wgslsmith_index_u32(21916u, 24u)]);
    return -6301i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1051f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(283f)) + _wgslsmith_f_op_f32(-1f));
    let var_2 = -vec4<i32>(i32(-1i) * -(~(-53487i)), -1092i, u_input.d.x, func_1());
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-149f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-132f)) * _wgslsmith_f_op_f32(min(2541f, 1000f)))))));
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -208f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1499f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-483f)), _wgslsmith_f_op_f32(f32(-1f) * -149f))), 833f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1052f, 562f)))), -695f)), _wgslsmith_f_op_f32(416f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-222f))))), _wgslsmith_f_op_f32(select(371f, _wgslsmith_f_op_f32(abs(-586f)), all(vec4<bool>(true, true, true, true)))), ~vec4<u32>(u_input.e, global1[_wgslsmith_index_u32(~u_input.b, 24u)], 23538u, u_input.c.x), 239f);
}

