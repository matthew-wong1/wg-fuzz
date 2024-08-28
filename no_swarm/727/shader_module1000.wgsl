struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_1, 4>;

var<private> global2: f32 = 456f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: u32) -> i32 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1069f, _wgslsmith_f_op_f32(f32(-1f) * -540f)));
    global1 = array<Struct_1, 4>();
    var var_0 = abs(select(u_input.b.xz, max(~vec2<u32>(60016u, arg_2), vec2<u32>(~arg_1.x, 96370u)), !select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.b.x < 14198u)));
    let var_1 = vec4<bool>(!all(vec2<bool>(true, true)) || true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))) || !any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), any(select(vec3<bool>(true, true, any(vec2<bool>(true, true))), vec3<bool>(true, true, true), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))))), select(true, ((arg_0.x < 76347i) & true) || true, true));
    let var_2 = -vec3<i32>(firstLeadingBit(-7712i), u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-79779i, -19896i), vec2<i32>(u_input.a.x, -5431i) ^ vec2<i32>(-2147483647i, global0.x)), 10348i));
    return abs(_wgslsmith_div_i32(u_input.a.x, 0i)) | 1514i;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> bool {
    global2 = arg_2.b.x;
    var var_0 = Struct_1(vec2<i32>(i32(-1i) * -arg_3, arg_2.c.x) | vec2<i32>(arg_3, ~(-arg_3)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, -1915f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1617f, arg_2.b.x), arg_2.b)))) - arg_2.b), select(-vec3<i32>(_wgslsmith_clamp_i32(arg_2.a.x, global0.x, u_input.a.x), global0.x, firstTrailingBit(arg_2.c.x)), abs(~(~vec3<i32>(70840i, -1i, 2147483647i))), true), arg_2.d);
    let var_1 = arg_2.b;
    let var_2 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(global0.x, 1i), ~arg_0), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(arg_2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(494f, -1006f))))), _wgslsmith_mult_vec3_i32(arg_2.c, firstTrailingBit(var_0.c >> (_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 1u, 2104u)) % vec3<u32>(32u)))), -arg_0 != select(_wgslsmith_add_i32(2147483647i ^ arg_2.c.x, 32128i), ~1i, any(!vec3<bool>(arg_1, var_0.d, var_0.d))));
    var_0 = arg_2;
    return arg_2.d;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> bool {
    let var_0 = ((arg_2.d & arg_0.d) | true) || (((1837u == (2859u & u_input.b.x)) && !(!arg_2.d)) && func_4(_wgslsmith_sub_i32(21977i, select(1i, 43869i, true)), !arg_2.d, Struct_1(_wgslsmith_add_vec2_i32(u_input.a.xx, vec2<i32>(0i, arg_2.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.x, arg_2.b.x) * vec2<f32>(arg_2.b.x, arg_0.b.x)), vec3<i32>(2147483647i, arg_0.c.x, u_input.a.x), arg_1), func_3(vec2<i32>(45i, arg_0.a.x), vec4<u32>(20241u, 4294967295u, 1u, 14745u), u_input.b.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)) % 32u)));
    let var_1 = arg_2;
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -2051f);
    let var_2 = arg_2.b.x;
    var var_3 = select(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -443f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.b.x, _wgslsmith_f_op_f32(-936f + 505f))) - 904f), var_1.d);
    return !select(arg_1, true, !func_4(-9692i, all(vec3<bool>(arg_0.d, true, true)), Struct_1(vec2<i32>(u_input.a.x, global0.x), arg_2.b, u_input.a, false), _wgslsmith_mod_i32(1i, u_input.a.x)));
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: i32) -> vec4<f32> {
    global1 = array<Struct_1, 4>();
    return vec4<f32>(-1200f, _wgslsmith_f_op_f32(1803f * _wgslsmith_f_op_f32(-1071f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 + 1144f), 1010f)))), arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -280f), -172f))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> i32 {
    global1 = array<Struct_1, 4>();
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -839f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec4<bool>(true, any(vec2<bool>(false, false)), func_2(global1[_wgslsmith_index_u32(1u, 4u)], true, global1[_wgslsmith_index_u32(4294967295u, 4u)], 6754i), any(vec3<bool>(arg_1, false, arg_1))), !(!vec2<bool>(false, arg_1)), -global0.x)))));
    let var_1 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, global0.x), vec2<i32>(-26301i, global0.x)), ~vec2<i32>(func_3(u_input.a.zy, vec4<u32>(arg_0.x, u_input.b.x, 1u, 80960u), 1u), u_input.a.x ^ 72859i)), _wgslsmith_f_op_vec2_f32(var_0.wy + vec2<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(floor(var_0.x))), 1178f)), u_input.a, true);
    global2 = _wgslsmith_f_op_f32(sign(1250f));
    return ~(~(~firstLeadingBit(u_input.a.x >> (u_input.b.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<i32>(func_1(vec4<u32>(u_input.b.x, 15142u, ~5711u, 124262u & u_input.b.x), any(vec2<bool>(true, true))), func_1(abs(abs(vec4<u32>(u_input.b.x, 24604u, 4294967295u, u_input.b.x))), any(vec2<bool>(false, false)) | (67367u < u_input.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-872f, -797f)))), ~u_input.a & u_input.a, false);
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(436f, var_0.b.x, var_0.b.x) - _wgslsmith_div_vec3_f32(vec3<f32>(726f, var_0.b.x, -259f), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, 549f, var_0.b.x), vec3<f32>(1080f, -589f, var_0.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_div_f32(-1328f, -768f)), -1000f))));
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    var var_2 = global1[_wgslsmith_index_u32(1u, 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1126f, 219f, var_0.b.x))))))), ~_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b) ^ ~u_input.b.x), 291f);
}

