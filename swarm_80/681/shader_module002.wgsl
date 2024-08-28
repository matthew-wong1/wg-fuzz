struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> vec4<f32> {
    var var_0 = Struct_3(Struct_1(~vec3<u32>(_wgslsmith_mult_u32(5011u, global0[_wgslsmith_index_u32(1542u, 17u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)] | 19897u, 0u), true, ~vec2<i32>(0i, arg_0), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.x, 1000f, true)), _wgslsmith_f_op_f32(-1465f - -982f)))), min(reverseBits(~vec4<u32>(93724u, 119502u, 2456u, u_input.b)), ~vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)], 1u, 32111u)) | vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(45267u, global0[_wgslsmith_index_u32(u_input.c.x, 17u)]), 30992u), u_input.b, 87008u, ~33166u), vec3<bool>(any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true))), true, true), true);
    let var_1 = var_0.a;
    var_0 = Struct_3(Struct_1(u_input.c, var_0.c.x, var_1.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_1.d)))), -356f), _wgslsmith_sub_vec4_u32(vec4<u32>(24357u, 30248u, u_input.a.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(49871u, 17u)], 2719u), vec2<u32>(0u, 24212u)), _wgslsmith_div_u32(var_1.a.x, 6501u)), 17u)]), max(vec4<u32>(~global0[_wgslsmith_index_u32(var_1.a.x, 17u)], _wgslsmith_sub_u32(u_input.a.x, var_0.b.x), ~4294967295u, firstTrailingBit(4294967295u)), ~max(vec4<u32>(var_1.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], u_input.b, 33095u), var_0.b))), vec3<bool>(var_0.d, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d - arg_1.x) + _wgslsmith_f_op_f32(var_0.a.e - var_1.d)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, var_1.d, var_1.b)), 209f)), var_1.b || !(!var_0.d));
    global0 = array<u32, 17>();
    let var_2 = Struct_3(var_0.a, ~(~(vec4<u32>(0u, u_input.c.x, 34496u, u_input.a.x) >> (vec4<u32>(20277u, global0[_wgslsmith_index_u32(8892u, 17u)], 127943u, 0u) % vec4<u32>(32u)))), vec3<bool>(all(vec2<bool>(var_1.e > arg_1.x, !var_1.b)), !(1u >= global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)]), var_1.b), select(any(!var_0.c), true, true));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(393f, var_0.a.d, arg_1.x, arg_1.x), vec4<f32>(var_1.d, var_0.a.d, var_2.a.e, var_1.e))))))));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: vec4<bool>) -> vec4<bool> {
    global0 = array<u32, 17>();
    let var_0 = u_input.b << (global0[_wgslsmith_index_u32(arg_1.x, 17u)] % 32u);
    global0 = array<u32, 17>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-391f, arg_0, arg_0, -1921f) * vec4<f32>(arg_0, -1020f, 241f, -259f)) + vec4<f32>(1409f, -333f, -1025f, 1000f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(-2147483647i, vec3<f32>(329f, 1420f, arg_0))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, 1000f, 2536f, -218f))), select(arg_2, arg_2, true))), all(vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)) && false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -125f, arg_0, arg_0), vec4<f32>(arg_0, arg_0, arg_0, -996f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -2105f, -599f) * vec4<f32>(arg_0, arg_0, arg_0, 123f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-815f, arg_0, -600f, arg_0), vec4<f32>(arg_0, 379f, arg_0, arg_0)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-334f, -196f, arg_0, -1120f), vec4<f32>(-911f, -209f, -1423f, 407f))))))));
    global0 = array<u32, 17>();
    return select(vec4<bool>(true, !((u_input.b > 1u) | true), any(!arg_2.xx), all(!vec2<bool>(true, arg_2.x))), !arg_2, arg_2.x);
}

