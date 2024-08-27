struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-1000f, 475f, 815f), vec4<u32>(12452u, 1257u, 4294967295u, 1u), 4294967295u);

var<private> global1: array<bool, 31> = array<bool, 31>(false, false, true, false, true, true, true, false, false, false, true, false, true, false, false, false, true, true, false, true, false, false, false, true, true, false, true, true, false, false, false);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec4<u32>) -> u32 {
    global0 = arg_1;
    global0 = arg_1;
    global1 = array<bool, 31>();
    let var_0 = ~max(arg_3.yx, arg_3.zy);
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_1.a))))), ~firstLeadingBit(abs(countOneBits(vec4<u32>(0u, u_input.a.x, u_input.a.x, 50640u)))), var_0.x);
    return max(_wgslsmith_mult_u32(arg_1.b.x, ~select(1u, ~24806u, any(vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 31u)], arg_2.x, arg_2.x, arg_2.x)))), firstTrailingBit(1u));
}

fn func_3() -> vec3<f32> {
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1408f, 744f, 131f))))), _wgslsmith_mult_vec4_u32(vec4<u32>(~countOneBits(u_input.b.x), u_input.a.x, select(_wgslsmith_sub_u32(global0.b.x, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), vec4<u32>(global0.b.x, 0u, 12860u, 58640u)), true), 6244u), ~_wgslsmith_add_vec4_u32(global0.b | vec4<u32>(u_input.a.x, u_input.a.x, 21653u, 26695u), u_input.a)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, 28477u << (global0.c % 32u)) | ~firstLeadingBit(u_input.b.x), 11018u));
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(127f, _wgslsmith_f_op_f32(floor(-784f)), -1124f, global0.a.x) + vec4<f32>(-623f, 202f, _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(665f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(2140f, global0.a.x, global1[_wgslsmith_index_u32(39523u, 31u)])), -1181f)))));
    global0 = Struct_2(var_0.xyy, vec4<u32>(countOneBits(7175u), _wgslsmith_mod_u32(reverseBits(func_1(-6923i, Struct_2(vec3<f32>(398f, global0.a.x, 420f), global0.b, 1u), vec2<bool>(global1[_wgslsmith_index_u32(global0.c, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)]), u_input.a)), ~(~18063u)), u_input.b.x, reverseBits(112694u ^ u_input.a.x)), ~(~global0.b.x));
    global1 = array<bool, 31>();
    global0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(max(772f, 648f)), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(exp2(var_0.x))))), max(vec4<u32>(u_input.b.x, 4294967295u, countOneBits(1u), 64978u), reverseBits(u_input.a)), ~(~(~44337u)));
    return global0.a;
}

fn func_2() -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global0.a))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * _wgslsmith_f_op_vec3_f32(min(global0.a, vec3<f32>(971f, global0.a.x, global0.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.a, global0.a, false)) - vec3<f32>(283f, 1309f, global0.a.x)))), global0.b, ~(1204u ^ max(~4294967295u, ~u_input.b.x)));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global0.a))), abs(abs((global0.b ^ vec4<u32>(var_0.b.x, var_0.b.x, 1u, u_input.a.x)) | vec4<u32>(4294967295u, global0.c, 4294967295u, global0.b.x))), _wgslsmith_mod_u32(1u, u_input.a.x));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(floor(-954f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(499f - -219f))))), ~select(min(var_0.b, u_input.a) ^ vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x), ~var_0.b, global1[_wgslsmith_index_u32(~29227u, 31u)]), 1u);
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, 6581i), ~(-15433i)), firstTrailingBit(-1i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(37859i, -36162i, 1i, -2147483647i), vec4<i32>(35358i, 6632i, 0i, 1i)), ~1i) & abs(max(-vec4<i32>(2147483647i, 23666i, -1i, -1i), ~vec4<i32>(-1i, 19838i, 17009i, -2147483647i))), -min(firstTrailingBit(vec4<i32>(10519i, -661i, -43225i, -44600i)), -vec4<i32>(1i, -34858i, 1i, 2147483647i)) << (~select(~vec4<u32>(var_0.b.x, 1u, var_0.b.x, 1u), abs(global0.b), any(vec2<bool>(true, global1[_wgslsmith_index_u32(global0.c, 31u)]))) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global0.a.xy))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(-1000f * -463f)))))));
    return 91628i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global0.b.x;
    var var_1 = ~58195u;
    let var_2 = firstTrailingBit(global0.b) & vec4<u32>(_wgslsmith_div_u32(~6194u | global0.c, _wgslsmith_div_u32(1u, 13857u)), global0.c, 65u, func_1(1i >> ((global0.c ^ u_input.b.x) % 32u), Struct_2(global0.a, vec4<u32>(global0.b.x, u_input.b.x, u_input.b.x, 1u), global0.b.x), vec2<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(39041u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)], true)), false), u_input.a));
    var var_3 = ~_wgslsmith_add_i32(min(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, 34533i, -1i), vec4<i32>(-2043i, -16008i, -16471i, -24809i)), 1i), -1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -38948i, 1i), vec3<i32>(2147483647i, 2147483647i, -1i))) <= -1i;
    var_0 = 38941u;
    let var_4 = _wgslsmith_div_vec3_i32(vec3<i32>(12150i, -2147483647i, 11214i), vec3<i32>(1i, ~1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 0i, -13177i), vec3<i32>(-50572i, 2147483647i, -7225i))) | vec3<i32>(min(77968i, min(41811i, -14788i)), -2147483647i, func_2()));
    let var_5 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.a), vec3<f32>(-547f, global0.a.x, global0.a.x), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], false, false))) - vec3<f32>(global0.a.x, _wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(abs(global0.a.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, 242f)))), max(~u_input.a, select(~vec4<u32>(u_input.a.x, 62813u, 4294967295u, u_input.b.x) & ~vec4<u32>(global0.b.x, u_input.b.x, 1u, var_2.x), vec4<u32>(~u_input.a.x, countOneBits(u_input.a.x), _wgslsmith_sub_u32(var_2.x, 4294967295u), firstTrailingBit(var_2.x)), !(!global1[_wgslsmith_index_u32(11884u, 31u)]))), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, var_4.x, var_4.zy);
}

