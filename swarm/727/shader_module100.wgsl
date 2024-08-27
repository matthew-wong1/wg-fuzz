struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
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

var<private> global0: vec4<u32> = vec4<u32>(40410u, 1u, 4294967295u, 30200u);

var<private> global1: array<Struct_4, 17>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1) -> Struct_3 {
    return Struct_3(!vec3<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(true, false, arg_1)), true), global0.x, vec4<i32>(arg_2.b.x, 0i, -6480i, ~abs(u_input.b) >> (reverseBits(~69935u) % 32u)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = countOneBits(~vec2<i32>(-2147483647i ^ ~u_input.d.x, -2147483647i));
    let var_1 = Struct_4(vec2<f32>(arg_0.d.x, _wgslsmith_div_f32(-461f, arg_0.d.x)));
    var var_2 = func_2(~(~(~_wgslsmith_clamp_vec2_u32(global0.zw, vec2<u32>(0u, global0.x), global0.wx))), all(vec3<bool>(true, true, true)) || (4294967295u <= abs(arg_0.a.x)), arg_0);
    let var_3 = !var_2.a.zz;
    let var_4 = !vec4<bool>(!any(var_2.a), var_3.x, var_3.x, true);
    return var_2.b;
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: Struct_3) -> u32 {
    var var_0 = !arg_1;
    var var_1 = _wgslsmith_div_i32(abs(-(arg_3.c.x ^ arg_3.c.x)), max(-6813i, abs(-abs(-1i))));
    global1 = array<Struct_4, 17>();
    let var_2 = 1000f;
    let var_3 = vec3<u32>(0u, u_input.a.x << (func_1(Struct_1(select(vec3<u32>(48883u, global0.x, 72309u), vec3<u32>(arg_3.b, arg_3.b, u_input.a.x), false), abs(vec4<i32>(u_input.b, u_input.d.x, 59099i, -1i)), _wgslsmith_f_op_f32(-arg_0.a.x), vec4<f32>(arg_0.a.x, -1144f, var_2, arg_0.a.x))) % 32u), ~reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, global0.x, u_input.c.x, arg_3.b), vec4<u32>(37440u, global0.x, arg_3.b, 12805u))));
    return arg_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(func_1(Struct_1(~vec3<u32>(u_input.a.x, global0.x, 4294967295u), -vec4<i32>(u_input.b, 2193i, u_input.d.x, u_input.b), _wgslsmith_f_op_f32(1442f - 377f), vec4<f32>(1f, 1f, 1f, 1f))), ~0u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(~90775u, u_input.c.x, 51158u), ~vec3<u32>(0u, u_input.c.x, 4649u) >> (firstLeadingBit(u_input.c) % vec3<u32>(32u))) % 32u);
    var_0 = 79833u;
    var_0 = global0.x;
    var var_1 = Struct_4(vec2<f32>(572f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1378f)))));
    let var_2 = Struct_1(~(~vec3<u32>(u_input.c.x, global0.x, ~1u)), vec4<i32>(u_input.b, u_input.d.x, u_input.b, 0i), -427f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1296f), _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(exp2(var_1.a.x))), 1689f, var_1.a.x)));
    let var_3 = func_2(~(min(abs(u_input.c.xy), var_2.a.yy) << (vec2<u32>(~global0.x, ~global0.x) % vec2<u32>(32u))), false, Struct_1(vec3<u32>(func_3(Struct_4(vec2<f32>(var_2.d.x, 624f)), vec4<bool>(true, false, true, false), vec2<bool>(false, true), Struct_3(vec3<bool>(false, true, false), var_2.a.x, vec4<i32>(-2147483647i, -1i, var_2.b.x, u_input.d.x))), 10553u, global0.x | 1u) << (var_2.a % vec3<u32>(32u)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_2.b.x, u_input.b, 2753i), var_2.b ^ u_input.d), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x)))), _wgslsmith_div_vec4_f32(var_2.d, vec4<f32>(550f, _wgslsmith_div_f32(var_1.a.x, -251f), -1069f, _wgslsmith_f_op_f32(exp2(var_1.a.x))))));
    let var_4 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(var_2.b, ~(~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(var_3.c.x, var_3.c.x & 69298i) ^ 0i);
}

