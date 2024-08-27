struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(-30181i, -20605i), vec3<i32>(i32(-2147483648), 22434i, i32(-2147483648)), vec2<u32>(22757u, 1u), 1447f));

var<private> global1: array<u32, 1>;

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<i32>(1926i, -484i), vec3<i32>(1i, 37158i, -1i), vec2<u32>(61260u, 0u), 598f), Struct_1(vec2<i32>(-53317i, -23721i), vec3<i32>(78373i, i32(-2147483648), 8671i), vec2<u32>(69766u, 0u), -358f), Struct_1(vec2<i32>(-22239i, 1i), vec3<i32>(-71080i, 0i, 2147483647i), vec2<u32>(4294967295u, 4294967295u), 1255f), Struct_1(vec2<i32>(0i, 2147483647i), vec3<i32>(i32(-2147483648), 14927i, 2147483647i), vec2<u32>(22831u, 58834u), 723f), Struct_1(vec2<i32>(-1i, 15175i), vec3<i32>(i32(-2147483648), i32(-2147483648), 150i), vec2<u32>(125033u, 84163u), -300f), Struct_1(vec2<i32>(-7219i, 1i), vec3<i32>(27939i, 1i, i32(-2147483648)), vec2<u32>(43496u, 0u), -1029f), Struct_1(vec2<i32>(-29994i, i32(-2147483648)), vec3<i32>(10019i, 2147483647i, 46304i), vec2<u32>(1u, 22701u), 1000f), Struct_1(vec2<i32>(-30381i, 1i), vec3<i32>(0i, -41570i, 1i), vec2<u32>(23932u, 4294967295u), -1429f), Struct_1(vec2<i32>(2147483647i, 0i), vec3<i32>(0i, 0i, -22769i), vec2<u32>(0u, 53316u), -873f), Struct_1(vec2<i32>(-22796i, 2147483647i), vec3<i32>(2147483647i, 0i, 9356i), vec2<u32>(4294967295u, 1u), -1925f), Struct_1(vec2<i32>(4694i, -1i), vec3<i32>(-13446i, -502i, i32(-2147483648)), vec2<u32>(0u, 1u), 474f), Struct_1(vec2<i32>(-9605i, -3815i), vec3<i32>(i32(-2147483648), 1i, -1i), vec2<u32>(0u, 1u), -629f), Struct_1(vec2<i32>(21860i, -1i), vec3<i32>(-37293i, 1i, 14397i), vec2<u32>(0u, 1u), 912f), Struct_1(vec2<i32>(66997i, i32(-2147483648)), vec3<i32>(17915i, 42359i, 20858i), vec2<u32>(4294967295u, 13310u), -433f), Struct_1(vec2<i32>(3112i, -1i), vec3<i32>(i32(-2147483648), 24390i, 55663i), vec2<u32>(4294967295u, 17237u), 844f), Struct_1(vec2<i32>(i32(-2147483648), -1i), vec3<i32>(9311i, 13345i, -1i), vec2<u32>(50642u, 31446u), 865f), Struct_1(vec2<i32>(-18647i, 39572i), vec3<i32>(1i, 2147483647i, -20405i), vec2<u32>(0u, 0u), -104f));

