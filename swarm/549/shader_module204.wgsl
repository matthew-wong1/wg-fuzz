struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(59531u, vec2<u32>(28783u, 1u), true), Struct_1(25451u, vec2<u32>(0u, 68537u), false), Struct_1(6451u, vec2<u32>(0u, 18656u), false), Struct_1(4648u, vec2<u32>(1u, 103790u), true), Struct_1(0u, vec2<u32>(65598u, 71933u), true), Struct_1(9267u, vec2<u32>(5678u, 14297u), false), Struct_1(4138u, vec2<u32>(24309u, 20249u), true), Struct_1(40290u, vec2<u32>(4294967295u, 35485u), true), Struct_1(1u, vec2<u32>(4294967295u, 15784u), false), Struct_1(47687u, vec2<u32>(0u, 1u), false), Struct_1(17430u, vec2<u32>(46591u, 47126u), false), Struct_1(4294967295u, vec2<u32>(4294967295u, 1u), false), Struct_1(32954u, vec2<u32>(29123u, 25824u), true), Struct_1(1u, vec2<u32>(4294967295u, 7015u), true), Struct_1(0u, vec2<u32>(24959u, 17791u), false), Struct_1(23171u, vec2<u32>(13636u, 1u), false), Struct_1(4294967295u, vec2<u32>(5407u, 48899u), false), Struct_1(4294967295u, vec2<u32>(9291u, 1u), true), Struct_1(37673u, vec2<u32>(53810u, 41464u), false), Struct_1(0u, vec2<u32>(0u, 17116u), false), Struct_1(69705u, vec2<u32>(4294967295u, 0u), false), Struct_1(50542u, vec2<u32>(0u, 1u), false), Struct_1(6616u, vec2<u32>(4294967295u, 55940u), true), Struct_1(1u, vec2<u32>(0u, 24707u), false), Struct_1(27509u, vec2<u32>(25534u, 80333u), false), Struct_1(67499u, vec2<u32>(25942u, 1u), true));

var<private> global1: i32 = -21849i;

var<private> global2: vec4<i32> = vec4<i32>(0i, -1i, 0i, 48280i);

var<private> global3: vec3<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = 1i;
    var var_1 = ~(i32(-1i) * -1761i);
    var_1 = -53063i;
    let var_2 = false;
    return countOneBits(_wgslsmith_div_i32(global2.x, 52168i));
}

