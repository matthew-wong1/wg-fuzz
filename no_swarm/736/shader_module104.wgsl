struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, true), -1000f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2075f, _wgslsmith_f_op_f32(f32(-1f) * -1481f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, 285f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1586f) - vec2<f32>(global0.x, -107f)), any(vec4<bool>(true, false, false, global1.b.x)))))), select(vec2<bool>(!(1i <= arg_0.x), false), global1.a, all(select(select(global1.b.yy, vec2<bool>(true, true), global1.b.x), select(arg_1.b.yx, vec2<bool>(false, arg_1.a.x), global1.b.xx), !global1.b.xx)))));
    let var_0 = ~abs(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.yz))) >> (28557u % 32u);
    var var_1 = vec3<i32>(arg_2.x >> (1u % 32u), reverseBits(1i ^ _wgslsmith_sub_i32(arg_2.x, arg_2.x)) | _wgslsmith_add_i32(_wgslsmith_sub_i32(~u_input.d.x, 17250i), -1i), _wgslsmith_mult_i32(min(_wgslsmith_dot_vec3_i32(~arg_2.zwz, max(vec3<i32>(2147483647i, 14631i, 16192i), vec3<i32>(u_input.d.x, arg_0.x, u_input.d.x))), _wgslsmith_add_i32(~arg_2.x, 20417i)), u_input.d.x & _wgslsmith_clamp_i32(_wgslsmith_div_i32(39455i, arg_2.x), firstTrailingBit(2147483647i), -arg_2.x)));
    var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -var_1.x, firstTrailingBit(arg_2.x)), arg_0.xwx), _wgslsmith_dot_vec3_i32(~(~arg_0.yyy), -(vec3<i32>(-1i, var_1.x, 26508i) << (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u)))), 1i), vec3<i32>(31207i, -_wgslsmith_mult_i32(u_input.d.x, _wgslsmith_mult_i32(-11529i, -1i)), -abs(var_1.x)));
    return vec3<bool>(~u_input.a.x <= var_0, global1.a.x, !(!all(select(vec4<bool>(arg_1.a.x, false, true, arg_1.a.x), vec4<bool>(global1.a.x, arg_1.b.x, false, true), vec4<bool>(false, arg_1.b.x, arg_1.a.x, false)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -798f) * _wgslsmith_f_op_f32(trunc(arg_0.c)))))));
    let var_0 = select(4294967295u, 41666u, any(!(!func_3(vec4<i32>(-2147483647i, -26805i, u_input.d.x, 47117i), Struct_1(vec2<bool>(arg_1.b.x, arg_0.a.x), arg_0.b, arg_0.c), vec4<i32>(0i, 16564i, u_input.d.x, -10974i)))));
    global1 = Struct_1(vec2<bool>(any(vec4<bool>(false, u_input.b.x < var_0, any(arg_0.b), true)), any(vec2<bool>(func_3(vec4<i32>(35158i, 2147483647i, u_input.d.x, -43430i), Struct_1(arg_0.b.xz, global1.b, global1.c), vec4<i32>(2147483647i, 2147483647i, -39091i, -30383i)).x, all(vec3<bool>(arg_0.a.x, true, false))))), global1.b, _wgslsmith_f_op_f32(floor(-2160f)));
    let var_1 = u_input.a;
    var var_2 = u_input.a;
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(292f, 1242f))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1880f, -1762f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1000f, arg_1.c)))))));
}

