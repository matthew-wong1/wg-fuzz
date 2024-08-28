struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: vec4<u32>) -> vec2<bool> {
    var var_0 = !vec2<bool>(true, true | (arg_1.x <= -796f));
    global0 = array<vec4<bool>, 8>();
    let var_1 = (reverseBits(reverseBits(arg_0.b.x)) ^ abs(arg_0.b.x)) >= 19405u;
    global0 = array<vec4<bool>, 8>();
    global0 = array<vec4<bool>, 8>();
    return vec2<bool>(arg_0.a > ~arg_3.x, var_1);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1) -> vec3<u32> {
    global0 = array<vec4<bool>, 8>();
    global0 = array<vec4<bool>, 8>();
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1913f, arg_1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1184f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, 431f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(258f, -1599f)) - 674f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_0.c.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -785f))), -1063f, _wgslsmith_f_op_f32(f32(-1f) * -387f));
    global0 = array<vec4<bool>, 8>();
    var var_1 = select(arg_1.c, arg_1.c, true);
    return vec3<u32>(4294967295u, 4294967295u, arg_0.a.x);
}

fn func_2() -> Struct_1 {
    let var_0 = func_4(Struct_2(select(~vec2<u32>(22900u, 4294967295u), ~vec2<u32>(0u, 43625u), func_3(Struct_1(1u, vec4<u32>(0u, 21867u, 65335u, 0u)), vec3<f32>(1452f, 306f, -1864f), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.c.x, -2147483647i, 0i), vec4<i32>(u_input.a, u_input.b, u_input.b, -2147483647i)), vec4<u32>(1u, 1u, 1u, 1u))), firstLeadingBit(_wgslsmith_mult_vec3_i32(~vec3<i32>(12760i, u_input.c.x, u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, u_input.a, 1i), vec3<i32>(6778i, u_input.b, u_input.a)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-555f + 343f), _wgslsmith_div_f32(-1000f, -174f)))), -u_input.c), Struct_3(vec2<f32>(1f, 1f), ~(-8079i), vec2<bool>(true, true)), Struct_1(~0u, ~vec4<u32>(1u, 8295u, 1u, countOneBits(0u))));
    let var_1 = Struct_2(firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 15138u) ^ var_0.xx, _wgslsmith_div_vec2_u32(vec2<u32>(1u, 5895u), var_0.zy)) | var_0.xx), vec3<i32>(u_input.a, i32(-1i) * -min(u_input.a, u_input.a), ~24632i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(1634f, -466f), vec2<f32>(-910f, 676f)), vec2<f32>(-900f, -106f))))), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.b), u_input.c, select(u_input.c, vec2<i32>(u_input.c.x, 1i), true)));
    return Struct_1(abs(func_4(Struct_2(select(vec2<u32>(19160u, var_0.x), var_1.a, true), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.a, var_1.d.x), vec3<i32>(0i, u_input.a, var_1.d.x)), _wgslsmith_f_op_vec2_f32(-var_1.c), _wgslsmith_sub_vec2_i32(var_1.d, vec2<i32>(u_input.a, u_input.b))), Struct_3(vec2<f32>(504f, var_1.c.x), -50702i, vec2<bool>(false, false)), Struct_1(_wgslsmith_mod_u32(var_0.x, var_0.x), ~vec4<u32>(var_1.a.x, var_1.a.x, 34382u, 40943u))).x), vec4<u32>(~countOneBits(countOneBits(var_1.a.x)), 88599u, var_1.a.x, 1u));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global0 = array<vec4<bool>, 8>();
    var var_0 = func_2();
    var_0 = func_2();
    let var_1 = select(global0[_wgslsmith_index_u32(var_0.a, 8u)], select(select(vec4<bool>(arg_0.x, 16538u == var_0.a, arg_0.x, true), global0[_wgslsmith_index_u32(~var_0.a, 8u)], arg_0.x || true), select(global0[_wgslsmith_index_u32(reverseBits(var_0.b.x), 8u)], !global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(~func_4(Struct_2(vec2<u32>(41331u, 27917u), vec3<i32>(u_input.c.x, 11303i, 16452i), vec2<f32>(-974f, 604f), u_input.c), Struct_3(vec2<f32>(-494f, 712f), u_input.b, vec2<bool>(false, arg_0.x)), Struct_1(var_0.a, var_0.b)).x, 8u)]), true), arg_0.x | false);
    var var_2 = !any(select(select(select(var_1.www, var_1.zyw, vec3<bool>(arg_0.x, true, true)), !var_1.zyy, select(vec3<bool>(false, arg_0.x, true), var_1.xwz, arg_0.x)), !select(var_1.wyz, var_1.zxy, arg_0.x), vec3<bool>(true, all(var_1.yyw), true)));
    return Struct_1(1u, _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.b, ~vec4<u32>(0u, 33146u, 4294967295u, 1u)), var_0.b), vec4<u32>(74697u, 4294967295u, 0u, var_0.b.x)));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> vec4<u32> {
    global0 = array<vec4<bool>, 8>();
    var var_0 = max(countOneBits(reverseBits(_wgslsmith_clamp_vec4_u32(~arg_0.b, ~vec4<u32>(arg_0.b.x, arg_0.a, 815u, arg_0.a), vec4<u32>(arg_1, 0u, 0u, arg_3.a.x)))), abs(vec4<u32>(reverseBits(2200u), arg_0.b.x, 1u | ~arg_0.b.x, 1u)));
    let var_1 = min(~abs(countOneBits(1u)), ~(~countOneBits(reverseBits(arg_1))));
    var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(~vec4<u32>(arg_3.a.x, 4294967295u, 30611u, 37554u)), _wgslsmith_clamp_vec4_u32(arg_0.b, ~arg_0.b, _wgslsmith_mult_vec4_u32(arg_0.b, arg_0.b))), arg_0.b), vec4<u32>(1u, select(~arg_3.a.x, _wgslsmith_mod_u32(1u, 1637u), false), 1u, 0u));
    var var_2 = any(select(func_3(Struct_1(~var_1, vec4<u32>(var_1, arg_3.a.x, var_0.x, 1u)), vec3<f32>(arg_3.c.x, arg_2, _wgslsmith_f_op_f32(arg_2 * -1465f)), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, 5177i, 44500i, u_input.b), vec4<i32>(u_input.c.x, arg_3.d.x, 37808i, 1663i)), ~vec4<u32>(1u, 1u, 1u, 4294967295u)), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, arg_2 >= 360f)));
    return abs(~firstLeadingBit(~vec4<u32>(0u, var_0.x, 0u, 0u)) | arg_0.b);
}

