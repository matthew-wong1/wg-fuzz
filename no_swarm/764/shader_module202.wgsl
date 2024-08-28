struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> vec2<f32> {
    global0 = array<Struct_1, 17>();
    let var_0 = ~0i;
    global0 = array<Struct_1, 17>();
    let var_1 = _wgslsmith_sub_u32(15438u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), ~vec2<u32>(14721u, 0u))));
    global0 = array<Struct_1, 17>();
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-357f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -350f))), true & any(vec2<bool>(false, false))))), 1271f);
}

fn func_3(arg_0: vec2<bool>) -> vec2<u32> {
    var var_0 = vec3<u32>(1u, 1u, 1u);
    return _wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(select(0u, var_0.x, arg_0.x), 1u), min(var_0.x, 4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, ~1u), vec2<u32>(~(var_0.x & var_0.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_0.x), vec2<u32>(7118u, 0u)))));
}

fn func_1() -> vec2<f32> {
    global0 = array<Struct_1, 17>();
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-793f, _wgslsmith_f_op_f32(step(-2247f, 1001f))) - _wgslsmith_f_op_vec2_f32(func_2()));
    var var_1 = 4294967295u;
    var var_2 = true;
    let var_3 = reverseBits(max(~(~vec2<u32>(4294967295u, 73478u)), func_3(vec2<bool>(false, false)))) & vec2<u32>(1u, 1u);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 17>();
    var var_0 = u_input.a.x == _wgslsmith_sub_i32(u_input.d.x, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-u_input.d.x, select(-1i, u_input.d.x, false))));
    global0 = array<Struct_1, 17>();
    let var_1 = abs(u_input.b.x);
    var_0 = all(select(vec3<bool>(true, false, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), all(vec2<bool>(false, true))), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 0i, var_1), u_input.d))), 0i ^ -select(_wgslsmith_sub_i32(-2147483647i, u_input.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), u_input.d.zx), true), u_input.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_1()))), vec3<i32>(2147483647i, ~firstTrailingBit(-1i), firstLeadingBit(max(var_1, var_1))) | vec3<i32>(1i, -(~var_1), -21197i));
}

