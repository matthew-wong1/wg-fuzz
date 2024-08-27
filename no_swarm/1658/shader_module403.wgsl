struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 169f, -1i);

var<private> global1: array<i32, 7> = array<i32, 7>(11569i, 9710i, -32855i, -45239i, -13048i, 28251i, 1i);

var<private> global2: vec2<bool>;

var<private> global3: array<f32, 10> = array<f32, 10>(624f, 538f, 750f, 1464f, -483f, 1800f, 1433f, -620f, -363f, -576f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<bool>) -> vec3<f32> {
    global1 = array<i32, 7>();
    var var_0 = !arg_3.zxy;
    global3 = array<f32, 10>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(353f + global0.b)), _wgslsmith_f_op_f32(abs(arg_0.b)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.b, 2811f, 883f)))))));
    var var_2 = ~(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(-1i, global1[_wgslsmith_index_u32(8674u, 7u)], global0.c, 16408i)), vec4<i32>(arg_2.c, global0.c, arg_2.c, 0i)));
    return vec3<f32>(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(u_input.c, 10u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1974f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c, 10u)] + 1800f), 1f)))), _wgslsmith_f_op_f32(f32(-1f) * -397f));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    var var_0 = 1224f;
    global0 = Struct_1(-2147483647i == global1[_wgslsmith_index_u32(1u & _wgslsmith_div_u32(~u_input.b.x, ~1u), 7u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.c, u_input.b.x), 10u)]), _wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 7u)]), arg_0.c >> (~u_input.b.x % 32u)));
    let var_1 = Struct_1(global0.c > countOneBits(global1[_wgslsmith_index_u32(u_input.c, 7u)]), -872f, u_input.a.x);
    global2 = !(!(!select(vec2<bool>(false, global2.x), !vec2<bool>(true, global0.a), vec2<bool>(true, var_1.a))));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(arg_1.xzy));
    return _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(step(487f, arg_0.b))));
}

fn func_2(arg_0: vec4<u32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_1(global2.x, _wgslsmith_f_op_f32(-global0.b), global0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(51898u, 10u)], 1000f, global0.b, 1196f) + vec4<f32>(243f, global0.b, global3[_wgslsmith_index_u32(75518u, 10u)], global0.b)))))))));
    global1 = array<i32, 7>();
    var var_1 = Struct_1(!all(select(vec2<bool>(false, false), select(vec2<bool>(global0.a, global2.x), vec2<bool>(true, false), vec2<bool>(false, global2.x)), global2.x)), _wgslsmith_f_op_f32(step(1052f, _wgslsmith_f_op_f32(234f * -637f))), ~global0.c);
    var_1 = Struct_1(all(vec2<bool>(true, !all(vec2<bool>(var_1.a, false)))), var_0, global0.c);
    let var_2 = u_input.b.x;
    return u_input.a.xy;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32, arg_3: f32) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-166f + 160f))) + 1042f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(297f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(610f, global3[_wgslsmith_index_u32(u_input.b.x, 10u)])) + arg_3)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(_wgslsmith_sub_vec4_u32(vec4<u32>(1583u, 4294967295u, u_input.c, 7386u), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 4725u)), ~vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)), vec4<u32>(u_input.c, u_input.c, ~0u, u_input.c & 79609u)), 10u)])), 264f);
    let var_1 = Struct_1(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b))) * _wgslsmith_f_op_f32(min(1382f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -434f))))), u_input.d);
    let var_2 = var_0.yzx;
    let var_3 = arg_0.c;
    let var_4 = arg_0;
    return Struct_1(!any(vec4<bool>(global0.a, any(vec3<bool>(global0.a, true, false)), global0.a, select(var_4.a, arg_0.a, false))), -1159f, var_3);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_1(any(!(!vec3<bool>(false, global0.a, true))), global3[_wgslsmith_index_u32(~46186u >> (_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.c), _wgslsmith_div_u32(1u, 4294967295u)) % 32u), 10u)], -2902i), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.c, 10u)], global3[_wgslsmith_index_u32(u_input.b.x, 10u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 10u)])))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(-1394f, global0.b), _wgslsmith_f_op_f32(-global0.b), -758f), _wgslsmith_f_op_vec3_f32(func_1(Struct_1(global0.a, global3[_wgslsmith_index_u32(1u, 10u)], -1i), 1738f <= global3[_wgslsmith_index_u32(u_input.c, 10u)], Struct_1(false, global3[_wgslsmith_index_u32(65829u, 10u)], 11124i), vec4<bool>(false, global0.a, false, true)))))), _wgslsmith_dot_vec2_i32(u_input.a.xy, select(~vec2<i32>(-1i, 5215i), func_2(vec4<u32>(u_input.b.x, 10575u, u_input.b.x, u_input.c)), !vec2<bool>(global2.x, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-768f + global3[_wgslsmith_index_u32(countOneBits(u_input.c), 10u)]) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1309f * global3[_wgslsmith_index_u32(u_input.c, 10u)]) * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 10u)]))) * -1498f));
    let var_0 = global2.x;
    let var_1 = true;
    var var_2 = vec4<i32>(countOneBits(u_input.d << (35895u % 32u)), 3944i, _wgslsmith_sub_i32(177i, 2147483647i), _wgslsmith_mod_i32(func_4(func_4(Struct_1(false, -262f, 1i), vec3<f32>(global3[_wgslsmith_index_u32(29054u, 10u)], -2387f, 206f), -21114i, -1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(886f, global3[_wgslsmith_index_u32(66093u, 10u)], -1041f) + vec3<f32>(-145f, global0.b, -1555f)), max(global1[_wgslsmith_index_u32(31794u, 7u)], global0.c), -251f).c, -_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(101979u, 7u)], global0.c)) << ((u_input.c << (u_input.c % 32u)) % 32u));
    global3 = array<f32, 10>();
    global2 = select(!select(!select(vec2<bool>(global0.a, false), vec2<bool>(false, true), var_1), vec2<bool>(true, true), false), select(vec2<bool>(select(true, any(vec2<bool>(false, false)), true), var_1), vec2<bool>(true, !var_1 | false), vec2<bool>(true, true)), vec2<bool>(!all(!vec2<bool>(true, var_1)), select(all(vec2<bool>(global0.a, var_1)), false, any(vec4<bool>(true, true, true, true)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(710f, -380f)), global3[_wgslsmith_index_u32(abs(1u), 10u)])), global0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<u32>(0u, ~0u, ~17345u, countOneBits(23434u)) & select(select(vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.c, u_input.b.x, 124922u, 1u), false), firstTrailingBit(vec4<u32>(37411u, 1u, 4294967295u, u_input.b.x)), var_1)), vec3<f32>(global3[_wgslsmith_index_u32(~(~(~u_input.c)), 10u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c, 10u)]) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -239f) + global3[_wgslsmith_index_u32(countOneBits(35976u), 10u)])), 1042f));
}

