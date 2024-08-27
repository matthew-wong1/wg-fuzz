struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec2<f32> = vec2<f32>(-661f, -761f);

var<private> global2: array<bool, 23> = array<bool, 23>(false, false, false, true, false, true, true, false, false, true, false, false, false, false, true, false, true, false, false, true, false, false, false);

var<private> global3: array<u32, 22> = array<u32, 22>(43542u, 69630u, 4294967295u, 31499u, 111605u, 1u, 0u, 4294967295u, 5827u, 41522u, 4294967295u, 47535u, 1u, 4294967295u, 27544u, 1u, 0u, 20124u, 4294967295u, 22834u, 59797u, 1u);

var<private> global4: vec4<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    global2 = array<bool, 23>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -725f), 788f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * vec4<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_div_f32(1359f, -204f), global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, 620f, global1.x, -578f), vec4<f32>(107f, -172f, global1.x, 1579f), vec4<bool>(global2[_wgslsmith_index_u32(0u, 23u)], true, global2[_wgslsmith_index_u32(4294967295u, 23u)], global0.c.a))))), select(vec4<bool>(true, true, global0.b.a.a, true), !vec4<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(7955u, 22u)], 23u)], global0.c.a, global2[_wgslsmith_index_u32(1u, 23u)], true), true))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x - -1559f), -166f)), global1.x), -480f, -1000f, global1.x));
    let var_1 = global4.x << (~select(global0.b.b.x, 1u, global2[_wgslsmith_index_u32(global0.b.b.x, 23u)]) % 32u);
    let var_2 = _wgslsmith_mod_u32(global0.b.b.x, firstTrailingBit(firstTrailingBit(4294967295u) | u_input.a.x));
    var var_3 = select(select(vec4<bool>(global2[_wgslsmith_index_u32(56305u, 23u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~1u), 23u)], false, all(vec4<bool>(global0.b.a.a, true, false, false)) & true), vec4<bool>(global2[_wgslsmith_index_u32(~abs(global0.b.b.x), 23u)], false, _wgslsmith_div_f32(2092f, global1.x) <= _wgslsmith_f_op_f32(global1.x - global1.x), !(true && global0.b.a.a)), global0.a.a), vec4<bool>(any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(global2[_wgslsmith_index_u32(global0.b.b.x, 23u)], global0.b.a.a, true)), !vec3<bool>(global2[_wgslsmith_index_u32(0u, 23u)], global0.c.a, false), true)), global0.a.a, global0.a.a, !all(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 23u)], false, global2[_wgslsmith_index_u32(var_2, 23u)], false))), any(vec4<bool>(_wgslsmith_f_op_f32(exp2(global1.x)) <= -957f, global0.c.a, global0.a.a, global0.a.a)));
    return var_2;
}

fn func_2(arg_0: vec2<i32>) -> Struct_4 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1141f - global1.x))))), Struct_2(global0.c, vec2<u32>(global0.b.b.x, u_input.a.x)), global0.b);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-228f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - global1.x) * -1581f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -648f) * -666f) + _wgslsmith_f_op_f32(-var_0.a)));
    var var_1 = -(vec3<i32>(~(i32(-1i) * -1i), ~1i >> (_wgslsmith_div_u32(4294967295u, u_input.a.x) % 32u), max(_wgslsmith_dot_vec4_i32(vec4<i32>(global4.x, 22163i, -2147483647i, 0i), vec4<i32>(global4.x, -1i, 16957i, 7219i)), global4.x | u_input.c)) << (countOneBits(vec3<u32>(func_3(vec4<i32>(u_input.c, -27858i, 21452i, -11124i)), 10315u, global3[_wgslsmith_index_u32(4294967295u, 22u)] | global0.b.b.x)) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.a * global1.x), _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(-var_0.a)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.x, 418f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, var_0.a)))) * vec2<f32>(_wgslsmith_f_op_f32(var_0.a - var_0.a), 266f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -836f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1483f, var_0.a), _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, -852f), vec2<f32>(1703f, global1.x)), global4.x > u_input.b)))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * -606f), var_0.c, Struct_2(global0.a, reverseBits(vec2<u32>(global0.b.b.x & u_input.a.x, ~20019u))));
    return Struct_4(var_0.c.a, global0.b, Struct_1(!(!select(var_0.c.a.a, false, false))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec3_u32(~abs(vec3<u32>(_wgslsmith_sub_u32(global0.b.b.x, 10901u), 0u << (u_input.a.x % 32u), ~1u)), vec3<u32>(u_input.a.x, ~_wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), global0.b.b.x << (~_wgslsmith_add_u32(u_input.a.x, 1u) % 32u)));
    global3 = array<u32, 22>();
    var var_1 = func_2(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(-(~vec2<i32>(-2147483647i, 13456i)), -(global4.yw << (vec2<u32>(5080u, 59725u) % vec2<u32>(32u)))), vec2<i32>(global4.x, i32(-1i) * -global4.x)));
    global3 = array<u32, 22>();
    let var_2 = _wgslsmith_div_f32(global1.x, 267f);
    return func_2(countOneBits(firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(global4.yw, vec2<i32>(u_input.b, -48570i)), global4.yy & global4.wz)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0.b.b);
    global0 = func_2(vec2<i32>(_wgslsmith_clamp_i32(i32(-1i) * -28580i, global4.x, (u_input.c | global4.x) | abs(u_input.c)), _wgslsmith_dot_vec4_i32(countOneBits(~vec4<i32>(41577i, u_input.b, global4.x, 1i)), vec4<i32>(u_input.b, u_input.b, _wgslsmith_dot_vec3_i32(global4.yxz, global4.zyx), max(global4.x, global4.x)))));
    var var_1 = global0.b;
    global3 = array<u32, 22>();
    let var_2 = true;
    global1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1163f, 352f) * vec2<f32>(259f, global1.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(282f, -1000f) * vec2<f32>(global1.x, global1.x))))) * vec2<f32>(-1167f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 850f, false))))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + 663f))), _wgslsmith_f_op_f32(step(-527f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), -794f))))), 176f, global1.x);
    var var_4 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(max(-7179i, u_input.b) & (global4.x << (82161u % 32u)), global4.x, ~(-18373i) & u_input.b));
}

