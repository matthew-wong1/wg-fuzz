struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.b, 108f, 302f, 302f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1756f, arg_2.b, arg_2.d.x, arg_2.d.x)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b), arg_1.d.x, arg_2.d.x, _wgslsmith_div_f32(arg_1.b, arg_1.d.x)), all(arg_1.e.xy))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-362f, _wgslsmith_f_op_f32(step(arg_1.d.x, 761f)), _wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_f_op_f32(f32(-1f) * -239f))))));
    let var_1 = reverseBits(5135i);
    let var_2 = arg_2;
    let var_3 = var_0.wx;
    let var_4 = arg_1;
    return _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-2147483647i, select(arg_2.c, 0i, true), _wgslsmith_div_i32(-15639i, -1i), -var_4.c)), ~(~firstLeadingBit(vec4<i32>(2147483647i, var_1, -411i, var_4.c))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    return -62225i;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.a.yz >> (u_input.a.zx % vec2<u32>(32u)), firstLeadingBit(_wgslsmith_mult_vec2_u32(u_input.a.xy, u_input.a.xz)), vec2<u32>(_wgslsmith_mod_u32(u_input.c, 1u), u_input.a.x)), vec2<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(13135u, u_input.b, 13149u) >> (vec3<u32>(u_input.a.x, u_input.a.x, 1u) % vec3<u32>(32u)), ~u_input.a))), 885f, func_4(Struct_1(u_input.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1940f)))), -func_3(arg_1, Struct_1(4294967295u, 809f, arg_1, vec2<f32>(422f, -1874f), arg_0), Struct_1(1u, -2207f, -2147483647i, vec2<f32>(1000f, 1793f), arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1348f, -380f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-772f, -2431f))), !vec3<bool>(true, arg_0.x, arg_0.x)), Struct_1(abs(~74389u), -1873f, _wgslsmith_div_i32(arg_1 & arg_1, -2147483647i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(727f, 543f)))), arg_0), Struct_1(~(74u | u_input.a.x), _wgslsmith_f_op_f32(-759f - _wgslsmith_f_op_f32(floor(1000f))), ~arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-918f, 579f))), arg_0), Struct_1(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(217f, -406f)) * _wgslsmith_f_op_f32(f32(-1f) * -865f)), arg_1, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-344f, 286f) * vec2<f32>(-2151f, -619f)))), arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1499f, -506f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1191f, 1199f))))), select(arg_0, vec3<bool>(!arg_0.x != all(vec4<bool>(true, true, arg_0.x, false)), !arg_0.x, true), !arg_0.x));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(112f + _wgslsmith_f_op_f32(max(var_0.d.x, _wgslsmith_f_op_f32(140f * var_0.b)))), ~var_0.c, var_0.d, vec3<bool>(var_0.e.x, true, !select(u_input.c >= 56240u, var_0.d.x != var_0.b, any(vec3<bool>(true, true, false)))));
    var var_1 = vec4<u32>(4294967295u, ~(~1u), _wgslsmith_mult_u32(~reverseBits(4294967295u), 0u), u_input.c) >> (firstLeadingBit(_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.c, 4294967295u, u_input.b, var_0.a)), _wgslsmith_mod_vec4_u32(~vec4<u32>(46592u, var_0.a, 4294967295u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(15947u, u_input.a.x, 35365u, var_0.a), vec4<u32>(var_0.a, 1u, u_input.b, u_input.b))))) % vec4<u32>(32u));
    return Struct_1(_wgslsmith_clamp_u32(abs(abs(0u)), ~u_input.c, firstTrailingBit(0u)), _wgslsmith_f_op_f32(-var_0.d.x), ~arg_1, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.d)))))), var_0.e);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1093f), 1f));
    var var_1 = func_2(arg_0.e, ~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-18036i, _wgslsmith_div_i32(-36838i, 10933i), 37338i), -_wgslsmith_div_i32(7424i, arg_0.c)));
    return _wgslsmith_f_op_f32(-714f + _wgslsmith_f_op_f32(ceil(1297f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(36319u, -1000f, -12308i, vec2<f32>(465f, 1272f), vec3<bool>(false, false, true)), vec4<bool>(true, true, true, true)))))));
    var var_2 = Struct_1(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-702f, -931f)))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-6421i, _wgslsmith_sub_i32(-1i, 2147483647i)), -_wgslsmith_mod_i32(-9243i, 27112i), ~func_3(30579i, Struct_1(var_0, 678f, 2147483647i, vec2<f32>(1446f, -1000f), vec3<bool>(true, true, false)), Struct_1(51435u, 1034f, -1i, vec2<f32>(-435f, 508f), vec3<bool>(true, false, true)))), -select(~vec3<i32>(31512i, -2147483647i, 2602i), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 56090i, -1i), vec3<i32>(-5021i, -1i, 0i)), func_2(vec3<bool>(false, true, true), 25404i).e)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(118f, -1630f) + vec2<f32>(364f, -304f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-947f, -415f), vec2<f32>(-646f, 984f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1250f, 1088f))))))), !vec3<bool>(!any(vec2<bool>(false, true)), true, any(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(var_2.d)))), countOneBits(select(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_0), u_input.a.xx), _wgslsmith_add_vec2_u32(vec2<u32>(28236u, 37051u), u_input.a.yx), select(var_2.e.x, var_2.e.x, var_2.e.x))) | vec2<u32>(~(~u_input.b), var_0), vec3<i32>(1i, var_2.c, select(1i, min(0i, -19279i), var_2.e.x)) << (u_input.a % vec3<u32>(32u)));
}

