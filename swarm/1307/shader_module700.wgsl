struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: bool, arg_3: vec3<u32>) -> i32 {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(~reverseBits(-14486i) >> (~4294967295u % 32u), _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(u_input.a.xy, vec2<i32>(3488i, 16806i)), u_input.a.xw)), min(28194i, u_input.a.x ^ 3996i));
    var var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(342f, 1046f, arg_1.x) - vec3<f32>(arg_1.x, arg_1.x, arg_1.x))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(814f)), _wgslsmith_f_op_f32(-arg_1.x), arg_1.x))), 17309i, vec3<bool>(!any(!vec3<bool>(arg_2, var_1.x, arg_0.x)), false, all(!vec4<bool>(false, var_1.x, var_1.x, arg_2))));
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(var_2.a)), _wgslsmith_div_i32(_wgslsmith_sub_i32(var_2.b, var_2.b), var_2.b), var_2.c);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - arg_1.x));
    return _wgslsmith_add_i32(var_0.x, u_input.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1410f, 281f, 713f)))) - _wgslsmith_f_op_vec3_f32(floor(arg_2.a))), -47166i, !(!select(vec3<bool>(arg_1, arg_1, arg_1), arg_0.c, arg_0.c)));
    var var_1 = 0i;
    var_1 = -countOneBits(reverseBits(_wgslsmith_sub_i32(0i, var_0.b))) & _wgslsmith_add_i32(func_3(vec3<bool>(false, arg_0.c.x, any(vec4<bool>(arg_2.c.x, arg_1, false, false))), vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x * arg_2.a.x), arg_0.a.x), var_0.c.x, vec3<u32>(1u, 1u, 1u)), ~(-9278i));
    let var_2 = u_input.a;
    var var_3 = -16683i;
    return select(arg_0.c, !vec3<bool>(select(!var_0.c.x, any(vec4<bool>(true, arg_2.c.x, false, true)), all(arg_0.c)), arg_2.a.x >= _wgslsmith_div_f32(arg_0.a.x, 338f), true), false);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1f), 243f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -444f))), _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, 1i), u_input.a.x), select(func_4(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-412f, -121f, -331f), vec3<f32>(-717f, -210f, -402f)), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(1i, 0i, 14038i, 2147483647i)), vec3<bool>(false, false, false)), any(vec2<bool>(true, true)), Struct_1(vec3<f32>(1f, 1f, 1f), func_3(vec3<bool>(false, true, false), vec2<f32>(-537f, -1572f), false, vec3<u32>(0u, 17787u, 1u)), vec3<bool>(true, true, true))), !(!func_4(Struct_1(vec3<f32>(-400f, 1000f, 1002f), u_input.a.x, vec3<bool>(true, true, true)), false, Struct_1(vec3<f32>(-1380f, 1000f, -1000f), -7993i, vec3<bool>(true, false, false)))), all(vec2<bool>(true, true))));
    var var_1 = false;
    var var_2 = -2147483647i == u_input.a.x;
    var var_3 = select(var_0.c.x, false, var_0.c.x) || func_4(Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, 2127f), -1i, !var_0.c), var_0.c.x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a, var_0.a)), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a.x, -2147483647i), -u_input.a.x), var_0.c)).x;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -1622f, -107f))), -firstTrailingBit(-(u_input.a.x >> (46256u % 32u))), !(!vec3<bool>(true, var_0.c.x, var_0.c.x || var_0.c.x)));
}

