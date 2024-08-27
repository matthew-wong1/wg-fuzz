struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1499f, 1524f, 481f, -1500f);

var<private> global1: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(4294967295u, 78532u, 21501u), vec3<u32>(2665u, 4294967295u, 0u), vec3<u32>(17534u, 47783u, 78078u), vec3<u32>(31849u, 4294967295u, 20039u), vec3<u32>(0u, 5274u, 0u), vec3<u32>(1u, 52794u, 23432u), vec3<u32>(1u, 4294967295u, 37466u), vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 20644u, 4294967295u), vec3<u32>(1u, 11395u, 0u), vec3<u32>(0u, 24378u, 4255u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 35581u, 4294967295u), vec3<u32>(44310u, 57265u, 0u), vec3<u32>(38829u, 4294967295u, 3463u), vec3<u32>(55002u, 0u, 1u), vec3<u32>(0u, 47561u, 4294967295u), vec3<u32>(9283u, 0u, 19528u), vec3<u32>(22058u, 16978u, 4294967295u), vec3<u32>(19405u, 71474u, 17391u), vec3<u32>(4294967295u, 59861u, 8569u), vec3<u32>(4294967295u, 36187u, 0u), vec3<u32>(23012u, 64093u, 764u));

var<private> global2: array<Struct_4, 31>;

var<private> global3: array<vec3<bool>, 27>;

var<private> global4: vec2<f32> = vec2<f32>(190f, -462f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_4) -> u32 {
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global0.yy, vec2<f32>(global4.x, -623f))));
    let var_0 = Struct_4(select(_wgslsmith_div_i32(-_wgslsmith_mod_i32(arg_0.a, -13202i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, 46451i, arg_0.a), vec4<i32>(-1i, 2147483647i, -1i, arg_0.a))), -_wgslsmith_div_i32(~38750i, arg_0.a), true), Struct_3(arg_0.b.a, Struct_2(!(global4.x >= -1000f))));
    var var_1 = var_0.b;
    var var_2 = !(!(!any(vec3<bool>(true, true, arg_0.b.b.a))));
    var_2 = var_1.b.a;
    return var_1.a.x;
}

fn func_3(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: vec2<bool>) -> vec3<u32> {
    global1 = array<vec3<u32>, 23>();
    var var_0 = Struct_5(any(select(select(vec4<bool>(false, false, arg_2.x, false), vec4<bool>(arg_0.a, arg_0.a, false, arg_2.x), true), vec4<bool>(true, arg_0.a, true, true), true)));
    global3 = array<vec3<bool>, 27>();
    var var_1 = Struct_3(select(vec3<u32>(1u, ~63178u, 38956u), arg_1.yxy | vec3<u32>(_wgslsmith_div_u32(arg_1.x, u_input.a.x), u_input.a.x & arg_1.x, 17895u | arg_1.x), select(true, false, arg_2.x)), Struct_2(var_0.a));
    var var_2 = vec4<i32>(-abs(-_wgslsmith_clamp_i32(-2147483647i, 2147483647i, 23742i)), _wgslsmith_clamp_i32(i32(-1i) * -(i32(-1i) * -21266i), 0i, -_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -46220i, ~(-33528i))), max(countOneBits(reverseBits(abs(-2147483647i))), abs(0i)), ~(~1i));
    return _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(~945u ^ u_input.a.x, _wgslsmith_add_u32(u_input.a.x, arg_1.x & var_1.a.x), 1u)), firstTrailingBit(_wgslsmith_mod_vec3_u32(arg_1.zwz, ~var_1.a) << (u_input.a % vec3<u32>(32u))));
}

fn func_1(arg_0: Struct_2) -> vec2<i32> {
    global2 = array<Struct_4, 31>();
    var var_0 = vec3<u32>(1u, 21509u, max(~0u, 2872u));
    let var_1 = func_3(Struct_5(all(vec4<bool>(!arg_0.a, !arg_0.a, true, arg_0.a))), reverseBits(vec4<u32>(u_input.a.x, abs(_wgslsmith_add_u32(1u, 15820u)), func_2(Struct_4(9545i, Struct_3(vec3<u32>(u_input.a.x, 110033u, var_0.x), Struct_2(arg_0.a)))), _wgslsmith_div_u32(u_input.a.x, var_0.x) << (~666u % 32u))), !(!vec2<bool>(arg_0.a, false)));
    global4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global0.zw)));
    var_0 = ~var_1;
    return vec2<i32>(-13312i, -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-13575i, -2147483647i, 1i), vec3<i32>(36709i, 0i, 26688i)), 77926i, -42064i), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 27>();
    var var_0 = vec4<i32>(-18735i, _wgslsmith_dot_vec2_i32(abs(func_1(Struct_2(false))), vec2<i32>(1i, 1i)), 0i, 1i);
    let var_1 = all(global3[_wgslsmith_index_u32(func_2(global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), 27u)]);
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~_wgslsmith_sub_u32(1u, u_input.a.x)), ~countOneBits(u_input.a.x)), 23u)], Struct_2(all(!global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(25501u, 13731u, u_input.a.x, 4821u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), 27u)])));
    var var_3 = u_input.a.x;
    var var_4 = Struct_3(_wgslsmith_mult_vec3_u32(~(u_input.a & ~u_input.a), countOneBits(~global1[_wgslsmith_index_u32(4294967295u, 23u)])), Struct_2(all(!(!vec2<bool>(var_1, var_2.b.a)))));
    var_3 = var_2.a.x;
    let var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1643f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-416f + global0.x), _wgslsmith_f_op_f32(sign(global4.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) + _wgslsmith_f_op_f32(exp2(global4.x))) - _wgslsmith_f_op_f32(-2256f - -371f)), _wgslsmith_f_op_f32(f32(-1f) * -434f)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -2070f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(774f - global4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -499f), global4.x)))));
    var var_6 = Struct_3(_wgslsmith_div_vec3_u32(~func_3(Struct_5(true), ~vec4<u32>(var_2.a.x, var_2.a.x, 0u, var_2.a.x), !vec2<bool>(true, var_1)), global1[_wgslsmith_index_u32(~func_3(Struct_5(false), vec4<u32>(u_input.a.x, 2657u, u_input.a.x, u_input.a.x), vec2<bool>(true, var_4.b.a)).x, 23u)]), Struct_2(var_1));
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.x, -103f);
}

