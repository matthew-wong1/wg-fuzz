struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_3 = Struct_3(vec4<bool>(true, true, true, false));

var<private> global2: array<vec4<u32>, 24>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1) -> i32 {
    return _wgslsmith_sub_i32(0i, min(-1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(6999i, arg_0, arg_0), vec3<i32>(0i, 0i, 69963i))));
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_3(global1.a);
    global0 = -(_wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(0i), min(-1i, 1223i), u_input.c, u_input.c), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.b.x, 2147483647i, -46289i) << (vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), -vec4<i32>(u_input.c, 0i, -17997i, global0.x))) | vec4<i32>(global0.x, func_3(global0.x, vec3<u32>(0u, 82569u, 62068u), Struct_1(vec3<f32>(1350f, 897f, 661f))), -(u_input.c >> (4294967295u % 32u)), 1i));
    let var_1 = Struct_2(Struct_1(vec3<f32>(-912f, -2224f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-386f + 278f)))));
    global2 = array<vec4<u32>, 24>();
    global1 = Struct_3(global1.a);
    return vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -795f))));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2());
    let var_1 = Struct_5(select(true, all(vec3<bool>(!arg_0, true, global1.a.x)), true), _wgslsmith_mult_i32(global0.x, global0.x >> (15090u % 32u)));
    global0 = vec4<i32>(select(func_3(global0.x, ~vec3<u32>(2399u, u_input.a.x, 1u) & vec3<u32>(38662u, u_input.a.x, u_input.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2418f, var_0.x, var_0.x)))), global0.x, ((u_input.a.x << (32851u % 32u)) == ~u_input.a.x) || arg_0), -(~global0.x), _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, var_1.b, global0.x), vec4<i32>(u_input.b.x, -40331i, u_input.c, 23204i)) << ((1u << (u_input.a.x % 32u)) % 32u)), i32(-1i) * -58429i), firstTrailingBit(global0.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1829f, 461f, var_0.x)))))))), vec4<f32>(225f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1420f, -145f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) + _wgslsmith_f_op_f32(var_0.x - 552f))), 877f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    let var_3 = u_input.a.x;
    return StorageBuffer(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -3454f))), -124f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), -222f)))), u_input.a, -769f, _wgslsmith_sub_u32(33188u, var_3));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global2 = array<vec4<u32>, 24>();
    let var_1 = u_input.b.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(782f)), _wgslsmith_f_op_f32(-189f * 1331f), !global1.a.x)), 122f, -1000f))));
    let x = u_input.a;
    s_output = func_1(all(global1.a));
}

