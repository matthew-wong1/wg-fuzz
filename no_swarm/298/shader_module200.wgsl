struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-373f, -542f);

var<private> global1: vec4<f32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = abs(~43698u);
    let var_1 = global1.zwz;
    global0 = var_1.yz;
    global1 = vec4<f32>(-1563f, global0.x, 351f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-821f, _wgslsmith_div_f32(var_1.x, 254f))) * -2547f)));
    var var_2 = ~var_0;
    return arg_0.b;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + -832f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))));
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(1u, ~(~17131u)) ^ select(firstTrailingBit(vec2<u32>(26896u, 105261u)), abs(min(vec2<u32>(8052u, 8093u), vec2<u32>(34765u, 14262u))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(arg_2, arg_0.b), vec2<bool>(arg_0.c, arg_0.b), arg_0.c), arg_0.b)), countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(0u, 10358u)), abs(vec2<u32>(21132u, 57389u))) >> (~max(vec2<u32>(1u, 39261u), vec2<u32>(0u, 70956u)) % vec2<u32>(32u))));
    var var_2 = false;
    let var_3 = -835f;
    let var_4 = Struct_1(~arg_1.x, any(vec4<bool>(select(any(vec3<bool>(true, arg_0.c, true)), !arg_2, arg_0.b), (var_1.x >> (1u % 32u)) >= _wgslsmith_dot_vec2_u32(vec2<u32>(40633u, var_1.x), vec2<u32>(var_1.x, 4294967295u)), true, false)), arg_0.b, vec3<i32>(min(arg_1.x >> (_wgslsmith_div_u32(var_1.x, 21504u) % 32u), countOneBits(max(arg_0.a, 2147483647i))), min(0i, ~(-9384i) & arg_1.x), ~(-2147483647i)));
    return ~_wgslsmith_add_i32(~(~(~arg_1.x)), firstTrailingBit(var_4.a));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec2<bool>) -> vec4<i32> {
    let var_0 = !(!(!vec4<bool>(true, !arg_2.x, func_2(Struct_1(arg_1, false, false, vec3<i32>(46297i, u_input.a, -2147483647i))), true)));
    let var_1 = Struct_1(arg_1 & arg_1, arg_2.x, arg_2.x, vec3<i32>(2347i, func_3(Struct_1(-2147483647i, any(vec3<bool>(var_0.x, false, var_0.x)), var_0.x, vec3<i32>(-21520i, -9210i, 3876i)), firstLeadingBit(max(vec3<i32>(arg_1, 13736i, -1i), vec3<i32>(arg_1, 1i, 46220i))), var_0.x), ~arg_1));
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(global1.xz, global1.xy), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(360f)), _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(244f + global0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(464f - global0.x))))));
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -936f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(global0.x + 595f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), global0.x))));
    global0 = _wgslsmith_f_op_vec2_f32(global1.ww + _wgslsmith_f_op_vec2_f32(step(global1.zy, global1.wy)));
    return -(~vec4<i32>(1i, countOneBits(-1i), 1i, 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1.x, 13766i, !vec2<bool>(true, _wgslsmith_f_op_f32(global0.x + global0.x) != _wgslsmith_f_op_f32(global0.x - -303f)));
    var var_1 = 1i;
    var var_2 = Struct_1(-16575i, 37427u != (select(~32085u, 1u, false) | 1u), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, false, true)), func_2(Struct_1(-1i, false, true, vec3<i32>(u_input.a, 12892i, var_0.x)))))), vec3<i32>(~var_0.x, func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.x, 2415f)), -376f), ~48979i, vec2<bool>(true, var_0.x != -2147483647i)).x, -2159i << (_wgslsmith_clamp_u32(min(41445u, 4294967295u), ~4294967295u, ~85172u) % 32u)));
    var var_3 = _wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(max(vec4<i32>(9164i, 662i, 48639i, u_input.a), firstTrailingBit(vec4<i32>(0i, -14873i, u_input.a, u_input.a))), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(u_input.a, -1i, u_input.a, 13193i)), ~vec4<i32>(var_0.x, -2147483647i, var_0.x, 6552i))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_add_i32(func_1(global1.x, u_input.a, vec2<bool>(var_2.b, true)).x, -2147483647i), _wgslsmith_dot_vec2_i32(var_0.yw, vec2<i32>(var_0.x, var_2.a)) << (1u % 32u)), 1i));
    var var_4 = vec4<bool>(var_2.b, var_2.c, true, false);
    var_2 = Struct_1(var_0.x, func_2(Struct_1(max(-var_0.x, ~(-64444i)), true, select(all(var_4.zx), true, true), ~_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, var_2.a, u_input.a), var_2.d))), true, -abs(func_1(2726f, i32(-1i) * -8284i, select(vec2<bool>(false, true), var_4.xw, var_4.x)).yxx));
    let var_5 = Struct_1(_wgslsmith_clamp_i32(func_1(global1.x, 1i, !vec2<bool>(var_4.x, false)).x >> (1u % 32u), var_0.x, ~var_2.d.x), true, all(var_4.zz), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(2861u, 4294967295u), vec2<u32>(0u, 24265u)) >> (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), vec2<u32>(74762u, 1u), select(~vec2<u32>(36866u, 4294967295u), vec2<u32>(1u, 1u), vec2<bool>(false, var_2.b))), vec2<u32>(~4294967295u, ~1u)), 1i, abs(~firstLeadingBit(vec3<u32>(13781u, 0u, 4294967295u))), ~vec2<i32>(_wgslsmith_dot_vec3_i32(var_5.d | var_2.d, var_5.d), 18188i));
}

