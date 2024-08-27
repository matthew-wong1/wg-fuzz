struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1() -> f32 {
    var var_0 = vec4<f32>(1000f, -370f, 211f, 450f);
    return _wgslsmith_div_f32(-179f, var_0.x);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_4) -> i32 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-533f * -348f), _wgslsmith_div_f32(-205f, 954f), -370f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(361f)), 174f, -953f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1522f, -1722f, -453f)))), Struct_2(_wgslsmith_clamp_u32(arg_1.a >> (arg_1.a % 32u), 77380u, arg_1.a), abs(-arg_0.x), arg_0.x, Struct_1(0u, arg_1.b)), Struct_2(u_input.a, -7629i, -1i, arg_1), Struct_2(~max(countOneBits(4294967295u), arg_1.a), _wgslsmith_add_i32(~(-26744i), -(arg_0.x & -1i)), arg_0.x, arg_1), _wgslsmith_mod_i32(arg_0.x, arg_0.x));
    let var_1 = abs(~1u);
    var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_0.a + var_0.a)))) - var_0.a), var_0.b, var_0.c, var_0.c, -59502i);
    var_0 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-585f, 310f)), var_0.a.x)), 553f, _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-994f * var_0.a.x)))), Struct_2(1u | ~_wgslsmith_mult_u32(4294967295u, arg_2.a), i32(-1i) * -1i, var_0.b.c, arg_1), Struct_2(~4294967295u, var_0.d.c, -1i, arg_1), var_0.b, var_0.b.c);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)))), var_0.a.x), -793f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1622f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1111f * -1000f))) + _wgslsmith_f_op_f32(func_1()))));
    return var_0.e;
}

fn func_4(arg_0: Struct_5) -> vec3<i32> {
    let var_0 = ~(-(~abs(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 1i, 0i, arg_0.d.c), vec4<i32>(1i, -40358i, 22979i, -61903i)))));
    var var_1 = Struct_1(min(arg_0.b.a, reverseBits(~(~u_input.a))), arg_0.d.d.b);
    let var_2 = 2147483647i;
    let var_3 = !(!vec2<bool>(var_1.b.x, all(!vec4<bool>(true, false, var_1.b.x, false))));
    var_1 = arg_0.c.d;
    return var_0.yww;
}

fn func_2(arg_0: vec4<bool>) -> vec4<bool> {
    var var_0 = func_4(Struct_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1790f, 1784f, -733f), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-125f, 1451f, -387f), vec3<f32>(252f, 1000f, 439f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-161f, 667f, -1000f))), !arg_0.ywz)), Struct_2(_wgslsmith_clamp_u32(1u, abs(31566u), _wgslsmith_mod_u32(u_input.a, u_input.a)), func_3(vec3<i32>(-4450i, -3473i, 2147483647i), Struct_1(u_input.a, arg_0.xz), Struct_4(19355u)), 1427i, Struct_1(1u, select(arg_0.xy, vec2<bool>(false, true), vec2<bool>(arg_0.x, true)))), Struct_2(~36437u, -_wgslsmith_mod_i32(0i, -19178i), ~104731i, Struct_1(u_input.a, select(arg_0.xw, vec2<bool>(arg_0.x, true), arg_0.xz))), Struct_2(~countOneBits(4294967295u), countOneBits(i32(-1i) * -41475i), reverseBits(_wgslsmith_mod_i32(5446i, 78155i)), Struct_1(max(33268u, u_input.a), vec2<bool>(arg_0.x, arg_0.x))), -2467i));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 465f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-352f, -1758f, 147f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-954f, -215f, -1000f))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -246f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1())))));
    var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, -2147483647i, var_0.x), vec3<i32>(var_0.x, var_0.x, var_0.x)), vec3<i32>((i32(-1i) * -31867i) & countOneBits(var_0.x), var_0.x, var_0.x)), -(~max(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(var_0.x, var_0.x, 2147483647i))) | select(vec3<i32>(abs(-12483i), -var_0.x, -21096i), vec3<i32>(abs(var_0.x), -35267i, ~var_0.x), select(arg_0.xyx, !arg_0.xxz, vec3<bool>(true, false, true))));
    var var_3 = Struct_1(~_wgslsmith_div_u32(1u, ~abs(u_input.a)), !select(vec2<bool>(select(arg_0.x, arg_0.x, true), true), arg_0.wz, select(arg_0.zw, select(arg_0.ww, arg_0.wx, false), select(vec2<bool>(true, arg_0.x), vec2<bool>(false, false), arg_0.x))));
    return vec4<bool>(false, var_0.x > abs(-(~25961i)), any(vec3<bool>(true, true, true)), ~1u == u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(0u);
    let var_1 = ~_wgslsmith_sub_vec3_u32(reverseBits(~vec3<u32>(var_0.a, 1u, u_input.a)) >> (~select(vec3<u32>(u_input.a, 0u, var_0.a), vec3<u32>(u_input.a, 58044u, 68389u), true) % vec3<u32>(32u)), ~(~vec3<u32>(var_0.a, var_0.a, u_input.a)));
    var var_2 = vec4<bool>(true, true || all(vec2<bool>(false, 1u > u_input.a)), true, false);
    let var_3 = _wgslsmith_mult_u32(~countOneBits(~countOneBits(2497u)), var_0.a ^ max(4294967295u >> (var_0.a % 32u), ~_wgslsmith_clamp_u32(u_input.a, 1u, 0u)));
    var_2 = vec4<bool>(_wgslsmith_f_op_f32(func_1()) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2498f + -1031f)), var_2.x, var_2.x, !all(vec4<bool>(var_2.x && var_2.x, var_2.x, all(vec3<bool>(true, false, var_2.x)), select(var_2.x, true, false))));
    var_2 = select(select(!(!vec4<bool>(var_2.x, false, var_2.x, var_2.x)), select(select(select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(false, true, var_2.x, var_2.x), vec4<bool>(var_2.x, true, var_2.x, var_2.x)), select(vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(true, true, var_2.x, var_2.x)), true), vec4<bool>(!var_2.x, true, !var_2.x, var_1.x >= var_1.x), select(!var_2.x, false, true)), select(!(!vec4<bool>(false, var_2.x, false, var_2.x)), !select(vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(var_2.x, var_2.x, false, false), true), !(!vec4<bool>(var_2.x, var_2.x, false, var_2.x)))), func_2(vec4<bool>(true, !all(var_2.yw), !var_2.x, true)), !vec4<bool>(any(select(var_2.zww, vec3<bool>(true, false, var_2.x), var_2.zwx)), var_2.x, func_2(func_2(vec4<bool>(true, var_2.x, var_2.x, var_2.x))).x, false));
    var_2 = vec4<bool>(var_2.x, !(true & !(!var_2.x)), any(func_2(vec4<bool>(any(var_2.yx), 8502u > var_1.x, true, false))), true);
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(var_3, ~(~var_3)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), 152f)), _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_div_i32(~57025i, _wgslsmith_clamp_i32(-2147483647i, -35295i, 13307i))), abs(_wgslsmith_div_i32(-15884i, -1i << (1u % 32u)))));
}

