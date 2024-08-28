struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<bool>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_2(arg_0.x, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(389f, _wgslsmith_f_op_f32(arg_0.x + arg_0.x))), any(vec4<bool>(true, true, all(vec2<bool>(true, true)), false)), vec2<bool>(true, true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -899f), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), u_input.a.x ^ 4294967295u)), _wgslsmith_f_op_vec2_f32(-arg_0.yy));
    return var_0.b.c;
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_2 {
    global0 = array<vec3<i32>, 32>();
    var var_0 = vec2<bool>(-847f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 408f)), !(u_input.a.x == ((u_input.a.x | u_input.a.x) ^ ~u_input.a.x)));
    var_0 = func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1442f, arg_0))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0, -533f)))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(min(-434f, 692f)), _wgslsmith_f_op_f32(select(-769f, _wgslsmith_f_op_f32(round(arg_0)), false)))));
    var var_1 = arg_1;
    global0 = array<vec3<i32>, 32>();
    return Struct_2(arg_0, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-1171f * -1469f), _wgslsmith_f_op_f32(select(1579f, 391f, false))), var_0.x, !vec2<bool>(!var_0.x, all(vec2<bool>(var_0.x, var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1159f - arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -476f)), ~65325u), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_0, -890f)), arg_0)), _wgslsmith_f_op_f32(round(arg_0))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(1260f, _wgslsmith_div_f32(arg_3.d.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1560f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1524f + arg_3.a.x) * func_2(arg_0.b.a.x, -1i).c.x))));
    var var_1 = -2147483647i;
    var var_2 = global0[_wgslsmith_index_u32(~firstTrailingBit(select(61893u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a.x, 0u)), u_input.a.xw), -1i == firstTrailingBit(53481i))), 32u)];
    var_1 = firstLeadingBit(1i);
    var var_3 = Struct_2(1f, func_2(_wgslsmith_f_op_f32(arg_0.b.a.x * arg_2.a), 47418i).b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1559f, arg_3.d.x) * arg_0.b.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(341f, -373f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(745f, -2082f))))));
    return arg_0.b;
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_2(782f, func_4(func_2(-586f, _wgslsmith_sub_i32(~1i, 1i)), u_input.a.x, func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1140f)))), 1i >> ((u_input.a.x & 4294967295u) % 32u)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -234f))), true | (arg_0 < arg_0), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), func_2(arg_0, 33252i).b.c, func_2(arg_0, 33857i).b.c.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-297f, -1000f)))), 28154u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_f_op_f32(-759f - 285f))))));
    let var_1 = func_4(var_0, max(4294967295u, u_input.a.x), func_2(311f, 1i), var_0.b);
    var var_2 = ~67132u;
    let var_3 = firstTrailingBit(~vec3<u32>(_wgslsmith_div_u32(var_1.e, 0u) << (_wgslsmith_sub_u32(u_input.a.x, 26959u) % 32u), var_1.e, _wgslsmith_mult_u32(~0u, 1u)));
    let var_4 = reverseBits(_wgslsmith_mod_vec4_u32(~(u_input.a << ((u_input.a | u_input.a) % vec4<u32>(32u))), max(u_input.a, _wgslsmith_mod_vec4_u32(u_input.a & u_input.a, vec4<u32>(var_0.b.e, var_0.b.e, var_1.e, var_0.b.e)))));
    return func_2(_wgslsmith_f_op_f32(-arg_0), firstLeadingBit(_wgslsmith_sub_i32(-30365i, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-449f);
    let var_1 = 78510u;
    let var_2 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1, countOneBits(78750u)), abs(u_input.a.yw), u_input.a.zx) | ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b.e, var_0.b.e), u_input.a.yw));
    var var_3 = Struct_2(var_0.b.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.d.x, var_0.b.a.x)), false, var_0.b.c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.c))), 1u | firstLeadingBit(var_1)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), var_0.a))), _wgslsmith_f_op_vec2_f32(select(var_0.b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a, var_0.a))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(493f, var_0.a)))), !(!var_0.b.c.x)))));
    let var_4 = _wgslsmith_dot_vec4_i32(~vec4<i32>(0i << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.e, var_3.b.e, var_3.b.e, u_input.a.x), vec4<u32>(u_input.a.x, var_0.b.e, 51207u, 4294967295u)) % 32u), 1i, 1i, ~firstLeadingBit(-1i)), -vec4<i32>(-max(1i, 0i), ~22733i ^ _wgslsmith_clamp_i32(-2147483647i, 2147483647i, 1i), -_wgslsmith_mod_i32(-43808i, -19242i), _wgslsmith_mod_i32(abs(-2204i), -27580i)));
    var_3 = Struct_2(-364f, var_3.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c - var_3.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.b.a.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1243f))))))), ~_wgslsmith_sub_vec2_i32(-vec2<i32>(var_4, -24340i), ~vec2<i32>(-32671i, -6792i)) | vec2<i32>(-1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-27822i, 15668i), vec2<i32>(var_4, -32881i)), var_4)), vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(0i, var_4), vec2<i32>(33013i, -45233i))), var_4, _wgslsmith_div_i32(1i, 22653i)));
}

