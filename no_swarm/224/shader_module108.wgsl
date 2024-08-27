struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(4294967295u, 63073u, 3604u, 569u, 1u, 1u, 54035u, 4294967295u, 14084u, 4294967295u, 0u, 28750u);

var<private> global1: vec4<u32>;

var<private> global2: Struct_1 = Struct_1(0i, vec4<u32>(26247u, 0u, 16530u, 4294967295u), 8846u, false);

var<private> global3: array<i32, 5> = array<i32, 5>(-1i, -9782i, -1i, 27806i, 2147483647i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec3<u32> {
    var var_0 = select(vec4<bool>(global2.d, global2.d, global2.d, true & !all(vec2<bool>(arg_0.d.d, arg_0.c.d))), !vec4<bool>(arg_0.b.d, !(arg_0.c.d & global2.d), false, global2.d), true);
    let var_1 = global2.a != 0i;
    return countOneBits(global1.wwx) & ~global1.yxy;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_div_f32(arg_0, arg_0))) + _wgslsmith_f_op_f32(ceil(1f))))));
    global0 = array<u32, 12>();
    global2 = Struct_1(i32(-1i) * -(~(i32(-1i) * -30521i)), ~arg_2.b, _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, global1.x, 57978u), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global1.x, 0u)) << ((u_input.c.x | 4484u) % 32u)), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-218f - arg_0) * arg_0)) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(arg_0, arg_0))));
    global0 = array<u32, 12>();
    let var_1 = Struct_1(~(global2.a | arg_2.a), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.d.c, 0u, 21475u, global2.b.x) & select(arg_1.d.b, vec4<u32>(global0[_wgslsmith_index_u32(global1.x, 12u)], global1.x, global1.x, arg_2.c), vec4<bool>(true, arg_2.d, arg_1.b.d, arg_1.d.d)), global2.b), _wgslsmith_add_u32(_wgslsmith_add_u32(1u, ~global1.x), ~(~u_input.a) ^ ~min(18840u, arg_1.a.x)), false);
    return vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(4294967295u, arg_2.c), 1u, arg_1.c.b.x, 4294967295u), countOneBits(vec4<u32>(global2.b.x, 4294967295u, global1.x, global1.x))), ~global1.x), arg_2.b.x, 80161u, arg_2.b.x);
}

