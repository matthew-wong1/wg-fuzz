struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: f32 = -781f;

var<private> global2: array<Struct_1, 20>;

var<private> global3: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(32067u, 57314u, 1u, 1u), vec4<u32>(11145u, 4294967295u, 5218u, 0u), vec4<u32>(16573u, 4294967295u, 4294967295u, 1u), vec4<u32>(47754u, 89562u, 59847u, 40289u), vec4<u32>(4294967295u, 24340u, 1u, 26547u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    global0 = array<Struct_1, 31>();
    let var_0 = arg_2;
    var var_1 = arg_2.a.wz;
    global0 = array<Struct_1, 31>();
    var var_2 = Struct_1(var_0.a, abs(_wgslsmith_clamp_u32(~(~0u), _wgslsmith_clamp_u32(var_1.x | 34606u, var_1.x, _wgslsmith_div_u32(var_1.x, 39536u)), countOneBits(~arg_2.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_0.zyz)) * arg_0.wxw)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(1956f - arg_2.c.x), _wgslsmith_f_op_f32(f32(-1f) * -408f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.c) - _wgslsmith_f_op_vec3_f32(max(arg_0.xxx, vec3<f32>(arg_0.x, -1419f, arg_0.x)))), var_1.x < ~4294967295u))));
    return var_0.c.x;
}

fn func_2() -> f32 {
    let var_0 = -29469i;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(840f, 1537f, 769f, -697f))), min(vec4<i32>(1i, var_0, var_0, 17097i), vec4<i32>(u_input.a.x, -69523i, u_input.a.x, 4276i)), global2[_wgslsmith_index_u32(abs(1u), 20u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(590f, 1434f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(322f * 898f))), true)));
    let var_1 = global0[_wgslsmith_index_u32(~1u, 31u)];
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    return 970f;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: u32, arg_3: i32) -> Struct_1 {
    var var_0 = ~arg_2;
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-118f, 1025f)), 308f))), _wgslsmith_f_op_f32(func_2()), all(vec3<bool>(true, true, false)) & true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(1397f, 1732f, true))))));
    global2 = array<Struct_1, 20>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(~(~vec4<u32>(1u, arg_2, arg_0, arg_0)) ^ ~(~vec4<u32>(0u, 43925u, arg_0, arg_2))), global3[_wgslsmith_index_u32(arg_0, 5u)]), 31u)];
    global3 = array<vec4<u32>, 5>();
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~16325u, ~1u), 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(39599u, vec2<i32>(-2147483647i, u_input.a.x) ^ ~(~_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, -2147483647i))), 0u, 1i ^ u_input.a.x);
    var var_1 = func_1(~32188u, u_input.a, var_0.b, 1i);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * 588f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))), var_0.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(766f))), _wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(var_0.c.x * 490f)), vec4<f32>(_wgslsmith_f_op_f32(select(var_0.c.x, var_0.c.x, false)), -1280f, var_1.c.x, var_0.c.x), !select(vec4<bool>(true, all(vec4<bool>(true, false, false, false)), true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false), true)));
    let var_3 = var_1.c;
    let var_4 = var_1.c.x;
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.c, vec3<f32>(-421f, 2476f, var_2.x)) - var_1.c) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c + vec3<f32>(var_2.x, var_3.x, var_1.c.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, 1722f) + var_2.xwx))))));
    let var_6 = _wgslsmith_f_op_f32(-var_1.c.x);
    let var_7 = _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, abs(~(~26010u))), firstLeadingBit(var_0.a.xz));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(var_1.a.x, ~var_7.x), ((u_input.a.x | -u_input.a.x) ^ -32840i) << (countOneBits(0u) % 32u), ~_wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 1i, -2147483647i), vec3<i32>(u_input.a.x, ~(-54695i), _wgslsmith_dot_vec4_i32(vec4<i32>(-17287i, u_input.a.x, u_input.a.x, -4488i), vec4<i32>(-15551i, -268i, 2147483647i, -1i)))), vec3<u32>(48042u, max(~1u, ~1u), abs(0u)), ~((vec3<i32>(37959i, 1i, u_input.a.x) << (vec3<u32>(var_1.a.x, var_7.x, 4294967295u) % vec3<u32>(32u))) << (~var_0.a.yxy % vec3<u32>(32u))) ^ max(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 6757i, u_input.a.x), vec3<i32>(0i, 21949i, 0i))), vec3<i32>(u_input.a.x, 0i, -u_input.a.x)));
}

