struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(-1000f, -1101f), vec2<f32>(-953f, 1000f), vec2<f32>(130f, -2478f), vec2<f32>(-1387f, -415f), vec2<f32>(2292f, 312f), vec2<f32>(494f, -2834f), vec2<f32>(-498f, 1000f), vec2<f32>(-523f, -797f), vec2<f32>(2197f, -947f), vec2<f32>(-426f, 1142f), vec2<f32>(236f, 415f), vec2<f32>(1638f, 961f), vec2<f32>(106f, -1026f), vec2<f32>(-828f, -1000f), vec2<f32>(-1948f, 1373f), vec2<f32>(1024f, 526f), vec2<f32>(908f, 3415f), vec2<f32>(-513f, -1000f));

var<private> global1: Struct_1 = Struct_1(false);

var<private> global2: vec3<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> bool {
    global2 = _wgslsmith_mod_vec3_i32(-vec3<i32>(i32(-1i) * -global2.x, global2.x, global2.x << (_wgslsmith_sub_u32(64384u, u_input.a) % 32u)), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global2.x, 0i, global2.x), vec4<i32>(global2.x, global2.x, global2.x, global2.x)), firstTrailingBit(-81416i), ~global2.x), abs(vec3<i32>(-18414i, -1i, global2.x))), firstTrailingBit(vec3<i32>(_wgslsmith_clamp_i32(global2.x, -4765i, global2.x), global2.x, global2.x)), _wgslsmith_div_vec3_i32(vec3<i32>(countOneBits(-1i), ~0i, global2.x), _wgslsmith_mod_vec3_i32(vec3<i32>(global2.x, global2.x, global2.x), min(vec3<i32>(global2.x, global2.x, -2147483647i), vec3<i32>(-1i, 50085i, -25173i))))));
    var var_0 = abs(min(~vec4<i32>(global2.x, global2.x, global2.x, global2.x) >> (~vec4<u32>(0u, 1u, u_input.a, u_input.a) % vec4<u32>(32u)), -vec4<i32>(global2.x, global2.x, -2147483647i, -24067i))) ^ vec4<i32>(global2.x, -1i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, global2.x, global2.x), vec3<i32>(-30375i, 1i, global2.x)) << (~u_input.a % 32u), _wgslsmith_mult_i32(1i, global2.x)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-global2.xx, select(global2.yz, vec2<i32>(global2.x, global2.x), global1.a)), ~(-1i)));
    var var_1 = vec4<i32>(-30590i, _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.x, var_0.x), vec3<i32>(3560i, global2.x, global2.x)), abs(var_0.x))), -global2.x), ~global2.x, ~global2.x << (33216u % 32u));
    global1 = Struct_1(global1.a);
    let var_2 = Struct_2(Struct_1(all(!vec4<bool>(true, true, arg_0.a, false))), arg_0);
    return !any(vec4<bool>(true, var_2.a.a, var_2.a.a, var_2.b.a)) | !global1.a;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    global1 = Struct_1(select(false, !func_3(arg_0.b), true));
    return 78106i;
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = ~0u | _wgslsmith_mult_u32(~((u_input.a >> (u_input.a % 32u)) << (firstLeadingBit(1u) % 32u)), u_input.a);
    var var_1 = Struct_2(arg_3, Struct_1(0u != (_wgslsmith_mult_u32(u_input.a, u_input.a) | ~11425u)));
    let var_2 = vec3<bool>(true, true, firstTrailingBit(arg_2.x) <= _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-12849i, -70780i, global2.x, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.x, arg_0, arg_2.x, -1i), vec4<i32>(-1926i, arg_0, arg_0, 32950i))), vec4<i32>(-2147483647i, global2.x, arg_2.x, global2.x) << (countOneBits(vec4<u32>(4294967295u, 27459u, var_0, 19272u)) % vec4<u32>(32u))));
    global0 = array<vec2<f32>, 18>();
    var var_3 = 1u >= _wgslsmith_mult_u32(_wgslsmith_sub_u32(5673u, 49167u >> (~var_0 % 32u)), u_input.a);
    return global2.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> vec3<bool> {
    var var_0 = 13310i;
    var_0 = func_4(~(-1i) ^ ((global2.x | (75471i >> (1u % 32u))) ^ firstTrailingBit(-global2.x)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1462f)), -2533f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1328f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-904f, 134f)))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-593f * -405f), -827f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(585f * -350f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1575f)), _wgslsmith_f_op_f32(round(1083f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1096f), _wgslsmith_f_op_f32(max(1133f, 472f))))), vec3<i32>(global2.x, func_2(Struct_2(Struct_1(arg_1), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(arg_0.x)), Struct_1(global1.a)) >> (_wgslsmith_mod_u32(47072u, u_input.a) % 32u), firstLeadingBit(countOneBits(global2.x))) ^ max(-select(vec3<i32>(global2.x, 0i, global2.x), vec3<i32>(global2.x, 1i, 0i), arg_0.x), vec3<i32>(global2.x >> (u_input.a % 32u), ~(-4427i), 22508i)), Struct_1(arg_0.x));
    let var_1 = select(vec4<i32>(_wgslsmith_mod_i32(-4764i, global2.x) ^ ~global2.x, 71252i >> (max(u_input.a << (4294967295u % 32u), ~0u) % 32u), global2.x, global2.x), _wgslsmith_mod_vec4_i32(-(~(~vec4<i32>(global2.x, global2.x, 2147483647i, global2.x))), ~select(_wgslsmith_sub_vec4_i32(vec4<i32>(10948i, global2.x, 8388i, 2147483647i), vec4<i32>(2147483647i, -1i, -39983i, global2.x)), vec4<i32>(-22948i, 23610i, 60524i, 40946i), vec4<bool>(true, arg_0.x, true, arg_1))), !(!vec4<bool>(!arg_0.x, 4294967295u < u_input.a, any(vec2<bool>(arg_1, arg_1)), !arg_0.x)));
    global1 = Struct_1(arg_1);
    global2 = var_1.wwy;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(func_1(vec3<bool>(global1.a, global1.a, global1.a), global1.a), vec3<bool>(global2.x == global2.x, global2.x > global2.x, global2.x > -2147483647i), !vec3<bool>(global1.a, true, false)), !select(!vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(global1.a, false, global1.a), true & global1.a), true);
    global0 = array<vec2<f32>, 18>();
    let var_1 = Struct_1(!var_0.x);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -848f);
    var var_3 = global2.zz;
    global2 = _wgslsmith_div_vec3_i32(vec3<i32>(abs(2147483647i), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, var_3.x, global2.x) & vec3<i32>(global2.x, -1i, global2.x), vec3<i32>(global2.x, -26860i, 1061i)), var_3.x), _wgslsmith_sub_vec3_i32(min(vec3<i32>(var_3.x, var_3.x, 0i), _wgslsmith_div_vec3_i32(~vec3<i32>(78129i, global2.x, global2.x), ~vec3<i32>(global2.x, var_3.x, global2.x))), _wgslsmith_div_vec3_i32(vec3<i32>(~(-1i), ~(-27562i), global2.x), select(~vec3<i32>(global2.x, 0i, global2.x), max(vec3<i32>(var_3.x, var_3.x, 30717i), vec3<i32>(14649i, 0i, var_3.x)), func_1(vec3<bool>(true, false, true), var_0.x)))));
    let var_4 = var_1;
    var var_5 = Struct_2(Struct_1(!any(vec4<bool>(var_4.a, false, true, false))), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(-29638i), -33386i >> ((_wgslsmith_sub_u32(u_input.a, u_input.a) << ((u_input.a & u_input.a) % 32u)) % 32u)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-237f, _wgslsmith_f_op_f32(-var_2), 238f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1007f, var_2, -1964f) + vec3<f32>(var_2, -352f, var_2)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(195f, -535f, 1041f), vec3<f32>(-454f, var_2, var_2), vec3<bool>(global1.a, true, var_0.x))), vec3<bool>(true, true, true))), vec3<f32>(-155f, _wgslsmith_f_op_f32(var_2 * var_2), -573f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2, 1729f, var_2))) + vec3<f32>(_wgslsmith_f_op_f32(var_2 * var_2), 1000f, var_2))), vec4<u32>(u_input.a, abs(6914u), ~countOneBits(u_input.a), 75001u), vec4<u32>(u_input.a, u_input.a, 1u, ~(u_input.a << (u_input.a % 32u))));
}

