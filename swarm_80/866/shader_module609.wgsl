struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
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

var<private> global0: Struct_1 = Struct_1(vec2<i32>(0i, -1i), vec4<f32>(1379f, -622f, 667f, 542f), vec2<u32>(2823u, 60568u), true, 278f);

var<private> global1: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> i32 {
    let var_0 = vec4<bool>(true, (true & global0.d) | false, true, global0.d || global0.d);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.c.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(global1.c.b.x + _wgslsmith_f_op_f32(f32(-1f) * -2427f))), global0.d)), _wgslsmith_f_op_f32(step(-905f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.b.x - global1.c.e))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.e))))), _wgslsmith_f_op_f32(sign(global0.b.x)));
    global0 = Struct_1(_wgslsmith_sub_vec2_i32(global1.c.a & _wgslsmith_add_vec2_i32(global1.e.a, vec2<i32>(global1.e.a.x, arg_0)), global0.a), vec4<f32>(_wgslsmith_f_op_f32(floor(545f)), _wgslsmith_div_f32(global0.b.x, -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(228f * global0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.b.x)) * _wgslsmith_f_op_f32(trunc(global1.e.b.x))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e)))), vec2<u32>(~38413u, (_wgslsmith_sub_u32(global1.b, 17908u) << ((6351u << (arg_1.x % 32u)) % 32u)) ^ ~(~74701u)), !any(var_0.zw), global0.b.x);
    let var_2 = ~(~1u);
    let var_3 = global1.a.yz;
    return max(_wgslsmith_div_i32(-global0.a.x & ~global0.a.x, global0.a.x), u_input.c);
}

fn func_2(arg_0: u32) -> i32 {
    global0 = Struct_1(-global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-267f, -703f, global0.b.x, global1.e.e))) * vec4<f32>(global1.c.e, global0.b.x, global0.b.x, global1.c.e)) - vec4<f32>(_wgslsmith_f_op_f32(1219f - global1.c.e), global0.b.x, _wgslsmith_div_f32(global0.b.x, global1.e.e), _wgslsmith_div_f32(-1489f, 1000f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(global0.b, _wgslsmith_f_op_vec4_f32(-global0.b)))))), vec2<u32>(11233u, firstLeadingBit(_wgslsmith_mod_u32(global0.c.x, ~global1.c.c.x))), u_input.c >= global1.c.a.x, 885f);
    var var_0 = func_3(-global0.a.x, max(global0.c, vec2<u32>(max(0u, 0u), 1u)));
    let var_1 = Struct_1(global0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c.b), global1.e.b), ~global1.c.c, !all(global1.a), global1.e.e);
    global1 = Struct_2(global1.a, ~abs(global1.c.c.x), global1.e, global0.a.x, global1.e);
    let var_2 = !vec4<bool>(!global1.e.d, var_1.d, !(!any(vec3<bool>(true, global1.e.d, true))), !var_1.d);
    return _wgslsmith_dot_vec4_i32(u_input.b, select(vec4<i32>(-23102i, -global1.d, 8692i, _wgslsmith_sub_i32(4020i, reverseBits(global1.c.a.x))), -firstTrailingBit(vec4<i32>(0i, 30794i, -37436i, 21671i)), !(true && (global1.c.b.x > global1.e.b.x))));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.wy) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.e, global1.c.e)))));
    let var_1 = Struct_1(reverseBits(global1.c.a), global0.b, max(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 1u) ^ firstLeadingBit(global0.c), ~global0.c & u_input.d.zy), firstTrailingBit(countOneBits(~global1.e.c))), false, var_0.x);
    var var_2 = global1.c;
    var_2 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(~max(var_2.a.x, 1i), func_2(4294967295u) | global1.c.a.x), func_3(arg_0 & _wgslsmith_add_i32(1i, -10080i), var_1.c)), vec4<f32>(global0.b.x, 629f, _wgslsmith_f_op_f32(1009f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1112f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.e.e, -818f)) - global0.b.x))), var_1.c, firstLeadingBit(4544u) == _wgslsmith_div_u32(_wgslsmith_mod_u32(global0.c.x, firstLeadingBit(45268u)), 4294967295u), 1739f);
    let var_3 = vec3<u32>(global0.c.x, ~1u, ~(~firstTrailingBit(~0u)));
    return global0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a;
    let var_1 = ~func_1(global0.a.x);
    var var_2 = Struct_1(_wgslsmith_sub_vec2_i32(~u_input.b.xw, u_input.b.xy) ^ ~(vec2<i32>(u_input.e, 0i) ^ vec2<i32>(0i, 1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1647f, -311f, -175f, -871f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.c.b.x, 412f, global1.c.e, global1.e.e)))) + vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -296f))), global0.b.x, -862f, global0.e)), _wgslsmith_add_vec2_u32(global1.c.c, vec2<u32>(1u, 57619u)), global0.d, _wgslsmith_f_op_f32(ceil(588f)));
    let var_3 = Struct_2(vec3<bool>(true, any(select(!global1.a, select(vec3<bool>(true, true, global0.d), global1.a, false), var_0.x)), !global1.a.x), 4294967295u, global1.c, global0.a.x ^ (-36576i >> (0u % 32u)), global1.c);
    var var_4 = global1.a.x;
    var var_5 = var_3.c;
    global0 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

