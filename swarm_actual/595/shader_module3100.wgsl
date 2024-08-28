struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(4416u, vec2<u32>(1u, 50027u), true, true, 24001u), Struct_1(1u, vec2<u32>(0u, 1u), true, true, 45861u), Struct_1(0u, vec2<u32>(16793u, 1u), false, true, 79331u));

var<private> global1: array<Struct_2, 19>;

var<private> global2: Struct_1;

var<private> global3: vec2<i32>;

var<private> global4: vec2<f32> = vec2<f32>(1396f, 437f);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global4.x, 250f), _wgslsmith_f_op_f32(min(267f, -976f))) - vec2<f32>(_wgslsmith_f_op_f32(abs(global4.x)), 500f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, 1188f) * vec2<f32>(global4.x, global4.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(473f, global4.x) - vec2<f32>(global4.x, global4.x))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(910f, 958f) + vec2<f32>(-758f, global4.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-938f, 749f) + vec2<f32>(354f, global4.x))))) * vec2<f32>(_wgslsmith_f_op_f32(abs(global4.x)), global4.x));
    var var_1 = max(~(~(~global2.e)), 10996u);
    var var_2 = Struct_1(~(69845u ^ (~arg_0.a & 0u)), vec2<u32>(_wgslsmith_div_u32(1u, ~min(arg_0.e, 0u)), global2.e), true, u_input.c.x < min(arg_0.b.x, u_input.c.x & (global2.e ^ global2.e)), 4294967295u);
    let var_3 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a >> (21033u % 32u), 99005u, _wgslsmith_add_u32(var_2.e, countOneBits(1u)), max(firstLeadingBit(4294967295u), var_2.b.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.a, 21006u, 0u, 26223u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a, global2.a, global2.a, u_input.c.x), vec4<u32>(1u, 41770u, u_input.c.x, 0u), vec4<u32>(81367u, global2.e, var_2.e, 1u))) | vec4<u32>(~2825u, u_input.c.x, _wgslsmith_div_u32(22197u, 5770u), arg_0.b.x));
    let var_4 = Struct_1(reverseBits(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c.x, ~42515u), ~1u)), global2.b, true & global2.d, true, ~1u);
    return ~vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~global2.e, arg_0.b.x >> (1u % 32u)), ~49625u), 1u, reverseBits(~global2.b.x) ^ abs(~1u), ~(~max(u_input.c.x, 11467u)));
}

