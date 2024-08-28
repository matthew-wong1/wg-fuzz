struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_4) -> bool {
    let var_0 = !select(true | arg_3.a, true, any(vec2<bool>(false, arg_3.a))) != (_wgslsmith_f_op_f32(floor(arg_2.x)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - arg_2.x) * _wgslsmith_f_op_f32(step(-841f, 569f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-678f)), _wgslsmith_f_op_f32(-arg_2.x))));
    let var_1 = Struct_1(arg_3.a);
    let var_2 = vec2<bool>(true, arg_1.a & true);
    let var_3 = var_1;
    var var_4 = arg_3.b.x;
    return true;
}

fn func_2(arg_0: u32) -> vec3<u32> {
    let var_0 = Struct_2(vec4<f32>(1f, 1f, 1f, 1f), Struct_1(func_3(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_0, 0u), vec3<u32>(arg_0, arg_0, 15000u))), Struct_1(all(vec3<bool>(true, false, true))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(702f, -1723f) * vec2<f32>(-1186f, -350f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-155f, -425f)))), Struct_4(any(vec2<bool>(false, true)), ~vec4<u32>(0u, 0u, 44065u, 4294967295u)))));
    let var_1 = Struct_3(var_0.b, var_0.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.a.x)), 255f, _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_vec3_f32(select(var_0.a.zwx, vec3<f32>(990f, -1162f, var_0.a.x), true)), !select(vec3<bool>(false, true, var_1.a.a), vec3<bool>(false, true, var_0.b.a), vec3<bool>(false, var_0.b.a, var_1.b.a))))));
    return vec3<u32>(_wgslsmith_mod_u32(1u, min(arg_0, 9522u) & min(arg_0, 39891u)) | _wgslsmith_mod_u32(4294967295u, select(73589u, 4294967295u, false) >> (min(4294967295u, arg_0) % 32u)), arg_0, 37521u);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    let var_0 = abs(abs(func_2(arg_2)));
    let var_1 = vec3<i32>(_wgslsmith_clamp_i32(max(-(i32(-1i) * -1i), firstLeadingBit(-u_input.a.x)), ~(firstLeadingBit(-29055i) ^ select(22393i, u_input.b.x, false)), -10512i), 10340i, u_input.b.x);
    let var_2 = 44389i;
    return arg_0.b;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-119f, arg_1.x, -525f), vec3<f32>(_wgslsmith_div_f32(-1079f, 197f), arg_2.x, _wgslsmith_f_op_f32(-arg_1.x)));
    let var_1 = _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(step(var_0.x, -753f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - var_1))), 837f));
    var var_3 = u_input.a.x;
    var var_4 = _wgslsmith_mod_i32(~(-27793i), ~1i);
    return vec2<bool>(false, all(select(select(!vec2<bool>(false, arg_3.a), select(vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, false)), false), vec2<bool>(arg_0.a, func_3(arg_0.b.wxw, Struct_1(true), arg_2.zy, Struct_4(false, arg_0.b))), arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = true;
    let var_2 = select(!select(!vec2<bool>(var_1, false), vec2<bool>(true, !var_1), vec2<bool>(true, true)), vec2<bool>(true, var_1), select(select(select(select(vec2<bool>(var_1, true), vec2<bool>(false, false), vec2<bool>(var_1, var_1)), select(vec2<bool>(true, var_1), vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1)), all(vec2<bool>(var_1, var_1))), !vec2<bool>(true, var_1), !var_1), select(!select(vec2<bool>(var_1, false), vec2<bool>(true, var_1), vec2<bool>(var_1, true)), func_4(Struct_4(false, vec4<u32>(4294967295u, 46690u, 92000u, 25824u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-187f, 312f) + vec2<f32>(405f, -487f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(446f, -741f, -920f)), func_1(Struct_3(Struct_1(var_1), Struct_1(var_1)), Struct_2(vec4<f32>(828f, -1000f, 732f, -354f), Struct_1(var_1)), 54415u)), var_1), !vec2<bool>(var_1, true)));
    var var_3 = var_2.x;
    var_3 = true;
    var_3 = (-u_input.a.x ^ -2147483647i) > u_input.a.x;
    var_3 = !var_1;
    var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.b.x, select(u_input.b.x, -38381i, var_2.x), u_input.b.x), vec4<i32>(3051i, _wgslsmith_mult_i32(2147483647i, u_input.b.x), 26238i & u_input.a.x, u_input.b.x)) >> (0u % 32u), 1691i);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(select(~0u, 56104u, var_2.x)));
}

