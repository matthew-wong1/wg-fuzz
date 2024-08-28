struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.c.c.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(490f, -941f)) + arg_0.c.c.a.x))))) + _wgslsmith_f_op_f32(-1171f * _wgslsmith_f_op_f32(-arg_0.d.c.a.x)));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, 14327i, 2583i, arg_0.d.c.b.x), select(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 7359i, u_input.a.x, 2147483647i), vec4<i32>(arg_0.c.c.b.x, arg_0.d.b.x, 0i, -1i)), vec4<i32>(1i, 1i, 1i, 1i), select(vec4<bool>(true, arg_0.c.a.x, arg_0.a, false), vec4<bool>(true, false, false, arg_0.c.a.x), true))) << (~arg_0.b.x % 32u), u_input.a.x);
    var_1 = countOneBits(arg_0.c.b.x) | u_input.e;
    var var_2 = Struct_3(select(vec2<bool>(true, true), arg_0.c.a, !all(select(vec4<bool>(arg_0.a, arg_0.c.a.x, arg_0.d.a.x, false), vec4<bool>(arg_0.d.a.x, arg_0.d.a.x, false, false), arg_0.c.a.x))), vec3<i32>(arg_0.c.c.b.x, -17962i, u_input.c.x), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_0.d.c.a))), -select(max(vec3<i32>(u_input.c.x, -1i, u_input.a.x), vec3<i32>(5728i, -1i, u_input.e)), arg_0.c.b, arg_0.d.a.x)));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1426f, _wgslsmith_f_op_f32(max(var_2.c.a.x, arg_0.c.c.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0)), var_2.c.a.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d.c.a.yxw))));
    return _wgslsmith_mult_vec3_i32(~vec3<i32>(var_2.b.x, arg_0.d.c.b.x, _wgslsmith_mult_i32(u_input.c.x, arg_0.c.c.b.x)), -vec3<i32>(abs(var_2.b.x) | -2147483647i, abs(reverseBits(var_2.b.x)), _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.c.c.b.x, u_input.e, var_2.c.b.x, u_input.a.x), vec4<i32>(u_input.a.x, arg_0.c.b.x, arg_0.d.c.b.x, var_2.c.b.x))));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_4) -> Struct_4 {
    var var_0 = arg_3.d.c;
    var var_1 = Struct_4(false, u_input.d.zx << (vec2<u32>(min(~u_input.b.x, arg_3.b.x), ~select(1u, 0u, arg_0.a.x)) % vec2<u32>(32u)), Struct_3(select(!arg_0.a, arg_0.a, vec2<bool>(all(vec4<bool>(arg_3.d.a.x, false, arg_0.a.x, true)), false)), vec3<i32>(u_input.a.x, arg_3.d.c.b.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-44244i, arg_0.c.b.x, -62544i), vec3<i32>(-50340i, arg_0.b.x, -1i))), Struct_1(arg_0.c.a, _wgslsmith_clamp_vec3_i32(arg_1, countOneBits(vec3<i32>(2147483647i, 2147483647i, u_input.c.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, arg_3.d.c.b.x, -1i), var_0.b)))), Struct_3(vec2<bool>(!arg_3.a, all(arg_0.a)), var_0.b, arg_3.c.c));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(var_1.c.c.a.zxz - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_3.c.c.a.xxy, vec3<f32>(var_0.a.x, 163f, 888f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.wyx))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x));
    var var_4 = max(-var_0.b, firstLeadingBit(_wgslsmith_sub_vec3_i32(select(arg_1, arg_0.b, arg_3.c.a.x), -vec3<i32>(var_1.d.c.b.x, var_0.b.x, var_1.c.c.b.x)))) ^ reverseBits(firstLeadingBit(arg_3.c.c.b));
    return Struct_4(all(!var_1.d.a), ~(~((vec2<u32>(0u, var_1.b.x) >> (vec2<u32>(var_1.b.x, var_1.b.x) % vec2<u32>(32u))) & vec2<u32>(20720u, arg_3.b.x))), Struct_3(arg_3.d.a, func_3(arg_3), var_1.d.c), Struct_3(vec2<bool>(var_1.d.a.x, arg_0.a.x), -(~select(vec3<i32>(0i, arg_1.x, 2147483647i), vec3<i32>(37262i, arg_1.x, 0i), arg_3.c.a.x)), var_1.c.c));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: f32, arg_3: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_f32(min(780f, _wgslsmith_f_op_f32(-arg_1.d.c.a.x))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.d.c.a.x))));
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.c.c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -383f), -260f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1763f - arg_3.d.c.a.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.c.c.a) * arg_1.c.c.a)))), -arg_3.d.b);
    let var_2 = !(!(!select(select(vec3<bool>(var_0, false, arg_1.a), vec3<bool>(arg_1.a, arg_3.a, false), arg_1.a), vec3<bool>(true, arg_3.c.a.x, true), arg_3.c.b.x == 36815i)));
    let var_3 = _wgslsmith_mult_u32(1u, func_2(arg_3.c, vec3<i32>(_wgslsmith_sub_i32(arg_3.c.b.x, 50088i), 2147483647i, arg_1.c.b.x), _wgslsmith_f_op_f32(f32(-1f) * -605f), func_2(Struct_3(var_2.xz, arg_3.c.b, var_1), var_1.b, arg_1.c.c.a.x, func_2(Struct_3(arg_3.c.a, var_1.b, Struct_1(arg_1.d.c.a, vec3<i32>(arg_1.d.b.x, u_input.c.x, arg_1.c.c.b.x))), vec3<i32>(arg_1.d.c.b.x, 2147483647i, var_1.b.x), -142f, Struct_4(true, vec2<u32>(4294967295u, arg_0), arg_1.c, arg_1.c)))).b.x) << (firstLeadingBit(select(select(1u, 0u, !var_2.x), ~firstTrailingBit(u_input.b.x), !select(true, arg_1.c.a.x, var_2.x))) % 32u);
    var var_4 = vec3<f32>(-591f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.d.c.a.x - -597f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.d.c.a.x)))), !(false && arg_3.c.a.x))), -632f);
    return any(arg_3.c.a);
}

