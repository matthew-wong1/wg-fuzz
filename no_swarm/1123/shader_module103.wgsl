struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = vec4<i32>(u_input.a, -12185i, 1i, abs(_wgslsmith_div_i32(~arg_0.a.e, i32(-1i) * -24554i))) ^ (_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_0.a.e, 1i, arg_0.a.a.x), vec4<i32>(1i, -1i, arg_0.d.a.x, arg_0.d.a.x)), _wgslsmith_div_i32(arg_0.d.a.x, u_input.a), max(u_input.a, 2147483647i), _wgslsmith_clamp_i32(u_input.a, 1i, -23820i)), vec4<i32>(select(u_input.a, u_input.a, true), -1i, -1i, ~1i)) | (select(~vec4<i32>(u_input.a, arg_0.d.a.x, 0i, -24479i), vec4<i32>(44058i, u_input.a, 0i, 4110i), false) >> ((vec4<u32>(34039u, arg_0.c, 43965u, 779u) & vec4<u32>(1u, arg_0.c, arg_0.c, arg_0.c)) % vec4<u32>(32u))));
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    var var_1 = Struct_2(arg_0.d, select(arg_0.b, select(vec4<bool>(arg_0.d.d.x | arg_0.d.d.x, false, arg_0.d.d.x, true), vec4<bool>(true, !arg_0.b.x, all(vec4<bool>(false, true, arg_0.a.d.x, true)), true), arg_0.a.d.x), select(select(vec4<bool>(false, true, false, true), select(arg_0.a.d, arg_0.a.d, false), !arg_0.d.d), !(!arg_0.d.d), vec4<bool>(arg_0.a.d.x & true, select(true, true, true), true, arg_0.a.d.x))), u_input.d, Struct_1(var_0.wzy >> (~vec3<u32>(arg_0.c, u_input.d, 4504u) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.b)), _wgslsmith_f_op_f32(floor(1099f)), select(arg_0.a.d, arg_0.b, !select(vec4<bool>(true, true, arg_0.d.d.x, true), arg_0.d.d, arg_0.a.d.x)), 19825i));
    var_1 = global0[_wgslsmith_index_u32(~arg_0.c, 28u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.d.c)));
}

fn func_2() -> f32 {
    var var_0 = vec4<bool>(false, false, true, true);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(15941u, 28u)]))));
    global0 = array<Struct_2, 28>();
    let var_2 = var_0.wx;
    var var_3 = select(!var_0.zw, var_0.yw, !(!(!vec2<bool>(var_2.x, false))));
    return _wgslsmith_f_op_f32(floor(564f));
}

fn func_1(arg_0: i32) -> f32 {
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -398f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(1000f + 146f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1577f - -552f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, 1000f)), -1563f))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(463f)), var_0.x)))), _wgslsmith_f_op_f32(1607f + var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec3<i32>(1807i, 1i, -17788i), var_0.xx, var_0.x, vec4<bool>(true, true, true, true), u_input.a), vec4<bool>(false, true, false, true), 0u, Struct_1(vec3<i32>(14965i, u_input.a, arg_0), var_0.yx, 518f, vec4<bool>(true, false, true, true), -999i)))) - 1f) - -163f));
    let var_1 = Struct_2(Struct_1(~(~(vec3<i32>(u_input.a, -1373i, u_input.a) & vec3<i32>(-29867i, 2147483647i, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), -619f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1f, 361f)))), vec4<bool>(true, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 26792u, u_input.d), vec3<u32>(4294967295u, u_input.c, u_input.c)) < ~u_input.b, select(true, true, true), any(vec2<bool>(true, true)) & any(vec4<bool>(false, false, false, true))), -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(33562i, u_input.a)), 1i)), !(!vec4<bool>(true, true, true, select(true, false, true))), firstLeadingBit(0u | (_wgslsmith_sub_u32(u_input.c, u_input.c) & u_input.b)), Struct_1(vec3<i32>(arg_0 | -2147483647i, -2147483647i, _wgslsmith_div_i32(-1i, 2147483647i) << (u_input.d % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.yx, var_0.yy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(869f - var_0.x) + var_0.x) - _wgslsmith_f_op_f32(var_0.x - 1188f)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), false), min(~arg_0, arg_0)));
    return 259f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 28>();
    let var_0 = Struct_1(vec3<i32>(~u_input.a, ~(i32(-1i) * -2147483647i), ~u_input.a), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(711f + _wgslsmith_f_op_f32(722f + 552f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-771f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -431f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1666f, 1359f) * -779f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(328f, 919f))), true)) * -916f), !vec4<bool>(!any(vec4<bool>(false, true, false, true)), any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)), true), i32(-1i) * -(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a)) << (u_input.d % 32u)));
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1607f)) * 138f);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(214f, 2133f, 1148f, -341f))) - vec4<f32>(_wgslsmith_div_f32(782f, var_1), _wgslsmith_f_op_f32(var_0.c * -817f), 415f, -1067f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(747f, var_0.b.x, 159f, var_1) * vec4<f32>(896f, var_0.c, var_0.b.x, var_0.b.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.b.x, 240f, var_1) + vec4<f32>(1217f, var_1, 260f, -1097f)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(u_input.a)), -416f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(255f + 822f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2149f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, var_1, var_1, var_0.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -1117f, -1299f, -1000f)), var_0.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 1132f, var_0.c, 1026f))))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, max(0u, u_input.c));
}

