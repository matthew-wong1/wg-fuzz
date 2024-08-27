struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec2<i32> {
    global0 = array<u32, 31>();
    global0 = array<u32, 31>();
    global0 = array<u32, 31>();
    var var_0 = -1000f;
    let var_1 = u_input.a;
    return -(max(vec2<i32>(abs(-1i), 50901i), ~_wgslsmith_div_vec2_i32(vec2<i32>(-32869i, 0i), vec2<i32>(1i, 54159i))) ^ vec2<i32>(-1i, reverseBits(firstTrailingBit(1i))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>) -> bool {
    let var_0 = vec4<bool>(true, !arg_2.x, true, true);
    var var_1 = Struct_3(func_3(Struct_1(vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x), _wgslsmith_f_op_f32(556f - arg_1.a.x), _wgslsmith_f_op_f32(floor(arg_1.a.x))), var_0.xx, 435f), arg_1.c), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1123f, 842f, arg_1.c, -724f), vec4<f32>(287f, 1300f, arg_1.c, arg_1.a.x), vec4<bool>(arg_0, false, false, arg_1.b.x)))))), vec2<bool>(true, 1i == _wgslsmith_dot_vec4_i32(vec4<i32>(-12169i, -24651i, -2147483647i, 0i), vec4<i32>(1i, 2147483647i, 1i, -2147483647i))), arg_1.c), !arg_0);
    var var_2 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(arg_1.c, _wgslsmith_f_op_f32(-1000f * var_1.b.c), all(arg_2.xxw))), 215f, var_1.b.a.x), var_1.b.a.zxy), Struct_1(arg_1.a, arg_1.b, _wgslsmith_f_op_f32(-arg_1.c)), var_1.b);
    var var_3 = ~(~max(vec4<u32>(114158u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 100322u, 4294967295u), u_input.b), ~u_input.b.x, 90221u), ~(vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 31u)], 31u)], 31u)], 38516u, 0u) << (vec4<u32>(11679u, u_input.c.x, global0[_wgslsmith_index_u32(21495u, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)]) % vec4<u32>(32u)))));
    let var_4 = ~min(~vec4<u32>(reverseBits(u_input.b.x), ~17745u, 26370u, reverseBits(4294967295u)), abs(~vec4<u32>(0u, 67222u, 18919u, u_input.a)) & vec4<u32>(var_3.x, 4294967295u >> (u_input.a % 32u), u_input.a, 28248u & global0[_wgslsmith_index_u32(var_3.x, 31u)]));
    return false;
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = vec2<bool>(true, select(!(_wgslsmith_f_op_f32(min(arg_0, arg_0)) == 1000f), func_2(arg_0 < _wgslsmith_f_op_f32(floor(362f)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1000f, arg_0, 353f) + vec4<f32>(arg_0, arg_0, 396f, arg_0)), select(vec2<bool>(false, false), vec2<bool>(false, false), true), 1269f), vec4<bool>(true, true, true, true)), 31918u == _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], u_input.c.x)));
    var var_1 = ~(~vec2<u32>(u_input.c.x, firstLeadingBit(6321u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)])));
    var_1 = vec2<u32>(0u, 6390u);
    global0 = array<u32, 31>();
    global0 = array<u32, 31>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-265f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(floor(1000f)))), 540f, _wgslsmith_f_op_f32(max(1378f, _wgslsmith_f_op_f32(804f + _wgslsmith_f_op_f32(ceil(463f))))), -772f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(886f, 245f, -468f, -577f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-414f, -676f, 1955f, 346f)))))) * vec4<f32>(839f, _wgslsmith_f_op_f32(f32(-1f) * -282f), -1647f, 397f)));
    let var_1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1558f, var_0.x, -205f, 1065f) - vec4<f32>(var_0.x, 1557f, var_0.x, 357f))))))), !(!vec2<bool>(false, true & var_1)), _wgslsmith_f_op_f32(select(-2037f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(floor(-1776f))))), all(select(vec3<bool>(false, false, true), !vec3<bool>(var_1, var_1, true), select(vec3<bool>(false, false, true), vec3<bool>(var_1, true, false), vec3<bool>(var_1, false, false)))))));
    let var_3 = Struct_1(var_2.a, select(var_2.b, vec2<bool>(var_2.b.x, true), true), _wgslsmith_f_op_f32(trunc(-378f)));
    global0 = array<u32, 31>();
    global0 = array<u32, 31>();
    var var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1727f, 339f, -947f), vec3<f32>(623f, var_0.x, var_0.x))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_3.a.ywx - _wgslsmith_f_op_vec3_f32(-var_0.ywz))))), _wgslsmith_f_op_vec3_f32(-var_3.a.wzx), !(!select(select(vec3<bool>(var_1, false, true), vec3<bool>(true, var_1, var_1), vec3<bool>(false, var_2.b.x, var_1)), vec3<bool>(false, true, var_3.b.x), !vec3<bool>(var_2.b.x, var_3.b.x, var_2.b.x)))));
    var var_5 = vec2<bool>(var_3.b.x, any(vec3<bool>(var_1, select(var_3.b.x, !var_3.b.x, false & var_1), !any(vec4<bool>(false, true, false, var_1)))));
    var_4 = var_0.zzw;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_i32(17482i, 1i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(var_3.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.a + var_2.a), _wgslsmith_f_op_vec4_f32(var_3.a - vec4<f32>(-782f, var_2.c, 542f, -1235f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(206f, -131f), -608f, _wgslsmith_div_f32(var_3.a.x, var_0.x), -619f)), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, -783f) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1873f), _wgslsmith_f_op_f32(var_3.c + 778f))));
}

