struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<u32, 12> = array<u32, 12>(7223u, 43077u, 0u, 0u, 43972u, 4294967295u, 0u, 4294967295u, 82824u, 22281u, 1u, 4294967295u);

var<private> global2: vec4<f32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec4<i32> {
    var var_0 = _wgslsmith_mult_vec2_u32(abs(abs(~vec2<u32>(33149u, global1[_wgslsmith_index_u32(38395u, 12u)]))), ~abs(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 12u)], 32936u, global1[_wgslsmith_index_u32(0u, 12u)]), vec4<u32>(63051u, 6733u, 10613u, global1[_wgslsmith_index_u32(32669u, 12u)])), 4294967295u)));
    var_0 = vec2<u32>(abs(var_0.x), global1[_wgslsmith_index_u32(0u, 12u)]);
    global1 = array<u32, 12>();
    var_0 = vec2<u32>(~_wgslsmith_div_u32(var_0.x, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(var_0.x, 12u)], global1[_wgslsmith_index_u32(40065u, 12u)])), abs(1u)) & abs(_wgslsmith_sub_vec2_u32(vec2<u32>(43723u, ~45752u), vec2<u32>(var_0.x, var_0.x) | vec2<u32>(global1[_wgslsmith_index_u32(37639u, 12u)], var_0.x)));
    let var_1 = global2.wxw;
    return _wgslsmith_sub_vec4_i32(-countOneBits(-vec4<i32>(arg_0, -1i, arg_0, -1525i)), ~abs(firstTrailingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, 59652i)))) >> (abs(select(min(vec4<u32>(var_0.x, global1[_wgslsmith_index_u32(4294967295u, 12u)], var_0.x, 1u), vec4<u32>(global1[_wgslsmith_index_u32(var_0.x, 12u)], 1203u, 23243u, global1[_wgslsmith_index_u32(53701u, 12u)])) << (vec4<u32>(60646u, var_0.x, 4294967295u, var_0.x) % vec4<u32>(32u)), reverseBits(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(99713u, 12u)], 12u)], 5531u, 1u, var_0.x)), !vec4<bool>(global0.x, true, true, false))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = select(func_3(select(60270i ^ arg_0.x, ~u_input.a.x, global0.x)), vec4<i32>(_wgslsmith_mod_i32(-arg_0.x, reverseBits(arg_0.x)), u_input.b >> (4294967295u % 32u), arg_0.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_0.x, 12779i), 1i) ^ arg_0.x), vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(arg_1.x, true), arg_1.x)) != all(arg_1.zx), false || arg_1.x, true, !(22718u == global1[_wgslsmith_index_u32(36187u, 12u)]) | all(vec2<bool>(arg_1.x, false))));
    var var_1 = vec4<f32>(895f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(221f, _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(f32(-1f) * -165f)), 1u <= global1[_wgslsmith_index_u32(~arg_3.x, 12u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(floor(-379f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * -410f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1607f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.x, global2.x, global0.x)) + -718f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(683f, 816f)) * _wgslsmith_f_op_f32(global2.x - arg_2.x)))));
    var var_2 = _wgslsmith_f_op_f32(select(-1046f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -212f))), _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(17169u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 12u)], arg_3.x)), ~(vec4<u32>(0u, global1[_wgslsmith_index_u32(0u, 12u)], arg_3.x, arg_3.x) << (vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3.x, 12u)], 12u)], 40616u) % vec4<u32>(32u)))) <= 79126u));
    var var_3 = Struct_3(!select(vec3<bool>(var_0.x != u_input.b, true, true), vec3<bool>(arg_3.x > global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 12u)], arg_1.x, arg_1.x), true), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(arg_2.x, -1000f)), 910f)));
    var var_4 = Struct_3(vec3<bool>(var_3.a.x, var_3.a.x, abs(65716u) < global1[_wgslsmith_index_u32(countOneBits(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26596u, 12u)], 12u)]), 12u)]), _wgslsmith_f_op_f32(961f - arg_2.x));
    return Struct_1(arg_0, u_input.a, arg_0.xxw, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, 611f, -365f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, var_3.b, -1000f, var_3.b), vec4<f32>(1674f, var_1.x, arg_2.x, 1387f), false))) * vec4<f32>(global2.x, -1250f, _wgslsmith_f_op_f32(var_3.b * 796f), 579f)) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(135f + var_4.b) - -1190f), -191f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -419f))), var_4.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_2 {
    global2 = _wgslsmith_f_op_vec4_f32(arg_2.d * vec4<f32>(1104f, -1376f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(305f)) * _wgslsmith_f_op_f32(-1159f * arg_1.x)))), global2.x));
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(min(-1013f, _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(min(1065f, arg_0.d.x)))))) + global2.zx);
    var var_1 = _wgslsmith_f_op_f32(floor(arg_0.d.x));
    global0 = vec4<bool>(0u >= _wgslsmith_add_u32(4294967295u, global1[_wgslsmith_index_u32(select(abs(32816u), _wgslsmith_mult_u32(112515u, global1[_wgslsmith_index_u32(17596u, 12u)]), true), 12u)]), true, global0.x, any(vec3<bool>(true, true, true)));
    global1 = array<u32, 12>();
    return Struct_2(arg_0.d.x);
}

