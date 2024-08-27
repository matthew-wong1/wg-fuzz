struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(71042u, 0u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<i32>) -> f32 {
    let var_0 = arg_2;
    var var_1 = false;
    global0 = vec2<u32>(~18345u, 11801u) ^ u_input.b;
    var var_2 = reverseBits(firstLeadingBit(vec3<i32>(_wgslsmith_clamp_i32(max(u_input.c, u_input.a), -1i << (1u % 32u), firstTrailingBit(arg_2.x)), var_0.x << (reverseBits(4294967295u) % 32u), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.c, 23355i), ~var_0.x))));
    var_2 = min(~select(_wgslsmith_div_vec3_i32(arg_2, firstLeadingBit(var_0)), vec3<i32>(~var_2.x, _wgslsmith_dot_vec2_i32(var_2.yy, var_2.yy), var_2.x), vec3<bool>(false, all(vec2<bool>(true, true)), true)), arg_2);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1000f, -416f))))))), -991f));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: i32) -> f32 {
    global0 = u_input.b;
    let var_0 = Struct_2(!arg_1, abs(_wgslsmith_dot_vec3_u32(arg_0.yzz, u_input.d)), !(!(!(!vec2<bool>(arg_1, arg_1)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1017f, -400f, -948f, -2041f), vec4<f32>(-800f, 1000f, -1343f, -125f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-148f, 275f, 1000f, -879f) + vec4<f32>(-1221f, -2300f, 1124f, 600f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(924f, 445f, 2161f, 315f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-871f, -362f, -278f, -502f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-551f + -1117f), _wgslsmith_f_op_f32(func_3(4294967295u, u_input.b.x, vec3<i32>(-2147483647i, 40763i, 33056i))), _wgslsmith_f_op_f32(max(-359f, 1750f)), _wgslsmith_f_op_f32(ceil(489f)))))));
    global0 = ~(~(~(_wgslsmith_sub_vec2_u32(arg_0.wz, arg_0.wy) & vec2<u32>(arg_0.x, 16666u))));
    let var_1 = !select(!select(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(true, false, arg_1), vec3<bool>(false, true, true)), vec3<bool>(true, arg_1, var_0.c.x), select(vec3<bool>(var_0.a, true, true), vec3<bool>(false, false, false), arg_1)), !(!select(vec3<bool>(false, false, arg_1), vec3<bool>(arg_1, var_0.a, arg_1), vec3<bool>(true, true, arg_1))), var_0.a);
    var var_2 = abs(max(arg_2, 1i));
    return var_0.d.x;
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1101f, 1695f, 491f), vec3<f32>(-1000f, 1000f, -232f)))))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(~vec4<u32>(12507u, global0.x, global0.x, 1u), true, u_input.a)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(128f, 703f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-114f, -280f, -338f) * vec3<f32>(1000f, -423f, 627f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 353f, -318f) - vec3<f32>(-925f, 404f, -315f)))));
    let var_1 = Struct_2(all(vec2<bool>(true, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false))))), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(46776u, global0.x), vec2<u32>(u_input.d.x, 16238u)), ~vec2<u32>(u_input.b.x, u_input.b.x)), ~firstLeadingBit(vec2<u32>(u_input.d.x, u_input.b.x))), ~u_input.b ^ vec2<u32>(65887u, 26733u)), !vec2<bool>(true, any(vec2<bool>(false, false))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1118f, var_0.x, var_0.x))))));
    let var_2 = any(!select(var_1.c, vec2<bool>(var_1.c.x & false, any(vec2<bool>(var_1.a, true))), !var_1.c.x));
    var var_3 = any(vec4<bool>(true, !select(select(var_2, var_2, var_2), true, u_input.c > u_input.a), true, all(!vec4<bool>(false, var_2, var_1.c.x, var_1.c.x))));
    var var_4 = _wgslsmith_div_vec3_u32(~u_input.d, ~countOneBits(vec3<u32>(~global0.x, ~var_1.b, abs(u_input.b.x))));
    return false;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = u_input.d;
    var var_1 = arg_0;
    let var_2 = vec3<bool>(arg_0.a, var_1.c.x, false);
    var_1 = Struct_2(select(var_2.x, any(vec3<bool>(true, all(vec3<bool>(true, arg_0.c.x, var_2.x)), true)), true), ~var_1.b, !var_2.yx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1343f - var_1.d.x)), var_1.d.x, var_1.d.x, _wgslsmith_f_op_f32(-arg_0.d.x))));
    global0 = vec2<u32>(u_input.d.x, ~arg_0.b >> (u_input.d.x % 32u));
    return Struct_2(func_1(), max(0u, ~(~0u)), select(!arg_0.c, select(arg_0.c, var_2.zy, var_1.c.x), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(ceil(var_1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(func_1(), 4294967295u, select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), any(vec2<bool>(true, true)) | true), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1029f, -302f, -322f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1427f, 677f, 1000f, 986f), vec4<f32>(2258f, 1158f, -1633f, 1096f))))))));
    global0 = u_input.d.xy;
    var var_1 = Struct_1(select(vec4<bool>(false, true, any(!vec2<bool>(var_0.a, false)), !any(vec3<bool>(false, var_0.a, var_0.a))), select(!vec4<bool>(var_0.a, true, var_0.c.x, true), !select(vec4<bool>(var_0.c.x, var_0.a, true, true), vec4<bool>(false, var_0.a, true, false), vec4<bool>(var_0.a, false, true, true)), vec4<bool>(!var_0.c.x, true, !var_0.a, var_0.c.x & var_0.a)), vec4<bool>(true, true, true, var_0.c.x && false)), _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a, -80199i), _wgslsmith_mod_vec2_i32(vec2<i32>(52691i, -11221i), _wgslsmith_add_vec2_i32(vec2<i32>(-50927i, 1i), vec2<i32>(u_input.a, -55285i)))) ^ abs(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -73421i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.a), vec2<i32>(1i, u_input.a), vec2<i32>(0i, -2147483647i)))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_0.d.x)))));
    var var_2 = _wgslsmith_div_f32(var_0.d.x, 203f);
    global0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.d.zz, u_input.d.yx | vec2<u32>(global0.x, var_0.b)), vec2<u32>(0u, _wgslsmith_mod_u32(var_0.b, u_input.b.x)), ~_wgslsmith_sub_vec2_u32(u_input.b, u_input.d.zz)) & ~firstTrailingBit(~u_input.b), u_input.d.yx, ~abs(vec2<u32>(4294967295u, var_0.b) & vec2<u32>(var_0.b, u_input.b.x)));
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(562f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(~0u, 1u, ~vec3<i32>(-13810i, -1i, var_1.b.x))))), _wgslsmith_f_op_f32(step(414f, _wgslsmith_f_op_f32(-587f - _wgslsmith_f_op_f32(var_0.d.x + var_1.d)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(_wgslsmith_mult_vec4_u32(vec4<u32>(7994u, 4294967295u, global0.x, u_input.b.x), vec4<u32>(global0.x, global0.x, 1u, 1u)), any(vec4<bool>(var_0.c.x, var_0.a, var_1.a.x, var_1.a.x)), -var_1.b.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), var_0.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c))))), var_1.c));
    var var_4 = func_4(func_4(func_4(Struct_2(var_3.x > -564f, max(var_0.b, u_input.b.x), !var_0.c, vec4<f32>(var_0.d.x, 1025f, -411f, var_1.d)))));
    let var_5 = Struct_1(select(vec4<bool>(any(var_4.c), (var_1.a.x & var_1.a.x) | (var_3.x > var_4.d.x), any(select(vec3<bool>(var_4.a, true, var_0.a), vec3<bool>(true, true, true), var_1.a.yzz)), !select(var_4.c.x, var_1.a.x, true)), select(select(!var_1.a, var_1.a, vec4<bool>(var_0.a, false, true, var_4.c.x)), vec4<bool>(var_4.c.x && var_4.a, all(var_1.a), false, any(var_1.a)), true), func_4(Struct_2(true | var_0.a, firstTrailingBit(21252u), !vec2<bool>(var_0.a, false), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-331f, -1127f, var_3.x, var_1.d))))).c.x), _wgslsmith_sub_vec2_i32(~(~vec2<i32>(16198i, -2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(-var_1.b.x, u_input.a), ~abs(var_1.b))), func_4(Struct_2(var_0.a, ~(11164u >> (1u % 32u)), vec2<bool>(u_input.c < u_input.a, true), vec4<f32>(1172f, _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(round(var_4.d.x)), -565f))).d.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-2301f, 509f))));
    let var_6 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(408f, global0.x, var_5.c);
}