fn func_2() -> Struct_2 {
    global3 = array<i32, 5>();
    var var_0 = (_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-8217i, global2.a, -16404i) << (global2.b.www % vec3<u32>(32u)), -vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(global1.x, 5u)], -19768i)), vec3<i32>(28102i, -1579i, 1101i) & (vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(93948u, 5u)], 1i) | vec3<i32>(2147483647i, -46823i, global3[_wgslsmith_index_u32(u_input.c.x, 5u)]))) & 1i) <= 2147483647i;
    global1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) - -947f), Struct_2(func_3(Struct_2(global2.b.xxx, Struct_1(global3[_wgslsmith_index_u32(22214u, 5u)], vec4<u32>(global0[_wgslsmith_index_u32(1u, 12u)], global2.c, u_input.c.x, 79919u), 0u, global2.d), Struct_1(2147483647i, vec4<u32>(global1.x, 1u, 59428u, 4294967295u), 1u, global2.d), Struct_1(global3[_wgslsmith_index_u32(global1.x, 5u)], global2.b, 14621u, true)), min(-44567i, _wgslsmith_sub_i32(0i, -1i))), Struct_1(34887i, vec4<u32>(~global0[_wgslsmith_index_u32(1u, 12u)], min(46843u, 4536u), 0u, global2.c), 4482u, global2.d), Struct_1(_wgslsmith_sub_i32(~global3[_wgslsmith_index_u32(global1.x, 5u)], -1i), ~global2.b, 19406u, global1.x <= global1.x), Struct_1(select(0i, -55535i, !global2.d), countOneBits(~vec4<u32>(4294967295u, 0u, 225865u, 4294967295u)), func_3(Struct_2(global2.b.ywz, Struct_1(-47312i, global2.b, global2.c, global2.d), Struct_1(global2.a, vec4<u32>(global1.x, u_input.a, 4294967295u, 70153u), global2.c, false), Struct_1(10558i, vec4<u32>(global0[_wgslsmith_index_u32(29408u, 12u)], 1u, u_input.b, 52965u), 68861u, true)), global3[_wgslsmith_index_u32(~55012u, 5u)]).x, all(select(vec2<bool>(global2.d, true), vec2<bool>(true, false), vec2<bool>(global2.d, global2.d))))), Struct_1(_wgslsmith_mult_i32(1i >> (u_input.b % 32u), -49670i) & -22016i, _wgslsmith_add_vec4_u32(vec4<u32>(global2.c, 1u << (1u % 32u), global1.x, reverseBits(global0[_wgslsmith_index_u32(0u, 12u)])), select(global2.b & global2.b, global2.b, true)), abs(global2.c & 57025u), true & !select(global2.d, true, false)));
    var_0 = any(select(vec4<bool>(global2.d, true, global2.d, false), select(select(!vec4<bool>(true, true, true, global2.d), vec4<bool>(false, false, false, false), vec4<bool>(global2.d, global2.d, global2.d, global2.d)), select(vec4<bool>(global2.d, true, global2.d, global2.d), vec4<bool>(global2.d, global2.d, false, false), global1.x > global0[_wgslsmith_index_u32(u_input.a, 12u)]), global2.d), global2.d));
    var_0 = select(true, global1.x >= 3288u, global2.d);
    return Struct_2(global2.b.yzy, Struct_1(1i, global2.b, _wgslsmith_sub_u32(82963u, ~global2.c), all(vec3<bool>(true, global2.d, true))), Struct_1(1i, global2.b, _wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(global1.x >> (60982u % 32u), global0[_wgslsmith_index_u32(1u, 12u)])), global2.d | (~global0[_wgslsmith_index_u32(u_input.b, 12u)] >= (global2.c & global2.b.x))), Struct_1(-8358i, ~max(global2.b, global2.b), global1.x, global2.d));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32) -> f32 {
    let var_0 = u_input.b;
    let var_1 = Struct_2(func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1908f, _wgslsmith_f_op_f32(f32(-1f) * -321f), all(vec3<bool>(global2.d, arg_0.x, arg_1.c.d)))))), func_2(), Struct_1(arg_1.b.a, firstTrailingBit(abs(global2.b)), ~(~global2.b.x), any(arg_0.wz) || arg_0.x)).zzw, arg_1.c, Struct_1(1i, abs(~vec4<u32>(u_input.a, var_0, 43138u, u_input.b) & global2.b), reverseBits(~30032u), abs(arg_1.d.a) < 1i), arg_1.c);
    global2 = func_2().d;
    let var_2 = ~(~global3[_wgslsmith_index_u32(~abs(7055u), 5u)]) ^ min(_wgslsmith_mod_i32(-14797i, -1i), -31337i);
    var var_3 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(global2.a, -1i, global2.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(1u, 5u)], global2.a, -40604i), vec3<i32>(-2147483647i, 27609i, 0i), vec3<i32>(arg_1.c.a, arg_1.b.a, var_1.d.a))) << (_wgslsmith_sub_vec3_u32(reverseBits(global1.xww), vec3<u32>(var_1.d.c, 1u, 184u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-49471i, 38204i, global3[_wgslsmith_index_u32(1u, 5u)]), vec3<i32>(1i, -12889i, global2.a)), vec3<i32>(global2.a, var_1.b.a, -59419i))), vec4<u32>(min(28871u, 1u), global2.c, 1u, 1u), var_1.c.c, true);
    return _wgslsmith_div_f32(arg_2, 1324f);
}

