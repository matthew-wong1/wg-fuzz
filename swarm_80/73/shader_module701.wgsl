struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<bool>(false, true, true, true), true, vec2<f32>(1440f, -130f), 4294967295u), Struct_1(vec4<bool>(true, true, true, false), true, vec2<f32>(1000f, 1181f), 0u));

var<private> global1: i32 = -52547i;

var<private> global2: bool = false;

var<private> global3: array<Struct_1, 1>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<f32> {
    global1 = reverseBits(select((abs(u_input.a.x) >> (_wgslsmith_sub_u32(u_input.b.x, 20196u) % 32u)) << (((u_input.b.x >> (u_input.b.x % 32u)) & _wgslsmith_mod_u32(1u, u_input.b.x)) % 32u), countOneBits(0i), _wgslsmith_mod_u32(countOneBits(0u), ~0u) <= ((u_input.b.x >> (u_input.b.x % 32u)) | _wgslsmith_sub_u32(u_input.b.x, 1u))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1533f + -1563f), _wgslsmith_f_op_f32(f32(-1f) * -1200f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(3436f, 1111f) - vec2<f32>(-765f, 202f)), vec2<f32>(-1027f, -364f)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> f32 {
    global0 = array<Struct_1, 2>();
    global1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x, 2147483647i, -1i), countOneBits(58065i)), u_input.a.x), ~abs(u_input.a.yxw) | vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, 2147483647i), -2147483647i, reverseBits(0i))) >> (u_input.b.x % 32u);
    var var_0 = Struct_1(select(vec4<bool>(any(arg_0), true | arg_0.x, !(true | arg_0.x), false || (arg_1 & true)), vec4<bool>(arg_0.x, arg_1, arg_0.x, !(u_input.b.x <= 1u)), true), true, _wgslsmith_f_op_vec2_f32(func_3()), 20307u);
    var var_1 = var_0.c.x;
    let var_2 = -(~u_input.c.x);
    return _wgslsmith_f_op_vec2_f32(func_3()).x;
}

fn func_1() -> StorageBuffer {
    global2 = true;
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-391f + 203f), _wgslsmith_f_op_f32(trunc(1395f)), 1f), vec3<f32>(_wgslsmith_f_op_f32(1245f * 861f), -1259f, _wgslsmith_f_op_f32(func_2(vec3<bool>(true, false, false), true)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(1163f, -1000f, -276f), vec3<f32>(623f, -859f, -827f)))))))));
    global0 = array<Struct_1, 2>();
    var var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(~countOneBits(u_input.c.x), _wgslsmith_div_i32(65668i << (u_input.b.x % 32u), -u_input.a.x)), u_input.c), 20387i, u_input.a.x | ~(~select(-22926i, -2147483647i, false)), u_input.c.x);
    var var_2 = false | any(select(vec2<bool>(all(vec3<bool>(true, false, true)), true), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, true), vec2<bool>(false, false))));
    return StorageBuffer(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_div_u32(~1u, 49935u)) >> (~u_input.b.x % 32u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x) ^ (u_input.b ^ u_input.b), vec2<u32>(_wgslsmith_mod_u32(~1u, ~u_input.b.x), _wgslsmith_sub_u32(1u, ~4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

