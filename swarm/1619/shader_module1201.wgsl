struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 30> = array<vec4<bool>, 30>(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true));

var<private> global1: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> bool {
    global0 = array<vec4<bool>, 30>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-293f, -199f))));
    global1 = false;
    global1 = all(vec2<bool>(true, true)) | true;
    global0 = array<vec4<bool>, 30>();
    return select(true, select(false, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), all(vec2<bool>(true, true))) && (var_0 == _wgslsmith_f_op_f32(-1598f - _wgslsmith_f_op_f32(select(-800f, var_0, false)))), !(!any(vec3<bool>(true, false, true))));
}

fn func_2(arg_0: f32) -> Struct_4 {
    let var_0 = Struct_1(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), 11239u, !(!all(vec3<bool>(true, true, true))), vec3<bool>(true, all(vec2<bool>(true, true)), all(vec4<bool>(func_3(-2147483647i), any(vec2<bool>(true, false)), 478f < arg_0, 37916i <= u_input.b.x))));
    var var_1 = var_0;
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, arg_0)))));
    let var_4 = Struct_1(var_0.a, 0u, var_1.a.x, var_0.d);
    return Struct_4(var_4);
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(293f, 769f)), _wgslsmith_f_op_f32(sign(305f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-257f, -584f)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-658f - _wgslsmith_f_op_f32(1624f - -679f))))));
    let var_1 = Struct_2(1u, func_2(var_0).a, 8859u);
    let var_2 = _wgslsmith_div_i32(arg_0, countOneBits(-36255i));
    let var_3 = var_1;
    let var_4 = 11426u;
    return Struct_1(var_3.b.a, _wgslsmith_mult_u32(~var_1.c, var_3.b.b), var_0 <= _wgslsmith_div_f32(-1642f, -568f), select(!vec3<bool>(var_1.b.a.x, true, !arg_1.a.d.x), arg_1.a.d, arg_1.a.d));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    let var_0 = abs(19754i);
    let var_1 = reverseBits(~(~(vec2<i32>(var_0, u_input.a.x) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, arg_0.b), vec2<u32>(32056u, arg_2), vec2<u32>(arg_1.b, arg_0.b)) % vec2<u32>(32u)))));
    let var_2 = ~76996u;
    global0 = array<vec4<bool>, 30>();
    var var_3 = arg_2 != abs(arg_0.b);
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(752f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1459f, -271f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(317f - 2543f) + -976f) * -980f)), arg_0, _wgslsmith_mod_i32(abs(firstTrailingBit(var_1.x)), _wgslsmith_mod_i32(var_0, _wgslsmith_dot_vec3_i32(u_input.c, -u_input.c))));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    global0 = array<vec4<bool>, 30>();
    var var_0 = func_5(Struct_1(vec2<bool>(true, true), ~abs(_wgslsmith_div_u32(4294967295u, 4294967295u)), select(!any(vec4<bool>(false, false, true, true)), !select(true, false, false), all(!global0[_wgslsmith_index_u32(5321u, 30u)])), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), func_4(arg_0, func_2(_wgslsmith_f_op_f32(-1f))), ~1u);
    var var_1 = vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(ceil(1959f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-674f + -1000f))));
    var var_2 = !func_4(-5854i, Struct_4(var_0.b)).d.x;
    global1 = _wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(31713i, u_input.a.x)), u_input.b.xx), i32(-1i) * -abs(35155i)) == firstLeadingBit(i32(-1i) * -1i);
    return StorageBuffer(~(~firstLeadingBit(arg_0) & var_0.c), var_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-357f - _wgslsmith_f_op_f32(trunc(var_0.a.x))), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(var_0.a.x - -271f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-581f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, -1000f, -406f, 105f), vec4<f32>(var_0.a.x, -639f, var_0.a.x, var_0.a.x))) + vec4<f32>(var_1.x, -198f, 1466f, var_0.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 30>();
    var var_0 = !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = func_1(-u_input.c.x);
}

