struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec2<u32> {
    var var_0 = true;
    let var_1 = firstLeadingBit(_wgslsmith_mult_i32(-6064i, _wgslsmith_sub_i32(-20023i, 5434i)) | _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, 2147483647i, 252i, 31058i)), min(vec4<i32>(0i, 2147483647i, 24137i, 24141i), vec4<i32>(-1i, -38878i, -1i, -48031i)))) ^ -(~(-1i));
    var_0 = !(!all(vec4<bool>(true, true, true, true)));
    var_0 = false;
    var_0 = !(~_wgslsmith_clamp_u32(u_input.c & u_input.a, ~u_input.d, min(55737u, u_input.e)) <= u_input.b.x);
    return u_input.b.zw;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> Struct_1 {
    let var_0 = u_input.e;
    let var_1 = ~(~select(vec2<u32>(4294967295u, 0u), ~func_2(), true));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1949f), 2254f), any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)), vec4<bool>(any(vec3<bool>(true, any(vec2<bool>(true, true)), true)), true, !(0i < _wgslsmith_sub_i32(arg_0.x, 0i)), !all(vec2<bool>(true, false))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> vec2<i32> {
    var var_0 = u_input.e;
    var_0 = firstTrailingBit(12457u);
    var_0 = u_input.a;
    return arg_0.a.ww;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<i32>(max(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-29396i, -1i, 1i, 30876i), vec4<i32>(-2147483647i, -2147483647i, -40839i, 10594i), vec4<i32>(2147483647i, 2147483647i, -1i, -35483i))), _wgslsmith_clamp_i32(~1i, 21064i, _wgslsmith_clamp_i32(-1i, -1i, 4793i))), _wgslsmith_clamp_i32(0i, 2147483647i, 0i)), (_wgslsmith_clamp_u32(~u_input.d, abs(u_input.a), ~u_input.b.x) ^ 1u) >> (~u_input.d % 32u));
    var var_1 = Struct_3(var_0.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_3(Struct_2(-vec4<i32>(-2147483647i, 0i, -2147483647i, 2147483647i), Struct_1(var_0.a, u_input.a > 12571u, var_0.d.x, !var_0.d), -1i, vec2<u32>(51308u, ~u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, 1534f))), !(~77295u >= select(u_input.d, 76258u, var_0.b)), select(false, firstTrailingBit(u_input.a) <= (u_input.a >> (28987u % 32u)), all(!vec4<bool>(false, var_1.a, true, var_1.a)))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-47553i, -37136i, -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -66128i), vec2<i32>(0i, -1i))), 1i), firstLeadingBit(reverseBits(vec2<i32>(1i, abs(-1i)))), _wgslsmith_sub_u32(~u_input.d, 1u));
}

