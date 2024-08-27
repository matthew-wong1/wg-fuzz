struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec2<u32> {
    return _wgslsmith_div_vec2_u32(abs(vec2<u32>(arg_1.c.x, 1u)), vec2<u32>(global0.c.x ^ 5756u, ~(~(~6286u))));
}

fn func_2() -> bool {
    let var_0 = true;
    let var_1 = Struct_1(4294967295u, any(vec4<bool>(true, !any(vec2<bool>(true, var_0)), select(var_0, true, all(vec2<bool>(var_0, false))), false)));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global0.a, vec2<f32>(global0.d, global0.a.x))))), ~17551i, func_3(var_1.a, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)), -_wgslsmith_sub_i32(global0.b, 0i), ~global0.c, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.e + vec3<f32>(-1468f, 1000f, -1000f))))), _wgslsmith_div_f32(global0.d, global0.e.x), vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), global0.d, -1597f));
    var var_2 = _wgslsmith_f_op_f32(min(574f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d))));
    let var_3 = -reverseBits(_wgslsmith_dot_vec4_i32(abs(-vec4<i32>(global0.b, global0.b, -2147483647i, -2147483647i)), select(max(vec4<i32>(-2851i, 2147483647i, 1i, global0.b), vec4<i32>(global0.b, global0.b, global0.b, global0.b)), ~vec4<i32>(global0.b, global0.b, 2147483647i, 1i), !vec4<bool>(var_1.b, var_0, var_0, true))));
    return !var_1.b;
}

fn func_1(arg_0: f32) -> StorageBuffer {
    var var_0 = func_2();
    let var_1 = -_wgslsmith_mult_i32(_wgslsmith_add_i32(0i ^ global0.b, _wgslsmith_add_i32(-57501i, 59976i)), 26729i) ^ (1i ^ _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, global0.b, -29048i, global0.b), vec4<i32>(global0.b, global0.b, global0.b, 2147483647i), vec4<i32>(global0.b, -18633i, 6565i, global0.b)), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b, global0.b, global0.b, global0.b), vec4<i32>(global0.b, global0.b, -24760i, global0.b), vec4<i32>(global0.b, global0.b, global0.b, 40828i)), min(vec4<i32>(global0.b, -11356i, global0.b, global0.b), vec4<i32>(global0.b, global0.b, global0.b, global0.b)))));
    var var_2 = Struct_1(global0.c.x >> (18219u % 32u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_0)), arg_0)) < -161f);
    let var_3 = firstTrailingBit(min(global0.c.x, func_3(62856u, Struct_2(_wgslsmith_f_op_vec2_f32(global0.a + vec2<f32>(global0.e.x, 104f)), firstLeadingBit(37297i), ~global0.c, 1898f, global0.e)).x));
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + 935f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.d))))), _wgslsmith_div_f32(-1291f, 169f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -599f) * _wgslsmith_f_op_f32(global0.e.x - arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1394f + -1835f), _wgslsmith_f_op_f32(exp2(global0.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 670f) - global0.a)) + global0.a))));
    return StorageBuffer(vec4<u32>(~(~4294967295u), _wgslsmith_div_u32(_wgslsmith_add_u32(0u, u_input.a), 4294967295u) >> (u_input.a % 32u), _wgslsmith_mult_u32(46217u, var_2.a), ~var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c.x;
    var_0 = u_input.a;
    var var_1 = global0.c;
    let var_2 = 715f;
    let var_3 = vec2<i32>(~(~(-global0.b) << (~35090u % 32u)), ~2147483647i);
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.e.zz + _wgslsmith_f_op_vec2_f32(global0.a - global0.a)))), (~(~(-2147483647i)) & _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(3741i, -2147483647i, 7327i, var_3.x), vec4<i32>(1i, var_3.x, -58737i, 0i)), firstTrailingBit(vec4<i32>(-1033i, 27277i, 1i, 65342i)))) & _wgslsmith_div_i32((global0.b << (0u % 32u)) >> (global0.c.x % 32u), -2147483647i | ~global0.b), vec2<u32>(global0.c.x, min(60337u, global0.c.x)), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(round(-1000f)), global0.e.x))));
    var var_4 = 13665i;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1917f * 338f), _wgslsmith_f_op_f32(trunc(var_2)))))))));
}

