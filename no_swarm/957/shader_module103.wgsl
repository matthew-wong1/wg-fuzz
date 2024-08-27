struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec3<i32>(-1i, -29689i, 27910i), false));

var<private> global1: i32 = 1i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> u32 {
    let var_0 = Struct_2(arg_1.ywx, arg_2.x, true, arg_0.x);
    global1 = 1i;
    global1 = 2147483647i;
    let var_1 = Struct_3(~(-_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))) & (-vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x) >> (firstTrailingBit(vec3<u32>(1u, 51001u, arg_2.x) >> (vec3<u32>(arg_2.x, arg_2.x, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))), !all(!arg_0.xx));
    return 0u;
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> i32 {
    var var_0 = 0u;
    let var_1 = _wgslsmith_div_u32(0u, _wgslsmith_add_u32(5164u, func_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1280f, 1189f, arg_1, arg_1))), reverseBits(min(vec3<u32>(16320u, arg_0.x, arg_0.x), arg_0.xwz)))));
    var var_2 = select(!select(vec2<bool>(false, false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), all(vec2<bool>(true, false))), vec2<bool>(true, true)), vec2<bool>(true, false), all(vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), false)));
    let var_3 = false;
    global1 = u_input.a.x;
    return 2147483647i;
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = !any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, true)), true));
    global1 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(reverseBits(func_3(vec4<u32>(1u, 1u, 1u, 1u), -154f)), u_input.a.x), u_input.a.x);
    global1 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(592f, -391f), vec2<f32>(-899f, 838f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -468f))))))));
    var_0 = true;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, i32(-1i) * -(u_input.a.x ^ u_input.a.x), 1i, u_input.a.x), -select(_wgslsmith_sub_vec4_i32(vec4<i32>(8555i, u_input.a.x, 11257i, u_input.a.x), firstLeadingBit(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 4346i))), select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(31053i, u_input.a.x, -40276i, u_input.a.x) << (vec4<u32>(arg_0, arg_0, arg_0, 4294967295u) % vec4<u32>(32u)), vec4<bool>(true, true, false, false)), !(128f < var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 0i;
    let var_0 = Struct_3(vec3<i32>(u_input.a.x, func_2(~func_1(vec3<bool>(false, false, true), vec4<f32>(357f, -1000f, 785f, 1000f), vec3<u32>(51370u, 115725u, 63600u))), ~u_input.a.x), all(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), false), vec3<bool>(true, true, false))));
    let var_1 = 1u;
    global1 = var_0.a.x;
    var var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_1, 4294967295u)), vec2<u32>(1u, var_1 ^ 4294967295u)), ~(~_wgslsmith_clamp_u32(var_1, 0u, var_1)), 4294967295u, 11875u), select(vec4<u32>(_wgslsmith_clamp_u32(~48458u, var_1 >> (var_1 % 32u), var_1), _wgslsmith_mult_u32(56371u, 21712u >> (var_1 % 32u)), _wgslsmith_div_u32(reverseBits(0u), 66705u | var_1), var_1), ~vec4<u32>(0u, abs(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(34764u, var_1, 4294967295u), vec3<u32>(var_1, var_1, 61761u)), 1u), vec4<bool>(var_0.b & all(vec4<bool>(true, var_0.b, true, true)), false, true, true)));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1763f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(631f + -1000f) * -607f)))));
    var var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3))), _wgslsmith_f_op_f32(floor(var_3)), 454f))), ~max(~firstLeadingBit(63755u), _wgslsmith_mult_u32(abs(4294967295u), func_1(vec3<bool>(false, var_0.b, var_0.b), vec4<f32>(var_3, -435f, var_3, 2786f), vec3<u32>(var_1, 35853u, 3482u)))), max(~(~var_2.x), _wgslsmith_div_u32(24037u, ~48887u)) <= _wgslsmith_mult_u32(~var_2.x, _wgslsmith_mult_u32(func_1(vec3<bool>(false, false, var_0.b), vec4<f32>(var_3, 462f, -2084f, 622f), var_2.yzw), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1, var_2.x), var_2.wwx))), var_0.b);
    var var_5 = Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2053f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1478f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(582f, -1776f) * _wgslsmith_div_f32(-163f, var_4.a.x))))), ~(min(0u, var_2.x & var_2.x) >> (_wgslsmith_add_u32(4294967295u, ~var_4.b) % 32u)), var_4.d, _wgslsmith_f_op_f32(floor(var_3)) == _wgslsmith_f_op_f32(-var_3));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, var_4.a.x, 1i, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), var_3), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 - var_5.a.x) * var_5.a.x)))), countOneBits(_wgslsmith_clamp_i32(-var_0.a.x, (var_0.a.x | u_input.a.x) ^ firstLeadingBit(var_0.a.x), var_0.a.x)));
}

