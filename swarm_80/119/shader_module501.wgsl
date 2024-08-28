struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32) -> vec3<i32> {
    var var_0 = u_input.b.x;
    var var_1 = Struct_1(-vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.a.x & u_input.a.x, _wgslsmith_mod_i32(-12160i, u_input.a.x)), 1i, u_input.a.x));
    let var_2 = u_input.b.x;
    var_0 = var_2;
    let var_3 = false;
    return var_1.a;
}

fn func_3() -> i32 {
    var var_0 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(-reverseBits(u_input.a.x), ~0i), 0i, firstLeadingBit(0i)));
    let var_1 = 1f;
    var_0 = Struct_1(vec3<i32>(min(max(_wgslsmith_sub_i32(13857i, var_0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1090i, u_input.a.x, var_0.a.x, 1i), vec4<i32>(u_input.a.x, u_input.a.x, var_0.a.x, u_input.a.x))), var_0.a.x), ~(~u_input.a.x), 1i));
    var var_2 = Struct_1(reverseBits(func_2(-1107f)));
    let var_3 = firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x >> (u_input.b.x % 32u)));
    return ~u_input.a.x;
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x ^ 2147483647i, ~u_input.a.x, u_input.a.x), -func_2(-699f)));
    let var_1 = Struct_1(~var_0.a);
    var_0 = Struct_1(firstLeadingBit(vec3<i32>(var_1.a.x, ~(~var_0.a.x), _wgslsmith_mult_i32(var_0.a.x, func_3()))));
    let var_2 = vec2<bool>(all(vec3<bool>(_wgslsmith_f_op_f32(floor(-1000f)) < _wgslsmith_f_op_f32(-2025f * -1395f), true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true)))), !all(select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec3<bool>(false, false, false)))));
    let var_3 = !vec3<bool>(var_2.x, false, var_2.x);
    return StorageBuffer(func_2(1f).x, 4294967295u, 1096f, vec3<i32>(abs(abs(457i)), 38509i, var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1328f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let x = u_input.a;
    s_output = func_1();
}

