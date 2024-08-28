struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32 = -1i;

var<private> global2: vec3<bool>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global0 = Struct_2(~(global0.a & 27492u), vec4<u32>(u_input.a.x, ~(abs(global0.b.x) << (u_input.a.x % 32u)), _wgslsmith_mult_u32(firstTrailingBit(12148u), 40421u >> (global0.a % 32u)) >> (_wgslsmith_sub_u32(69800u, _wgslsmith_dot_vec3_u32(vec3<u32>(90909u, global0.a, u_input.a.x), vec3<u32>(global0.b.x, global0.b.x, u_input.a.x))) % 32u), ~firstTrailingBit(~u_input.a.x)));
    global1 = u_input.b;
    let var_0 = !(!(!any(vec4<bool>(false, global2.x, false, true))));
    let var_1 = Struct_2(_wgslsmith_mult_u32(u_input.a.x, 27241u), abs(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 17881u, global0.b.x), global0.b) ^ vec4<u32>(39876u, 58514u, global0.b.x, global0.a))));
    global0 = var_1;
    return global2.x;
}

fn func_2(arg_0: vec2<bool>) -> bool {
    global1 = ~(u_input.b << (u_input.a.x % 32u));
    let var_0 = Struct_2(u_input.a.x, select(global0.b, global0.b, vec4<bool>(true, !func_3(), true, -1i >= u_input.b)));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f * 1085f)) + 317f), _wgslsmith_f_op_f32(step(847f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1658f * 316f) - 438f))), -1869f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-126f)) * _wgslsmith_f_op_f32(502f * -1000f))))));
    var var_2 = global0.b;
    let var_3 = 0i;
    return arg_0.x;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -1209f, arg_2, arg_2) - vec4<f32>(-1000f, -2377f, -869f, arg_1))))));
    global2 = select(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, global2.x, false), global2.x), vec3<bool>(false, false, false))), !vec3<bool>(all(vec3<bool>(true, false, global2.x)), false, func_2(vec2<bool>(false, true))), !(!vec3<bool>(true, global2.x, global2.x)));
    var var_1 = Struct_2(reverseBits(_wgslsmith_sub_u32(global0.b.x & global0.b.x, global0.b.x)) >> (16644u % 32u), _wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(arg_0.b, global0.b, global0.b), arg_0.b) | _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(52442u, u_input.a.x, global0.b.x, 108903u), vec4<u32>(arg_0.b.x, 8666u, arg_0.a, global0.b.x) >> (arg_0.b % vec4<u32>(32u))), vec4<u32>(abs(0u), 4294967295u, ~global0.a, 0u & global0.a), vec4<u32>(~u_input.a.x, firstLeadingBit(arg_0.a), 1u, 1u)));
    let var_2 = 24383u;
    global0 = Struct_2(var_1.a, var_1.b);
    return arg_0.b.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<f32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_2 * arg_1));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(256f * arg_2.x), _wgslsmith_f_op_f32(exp2(arg_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1427f)), _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), -1000f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(489f, arg_1.x, arg_2.x, arg_2.x), vec4<f32>(var_0.a.x, -1000f, var_0.a.x, arg_1.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -1367f, 2287f, var_0.a.x) * vec4<f32>(-329f, var_0.a.x, arg_1.x, var_0.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-582f, arg_2.x, var_0.a.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_2.x, arg_2.x, arg_1.x) * vec4<f32>(123f, -2290f, -1768f, arg_1.x))))), true)), !select(vec4<bool>(all(vec3<bool>(true, false, false)), true, true, any(vec4<bool>(global2.x, global2.x, true, true))), vec4<bool>(global2.x, global2.x, true, true & global2.x), false)));
    let var_2 = !(!(!(!vec2<bool>(global2.x, global2.x))));
    global1 = u_input.b;
    var var_3 = Struct_2(arg_0.b.x >> (0u % 32u), ~global0.b);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.b;
    global1 = ~abs(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b, -35159i), -1i));
    var var_0 = func_4(Struct_2(~(~u_input.a.x), vec4<u32>(5602u, reverseBits(func_1(Struct_2(1u, vec4<u32>(u_input.a.x, 34454u, 4294967295u, 0u)), -2019f, -1105f)), _wgslsmith_clamp_u32(global0.b.x, 4294967295u, u_input.a.x) & ~global0.a, ~global0.b.x & ~4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(abs(-956f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-987f, -400f)), -892f) - 1067f), 2216f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-408f * -505f))))), vec4<f32>(1000f, 449f, _wgslsmith_f_op_f32(min(2617f, _wgslsmith_f_op_f32(-1f))), 752f));
    global1 = max(~(-30970i), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1284f)), -110f, global2.x)), global0.a);
}

