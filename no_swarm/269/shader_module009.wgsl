struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: i32) -> u32 {
    let var_0 = firstTrailingBit(u_input.a) & _wgslsmith_mod_i32(-(~(~arg_2.x)), ~abs(_wgslsmith_div_i32(arg_3, 3271i)));
    return ~(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.e, 4294967295u), abs(arg_1.a), arg_1.a)) | _wgslsmith_add_u32(_wgslsmith_add_u32(0u, ~arg_1.a), 1u);
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = ~(~1i);
    var var_1 = ~u_input.e;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(187f - 980f) + _wgslsmith_f_op_f32(1241f * -642f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -105f)))), -986f);
    let var_3 = Struct_1(func_3(-1754f, Struct_1(0u, var_2.x, arg_0.x, select(vec4<bool>(arg_0.x, true, false, true), vec4<bool>(arg_0.x, true, false, false), vec4<bool>(false, true, arg_0.x, false))), vec3<i32>(-u_input.a, 15082i, i32(-1i) * -17191i), ~50357i) >> (~_wgslsmith_sub_u32(4294967295u, 1u) % 32u), 540f, !(!arg_0.x), select(vec4<bool>(select(u_input.a >= u_input.b.x, !arg_0.x, true), all(vec3<bool>(true, true, true)), arg_0.x, all(vec3<bool>(arg_0.x, arg_0.x, false))), vec4<bool>(49257u > select(u_input.e, 81656u, arg_0.x), true, arg_0.x, arg_0.x), !all(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x))));
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-675f + 1382f), var_3.b))), vec2<f32>(_wgslsmith_f_op_f32(var_3.b * _wgslsmith_f_op_f32(-var_3.b)), var_3.b));
    return Struct_2(var_3, vec3<i32>(_wgslsmith_clamp_i32(firstLeadingBit(35263i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a, 33323u), vec2<u32>(u_input.e, 26546u)) % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, -2147483647i, -2147483647i, -5075i), ~vec4<i32>(u_input.b.x, u_input.b.x, -8371i, -1i)), firstTrailingBit(u_input.b.x)), abs(firstLeadingBit(-55538i) << ((24784u ^ u_input.c) % 32u)), 30363i));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.b, -u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(-reverseBits(-30418i), -5158i, u_input.a, _wgslsmith_mult_i32(~0i, _wgslsmith_sub_i32(u_input.a, u_input.a))), vec4<i32>(0i, 4021i, u_input.b.x, (i32(-1i) * -12799i) & firstTrailingBit(1i))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1160f + -354f), arg_1.b)), _wgslsmith_div_f32(arg_2.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -599f) + 2435f)));
}

fn func_1() -> vec3<bool> {
    var var_0 = any(vec2<bool>(countOneBits(firstTrailingBit(u_input.d)) > u_input.c, _wgslsmith_f_op_f32(func_4(~vec2<u32>(42717u, u_input.c), Struct_1(u_input.e, -598f, false, vec4<bool>(false, false, true, false)), func_2(vec2<bool>(false, false)), ~vec2<u32>(4294967295u, 74323u))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-916f - 1000f) * _wgslsmith_f_op_f32(select(671f, -1724f, false)))));
    var_0 = !(-_wgslsmith_add_i32(1240i, 51097i) > min(_wgslsmith_mod_i32(abs(u_input.b.x), 1436i | u_input.b.x), -_wgslsmith_div_i32(u_input.b.x, 0i)));
    var_0 = !any(vec2<bool>(true, true));
    var_0 = !all(vec3<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false))), true, all(func_2(vec2<bool>(true, true)).a.d)));
    var var_1 = select(!vec3<bool>(true, true, !func_2(vec2<bool>(true, true)).a.d.x), vec3<bool>(func_2(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), func_2(vec2<bool>(true, true)).a.d.wy)).a.d.x, any(vec3<bool>(true, u_input.a == u_input.a, true)), any(vec3<bool>(true, true, all(vec2<bool>(true, true))))), true);
    return !vec3<bool>(!any(select(var_1.yy, var_1.yy, var_1.x)), !func_2(vec2<bool>(var_1.x, var_1.x)).a.c, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!select(vec3<bool>(true, true, true), func_1(), vec3<bool>(true, true, true))), func_2(select(select(func_1().yz, vec2<bool>(true, true), true), vec2<bool>(any(vec2<bool>(false, true)), all(vec3<bool>(false, true, false))), vec2<bool>(true, true))).a.d.yyw, true);
    var var_1 = func_2(select(func_1().zx, func_2(vec2<bool>(var_0.x, 19044i <= u_input.a)).a.d.ww, var_0.yx));
    var var_2 = func_2(!(!var_1.a.d.ww)).a.d;
    let var_3 = countOneBits(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(min(vec4<u32>(4294967295u, 0u, var_1.a.a, 15937u) << (vec4<u32>(u_input.d, var_1.a.a, u_input.c, u_input.c) % vec4<u32>(32u)), abs(vec4<u32>(var_1.a.a, 875u, u_input.e, 5804u))), vec4<u32>(~38707u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.d), vec3<u32>(u_input.d, var_1.a.a, u_input.c)), func_3(-265f, var_1.a, var_1.b, var_1.b.x), _wgslsmith_sub_u32(var_1.a.a, 0u))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(59363u, 39521u, var_1.a.a, var_1.a.a), vec4<u32>(var_1.a.a, 44022u, 29756u, u_input.d)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.a, 30696u, 29520u, 82262u), vec4<u32>(var_1.a.a, var_1.a.a, 4351u, var_1.a.a)) % vec4<u32>(32u)), vec4<u32>(u_input.d, 0u, ~4294967295u, 0u))));
    var var_4 = abs(select(~firstTrailingBit(~vec3<u32>(43098u, var_3.x, 31188u)), var_3.xwy, u_input.b.x >= var_1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(~reverseBits(u_input.a), u_input.a, var_1.b.x)), vec2<u32>(1u, (var_4.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1629u), vec2<u32>(4294967295u, var_4.x)) % 32u)) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), var_3.zww) % 32u)));
}

