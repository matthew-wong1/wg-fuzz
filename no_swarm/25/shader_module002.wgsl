struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<i32>;

var<private> global2: vec4<f32> = vec4<f32>(-703f, -1000f, 1000f, 1091f);

var<private> global3: array<Struct_3, 12>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<bool> {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(182f, global2.x, 1082f, global2.x), vec4<f32>(-795f, 194f, -300f, global2.x), false)))), vec4<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, global2.x, global2.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-498f, global2.x, global2.x, -498f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1136f, global2.x, global2.x, global2.x) - vec4<f32>(-1864f, global2.x, global2.x, 536f)))))));
    var var_0 = select(~3940u, ~global4.a.x, all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true)) & all(vec4<bool>(true, true, true, true)));
    var var_1 = ~_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(4060i, global1.x), max(-950i, 1i), u_input.b), global4.b.zxy) >> (~abs(countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, 0u) >> (vec3<u32>(1u, u_input.a.x, 1u) % vec3<u32>(32u)))) % vec3<u32>(32u));
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(38533u, select(global4.c ^ ~49291u, 4974u, false), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x) | ~0u, 57100u), 0u), select(vec4<u32>(~(global4.c >> (u_input.a.x % 32u)), ~global4.c, 1u, 0u), ~(~vec4<u32>(18621u, 0u, global4.a.x, 4294967295u) ^ _wgslsmith_add_vec4_u32(vec4<u32>(global4.a.x, u_input.a.x, 1u, global4.a.x), vec4<u32>(global4.a.x, 0u, 0u, global4.a.x))), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), false))));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-406f, 552f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(739f, -580f)), global2.zx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(218f, 582f)) + vec2<f32>(global2.x, global2.x)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.x, 1000f))))), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, true, true)), 1i >= (global4.b.x << (var_2.x % 32u))))));
    return vec2<bool>(any(select(vec4<bool>(true, any(vec4<bool>(false, false, false, true)), false, var_3.x >= 1134f), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !any(vec3<bool>(false, any(vec2<bool>(false, true)), true)));
}

fn func_2() -> Struct_1 {
    var var_0 = func_3();
    let var_1 = ~25970u;
    global0 = !any(!select(vec3<bool>(var_0.x, var_0.x, false), select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, true), false), vec3<bool>(false, false, false)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, 784f, global2.x, -1349f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 2094f, -749f) - vec4<f32>(global2.x, global2.x, global2.x, -506f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 479f, global2.x, 1185f) - vec4<f32>(global2.x, global2.x, global2.x, -287f)))), vec4<f32>(829f, _wgslsmith_f_op_f32(-500f * -809f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-390f)) * _wgslsmith_f_op_f32(global2.x + -140f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global2.x)), 1000f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1203f, global2.x, 688f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, global2.x, -2063f, -858f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global2.x, global2.x, 134f) * vec4<f32>(global2.x, -1000f, global2.x, 664f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 589f, global2.x, -774f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(132f, 892f, 2525f, 131f), vec4<f32>(-198f, 1091f, 116f, global2.x), var_0.x))))));
    let var_3 = var_2.x;
    return Struct_1(u_input.a >> (firstLeadingBit(~abs(global4.a)) % vec2<u32>(32u)), _wgslsmith_sub_vec4_i32(~(-countOneBits(global4.b)), vec4<i32>(1i, ~1i, _wgslsmith_mult_i32(-1i, ~(-21022i)), -1i)), ~(~_wgslsmith_add_u32(~u_input.a.x, _wgslsmith_add_u32(global4.a.x, 0u))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_1 = func_2();
    global2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-243f, -601f)) * _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * 1000f) * -189f))), global2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-450f, -337f)))), arg_1.a.x);
    global1 = vec2<i32>(-arg_1.b.b.x, max(-1403i, max(~(var_1.b.x | arg_1.b.b.x), countOneBits(~2147483647i))));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_1.a)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(arg_1.a))))) + global2.xxz)));
    return Struct_1(_wgslsmith_div_vec2_u32(func_2().a, global4.a), abs(select(firstTrailingBit(var_1.b | global4.b), max(abs(var_1.b), global4.b | vec4<i32>(global1.x, global4.b.x, var_1.b.x, global4.b.x)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), arg_1.b.a.x);
}

fn func_1() -> vec2<f32> {
    global3 = array<Struct_3, 12>();
    var var_0 = func_4(global2.xw, Struct_2(_wgslsmith_f_op_vec3_f32(select(global2.wwz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1860f, -1000f, global2.x) - global2.ywx)), false)), func_2()));
    global0 = !all(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)));
    global0 = all(select(vec4<bool>(all(vec4<bool>(true, true, true, true)), func_3().x, false, !all(vec3<bool>(false, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, true)));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), global2.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-259f))))))));
    return global2.yy;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec2<i32>) -> u32 {
    let var_0 = 1i;
    global1 = vec2<i32>(0i, _wgslsmith_mult_i32(1i, reverseBits(1i)));
    var var_1 = any(vec3<bool>(func_3().x, true, true));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2.xxx, vec3<f32>(arg_1.x, global2.x, arg_0.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 461f, global2.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1933f, arg_1.x, 1560f)))))), Struct_1(u_input.a, global4.b, 0u));
    let var_3 = any(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), vec3<bool>(all(func_3()), all(vec3<bool>(false, true, false)), (u_input.b >= u_input.b) || true), true));
    return 4294967295u;
}