var<private> global4: array<i32, 2> = array<i32, 2>(0i, 41606i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> f32 {
    var var_0 = !((_wgslsmith_dot_vec3_i32(arg_0.a.b ^ global0.a.b, global2.zxy) != 16360i) || true);
    let var_1 = vec3<bool>(arg_0.a.d > 1587f, all(select(select(vec2<bool>(true, arg_1), select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), true), !arg_1), select(!vec2<bool>(true, arg_1), vec2<bool>(true, true), vec2<bool>(arg_1, true)), !(!vec2<bool>(arg_1, true)))), !(!select(arg_1, true, all(vec2<bool>(true, arg_1)))));
    var_0 = true;
    var var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(1u, 1u)], ~6011u), 17u)];
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.d, _wgslsmith_f_op_f32(arg_0.a.d + 433f), -1000f, _wgslsmith_f_op_f32(-var_2.d))))), u_input.a);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-565f - _wgslsmith_f_op_f32(arg_0.a.d - arg_0.a.d))), 399f))));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_3) -> u32 {
    global2 = vec4<i32>(_wgslsmith_mult_i32(select(~global4[_wgslsmith_index_u32(arg_2.a.c.x, 2u)], 0i, false), 2147483647i), u_input.a, global0.a.a.x & _wgslsmith_add_i32(i32(-1i) * -global2.x, _wgslsmith_sub_i32(2147483647i, _wgslsmith_div_i32(u_input.a, u_input.a))), i32(-1i) * -_wgslsmith_div_i32(u_input.a ^ 0i, _wgslsmith_sub_i32(15801i, global2.x)));
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_2, true)) * _wgslsmith_f_op_f32(trunc(773f)))))));
    global3 = array<Struct_1, 17>();
    var var_1 = arg_2;
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_1.a.d, -325f)), global0.a.d, true)), _wgslsmith_f_op_f32(-global0.a.d), 1006f, _wgslsmith_f_op_f32(-var_1.a.d))), -_wgslsmith_mult_i32(1i, 46090i));
    return arg_2.a.c.x;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> u32 {
    let var_0 = true;
    global1 = array<u32, 1>();
    var var_1 = ~vec3<u32>(reverseBits(firstTrailingBit(max(global1[_wgslsmith_index_u32(4294967295u, 1u)], global0.a.c.x))), global1[_wgslsmith_index_u32(~global0.a.c.x, 1u)], 55847u);
    let var_2 = vec4<f32>(164f, _wgslsmith_f_op_f32(-global0.a.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(721f * 352f), -524f)))), 1000f);
    global4 = array<i32, 2>();
    return ~(~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~89091u, _wgslsmith_mult_u32(0u, func_2(vec3<u32>(var_1.x, var_1.x, 59372u), -11833i, Struct_3(Struct_1(vec2<i32>(25710i, global0.a.b.x), global2.xyz, global0.a.c, arg_1.x))))), 1u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, ~global4[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_dot_vec3_i32(global2.xxw, vec3<i32>(global2.x, -7041i, 27699i)), firstLeadingBit(global2.x)), -reverseBits(vec4<i32>(0i, global4[_wgslsmith_index_u32(4294967295u, 2u)], global4[_wgslsmith_index_u32(global0.a.c.x, 2u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 2u)]))), select(vec4<i32>(-1i) * -vec4<i32>(global2.x, global0.a.a.x, -19736i, global2.x), vec4<i32>(-8516i, u_input.a, global0.a.b.x, 30932i) | -vec4<i32>(-2147483647i, global2.x, 33315i, 24398i), any(vec2<bool>(true, true)))), vec4<i32>(u_input.a >> (4294967295u % 32u), -2147483647i, (global4[_wgslsmith_index_u32(global0.a.c.x, 2u)] | _wgslsmith_mult_i32(23752i, global2.x)) | abs(u_input.a), global0.a.b.x >> (~36453u % 32u)));
    let var_0 = _wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(50105u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 1u)], 1u)], global0.a.c.x), vec3<u32>(23855u, 0u, global1[_wgslsmith_index_u32(4294967295u, 1u)]), vec3<u32>(global0.a.c.x, 0u, global1[_wgslsmith_index_u32(36239u, 1u)])), abs(vec3<u32>(30722u, global1[_wgslsmith_index_u32(global0.a.c.x, 1u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 1u)], 1u)]))) >> (~(~(~vec3<u32>(83498u, global1[_wgslsmith_index_u32(global0.a.c.x, 1u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 1u)], 1u)]))) % vec3<u32>(32u)), vec3<u32>(~((global1[_wgslsmith_index_u32(0u, 1u)] << (global0.a.c.x % 32u)) << (~0u % 32u)), func_1(global0.a.a.x, _wgslsmith_div_vec3_f32(vec3<f32>(-793f, 2216f, global0.a.d), vec3<f32>(-1751f, 880f, global0.a.d))) << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.c.x, 77487u), vec2<u32>(55285u, global0.a.c.x)), abs(12410u)) % 32u), global0.a.c.x));
    global0 = Struct_2(Struct_1(global0.a.a, global0.a.b, select(vec2<u32>(~global0.a.c.x, ~0u), _wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(34158u, 1u)], global1[_wgslsmith_index_u32(var_0.x, 1u)]), abs(global0.a.c)), any(vec3<bool>(true, true, false))), -1000f));
    let var_1 = ~(~vec4<i32>(global4[_wgslsmith_index_u32(global0.a.c.x, 2u)], min(firstTrailingBit(41364i), firstLeadingBit(global0.a.a.x)), _wgslsmith_sub_i32(-global2.x, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 1u)], 2u)] ^ -2147483647i), max(select(51529i, u_input.a, true), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global2.x, u_input.a, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 2u)]), vec4<i32>(global4[_wgslsmith_index_u32(7815u, 2u)], -2147483647i, 0i, -26835i)))));
    global0 = Struct_2(global0.a);
    global0 = Struct_2(Struct_1(~(-global0.a.a) >> (var_0.yz % vec2<u32>(32u)), select(-_wgslsmith_sub_vec3_i32(global0.a.b, var_1.xwy), (var_1.wxw << (var_0 % vec3<u32>(32u))) & select(vec3<i32>(global4[_wgslsmith_index_u32(global0.a.c.x, 2u)], u_input.a, var_1.x), global0.a.b, false), vec3<bool>(true, true, true)), ~global0.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.d)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global0.a.d, global0.a.d, false)), _wgslsmith_f_op_f32(global0.a.d + global0.a.d))))));
    let var_2 = 0u;
    var var_3 = vec3<i32>(reverseBits(_wgslsmith_mult_i32(~_wgslsmith_mod_i32(0i, -1i), abs(u_input.a))), ~(~global0.a.a.x), _wgslsmith_mod_i32(~(~global2.x), -1i) | min(~u_input.a, global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_3.x, -33564i >> (0u % 32u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 1u)], 1u)], var_0.x), ~var_0.zy), _wgslsmith_div_vec2_i32(global0.a.a, select(select(reverseBits(vec2<i32>(-1i, 0i)), var_3.xy >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), vec2<bool>(false, true)), global0.a.b.zz, vec2<bool>(true, var_1.x == global4[_wgslsmith_index_u32(0u, 2u)]))), global0.a.d);
}