fn func_1() -> vec3<u32> {
    var var_0 = func_2();
    let var_1 = vec3<bool>(var_0.c.x, true, false);
    var_0 = Struct_1(var_0.a, -_wgslsmith_mod_i32(firstLeadingBit(firstLeadingBit(u_input.a.x)), var_0.b), vec3<bool>(var_0.c.x || (_wgslsmith_f_op_f32(-var_0.a.x) > -529f), any(vec4<bool>(var_1.x, var_0.c.x | true, !var_1.x, any(vec4<bool>(var_1.x, false, var_0.c.x, var_1.x)))), func_2().c.x));
    var var_2 = u_input.a.yz;
    let var_3 = !(!func_2().c.xz);
    return _wgslsmith_add_vec3_u32(~(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 94658u, 1u), vec3<u32>(1u, 1u, 1u)) << (select(~vec3<u32>(47890u, 1u, 55001u), vec3<u32>(4294967295u, 1u, 20833u), -940f < var_0.a.x) % vec3<u32>(32u))), select(countOneBits(~vec3<u32>(0u, 1u, 4294967295u)), ~vec3<u32>(7046u, ~17696u, 4294967295u), select(vec3<bool>(!var_3.x, any(vec2<bool>(false, false)), var_3.x), var_1, func_2().c)));
}

fn func_5(arg_0: vec3<u32>, arg_1: bool) -> Struct_1 {
    var var_0 = false;
    let var_1 = (countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(35715i, u_input.a.x, u_input.a.x), u_input.a.zxz, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))) ^ abs(vec3<i32>(u_input.a.x, -15005i, u_input.a.x) | vec3<i32>(2147483647i, -1i, u_input.a.x))) ^ u_input.a.xxz;
    var_0 = arg_1;
    var_0 = !any(!vec2<bool>(true, arg_1));
    var var_2 = _wgslsmith_f_op_f32(-1008f * -1000f);
    return Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1866f, -1273f, 728f), vec3<f32>(1382f, -769f, -1997f))), _wgslsmith_div_vec3_f32(vec3<f32>(-691f, -109f, -494f), vec3<f32>(1729f, 459f, 969f)), arg_1)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-646f, 439f, 265f) * vec3<f32>(-267f, 535f, -994f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 374f, -1978f))))), vec3<f32>(-497f, -141f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1170f)) + -504f)), true)), var_1.x, !select(vec3<bool>(true, arg_1, false), vec3<bool>(true, !arg_1, true), true));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec2<bool>(arg_1.b != arg_1.b, true);
    return Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -652f, -992f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.a.x, arg_1.a.x))), _wgslsmith_f_op_vec3_f32(func_2().a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(153f, arg_0.x, 513f) - vec3<f32>(arg_0.x, arg_1.a.x, arg_0.x)))), func_2().c.x)), max(arg_1.b, -32953i), vec3<bool>(!any(!arg_1.c.xy), func_5(~abs(vec3<u32>(75898u, 12227u, 1u)), false).c.x, !(!(!var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 98634u;
    var var_1 = ~(~49379u);
    var_1 = firstLeadingBit(abs(0u));
    let var_2 = func_6(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2218f, 180f))), -960f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1084f)) + 1f), -1000f), func_5(func_1(), true));
    var var_3 = var_0;
    var_1 = 1u;
    var_3 = 17363u;
    let var_4 = func_2();
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, var_0, 1u), vec4<u32>(var_0, 1u, var_0, 0u) | vec4<u32>(var_0, var_0, var_0, 1u)) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(var_0, 31098u, 0u, 36124u), vec4<u32>(var_0, var_0, 24752u, var_0)) % vec4<u32>(32u))), _wgslsmith_div_vec4_f32(vec4<f32>(429f, _wgslsmith_f_op_f32(sign(var_4.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.a.x, -1078f) + 635f), -522f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-766f, -506f, var_2.a.x, var_2.a.x), vec4<f32>(1000f, 1447f, var_2.a.x, var_4.a.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.a.x, var_4.a.x, 678f, 571f), vec4<f32>(584f, var_4.a.x, var_2.a.x, -1000f)))))), -vec2<i32>(_wgslsmith_add_i32(-25961i, 2147483647i), i32(-1i) * -1i) & ~(~_wgslsmith_mult_vec2_i32(u_input.a.zy, vec2<i32>(-19626i, -2147483647i))), abs(0i) << (1u % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_4.a.xy - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, 1277f) + var_4.a.zy), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.a.x, var_2.a.x) * vec2<f32>(-1489f, var_4.a.x)))))));
}

