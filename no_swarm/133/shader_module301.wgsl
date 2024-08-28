struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: bool) -> u32 {
    var var_0 = !(!select(select(!global0[_wgslsmith_index_u32(9555u, 24u)], !global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(u_input.c.x, 24u)]), global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(u_input.c.x, 24u)]));
    global0 = array<vec4<bool>, 24>();
    var var_1 = Struct_2(-_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-1i, u_input.b, -9664i, -11643i)), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b), -vec4<i32>(u_input.b, u_input.b, -4939i, u_input.b))), u_input.b);
    let var_2 = select(vec3<bool>(!any(!var_0.yx), false, !(~0i <= var_1.b)), !(!var_0.xxx), vec3<bool>(any(var_0.wwy), !all(global0[_wgslsmith_index_u32(~u_input.c.x, 24u)]), !(-2850f < _wgslsmith_f_op_f32(arg_0.x + arg_0.x))));
    var_0 = select(!select(!(!global0[_wgslsmith_index_u32(995u, 24u)]), select(!global0[_wgslsmith_index_u32(u_input.c.x, 24u)], vec4<bool>(true, true, false, true), !arg_2), !(!global0[_wgslsmith_index_u32(29848u, 24u)])), vec4<bool>(!var_0.x & any(select(global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(u_input.c.x, 24u)], true)), arg_1, var_2.x, true), !select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, ~u_input.a), 24u)], select(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], select(vec4<bool>(true, false, false, true), vec4<bool>(false, arg_2, arg_1, arg_2), true), arg_1), any(!vec2<bool>(false, var_2.x))));
    return firstLeadingBit(65990u);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = func_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.x, arg_2.d, 165f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, 1248f, -1405f))))))), true, !all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true))));
    var var_1 = true;
    var_1 = select(arg_2.c.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d) - arg_2.d), false, !all(vec3<bool>(true, true, true)));
    global0 = array<vec4<bool>, 24>();
    var_0 = u_input.a;
    return min(vec3<u32>(_wgslsmith_mult_u32(max(max(u_input.c.x, 34460u), 0u), u_input.a), max(abs(_wgslsmith_mult_u32(arg_1.x, 1u)), 0u), 0u), ~(~(~vec3<u32>(0u, arg_1.x, arg_1.x))) << (~vec3<u32>(1u, arg_2.b.x, ~29650u) % vec3<u32>(32u)));
}

fn func_1() -> u32 {
    return max(u_input.c.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(func_2(u_input.a, u_input.c, Struct_3(vec2<i32>(79039i, u_input.b), u_input.c, vec2<f32>(-1000f, 1537f), 1460f, vec4<i32>(u_input.b, u_input.b, -41755i, u_input.b)), Struct_2(vec4<i32>(2147483647i, 20320i, u_input.b, u_input.b), u_input.b)) | (vec3<u32>(u_input.a, 4294967295u, 0u) >> (vec3<u32>(u_input.a, 8771u, 1u) % vec3<u32>(32u)))), countOneBits(~vec3<u32>(1u, 1u, 1u))));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_3, arg_3: f32) -> StorageBuffer {
    global0 = array<vec4<bool>, 24>();
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d * 639f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-377f * arg_2.c.x)))));
    let var_2 = arg_2.e;
    var var_3 = min(vec2<i32>(-73959i, 2147483647i), ~reverseBits(reverseBits(abs(vec2<i32>(arg_2.e.x, arg_2.a.x)))));
    return StorageBuffer(arg_2.b, ~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(arg_2.b.x, u_input.c.x, 0u), 4294967295u, arg_0, 1u), ~(vec4<u32>(u_input.a, 1u, arg_1, 48933u) ^ vec4<u32>(arg_2.b.x, arg_1, 0u, 4294967295u))), ~(arg_1 | firstTrailingBit(arg_0)), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(~u_input.a, func_1(), Struct_3(~vec2<i32>(36420i, -u_input.b), firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(32733u, u_input.c.x), u_input.c) | vec2<u32>(24660u, u_input.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-172f, -876f) * vec2<f32>(730f, -642f))) * vec2<f32>(1f, 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1378f)), -1000f), ~vec4<i32>(-30388i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -16091i, u_input.b, u_input.b), vec4<i32>(1i, 2147483647i, 1i, 41857i)), u_input.b, _wgslsmith_sub_i32(1i, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1638f))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(484f, -480f, false))))))));
}

