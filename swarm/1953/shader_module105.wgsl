struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: Struct_1;

var<private> global2: i32;

var<private> global3: f32 = -414f;

var<private> global4: bool = false;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: u32, arg_3: f32) -> u32 {
    global4 = !any(vec2<bool>(global1.a, global1.a));
    global2 = reverseBits(_wgslsmith_mod_i32(~(~global0[_wgslsmith_index_u32(474u, 2u)]) << (arg_1.x % 32u), 1i));
    let var_0 = all(!vec4<bool>(all(!vec2<bool>(global1.a, global1.a)), (global0[_wgslsmith_index_u32(arg_1.x, 2u)] & 1i) == global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, global1.b.x, arg_1.x, arg_1.x), vec4<u32>(arg_2, arg_1.x, 24572u, global1.b.x)), 2u)], false, false));
    let var_1 = _wgslsmith_f_op_f32(ceil(-734f));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(1414f - -366f) < _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(-1000f - arg_0.a)), abs(vec2<u32>(23516u ^ _wgslsmith_clamp_u32(1u, arg_2, 4409u), 1833u)));
    return 0u;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> f32 {
    var var_0 = 1f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(176f + _wgslsmith_f_op_f32(trunc(1485f))));
    global1 = Struct_1(_wgslsmith_f_op_f32(ceil(-220f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(986f, 890f)), _wgslsmith_f_op_f32(1411f * -1469f))) * -907f), abs(global1.b));
    var var_2 = global1.a;
    var var_3 = Struct_1(true, _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.a.x, arg_1.a.x), _wgslsmith_div_vec2_u32(arg_1.a.zx, vec2<u32>(~global1.b.x, 26204u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1900f + _wgslsmith_f_op_f32(f32(-1f) * -1533f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-839f * 1244f))))));
}

fn func_2() -> Struct_4 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_4(37370u, Struct_2(vec4<u32>(func_3(Struct_4(975f, vec3<f32>(-264f, 1217f, 382f)), vec3<u32>(global1.b.x, 0u, global1.b.x), 0u, 213f), 4294967295u, firstLeadingBit(global1.b.x), ~global1.b.x)), _wgslsmith_dot_vec2_i32(firstLeadingBit(max(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x))), _wgslsmith_mult_vec2_i32(-u_input.a, ~vec2<i32>(u_input.a.x, -2147483647i))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-830f, _wgslsmith_f_op_f32(min(-1873f, 739f)))))));
    global2 = u_input.a.x;
    global1 = Struct_1(true, reverseBits(vec2<u32>(_wgslsmith_sub_u32(global1.b.x, global1.b.x), _wgslsmith_sub_u32(~global1.b.x, 0u))));
    let var_1 = ~34616i;
    var var_2 = !(!vec4<bool>(global1.a, true, all(select(vec3<bool>(global1.a, global1.a, true), vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(global1.a, global1.a, true))), (u_input.a.x != global0[_wgslsmith_index_u32(0u, 2u)]) | any(vec2<bool>(false, false))));
    return Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -377f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1666f, var_0.x, -678f), vec3<f32>(var_0.x, 671f, 207f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, 835f, var_0.x))))), false)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), var_0.x))));
}

fn func_1(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = func_2();
    var var_1 = 409f;
    let var_2 = _wgslsmith_div_f32(var_0.b.x, -303f);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(ceil(arg_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-204f * arg_0.a)), var_0.a, 139f));
    var var_4 = Struct_2(~(~reverseBits(vec4<u32>(47424u, global1.b.x, global1.b.x, 4294967295u) ^ vec4<u32>(global1.b.x, 43718u, global1.b.x, global1.b.x))));
    return select(select(select(!vec4<bool>(global1.a, global1.a, true, global1.a), vec4<bool>(true, true, true, any(vec4<bool>(global1.a, global1.a, false, global1.a))), !global1.a | global1.a), !vec4<bool>(!global1.a, false, true, all(vec3<bool>(global1.a, true, global1.a))), global1.a), vec4<bool>(false, true, !all(select(vec4<bool>(global1.a, true, global1.a, false), vec4<bool>(global1.a, false, global1.a, false), global1.a)), global1.a), !all(select(vec2<bool>(global1.a, global1.a), vec2<bool>(false, global1.a), false)) & global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(any(func_1(Struct_4(-265f, vec3<f32>(-530f, 649f, 472f)))) && any(vec3<bool>(false, global1.a, false)), true, false);
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, global1.b.x);
}

