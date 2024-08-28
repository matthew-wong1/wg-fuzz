struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(763i, 19031i, -17278i, 72894i), 1u);

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<Struct_1, 30>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: f32) -> f32 {
    global1 = array<Struct_1, 15>();
    let var_0 = arg_1;
    var var_1 = 0i >> (u_input.c.x % 32u);
    global2 = array<Struct_1, 30>();
    global0 = global1[_wgslsmith_index_u32(u_input.d.x, 15u)];
    return _wgslsmith_f_op_f32(-arg_1);
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = !(arg_0 != (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -793f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(trunc(arg_1.x)))));
    let var_1 = !(_wgslsmith_f_op_f32(func_3(arg_1.x, _wgslsmith_f_op_f32(-1000f + 753f))) <= -1651f);
    let var_2 = arg_1;
    let var_3 = var_0;
    let var_4 = Struct_1(-(reverseBits(vec4<i32>(arg_3.a.x, arg_3.a.x, 5756i, u_input.e) & global0.a) >> (((u_input.d | vec4<u32>(1u, arg_3.b, 0u, arg_3.b)) << ((u_input.c | u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u))), countOneBits(arg_3.b & ~arg_2.b));
    return _wgslsmith_f_op_vec3_f32(var_2.wwy - arg_1.xxx);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, -245f, 611f))) - vec3<f32>(-829f, 114f, 959f)) + vec3<f32>(_wgslsmith_f_op_f32(abs(-248f)), _wgslsmith_f_op_f32(-185f + 120f), _wgslsmith_div_f32(450f, -146f))), vec3<f32>(-436f, -980f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(553f * 226f), _wgslsmith_f_op_f32(-1991f + -188f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-127f, _wgslsmith_div_f32(-1308f, 1251f), -127f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(false, vec4<f32>(1950f, -502f, -1000f, 1000f), global1[_wgslsmith_index_u32(global0.b, 15u)], Struct_1(global0.a, global0.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-130f, 1000f, 1247f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -542f), _wgslsmith_f_op_f32(f32(-1f) * -331f), _wgslsmith_f_op_f32(sign(-791f))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1162f)) + _wgslsmith_f_op_f32(176f + var_0.x));
    global0 = Struct_1(_wgslsmith_mod_vec4_i32(countOneBits(reverseBits(firstTrailingBit(global0.a))), global0.a), _wgslsmith_add_u32(~global0.b, _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, 0u, global0.b, 19705u), vec4<u32>(13349u, global0.b, 1u, 41420u)), _wgslsmith_clamp_u32(56247u, ~15687u, 1u))));
    return global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.b, 45914u), 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(vec2<i32>(17485i, abs(~(-global0.a.x))), false);
    var var_0 = vec2<f32>(-377f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1000f, 594f)))) * _wgslsmith_f_op_vec3_f32(func_2(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-676f, -702f, -1523f, -847f)), func_1(vec2<i32>(global0.a.x, 0i), false), global2[_wgslsmith_index_u32(~0u, 30u)])).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1102f, 1f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(140f * 642f), 352f))));
    let var_1 = func_1(firstLeadingBit(~global0.a.xx), true);
    let var_2 = func_1(~vec2<i32>(reverseBits(_wgslsmith_sub_i32(12546i, u_input.e)), -2512i), select(true, true, true));
    global1 = array<Struct_1, 15>();
    var var_3 = func_1(-((select(global0.a.zw, vec2<i32>(-12860i, var_1.a.x), false) << (abs(vec2<u32>(68696u, 0u)) % vec2<u32>(32u))) >> (min(vec2<u32>(4294967295u, 42124u), vec2<u32>(u_input.c.x, global0.b)) % vec2<u32>(32u))), !(-37887i > countOneBits(var_2.a.x << (0u % 32u))));
    global1 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.a.x);
}