fn func_1() -> Struct_4 {
    var var_0 = 27588i;
    var var_1 = _wgslsmith_dot_vec2_i32(u_input.a, ~firstTrailingBit(-(u_input.c | u_input.c)));
    var_1 = u_input.c.x;
    let var_2 = any(!select(vec2<bool>(true, true), vec2<bool>(true, select(false, false, true)), func_4(_wgslsmith_mult_u32(u_input.d.x, u_input.b.x), Struct_4(false, vec2<u32>(u_input.d.x, u_input.d.x), Struct_3(vec2<bool>(false, true), vec3<i32>(-30123i, u_input.c.x, u_input.c.x), Struct_1(vec4<f32>(-241f, 138f, 2290f, 1000f), vec3<i32>(-1i, u_input.e, -1i))), Struct_3(vec2<bool>(false, false), vec3<i32>(u_input.c.x, u_input.c.x, u_input.a.x), Struct_1(vec4<f32>(-515f, 2054f, -1000f, 1000f), vec3<i32>(u_input.e, u_input.c.x, u_input.a.x)))), _wgslsmith_f_op_f32(-176f - -469f), func_2(Struct_3(vec2<bool>(false, true), vec3<i32>(u_input.a.x, u_input.a.x, -1i), Struct_1(vec4<f32>(-1443f, -257f, 1081f, 335f), vec3<i32>(u_input.c.x, -18155i, 46398i))), vec3<i32>(u_input.e, u_input.a.x, u_input.c.x), -1170f, Struct_4(true, u_input.d.xy, Struct_3(vec2<bool>(false, false), vec3<i32>(45297i, u_input.c.x, u_input.a.x), Struct_1(vec4<f32>(-564f, 417f, -579f, 615f), vec3<i32>(u_input.c.x, -1i, -89968i))), Struct_3(vec2<bool>(true, false), vec3<i32>(u_input.c.x, 24389i, -22353i), Struct_1(vec4<f32>(1000f, 1000f, 1006f, 1000f), vec3<i32>(u_input.a.x, -1i, -25473i))))))));
    let var_3 = func_2(Struct_3(vec2<bool>(true, true), vec3<i32>(u_input.e, 1i, 15004i | max(u_input.c.x, u_input.e)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1336f, 1993f, 808f, 563f) * vec4<f32>(-1000f, -1000f, -378f, -706f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-283f, 471f, -674f, 1000f)))), -vec3<i32>(u_input.c.x, u_input.e, u_input.a.x) ^ ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c.x, 32281i) ^ vec3<i32>(11962i, u_input.e, u_input.c.x), vec3<i32>(u_input.a.x, u_input.e, 0i)), u_input.a.x, u_input.c.x), -859f, Struct_4(false & var_2, abs(u_input.d.yz), func_2(func_2(Struct_3(vec2<bool>(false, false), vec3<i32>(u_input.a.x, u_input.c.x, u_input.c.x), Struct_1(vec4<f32>(125f, 609f, -256f, -717f), vec3<i32>(-2147483647i, -17704i, -65493i))), select(vec3<i32>(2147483647i, u_input.c.x, -1i), vec3<i32>(-41241i, -2147483647i, 1i), true), _wgslsmith_f_op_f32(select(-721f, 286f, var_2)), func_2(Struct_3(vec2<bool>(var_2, var_2), vec3<i32>(2147483647i, -2147483647i, u_input.a.x), Struct_1(vec4<f32>(-132f, 726f, 823f, -326f), vec3<i32>(-2147483647i, 11949i, 2147483647i))), vec3<i32>(u_input.c.x, 13090i, -16276i), 262f, Struct_4(var_2, vec2<u32>(u_input.d.x, u_input.b.x), Struct_3(vec2<bool>(false, var_2), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), Struct_1(vec4<f32>(-392f, 832f, 795f, -419f), vec3<i32>(-2147483647i, u_input.e, u_input.c.x))), Struct_3(vec2<bool>(var_2, false), vec3<i32>(u_input.a.x, -22669i, u_input.a.x), Struct_1(vec4<f32>(-975f, -126f, -589f, 1532f), vec3<i32>(u_input.e, 1i, 1i)))))).d, vec3<i32>(firstLeadingBit(u_input.c.x), countOneBits(u_input.a.x), 41215i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(922f - 1000f), -1847f)), func_2(Struct_3(vec2<bool>(var_2, false), vec3<i32>(u_input.e, 5810i, -2147483647i), Struct_1(vec4<f32>(431f, -773f, -1196f, 1724f), vec3<i32>(u_input.c.x, u_input.a.x, u_input.c.x))), vec3<i32>(u_input.e, u_input.a.x, -5187i), _wgslsmith_div_f32(1448f, 151f), Struct_4(var_2, u_input.b.yw, Struct_3(vec2<bool>(var_2, var_2), vec3<i32>(-38577i, u_input.a.x, u_input.e), Struct_1(vec4<f32>(-585f, -1488f, 731f, -332f), vec3<i32>(-2147483647i, -13822i, u_input.e))), Struct_3(vec2<bool>(true, var_2), vec3<i32>(u_input.e, u_input.a.x, -2147483647i), Struct_1(vec4<f32>(389f, -899f, 455f, 866f), vec3<i32>(u_input.e, 1i, -2147483647i)))))).c, Struct_3(func_2(Struct_3(vec2<bool>(true, true), vec3<i32>(72154i, u_input.e, u_input.c.x), Struct_1(vec4<f32>(-719f, -627f, 1091f, -1188f), vec3<i32>(-1i, u_input.a.x, u_input.a.x))), vec3<i32>(-13999i, -2147483647i, u_input.c.x), _wgslsmith_div_f32(-1051f, -370f), func_2(Struct_3(vec2<bool>(var_2, var_2), vec3<i32>(24706i, 0i, u_input.e), Struct_1(vec4<f32>(-523f, -168f, -1263f, 863f), vec3<i32>(-1i, u_input.e, u_input.e))), vec3<i32>(u_input.a.x, u_input.c.x, -21607i), 1000f, Struct_4(false, u_input.b.xz, Struct_3(vec2<bool>(false, var_2), vec3<i32>(u_input.c.x, u_input.c.x, u_input.a.x), Struct_1(vec4<f32>(-1000f, 798f, -1178f, -591f), vec3<i32>(1575i, 2147483647i, u_input.c.x))), Struct_3(vec2<bool>(var_2, var_2), vec3<i32>(8692i, 0i, 2147483647i), Struct_1(vec4<f32>(-288f, -1857f, -1307f, -1523f), vec3<i32>(u_input.e, u_input.c.x, u_input.a.x)))))).d.a, _wgslsmith_div_vec3_i32(vec3<i32>(-3194i, -2244i, -53454i) & vec3<i32>(-1i, u_input.a.x, -2147483647i), ~vec3<i32>(-2147483647i, u_input.c.x, u_input.e)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1203f, -1024f, 1130f, 1040f) + vec4<f32>(-1458f, -997f, 153f, -534f)), vec3<i32>(2147483647i, u_input.c.x, 1i))))).d.c;
    return func_2(func_2(func_2(func_2(func_2(Struct_3(vec2<bool>(var_2, true), var_3.b, Struct_1(var_3.a, vec3<i32>(u_input.e, 4397i, 63863i))), vec3<i32>(-1i, var_3.b.x, var_3.b.x), var_3.a.x, Struct_4(var_2, vec2<u32>(64700u, u_input.d.x), Struct_3(vec2<bool>(var_2, false), vec3<i32>(u_input.e, 0i, -21620i), var_3), Struct_3(vec2<bool>(var_2, false), vec3<i32>(u_input.a.x, var_3.b.x, 1i), var_3))).d, var_3.b & var_3.b, _wgslsmith_f_op_f32(ceil(var_3.a.x)), func_2(Struct_3(vec2<bool>(true, false), var_3.b, Struct_1(var_3.a, var_3.b)), vec3<i32>(1i, -8071i, 11495i), -667f, Struct_4(false, vec2<u32>(u_input.b.x, u_input.b.x), Struct_3(vec2<bool>(true, var_2), var_3.b, var_3), Struct_3(vec2<bool>(false, var_2), var_3.b, var_3)))).c, vec3<i32>(reverseBits(u_input.e), var_3.b.x, u_input.e), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1245f)), _wgslsmith_f_op_f32(var_3.a.x - var_3.a.x))), func_2(Struct_3(vec2<bool>(false, false), vec3<i32>(u_input.a.x, 54484i, 33365i), Struct_1(var_3.a, vec3<i32>(u_input.c.x, -34999i, 9556i))), vec3<i32>(var_3.b.x, u_input.c.x, var_3.b.x) ^ var_3.b, _wgslsmith_f_op_f32(var_3.a.x - -1154f), func_2(Struct_3(vec2<bool>(false, var_2), vec3<i32>(22160i, -7594i, var_3.b.x), var_3), vec3<i32>(u_input.c.x, var_3.b.x, -2147483647i), 409f, Struct_4(false, u_input.b.yw, Struct_3(vec2<bool>(var_2, true), vec3<i32>(var_3.b.x, var_3.b.x, var_3.b.x), var_3), Struct_3(vec2<bool>(var_2, false), vec3<i32>(-1i, -6807i, -54866i), var_3))))).d, var_3.b, var_3.a.x, func_2(func_2(func_2(Struct_3(vec2<bool>(false, false), var_3.b, Struct_1(vec4<f32>(160f, var_3.a.x, var_3.a.x, -203f), var_3.b)), vec3<i32>(57624i, u_input.a.x, var_3.b.x), var_3.a.x, Struct_4(var_2, vec2<u32>(4294967295u, 14676u), Struct_3(vec2<bool>(var_2, false), var_3.b, Struct_1(var_3.a, vec3<i32>(var_3.b.x, var_3.b.x, u_input.a.x))), Struct_3(vec2<bool>(false, false), var_3.b, Struct_1(var_3.a, var_3.b)))).c, vec3<i32>(var_3.b.x, -2147483647i, u_input.e), 1470f, Struct_4(true, u_input.d.xx, Struct_3(vec2<bool>(var_2, var_2), var_3.b, var_3), Struct_3(vec2<bool>(var_2, var_2), vec3<i32>(var_3.b.x, var_3.b.x, u_input.c.x), Struct_1(vec4<f32>(var_3.a.x, 307f, -776f, 718f), var_3.b)))).c, firstLeadingBit(vec3<i32>(-23173i, -2147483647i, -1i) & var_3.b), var_3.a.x, Struct_4(var_2, vec2<u32>(u_input.b.x, u_input.d.x), Struct_3(vec2<bool>(var_2, var_2), vec3<i32>(var_3.b.x, 2147483647i, -18161i), Struct_1(var_3.a, vec3<i32>(var_3.b.x, 1i, var_3.b.x))), Struct_3(vec2<bool>(var_2, false), vec3<i32>(var_3.b.x, u_input.c.x, u_input.a.x), Struct_1(var_3.a, vec3<i32>(var_3.b.x, var_3.b.x, u_input.c.x)))))).d, vec3<i32>(var_3.b.x, max(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-70243i, 0i, u_input.a.x, u_input.a.x) | vec4<i32>(1i, u_input.e, u_input.c.x, u_input.c.x), vec4<i32>(var_3.b.x, 23850i, -1i, -2147483647i) | vec4<i32>(u_input.e, var_3.b.x, 0i, var_3.b.x))), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c.x, u_input.a.x), ~var_3.b))), _wgslsmith_f_op_f32(max(2392f, _wgslsmith_f_op_f32(round(var_3.a.x)))), func_2(Struct_3(!select(vec2<bool>(true, true), vec2<bool>(var_2, true), true), func_3(Struct_4(true, vec2<u32>(24351u, u_input.d.x), Struct_3(vec2<bool>(true, false), var_3.b, Struct_1(var_3.a, var_3.b)), Struct_3(vec2<bool>(var_2, var_2), var_3.b, var_3))), var_3), var_3.b, 1000f, Struct_4(var_2, select(vec2<u32>(u_input.b.x, u_input.d.x), ~vec2<u32>(4294967295u, u_input.b.x), var_2), Struct_3(select(vec2<bool>(var_2, true), vec2<bool>(var_2, false), false), countOneBits(var_3.b), func_2(Struct_3(vec2<bool>(var_2, false), vec3<i32>(-2147483647i, u_input.a.x, var_3.b.x), Struct_1(var_3.a, var_3.b)), var_3.b, -1000f, Struct_4(false, u_input.b.xy, Struct_3(vec2<bool>(false, var_2), vec3<i32>(var_3.b.x, var_3.b.x, var_3.b.x), var_3), Struct_3(vec2<bool>(false, false), vec3<i32>(var_3.b.x, -2147483647i, -2147483647i), Struct_1(vec4<f32>(var_3.a.x, var_3.a.x, var_3.a.x, -809f), var_3.b)))).c.c), func_2(func_2(Struct_3(vec2<bool>(var_2, true), var_3.b, var_3), vec3<i32>(var_3.b.x, 16741i, u_input.e), var_3.a.x, Struct_4(true, u_input.b.ww, Struct_3(vec2<bool>(var_2, false), vec3<i32>(0i, u_input.c.x, u_input.c.x), var_3), Struct_3(vec2<bool>(var_2, false), var_3.b, Struct_1(var_3.a, var_3.b)))).c, _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_3.b.x, u_input.a.x), vec3<i32>(-27691i, 9150i, 1i)), _wgslsmith_f_op_f32(max(var_3.a.x, -812f)), Struct_4(var_2, vec2<u32>(13350u, u_input.d.x), Struct_3(vec2<bool>(var_2, true), vec3<i32>(u_input.c.x, -83436i, var_3.b.x), var_3), Struct_3(vec2<bool>(var_2, true), var_3.b, Struct_1(var_3.a, vec3<i32>(4872i, 0i, var_3.b.x))))).c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec4<u32>(~1u | var_0.b.x, var_0.b.x >> (14119u % 32u), 1u, _wgslsmith_mult_u32(u_input.d.x, u_input.b.x) ^ _wgslsmith_dot_vec4_u32(select(u_input.b, max(vec4<u32>(4294967295u, 1u, 4294967295u, u_input.d.x), u_input.b), var_0.d.c.a.x < var_0.c.c.a.x), select(~vec4<u32>(0u, var_0.b.x, 4294967295u, u_input.d.x), vec4<u32>(u_input.d.x, var_0.b.x, 0u, 4294967295u), select(vec4<bool>(var_0.a, var_0.a, var_0.d.a.x, var_0.c.a.x), vec4<bool>(true, var_0.d.a.x, true, true), false))));
    var_1 = ~max(vec4<u32>(u_input.d.x, _wgslsmith_dot_vec3_u32(~var_1.wxx, max(vec3<u32>(58516u, 28013u, 1u), u_input.b.wzy)), _wgslsmith_div_u32(_wgslsmith_mult_u32(76055u, 7072u), 37101u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, 19780u), 47698u)), u_input.b);
    var_1 = vec4<u32>(_wgslsmith_mod_u32(firstLeadingBit(max(18392u, u_input.b.x)), 54616u), _wgslsmith_div_u32(29972u, (u_input.b.x | 1u) | ~4294967295u), ~4894u, var_0.b.x) & ~u_input.b;
    var var_2 = ~_wgslsmith_mod_i32(u_input.a.x, u_input.a.x);
    let var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.c.a.x, (u_input.c.x & -abs(7045i)) ^ firstLeadingBit(~2147483647i & func_1().c.b.x), var_0.b.x, (vec2<u32>(~var_0.b.x, 0u) ^ _wgslsmith_mult_vec2_u32(~var_0.b, var_0.b ^ vec2<u32>(0u, var_3.x))) >> (_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(var_3.x, 0u), abs(u_input.d.zy)), ~var_3.xy) % vec2<u32>(32u)), vec3<f32>(-1136f, var_0.c.c.a.x, _wgslsmith_f_op_f32(var_0.d.c.a.x - -1503f)));
}

