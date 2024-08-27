struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-284f, -131f, 174f, 1111f), vec4<f32>(614f, -388f, -182f, -965f), vec4<f32>(-828f, -155f, 133f, -2694f), vec4<f32>(1255f, 644f, -512f, 1009f), vec4<f32>(499f, -857f, 1478f, 1628f), vec4<f32>(-1000f, -2008f, -1573f, -563f), vec4<f32>(416f, -580f, -176f, -1605f));

var<private> global2: bool;

var<private> global3: array<f32, 18>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -923f));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    let var_1 = u_input.a.x;
    global2 = true;
    return ~(~u_input.d.x);
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: u32, arg_3: vec3<bool>) -> vec4<bool> {
    var var_0 = 1u;
    var var_1 = ~(~(~abs(vec3<u32>(18839u, arg_2, 1u)))) << (u_input.e % vec3<u32>(32u));
    let var_2 = !select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, arg_3.x, arg_3.x, arg_3.x), global3[_wgslsmith_index_u32(0u, 18u)] >= -1117f), !vec4<bool>(true & arg_3.x, all(vec3<bool>(arg_3.x, true, true)), any(vec2<bool>(arg_3.x, arg_3.x)), arg_3.x), !(all(vec4<bool>(true, false, true, false)) | all(vec3<bool>(false, arg_3.x, false))));
    let var_3 = Struct_1(true);
    let var_4 = arg_0;
    return !var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 70108u;
    var var_1 = firstTrailingBit(_wgslsmith_clamp_i32(u_input.c, _wgslsmith_mod_i32(u_input.c, -u_input.c), min(-_wgslsmith_mult_i32(-54464i, u_input.c), 23595i)));
    var var_2 = true;
    let var_3 = func_1();
    var_2 = all(select(vec4<bool>(true, false, false, false), !func_3(-1235f, vec4<i32>(-2147483647i, 63569i, u_input.c, -1i), ~18346u, vec3<bool>(true, true, true)), vec4<bool>(102269u >= _wgslsmith_sub_u32(u_input.a.x, 14698u), true, any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), !any(vec3<bool>(true, false, false)))));
    let var_4 = vec3<u32>(var_3, ~(~abs(_wgslsmith_mod_u32(2972u, u_input.d.x))), ~6714u);
    global0 = all(vec3<bool>(true, !all(vec4<bool>(true, true, true, false)), any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true))))) == (var_3 >= (9599u >> (1u % 32u)));
    let var_5 = Struct_1(false);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(((u_input.c >> (0u % 32u)) | u_input.c) & ~(-u_input.c), _wgslsmith_mod_i32(_wgslsmith_div_i32(-u_input.c, 1i), _wgslsmith_mod_i32(-2147483647i, u_input.c)), _wgslsmith_mod_i32(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), -vec2<i32>(u_input.c, u_input.c)))), firstTrailingBit(vec2<i32>(0i, select(_wgslsmith_mult_i32(u_input.c, 10403i), countOneBits(0i), var_5.a))), vec3<i32>(-14915i, -abs(0i << (var_3 % 32u)), u_input.c), 8862i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1093f, 1861f))))));
}

