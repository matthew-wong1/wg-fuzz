struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global1: Struct_3;

var<private> global2: array<i32, 29>;

var<private> global3: array<vec4<i32>, 2>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: Struct_3) -> u32 {
    let var_0 = arg_2 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global1.a.b.a.x)), 468f))));
    let var_1 = vec2<bool>(true, false);
    var var_2 = Struct_3(arg_0.a, true);
    global2 = array<i32, 29>();
    var var_3 = var_1;
    return ~var_2.a.d.b;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec2<f32> {
    var var_0 = ~vec2<u32>(~4294967295u, global1.a.b.b);
    var var_1 = _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 1u, countOneBits(8337u), 38820u), ~reverseBits(vec4<u32>(reverseBits(109986u), firstTrailingBit(4294967295u), 1u, var_0.x)));
    global0 = array<vec2<bool>, 6>();
    var_0 = _wgslsmith_sub_vec2_u32(~arg_0.c.wy, ~(~vec2<u32>(0u, 0u) << (firstLeadingBit(vec2<u32>(0u, arg_0.c.x)) % vec2<u32>(32u))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-175f, 1097f, _wgslsmith_f_op_f32(-255f * _wgslsmith_f_op_f32(-global1.a.b.a.x)), -654f)), arg_0.c.x, ~vec4<u32>(global1.a.b.c.x, arg_0.b, ~var_1.x, _wgslsmith_div_u32(arg_0.c.x, ~4294967295u)));
    return var_2.a.yz;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = false;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a.b.a))), global1.a.b.c.x, vec4<u32>(46460u, abs(func_3(Struct_3(Struct_2(global3[_wgslsmith_index_u32(global1.a.e, 2u)], global1.a.b, 1u, Struct_1(global1.a.b.a, 32697u, global1.a.b.c), 52576u), global1.b), 1u, global1.a.b.a.x, Struct_3(Struct_2(vec4<i32>(arg_0, 1i, 1i, 1i), global1.a.d, 59449u, global1.a.d, 32244u), global1.b))), global1.a.e, _wgslsmith_mult_u32(~4294967295u, abs(global1.a.c)))), ~39633i));
    var var_2 = Struct_3(Struct_2(~vec4<i32>(~2147483647i, firstLeadingBit(-51742i), 1i, u_input.a), global1.a.b, ~(~_wgslsmith_div_u32(global1.a.d.b, global1.a.b.c.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a.b.a), 9056u, global1.a.b.c), _wgslsmith_mult_u32(~global1.a.b.b & _wgslsmith_clamp_u32(global1.a.c, global1.a.e, 1u), global1.a.c)), !(4294967295u == ~global1.a.d.c.x));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global1.a.b.a), vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(var_1.x + var_2.a.d.a.x), var_2.a.b.a.x, -270f))))), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 24224u, global1.a.c), vec3<u32>(34672u, 0u, 14766u)), countOneBits(global1.a.c)) | 4294967295u, global1.a.d.c);
    global0 = array<vec2<bool>, 6>();
    return var_2.b;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(global1.a.b.c, _wgslsmith_sub_vec4_u32((global1.a.d.c << (global1.a.d.c % vec4<u32>(32u))) ^ global1.a.d.c, global1.a.b.c)), vec4<u32>(global1.a.d.c.x, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, global1.a.d.c.x, 24527u)), global1.a.b.c.zyy), ~global1.a.d.c.x, _wgslsmith_div_u32(global1.a.d.c.x, _wgslsmith_sub_u32(77932u, global1.a.d.c.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.a.d.a.x)) - _wgslsmith_f_op_f32(select(678f, _wgslsmith_f_op_f32(-254f + global1.a.b.a.x), func_2(-7210i)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2325f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a.d.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(global1.a, true);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(sign(1f))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(max(global1.a.d.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1197f, -225f, -1088f, -982f), global1.a.d.a, vec4<bool>(global1.b, false, true, true))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, 344f, -1241f, var_0), vec4<f32>(-683f, global1.a.d.a.x, -1000f, var_0))), vec4<bool>(false, false, true, false))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a.d.a - vec4<f32>(global1.a.b.a.x, var_0, 1428f, var_0)))))), ~(~0u), ~vec4<u32>(4294967295u, ~global1.a.b.c.x, 27404u, 0u));
    let var_2 = Struct_3(global1.a, false == (var_1.a.x == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0)), 1631f, !global1.b))));
    var var_3 = var_1.a.xy;
    let var_4 = vec2<bool>(any(global0[_wgslsmith_index_u32(countOneBits(0u), 6u)]), global1.b);
    var_1 = var_2.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -2537f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-440f, var_0)), var_1.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_1.a.www))), !(!select(vec3<bool>(false, var_4.x, var_2.b), vec3<bool>(false, true, true), var_4.x)))), var_2.a.d.c.wyy, ~(abs(-global2[_wgslsmith_index_u32(var_2.a.d.b, 29u)]) >> (reverseBits(global1.a.d.c.x) % 32u)), 22948i);
}

