struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec2<bool> {
    return select(vec2<bool>(true, true), !vec2<bool>(all(vec2<bool>(true, global1.x)), global1.x), global1.x);
}

fn func_2() -> Struct_1 {
    global1 = !(!(!func_3(-1117f, 1u)));
    global1 = !select(vec2<bool>(false || (-2147483647i >= u_input.d.x), global1.x), func_3(_wgslsmith_f_op_f32(1f * -1066f), select(89141u & u_input.a.x, max(7578u, 23102u), true)), select(select(!vec2<bool>(global1.x, true), !vec2<bool>(true, global1.x), func_3(-962f, 1u)), select(!vec2<bool>(global1.x, global1.x), !vec2<bool>(false, global1.x), func_3(-328f, 0u)), !vec2<bool>(true, global1.x)));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-827f + 209f))), 904f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-967f, -1150f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 673f, 1078f), vec3<f32>(-1299f, -137f, 957f)) - vec3<f32>(1f, 1f, 1f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + var_0.x))), var_0.x, var_0.x) - vec4<f32>(287f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(var_0.x + -821f), 939f));
    global0 = array<i32, 23>();
    return Struct_1(select(vec3<bool>(any(vec3<bool>(false, global1.x, global1.x)), !global1.x, false), vec3<bool>(true, false, 2147483647i <= firstTrailingBit(u_input.b)), true), var_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 23u)] >> ((reverseBits(max(u_input.a.x, u_input.a.x)) ^ 1u) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    global1 = func_3(-444f, _wgslsmith_div_u32(30017u, max(_wgslsmith_div_u32(4294967295u, 4294967295u), ~arg_1.x)) & u_input.a.x);
    var var_0 = Struct_1(func_2().a, arg_0.b, min(14495i, u_input.b));
    let var_1 = func_2();
    global1 = !(!var_1.a.zy);
    var_0 = Struct_1(vec3<bool>(false, global1.x, true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1435f * _wgslsmith_f_op_f32(max(arg_0.b, -955f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + 617f))), !(var_0.c < var_0.c))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(firstTrailingBit(u_input.d.zy), vec2<i32>(-2147483647i, arg_0.c) ^ vec2<i32>(var_0.c, -2147483647i)), u_input.d.yz), u_input.d.yz & vec2<i32>(i32(-1i) * -2147483647i, 34370i)));
    return var_1;
}

fn func_5(arg_0: Struct_1) -> f32 {
    global0 = array<i32, 23>();
    let var_0 = u_input.d.zx ^ vec2<i32>(-arg_0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i << (u_input.a.x % 32u), -44953i, 33935i, abs(u_input.c)), vec4<i32>(-2147483647i, 0i, arg_0.c, 106125i) << (countOneBits(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))));
    let var_1 = arg_0;
    let var_2 = ~(u_input.a >> (_wgslsmith_mod_vec2_u32(~u_input.a ^ ~vec2<u32>(4294967295u, 35515u), max(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a), vec2<u32>(u_input.a.x, u_input.a.x))) % vec2<u32>(32u)));
    global1 = vec2<bool>(var_1.a.x, false);
    return func_2().b;
}

fn func_1() -> vec4<f32> {
    let var_0 = vec2<i32>(select(15798i, ~u_input.b, any(!(!vec2<bool>(global1.x, global1.x)))), ~(~(-global0[_wgslsmith_index_u32(u_input.a.x, 23u)] | 0i)));
    var var_1 = _wgslsmith_f_op_f32(-515f * 773f);
    var_1 = _wgslsmith_f_op_f32(trunc(874f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(804f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1852f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1090f) * _wgslsmith_f_op_f32(ceil(-485f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(func_2(), ~vec3<u32>(0u, u_input.a.x, 4294967295u))))));
    global0 = array<i32, 23>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -168f, -1168f, _wgslsmith_div_f32(var_2, var_2))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-455f, 431f, var_2, 137f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 23>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -552f, 887f, 762f) - vec4<f32>(666f, 371f, -2864f, 1345f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(896f, 408f, 1313f, -247f), vec4<f32>(1218f, -182f, -1806f, 538f), false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-970f, -210f, -332f, -1489f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(809f, 1000f, 432f, 206f) - vec4<f32>(1646f, 337f, 1005f, 630f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 244f, -1266f, 273f)), vec4<f32>(196f, -631f, 677f, -979f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1116f, 1378f, -1000f, -369f))))));
    var var_1 = Struct_1(vec3<bool>(!global1.x, !global1.x, global1.x), var_0.x, _wgslsmith_clamp_i32(i32(-1i) * -8872i, 1i, (1i | global0[_wgslsmith_index_u32(u_input.a.x, 23u)]) ^ u_input.d.x));
    global0 = array<i32, 23>();
    let var_2 = vec3<bool>(func_4(func_2(), ~select(max(vec3<u32>(2111u, 0u, 0u), vec3<u32>(1u, u_input.a.x, 51728u)), reverseBits(vec3<u32>(49599u, u_input.a.x, u_input.a.x)), var_1.a)).a.x, !global1.x, var_1.a.x);
    var var_3 = Struct_1(select(vec3<bool>(!all(vec2<bool>(var_1.a.x, global1.x)), true, true), !vec3<bool>(true, var_2.x & true, true), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -371f)) * var_0.x)), -25480i);
    var_3 = func_4(func_4(func_2(), ~(~(vec3<u32>(1u, 29976u, u_input.a.x) >> (vec3<u32>(1u, 46041u, 25587u) % vec3<u32>(32u))))), vec3<u32>(~4294967295u, 1u, 4294967295u ^ ~(~u_input.a.x)));
    global1 = var_3.a.yx;
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -471f) * var_0.xx)) * vec2<f32>(_wgslsmith_f_op_f32(abs(var_4.b)), 774f)) * vec2<f32>(var_3.b, var_4.b)), _wgslsmith_mult_vec2_i32(u_input.d.zx, select(abs(vec2<i32>(-2147483647i, -14581i)), vec2<i32>(-2147483647i, 1i), var_4.a.zz) << (vec2<u32>(60290u, 28356u) % vec2<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec3_i32(~abs(vec3<i32>(5104i, var_3.c, 1i)), max(abs(u_input.d), abs(vec3<i32>(var_1.c, global0[_wgslsmith_index_u32(16378u, 23u)], var_3.c)))), var_3.c, var_4.c, var_4.c));
}