fn func_6(arg_0: u32, arg_1: i32) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(global4.b, global4.b), countOneBits(-2147483647i), 0i, 1i), countOneBits(global4.b << (vec4<u32>(10431u, 36304u, 39554u, 13031u) % vec4<u32>(32u)))) << (vec4<u32>(~u_input.a.x, ~select(global4.c, global4.a.x, true), _wgslsmith_sub_u32(arg_0, global4.a.x), u_input.a.x) % vec4<u32>(32u)), -countOneBits(-(~vec4<i32>(17062i, -19149i, u_input.b, -8920i))), vec4<i32>(countOneBits(select(countOneBits(-2147483647i), _wgslsmith_dot_vec4_i32(global4.b, vec4<i32>(arg_1, global1.x, global1.x, global4.b.x)), true)), _wgslsmith_add_i32(firstTrailingBit(-9496i), u_input.b), global4.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.b, -1i, global1.x), global4.b.zzz, vec3<bool>(true, false, false)), _wgslsmith_div_vec3_i32(global4.b.yyy, global4.b.yyw)), countOneBits(vec3<i32>(-2231i, -2147483647i, global1.x)))));
    global0 = false;
    var var_1 = Struct_3(_wgslsmith_dot_vec4_i32(-(_wgslsmith_clamp_vec4_i32(global4.b, global4.b, global4.b) >> (~vec4<u32>(1u, global4.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))), ~(global4.b >> (vec4<u32>(4294967295u, arg_0, 0u, u_input.a.x) % vec4<u32>(32u)))), ~arg_0, _wgslsmith_mult_u32(~global4.c | (_wgslsmith_add_u32(arg_0, u_input.a.x) << (~u_input.a.x % 32u)), ~34305u));
    let var_2 = vec2<u32>(4294967295u, _wgslsmith_mult_u32(1232u, _wgslsmith_div_u32(4294967295u, _wgslsmith_mod_u32(1u, var_1.c))));
    let var_3 = countOneBits(i32(-1i) * -2147483647i);
    return Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), global2.x, -1596f), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(777f, 1107f, global2.x), _wgslsmith_f_op_vec3_f32(-global2.wxy)), vec3<f32>(_wgslsmith_f_op_f32(max(1796f, global2.x)), _wgslsmith_f_op_f32(step(global2.x, global2.x)), global2.x)))), Struct_1(~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(42026u, 4294967295u), vec2<u32>(u_input.a.x, 0u)), abs(vec2<u32>(var_1.c, arg_0)), ~vec2<u32>(4294967295u, var_2.x)), select(~(~global4.b), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.a, var_1.a, -2147483647i, 38818i), func_2().b), any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.a.x;
    let var_1 = func_6(~func_5(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -340f, global2.x, global2.x) * vec4<f32>(global2.x, -1000f, -940f, -313f))), _wgslsmith_add_vec2_i32(vec2<i32>(global1.x, global1.x), vec2<i32>(global4.b.x, global4.b.x)) >> ((u_input.a | vec2<u32>(u_input.a.x, 5540u)) % vec2<u32>(32u))), min(_wgslsmith_mult_i32(~global4.b.x & ~global1.x, global4.b.x), global4.b.x ^ 2147483647i));
    var var_2 = vec3<u32>(firstTrailingBit(firstLeadingBit(max(~107736u, ~109023u))), ~(~_wgslsmith_sub_u32(40791u, u_input.a.x)), ~61363u);
    var_0 = 0u;
    var_0 = _wgslsmith_add_u32(var_1.b.c, 35765u);
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 4294967295u) ^ var_2.zx, abs(var_2.xx)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global4.a.x, 0u, 53451u) << (vec4<u32>(var_1.b.c, u_input.a.x, var_1.b.a.x, var_1.b.c) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(var_1.b.a.x, global4.c, 28530u, 73654u))), false), var_1.b.c ^ ~_wgslsmith_mod_u32(global4.c, global4.c), _wgslsmith_div_u32(firstLeadingBit(abs(global4.c)), _wgslsmith_add_u32(2286u, var_2.x ^ u_input.a.x)), 16801u), vec4<i32>(u_input.b, global1.x, ~global4.b.x, -var_1.b.b.x ^ u_input.b) ^ select(~vec4<i32>(global1.x, 1i, var_1.b.b.x, 2147483647i), vec4<i32>(_wgslsmith_dot_vec4_i32(var_1.b.b, global4.b), _wgslsmith_add_i32(global1.x, global1.x), _wgslsmith_clamp_i32(2147483647i, 37742i, -3655i), global1.x), vec4<bool>(all(vec3<bool>(true, false, true)), true, false, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_1.a.x)))), vec4<i32>(var_1.b.b.x, func_2().b.x, var_1.b.b.x, var_1.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))) + _wgslsmith_div_f32(-1354f, -2495f))));
}

