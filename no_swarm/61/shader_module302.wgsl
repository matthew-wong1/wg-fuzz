struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_2 = Struct_2(false, Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(25170u, 4294967295u)), Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(1u, 43881u)), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(1u, 1u)), vec3<f32>(418f, 864f, 1087f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: u32) -> vec3<i32> {
    global0 = ~arg_1.zyy;
    global0 = max(arg_1.yzy, vec3<u32>(4294967295u, 0u, ~abs(1u)));
    var var_0 = firstTrailingBit(-(~(~countOneBits(vec4<i32>(-13890i, u_input.a.x, u_input.a.x, -2147483647i)))));
    var var_1 = Struct_1(vec4<bool>(!(!all(vec3<bool>(arg_0.c.a.x, true, arg_0.d.a.x))), true, !all(arg_0.d.a.wyx) & false, true), abs(arg_0.d.b));
    let var_2 = var_0.yxy;
    return -vec3<i32>(-14565i, abs(_wgslsmith_sub_i32(_wgslsmith_div_i32(9043i, var_0.x), var_0.x | 2147483647i)), ~countOneBits(var_2.x ^ -6191i));
}

fn func_2() -> vec2<u32> {
    global0 = vec3<u32>(global0.x & _wgslsmith_mult_u32(1u, 13692u), ~(~4294967295u), 0u);
    let var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(-func_3(Struct_2(global1.c.a.x, Struct_1(vec4<bool>(global1.c.a.x, global1.b.a.x, global1.b.a.x, true), vec2<u32>(55584u, 0u)), Struct_1(global1.c.a, global0.yy), Struct_1(vec4<bool>(global1.a, global1.c.a.x, true, false), global0.xy), global1.e), vec4<u32>(56697u, 1u, 14494u, 21234u), global0.x), ~(~vec3<i32>(2147483647i, u_input.a.x, u_input.a.x))) | _wgslsmith_mult_vec3_i32(firstLeadingBit(countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, 7521i))), vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), ~(-_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(6868i, -24979i, -1i)), vec3<i32>(-1i, u_input.a.x, u_input.a.x))));
    global0 = vec3<u32>(~1u, firstLeadingBit(global1.c.b.x), ~global1.b.b.x);
    global1 = Struct_2(true, global1.d, global1.d, Struct_1(vec4<bool>(true, !(global1.d.a.x == global1.c.a.x), true, false), ~firstLeadingBit(global0.xy) | vec2<u32>(76233u ^ global0.x, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.e.x, _wgslsmith_f_op_f32(ceil(-509f)), _wgslsmith_f_op_f32(global1.e.x * _wgslsmith_f_op_f32(select(1606f, global1.e.x, global1.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global1.e)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.e.x, global1.e.x, global1.e.x) - _wgslsmith_f_op_vec3_f32(-global1.e))))));
    var var_1 = vec4<bool>(!(!(!any(global1.c.a.yz))), !(!all(select(global1.c.a.yyw, vec3<bool>(true, global1.a, true), vec3<bool>(global1.d.a.x, false, false)))), true, !global1.b.a.x);
    return global0.yz;
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = ~26439u;
    let var_1 = _wgslsmith_add_i32(_wgslsmith_add_i32(reverseBits(-u_input.a.x), u_input.a.x), -13512i);
    let var_2 = abs(~arg_0);
    var var_3 = Struct_1(global1.b.a, func_2() ^ arg_0.ww);
    var var_4 = var_3.a.x;
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(global1.e.x < 485f, !(!(!global1.d.a.x) | true));
    var var_1 = _wgslsmith_mult_u32(129972u, 1u);
    let var_2 = global1.b;
    global1 = Struct_2(true, Struct_1(select(global1.c.a, !(!vec4<bool>(var_2.a.x, false, var_2.a.x, true)), var_2.a.x), select(abs(global0.yy), ~global1.d.b & global0.yx, true)), func_1(vec4<u32>(select(_wgslsmith_div_u32(1u, global1.c.b.x), 0u, global1.a), _wgslsmith_sub_u32(1u, select(var_2.b.x, global0.x, var_0.x)), ~(~1u), ~_wgslsmith_mod_u32(0u, 17523u))), global1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.x + global1.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -623f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.e.x)) + _wgslsmith_f_op_f32(floor(1886f))))));
    var_0 = var_2.a.yw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.x * _wgslsmith_div_f32(global1.e.x, _wgslsmith_f_op_f32(min(920f, global1.e.x))))), ~var_2.b.x, -vec4<i32>(-27514i, 30920i, -1i, u_input.a.x) ^ countOneBits(vec4<i32>(2147483647i, ~u_input.a.x, u_input.a.x, -u_input.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-107f * -2100f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-626f + -185f) + _wgslsmith_f_op_f32(-440f - global1.e.x))))));
}