fn func_3() -> u32 {
    let var_0 = ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, global2.b.x, u_input.c.x), max(vec3<u32>(5402u, 0u, 58896u), vec3<u32>(1u, 39360u, u_input.c.x)))) ^ countOneBits(vec3<u32>(1u, 72572u, u_input.c.x));
    var var_1 = select(vec2<u32>(23113u, _wgslsmith_clamp_u32(u_input.c.x, var_0.x, 6400u)), u_input.c, global2.c);
    let var_2 = 88972u;
    var_1 = global2.b;
    var var_3 = abs(vec3<i32>(1i, global3.x, 28525i));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    let var_0 = -vec3<i32>(u_input.b, _wgslsmith_dot_vec3_i32(u_input.a.wyw, vec3<i32>(-13426i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), -2147483647i)), select(-(~(-10270i)), 2147483647i, true));
    var var_1 = Struct_1(~1u, arg_2.b, arg_1.x, !arg_0.d && global2.d, ~_wgslsmith_add_u32(1u, firstTrailingBit(~4294967295u)));
    var var_2 = _wgslsmith_f_op_f32(select(global4.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global4.x)) * _wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1043f))))), countOneBits(_wgslsmith_mult_i32(-1i, -1i)) == u_input.b));
    global1 = array<Struct_2, 19>();
    var_2 = global4.x;
    return true;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    global2 = Struct_1(~arg_1.x, u_input.c & arg_1.ww, !global2.d, true, ~global2.e | 1u);
    var var_0 = Struct_1(41617u, select(~vec2<u32>(global2.e, _wgslsmith_clamp_u32(0u, 61826u, u_input.c.x)), global2.b, func_4(Struct_1(_wgslsmith_dot_vec3_u32(arg_1.xxw, vec3<u32>(4294967295u, u_input.c.x, 4294967295u)), vec2<u32>(u_input.c.x, arg_1.x), u_input.b <= -9368i, any(vec2<bool>(false, true)), 0u), vec2<bool>(true, true), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(44881u, func_3()), 3u)])), global2.d, true, 3147u);
    var var_1 = global0[_wgslsmith_index_u32(81289u & (~abs(arg_1.x) | ~var_0.a), 3u)];
    var var_2 = _wgslsmith_div_u32(13729u, min(abs(global2.b.x), _wgslsmith_clamp_u32(var_1.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, var_0.a, 31175u, 0u) << (arg_1 % vec4<u32>(32u)), ~arg_1), var_1.a)));
    global2 = global0[_wgslsmith_index_u32(select(func_3() ^ func_1(Struct_1(33481u, ~var_0.b, true, global2.c, 4294967295u >> (1u % 32u)), u_input.a).x, 25087u, !any(vec2<bool>(select(false, global2.c, false), global4.x > 274f))), 3u)];
    return Struct_1(21726u, vec2<u32>(~(~_wgslsmith_div_u32(u_input.c.x, 42009u)), ~firstLeadingBit(_wgslsmith_sub_u32(6481u, arg_1.x))), global2.d && false, true, ~firstTrailingBit(~(var_1.b.x | 0u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(arg_1.a);
    var var_1 = global1[_wgslsmith_index_u32(~(arg_0.b.x >> ((1u ^ _wgslsmith_div_u32(func_1(global0[_wgslsmith_index_u32(88619u, 3u)], u_input.a).x, 4294967295u)) % 32u)), 19u)];
    var var_2 = arg_1;
    let var_3 = Struct_2(vec3<f32>(464f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + _wgslsmith_f_op_f32(ceil(arg_1.a.x)))));
    var var_4 = abs(abs(-_wgslsmith_mod_vec4_i32(-vec4<i32>(global3.x, u_input.a.x, u_input.a.x, u_input.b), u_input.a | vec4<i32>(u_input.a.x, global3.x, -10998i, 1i))));
    return var_3;
}

fn func_6(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1479f) - 1000f), _wgslsmith_f_op_f32(max(arg_0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.x)))))));
    var var_1 = reverseBits(0i);
    var var_2 = global1[_wgslsmith_index_u32(select(select(arg_2, u_input.c.x, _wgslsmith_mod_i32(abs(-58404i), abs(1i)) > select(u_input.a.x, u_input.b, var_0.x == 1050f)), ~_wgslsmith_add_u32(abs(1u), 20446u), global2.c), 19u)];
    var var_3 = func_5(func_2(arg_0.a, vec4<u32>(1u, u_input.c.x, _wgslsmith_add_u32(global2.a, global2.a), ~arg_2) << ((firstLeadingBit(vec4<u32>(u_input.c.x, 57043u, u_input.c.x, arg_2)) ^ ~vec4<u32>(u_input.c.x, global2.a, arg_2, 4294967295u)) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_sub_i32(global3.x, u_input.a.x))), func_5(func_2(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(sign(-690f)), _wgslsmith_f_op_f32(var_0.x * -1802f)), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 88347u, 4294967295u, global2.b.x), vec4<u32>(global2.a, 50403u, arg_2, 1u)), u_input.a.x), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(var_0.x + arg_0.a.x), -559f, -1798f))));
    global3 = u_input.a.ww;
    return abs(~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(54485u, arg_2, arg_2, global2.e), vec4<u32>(41416u, arg_2, u_input.c.x, 0u))), ~0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(67389u, _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(1u), u_input.c.x, global2.e, 18065u), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 4294967295u), func_1(global0[_wgslsmith_index_u32(4294967295u, 3u)], vec4<i32>(u_input.a.x, 5052i, 42546i, global3.x)))) >> (u_input.c.x % 32u));
    let var_1 = !select(!(!(!vec3<bool>(global2.d, global2.d, true))), select(select(select(vec3<bool>(false, global2.c, false), vec3<bool>(global2.d, global2.d, true), global2.c), select(vec3<bool>(global2.c, global2.d, false), vec3<bool>(false, false, true), global2.d), select(vec3<bool>(global2.d, false, global2.d), vec3<bool>(global2.d, global2.c, global2.c), true)), vec3<bool>(true, true, true), true), true & global2.d);
    let var_2 = u_input.a.ww << (firstLeadingBit(func_6(func_5(func_2(vec3<f32>(global4.x, -517f, -1318f), vec4<u32>(4294967295u, u_input.c.x, 0u, 50067u), u_input.a.x), global1[_wgslsmith_index_u32(global2.b.x, 19u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, -810f, -594f, global4.x)), 5514u)) % vec2<u32>(32u));
    global1 = array<Struct_2, 19>();
    global3 = min(_wgslsmith_mult_vec2_i32((vec2<i32>(-2147483647i, var_2.x) ^ _wgslsmith_add_vec2_i32(u_input.a.xz, var_2)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(1000i, -25501i), ~u_input.a.zx), -(~u_input.a.wz)), vec2<i32>(-1i ^ global3.x, -28891i));
    global3 = vec2<i32>(~_wgslsmith_add_i32(26741i, _wgslsmith_mult_i32(global3.x, ~(-2147483647i))), _wgslsmith_sub_i32(-29212i, ~(-firstTrailingBit(u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_2), ~vec4<u32>(_wgslsmith_mult_u32(~u_input.c.x, global2.e), reverseBits(~4294967295u), ~global2.e, func_3()), u_input.a, 45985u);
}

