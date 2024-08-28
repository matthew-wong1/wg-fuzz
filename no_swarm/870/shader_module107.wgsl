struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true));

var<private> global1: u32 = 4294967295u;

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(true), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true)));

var<private> global3: Struct_1;

var<private> global4: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> i32 {
    let var_0 = -u_input.a;
    global4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-273f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -295f))));
    global0 = array<Struct_1, 28>();
    var var_1 = global0[_wgslsmith_index_u32(0u, 28u)];
    return -58233i;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(~min(~1u, _wgslsmith_mod_u32(0u, 1u)) & (reverseBits(41677u) ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(4294967295u, 76234u, 12314u)))), 13u)];
    var var_1 = Struct_1(arg_0.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2524f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(sign(1465f)), _wgslsmith_div_f32(653f, -958f)))), arg_0.a)) + vec2<f32>(_wgslsmith_f_op_f32(select(-1005f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(676f - 114f), 762f)), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1000f))))))));
    let var_3 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(28413u, 22049u, 36358u), vec3<u32>(1u, 1u, 1u)), ~39185u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 1u, 41550u, 1u)), select(vec4<u32>(4294967295u, 29627u, 42781u, 81043u), vec4<u32>(4294967295u, 4294967295u, 0u, 71614u), vec4<bool>(true, global4.a, true, var_1.a)))) >> (~countOneBits(min(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 24684u), vec3<u32>(4294967295u, 1u, 15998u)), select(vec3<u32>(1230u, 33022u, 0u), vec3<u32>(93369u, 16902u, 34788u), true))) % vec3<u32>(32u));
    var var_4 = Struct_1(!any(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, arg_0.a, true, false), vec4<bool>(false, true, global3.a, false))));
    return -49058i;
}

fn func_1() -> u32 {
    global0 = array<Struct_1, 28>();
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), u_input.a);
    var var_1 = vec4<i32>(func_2(), -33262i, -42260i, func_3(global0[_wgslsmith_index_u32(6897u, 28u)], u_input.a, u_input.b.zy));
    var_1 = firstLeadingBit(u_input.b & _wgslsmith_sub_vec4_i32(abs(u_input.b), vec4<i32>(-22926i, 15662i, var_1.x, var_0))) ^ abs(u_input.b);
    let var_2 = Struct_1(!global3.a);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(func_1(), func_1(), 1u, (28157u & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))) >> (26507u % 32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(133f, -737f, 329f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1267f, 474f, -1046f), vec3<f32>(-1000f, 1283f, 483f), true)) + vec3<f32>(1121f, 913f, -842f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1801f, 857f, 2411f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(766f, -257f, -2439f)))), !vec3<bool>(true, var_0.x <= 11418u, true)))));
    global2 = array<Struct_2, 13>();
    let var_2 = any(vec4<bool>(false, all(!select(vec3<bool>(global4.a, true, false), vec3<bool>(true, false, false), true)), global4.a, !global3.a));
    var var_3 = global2[_wgslsmith_index_u32(~select(~var_0.x, var_0.x, !(var_1.x >= -239f)), 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(1u, -1i, _wgslsmith_dot_vec3_u32(~(~firstLeadingBit(vec3<u32>(var_0.x, 5439u, var_0.x))), vec3<u32>(~(~var_0.x), 18365u, _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(7965u, var_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_1, var_1)) + _wgslsmith_f_op_vec3_f32(var_1 * var_1)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-251f, -367f, 149f))), _wgslsmith_div_vec3_f32(vec3<f32>(-1558f, var_1.x, 230f), var_1), false)))));
}

