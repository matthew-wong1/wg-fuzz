struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<f32>;

var<private> global2: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(0u, 1u, 4294967295u, 77113u), vec4<u32>(0u, 27929u, 57876u, 43881u), vec4<u32>(13356u, 4294967295u, 1u, 24935u), vec4<u32>(15659u, 82339u, 4294967295u, 1u), vec4<u32>(1u, 0u, 0u, 56402u), vec4<u32>(1u, 61709u, 48370u, 4294967295u), vec4<u32>(4294967295u, 0u, 17343u, 0u), vec4<u32>(1u, 4294967295u, 21849u, 4294967295u), vec4<u32>(1u, 15673u, 0u, 0u), vec4<u32>(0u, 73085u, 92600u, 146108u), vec4<u32>(1u, 1u, 56129u, 80627u), vec4<u32>(0u, 10475u, 11489u, 25341u), vec4<u32>(69782u, 30202u, 0u, 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    var var_0 = u_input.e.x;
    var var_1 = 4294967295u;
    var var_2 = global1.x;
    var var_3 = vec2<i32>(1i | (select(_wgslsmith_dot_vec2_i32(vec2<i32>(17444i, -25598i), u_input.b), u_input.b.x, any(vec4<bool>(true, true, true, false))) | (u_input.c << (1u % 32u))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -67828i, _wgslsmith_div_i32(u_input.c, u_input.c), _wgslsmith_div_i32(u_input.b.x, -31706i), -u_input.b.x), vec4<i32>(abs(8487i), ~(-2147483647i), _wgslsmith_mod_i32(u_input.b.x, 1i), u_input.b.x)), -(0i | firstTrailingBit(u_input.c))));
    var var_4 = vec4<i32>(u_input.c, select(3416i, var_3.x ^ 19586i, all(vec2<bool>(true, any(vec4<bool>(false, false, true, false))))), 17774i, -1i);
    return select(!((u_input.d.x >= _wgslsmith_dot_vec3_u32(u_input.e, u_input.e)) && true), !(!any(vec3<bool>(true, true, true))), !all(vec4<bool>(true, true, true, true)));
}

fn func_2() -> f32 {
    let var_0 = Struct_2((global1.x == global1.x) & !(!(u_input.c <= 1957i)), !vec3<bool>(!(-158f <= global1.x), !(-351f <= global1.x), ~u_input.d.x == u_input.d.x), !select(vec4<bool>(true, true, func_3(vec3<f32>(global1.x, -483f, global1.x)), true), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), u_input.b.x > 2147483647i), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(557f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(select(global1.x, global1.x, true)))))));
    global2 = array<vec4<u32>, 13>();
    let var_2 = var_0.b.x;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, global1.x), vec2<f32>(global1.x, global1.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-980f, -359f))))), reverseBits(u_input.a) << (~4294967295u % 32u));
    return 1074f;
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> Struct_3 {
    global0 = -1199f;
    global1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(select(319f, global1.x, -2147483647i <= max(u_input.c, 11140i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2160f, global1.x, global1.x), vec3<f32>(1000f, global1.x, -955f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) - vec3<f32>(global1.x, 712f, -1000f)))))));
    var var_0 = -firstLeadingBit(select(vec2<i32>(u_input.b.x, firstTrailingBit(u_input.b.x)), u_input.b, select(select(vec2<bool>(false, arg_0.a), vec2<bool>(true, arg_0.a), vec2<bool>(false, arg_0.a)), !vec2<bool>(arg_0.a, arg_1), select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), arg_1))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-175f)))));
    let var_1 = u_input.d.x;
    return Struct_3(!arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = func_1(Struct_3(!(!(u_input.c != -54532i))), select(true & all(vec2<bool>(true, true)), !all(vec2<bool>(false, true)), !any(vec3<bool>(false, false, false))));
    var var_2 = u_input.b.x >= _wgslsmith_dot_vec2_i32(abs(~(-vec2<i32>(1i, 2147483647i))), vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, 1i), _wgslsmith_mult_i32(var_0, u_input.b.x)) | max(u_input.b, vec2<i32>(u_input.a, -13575i) >> (u_input.e.xx % vec2<u32>(32u))));
    global0 = global1.x;
    let var_3 = ~(~(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(-90882i, u_input.c, -1i), vec3<i32>(0i, -1i, var_0), vec3<i32>(0i, -1i, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(968f, 713f, -924f, 1923f), vec4<f32>(global1.x, 752f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(188f, -274f, global1.x, 943f)), var_1.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, global1.x, -1093f, 981f)))))), var_3.x, var_3);
}

