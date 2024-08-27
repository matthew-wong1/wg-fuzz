struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16>;

var<private> global1: bool = false;

var<private> global2: bool;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(929f, -1935f, 637f, 1146f) + vec4<f32>(1000f, 178f, 552f, -2049f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1356f, -1273f, -1000f, -222f)))))), arg_0.x));
    var var_1 = true;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2800f, var_0.x, -1657f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-702f, 258f, var_0.x, 139f) + var_0), all(vec3<bool>(false, arg_0.x, arg_0.x))))) - _wgslsmith_f_op_vec4_f32(-var_0))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: i32) -> f32 {
    global2 = any(select(vec3<bool>(true, true, true), !vec3<bool>(true, true, arg_2.x != 22281i), vec3<bool>(true, true && any(vec4<bool>(true, true, true, false)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false)))));
    var var_0 = 1i;
    let var_1 = arg_1.c.x << (13337u % 32u);
    let var_2 = ~(~vec4<u32>(u_input.b.x, ~(~u_input.b.x), u_input.b.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(21120u, arg_1.b), abs(vec2<u32>(1u, 4294967295u)))));
    let var_3 = 1i;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(max(1104f, _wgslsmith_f_op_f32(abs(arg_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(702f, 1454f)) + arg_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-162f, -1544f)))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec3_i32(~(-arg_0), arg_0);
    let var_1 = Struct_1(35117u, ~0u, var_0, _wgslsmith_f_op_f32(-1405f + _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, true))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1824f, 971f, -730f, 416f) - vec4<f32>(1045f, -267f, 1241f, 812f))), Struct_1(~u_input.b.x, max(4294967295u, u_input.d.x), var_0, -252f), u_input.a ^ vec2<i32>(2147483647i, u_input.c.x), arg_0.x))));
    let var_2 = _wgslsmith_f_op_f32(var_1.d * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1588f)) - -123f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) - -1148f)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-674f, 1246f, 869f, var_1.d))), var_1, firstLeadingBit(vec2<i32>(15008i, 1i)) >> (_wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(15952u, 16u)], vec2<u32>(40725u, 69384u)) % vec2<u32>(32u)), 0i))));
    global1 = all(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, all(vec4<bool>(false, false, false, true))), all(vec4<bool>(false, true, true, false)) & true));
    let var_3 = !vec3<bool>(var_1.b > _wgslsmith_sub_u32(64570u, 1u), false, all(vec2<bool>(true, true)));
    return var_1;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> Struct_1 {
    var var_0 = -1i;
    global1 = true;
    let var_1 = func_2(_wgslsmith_add_vec3_i32(-firstTrailingBit(vec3<i32>(u_input.e, 0i, -1i) << (vec3<u32>(22203u, arg_0.x, u_input.b.x) % vec3<u32>(32u))), abs(vec3<i32>(firstTrailingBit(-1i), ~u_input.e, -2147483647i))));
    var_0 = -var_1.c.x;
    global2 = true;
    return Struct_1(u_input.d.x, arg_0.x, var_1.c, _wgslsmith_f_op_f32(abs(-537f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 16>();
    let var_0 = vec2<i32>(u_input.c.x ^ (~(~u_input.a.x) & ~(-1i)), _wgslsmith_mod_i32(-1i, -1i));
    let var_1 = func_1(u_input.b.xz << (abs(_wgslsmith_mod_vec2_u32(~global0[_wgslsmith_index_u32(u_input.b.x, 16u)], u_input.b.xx)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1117f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-769f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -353f))))));
    global1 = all(select(vec4<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), all(vec4<bool>(true, true, true, true)), true), select(vec4<bool>(true, 27448i >= var_0.x, true, false), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true), all(vec4<bool>(true, true, false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false))), true));
    var var_2 = 525f;
    let x = u_input.a;
    s_output = StorageBuffer(4869u, firstLeadingBit(~vec2<i32>(54815i, 95796i)) >> (_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a, 21530u), vec2<u32>(1u, u_input.d.x), select(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(12769u, u_input.d.x), vec2<bool>(true, false))), vec2<u32>(~0u, var_1.b)) % vec2<u32>(32u)), var_1.c.xz);
}

