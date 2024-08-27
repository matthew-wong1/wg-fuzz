struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1000f, -368f, -1000f, 455f);

var<private> global1: vec2<bool>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = abs(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(select(vec3<i32>(82428i, 2147483647i, -1i), vec3<i32>(11884i, 51992i, -1i), vec3<bool>(global1.x, false, true))), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.c, u_input.c, -1i), vec3<i32>(2147483647i, -1i, u_input.c))), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.c, -2147483647i, 26379i), ~abs(vec3<i32>(u_input.c, u_input.c, 2147483647i)))));
    var var_1 = Struct_1(~_wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(65619u), _wgslsmith_mult_u32(u_input.a, 1u)), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, global0.x, !(global1.x || global1.x)))), ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(countOneBits(u_input.b.x), firstLeadingBit(u_input.a)), 4294967295u << (~u_input.a % 32u)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -613f, -1760f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b * -333f), _wgslsmith_f_op_f32(-1801f - 512f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(155f + global0.x)))));
    var var_2 = ~(~(~vec4<u32>(11585u, var_1.a.x, 0u, 1u) >> (select(vec4<u32>(75593u, u_input.a, 12099u, 41922u), vec4<u32>(1u, var_1.a.x, var_1.c, 45804u), vec4<bool>(global1.x, true, global1.x, global1.x)) % vec4<u32>(32u))) | ~(~vec4<u32>(86630u, u_input.b.x, 1u, 1u)));
    let var_3 = global1.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1522f, arg_0.b, global0.x, global0.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, global0.x, global0.x, global0.x))))) * vec4<f32>(_wgslsmith_f_op_f32(func_3()), arg_0.b, -388f, arg_0.b));
    global1 = vec2<bool>(true, false);
    let var_0 = Struct_1(vec2<u32>(0u, reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, 0u), vec2<u32>(u_input.b.x, arg_0.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -339f)), global1.x)), 4294967295u);
    var var_1 = arg_0.c;
    var var_2 = arg_0;
    return Struct_1(abs(vec2<u32>(~47166u, var_2.c)), 538f, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.a.x, var_2.c, 50014u), vec3<u32>(u_input.b.x, 42747u, u_input.a)), vec3<u32>(12287u, var_0.c, 31684u)), 31171u, max(~arg_0.a.x, 1u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = firstLeadingBit(vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_mult_u32(0u, u_input.b.x), 18398u), 1u));
    let var_1 = _wgslsmith_dot_vec3_i32(max(arg_1.xwx, _wgslsmith_add_vec3_i32(reverseBits(arg_1.zxy), vec3<i32>(-u_input.c, -1i, arg_1.x))), _wgslsmith_add_vec3_i32(~(-arg_1.zxy), -countOneBits(vec3<i32>(-44566i, -41958i, u_input.c))));
    return func_2(Struct_1(~_wgslsmith_mult_vec2_u32(~u_input.d, firstTrailingBit(vec2<u32>(1u, 12731u))), 1609f, firstTrailingBit(u_input.a)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(-440f * arg_1.b)), _wgslsmith_div_f32(-117f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -270f), func_2(Struct_1(arg_2.wz, -901f, u_input.b.x)).b))), 407f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(699f, -460f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -110f, global0.x) + vec4<f32>(1693f, arg_0.b, arg_1.b, 1357f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, arg_1.b, arg_1.b, arg_0.b))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b), 170f, func_2(arg_1).b, _wgslsmith_f_op_f32(trunc(global0.x))))))), any(vec2<bool>(true, all(select(vec3<bool>(false, global1.x, false), vec3<bool>(global1.x, true, false), vec3<bool>(true, global1.x, true)))))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(201f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))))));
    global1 = select(!select(select(!vec2<bool>(false, global1.x), select(vec2<bool>(global1.x, true), vec2<bool>(true, false), vec2<bool>(global1.x, true)), select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), true)), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, global1.x), vec2<bool>(true, global1.x)), !vec2<bool>(global1.x, true), select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x), global1.x))), vec2<bool>(all(vec3<bool>(false, global1.x, global1.x)) | select(true, global1.x, global1.x), any(vec3<bool>(global1.x, global1.x, false))), true);
    global1 = !(!vec2<bool>(false, any(!vec2<bool>(global1.x, global1.x))));
    let var_1 = arg_1;
    return arg_1;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1085f, 1607f, -661f, -413f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, arg_0.x, 1444f, -887f), vec4<f32>(823f, 1422f, arg_1.b, arg_1.b))))), vec4<f32>(arg_0.x, -853f, _wgslsmith_f_op_f32(arg_1.b * global0.x), func_2(arg_1).b), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1572f, -269f, arg_1.b, global0.x) - vec4<f32>(-621f, -346f, arg_1.b, arg_0.x))))), !(u_input.d.x >= ~arg_1.c))));
    let var_0 = func_1(func_4(arg_1, func_2(arg_1), vec4<u32>(~1u, _wgslsmith_clamp_u32(u_input.b.x, select(arg_1.c, arg_1.a.x, false), 1u), u_input.b.x, select(_wgslsmith_add_u32(0u, 1u), 0u, true))), (select(abs(vec4<i32>(u_input.c, -2147483647i, 0i, 2147483647i)), firstTrailingBit(vec4<i32>(-25269i, u_input.c, 1i, u_input.c)), global1.x) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.b.x, arg_1.c), ~vec4<u32>(u_input.b.x, arg_1.a.x, 31681u, arg_1.c)) % vec4<u32>(32u))) | countOneBits(firstTrailingBit(-vec4<i32>(u_input.c, u_input.c, u_input.c, -42670i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1233f, global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.b)))) + global0.www), select(vec2<bool>(true, true), !(!vec2<bool>(global1.x, false)), false));
    var var_1 = vec4<u32>(23818u, func_2(var_0).c, reverseBits(~u_input.a), var_0.a.x);
    let var_2 = Struct_1(func_1(Struct_1(~_wgslsmith_mod_vec2_u32(arg_1.a, vec2<u32>(var_0.a.x, u_input.a)), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(select(var_0.b, 2109f, global1.x))), arg_1.a.x), firstLeadingBit(min(vec4<i32>(-2147483647i, u_input.c, -2147483647i, -93850i), _wgslsmith_add_vec4_i32(vec4<i32>(-27266i, u_input.c, u_input.c, -25125i), vec4<i32>(2147483647i, -2147483647i, -2147483647i, -19597i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)), vec2<bool>(true, true)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(488f + -1337f)))), _wgslsmith_clamp_u32(39977u, ~var_1.x, var_1.x));
    let var_3 = var_2;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<bool>(select(func_5(vec3<f32>(1777f, global0.x, _wgslsmith_f_op_f32(-global0.x)), func_4(func_1(Struct_1(vec2<u32>(u_input.a, 34404u), 152f, u_input.d.x), vec4<i32>(u_input.c, 2147483647i, 0i, 59029i), vec3<f32>(-1000f, global0.x, -2188f), vec2<bool>(global1.x, false)), Struct_1(u_input.d, global0.x, u_input.a), vec4<u32>(4294967295u, u_input.d.x, 0u, u_input.a))), true, func_5(vec3<f32>(global0.x, global0.x, global0.x), func_1(func_2(Struct_1(u_input.b, global0.x, u_input.b.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 13880i, u_input.c, 1i), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), _wgslsmith_f_op_vec3_f32(global0.zyy + vec3<f32>(-309f, -235f, 2067f)), !vec2<bool>(true, global1.x)))), ~u_input.d.x == _wgslsmith_div_u32(44005u, u_input.b.x));
    let var_0 = Struct_1(~u_input.b ^ firstTrailingBit(u_input.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -734f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x)))))), u_input.d.x);
    let var_1 = Struct_1(u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1298f + global0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))) - -1868f), 19059u);
    var var_2 = u_input.d.x;
    let var_3 = _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_1.a.x, var_0.a.x), select(98236u, var_1.c, true)) ^ func_1(var_1, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, -82011i, 4557i, u_input.c), vec4<i32>(1i, 2147483647i, 13451i, u_input.c)), global0.zwx, select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), global1.x)).c, 66645u), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_clamp_vec4_i32(~(~_wgslsmith_add_vec4_i32(vec4<i32>(-32101i, -7655i, -1i, u_input.c), vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.c))), _wgslsmith_mult_vec4_i32(vec4<i32>(-1239i, -54967i, -2147483647i, u_input.c) << (select(vec4<u32>(var_1.a.x, var_1.a.x, u_input.d.x, 0u), vec4<u32>(var_1.c, var_3, u_input.d.x, var_1.a.x), vec4<bool>(global1.x, false, true, true)) % vec4<u32>(32u)), vec4<i32>(u_input.c | 17405i, u_input.c, u_input.c | -2147483647i, u_input.c ^ 0i)), -_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.c, -2147483647i, u_input.c), vec4<i32>(u_input.c, 1i, u_input.c, 1i))), var_1.a.x);
}