fn func_6(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = Struct_2(arg_2.yx, vec3<i32>(2147483647i, i32(-1i) * -31899i, firstTrailingBit(abs(~(-1i)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-469f, arg_3.a.x), _wgslsmith_f_op_f32(round(arg_0.x))) * vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_3.a.x)))), select(firstLeadingBit(~(u_input.c >> (arg_2.xw % vec2<u32>(32u)))), u_input.c ^ countOneBits(vec2<i32>(u_input.a, u_input.c.x)), !(!select(arg_3.c.x, false, true))));
    let var_1 = vec4<u32>(arg_1 ^ 1u, ~1u | func_5(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_2.x, 12327u, arg_1), vec4<u32>(0u, 1484u, var_0.a.x, var_0.a.x)), max(vec4<u32>(arg_2.x, 62040u, 59561u, arg_2.x), arg_2)), max(arg_1, _wgslsmith_clamp_u32(42676u, 30023u, arg_1)), 807f, Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.x, arg_1), vec2<u32>(0u, 38408u)), var_0.b, vec2<f32>(-660f, 583f), -vec2<i32>(-2147483647i, arg_3.b))).x, 1u, arg_2.x);
    var_0 = Struct_2(var_1.zw, abs(vec3<i32>(-2147483647i, ~(-2147483647i << (arg_2.x % 32u)), u_input.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(151f, var_0.c.x), vec2<f32>(-1000f, arg_3.a.x))) * arg_0.ww)) - _wgslsmith_div_vec2_f32(arg_0.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_0.c)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x))))), select(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, var_0.d.x), vec2<i32>(-1i, 2147483647i)) & (vec2<i32>(-5445i, -1i) ^ var_0.b.yx), var_0.b.zx, true) ^ ~vec2<i32>(var_0.d.x, u_input.c.x));
    var_0 = Struct_2(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~abs(arg_2.zz), ~vec2<u32>(0u, arg_2.x) << (arg_2.yx % vec2<u32>(32u))), func_1(select(arg_3.c, vec2<bool>(arg_3.c.x, false), !arg_3.c)).b.zw), vec3<i32>(-1i >> ((arg_1 >> (arg_2.x % 32u)) % 32u), -41493i, -2147483647i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1404f - var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1000f)) + arg_0.x)), countOneBits(select(vec2<i32>(~var_0.b.x, arg_3.b), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-32922i, -32543i, 9736i), vec3<i32>(arg_3.b, -4823i, var_0.d.x)), 0i | u_input.c.x), false)));
    let var_2 = arg_3.c.x;
    return Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1361f, 1000f))), vec2<f32>(-112f, _wgslsmith_div_f32(183f, arg_0.x))), u_input.b, !vec2<bool>((-471f < arg_3.a.x) && any(vec3<bool>(var_2, false, true)), true || select(var_2, true, var_2)));
}

