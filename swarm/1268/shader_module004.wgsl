struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

var<private> global1: f32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> vec2<bool> {
    let var_0 = ~firstTrailingBit(6182u);
    return !arg_0.a;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> Struct_5 {
    var var_0 = ~_wgslsmith_mod_u32(0u, ~u_input.a | u_input.a);
    global0 = array<Struct_3, 12>();
    var var_1 = vec2<bool>(true, false);
    let var_2 = 926f;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(2129f - arg_0.x))))));
    return Struct_5(Struct_2(-763f, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2), _wgslsmith_div_f32(-796f, -143f))), select(select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(true, false, true, true), vec4<bool>(true, var_1.x, true, false)), !vec4<bool>(true, var_1.x, false, var_1.x), var_1.x), _wgslsmith_div_i32(arg_1, _wgslsmith_sub_i32(0i, arg_1)), select(func_3(Struct_4(vec2<bool>(var_1.x, false), -1195f, vec2<bool>(true, var_1.x), vec3<i32>(1i, arg_1, 2147483647i)), u_input.a, Struct_2(1932f, Struct_1(-507f, vec4<bool>(var_1.x, var_1.x, false, var_1.x), 63458i, vec2<bool>(var_1.x, false))), -543f), vec2<bool>(var_1.x, var_1.x), var_1.x))), ~(~reverseBits(abs(vec4<u32>(1u, u_input.a, u_input.a, u_input.a)))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec4<f32>) -> StorageBuffer {
    let var_0 = countOneBits(-arg_1);
    global1 = arg_2.x;
    let var_1 = func_2(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.x, 199f), arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x))) * -1092f), 1234f, arg_2.x), arg_1 | ~max(arg_0, -2147483647i));
    global0 = array<Struct_3, 12>();
    var var_2 = vec2<bool>(abs(u_input.a) <= (select(u_input.a, ~2247u, false) << (32542u % 32u)), !(!func_2(arg_2, func_2(arg_2, 20323i).a.b.c).a.b.d.x));
    return StorageBuffer(~(~(-vec3<i32>(var_0, var_0, 2147483647i)) >> (vec3<u32>(~u_input.a, u_input.a, countOneBits(4294967295u)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1549f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(-241f, 442f), _wgslsmith_f_op_f32(trunc(-625f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1442f)))))));
    let var_0 = !vec4<bool>(true, true, all(vec2<bool>(true, true)), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1261f, 606f, 405f) + vec3<f32>(-169f, 678f, -149f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1734f, 222f, 993f) - vec3<f32>(-598f, 545f, 132f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1929f, -1415f, -963f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1018f, 2386f), vec3<f32>(-1683f, 1102f, 613f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(817f, -178f, -1061f) * vec3<f32>(-430f, -654f, -1600f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1949f, -734f, -1203f)))))));
    let var_2 = !all(vec3<bool>(!all(vec2<bool>(true, var_0.x)), var_0.x, var_0.x));
    global0 = array<Struct_3, 12>();
    var var_3 = Struct_4(vec2<bool>(any(!vec3<bool>(var_2, var_0.x, false)), var_2), -1000f, select(!vec2<bool>(any(vec4<bool>(var_0.x, true, var_2, var_2)), select(var_2, var_2, true)), vec2<bool>(false | (var_0.x | true), var_2), select(vec2<bool>(!var_2, var_0.x), !(!vec2<bool>(var_2, var_2)), var_2)), select(-_wgslsmith_sub_vec3_i32(~vec3<i32>(-917i, -40524i, -29690i), -vec3<i32>(-1i, 40793i, -52359i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(1i, 1i, 1i)), !vec3<bool>(true, !var_2, true)));
    let var_4 = !any(vec4<bool>(false, (22445u & u_input.a) >= 36405u, !all(var_0.xzz), var_2));
    let x = u_input.a;
    s_output = func_1(-37578i, _wgslsmith_clamp_i32(var_3.d.x, ~(-17350i), -2147483647i) >> (abs(93749u) % 32u), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -506f, 335f, -401f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-636f, 1073f, -1309f, var_3.b), vec4<f32>(107f, 616f, var_3.b, 337f))))))))));
}

