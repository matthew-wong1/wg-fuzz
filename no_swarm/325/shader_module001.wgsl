struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(-28137i, 20804i), 0u, vec3<i32>(-55141i, -1i, 2147483647i), vec4<i32>(-29929i, -11192i, 10693i, 56867i), vec2<f32>(-2767f, 1438f)), 0u, Struct_1(vec2<i32>(-10778i, -18677i), 3582u, vec3<i32>(0i, -54810i, 2147483647i), vec4<i32>(1i, 38087i, i32(-2147483648), 2101i), vec2<f32>(-988f, -2373f)), Struct_1(vec2<i32>(-77173i, -18546i), 1u, vec3<i32>(-74672i, 2844i, 0i), vec4<i32>(-1i, -6871i, -20719i, -1i), vec2<f32>(1012f, 1000f)), vec3<bool>(true, false, false));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<i32>(-22144i, 32180i), 4294967295u, vec3<i32>(4443i, i32(-2147483648), 2147483647i), vec4<i32>(i32(-2147483648), 44725i, -769i, 0i), vec2<f32>(312f, 1709f)), 4294967295u, Struct_1(vec2<i32>(6317i, -13381i), 0u, vec3<i32>(2370i, -10048i, 2147483647i), vec4<i32>(i32(-2147483648), -22989i, 1i, i32(-2147483648)), vec2<f32>(1000f, -908f)), Struct_1(vec2<i32>(-1802i, 0i), 1u, vec3<i32>(0i, 0i, -4159i), vec4<i32>(-1i, 17370i, i32(-2147483648), 45077i), vec2<f32>(2233f, -1000f)), vec3<bool>(true, true, false));

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = !vec3<bool>(select(true, all(select(vec2<bool>(arg_1.e.x, true), global1.e.yy, global1.e.yx)), true & !global0.e.x), all(!vec4<bool>(true, false, true, arg_1.e.x)), true);
    var var_1 = Struct_1(vec2<i32>(global1.c.c.x, u_input.a.x), 0u, _wgslsmith_mult_vec3_i32(~vec3<i32>(42109i, u_input.c, global1.a.d.x) & -(global0.a.d.yyx | arg_2.c), _wgslsmith_div_vec3_i32(vec3<i32>(abs(global1.a.c.x), 24473i, 1i), reverseBits(min(global0.d.c, vec3<i32>(1i, arg_1.d.d.x, 702i))))), _wgslsmith_sub_vec4_i32(firstTrailingBit(~select(vec4<i32>(1i, global0.a.d.x, arg_1.a.c.x, -1i), global0.a.d, arg_1.e.x)), ~vec4<i32>(~(-1i), u_input.c, ~2629i, countOneBits(arg_1.c.d.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(618f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.e.x * -260f)))));
    let var_2 = ~(~(~vec3<u32>(global0.a.b, _wgslsmith_mult_u32(1u, 14880u), abs(arg_1.d.b))));
    let var_3 = vec2<f32>(arg_2.e.x, _wgslsmith_f_op_f32(round(-1000f)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.e.x), global1.c.e.x)), -338f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1374f)), var_1.e.x)));
    return u_input.a;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = true;
    global0 = Struct_2(global1.d, u_input.b, Struct_1(-(~vec2<i32>(global0.d.a.x, arg_0.x)) & ((vec2<i32>(u_input.d, -1i) & vec2<i32>(-2147483647i, arg_0.x)) & func_3(var_0, Struct_2(global1.a, u_input.b, Struct_1(u_input.a, 1u, global1.d.d.yzw, vec4<i32>(u_input.d, -33970i, -2147483647i, -2147483647i), global1.d.e), Struct_1(vec2<i32>(u_input.c, global1.d.a.x), 60816u, vec3<i32>(u_input.c, u_input.d, u_input.d), vec4<i32>(global0.c.d.x, 1i, 33984i, -1442i), vec2<f32>(136f, global0.c.e.x)), vec3<bool>(false, true, global0.e.x)), global0.c)), global1.d.b, vec3<i32>(1i, -1i, 1i) ^ global1.a.c, global0.c.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.c.e.x, global0.d.e.x), global1.c.e))), global1.a.e)), Struct_1(global0.d.d.xy, ~_wgslsmith_sub_u32(~global0.a.b, 4294967295u), select(global0.a.c, -global1.d.c, global1.e.x), ~vec4<i32>(min(-60489i, -2147483647i), ~global0.a.d.x, _wgslsmith_div_i32(arg_0.x, arg_0.x), ~(-43069i)), global0.a.e), vec3<bool>(!var_0, -660f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global1.d.e.x) - _wgslsmith_f_op_f32(exp2(global0.a.e.x))), any(select(select(global0.e, global0.e, false), vec3<bool>(global1.e.x, global1.e.x, var_0), !vec3<bool>(true, global0.e.x, true)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.e.x, _wgslsmith_f_op_f32(global0.a.e.x + global0.c.e.x), 1f) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-812f, global1.d.e.x, 1087f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.e.x, -1941f, 1342f))))))));
    var var_2 = Struct_2(Struct_1(vec2<i32>(min(-2147483647i, global1.a.d.x), -30832i), _wgslsmith_sub_u32(u_input.b, ~(~15537u)), select(vec3<i32>(42275i, u_input.d | -1i, global1.d.c.x), vec3<i32>(global0.a.c.x, firstTrailingBit(7702i), -9587i), global0.e.x), ~vec4<i32>(-2147483647i, -36287i, global1.c.d.x, global1.d.a.x) ^ global0.a.d, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(933f, _wgslsmith_f_op_f32(trunc(var_1.x)))))), ~(~(reverseBits(global0.c.b) & 1u)), Struct_1(select(_wgslsmith_clamp_vec2_i32(global1.a.a, func_3(global0.e.x, Struct_2(Struct_1(global1.a.c.xy, 75360u, vec3<i32>(u_input.c, -2147483647i, global1.c.c.x), global1.d.d, global0.a.e), 4294967295u, Struct_1(arg_0, u_input.b, vec3<i32>(arg_0.x, u_input.d, global0.c.c.x), vec4<i32>(u_input.c, -2147483647i, -2147483647i, arg_0.x), global1.d.e), global1.c, global1.e), Struct_1(u_input.a, u_input.b, global0.c.d.wzw, global0.c.d, vec2<f32>(-757f, 666f))), ~global0.c.c.yz), select(vec2<i32>(arg_0.x, 58162i), global0.d.a, global0.e.zx), vec2<bool>(true, global0.e.x)), global1.d.b, select(vec3<i32>(global1.a.c.x, global1.a.a.x, u_input.c), abs(global1.a.d.ywz), vec3<bool>(true, true, true)) ^ countOneBits(global1.d.d.yxw), vec4<i32>(-abs(global0.a.d.x), -(i32(-1i) * -16468i), ~countOneBits(u_input.c), global0.a.d.x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c.e) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1143f, -272f) + global0.a.e))))), global1.a, vec3<bool>(!(!global0.e.x), select(~global1.a.b < (global1.a.b | u_input.b), true, all(global1.e)), true));
    var var_3 = Struct_2(global1.d, u_input.b, global0.a, var_2.c, global1.e);
    return Struct_2(Struct_1(~(-var_3.a.a), select(~var_3.c.b, global0.a.b & 35799u, true || global0.e.x) & 32356u, -_wgslsmith_add_vec3_i32(abs(var_3.d.d.zwz), abs(vec3<i32>(arg_0.x, var_2.c.d.x, -15431i))), countOneBits(-vec4<i32>(57425i, var_3.c.d.x, -34550i, -2147483647i)), global0.c.e), 17812u, var_2.a, Struct_1(arg_0, abs(global1.d.b), var_2.a.d.ywz, global1.d.d ^ reverseBits(var_2.d.d), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(245f, global1.a.e.x), var_3.a.e))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2409f, var_1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-932f, -560f)), true))))), vec3<bool>(!(!global1.e.x), false, global1.e.x));
}

