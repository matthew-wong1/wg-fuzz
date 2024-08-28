struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: array<vec3<u32>, 10>;

var<private> global2: i32 = 1i;

var<private> global3: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec3<u32> {
    global0 = array<u32, 5>();
    return _wgslsmith_mod_vec3_u32(~(~(~global1[_wgslsmith_index_u32(27523u, 10u)])), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 0u), 4294967295u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c, global0[_wgslsmith_index_u32(0u, 5u)], u_input.d.x), vec4<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 5u)], 0u, 1u, 45750u)), vec4<u32>(4294967295u, 24924u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]) >> (vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(68581u, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(45718u, 5u)]) % vec4<u32>(32u)))), global1[_wgslsmith_index_u32(~select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2178u, 5u)], 5u)], 64787u, true) ^ global0[_wgslsmith_index_u32(min(u_input.c >> (u_input.d.x % 32u), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 5u)], 5u)]), 5u)], 10u)]));
}

fn func_4(arg_0: vec3<u32>) -> f32 {
    var var_0 = Struct_1(u_input.b, !global3.b);
    global3 = Struct_2(_wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -231f)))), any(select(vec2<bool>(any(vec3<bool>(global3.b, var_0.b, global3.b)), var_0.b), vec2<bool>(true, true), vec2<bool>(u_input.c < 0u, true))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a, global3.a, -105f) * vec3<f32>(-789f, global3.a, -532f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-762f, global3.a, -333f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-329f, -328f, 1000f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, 1563f, -619f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a, -681f, global3.a) - vec3<f32>(-1237f, 1000f, -269f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global3.a, -890f, -654f), vec3<f32>(global3.a, global3.a, global3.a)) - vec3<f32>(global3.a, global3.a, global3.a)))), vec4<f32>(-405f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)) - global3.a), _wgslsmith_f_op_f32(global3.a - _wgslsmith_f_op_f32(145f * _wgslsmith_f_op_f32(-global3.a))), _wgslsmith_f_op_f32(-1724f - _wgslsmith_f_op_f32(-global3.a))));
    var var_2 = false;
    let var_3 = !vec3<bool>(false, !(!var_0.b && (false | global3.b)), false);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, 799f)))))));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: vec4<f32>) -> u32 {
    global1 = array<vec3<u32>, 10>();
    global0 = array<u32, 5>();
    let var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-2763f, _wgslsmith_f_op_f32(-1286f * 1f))), _wgslsmith_f_op_f32(func_4(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.a)) - arg_3.x)), 1223f) * arg_3);
    var_1 = _wgslsmith_f_op_vec4_f32(-arg_0.b);
    return 1u;
}

fn func_1() -> StorageBuffer {
    global1 = array<vec3<u32>, 10>();
    global2 = u_input.a.x;
    let var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(func_2(Struct_4(vec3<f32>(474f, -888f, 1000f), vec4<f32>(-822f, global3.a, 1389f, -1157f)), Struct_4(vec3<f32>(global3.a, 447f, -1616f), vec4<f32>(global3.a, global3.a, -540f, global3.a)), vec2<bool>(true, global3.b), vec4<f32>(-102f, global3.a, global3.a, 202f)), global0[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14223u, 5u)], 5u)], 19364u), u_input.d.xy), _wgslsmith_sub_u32(4294967295u, u_input.c)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(10543u, 5u)]) << (vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36835u, 5u)], 5u)], u_input.d.x, 0u) % vec4<u32>(32u)), min(vec4<u32>(0u, u_input.c, u_input.c, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u))), firstTrailingBit(_wgslsmith_div_vec4_u32(abs(vec4<u32>(14266u, u_input.c, 1u, u_input.d.x)), ~vec4<u32>(0u, u_input.d.x, u_input.c, 39406u)))), vec4<u32>(abs(~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)]), 5u)]), _wgslsmith_mult_u32(4294967295u, global0[_wgslsmith_index_u32(~(~57609u), 5u)]), global0[_wgslsmith_index_u32(countOneBits(firstTrailingBit(~4294967295u)), 5u)], ~0u));
    global3 = Struct_2(global3.a, -1087f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.a)) - _wgslsmith_f_op_f32(sign(490f)))));
    let var_1 = countOneBits(~(abs(u_input.a) ^ ~u_input.a) | -u_input.a);
    return StorageBuffer(-_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(2147483647i, var_1.x, var_1.x, 1i), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x) & vec4<i32>(u_input.b, -2147483647i, u_input.a.x, -1i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 21046i, var_1.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 10>();
    var var_0 = -(~(-vec4<i32>(~(-2147483647i), -u_input.e, reverseBits(u_input.e), _wgslsmith_sub_i32(-6250i, -5441i))));
    global2 = var_0.x & 8003i;
    let x = u_input.a;
    s_output = func_1();
}

