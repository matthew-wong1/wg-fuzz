struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2() -> Struct_4 {
    let var_0 = global0.a;
    let var_1 = u_input.a;
    global0 = Struct_3(global0.a, global0.b);
    global0 = Struct_3(Struct_2(Struct_1(reverseBits(20835i), true)), var_0.a);
    let var_2 = Struct_4(~vec2<u32>(~firstTrailingBit(1u), var_1), ~countOneBits(~(~vec2<u32>(var_1, u_input.a))));
    return Struct_4(var_2.a, abs(u_input.b.yz));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec2<i32>) -> Struct_2 {
    global0 = Struct_3(arg_0.a, Struct_1(i32(-1i) * -reverseBits(-39708i), any(select(select(vec2<bool>(global1.x, arg_0.b.b), vec2<bool>(global1.x, false), false), vec2<bool>(global1.x, true), all(vec4<bool>(true, arg_0.a.a.b, global1.x, arg_0.a.a.b))))));
    var var_0 = vec4<bool>(true, true, global0.b.b || any(vec4<bool>(!global0.b.b, any(vec3<bool>(false, global1.x, arg_0.a.a.b)), false, arg_0.b.b)), arg_0.a.a.b);
    let var_1 = Struct_1(-global0.a.a.a, !(!all(var_0.xz)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(abs(1418f)), 1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-290f, -350f)))))));
    let var_3 = arg_0.a.a.a;
    return Struct_2(var_1);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: Struct_4) -> vec4<f32> {
    global1 = vec2<bool>(global0.a.a.b, true);
    let var_0 = max(~1u, func_2().a.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -441f)) - arg_1.zx);
    var var_2 = vec2<f32>(var_1.x, arg_1.x);
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 247f)) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(-var_2.x)))) - arg_1.yz);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 701f, arg_1.x, var_2.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-884f, arg_1.x, -1000f, var_1.x), vec4<f32>(var_2.x, 471f, var_1.x, 1406f)) + vec4<f32>(847f, -1946f, -1745f, arg_1.x))) - vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -123f), var_1.x)), -662f, 1666f, var_1.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: u32) -> i32 {
    var var_0 = true;
    var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(arg_0 * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-110f)))), -2292f, arg_0.x, arg_0.x) * _wgslsmith_f_op_vec4_f32(func_4(func_3(Struct_3(Struct_2(Struct_1(arg_1, global1.x)), global0.a.a), func_2(), func_2(), vec2<i32>(-1i, arg_1) | u_input.c.xy), vec3<f32>(_wgslsmith_div_f32(-1000f, 339f), -1919f, arg_0.x), vec2<bool>(all(vec3<bool>(global0.a.a.b, global1.x, global1.x)), false), func_2()))));
    let var_2 = vec2<bool>(false, any(select(vec4<bool>(global0.b.b, global1.x, global1.x == true, arg_0.x <= 227f), vec4<bool>(global0.b.b, func_3(Struct_3(global0.a, Struct_1(-2147483647i, global1.x)), Struct_4(vec2<u32>(61725u, arg_2), u_input.b.xy), Struct_4(vec2<u32>(87530u, arg_2), u_input.b.zy), vec2<i32>(-2952i, 1i)).a.b, !global1.x, func_3(Struct_3(global0.a, Struct_1(u_input.c.x, global1.x)), Struct_4(u_input.b.zy, vec2<u32>(u_input.a, 0u)), Struct_4(u_input.b.xy, u_input.b.xy), u_input.c.xw).a.b), global0.b.b)));
    let var_3 = !vec3<bool>(true, u_input.a <= ~(arg_2 | 4294967295u), global1.x);
    return -1i;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec2<bool>) -> vec3<f32> {
    var var_0 = func_2();
    let var_1 = Struct_3(arg_2, Struct_1(2147483647i, global0.a.a.b));
    let var_2 = vec2<i32>(abs((firstLeadingBit(var_1.b.a) >> (reverseBits(0u) % 32u)) ^ -49964i), u_input.c.x);
    var var_3 = Struct_3(Struct_2(arg_2.a), func_3(Struct_3(func_3(Struct_3(Struct_2(global0.a.a), arg_2.a), Struct_4(var_0.a, vec2<u32>(u_input.a, 23554u)), Struct_4(var_0.b, var_0.b), vec2<i32>(var_1.b.a, -1i)), func_3(var_1, Struct_4(u_input.b.xy, vec2<u32>(18185u, 1u)), func_2(), countOneBits(var_2)).a), Struct_4(~var_0.b ^ vec2<u32>(u_input.b.x, var_0.b.x), _wgslsmith_add_vec2_u32(u_input.b.zz, vec2<u32>(28508u, 22996u))), func_2(), vec2<i32>(-1i) * -select(vec2<i32>(1i, 17900i), vec2<i32>(arg_2.a.a, 33294i), vec2<bool>(true, false))).a);
    let var_4 = func_2();
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0.zyy * arg_0.yyz), vec3<f32>(arg_1.x, -1291f, arg_1.x), var_3.a.a.b))))), arg_0.wzw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(select(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(118185u, u_input.b.x), _wgslsmith_div_u32(54342u, u_input.b.x)), u_input.b.yz), vec2<u32>(~(~50852u), ~(~u_input.b.x)), !(!(!vec2<bool>(global0.b.b, false)))), u_input.b.xz);
    var var_1 = _wgslsmith_div_f32(1000f, -1684f);
    var var_2 = _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 330f, -564f, -350f), vec4<f32>(1129f, 497f, -2479f, 919f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(920f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1947f + -1000f))))), Struct_2(global0.a.a), select(!(!select(vec2<bool>(global0.a.a.b, true), vec2<bool>(global0.b.b, true), global0.b.b)), vec2<bool>(!(!global0.a.a.b), global0.a.a.b), ~_wgslsmith_add_i32(2147483647i, global0.b.a) == func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-338f, -1000f, 1500f, 283f) - vec4<f32>(1046f, -1484f, -1000f, -1000f)), 0i >> (var_0.b.x % 32u), _wgslsmith_mult_u32(0u, u_input.a)))));
    global1 = select(!(!select(select(vec2<bool>(global0.b.b, false), vec2<bool>(global0.b.b, global1.x), global1.x), vec2<bool>(global1.x, false), !vec2<bool>(false, global0.b.b))), select(select(vec2<bool>(false, any(vec2<bool>(false, false))), vec2<bool>(!global1.x, true), !vec2<bool>(global0.a.a.b, true)), !(!select(vec2<bool>(false, global0.b.b), vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false))), vec2<bool>(!all(vec4<bool>(false, false, global0.a.a.b, false)), u_input.c.x != min(14237i, -2147483647i))), vec2<bool>(!any(vec4<bool>(global0.a.a.b, global0.a.a.b, false, true)), true));
    let var_3 = func_3(Struct_3(func_3(Struct_3(func_3(Struct_3(Struct_2(global0.b), global0.b), var_0, Struct_4(vec2<u32>(96123u, var_0.b.x), vec2<u32>(36594u, 1u)), vec2<i32>(9194i, 15071i)), func_3(Struct_3(Struct_2(Struct_1(u_input.c.x, global0.b.b)), global0.a.a), Struct_4(u_input.b.yx, vec2<u32>(var_0.b.x, u_input.a)), var_0, vec2<i32>(global0.b.a, -12983i)).a), Struct_4(select(vec2<u32>(38709u, 48775u), vec2<u32>(34966u, var_0.a.x), global0.b.b), var_0.b & vec2<u32>(var_0.a.x, 1u)), var_0, min(vec2<i32>(global0.b.a, global0.b.a), vec2<i32>(-29295i, u_input.c.x)) | select(u_input.c.wx, vec2<i32>(-2147483647i, u_input.c.x), vec2<bool>(global1.x, false))), Struct_1(countOneBits(_wgslsmith_mult_i32(global0.a.a.a, global0.a.a.a)), true)), var_0, func_2(), abs(vec2<i32>(-func_1(vec4<f32>(var_2.x, -1438f, -421f, var_2.x), -169i, 46587u), abs(global0.a.a.a))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, -1566f, 1000f, var_2.x)))))), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, ~var_0.a.x | ~u_input.b.x, countOneBits(~48633u)), u_input.b, _wgslsmith_mult_vec3_u32(vec3<u32>(30316u, firstLeadingBit(11112u), max(36832u, var_0.a.x)), u_input.b)));
}