fn func_7(arg_0: i32, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_3 {
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(floor(arg_1.a.x)), -549f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-499f, -369f, arg_1.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, -2122f, 829f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2750f, arg_1.a.x, 1000f))))));
    global0 = array<vec4<bool>, 8>();
    let var_2 = Struct_2(firstTrailingBit(vec2<u32>(arg_2.x, 1u)), vec3<i32>(~(-59959i), -56473i, 3123i ^ -arg_1.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), arg_1.a.x)), vec2<i32>(min(arg_1.b, _wgslsmith_sub_i32(arg_0, countOneBits(arg_1.b))), -1i));
    let var_3 = vec3<bool>(!all(vec3<bool>(false, arg_2.x > var_2.a.x, arg_1.c.x)), true, false);
    return func_6(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_1.a.x, 580f), var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -676f), _wgslsmith_f_op_f32(var_2.c.x - -762f)), var_1.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, var_1.x, var_2.c.x, -194f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -435f)))), _wgslsmith_dot_vec4_u32(vec4<u32>(33116u, 59278u, ~var_2.a.x, var_2.a.x) << (abs(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, var_2.a.x), vec4<u32>(arg_2.x, 28490u, 29266u, 16925u))) % vec4<u32>(32u)), ~select(~vec4<u32>(arg_2.x, 91345u, var_2.a.x, 4294967295u), vec4<u32>(1u, 42353u, arg_2.x, arg_2.x), !global0[_wgslsmith_index_u32(arg_2.x, 8u)])), ~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(31075u, var_2.a.x, var_2.a.x, 35026u), ~vec4<u32>(arg_2.x, var_2.a.x, arg_2.x, 92340u)), func_5(func_2(), arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -223f), Struct_2(vec2<u32>(21192u, var_2.a.x), var_2.b, vec2<f32>(-1162f, var_1.x), vec2<i32>(u_input.b, arg_0)))), Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.xx, arg_1.a) * _wgslsmith_f_op_vec2_f32(-arg_1.a)), func_6(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a.x, -181f, 765f, var_2.c.x), vec4<f32>(var_1.x, var_2.c.x, 425f, 855f), global0[_wgslsmith_index_u32(23198u, 8u)])), 10882u, vec4<u32>(var_2.a.x, var_2.a.x, arg_2.x, var_2.a.x), Struct_3(var_1.zy, 1i, var_3.xx)).a), ~0i, vec2<bool>(!var_3.x, all(!global0[_wgslsmith_index_u32(30607u, 8u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 8>();
    var var_0 = ~vec3<i32>(39219i, -178i, (_wgslsmith_add_i32(-8866i, u_input.a) & u_input.a) | abs(u_input.b));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1000f, 1525f)), 1566f)), -1015f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-686f, -270f))), 2746f)));
    let var_2 = func_7(u_input.a, func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_1))) * _wgslsmith_f_op_vec4_f32(var_1 + _wgslsmith_f_op_vec4_f32(-var_1))), 0u, func_5(func_1(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), 4294967295u, var_1.x, Struct_2(vec2<u32>(1u, 1u), -vec3<i32>(var_0.x, var_0.x, 2147483647i), _wgslsmith_div_vec2_f32(var_1.yz, vec2<f32>(362f, var_1.x)), _wgslsmith_mod_vec2_i32(var_0.xz, u_input.c))), Struct_3(_wgslsmith_f_op_vec2_f32(var_1.yw * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, var_1.x)))), abs(-33878i << (0u % 32u)), func_3(Struct_1(1u, vec4<u32>(5092u, 13783u, 97444u, 64323u)), vec3<f32>(var_1.x, var_1.x, var_1.x), vec4<i32>(var_0.x, var_0.x, var_0.x, -2085i), vec4<u32>(1u, 1u, 1u, 1u)))), func_4(Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 5761u), min(vec2<u32>(0u, 46279u), vec2<u32>(4294967295u, 4294967295u))), -max(vec3<i32>(-4852i, var_0.x, var_0.x), vec3<i32>(u_input.b, var_0.x, -1i)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, 1955f))), var_0.xy), Struct_3(_wgslsmith_f_op_vec2_f32(var_1.zx + vec2<f32>(-814f, var_1.x)), -(i32(-1i) * -35635i), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), Struct_1(~_wgslsmith_add_u32(1u, 1u), abs(vec4<u32>(1u, 1u, 1u, 1u)))));
    global0 = array<vec4<bool>, 8>();
    var_0 = abs(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(var_2.b, -2147483647i, var_0.x), vec3<i32>(2147483647i, 1i, 0i) | vec3<i32>(u_input.a, -40056i, var_2.b)) | _wgslsmith_div_vec3_i32(min(vec3<i32>(var_2.b, u_input.a, 2147483647i), vec3<i32>(u_input.c.x, u_input.b, 1i)), ~vec3<i32>(u_input.a, u_input.c.x, 1i)), select(-firstTrailingBit(vec3<i32>(var_2.b, 0i, 0i)), min(_wgslsmith_div_vec3_i32(vec3<i32>(25414i, -50804i, u_input.c.x), vec3<i32>(-34956i, 0i, 0i)), countOneBits(vec3<i32>(-1i, u_input.c.x, u_input.c.x))), true)));
    var var_3 = func_6(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(select(var_2.a.x, var_1.x, var_2.c.x)), func_7(-2147483647i, Struct_3(vec2<f32>(var_1.x, 268f), var_2.b, vec2<bool>(true, true)), vec3<u32>(4294967295u, 12621u, 4294967295u)).a.x, _wgslsmith_f_op_f32(f32(-1f) * -1191f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1 * var_1), var_1))), true)), _wgslsmith_add_u32(func_5(Struct_1(~1u, vec4<u32>(1u, 1u, 1u, 1u)), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(40030u, 0u), vec2<u32>(1928u, 33476u)), max(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(u_input.b, u_input.a, 1i)), _wgslsmith_f_op_vec2_f32(round(var_1.yy)), vec2<i32>(-63541i, 1i))).x, _wgslsmith_mult_u32(~(~24881u), 21119u)), ~(~vec4<u32>(abs(1u), 56099u, 67316u, 4294967295u)), var_2);
    global0 = array<vec4<bool>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(func_5(func_1(var_3.c), func_2().b.x, var_3.a.x, Struct_2(vec2<u32>(1u, 0u), vec3<i32>(28493i, 2147483647i, 2147483647i), vec2<f32>(-903f, -718f), u_input.c)).wyx & func_2().b.yzw, ~select(min(vec3<u32>(34047u, 1u, 41426u), vec3<u32>(4294967295u, 36175u, 1u)), vec3<u32>(33821u, 47132u, 24091u), vec3<bool>(var_2.c.x, var_2.c.x, var_2.c.x))), var_0.x >> (~(~func_1(var_2.c).b.x) % 32u), var_1, -279f, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-689f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-var_3.a.x)), _wgslsmith_f_op_f32(round(func_6(vec4<f32>(-478f, -482f, var_2.a.x, var_2.a.x), 54623u, vec4<u32>(4294967295u, 27765u, 4294967295u, 23696u), var_2).a.x))))));
}