fn func_1() -> u32 {
    var var_0 = global1.x | ~1u;
    global3 = array<i32, 5>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(!vec4<bool>(global2.d, true, true, global2.d), func_2(), 1020f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1178f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1461f)) + -503f), true))));
    global1 = _wgslsmith_mult_vec4_u32(global2.b, vec4<u32>(firstLeadingBit(92278u), 32863u, global1.x, 28400u));
    var var_2 = func_2().b;
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~vec3<u32>(_wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(0u, 12u)]), func_1(), global0[_wgslsmith_index_u32(global1.x, 12u)]), Struct_1(~min(i32(-1i) * -84212i, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.b.x, global1.x), 5u)]), firstLeadingBit(~(global2.b ^ vec4<u32>(23885u, u_input.b, global2.c, u_input.a))), firstTrailingBit(~firstLeadingBit(47604u)), global1.x == (_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.x, u_input.a, global2.c), global2.b.xwz) ^ 47733u)), Struct_1(-1i, vec4<u32>(~u_input.b, global2.c, ~(~u_input.c.x), global2.c), _wgslsmith_dot_vec3_u32(global2.b.zxx, ~global2.b.ywy) ^ global2.b.x, global2.d), Struct_1(~global3[_wgslsmith_index_u32(func_3(func_2(), ~global3[_wgslsmith_index_u32(4305u, 5u)]).x, 5u)], ~global2.b, ~firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, global2.b.x, 47759u)), any(vec3<bool>(false & global2.d, !global2.d, global2.d))));
    var var_1 = Struct_2(var_0.d.b.xyz << (~(func_4(-858f, Struct_2(vec3<u32>(0u, 13408u, 1u), Struct_1(global3[_wgslsmith_index_u32(var_0.c.b.x, 5u)], vec4<u32>(global1.x, 4294967295u, 4294967295u, global1.x), 68001u, true), var_0.b, Struct_1(-14224i, vec4<u32>(var_0.b.b.x, 4294967295u, var_0.d.c, var_0.b.c), 0u, global2.d)), Struct_1(41339i, vec4<u32>(global0[_wgslsmith_index_u32(global2.b.x, 12u)], 74631u, 67670u, 32492u), global1.x, false)).zxy ^ ~var_0.d.b.zwx) % vec3<u32>(32u)), func_2().d, Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(-1i, 1i, global2.a, var_0.c.a), -vec4<i32>(26929i, 26509i, -1i, global2.a)), _wgslsmith_clamp_vec4_i32(max(vec4<i32>(var_0.c.a, var_0.b.a, 2855i, 1950i), vec4<i32>(-26684i, global3[_wgslsmith_index_u32(14831u, 5u)], global2.a, -11381i)), ~vec4<i32>(var_0.b.a, -1i, -1i, global3[_wgslsmith_index_u32(71589u, 5u)]), select(vec4<i32>(2147483647i, var_0.c.a, 1i, global2.a), vec4<i32>(var_0.d.a, 43465i, -2147483647i, 2147483647i), false))), global2.b, _wgslsmith_dot_vec4_u32(~global2.b >> (~var_0.c.b % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(global2.b, vec4<u32>(4294967295u, global1.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.b.x, 12u)], 12u)], 57011u))), all(vec4<bool>(any(vec2<bool>(global2.d, true)), false, select(true, true, true), func_2().c.d))), func_2().b);
    global2 = var_0.c;
    let var_2 = vec4<u32>(_wgslsmith_add_u32(global1.x, ~(~min(91756u, var_0.a.x))), _wgslsmith_add_u32(6391u, 1625u), 50685u, global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(35557u, u_input.b, 4294967295u), 12u)]);
    var var_3 = Struct_1(_wgslsmith_mult_i32(global2.a, var_1.c.a), vec4<u32>(4294967295u ^ ~func_4(-227f, var_0, var_1.b).x, 1u, ~u_input.a, ~var_2.x), ~_wgslsmith_add_u32(~1u, max(_wgslsmith_sub_u32(var_0.a.x, var_1.a.x), 21227u)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(vec2<i32>(2820i, _wgslsmith_add_i32(~1i, global3[_wgslsmith_index_u32(~var_1.a.x, 5u)])), abs(~(vec2<i32>(global3[_wgslsmith_index_u32(32332u, 5u)], var_1.c.a) ^ vec2<i32>(global3[_wgslsmith_index_u32(var_0.d.c, 5u)], 0i)))), vec2<u32>(global1.x ^ 46750u, 30136u), ~(vec4<u32>(global1.x, 1u, ~var_2.x, ~18817u) & vec4<u32>(var_2.x, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(var_0.a.x, 12u)], 0u), ~53072u, 24686u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-466f, -799f)) + vec2<f32>(1204f, 1827f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-930f, 1174f))), vec2<bool>(true, true)))));
}