fn func_3(arg_0: i32) -> f32 {
    global2 = u_input.a;
    let var_0 = Struct_2(select(vec2<bool>(_wgslsmith_mult_i32(u_input.a.x, -2147483647i) == _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)))), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec3<bool>(false, true, true))), true), Struct_1(u_input.b.x, u_input.b >> (~select(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x), false) % vec2<u32>(32u)), u_input.a.x == 2147483647i), Struct_1(max(~u_input.b.x, ~(~10836u)), u_input.b, true || all(vec4<bool>(true, true, true, true))), vec3<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -101f)), _wgslsmith_f_op_f32(sign(global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.x - 134f))), -1000f))));
    let var_1 = _wgslsmith_f_op_f32(var_0.e - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-895f, var_0.e, 694f))))))));
    let var_3 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1420f * _wgslsmith_f_op_f32(min(-1597f, var_0.e))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32, arg_3: vec3<f32>) -> Struct_1 {
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_3.x, -172f, arg_3.x))) + _wgslsmith_f_op_vec3_f32(min(arg_3, arg_3)))), arg_3));
    let var_0 = -288f;
    global1 = 1i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.x))))) + _wgslsmith_f_op_f32(min(global3.x, -342f)));
    let var_2 = false;
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: u32) -> Struct_1 {
    var var_0 = func_2(arg_0.c, ~(select(select(vec2<i32>(-37975i, u_input.a.x), u_input.a.wy, vec2<bool>(arg_0.b.c, arg_0.b.c)), u_input.a.yy ^ u_input.a.yy, arg_0.c.c) >> (vec2<u32>(func_2(Struct_1(arg_0.b.a, vec2<u32>(u_input.b.x, u_input.b.x), false), u_input.a.yz, 0u, arg_0.d).b.x, 8787u) % vec2<u32>(32u))), _wgslsmith_clamp_u32(arg_0.b.b.x, countOneBits(~arg_3 | _wgslsmith_mult_u32(1u, 44743u)), ~30512u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(arg_0.d, vec3<f32>(arg_0.d.x, arg_0.d.x, 358f), arg_0.c.c)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-2514f, global3.x, global3.x), arg_0.d), arg_0.d, select(vec3<bool>(arg_0.c.c, true, true), vec3<bool>(arg_0.b.c, false, true), vec3<bool>(arg_0.a.x, arg_0.a.x, false)))))));
    let var_1 = _wgslsmith_clamp_u32(0u, u_input.b.x << (~31288u % 32u), arg_3);
    let var_2 = ~(4294967295u & select(~arg_3, var_0.a, arg_0.e <= arg_0.e));
    let var_3 = arg_0;
    var var_4 = vec3<i32>(-(u_input.a.x >> (_wgslsmith_clamp_u32(~4294967295u, ~4232u, 0u) % 32u)), select(~_wgslsmith_dot_vec3_i32(~vec3<i32>(27089i, -2147483647i, u_input.a.x), -global2.zzx), _wgslsmith_dot_vec4_i32(-vec4<i32>(global2.x, global2.x, u_input.a.x, global2.x), u_input.a), false), ~firstLeadingBit(-abs(-23349i)));
    return func_2(func_2(var_3.c, global2.ww | -_wgslsmith_mod_vec2_i32(u_input.a.wy, vec2<i32>(47511i, 55586i)), _wgslsmith_div_u32(~abs(u_input.b.x), u_input.b.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d.x, -169f, -194f)), 18235i > var_4.x)), _wgslsmith_div_vec3_f32(arg_0.d, _wgslsmith_f_op_vec3_f32(-var_3.d))))), global2.yy, ~_wgslsmith_sub_u32(~var_0.a, ~var_2 & ~var_1), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(125f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.e - arg_0.e), global3.x, var_3.c.c)), _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_i32(var_4.x, var_4.x)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(firstTrailingBit(global2.x), -1i, i32(-1i) * -23744i, min(i32(-1i) * -10944i, -31441i));
    global1 = 1i ^ -_wgslsmith_div_i32(-2147483647i, var_0.x);
    global1 = abs(abs(-(var_0.x ^ 1i)) ^ u_input.a.x);
    global0 = array<Struct_1, 26>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(~u_input.b.x, u_input.b.x, (global3.x < global3.x) && all(select(vec2<bool>(true, false), vec2<bool>(false, true), false))), ~_wgslsmith_add_u32(select(firstLeadingBit(66482u), u_input.b.x, false), u_input.b.x)), 26u)];
    var var_2 = func_4(Struct_2(vec2<bool>(var_1.c, var_1.c), func_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.b.x, var_1.b.x | u_input.b.x), 26u)], vec2<i32>(1i, func_1(Struct_1(u_input.b.x, vec2<u32>(var_1.b.x, 54825u), true))), 37131u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 1661f, 287f) + vec3<f32>(global3.x, global3.x, global3.x)), _wgslsmith_div_vec3_f32(vec3<f32>(global3.x, global3.x, 1000f), vec3<f32>(1000f, global3.x, 714f)))), Struct_1(reverseBits(~var_1.a), vec2<u32>(~0u, ~var_1.b.x), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1568f, global3.x, -860f), vec3<f32>(-1649f, -763f, global3.x))))), 328f), 4294967295u, ~(~u_input.b.x), ~countOneBits(4294967295u));
    global2 = ~vec4<i32>(-func_1(global0[_wgslsmith_index_u32(func_2(global0[_wgslsmith_index_u32(59693u, 26u)], vec2<i32>(10555i, global2.x), 4294967295u, vec3<f32>(-2064f, global3.x, 1642f)).a, 26u)]), -func_1(global0[_wgslsmith_index_u32(47820u, 26u)]), 47027i, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - 1000f) - _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global3.x, 452f)))))));
}

