struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(25430u, 136161u, 1u, 48769u, 18345u, 1u, 36024u, 4294967295u, 1u, 19019u, 0u, 14900u, 1u, 4294967295u, 11076u, 1u, 53623u, 11163u, 4294967295u, 91349u, 0u, 98706u, 24665u, 1u, 1u);

var<private> global1: array<Struct_1, 21>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> u32 {
    return ~(~global0[_wgslsmith_index_u32(min(u_input.b, ~global0[_wgslsmith_index_u32(32424u, 25u)] & 0u), 25u)]);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<u32>) -> u32 {
    global1 = array<Struct_1, 21>();
    global0 = array<u32, 25>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -498f);
    global1 = array<Struct_1, 21>();
    let var_1 = !vec4<bool>(true, true, false, all(vec2<bool>(any(vec4<bool>(false, false, arg_0, arg_0)), arg_0)));
    return arg_2.x;
}

fn func_1(arg_0: u32) -> vec4<u32> {
    global0 = array<u32, 25>();
    let var_0 = vec2<bool>(all(vec2<bool>(any(vec2<bool>(false, true)), true)), true);
    global0 = array<u32, 25>();
    var var_1 = global1[_wgslsmith_index_u32(func_3(true, _wgslsmith_sub_vec2_u32(min(min(vec2<u32>(arg_0, 4294967295u), vec2<u32>(15729u, 4294967295u)), min(vec2<u32>(112857u, 4294967295u), vec2<u32>(arg_0, 1u))), vec2<u32>(arg_0, arg_0)) >> (vec2<u32>(u_input.b, ~func_2(u_input.a, false, var_0.x, Struct_1(vec4<i32>(0i, u_input.a.x, 2147483647i, -2147483647i), -1088i, -1i, 1000f))) % vec2<u32>(32u)), ~_wgslsmith_add_vec4_u32(select(vec4<u32>(arg_0, 0u, 4479u, 18377u) << (vec4<u32>(arg_0, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 25u)], 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)]) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(60434u, 25u)], global0[_wgslsmith_index_u32(arg_0, 25u)], 4294967295u, 48532u)), true), _wgslsmith_sub_vec4_u32(~vec4<u32>(5909u, arg_0, 0u, global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec4<u32>(u_input.b, arg_0, u_input.b, 4294967295u)))), 21u)];
    var var_2 = _wgslsmith_div_i32(1i << (firstTrailingBit(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 25u)], 27249u, arg_0)), vec3<u32>(618u, 1u, arg_0) ^ vec3<u32>(0u, 0u, global0[_wgslsmith_index_u32(101892u, 25u)]))) % 32u), -1i);
    return ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u << (_wgslsmith_mod_u32(48637u, u_input.b) % 32u), ~(~global0[_wgslsmith_index_u32(4294967295u, 25u)])), firstLeadingBit(abs(vec4<u32>(arg_0, arg_0, arg_0, 76909u))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = ~1i;
    var var_1 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(-u_input.a.x << (~arg_0 % 32u), 0i, arg_2.a.x | -1i, 0i), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 22283i, arg_1.b, -28539i), vec4<i32>(u_input.a.x, arg_1.b, arg_2.c, -1i)) >> (vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], u_input.b, u_input.b, 0u) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x) ^ (vec4<i32>(-27642i, -2147483647i, 0i, 20893i) << (vec4<u32>(42782u, global0[_wgslsmith_index_u32(44784u, 25u)], u_input.b, 1u) % vec4<u32>(32u))))), 2147483647i, arg_1.b, _wgslsmith_div_f32(2472f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1604f, -1746f)))))));
    var var_2 = global1[_wgslsmith_index_u32(func_2(arg_2.a.yy, any(!vec3<bool>(true, all(vec3<bool>(true, false, true)), true)), all(vec2<bool>(!any(vec2<bool>(true, false)), all(vec3<bool>(true, true, true)))), Struct_1(vec4<i32>(select(firstTrailingBit(arg_1.c), u_input.a.x & arg_2.a.x, true), arg_2.a.x, ~abs(var_1.c), var_1.a.x), ~max(var_1.c, 0i), ~(-(~(-2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2216f - 2027f)))), 21u)];
    return firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(~2147483647i, -2147483647i), _wgslsmith_mult_i32(min(16541i, select(0i, 0i, true)), ~(-2147483647i)), 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1478f;
    global0 = array<u32, 25>();
    var var_1 = _wgslsmith_mult_u32(~abs(25902u), max(30331u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)]));
    let var_2 = var_0;
    var var_3 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, ~(~1u), firstTrailingBit(~15951u)), ~(~vec3<u32>(u_input.b, 1u, global0[_wgslsmith_index_u32(u_input.b, 25u)]) << (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.b, 25u)], 4294967295u), vec3<u32>(4294967295u, 103744u, global0[_wgslsmith_index_u32(86360u, 25u)])) % vec3<u32>(32u))), abs(vec3<u32>(0u, u_input.b, 1u)));
    let var_4 = _wgslsmith_dot_vec3_i32(abs(max(vec3<i32>(-u_input.a.x, _wgslsmith_mult_i32(0i, 12799i), ~0i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 3796i, -1i), vec3<i32>(1i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -2147483647i, 11839i)) ^ reverseBits(vec3<i32>(u_input.a.x, 17166i, -1i)))), func_4(_wgslsmith_mult_u32(reverseBits(4294967295u), u_input.b), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, var_3.x, u_input.b, 43080u), func_1(global0[_wgslsmith_index_u32(var_3.x, 25u)])), 21u)], Struct_1(-vec4<i32>(25329i, 4199i, 19307i, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -6934i, u_input.a.x), vec3<i32>(1i, u_input.a.x, -2147483647i)), ~(-29102i), _wgslsmith_f_op_f32(f32(-1f) * -503f))) ^ max(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-23884i, u_input.a.x, -1i)), vec3<i32>(557i, -10203i, 0i) ^ vec3<i32>(-21989i, u_input.a.x, u_input.a.x)), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 31212i, -1i))));
    var var_5 = global0[_wgslsmith_index_u32(1u, 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, ~u_input.b, u_input.b), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 62124u, global0[_wgslsmith_index_u32(var_3.x, 25u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(106558u, 25u)], 25u)], 1u, u_input.b)), vec3<u32>(global0[_wgslsmith_index_u32(var_3.x, 25u)], u_input.b, 3432u) & vec3<u32>(0u, 62787u, 4294967295u)), countOneBits(~vec3<u32>(var_3.x, u_input.b, u_input.b)))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(var_3.x), 25u)], 25u)], vec2<i32>(u_input.a.x, var_4), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-558f, 707f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(797f, -1663f), vec2<f32>(var_2, var_0), false))), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0)), -1281f)), vec2<f32>(-275f, var_2))));
}

