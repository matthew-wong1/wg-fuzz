struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 1>;

var<private> global1: array<Struct_4, 31>;

var<private> global2: array<vec4<i32>, 32>;

var<private> global3: f32 = 2064f;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> bool {
    global1 = array<Struct_4, 31>();
    var var_0 = !(!vec2<bool>(true, !all(vec2<bool>(false, true))));
    var var_1 = Struct_1(4294967295u);
    var var_2 = !all(vec3<bool>(!all(vec4<bool>(var_0.x, true, false, false)), false, false));
    global1 = array<Struct_4, 31>();
    return var_0.x;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    global0 = array<vec3<i32>, 1>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-900f, 858f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1385f, _wgslsmith_f_op_f32(-1417f * 431f)))))));
    let var_1 = !(!vec4<bool>(!func_3(var_0.x), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), func_3(-422f), true));
    global1 = array<Struct_4, 31>();
    let var_2 = false;
    return Struct_1(~u_input.a.x);
}

fn func_1(arg_0: bool) -> Struct_2 {
    global1 = array<Struct_4, 31>();
    let var_0 = _wgslsmith_sub_i32(-1i, 1i);
    return Struct_2(func_2(select(vec4<u32>(65850u, 4294967295u, u_input.b, min(u_input.b, 0u)), reverseBits(u_input.a), true)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    global3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1122f, arg_1.x)), 140f) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, 522f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -189f) - arg_1.x))), arg_1.x);
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.x, -141f, arg_1.x))), arg_1))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_1 + arg_1))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(706f, arg_1.x, arg_1.x), arg_1)))))));
    let var_1 = !((false || ((arg_3.a | arg_3.a) <= 1u)) || all(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true)));
    let var_2 = arg_2;
    global0 = array<vec3<i32>, 1>();
    return Struct_2(arg_3);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: i32) -> Struct_1 {
    global1 = array<Struct_4, 31>();
    var var_0 = Struct_1(84215u);
    let var_1 = reverseBits(reverseBits(vec2<i32>(0i, abs(arg_2))));
    let var_2 = ~abs(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -4946i), _wgslsmith_div_vec2_i32(vec2<i32>(0i, -1i), -var_1)));
    global1 = array<Struct_4, 31>();
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(false), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(508f, -1000f, 434f))))), firstTrailingBit(_wgslsmith_clamp_i32(25223i, -6713i, -28576i) << (u_input.a.x % 32u)), func_2(~u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-324f, -1000f) * _wgslsmith_f_op_f32(max(-1000f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(195f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -647f)))), _wgslsmith_f_op_f32(f32(-1f) * -691f)), abs(_wgslsmith_dot_vec3_i32(max(vec3<i32>(-39087i, -42186i, 2147483647i), global0[_wgslsmith_index_u32(firstLeadingBit(19107u), 1u)]), -_wgslsmith_mod_vec3_i32(vec3<i32>(6843i, 19175i, -2147483647i), vec3<i32>(-24955i, 1i, -5089i)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1005f)), _wgslsmith_div_f32(122f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-836f - 317f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(297f))))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, 661f, var_1.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -1072f)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 303f, var_1.x))))));
    global1 = array<Struct_4, 31>();
    var var_3 = true;
    let var_4 = global1[_wgslsmith_index_u32(4294967295u, 31u)];
    let var_5 = -(~29261i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(-1047f, var_1.x), _wgslsmith_f_op_f32(trunc(-823f)), var_4.b.x, 632f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, var_4.b.x, var_2.a.x, 541f)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, -147f, 488f, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(428f, 323f, 1000f, -432f) * vec4<f32>(1000f, -1478f, var_2.a.x, 625f)))))));
}

