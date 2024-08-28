struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: vec4<u32> = vec4<u32>(0u, 29539u, 4294967295u, 4294967295u);

var<private> global2: array<u32, 32>;

var<private> global3: Struct_2 = Struct_2(-22464i, 4294967295u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(-700f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-423f * 459f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1692f, 848f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(408f, -1325f))))));
    let var_2 = vec3<u32>(firstTrailingBit(~_wgslsmith_mod_u32(arg_1.b.x, arg_0.x)) | ~4294967295u, 12022u, ~0u);
    var var_3 = 2147483647i;
    global0 = array<bool, 30>();
    return 27719u;
}

fn func_3() -> vec3<i32> {
    global3 = Struct_2(_wgslsmith_clamp_i32(2147483647i, ~_wgslsmith_add_i32(global3.a, global3.a), _wgslsmith_add_i32(1i, _wgslsmith_mod_i32(global3.a, global3.a))), _wgslsmith_mult_u32(105434u, 0u << (global3.b % 32u)));
    var var_0 = global1.wz;
    let var_1 = Struct_2(~u_input.c.x, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(global3.b, global2[_wgslsmith_index_u32(30098u, 32u)], global1.x, var_0.x), ~vec4<u32>(global3.b, var_0.x, 1u, 25423u)), ~select(~vec4<u32>(global3.b, 34177u, 0u, 62013u), vec4<u32>(34536u, 1u, var_0.x, 1u) << (vec4<u32>(4775u, 5139u, 4294967295u, 4294967295u) % vec4<u32>(32u)), true && global0[_wgslsmith_index_u32(1u, 30u)])));
    let var_2 = abs(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(-9283i, u_input.a.x, u_input.a.x)), vec3<i32>(1i << (var_0.x % 32u), -global3.a, 0i)) | (_wgslsmith_mod_i32(global3.a, ~(-23081i)) & reverseBits(var_1.a)));
    var var_3 = countOneBits(~global1.zz);
    return abs(_wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(9001i, -1i, max(-var_2, ~var_1.a))));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> Struct_2 {
    global0 = array<bool, 30>();
    let var_0 = select(~(~(~global1.wy)) & min(~select(global1.xz, global1.yz, vec2<bool>(global0[_wgslsmith_index_u32(2777u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)])), firstTrailingBit(~global1.yz)), _wgslsmith_mult_vec2_u32(select(_wgslsmith_mod_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(u_input.b, 32u)], global2[_wgslsmith_index_u32(62308u, 32u)]), global1.xy), ~vec2<u32>(u_input.b, global2[_wgslsmith_index_u32(arg_0, 32u)]), select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 32u)], 30u)], global0[_wgslsmith_index_u32(u_input.b, 30u)]), false)), ~select(vec2<u32>(u_input.b, u_input.b), global1.xw, vec2<bool>(global0[_wgslsmith_index_u32(55191u, 30u)], true))) | vec2<u32>(~52305u >> (global3.b % 32u), max(global1.x, func_2(global1.wx, Struct_1(2147483647i, vec4<u32>(18343u, arg_0, global3.b, 1u)), vec3<u32>(121751u, arg_0, 20896u)))), global0[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(u_input.b, 0u)) & ~(~arg_0), 30u)]);
    let var_1 = firstLeadingBit(~func_3());
    global2 = array<u32, 32>();
    global1 = _wgslsmith_sub_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 32u)], 28395u, global3.b, global3.b), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global1.x, 32u)], 0u, 33311u))), vec4<u32>(_wgslsmith_add_u32(abs(global3.b), _wgslsmith_dot_vec3_u32(vec3<u32>(31744u, arg_0, 58094u), vec3<u32>(arg_0, arg_0, 0u))), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x & u_input.b, abs(global3.b)), 32u)], 32u)], ~(~2780u), u_input.b)) >> (~vec4<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(38523u, var_0.x, global2[_wgslsmith_index_u32(var_0.x, 32u)]), reverseBits(vec3<u32>(4294967295u, 0u, 1u))), 1u, firstLeadingBit(u_input.b)) % vec4<u32>(32u));
    return Struct_2(_wgslsmith_mult_i32(_wgslsmith_sub_i32(2147483647i, -(-17684i << (var_0.x % 32u))), -(i32(-1i) * -global3.a)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u << (0u % 32u), ~(~arg_0)), reverseBits(arg_0)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = arg_2;
    var var_1 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0.a, min(var_0.a, i32(-1i) * -2147483647i)), _wgslsmith_add_i32(27523i, ~38052i), _wgslsmith_mult_i32(countOneBits(select(arg_2.a, 12845i, false)), -6787i)), ~firstTrailingBit(countOneBits(vec4<u32>(var_0.b, 4294967295u, 32456u, 4294967295u))));
    global1 = vec4<u32>(abs(var_1.b.x), var_1.b.x, ~_wgslsmith_mult_u32(88626u, 4106u), 1u);
    global0 = array<bool, 30>();
    var var_2 = var_0;
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 30>();
    let var_0 = Struct_1(_wgslsmith_sub_i32(-1i, _wgslsmith_sub_i32(u_input.a.x, global3.a)), countOneBits(countOneBits(max(vec4<u32>(global1.x, global1.x, 0u, 80683u), vec4<u32>(u_input.b, global1.x, global1.x, global2[_wgslsmith_index_u32(4322u, 32u)])))));
    let var_1 = var_0.b;
    global3 = Struct_2(-15310i, firstLeadingBit(func_4(vec2<f32>(1f, 1f), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(global1.x, 30u)], global0[_wgslsmith_index_u32(75528u, 30u)]), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(global3.b, 30u)]), global0[_wgslsmith_index_u32(firstLeadingBit(var_1.x), 30u)]), func_1(0u >> (0u % 32u), firstLeadingBit(u_input.a)))));
    let var_2 = true && global0[_wgslsmith_index_u32(~(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global3.b, _wgslsmith_dot_vec3_u32(vec3<u32>(15725u, 44978u, 1u), var_0.b.xxw)), 32u)] & ~(~var_0.b.x)), 30u)];
    global1 = ~(~firstTrailingBit(vec4<u32>(var_1.x >> (global2[_wgslsmith_index_u32(var_1.x, 32u)] % 32u), ~u_input.b, firstTrailingBit(global1.x), global1.x | global3.b)));
    let var_3 = Struct_2(~(~u_input.c.x), global2[_wgslsmith_index_u32(global3.b, 32u)]);
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(u_input.a.x, var_0.a, u_input.c.x << (global3.b % 32u), i32(-1i) * -1i), abs(abs(vec4<i32>(global3.a, u_input.a.x, var_3.a, var_0.a)))), global2[_wgslsmith_index_u32(42405u, 32u)], 1332f, _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~(vec4<u32>(global3.b, 48430u, 34208u, 1u) | vec4<u32>(0u, 10582u, var_0.b.x, global1.x)), vec4<u32>(~1u, 1u ^ var_1.x, 78892u << (var_3.b % 32u), func_4(vec2<f32>(-1080f, 818f), vec4<bool>(true, var_2, false, false), Struct_2(-11947i, 49591u)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_1.x, ~46565u, abs(4294967295u)), var_0.b, var_1)), firstLeadingBit(var_0.a));
}

