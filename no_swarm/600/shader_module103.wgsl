struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: array<u32, 18> = array<u32, 18>(0u, 5320u, 4294967295u, 41265u, 60969u, 61276u, 4294967295u, 0u, 26449u, 58243u, 0u, 61028u, 90280u, 62642u, 46455u, 1u, 13658u, 0u);

var<private> global2: array<Struct_3, 6>;

var<private> global3: array<Struct_2, 4>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(abs(1f));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(~abs(select(u_input.a.zwx, vec3<u32>(4294967295u, u_input.a.x, 4294967295u), true)), u_input.a.wzz), vec3<u32>(select(~select(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], true), u_input.a.x, false), 4294967295u, 1u)), 6u)];
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.a, 831f, var_1.a.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.a, var_1.a.a, -609f), vec3<f32>(476f, -1415f, 648f), global0[_wgslsmith_index_u32(29973u, 18u)]))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a, _wgslsmith_f_op_f32(trunc(-171f)), _wgslsmith_f_op_f32(-var_1.a.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_f32(step(748f, 200f)), _wgslsmith_f_op_f32(var_1.a.a - var_1.a.a))))));
    var var_3 = true;
    global0 = array<bool, 18>();
    return 2147483647i;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>) -> i32 {
    var var_0 = Struct_2(-vec2<i32>(-2147483647i, 98769i), -(((-30622i << (u_input.a.x % 32u)) & 1i) << (~arg_0.x % 32u)), func_3(global3[_wgslsmith_index_u32(~(0u & ~arg_0.x), 4u)]), abs(-firstTrailingBit(vec3<i32>(-48907i, 44363i, 1i) >> (vec3<u32>(arg_1.x, 19490u, global1[_wgslsmith_index_u32(0u, 18u)]) % vec3<u32>(32u)))));
    var var_1 = ~(~vec3<u32>(~arg_1.x, ~(~6944u), arg_0.x));
    var_1 = ~(max(abs(vec3<u32>(arg_0.x, 0u, u_input.a.x) & vec3<u32>(40684u, 68928u, arg_1.x)), arg_0) ^ ~countOneBits(arg_1.wxx));
    var var_2 = u_input.a;
    let var_3 = Struct_2(-vec2<i32>(2147483647i, 1i), (firstLeadingBit(var_0.d.x) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, var_1.x, 0u), arg_1.xyw) % 32u)) >> (0u % 32u), abs(-min(i32(-1i) * -16119i, var_0.b)), -vec3<i32>(var_0.c, firstTrailingBit(-46386i << (u_input.a.x % 32u)), ~2147483647i));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-1i << (u_input.a.x % 32u), -9230i, _wgslsmith_add_i32(func_3(Struct_2(vec2<i32>(var_0.b, -2147483647i), -40891i, -2147483647i, var_3.d)), _wgslsmith_mult_i32(var_0.b, var_0.a.x)), 1i) & countOneBits(firstTrailingBit(max(vec4<i32>(var_0.b, -16631i, var_3.d.x, 17391i), vec4<i32>(69974i, -2147483647i, 2147483647i, var_0.d.x)))), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(2147483647i, -1i, var_0.a.x, -1i), vec4<i32>(var_0.b, var_3.d.x, 69873i, -1i) >> (arg_1 % vec4<u32>(32u))), -vec4<i32>(0i, 60988i, var_3.a.x, -32131i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_3.d.x, _wgslsmith_div_i32(var_3.c, 35165i), 25443i, ~var_3.b), reverseBits(reverseBits(vec4<i32>(var_3.d.x, var_3.a.x, var_0.b, var_3.b))))));
}