fn func_2() -> u32 {
    global0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1258f, _wgslsmith_f_op_f32(-753f - 1135f)), global1.c), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(global1.a, !global1.b, global0.x), Struct_1(vec2<bool>(true, global1.a.x), func_3(vec4<i32>(33241i, u_input.d.x, 1477i, -35555i), Struct_1(vec2<bool>(false, false), vec3<bool>(true, false, global1.b.x), global0.x), vec4<i32>(u_input.d.x, u_input.d.x, -1i, 5300i)), _wgslsmith_f_op_f32(step(global0.x, global0.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(384f, _wgslsmith_f_op_f32(round(837f)))), global1.b.x)));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, -195f, -602f) + vec3<f32>(664f, 1072f, global0.x)), vec3<f32>(global0.x, global1.c, -1233f), !global1.b)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-119f, global1.c, 555f) - vec3<f32>(1824f, global0.x, -1993f)))))));
    let var_1 = global1.a.x;
    global1 = Struct_1(global1.a, !vec3<bool>(true, false, (false & global1.a.x) & func_3(vec4<i32>(-1i, u_input.d.x, u_input.d.x, -1i), Struct_1(global1.b.zy, vec3<bool>(global1.a.x, false, global1.b.x), global1.c), vec4<i32>(14626i, u_input.d.x, u_input.d.x, -2147483647i)).x), -425f);
    let var_2 = vec3<bool>(any(vec4<bool>(false && any(global1.b), false, false, global1.a.x)), false, any(select(select(global1.b, global1.b, false), vec3<bool>(u_input.c <= 45979u, true | global1.b.x, global1.b.x), !(-169f < global0.x))));
    return ~((_wgslsmith_div_u32(min(u_input.c, 27420u), 1u) & 71385u) << (_wgslsmith_clamp_u32(select(u_input.b.x << (35455u % 32u), u_input.c & u_input.a.x, true), 0u, ~u_input.a.x) % 32u));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(!(!(!(!global1.a))), vec3<bool>(global1.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1253f, global0.x)), global1.c)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.c)) + -608f), (u_input.d.x < -1i) || true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(484f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 408f) * _wgslsmith_f_op_f32(select(-1098f, arg_1.c, arg_2.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-1046f * -499f)))));
    var var_1 = u_input.d.x;
    var var_2 = ~u_input.c;
    var_0 = Struct_1(!select(select(var_0.a, arg_1.a, all(vec2<bool>(false, var_0.a.x))), !func_3(vec4<i32>(u_input.d.x, 1i, u_input.d.x, -1i), arg_1, vec4<i32>(u_input.d.x, 0i, 12300i, u_input.d.x)).yx, var_0.b.x), !vec3<bool>(!var_0.b.x | (arg_2.x && true), false, !arg_2.x), _wgslsmith_f_op_f32(-global1.c));
    var var_3 = u_input.d.x;
    return Struct_1(vec2<bool>(true | var_0.b.x, arg_1.a.x), vec3<bool>(var_0.a.x, u_input.d.x >= ~_wgslsmith_sub_i32(6066i, u_input.d.x), !(global1.c == global1.c)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-376f, global0.x, all(select(vec2<bool>(false, var_0.a.x), arg_1.a, false)))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = func_5(func_2(), Struct_1(!func_3(vec4<i32>(u_input.d.x, u_input.d.x, -1i, u_input.d.x) >> (arg_2 % vec4<u32>(32u)), Struct_1(arg_0, arg_1, 434f), min(vec4<i32>(1i, 32736i, u_input.d.x, -1i), vec4<i32>(0i, u_input.d.x, u_input.d.x, -1738i))).zx, func_3(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, 3780i, u_input.d.x, -7446i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, u_input.d.x), vec4<i32>(24396i, u_input.d.x, u_input.d.x, 2147483647i))), Struct_1(!arg_1.xy, !arg_1, global1.c), ~vec4<i32>(u_input.d.x, u_input.d.x, 0i, 30220i)), 793f), select(global1.b, select(arg_1, !vec3<bool>(global1.a.x, true, true), global1.b), select(arg_1, select(!arg_1, !arg_1, vec3<bool>(arg_1.x, true, false)), vec3<bool>(true, true, true))));
    let var_1 = var_0;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.c, -452f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -580f), vec2<f32>(-394f, global0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-635f, -1159f))))), global1.b.xy)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c))), _wgslsmith_f_op_f32(f32(-1f) * -1528f))));
    var var_2 = func_5(arg_2.x, Struct_1(arg_1.yz, select(vec3<bool>(!arg_1.x, true, true), select(arg_1, var_0.b, var_0.a.x || arg_1.x), global1.b.x || true), func_5(arg_2.x, var_0, !select(vec3<bool>(false, false, true), global1.b, var_0.b)).c), vec3<bool>(var_0.b.x, global1.b.x && true, false));
    var_2 = Struct_1(!vec2<bool>(!arg_0.x, !(!arg_1.x)), vec3<bool>(func_3(~vec4<i32>(u_input.d.x, 1i, 11374i, u_input.d.x), func_5(1u, var_0, var_0.b), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 2245i, -2147483647i), vec4<i32>(u_input.d.x, u_input.d.x, 0i, u_input.d.x)) & abs(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 30208i))).x, true, any(select(select(vec4<bool>(arg_0.x, true, var_0.a.x, var_2.b.x), vec4<bool>(var_0.b.x, var_2.b.x, arg_0.x, global1.b.x), vec4<bool>(true, arg_0.x, false, var_1.b.x)), vec4<bool>(arg_1.x, false, var_1.b.x, false), all(vec4<bool>(arg_1.x, true, global1.b.x, global1.a.x))))), -540f);
    return func_5(_wgslsmith_add_u32(arg_2.x, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.a.x), u_input.a.yx))), var_0, !var_0.b);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a, select(global1.b, vec3<bool>(true, true, true), !(!global1.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1047f * arg_0.c))))));
    return Struct_1(vec2<bool>(all(vec3<bool>(any(vec4<bool>(false, var_0.b.x, var_0.a.x, global1.b.x)), global1.a.x, !var_0.a.x)), any(global1.b) || func_1(var_0.b.zz, !arg_0.b, u_input.b).b.x), vec3<bool>(!select(!arg_0.b.x, any(vec2<bool>(false, arg_0.a.x)), true), global1.b.x, var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c, 1000f) * 364f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global1.c);
    global1 = func_6(func_1(vec2<bool>(any(!global1.b.xx), any(vec3<bool>(global1.b.x, true, global1.b.x))), !vec3<bool>(!global1.b.x, true, -3321i < u_input.d.x), vec4<u32>(u_input.a.x, u_input.b.x, _wgslsmith_div_u32(select(4294967295u, 4294967295u, global1.a.x), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, u_input.b.x))), 1u)));
    var_0 = 267f;
    let var_1 = Struct_1(global1.a, global1.b, _wgslsmith_f_op_f32(func_5(0u, Struct_1(vec2<bool>(global1.a.x, global1.b.x), vec3<bool>(true, false, global1.a.x), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec2<bool>(global1.b.x, false), global1.b, -1239f), Struct_1(vec2<bool>(global1.a.x, global1.a.x), global1.b, global1.c))).x), !(!vec3<bool>(global1.b.x, false, true))).c + global0.x));
    global1 = func_5(0u, var_1, var_1.b);
    global1 = var_1;
    var var_2 = func_3(-_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.d.x, 5462i), 10642i, u_input.d.x, ~u_input.d.x), vec4<i32>(2147483647i, -25171i, _wgslsmith_clamp_i32(2147483647i, u_input.d.x, u_input.d.x), 1i)), func_6(func_6(var_1)), -vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, 0i, 0i, 1i), vec4<i32>(u_input.d.x, 1i, 2147483647i, u_input.d.x)), vec4<i32>(23947i, u_input.d.x, u_input.d.x, 2147483647i)), u_input.d.x, i32(-1i) * -6375i));
    let var_3 = func_1(func_5(~select(4294967295u, ~u_input.c, false | var_1.a.x), var_1, select(select(vec3<bool>(global1.b.x, false, false), func_1(var_2.xx, global1.b, u_input.b).b, vec3<bool>(true, var_2.x, false)), global1.b, !(!global1.b))).a, vec3<bool>(var_1.b.x, var_1.a.x, var_2.x), vec4<u32>(~_wgslsmith_div_u32(1683u, u_input.b.x), ~4294967295u, 39169u, ~(~u_input.c)) >> (~firstLeadingBit(u_input.b) % vec4<u32>(32u)));
    let var_4 = vec3<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.c << (1u % 32u), ~max(~u_input.c, ~19468u)), ~u_input.a.x, func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1f), u_input.c, u_input.b.x, _wgslsmith_mult_i32(23126i, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.d.x, 1i, -42166i), max(vec3<i32>(u_input.d.x, -29016i, 14608i), -vec3<i32>(u_input.d.x, u_input.d.x, 6536i)))));
}