fn func_1() -> Struct_1 {
    global0 = array<u32, 17>();
    var var_0 = !select(vec4<bool>(true, true && any(vec3<bool>(true, true, false)), true, true), !select(vec4<bool>(true, true, true, true), func_2(-690f, vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)]), vec4<bool>(false, true, false, false)), true), all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true), vec4<bool>(false, true, false, false), true)));
    global0 = array<u32, 17>();
    var var_1 = Struct_1(countOneBits(u_input.c), false, -vec2<i32>(1i, -51842i), -127f, 402f);
    var var_2 = var_0.x;
    return Struct_1(vec3<u32>((global0[_wgslsmith_index_u32(var_1.a.x, 17u)] & u_input.b) | _wgslsmith_div_u32(global0[_wgslsmith_index_u32(45693u, 17u)], u_input.c.x), ~_wgslsmith_dot_vec3_u32(var_1.a, var_1.a), ~(~global0[_wgslsmith_index_u32(u_input.b, 17u)])) | u_input.c, true, vec2<i32>(~abs(2147483647i), -_wgslsmith_clamp_i32(~var_1.c.x, ~var_1.c.x, var_1.c.x << (global0[_wgslsmith_index_u32(var_1.a.x, 17u)] % 32u))), var_1.d, -450f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 17>();
    var var_0 = func_1();
    var_0 = func_1();
    var_0 = Struct_1(min(~(~firstTrailingBit(vec3<u32>(u_input.b, u_input.c.x, var_0.a.x))), select(vec3<u32>(var_0.a.x, var_0.a.x, ~var_0.a.x), vec3<u32>(_wgslsmith_sub_u32(var_0.a.x, 29491u), 35106u, _wgslsmith_mod_u32(18479u, 58602u)), !(!vec3<bool>(var_0.b, var_0.b, false)))), !func_1().b, -vec2<i32>(countOneBits(select(2147483647i, var_0.c.x, false)), var_0.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_0.e)), _wgslsmith_f_op_f32(var_0.e - _wgslsmith_f_op_f32(var_0.e - _wgslsmith_f_op_f32(var_0.e - var_0.e))))), _wgslsmith_f_op_f32(select(var_0.e, var_0.d, all(!vec4<bool>(var_0.b, var_0.b, false, var_0.b)))));
    let var_1 = all(select(vec3<bool>(all(!vec3<bool>(var_0.b, true, false)), true, !all(vec4<bool>(var_0.b, true, var_0.b, false))), vec3<bool>(func_1().b, var_0.b, !var_0.b), !(!func_2(-949f, vec4<u32>(1u, 119491u, 605u, global0[_wgslsmith_index_u32(5377u, 17u)]), vec4<bool>(true, true, var_0.b, var_0.b)).zyw)));
    global0 = array<u32, 17>();
    var var_2 = -544f;
    var var_3 = Struct_1(~_wgslsmith_mult_vec3_u32(var_0.a >> (vec3<u32>(var_0.a.x, u_input.b, 24029u) % vec3<u32>(32u)), u_input.c) << (~firstTrailingBit(var_0.a) % vec3<u32>(32u)), any(!func_2(-1291f, ~vec4<u32>(u_input.a.x, u_input.a.x, var_0.a.x, global0[_wgslsmith_index_u32(u_input.b, 17u)]), !vec4<bool>(var_1, false, var_0.b, true)).xxz), ~_wgslsmith_div_vec2_i32(select(var_0.c, vec2<i32>(var_0.c.x, var_0.c.x), select(vec2<bool>(true, false), vec2<bool>(true, var_0.b), var_0.b)), -(~vec2<i32>(var_0.c.x, var_0.c.x))), -301f, -2030f);
    let var_4 = !(true || func_2(_wgslsmith_f_op_f32(select(var_3.e, -1768f, false)), firstLeadingBit(vec4<u32>(var_3.a.x, 1u, var_0.a.x, 1u)), select(vec4<bool>(var_1, var_0.b, false, true), vec4<bool>(false, false, false, var_0.b), var_3.b)).x) | any(!(!select(vec3<bool>(false, true, false), vec3<bool>(var_0.b, false, var_1), true)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~vec2<u32>(~global0[_wgslsmith_index_u32(106686u, 17u)], var_0.a.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.e)) * _wgslsmith_f_op_f32(-var_0.d)), -1000f, -447f, _wgslsmith_f_op_f32(-649f * 406f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-325f, var_0.e, var_0.d, -1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(-2571f, 891f, var_3.e, var_0.d), vec4<f32>(var_3.d, 2145f, -180f, var_3.d))), _wgslsmith_div_vec4_f32(vec4<f32>(-946f, var_3.d, var_3.d, 217f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d, var_0.d, 912f, -1242f))), !(!vec4<bool>(var_1, var_3.b, var_4, false)))), !(!select(vec4<bool>(var_1, false, false, var_1), vec4<bool>(var_0.b, false, var_0.b, false), vec4<bool>(var_4, false, false, true))))), ~func_1().a.x, -var_0.c.x >> (var_3.a.x % 32u));
}

