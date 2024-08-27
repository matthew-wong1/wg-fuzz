struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(i32(-2147483648), -9966i, -7449i, 2147483647i, 2147483647i, 29199i, 11857i, -13683i, -17160i, 0i, i32(-2147483648), 9285i, 28593i, 2147483647i, 2147483647i, 2147483647i, 0i, 52966i, 41023i, 2147483647i, 2147483647i, 0i, -2428i, -1062i, 16454i, i32(-2147483648), -7793i, -47936i, -1i, -10313i, -18832i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<u32> {
    let var_0 = vec3<f32>(-192f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-150f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(173f + -635f), _wgslsmith_f_op_f32(f32(-1f) * -565f))))) + _wgslsmith_f_op_f32(round(-318f))));
    global0 = array<i32, 31>();
    global0 = array<i32, 31>();
    global0 = array<i32, 31>();
    return vec4<u32>(0u, 1u, _wgslsmith_sub_u32(~(~u_input.b), _wgslsmith_sub_u32(~(u_input.a ^ u_input.b), countOneBits(_wgslsmith_sub_u32(u_input.a, 1u)))), 1u);
}

fn func_2() -> vec4<i32> {
    global0 = array<i32, 31>();
    global0 = array<i32, 31>();
    let var_0 = vec3<i32>(u_input.c.x, 2147483647i, abs(global0[_wgslsmith_index_u32(0u, 31u)]));
    var var_1 = var_0.zy;
    let var_2 = Struct_1(func_3(), ~_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, -var_0.x, reverseBits(global0[_wgslsmith_index_u32(0u, 31u)]), 1i)), reverseBits(vec2<i32>(_wgslsmith_dot_vec3_i32(~u_input.c.wyw, -vec3<i32>(13131i, u_input.c.x, 2147483647i)), ~u_input.c.x)), any(vec2<bool>(false, false)));
    return -(~vec4<i32>(_wgslsmith_mult_i32(var_2.b.x, -u_input.c.x), -41244i, ~(-37665i), ~(-35927i) >> (func_3().x % 32u)));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> vec2<i32> {
    let var_0 = Struct_1(min(firstTrailingBit(vec4<u32>(1u, _wgslsmith_mod_u32(arg_1.a.x, 1u), select(u_input.b, u_input.a, false), arg_1.a.x)), arg_1.a), vec4<i32>(-2147483647i, _wgslsmith_div_i32(~(-7846i), u_input.c.x), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-795i, -6807i, 1i, u_input.c.x)), select(vec4<i32>(-29951i, arg_3, arg_0, arg_0) >> (vec4<u32>(1u, 0u, arg_1.a.x, 4294967295u) % vec4<u32>(32u)), firstTrailingBit(u_input.c), vec4<bool>(true, true, true, true))), ~_wgslsmith_dot_vec4_i32(func_2(), -u_input.c)), vec2<i32>(-arg_0, global0[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(u_input.a, 39037u), 13553u) >> (88999u % 32u), 31u)]), true);
    let var_1 = 345f;
    global0 = array<i32, 31>();
    let var_2 = select(vec4<bool>(false, ~4294967295u <= _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, 0u, var_0.a.x, u_input.a)), ~vec4<u32>(15184u, 0u, var_0.a.x, arg_1.a.x)), false, !(!(false | var_0.d))), select(!vec4<bool>(all(vec2<bool>(var_0.d, false)), var_0.d, true, var_0.d && false), vec4<bool>(any(vec2<bool>(false, true)), any(select(vec4<bool>(true, false, var_0.d, var_0.d), vec4<bool>(var_0.d, true, true, true), true)), true, var_0.d && var_0.d), !(!(!vec4<bool>(true, true, var_0.d, true)))), vec4<bool>(any(select(vec2<bool>(var_0.d, true), !vec2<bool>(var_0.d, var_0.d), vec2<bool>(var_0.d, false))), var_0.d, all(vec4<bool>(any(vec4<bool>(var_0.d, var_0.d, true, false)), any(vec2<bool>(true, false)), var_0.d, all(vec2<bool>(var_0.d, var_0.d)))), var_0.d));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 1534f, arg_2) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2453f, -295f, 1000f), vec3<f32>(-366f, arg_2, -1745f), false)))))), var_0, var_0, var_1);
    return vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(0u, 31u)], 47222i)), vec2<i32>(0i, _wgslsmith_clamp_i32(2147483647i, arg_0, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 31>();
    var var_0 = _wgslsmith_clamp_i32((_wgslsmith_dot_vec2_i32(vec2<i32>(35216i, u_input.c.x) & vec2<i32>(0i, -2147483647i), countOneBits(u_input.c.ww)) & ~(~(-8617i))) | countOneBits(-20016i), global0[_wgslsmith_index_u32(0u | (u_input.b ^ _wgslsmith_mod_u32(u_input.a | u_input.b, reverseBits(u_input.a))), 31u)], 65794i);
    var var_1 = true;
    var var_2 = func_1(min(-74925i, i32(-1i) * -global0[_wgslsmith_index_u32(~4294967295u, 31u)]), Struct_3(vec4<u32>(56594u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a, 4282u) | vec4<u32>(20524u, 1u, 1u, 39777u), ~vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.a)), ~0u, u_input.b >> (~u_input.b % 32u))), -2083f, 7344i);
    let var_3 = Struct_3(~vec4<u32>(_wgslsmith_mult_u32(~0u, ~u_input.a), min(u_input.a, 1u), 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(14742u, 1u), vec2<u32>(u_input.a, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, 451u) ^ var_3.a.wy);
}

