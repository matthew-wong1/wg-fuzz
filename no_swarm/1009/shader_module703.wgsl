struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, 8747i);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1717f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b.x, arg_0.b.x, arg_0.c.x)) + _wgslsmith_f_op_f32(-arg_0.b.x)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-575f))))), arg_0.b.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.b, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.b.x, arg_0.b.x, -1445f), vec3<f32>(arg_0.b.x, arg_0.b.x, 107f))), _wgslsmith_f_op_vec3_f32(min(arg_0.b, vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x))))))));
    global0 = vec2<i32>(firstTrailingBit(u_input.b), _wgslsmith_add_i32(global0.x, ~(-u_input.b)));
    global0 = ~u_input.d;
    var var_1 = arg_0;
    let var_2 = -_wgslsmith_sub_i32(arg_1.x, -(~(-1i)));
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> vec2<i32> {
    var var_0 = Struct_1(true, arg_0.b, !(!vec3<bool>(false, true, arg_1.x < arg_0.b.x)));
    var var_1 = Struct_1(any(!select(vec4<bool>(true, var_0.a, false, arg_0.c.x), select(vec4<bool>(true, arg_0.a, var_0.a, true), vec4<bool>(true, arg_0.a, false, false), vec4<bool>(var_0.c.x, arg_0.c.x, false, false)), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(178f - 429f)), var_0.b.x, 1f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(arg_0.b)), _wgslsmith_f_op_vec3_f32(arg_1 * vec3<f32>(-447f, -1000f, var_0.b.x)))))), select(!(!(!vec3<bool>(arg_0.c.x, var_0.c.x, false))), arg_0.c, arg_0.a));
    let var_2 = Struct_1(false, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.x)))), select(vec3<bool>(any(var_1.c), true && arg_0.a, true), var_0.c, true));
    var var_3 = ~reverseBits(select(vec4<i32>(_wgslsmith_sub_i32(u_input.b, u_input.d.x), firstLeadingBit(global0.x), countOneBits(-51067i), u_input.d.x | 7815i), ~(vec4<i32>(global0.x, u_input.b, u_input.b, 12256i) ^ vec4<i32>(global0.x, u_input.b, global0.x, 0i)), select(vec4<bool>(var_2.c.x, arg_0.c.x, true, arg_0.a), select(vec4<bool>(var_2.a, var_2.a, arg_0.c.x, true), vec4<bool>(false, var_2.a, false, true), false), !vec4<bool>(true, var_1.a, false, true))));
    var var_4 = vec4<u32>(1u >> (~_wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, u_input.a), 10990u) % 32u), 1u, u_input.a, 0u);
    return var_3.zz;
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    global0 = _wgslsmith_clamp_vec2_i32(func_4(Struct_1(func_3(arg_0, vec4<i32>(global0.x, -1i, u_input.b, u_input.d.x) >> (vec4<u32>(u_input.a, 54455u, u_input.c.x, 51451u) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.b, vec3<f32>(-1287f, -322f, arg_0.b.x), false)) - _wgslsmith_f_op_vec3_f32(-arg_0.b)), arg_0.c), vec3<f32>(arg_0.b.x, arg_0.b.x, 1614f)), u_input.d, u_input.d);
    global0 = ~_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -2147483647i), u_input.d), -firstLeadingBit(u_input.d), vec2<i32>(select(global0.x, u_input.d.x, false), _wgslsmith_dot_vec4_i32(vec4<i32>(9023i, 49448i, 0i, global0.x), vec4<i32>(-67799i, global0.x, -2147483647i, global0.x)))), ~vec2<i32>(global0.x, -1i));
    var var_0 = arg_0.c.xx;
    var var_1 = firstTrailingBit(~(~max(firstLeadingBit(vec4<u32>(27026u, 1u, 4294967295u, 59146u)), ~vec4<u32>(u_input.c.x, u_input.a, u_input.c.x, u_input.a))));
    let var_2 = arg_0.c.zz;
    return select(arg_0.c.xx, arg_0.c.zy, 140f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(116f, arg_0.b.x)) * _wgslsmith_f_op_f32(-arg_0.b.x)) * arg_0.b.x));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> vec3<f32> {
    global0 = vec2<i32>(arg_1.x, _wgslsmith_mult_i32(-2147483647i, arg_0 ^ 30297i));
    var var_0 = 70549u;
    let var_1 = !(!vec4<bool>(!any(vec4<bool>(true, true, false, false)), true, all(func_2(Struct_1(true, vec3<f32>(-354f, -1000f, 1000f), vec3<bool>(false, false, true)))), func_2(Struct_1(false, vec3<f32>(-977f, -447f, 469f), vec3<bool>(true, false, false))).x && true));
    let var_2 = vec4<u32>(u_input.c.x, firstTrailingBit(4294967295u), u_input.c.x, ~(~u_input.c.x));
    var var_3 = Struct_1(true && any(!select(var_1.wxw, var_1.wyz, var_1.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1332f, 1000f), -614f, -592f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(425f, 369f, -508f), vec3<f32>(719f, 780f, -1000f))))), var_1.yww)), select(var_1.xzy, !vec3<bool>(true, false, var_1.x), var_1.wzx));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.b) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.b.x, var_3.b.x, -185f)))))));
}

