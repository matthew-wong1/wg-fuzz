struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    let var_0 = arg_0.xz;
    let var_1 = true;
    let var_2 = !select(vec3<bool>(true, true, true), select(select(!vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, true, var_1), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(var_1, false, true), vec3<bool>(true, var_1, var_1)), !vec3<bool>(var_1, var_1, true)), select(select(vec3<bool>(true, false, var_1), vec3<bool>(var_1, false, false), false), select(vec3<bool>(var_1, var_1, false), vec3<bool>(false, true, var_1), vec3<bool>(true, var_1, var_1)), true)), !(!vec3<bool>(var_1, true, var_1)));
    var var_3 = select(!vec3<bool>(!select(true, var_1, var_1), any(select(var_2.yy, var_2.yx, var_2.yz)), any(select(var_2.yx, var_2.zx, var_1))), vec3<bool>(select(select(!var_1, any(vec2<bool>(true, true)), var_1 & true), false, true), !(!(!var_1)), true), false);
    let var_4 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, all(var_2.zy))), arg_0.x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))))))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(sign(-1077f));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-379f, -427f, var_0) * _wgslsmith_f_op_vec3_f32(vec3<f32>(2053f, 1118f, -1000f) * vec3<f32>(var_0, var_0, -1391f)))))), true);
    var_1 = Struct_1(_wgslsmith_f_op_f32(var_1.a - 1655f), true);
    let var_2 = Struct_2(firstLeadingBit(select(vec3<i32>(-2147483647i, u_input.a, u_input.a), reverseBits(vec3<i32>(u_input.b, -79730i, u_input.b)), vec3<bool>(true, false, var_1.b)) << (countOneBits(max(vec3<u32>(76621u, 77628u, 27974u), vec3<u32>(41335u, 14297u, 4294967295u))) % vec3<u32>(32u))), Struct_1(var_0, true));
    var var_3 = 5061i;
    return var_2;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> bool {
    var var_0 = 801f;
    var var_1 = any(vec3<bool>(false, false, !(arg_0 >= -1000f) || any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true))));
    var var_2 = all(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, select(true, false, true))));
    var var_3 = func_2();
    var var_4 = false;
    return true;
}

fn func_4(arg_0: bool) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -274f);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(671f - -1082f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-256f)) + _wgslsmith_f_op_f32(round(-1007f))))) + 152f), -1108f);
    var var_1 = func_2().b;
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(var_1.a + -891f), !func_2().b.b && arg_0), max(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 71975u, 0u), vec3<u32>(0u, 1u, 4294967295u)), ~53720u, ~86177u, 1u), ~vec4<u32>(1u, 1u, 1u, 1u)), 1u), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(25538i, -2338i), abs(vec2<i32>(u_input.a, u_input.b))), u_input.a, ~(-23074i), _wgslsmith_div_i32(-2147483647i, ~2147483647i)), vec4<i32>(min(~(-2147483647i), min(38211i, -23688i)), ~(-u_input.a), reverseBits(0i), 1i)), Struct_2(-countOneBits(vec3<i32>(25057i, u_input.b, u_input.b) & vec3<i32>(u_input.b, 25025i, u_input.a)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-712f * var_1.a)), all(vec2<bool>(true, var_1.b)))));
    return firstTrailingBit(-select(vec2<i32>(i32(-1i) * -2147483647i, -14176i), _wgslsmith_mult_vec2_i32(~var_2.d.a.yy, var_2.c.zx), select(vec2<bool>(true, true), vec2<bool>(var_1.b, false), vec2<bool>(true, true))));
}

fn func_5(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = !(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false))));
    var_0 = !vec3<bool>(false, max(0i, func_2().a.x) >= 6772i, var_0.x);
    let var_1 = select(!vec4<bool>(true, !var_0.x, var_0.x, false), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), select(vec4<bool>(true, true, false, true), vec4<bool>(var_0.x, true, var_0.x, var_0.x), var_0.x), any(vec2<bool>(true, var_0.x))), vec4<bool>(!var_0.x, var_0.x, !var_0.x, var_0.x & var_0.x), var_0.x != !var_0.x), all(!var_0.zx)), any(vec3<bool>(!all(vec3<bool>(var_0.x, true, var_0.x)), !var_0.x || true, true)));
    var var_2 = abs(max(firstLeadingBit(~select(vec4<i32>(u_input.a, u_input.b, u_input.a, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, -11388i, arg_0.x), var_0.x)), vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(19681i, 1i, -25859i, u_input.b), vec4<i32>(-22314i, arg_0.x, -1i, arg_0.x))));
    var_2 = countOneBits(~_wgslsmith_div_vec4_i32(vec4<i32>(-26442i, 17951i, 0i, var_2.x), min(vec4<i32>(arg_0.x, u_input.b, 1i, 49750i), vec4<i32>(var_2.x, var_2.x, var_2.x, 2147483647i))) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(750f + 1f), true), ~(~(~3118u)), -_wgslsmith_div_vec4_i32(abs(-vec4<i32>(u_input.a, 2147483647i, var_2.x, 2147483647i)), vec4<i32>(2147483647i, 43406i, var_2.x, var_2.x) >> (vec4<u32>(1u, 0u, 1u, 0u) % vec4<u32>(32u))), Struct_2(-(-vec3<i32>(0i, 2147483647i, u_input.a) >> (vec3<u32>(0u, 4294967295u, 42657u) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(597f, -791f, -221f)))), var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1226f * 1084f), -225f)), reverseBits(select(vec3<i32>(19606i, u_input.b, u_input.a), vec3<i32>(u_input.b, 0i, u_input.a), vec3<bool>(true, false, false))))));
    var var_1 = abs(vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_mult_u32(var_0.b, var_0.b), var_0.b), var_0.b));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -350f), var_0.d.b.a, _wgslsmith_f_op_f32(-353f - _wgslsmith_f_op_f32(var_0.a.a * 1053f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1260f, var_0.a.a, -1447f))))));
    let var_3 = !vec3<bool>(!(!all(vec3<bool>(false, var_0.a.b, var_0.d.b.b))), true, true);
    let var_4 = var_3.yz;
    var_1 = firstLeadingBit(~(abs(vec2<u32>(var_0.b, 1u)) << (vec2<u32>(41104u, var_0.b) % vec2<u32>(32u)))) & ~vec2<u32>(~(var_0.b & var_0.b), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(~countOneBits(vec3<u32>(19466u, var_0.b, var_0.b) & vec3<u32>(119344u, var_1.x, var_1.x)), select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 1u, 95549u), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, var_0.b, 44586u), vec3<u32>(56645u, var_1.x, 4294967295u)), vec3<u32>(15523u, 6630u, var_0.b) << (vec3<u32>(0u, var_0.b, 4294967295u) % vec3<u32>(32u))), vec3<u32>(var_0.b, var_1.x, 75627u) << (vec3<u32>(4294967295u, 45457u, 1u) % vec3<u32>(32u)), var_4.x)), ~var_0.d.a.zx, var_2.x);
}

