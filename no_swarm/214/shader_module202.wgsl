struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<f32, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = arg_0;
    let var_1 = arg_2;
    var var_2 = ~74639i;
    var var_3 = Struct_1(arg_0.c.x, arg_0.b, _wgslsmith_mult_vec3_i32(vec3<i32>(-20497i, firstTrailingBit(-3961i), 1i ^ firstLeadingBit(arg_2.c.x)), firstLeadingBit(-vec3<i32>(0i, var_0.c.x, var_0.c.x))), abs(u_input.c.x), ~_wgslsmith_clamp_vec2_u32(max(vec2<u32>(21493u, 42244u) & arg_2.e, var_0.e), u_input.a.yx, reverseBits(vec2<u32>(arg_2.e.x, 23850u))));
    let var_4 = var_1;
    return 1u;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<bool>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = abs(~vec4<i32>(u_input.b, arg_3.x, u_input.b, 17600i));
    global0 = array<vec3<bool>, 9>();
    global1 = _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(~4294967295u, arg_0.x, ~u_input.c.x, _wgslsmith_div_u32(arg_0.x, 15437u))), vec4<u32>(~arg_0.x, 1u, u_input.a.x, _wgslsmith_div_u32(func_3(Struct_1(u_input.b, vec4<i32>(arg_3.x, u_input.b, u_input.b, 2147483647i), vec3<i32>(arg_3.x, 2147483647i, -37822i), u_input.c.x, u_input.a.zx), vec4<bool>(false, true, arg_2.x, false), Struct_1(-1i, vec4<i32>(2147483647i, 0i, u_input.b, 25432i), var_0.wwz, 4822u, u_input.c.yw)), _wgslsmith_sub_u32(arg_0.x, arg_0.x))));
    let var_1 = var_0.x;
    global0 = array<vec3<bool>, 9>();
    return Struct_1(_wgslsmith_sub_i32(-1i, abs(-17892i)), select(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.x, u_input.b, var_0.x, 2147483647i), vec4<i32>(var_0.x, -21352i, arg_3.x, 2147483647i)) | ~vec4<i32>(-10047i, u_input.b, var_0.x, 1i), vec4<i32>(min(~arg_3.x, 0i), _wgslsmith_clamp_i32(2147483647i, var_0.x, u_input.b), var_0.x, 17831i), any(!vec3<bool>(arg_1, arg_1, arg_2.x)) & arg_2.x), var_0.yzy, _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(firstLeadingBit(arg_0.x), u_input.c.x & arg_0.x), 64276u), ~1u), abs(vec2<u32>(9762u, ~countOneBits(1u))));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(min(arg_0.d, arg_0.d) << (u_input.a.x % 32u), _wgslsmith_div_u32(arg_0.e.x, ~u_input.c.x)), _wgslsmith_sub_u32(17807u, 0u)), 10u)], 855f);
    let var_1 = 1877f;
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))))), -300f)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_2.e.x, 10u)] * var_3.x));
    return func_2(_wgslsmith_mult_vec3_u32(min(~u_input.c.xyy, vec3<u32>(reverseBits(arg_0.e.x), func_2(u_input.c.ywz, true, vec4<bool>(true, true, true, true), arg_0.b.xx).d, ~0u)), abs((u_input.c.wyw ^ vec3<u32>(14755u, 20107u, 22819u)) | firstTrailingBit(u_input.c.wyw))), any(global0[_wgslsmith_index_u32(~(~(~24598u)), 9u)]), !vec4<bool>(all(select(global0[_wgslsmith_index_u32(var_2.e.x, 9u)], vec3<bool>(false, false, true), true)), all(vec3<bool>(true, false, false)), all(select(global0[_wgslsmith_index_u32(22774u, 9u)], vec3<bool>(true, false, false), true)), true), vec2<i32>(1i, -586i));
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~58550u, 1u), 9u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1090f, global2[_wgslsmith_index_u32(~func_3(func_2(u_input.a, true, vec4<bool>(false, true, var_0.x, false), vec2<i32>(arg_0.x, -1i)), select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), true), arg_2), 10u)]));
    var_0 = select(global0[_wgslsmith_index_u32(46676u, 9u)], vec3<bool>(!all(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), var_0.x, all(vec2<bool>(var_0.x, true))), var_0.x);
    var var_2 = var_0.yz;
    let var_3 = Struct_1(_wgslsmith_mod_i32(~u_input.b, 38698i) << (func_3(Struct_1(~(-17265i), firstTrailingBit(arg_0), ~vec3<i32>(1i, 2147483647i, arg_0.x), 0u, vec2<u32>(0u, arg_1)), select(vec4<bool>(var_0.x, false, var_0.x, var_2.x), !vec4<bool>(var_2.x, true, var_0.x, var_0.x), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, var_2.x, var_2.x, var_2.x), false)), Struct_1(i32(-1i) * -2147483647i, firstTrailingBit(vec4<i32>(-25411i, arg_2.b.x, -29438i, arg_0.x)), firstLeadingBit(vec3<i32>(arg_3.c.x, -11222i, u_input.b)), 1u, max(arg_3.e, vec2<u32>(u_input.c.x, 4294967295u)))) % 32u), arg_3.b, ~(~reverseBits(firstLeadingBit(vec3<i32>(arg_2.c.x, arg_2.b.x, 0i)))), min(arg_2.e.x, arg_1), ~vec2<u32>(_wgslsmith_sub_u32(arg_3.e.x, 1u) | ~u_input.c.x, firstTrailingBit(min(arg_3.e.x, 1u))));
    return Struct_1(1i, _wgslsmith_div_vec4_i32(vec4<i32>(-firstLeadingBit(25136i), 1i, 1i | _wgslsmith_clamp_i32(arg_2.b.x, 40357i, arg_2.c.x), func_2(countOneBits(vec3<u32>(arg_1, 0u, arg_3.e.x)), var_2.x, select(vec4<bool>(true, false, true, true), vec4<bool>(var_0.x, var_2.x, var_2.x, false), vec4<bool>(true, false, var_0.x, var_2.x)), vec2<i32>(-25592i, 18533i)).b.x), _wgslsmith_div_vec4_i32(vec4<i32>(-43732i << (1u % 32u), _wgslsmith_div_i32(arg_0.x, -37097i), _wgslsmith_clamp_i32(arg_3.c.x, 0i, -2147483647i), 3429i), arg_0)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_0.x, -1i, -1i) | ~arg_2.b, vec4<i32>(arg_2.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_3.a), vec2<i32>(1i, arg_3.a)), 0i, _wgslsmith_div_i32(2147483647i, 3420i))), 1i, -(-1i & arg_3.a)), ~arg_3.e.x, u_input.c.ww);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec3<bool>, 9>();
    global0 = array<vec3<bool>, 9>();
    global2 = array<f32, 10>();
    let var_0 = arg_0.b.x;
    global0 = array<vec3<bool>, 9>();
    return Struct_1(_wgslsmith_div_i32(u_input.b, _wgslsmith_clamp_i32(arg_3.b.x, _wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_0.c.x, u_input.b), arg_3.c.xy, vec2<bool>(false, true)), vec2<i32>(var_0, arg_3.a) << (arg_3.e % vec2<u32>(32u))), 2147483647i)), vec4<i32>(arg_0.a, min(i32(-1i) * -92383i, func_2(vec3<u32>(arg_0.d, arg_3.e.x, 1u) << (vec3<u32>(u_input.a.x, 76494u, 1u) % vec3<u32>(32u)), true, vec4<bool>(false, false, true, false), arg_3.c.yz).c.x), ~arg_0.c.x, -func_4(arg_0, 2147483647i ^ u_input.b).b.x), reverseBits(~(-vec3<i32>(0i, -9598i, 2147483647i))), ~29098u, arg_3.e);
}