fn func_5(arg_0: i32, arg_1: vec3<f32>) -> i32 {
    var var_0 = Struct_1(any(vec3<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), true)), true, (arg_1.x > 1487f) || true)), vec3<f32>(695f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_f_op_f32(max(1614f, arg_1.x))) - 304f), _wgslsmith_f_op_f32(arg_1.x * -1490f)), select(vec3<bool>(false, min(64855u, 59214u) < ~u_input.c.x, true), select(vec3<bool>(any(vec4<bool>(true, false, false, false)), any(vec3<bool>(true, false, false)), false), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(u_input.b, vec2<i32>(0i, -2147483647i))) * _wgslsmith_f_op_vec3_f32(-var_0.b)) * _wgslsmith_div_vec3_f32(arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, var_0.b.x, -850f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b - vec3<f32>(var_0.b.x, 931f, 542f)), _wgslsmith_f_op_vec3_f32(arg_1 * vec3<f32>(arg_1.x, -236f, -239f))) - vec3<f32>(_wgslsmith_f_op_f32(abs(568f)), _wgslsmith_f_op_f32(-arg_1.x), var_0.b.x)))), select(var_0.c, var_0.c, var_0.c.x));
    var var_1 = Struct_1(!var_0.a || true, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b.x, arg_1.x, arg_1.x)))))), var_0.c);
    let var_2 = ~(-(~abs(vec3<i32>(-23090i, arg_0, arg_0))));
    let var_3 = _wgslsmith_add_vec3_i32(~(-vec3<i32>(_wgslsmith_add_i32(arg_0, -2147483647i), reverseBits(4657i), _wgslsmith_sub_i32(var_2.x, -2147483647i))), _wgslsmith_div_vec3_i32(select(~var_2 << (select(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, 41057u), vec3<bool>(false, true, var_1.c.x)) % vec3<u32>(32u)), -vec3<i32>(1868i, var_2.x, -49354i), all(select(vec4<bool>(var_1.c.x, var_0.a, true, var_1.a), vec4<bool>(true, var_1.c.x, var_1.c.x, var_1.a), var_0.c.x))), _wgslsmith_mult_vec3_i32(-vec3<i32>(arg_0, -2147483647i, var_2.x), var_2)));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(0i);
    global0 = vec2<i32>(u_input.d.x, func_5(firstLeadingBit(var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(global0.x ^ 29528i, ~u_input.d)))));
    global0 = -(~u_input.d);
    global0 = select(~vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(-1i, 0i)), func_5(var_0, vec3<f32>(1394f, 166f, 1214f)) ^ (-2147483647i & global0.x)), abs(u_input.d), true);
    let var_1 = !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, select(false, true, true)), vec3<bool>(true, true, any(vec4<bool>(false, true, false, false))), vec3<bool>(true, true, true)), vec3<bool>(true, false, all(select(vec2<bool>(false, true), vec2<bool>(false, false), true))));
    let var_2 = select(!select(var_1, var_1, var_1.x), select(vec3<bool>(all(vec4<bool>(var_1.x, true, true, false)), true, true), select(select(select(vec3<bool>(true, var_1.x, true), vec3<bool>(false, var_1.x, false), true), var_1, vec3<bool>(true, false, var_1.x)), var_1, !var_1), all(select(select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, true, false), var_1.x), !vec4<bool>(true, true, var_1.x, true), !var_1.x))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2473f) - _wgslsmith_f_op_f32(295f + 710f))) - -1512f), vec3<u32>(max(_wgslsmith_mod_u32(_wgslsmith_div_u32(62006u, u_input.a), firstTrailingBit(1u)), u_input.a), firstTrailingBit(u_input.a), reverseBits(u_input.a)), 173f, var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1412f, 1374f, -1872f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(357f, -287f, false)), 1f, 2144f))));
}

