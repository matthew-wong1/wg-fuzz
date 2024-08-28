struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32> = vec4<f32>(866f, -1804f, -342f, -670f);

var<private> global2: array<bool, 17>;

var<private> global3: bool;

var<private> global4: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(4294967295u, 5790u, 6123u, 50263u), vec4<u32>(104062u, 3427u, 4294967295u, 1u), vec4<u32>(9442u, 27770u, 42836u, 4294967295u), vec4<u32>(42550u, 6504u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 61628u, 1u), vec4<u32>(67694u, 302u, 33508u, 4294967295u), vec4<u32>(0u, 1u, 21721u, 40043u), vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(0u, 1u, 124273u, 1u), vec4<u32>(50228u, 1u, 23600u, 4294967295u), vec4<u32>(20492u, 4294967295u, 1u, 7897u), vec4<u32>(0u, 24768u, 40413u, 1u), vec4<u32>(4294967295u, 44215u, 88718u, 32546u), vec4<u32>(12710u, 52992u, 73622u, 1u), vec4<u32>(0u, 22103u, 3569u, 5117u), vec4<u32>(4294967295u, 37975u, 23315u, 52438u), vec4<u32>(46616u, 4294967295u, 17523u, 34363u), vec4<u32>(4294967295u, 31183u, 38646u, 1u), vec4<u32>(11617u, 4294967295u, 1u, 0u), vec4<u32>(42120u, 47290u, 0u, 28772u), vec4<u32>(58915u, 45444u, 0u, 69711u), vec4<u32>(51603u, 15121u, 4294967295u, 17193u), vec4<u32>(4294967295u, 85300u, 5620u, 34145u), vec4<u32>(0u, 81934u, 1u, 68910u), vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<u32>(1437u, 1u, 27230u, 24946u), vec4<u32>(3273u, 4294967295u, 30809u, 1u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    global2 = array<bool, 17>();
    var var_0 = select(select(vec4<i32>(countOneBits(u_input.d ^ u_input.d), u_input.d, u_input.a.x << (4009u % 32u), 0i), -select(vec4<i32>(19215i, u_input.d, 6167i, 26069i), -vec4<i32>(u_input.e, global0.b, global0.b, -18176i), !vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(1u, 17u)])), vec4<bool>(all(vec2<bool>(true, global2[_wgslsmith_index_u32(58759u, 17u)])), true, false, global2[_wgslsmith_index_u32(global0.c.x, 17u)])), select(vec4<i32>(18502i, -2147483647i, -203i ^ global0.b, firstTrailingBit(global0.b)), select(vec4<i32>(12078i | u_input.e, 0i, 0i, global0.b), _wgslsmith_add_vec4_i32(-vec4<i32>(30346i, global0.b, u_input.d, u_input.a.x), -vec4<i32>(0i, global0.b, 58985i, 1i)), true), vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, global0.c.x) | global0.c.x, 17u)])), vec4<bool>(!(_wgslsmith_f_op_f32(1038f + global0.a) < -366f), false, !(!global2[_wgslsmith_index_u32(max(15655u, global0.c.x), 17u)]), !select(-1i != global0.b, global2[_wgslsmith_index_u32(4294967295u, 17u)], any(vec2<bool>(false, global2[_wgslsmith_index_u32(29125u, 17u)])))));
    let var_1 = u_input.e | _wgslsmith_add_i32(reverseBits(abs(var_0.x)), var_0.x);
    let var_2 = select(vec3<bool>(false, all(select(vec2<bool>(global2[_wgslsmith_index_u32(global0.c.x, 17u)], global2[_wgslsmith_index_u32(2321u, 17u)]), !vec2<bool>(global2[_wgslsmith_index_u32(57336u, 17u)], false), true)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global0.c & vec2<u32>(4294967295u, 28296u), vec2<u32>(u_input.c, 90329u)), 18561u), 17u)]), !vec3<bool>(false & global2[_wgslsmith_index_u32(1u, 17u)], true, all(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 17u)], global2[_wgslsmith_index_u32(24941u, 17u)], global2[_wgslsmith_index_u32(global0.c.x, 17u)]))), vec3<bool>(!all(vec3<bool>(global2[_wgslsmith_index_u32(1u, 17u)], true, true)), all(select(vec3<bool>(global2[_wgslsmith_index_u32(global0.c.x, 17u)], true, global2[_wgslsmith_index_u32(13302u, 17u)]), !vec3<bool>(global2[_wgslsmith_index_u32(global0.c.x, 17u)], false, global2[_wgslsmith_index_u32(global0.c.x, 17u)]), -31573i > global0.b)), global0.c.x <= abs(4294967295u)));
    let var_3 = select(!vec4<bool>(true, global2[_wgslsmith_index_u32(countOneBits(21678u), 17u)], false, true), !(!select(vec4<bool>(true, false, var_2.x, global2[_wgslsmith_index_u32(19089u, 17u)]), select(vec4<bool>(true, var_2.x, global2[_wgslsmith_index_u32(0u, 17u)], false), vec4<bool>(var_2.x, global2[_wgslsmith_index_u32(global0.c.x, 17u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(42858u, 17u)], false, false, true)), !vec4<bool>(var_2.x, global2[_wgslsmith_index_u32(u_input.b, 17u)], var_2.x, true))), !vec4<bool>(all(!vec4<bool>(var_2.x, var_2.x, global2[_wgslsmith_index_u32(global0.c.x, 17u)], true)), global2[_wgslsmith_index_u32(u_input.b, 17u)], true, var_2.x));
    return -825f;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = !vec4<bool>(!(!global2[_wgslsmith_index_u32(u_input.c, 17u)]), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(0u, global0.c.x, global2[_wgslsmith_index_u32(global0.c.x, 17u)]) << (~u_input.c % 32u), 87211u), 17u)], all(select(vec2<bool>(true, true), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 17u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(42378u, 17u)]))), false);
    global0 = Struct_1(global1.x, ~global0.b, vec2<u32>(_wgslsmith_add_u32(abs(1u), 40472u), abs(global0.c.x) >> (0u % 32u)));
    let var_2 = Struct_2(Struct_1(-1454f, _wgslsmith_mod_i32(max(-58710i, 2147483647i), firstLeadingBit(-global0.b)), select(vec2<u32>(_wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(4294967295u, 27u)], global4[_wgslsmith_index_u32(0u, 27u)]), global0.c.x), ~max(vec2<u32>(global0.c.x, 42410u), global0.c), vec2<bool>(true, true))));
    var var_3 = var_2;
    return var_3.a;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = func_2();
    global2 = array<bool, 17>();
    global0 = Struct_1(-1252f, ~(~(-67803i)), global0.c);
    var var_1 = Struct_2(var_0);
    var var_2 = ~(~firstLeadingBit(_wgslsmith_mult_u32(0u, 3431u) << ((4294967295u & var_1.a.c.x) % 32u)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(u_input.e, _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.b | global0.b, global0.b, _wgslsmith_add_i32(-1i, -1i), global0.b), ~vec4<i32>(-8859i, global0.b, -u_input.d, global0.b)));
    let var_1 = countOneBits(max(4294967295u, ~0u));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1.x, 2324f))), _wgslsmith_f_op_f32(-global1.x), global1.x))), global1.yww);
    global0 = func_1(_wgslsmith_mod_vec3_u32(~(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, var_1), vec3<u32>(0u, u_input.c, var_1))), vec3<u32>(u_input.b | ~25458u, firstLeadingBit(4294967295u ^ global0.c.x), ~var_1)));
    global0 = Struct_1(_wgslsmith_f_op_f32(min(-134f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-func_1(vec3<u32>(global0.c.x, 4294967295u, var_1)).a), 446f)))), ~(-u_input.e), func_1(~(~vec3<u32>(19090u, var_1, 4294967295u)) ^ vec3<u32>(~var_1, u_input.b >> (0u % 32u), 130576u)).c);
    global0 = func_1(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(1u, 4294967295u, 9648u), vec3<u32>(0u, 0u, var_1), true), vec3<u32>(var_1, 0u, var_1)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, global0.c.x), vec3<u32>(global0.c.x, global0.c.x, 0u)), select(0u, u_input.b, false), _wgslsmith_mult_u32(1u, global0.c.x))), ~vec3<u32>(countOneBits(1u), ~var_1, ~var_1)));
    let var_3 = func_2();
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~firstTrailingBit(38478u)), ~firstTrailingBit(var_1)), 17u)] | any(vec4<bool>(select(global2[_wgslsmith_index_u32(26487u, 17u)], false, true), global2[_wgslsmith_index_u32(1u, 17u)], true, true));
    let var_4 = Struct_2(var_3);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c, (var_3.c.x & global0.c.x) << (1u % 32u), countOneBits(4294967295u), max(min(vec4<u32>(88190u, 50472u, 4294967295u, 20524u), _wgslsmith_div_vec4_u32(global4[_wgslsmith_index_u32(u_input.c, 27u)], global4[_wgslsmith_index_u32(var_3.c.x, 27u)])), global4[_wgslsmith_index_u32(4567u, 27u)]) & global4[_wgslsmith_index_u32(1u, 27u)]);
}