fn func_4(arg_0: Struct_2) -> bool {
    global2 = ~abs(~(~17416u));
    return global0.e.x;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = all(vec4<bool>(!global1.e.x, func_4(func_2(global1.d.d.wz)), true & any(func_2(vec2<i32>(global1.a.a.x, -10339i)).e), _wgslsmith_mod_i32(-25787i, -5090i | u_input.d) <= -_wgslsmith_clamp_i32(15566i, global0.a.a.x, 10829i)));
    var var_1 = global1.c.a.x >> (abs(arg_1.x) % 32u);
    let var_2 = Struct_1(u_input.a, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(39619u, 34006u, arg_2.b) >> (vec3<u32>(4294967295u, 4294967295u, global0.b) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(~(~vec3<u32>(26579u, 41924u, 53948u)), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(global0.c.b, 0u, global0.a.b)), ~vec3<u32>(u_input.b, arg_2.b, 0u)))), vec3<i32>(-1i, -51876i, -firstTrailingBit(global1.c.c.x) >> (arg_2.b % 32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, -(i32(-1i) * -36626i), 10288i, -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.d.a.x, min(global1.d.c.x, -2147483647i), global1.a.c.x >> (arg_2.b % 32u), global0.c.c.x >> (11634u % 32u)), _wgslsmith_add_vec4_i32(min(arg_2.d, vec4<i32>(-2147483647i, u_input.c, 33839i, -2147483647i)), select(global0.d.d, arg_2.d, global0.e.x)), (vec4<i32>(13297i, 0i, global0.a.d.x, 1i) << (vec4<u32>(arg_1.x, 21162u, 1833u, global1.c.b) % vec4<u32>(32u))) >> (firstTrailingBit(vec4<u32>(global0.a.b, global0.c.b, 41463u, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-11102i, global1.a.c.x, global0.d.c.x, 1902i), arg_2.d, vec4<i32>(arg_2.a.x, global1.c.c.x, arg_2.a.x, global1.c.c.x) | vec4<i32>(56969i, global0.d.c.x, -16699i, arg_2.a.x)), vec4<i32>(_wgslsmith_sub_i32(global0.a.d.x, -1774i), -2147483647i, global1.c.a.x, global0.d.a.x), arg_2.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.e + global1.a.e), _wgslsmith_f_op_vec2_f32(global1.d.e - global1.c.e)))));
    let var_3 = func_2(vec2<i32>(0i, -18560i));
    let var_4 = _wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.b, 64469u, countOneBits(var_2.b), ~(~12602u)), ~(~vec4<u32>(45381u, global0.b, 0u, 4294967295u) ^ reverseBits(vec4<u32>(arg_1.x, 4294967295u, u_input.b, 327u))));
    return global0.e;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec4<bool>) -> Struct_2 {
    return Struct_2(global1.c, 48471u ^ global0.d.b, Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(global0.a.a.x, 2147483647i), u_input.a), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-29791i, -33106i), global1.a.a.x)), arg_0.x, firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(global0.d.c.x, 4468i, global0.c.a.x), vec3<i32>(-18645i, global0.a.c.x, 2147483647i))), _wgslsmith_div_vec4_i32(global1.a.d, global1.a.d), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.e.x))))), func_2(_wgslsmith_mult_vec2_i32(u_input.a, u_input.a | ~vec2<i32>(-2147483647i, 74605i))).a, global0.e);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(select(_wgslsmith_add_vec2_u32(~vec2<u32>(11005u, 52719u), vec2<u32>(1u, 1u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, 31532u), _wgslsmith_div_vec2_u32(vec2<u32>(global0.a.b, 56066u), vec2<u32>(global1.c.b, 5227u))), select(vec2<bool>(false, false), vec2<bool>(true, global1.e.x), global1.e.x)) | (_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(global1.b, 4294967295u)) & vec2<u32>(firstLeadingBit(global1.a.b), global0.d.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-503f, _wgslsmith_f_op_f32(-140f * 951f), -1789f, -1327f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-681f, global1.d.e.x, 230f, global1.c.e.x) * vec4<f32>(global1.c.e.x, -819f, global1.d.e.x, global1.a.e.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.e.x, -879f, global1.a.e.x, global0.c.e.x))))), !vec4<bool>(true, any(func_1(global1.c.b, vec2<u32>(0u, 1u), Struct_1(global1.c.a, u_input.b, vec3<i32>(global0.d.a.x, -70881i, global0.d.c.x), vec4<i32>(0i, u_input.d, global1.c.a.x, global0.a.c.x), global0.d.e))), all(global0.e.zx), any(vec2<bool>(false, true))));
    let var_0 = func_5(vec2<u32>(_wgslsmith_mult_u32(func_5(vec2<u32>(global0.d.b, 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(161f, 1306f, global1.c.e.x, 1304f) * vec4<f32>(1612f, -319f, 372f, 439f)), !vec4<bool>(global1.e.x, false, global0.e.x, true)).b, max(global1.d.b, 30369u) << (~0u % 32u)), global1.c.b), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-587f)), global1.a.e.x), 1000f, -1274f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-434f, global1.a.e.x)))))), vec4<bool>(global0.e.x, all(vec3<bool>(true, any(vec2<bool>(global0.e.x, global1.e.x)), true)), !(!global1.e.x) != true, ~u_input.b >= (1u << (~u_input.b % 32u))));
    let var_1 = var_0.d;
    let var_2 = var_0.d;
    var var_3 = true;
    var var_4 = ~96429u;
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1049f, global0.d.e.x))) - var_0.c.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -228f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_f_op_f32(sign(-390f)))))) * var_0.a.e.x);
    var var_6 = func_5(_wgslsmith_div_vec2_u32(vec2<u32>(global0.a.b, min(_wgslsmith_div_u32(var_0.d.b, var_1.b), var_1.b)), vec2<u32>(1u, _wgslsmith_div_u32(21537u, global1.a.b) | var_2.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(851f, -141f, var_0.d.e.x, 567f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1011f, 574f, -888f, var_2.e.x) - vec4<f32>(var_5, var_0.a.e.x, 272f, -897f))))), select(!(!select(vec4<bool>(var_0.e.x, global0.e.x, global1.e.x, global0.e.x), vec4<bool>(global1.e.x, true, global0.e.x, false), vec4<bool>(var_0.e.x, var_0.e.x, global1.e.x, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.e.x, global1.e.x, true, false), select(vec4<bool>(true, global1.e.x, false, var_0.e.x), vec4<bool>(global0.e.x, var_0.e.x, true, true), vec4<bool>(var_0.e.x, false, true, false)), !vec4<bool>(false, global1.e.x, global0.e.x, false)), !func_4(var_0)), all(!select(vec4<bool>(false, false, global0.e.x, global0.e.x), vec4<bool>(true, global0.e.x, false, true), false))));
    let var_7 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_6.c.b, u_input.b, ~4294967295u, 68050u), firstLeadingBit(max(vec4<u32>(global1.d.b, 43618u, var_2.b, global1.a.b), vec4<u32>(var_0.a.b, 17704u, global0.c.b, var_0.c.b))), ~vec4<u32>(4294967295u, 0u, u_input.b, 4294967295u)), _wgslsmith_mult_u32(~abs(var_1.b ^ 58835u), var_7.d.b), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.e.x, global0.a.e.x, 966f, 541f)))))))));
}

