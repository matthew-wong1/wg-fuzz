struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, -222f, true, -725f);

var<private> global1: array<f32, 28>;

var<private> global2: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(92842u, 52380u, ~u_input.a), 28u)])), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -932f)))), global0.d), _wgslsmith_div_u32(u_input.a, max(~(~u_input.a), 4294967295u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, ~(u_input.a << (u_input.a % 32u))), vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_mult_u32(0u, u_input.a) << (4294967295u % 32u))));
    global1 = array<f32, 28>();
    let var_1 = abs(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(48382u, u_input.a, var_0.b), vec3<u32>(0u, 1u, 24061u), false), vec3<u32>(var_0.c.x, var_0.c.x, 1u) << (vec3<u32>(var_0.b, 55082u, var_0.b) % vec3<u32>(32u))), 30628u), var_0.b, var_0.b));
    var var_2 = select(max(~1u, ~_wgslsmith_sub_u32(41678u, var_0.b)), var_1.x, arg_0.c.a);
    var var_3 = ~(reverseBits(firstTrailingBit(~u_input.b)) | -20082i);
    return _wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(-var_0.a));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_5(-1i <= (((u_input.b & u_input.b) >> (min(u_input.a, u_input.a) % 32u)) | u_input.b), _wgslsmith_sub_u32(select(u_input.a, u_input.a, global0.c) << (u_input.a % 32u), u_input.a) != ~u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), global2.a, 348f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec2<f32>(1185f, 1000f), Struct_1(true, -1236f, false, -830f), Struct_1(false, 3060f, global0.c, 426f), 753f, Struct_1(true, 374f, false, global1[_wgslsmith_index_u32(71817u, 28u)])))))), 95393u, abs(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, 74818u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 0u))), u_input.a)));
    global1 = array<f32, 28>();
    global1 = array<f32, 28>();
    let var_1 = u_input.b;
    global0 = Struct_1(true, _wgslsmith_div_f32(-294f, 1286f), !global0.c, _wgslsmith_f_op_f32(211f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.a, global2.a))))));
    return Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2640f)))));
}

fn func_1() -> vec4<bool> {
    global2 = func_2();
    var var_0 = false;
    let var_1 = vec2<u32>(select(u_input.a & _wgslsmith_add_u32(28735u, 4314u), _wgslsmith_div_u32(u_input.a & u_input.a, ~85859u), true) & firstLeadingBit(~u_input.a), 1u);
    var var_2 = 0u & _wgslsmith_clamp_u32(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), ~var_1), _wgslsmith_add_u32(u_input.a, var_1.x));
    let var_3 = Struct_1(!any(vec4<bool>(true, true, false, all(vec4<bool>(false, global0.c, false, global0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -352f) - _wgslsmith_div_f32(global1[_wgslsmith_index_u32(abs(57876u), 28u)], -1803f))), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(470f)) - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-895f, 312f)), global0.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-607f * global2.a), _wgslsmith_f_op_f32(global0.b + global1[_wgslsmith_index_u32(var_1.x, 28u)])))));
    return vec4<bool>(var_3.a, !select(!all(vec4<bool>(var_3.a, false, true, false)), (u_input.b < u_input.b) && !var_3.a, true), global0.c, any(select(vec4<bool>(var_3.a & var_3.c, true, var_3.c && false, true), vec4<bool>(global0.a, !global0.a, true, global2.a <= global1[_wgslsmith_index_u32(42250u, 28u)]), !vec4<bool>(global0.a, var_3.c, true, var_3.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(!vec4<bool>(global0.c, global0.a, false, global0.c), !vec4<bool>(false, global0.c, true, global0.c), select(vec4<bool>(global0.a, false, false, global0.a), select(vec4<bool>(global0.a, global0.c, global0.c, false), vec4<bool>(true, global0.a, global0.a, false), vec4<bool>(false, false, global0.a, global0.a)), select(vec4<bool>(false, true, global0.c, false), vec4<bool>(false, global0.a, false, global0.a), global0.a))), select(!vec4<bool>(global0.c, global0.c, false, global0.a), select(!vec4<bool>(global0.a, true, global0.a, global0.a), !vec4<bool>(global0.a, global0.c, global0.c, true), select(vec4<bool>(global0.a, global0.c, global0.c, global0.c), vec4<bool>(true, false, false, global0.c), vec4<bool>(global0.a, true, true, global0.a))), global0.b > _wgslsmith_f_op_f32(round(-1000f))), !(1u > (0u >> (u_input.a % 32u)))), select(select(func_1(), vec4<bool>(true, !global0.c, false, func_1().x), select(vec4<bool>(true, false, true, false), !vec4<bool>(global0.c, global0.a, false, global0.a), all(vec3<bool>(global0.c, true, global0.a)))), select(!vec4<bool>(true, global0.c, true, false), func_1(), select(!vec4<bool>(false, false, false, global0.c), !vec4<bool>(global0.c, global0.a, global0.a, global0.a), all(vec3<bool>(global0.a, global0.a, global0.a)))), func_1()), select(vec4<bool>(u_input.a <= u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-21294i, 2147483647i, u_input.b), vec3<i32>(1i, u_input.b, 1i)) != 2147483647i, global0.c, true), vec4<bool>(all(vec2<bool>(global0.a, global0.c)), !(u_input.b >= 1i), false, false), global0.a));
    var var_1 = func_2();
    var_1 = func_2();
    let var_2 = Struct_5(global0.a, global0.c, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(global2.a, _wgslsmith_f_op_f32(global0.d - global1[_wgslsmith_index_u32(u_input.a, 28u)]), _wgslsmith_f_op_f32(ceil(-1959f))), vec3<f32>(1811f, _wgslsmith_div_f32(global0.b, global0.b), _wgslsmith_f_op_f32(sign(var_1.a)))))), 3486u, 4294967295u);
    let var_3 = ~(~(-43557i));
    var var_4 = Struct_1(true, global2.a, (-2147483647i != ((var_3 | -1i) << (var_2.e % 32u))) || select(true, global0.a, var_0.x), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, var_3);
}