fn func_7(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = true;
    let var_1 = var_0;
    let var_2 = vec4<f32>(2599f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(954f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))) + -1443f))), global2[_wgslsmith_index_u32(arg_0.e.x, 10u)], 1000f);
    var var_3 = -173f;
    var_3 = global2[_wgslsmith_index_u32(~countOneBits(1783u), 10u)];
    return arg_0;
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    global0 = array<vec3<bool>, 9>();
    global0 = array<vec3<bool>, 9>();
    let var_0 = func_7(func_6(func_5(~vec4<i32>(1i, u_input.b, -14373i, -40059i), u_input.c.x, func_4(func_2(u_input.c.wxz, false, vec4<bool>(true, false, false, true), vec2<i32>(34252i, 0i)), u_input.b), Struct_1(-2147483647i, firstLeadingBit(vec4<i32>(u_input.b, 13518i, 1i, u_input.b)), abs(vec3<i32>(u_input.b, -1i, u_input.b)), ~80653u, u_input.c.zw)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * 951f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(830f, 343f, arg_0.x, 1087f))))), Struct_1(select(59368i, 0i, true), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.b, 14774i), vec4<i32>(u_input.b, u_input.b, u_input.b, -10718i)), vec4<i32>(-1i, -2147483647i, 1i, 7374i) | vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b)), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(4263i, -1i, 3545i), vec3<i32>(-24292i, 16055i, -18369i), vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(0i, -1i, u_input.b)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(17802u, u_input.a.x), u_input.c.x, 31714u), _wgslsmith_div_vec2_u32(~u_input.c.xw, vec2<u32>(54333u, u_input.c.x) & vec2<u32>(u_input.a.x, 1u)))), vec2<bool>(true, true));
    var var_1 = var_0.b.yzy;
    var var_2 = Struct_1(_wgslsmith_clamp_i32(var_0.b.x, -26437i, 2147483647i), -var_0.b, var_0.b.wzy & -func_4(Struct_1(-19277i, var_0.b, vec3<i32>(var_0.a, 48849i, u_input.b), u_input.c.x, var_0.e), _wgslsmith_dot_vec4_i32(var_0.b, vec4<i32>(u_input.b, var_1.x, -2712i, -2147483647i))).c, ~(func_7(Struct_1(u_input.b, var_0.b, var_0.b.yzw, u_input.c.x, vec2<u32>(u_input.a.x, 4294967295u)), vec2<bool>(true, true)).d >> (func_5(firstLeadingBit(vec4<i32>(0i, var_0.c.x, var_1.x, u_input.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(15761u, 1u, 4294967295u, var_0.e.x), vec4<u32>(4294967295u, 62166u, var_0.e.x, 0u)), Struct_1(var_0.b.x, vec4<i32>(var_1.x, var_1.x, -2147483647i, var_0.a), var_0.b.wzw, var_0.d, u_input.c.zz), Struct_1(11203i, vec4<i32>(u_input.b, 16675i, 2147483647i, -3868i), var_0.b.yyx, var_0.e.x, var_0.e)).e.x % 32u)), vec2<u32>(var_0.d, var_0.d) ^ ~vec2<u32>(_wgslsmith_add_u32(3484u, var_0.e.x), 235u));
    return 9461i;
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec2<f32>) -> Struct_1 {
    global1 = 10728u;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(Struct_1(-25057i, vec4<i32>(1i, func_1(vec3<f32>(-615f, 232f, global2[_wgslsmith_index_u32(1u, 10u)])), 1i, _wgslsmith_mod_i32(31540i, u_input.b)) ^ -(vec4<i32>(u_input.b, u_input.b, 29949i, u_input.b) | vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b)), vec3<i32>(func_4(Struct_1(u_input.b, vec4<i32>(-34004i, -1i, -63320i, u_input.b), vec3<i32>(-4955i, 0i, 3802i), u_input.c.x, u_input.a.zx), u_input.b).c.x, ~u_input.b, func_5(vec4<i32>(0i, u_input.b, 1i, 45389i), u_input.c.x, Struct_1(u_input.b, vec4<i32>(1719i, 2147483647i, -22430i, u_input.b), vec3<i32>(-1i, 24732i, u_input.b), u_input.c.x, vec2<u32>(u_input.a.x, u_input.c.x)), Struct_1(u_input.b, vec4<i32>(2147483647i, u_input.b, u_input.b, 15459i), vec3<i32>(0i, u_input.b, u_input.b), 1u, vec2<u32>(u_input.c.x, 42589u))).c.x) >> ((vec3<u32>(45069u, 4294967295u, u_input.c.x) ^ u_input.c.xwy) % vec3<u32>(32u)), ~_wgslsmith_sub_u32(u_input.a.x, 15548u), select(func_7(Struct_1(-1i, vec4<i32>(-37727i, 48547i, -2147483647i, 36172i), vec3<i32>(2147483647i, u_input.b, 1i), 4480u, u_input.c.xw), vec2<bool>(true, true)).e, ~vec2<u32>(4294967295u, 53633u) >> (~u_input.c.yx % vec2<u32>(32u)), vec2<bool>(false, true))), func_2(_wgslsmith_mult_vec3_u32(~u_input.c.xyx, vec3<u32>(abs(u_input.a.x), u_input.c.x, u_input.a.x)), any(!select(vec2<bool>(false, false), vec2<bool>(true, false), false)), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, true, true))), ~(~vec2<i32>(-76580i, -32042i))), true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(max(1593f, 1008f)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.c.zw), 10u)]))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.c.x, 10u)], 421f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-2386f)))))));
    let var_1 = true | ((_wgslsmith_mod_i32(u_input.b, -u_input.b) != abs(-24357i)) || false);
    var var_2 = func_7(func_6(Struct_1(var_0.a ^ func_2(u_input.a, var_1, vec4<bool>(true, var_1, var_1, false), vec2<i32>(-1i, 0i)).b.x, var_0.b, var_0.c, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(2750u, var_0.e.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(36222u, u_input.a.x), u_input.c.zz)), func_4(func_8(Struct_1(1i, var_0.b, var_0.b.yxw, 71384u, var_0.e), Struct_1(70773i, var_0.b, vec3<i32>(-12402i, -27911i, u_input.b), 1u, vec2<u32>(u_input.a.x, u_input.c.x)), var_1, vec2<f32>(572f, global2[_wgslsmith_index_u32(12927u, 10u)])), u_input.b).e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(14502u, 10u)], global2[_wgslsmith_index_u32(86764u, 10u)]))))), vec4<f32>(_wgslsmith_f_op_f32(-437f - -545f), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, 20359u), 10u)], _wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_0.d, 10u)], 148f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 10u)] - -857f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 10u)]) * _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(0u, 10u)])))), Struct_1(-9009i, vec4<i32>(var_0.c.x, 37300i, var_0.c.x, u_input.b), func_5(var_0.b, u_input.a.x, func_5(var_0.b, u_input.c.x, Struct_1(20292i, var_0.b, var_0.b.xzz, u_input.c.x, u_input.c.yw), Struct_1(u_input.b, var_0.b, var_0.c, 1u, var_0.e)), func_2(vec3<u32>(u_input.a.x, u_input.c.x, 0u), var_1, vec4<bool>(true, var_1, false, var_1), var_0.b.zw)).b.xxx, select(~u_input.a.x, abs(0u), true), vec2<u32>(1u, min(u_input.a.x, var_0.e.x)))), vec2<bool>(true, var_1));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(func_5(vec4<i32>(u_input.b, -1i, var_0.c.x, -16225i), firstLeadingBit(var_0.e.x), func_5(var_0.b, 10255u, Struct_1(-38590i, var_0.b, var_2.c, 44186u, var_0.e), Struct_1(u_input.b, var_2.b, vec3<i32>(var_2.b.x, 40212i, var_2.b.x), 0u, u_input.c.yw)), Struct_1(2147483647i, var_2.b, var_0.c, 56392u, var_2.e)).d, 10u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-821f + global2[_wgslsmith_index_u32(var_0.e.x, 10u)]))) - _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.c.x, 10u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -340f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1379f - 2084f) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.e.x, 10u)])))), vec4<i32>(func_1(vec3<f32>(global2[_wgslsmith_index_u32(~var_2.e.x, 10u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(18644u, 10u)]), _wgslsmith_f_op_f32(-906f * -197f))), u_input.b, var_2.a, 1i), select(~var_2.e.x, var_0.d << (5684u % 32u), false & any(select(global0[_wgslsmith_index_u32(u_input.c.x, 9u)], vec3<bool>(false, var_1, false), true))));
}

