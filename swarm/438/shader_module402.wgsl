struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 18>;

var<private> global1: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = global1.b;
    var var_1 = _wgslsmith_mod_u32(countOneBits(4294967295u), _wgslsmith_mod_u32(firstLeadingBit(u_input.d), select(4294967295u >> (u_input.c.x % 32u), u_input.d, all(vec3<bool>(global1.a, global1.a, arg_1.a))))) & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, ~u_input.d), u_input.c.zzy);
    var var_2 = Struct_2(Struct_1(!arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.d)) * -832f), countOneBits(-62837i & -arg_0.x), _wgslsmith_div_f32(-342f, -114f)));
    var_1 = ~_wgslsmith_mod_u32(~31280u, ~abs(u_input.d)) >> (0u % 32u);
    let var_3 = firstTrailingBit(firstTrailingBit(-select(arg_0, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, 26790i, 2147483647i, global1.c), vec4<i32>(-2147483647i, 22617i, var_2.a.c, 29577i), u_input.b), vec4<bool>(true, global1.a, false, var_2.a.a))));
    return -954f;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    global1 = Struct_1(any(vec4<bool>(global1.a, global1.a, global1.a, all(!vec4<bool>(global1.a, false, global1.a, true)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.d + global1.b), 138f) * global1.b), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.d)) * _wgslsmith_f_op_f32(348f - 343f)))));
    let var_0 = _wgslsmith_f_op_f32(global1.b * _wgslsmith_div_f32(global1.b, global1.b));
    let var_1 = vec3<bool>(true, !global1.a, global1.a);
    var var_2 = global1.c;
    let var_3 = -u_input.b;
    return Struct_2(Struct_1(var_1.x != true, 957f, _wgslsmith_mult_i32(-(i32(-1i) * -33387i), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(-9647i, arg_0.x, u_input.e.x, 1i), Struct_1(false, -767f, global1.c, 1190f))))));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_2(vec2<i32>(2913i, _wgslsmith_mult_i32(global1.c | 1i, 1i)) ^ ~(-vec2<i32>(global1.c, arg_0.a.c)));
    let var_1 = vec4<bool>(false, !(max(~4294967295u, u_input.d) > ~_wgslsmith_sub_u32(0u, 0u)), select(true, !(!(var_0.a.a && global1.a)), !any(vec4<bool>(arg_0.a.a, var_0.a.a, var_0.a.a, false)) & select(global1.a, !arg_0.a.a, false)), true);
    let var_2 = Struct_1(var_1.x, _wgslsmith_div_f32(-761f, _wgslsmith_f_op_f32(f32(-1f) * -1151f)), max(firstLeadingBit(69654i) | abs(var_0.a.c), _wgslsmith_div_i32(min(_wgslsmith_sub_i32(global1.c, -46479i), 23268i), global1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1120f + var_0.a.d)))));
    var var_3 = arg_0;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.d, 1000f) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.d * global1.b), _wgslsmith_div_f32(1844f, -163f)), var_2.b))), global1.d, -1613f);
    return Struct_1(true & (true & (~u_input.c.x <= 4294967295u)), var_0.a.b, firstLeadingBit(-1i) ^ firstLeadingBit(max(arg_0.a.c, ~(-2147483647i))), _wgslsmith_f_op_f32(select(var_4.x, var_4.x, any(vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.c.zwy;
    global0 = array<vec4<f32>, 18>();
    global1 = Struct_1((4294967295u >= ~(23284u << (u_input.d % 32u))) && false, -476f, select(~max(select(11507i, 0i, global1.a), -global1.c), _wgslsmith_sub_i32(global1.c, select(global1.c, ~1i, true)), global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.b))))));
    let var_1 = Struct_2(func_1(Struct_2(Struct_1(global1.a, global1.d, reverseBits(10001i), _wgslsmith_f_op_f32(floor(-298f))))));
    global0 = array<vec4<f32>, 18>();
    var var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, ~u_input.d & max(1u, u_input.d)), u_input.c.yyz);
    var var_3 = _wgslsmith_f_op_f32(func_3(vec4<i32>(2147483647i, ~(-26181i), abs(global1.c), max(abs(abs(u_input.e.x)), -66859i)), func_2(abs(max(-vec2<i32>(global1.c, 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(45068i, 0i), u_input.b.yz)))).a));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.x, var_0.x), vec3<u32>(4294967295u, 1u, var_0.x)))) & _wgslsmith_mod_u32(u_input.d, ~var_0.x), _wgslsmith_f_op_f32(-func_1(Struct_2(func_2(vec2<i32>(u_input.b.x, var_1.a.c)).a)).d), 1815f, var_0.zy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(840f, var_1.a.b, global1.b))))));
}