fn func_1(arg_0: vec4<u32>) -> bool {
    let var_0 = func_4(func_2(vec4<i32>(u_input.b, _wgslsmith_add_i32(i32(-1i) * -69755i, -19065i), 1i, 0i >> (arg_0.x % 32u)), global0.wzx, global2.wxw, ~firstLeadingBit(arg_0.wy << (arg_0.zx % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1060f, _wgslsmith_f_op_f32(global2.x + -1523f), global2.x) + vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1024f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + 1243f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), func_2(select(~vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, 1i), vec4<i32>(u_input.a.x, -1i, abs(2147483647i), 1i), !vec4<bool>(true, global0.x, false, global0.x)), global0.xzx, global2.wxw, ~firstTrailingBit(arg_0.zy)), abs(u_input.a));
    let var_1 = func_2(-vec4<i32>(min(-u_input.a.x, ~u_input.b), u_input.b, -u_input.b, ~(-2147483647i)), global0.zzy, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1630f, 496f, -170f) + _wgslsmith_f_op_vec3_f32(-global2.xyy)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-901f, -544f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, var_0.a, var_0.a))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -461f), _wgslsmith_f_op_f32(global2.x + var_0.a), _wgslsmith_div_f32(var_0.a, var_0.a)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.x, var_0.a, var_0.a), vec3<f32>(global2.x, global2.x, global2.x)))))), vec2<u32>(arg_0.x, _wgslsmith_clamp_u32(arg_0.x, global1[_wgslsmith_index_u32(12385u >> (global1[_wgslsmith_index_u32(~arg_0.x, 12u)] % 32u), 12u)], max(_wgslsmith_sub_u32(arg_0.x, 1u), _wgslsmith_sub_u32(arg_0.x, 4294967295u)))));
    let var_2 = func_2(var_1.a, global0.wwz, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -240f))), -2374f, 931f), ~select(vec2<u32>(~global1[_wgslsmith_index_u32(0u, 12u)], 30740u), abs(arg_0.wz), !all(global0.xx)));
    global1 = array<u32, 12>();
    global1 = array<u32, 12>();
    return !global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<i32>(u_input.b << (15685u % 32u), -1i, 1i, min(_wgslsmith_clamp_i32(1i, ~u_input.a.x, countOneBits(u_input.b)), u_input.a.x)), min(countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a)) ^ (-u_input.a ^ u_input.a), u_input.a), select(~vec3<i32>(62073i, 1i, u_input.a.x), -select(firstLeadingBit(vec3<i32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.b, -29722i), vec3<i32>(u_input.a.x, -2147483647i, u_input.b)), -1i > u_input.b), select(vec3<bool>(false, false, true), select(select(vec3<bool>(true, true, true), vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, true, global0.x)), select(vec3<bool>(false, false, true), vec3<bool>(global0.x, global0.x, false), global0.x), !global0.yxx), func_1(vec4<u32>(63923u, 4294967295u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21206u, 12u)], 12u)])))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(139f, 1066f))))), 523f, global2.x, _wgslsmith_f_op_f32(-global2.x)), global2.x);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, -366f, _wgslsmith_f_op_f32(-global2.x), -373f), _wgslsmith_f_op_vec4_f32(step(var_0.d, vec4<f32>(_wgslsmith_f_op_f32(340f + global2.x), _wgslsmith_f_op_f32(var_0.d.x + var_0.d.x), global2.x, _wgslsmith_f_op_f32(min(var_0.e, var_0.d.x)))))));
    var var_1 = u_input.a.x;
    let var_2 = Struct_3(vec3<bool>(all(select(!vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(global0.x, false, true, true))), any(!vec4<bool>(global0.x, true, false, global0.x)), !global0.x), global2.x);
    var var_3 = vec3<u32>(4294967295u, 135131u, ~(_wgslsmith_dot_vec3_u32(~vec3<u32>(13166u, 1u, global1[_wgslsmith_index_u32(48966u, 12u)]), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)]), vec3<u32>(33915u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10858u, 12u)], 12u)], 12u)]))) >> (global1[_wgslsmith_index_u32(reverseBits(min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)], global1[_wgslsmith_index_u32(1u, 12u)])), 12u)] % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(-var_0.b.x)) & abs(-15266i), _wgslsmith_clamp_i32(1i, u_input.a.x, ~var_0.b.x), var_0.a, vec4<f32>(var_0.e, var_0.d.x, global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_4(Struct_1(vec4<i32>(44836i, 1i, 2389i, var_0.a.x), vec2<i32>(u_input.b, -29296i), var_0.a.wxz, vec4<f32>(-1262f, var_0.e, 2184f, 218f), global2.x), global2.yww, Struct_1(var_0.a, vec2<i32>(-1i, u_input.b), var_0.c, vec4<f32>(-1965f, -1107f, -1003f, var_2.b), 223f), u_input.a).a), 2266f))));
}

