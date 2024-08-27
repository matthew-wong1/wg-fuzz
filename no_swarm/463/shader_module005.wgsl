struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: vec2<f32> = vec2<f32>(-108f, -1319f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_3) -> vec2<f32> {
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    var var_0 = u_input.b.zww;
    global0 = array<u32, 2>();
    var_0 = ~arg_3.c.e;
    return arg_2.d.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = true & arg_2.a.x;
    let var_1 = u_input.a.x;
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_2.d.a, arg_0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1415f), arg_1.a.x))) - _wgslsmith_f_op_vec2_f32(func_3(false, arg_2.c.xy, Struct_2(!arg_2.a, _wgslsmith_div_vec2_i32(vec2<i32>(var_1, 20816i), arg_2.b), arg_2.c, Struct_1(vec2<f32>(arg_2.d.a.x, arg_0.a.x)), ~vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(arg_2.e.x, 2u)])), Struct_3(arg_2.d, arg_0, Struct_2(arg_2.c.xx, vec2<i32>(-33038i, 60679i), arg_2.c, arg_2.d, u_input.b.xxx))))));
    let var_2 = arg_2.a;
    let var_3 = select(select(arg_2.e, vec3<u32>(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 46209u, 48784u), u_input.b), ~(~u_input.b.x)), all(vec3<bool>(arg_2.a.x, true, false))), max(firstLeadingBit(countOneBits(_wgslsmith_clamp_vec3_u32(u_input.b.wwy, arg_2.e, u_input.b.xxz))), _wgslsmith_add_vec3_u32(arg_2.e, max(vec3<u32>(arg_2.e.x, 4294967295u, 1u), arg_2.e))), firstLeadingBit(_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(arg_2.e.x, global0[_wgslsmith_index_u32(0u, 2u)]), ~arg_2.e.x)) <= 0u);
    return (~_wgslsmith_div_vec2_u32(var_3.xy << (u_input.b.xx % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(arg_2.e.x, u_input.b.x), vec2<u32>(0u, 2257u))) | _wgslsmith_mult_vec2_u32(reverseBits(~arg_2.e.xx), u_input.b.xy)) << (var_3.xy % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<f32> {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(min(841f, global1.x)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(ceil(global1.x))));
    var var_0 = firstLeadingBit(vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(~abs(~6254u), 2u)], _wgslsmith_add_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46144u, 2u)], 2u)], u_input.c), reverseBits(4294967295u)) | ((u_input.c >> (u_input.c % 32u)) | 1u), arg_0.x));
    let var_1 = !(!vec2<bool>(select(arg_1.a.x != global1.x, false, true), !all(vec3<bool>(true, true, true))));
    var var_2 = arg_1;
    let var_3 = vec2<bool>(false, !var_1.x);
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(-arg_1.a.x), var_2.a.x))))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> vec4<bool> {
    global0 = array<u32, 2>();
    let var_0 = arg_0.c.c;
    var var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(firstTrailingBit(abs(u_input.c)), arg_0.c.e.x), _wgslsmith_mult_vec2_u32(~(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], 4294967295u)) >> (~arg_0.c.e.xz % vec2<u32>(32u))), select(u_input.b.yw, arg_0.c.e.yy, true) ^ u_input.b.ww));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-338f, -142f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1979f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a.a.x)) * _wgslsmith_f_op_f32(-arg_0.c.d.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(213f - 1000f) * _wgslsmith_f_op_f32(global1.x - global1.x)) + -491f)) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_4(func_2(arg_0.c.d, Struct_1(arg_1.a), arg_0.c), Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.a.a - vec2<f32>(global1.x, 1349f))))))));
    var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(global1.x, 737f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(480f, -2635f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, -988f, _wgslsmith_f_op_f32(arg_1.a.x * arg_0.c.d.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.x, arg_1.a.x, var_2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1836f, -297f, arg_0.a.a.x) + vec3<f32>(497f, 693f, arg_0.a.a.x)))))));
    return !(!select(!(!vec4<bool>(true, true, var_0.x, arg_0.c.a.x)), select(select(vec4<bool>(true, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, false, false), false), !vec4<bool>(false, arg_0.c.c.x, arg_0.c.a.x, false), arg_0.c.a.x), !vec4<bool>(false, var_0.x, false, true)));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: u32) -> vec3<f32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -870f)) * 908f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.a.x))), arg_1.c.d.a.x);
    global0 = array<u32, 2>();
    var var_1 = ~abs(vec3<i32>(-32658i, arg_1.c.b.x, -2147483647i));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))) * _wgslsmith_f_op_f32(arg_1.c.d.a.x * _wgslsmith_f_op_f32(-arg_1.c.d.a.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a.a.x, 860f))))));
    global1 = _wgslsmith_div_vec2_f32(arg_1.c.d.a, _wgslsmith_f_op_vec2_f32(min(arg_1.a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1088f, -430f) - arg_1.c.d.a) * _wgslsmith_f_op_vec2_f32(-var_0.yz))))));
    return _wgslsmith_f_op_vec3_f32(max(var_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(var_0)), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(-227f, var_2)), _wgslsmith_f_op_f32(1883f - -620f)), arg_1.c.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-arg_1.c.d.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1056f, 475f, global1.x) + vec3<f32>(588f, -1000f, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-264f, global1.x, 448f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.x, -692f, global1.x), vec3<f32>(-653f, -640f, global1.x)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1722f, global1.x, -1254f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, 428f, -696f))))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(107f, global1.x, 142f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1163f, global1.x, -835f))) - _wgslsmith_f_op_vec3_f32(func_5(func_1(Struct_3(Struct_1(vec2<f32>(580f, -1232f)), Struct_1(vec2<f32>(-1831f, global1.x)), Struct_2(vec2<bool>(true, false), u_input.a.xx, vec3<bool>(false, false, false), Struct_1(vec2<f32>(-691f, 856f)), u_input.b.xxw)), Struct_1(vec2<f32>(global1.x, global1.x))), Struct_3(Struct_1(vec2<f32>(1658f, global1.x)), Struct_1(vec2<f32>(global1.x, global1.x)), Struct_2(vec2<bool>(true, true), u_input.a.zx, vec3<bool>(true, false, false), Struct_1(vec2<f32>(global1.x, global1.x)), vec3<u32>(4294967295u, 51082u, 54946u))), 0u))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(min(179f, -2182f)), global1.x)))));
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(765f, global1.x)) + var_0.xy)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-var_0.x))), var_0.x)), Struct_2(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), vec2<bool>(u_input.c < global0[_wgslsmith_index_u32(u_input.b.x, 2u)], true)), -vec2<i32>(i32(-1i) * -23918i, _wgslsmith_clamp_i32(42441i, u_input.a.x, 15583i)), select(!func_1(Struct_3(Struct_1(var_0.xy), Struct_1(vec2<f32>(var_0.x, 2125f)), Struct_2(vec2<bool>(false, false), vec2<i32>(0i, 2147483647i), vec3<bool>(true, true, false), Struct_1(vec2<f32>(-1053f, global1.x)), vec3<u32>(4294967295u, 41067u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 2u)], 2u)]))), Struct_1(var_0.xx)).wxz, select(vec3<bool>(true, false, false), func_1(Struct_3(Struct_1(vec2<f32>(global1.x, 334f)), Struct_1(vec2<f32>(global1.x, -466f)), Struct_2(vec2<bool>(false, false), vec2<i32>(1i, -2147483647i), vec3<bool>(true, false, true), Struct_1(var_0.yy), u_input.b.wzw)), Struct_1(var_0.xz)).wxz, vec3<bool>(true, true, true)), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 2u)]) >= _wgslsmith_mult_u32(10024u, 0u)), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.xx)), u_input.b.wyy));
    let var_2 = Struct_3(Struct_1(var_0.xy), var_1.c.d, Struct_2(!vec2<bool>(select(var_1.c.c.x, var_1.c.a.x, var_1.c.c.x), any(var_1.c.c)), u_input.a.xy, var_1.c.c, var_1.a, vec3<u32>(max(reverseBits(1u), global0[_wgslsmith_index_u32(firstTrailingBit(7886u), 2u)]), ~66404u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 2u)], 2u)], 37221u))));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -456f)));
    var var_4 = !(!var_1.c.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1396f, var_2.c.d.a.x, var_0.x)) - vec4<f32>(-784f, -2432f, var_0.x, -1386f)), vec4<f32>(_wgslsmith_f_op_f32(round(global1.x)), global1.x, var_0.x, _wgslsmith_f_op_f32(abs(-1000f)))))), -(~0i), u_input.b.zzz);
}