fn func_1() -> vec3<f32> {
    let var_0 = false;
    var var_1 = select(vec4<i32>(1i << ((0u ^ u_input.a.x) % 32u), ~(~20525i), ~(-2147483647i), -func_2(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], 17440u, 1u), vec4<u32>(57286u, 4294967295u, 8991u, global1[_wgslsmith_index_u32(0u, 18u)]))) | -(vec4<i32>(-1i) * -vec4<i32>(2386i, -17482i, 32625i, 1i)), vec4<i32>(func_3(Struct_2(vec2<i32>(-15026i, 582i), 0i, 13783i, vec3<i32>(17188i, -2147483647i, -29168i))) | firstTrailingBit(23607i), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-56942i, 1i, -2147483647i), firstLeadingBit(18500i)), firstTrailingBit(5265i) | (i32(-1i) * -2147483647i), abs(-1i)) & -vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(40209i, 34013i), vec2<i32>(-1i, 2725i)), 2147483647i, ~(-8382i), min(1i, -1i)), vec4<bool>(var_0, !global0[_wgslsmith_index_u32(7035u, 18u)], false, global0[_wgslsmith_index_u32(1u, 18u)] & select(all(vec4<bool>(false, var_0, var_0, var_0)), true, select(true, false, false))));
    global0 = array<bool, 18>();
    var var_2 = _wgslsmith_mod_i32(2147483647i, var_1.x) & (i32(-1i) * -var_1.x);
    let var_3 = ~39979u | _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.a.x << (0u % 32u), 18u)], min(firstLeadingBit(u_input.a.x), 15376u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-803f, 132f, 1249f))), vec3<f32>(_wgslsmith_f_op_f32(1000f - -121f), _wgslsmith_f_op_f32(trunc(101f)), -871f)))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: f32) -> vec2<bool> {
    global1 = array<u32, 18>();
    var var_0 = abs(~(-_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(arg_0, arg_1.c, -5150i, arg_0)), abs(vec4<i32>(0i, -2147483647i, 22461i, 57851i)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a.x, arg_0, arg_0, 1i), vec4<i32>(-2147483647i, arg_0, -52034i, arg_0)))));
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 18u)];
    global0 = array<bool, 18>();
    let var_2 = Struct_4(!(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60954u, 18u)], 18u)], global0[_wgslsmith_index_u32(0u, 18u)], false), vec4<bool>(global0[_wgslsmith_index_u32(5175u, 18u)], global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec4<bool>(global0[_wgslsmith_index_u32(37671u, 18u)], true, false, false)), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 18u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], global0[_wgslsmith_index_u32(4492u, 18u)])), true)), false == global0[_wgslsmith_index_u32(42359u, 18u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -192f), arg_2.x)), _wgslsmith_sub_i32(1097i, -69518i), min(-2147483647i, _wgslsmith_mult_i32(-2147483647i, arg_1.c) | -2147483647i), select(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43337u, 18u)], 18u)], 18u)]), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)], true), vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(68150u, 18u)], 18u)], 18u)], false, global0[_wgslsmith_index_u32(1u, 18u)], true)), any(vec3<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46864u, 18u)], 18u)], 18u)], global0[_wgslsmith_index_u32(1u, 18u)]))), !select(vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28925u, 18u)], 18u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(72117u, 18u)], 18u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], global0[_wgslsmith_index_u32(24294u, 18u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 18u)], true, global0[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<bool>(global0[_wgslsmith_index_u32(30606u, 18u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], global0[_wgslsmith_index_u32(3679u, 18u)], true)), global0[_wgslsmith_index_u32(0u, 18u)])), select(vec4<bool>(!global0[_wgslsmith_index_u32(683u, 18u)] || (-405f != arg_2.x), !any(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(24863u, 18u)])), global0[_wgslsmith_index_u32(4294967295u, 18u)], true), vec4<bool>(true, false, firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)]) < (32265u << (u_input.a.x % 32u)), true), !global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 18u)], u_input.a.x), 1u), 18u)]));
    return var_2.c.d.xx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 18>();
    global3 = array<Struct_2, 4>();
    let var_0 = true;
    global2 = array<Struct_3, 6>();
    let var_1 = !select(!func_4(_wgslsmith_mod_i32(-2147483647i, 1i), global3[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_f_op_vec3_f32(func_1()), -2291f), vec2<bool>(_wgslsmith_div_i32(-1i, 1i) > _wgslsmith_dot_vec4_i32(vec4<i32>(5751i, 8431i, 1i, -2147483647i), vec4<i32>(-1i, 1i, 39922i, -47024i)), true), all(!vec4<bool>(var_0, var_0, global0[_wgslsmith_index_u32(49919u, 18u)], false)) || true);
    global1 = array<u32, 18>();
    var var_2 = any(var_1);
    let x = u_input.a;
    s_output = StorageBuffer(25243i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1193f, -185f, 1540f, -560f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1421f, -985f, 267f, -906f)) + vec4<f32>(875f, 591f, 115f, 680f)))) + vec4<f32>(-967f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1177f)) + _wgslsmith_f_op_vec3_f32(func_1()).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -297f)), 342f)));
}

