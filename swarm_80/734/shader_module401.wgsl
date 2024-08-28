struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: u32) -> vec3<i32> {
    let var_0 = any(vec4<bool>(false, true, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))) != false, 2075f >= _wgslsmith_f_op_f32(-arg_0)));
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-907f, arg_1.x)) * _wgslsmith_f_op_f32(step(arg_0, arg_1.x)))))), arg_0, _wgslsmith_f_op_f32(1000f + -147f));
    let var_2 = 15049u;
    return ~vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 1i), vec2<i32>(1i, ~7057i)), -2147483647i, (~(-1i) >> (var_2 % 32u)) & ~(-1i));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_4, arg_3: Struct_2) -> bool {
    var var_0 = abs(-vec4<i32>(-(arg_0.x | -6890i), -18694i, -arg_2.c.c, ~_wgslsmith_sub_i32(60997i, 0i)));
    var_0 = firstLeadingBit(~(-vec4<i32>(arg_0.x, _wgslsmith_mult_i32(0i, var_0.x), 38431i, -78556i)));
    var_0 = -firstLeadingBit(-(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 48817i, -8934i, arg_0.x), vec4<i32>(7582i, var_0.x, 1i, -2147483647i)) & vec4<i32>(19377i, var_0.x, -9012i, -1i)));
    var_0 = reverseBits(vec4<i32>(_wgslsmith_sub_i32(-35476i, 0i), 2147483647i, _wgslsmith_sub_i32(1i, var_0.x), arg_3.c) | -(~vec4<i32>(var_0.x, -69986i, 0i, var_0.x))) & ~(~(-vec4<i32>(-38760i, -1i, -1i, -8426i) | countOneBits(vec4<i32>(var_0.x, -2147483647i, 2147483647i, arg_0.x))));
    var var_1 = !select(vec2<bool>(arg_1, all(!vec4<bool>(true, true, arg_1, true))), vec2<bool>(true, !arg_1), select(select(!vec2<bool>(arg_1, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(arg_1, false), arg_1)), vec2<bool>(true, false), !(!vec2<bool>(true, arg_1))));
    return all(vec4<bool>(any(select(!vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, false), vec2<bool>(true, true), vec2<bool>(arg_1, var_1.x)), vec2<bool>(var_1.x, false))), true, true, any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, true, true)), select(vec3<bool>(var_1.x, true, true), vec3<bool>(arg_1, var_1.x, var_1.x), vec3<bool>(false, arg_1, var_1.x)), any(vec3<bool>(var_1.x, arg_1, arg_1))))));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> Struct_4 {
    let var_0 = (countOneBits(arg_0) ^ _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(arg_1.zy, vec2<i32>(-1i, arg_0)), arg_0)) | (_wgslsmith_mod_i32(arg_0, -12497i) | (i32(-1i) * -16673i));
    var var_1 = vec2<bool>(func_4(func_3(_wgslsmith_f_op_f32(round(-214f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1730f, -1000f)))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.b.x), u_input.b) | _wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(4294967295u, 26u)])), true, Struct_4(vec3<f32>(_wgslsmith_f_op_f32(878f * -635f), _wgslsmith_f_op_f32(f32(-1f) * -171f), _wgslsmith_f_op_f32(-636f * -649f)), arg_1.x, Struct_2(_wgslsmith_f_op_f32(step(-410f, 915f)), Struct_1(global0[_wgslsmith_index_u32(24892u, 26u)]), abs(arg_0))), Struct_2(-1453f, Struct_1(_wgslsmith_mod_u32(u_input.a, u_input.b.x)), max(abs(31226i), arg_0))), all(vec4<bool>(true, _wgslsmith_f_op_f32(-1284f + -1484f) > _wgslsmith_f_op_f32(trunc(-808f)), true, !any(vec2<bool>(true, false)))));
    var var_2 = Struct_2(1344f, Struct_1(global0[_wgslsmith_index_u32(u_input.c, 26u)]), arg_1.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -950f))))));
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 1120f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, var_2.a) * vec2<f32>(614f, var_2.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_3.x))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(126f, 419f)))))));
    return Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_2.a, var_2.a) * vec3<f32>(var_3.x, 144f, var_3.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_2.a, 113f)), false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 1030f, var_3.x)) + vec3<f32>(var_2.a, 1086f, 1806f)))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, -2147483647i, 1830i, 0i) ^ vec4<i32>(1i, arg_1.x, arg_1.x, -37170i), vec4<i32>(-34690i, arg_1.x, var_2.c, arg_1.x)) << (min(firstTrailingBit(vec4<u32>(1u, var_2.b.a, 57055u, 0u)), vec4<u32>(global0[_wgslsmith_index_u32(54583u, 26u)], u_input.e.x, u_input.b.x, global0[_wgslsmith_index_u32(var_2.b.a, 26u)]) & vec4<u32>(global0[_wgslsmith_index_u32(u_input.e.x, 26u)], 4422u, var_2.b.a, u_input.e.x)) % vec4<u32>(32u)), countOneBits(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0, -6083i, 2147483647i, var_0), vec4<i32>(var_0, 1i, var_2.c, -28008i)), countOneBits(vec4<i32>(arg_0, -1770i, -38557i, 10263i))))), Struct_2(var_3.x, Struct_1(0u), -arg_1.x));
}

fn func_5(arg_0: Struct_4) -> vec2<bool> {
    let var_0 = func_2(arg_0.b, vec3<i32>(-firstLeadingBit(-34688i), i32(-1i) * -(~arg_0.b), ~arg_0.c.c << (_wgslsmith_mod_u32(52869u & arg_0.c.b.a, 2708u) % 32u))).c;
    var var_1 = 23907i;
    global0 = array<u32, 26>();
    let var_2 = arg_0;
    let var_3 = select(select(select(vec2<bool>(true, false), vec2<bool>(true, var_0.b.a > var_0.b.a), !select(false, false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, false)), true)), !vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), select(false, false, false) & true), vec2<bool>(true, true));
    return select(!vec2<bool>(_wgslsmith_f_op_f32(arg_0.a.x + var_0.a) > _wgslsmith_f_op_f32(floor(-400f)), true && var_3.x), !var_3, var_3.x);
}

fn func_6(arg_0: vec2<bool>) -> Struct_4 {
    let var_0 = Struct_2(_wgslsmith_div_f32(1726f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1988f, _wgslsmith_f_op_f32(-778f - -398f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-129f + -416f) * _wgslsmith_f_op_f32(-2109f - 475f)), true))), Struct_1(~(~u_input.c)), -abs(_wgslsmith_sub_i32(~(-30058i), -36838i)));
    let var_1 = -20466i != var_0.c;
    var var_2 = vec2<f32>(var_0.a, 678f);
    var var_3 = _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_clamp_i32(~(54927i << (global0[_wgslsmith_index_u32(u_input.d.x, 26u)] % 32u)), ~(~var_0.c), -1i)), var_0.c);
    var var_4 = countOneBits(~vec2<u32>(~(~0u), ~0u));
    return Struct_4(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-569f, -1052f, -1000f))), -2147483647i, var_0);
}

fn func_7(arg_0: i32, arg_1: Struct_4) -> Struct_2 {
    global0 = array<u32, 26>();
    let var_0 = arg_0 > (i32(-1i) * -1i);
    var var_1 = vec3<i32>(~arg_1.b, -1i, arg_0);
    global0 = array<u32, 26>();
    return arg_1.c;
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = vec4<f32>(405f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a, 1f)), arg_2.a, -1765f);
    var var_1 = ~(~(abs(max(vec4<u32>(6963u, 20208u, 52702u, arg_2.b.a), vec4<u32>(16029u, 0u, 22450u, 43090u))) ^ vec4<u32>(~arg_2.b.a, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 26u)], arg_2.b.a), 1u, 74400u)));
    let var_2 = ~(~60276i);
    let var_3 = 1u;
    let var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-758f, 222f, 1000f)) + vec3<f32>(arg_2.a, arg_2.a, var_0.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(586f, arg_2.a), _wgslsmith_f_op_f32(trunc(-1978f)), _wgslsmith_f_op_f32(-var_0.x)))), -arg_2.c, func_7(16686i, func_6(func_5(func_2(2147483647i, vec3<i32>(arg_2.c, 2147483647i, arg_2.c))))));
    return select(select(select(!(!arg_1.xxw), arg_1.ywy, vec3<bool>(true, arg_0, true)), arg_1.yyz, select(vec3<bool>(arg_0, arg_1.x, true && arg_1.x), arg_1.ywy, !(!vec3<bool>(true, arg_0, arg_1.x)))), vec3<bool>(all(!arg_1), all(arg_1), false), select(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a - -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -387f)) > _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-var_4.c.a)), arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1u);
    let var_1 = 1000f;
    let var_2 = select(!vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), 1u < global0[_wgslsmith_index_u32(~u_input.c, 26u)]), select(vec2<bool>(all(func_1(false, vec4<bool>(false, false, true, true), Struct_2(var_1, var_0, 18166i))), true), vec2<bool>(true, true), any(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)))), vec2<bool>(false, true));
    let var_3 = u_input.e;
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~select(vec3<u32>(global0[_wgslsmith_index_u32(1u, 26u)], 16730u, u_input.b.x), var_3, vec3<bool>(true, true, var_2.x)) << (~(~u_input.b) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(var_3, countOneBits(~var_3)), vec3<bool>(func_1(false, vec4<bool>(true, true, true, true), Struct_2(var_1, var_0, -2147483647i)).x, var_2.x, any(!vec4<bool>(false, true, var_2.x, false)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 1698f, 1602f, 2256f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1464f, -111f, var_1, var_1) * vec4<f32>(var_1, 317f, -1954f, -452f))))))), vec3<i32>(1i, firstLeadingBit(1i), func_7(abs(-15299i), Struct_4(vec3<f32>(var_1, -364f, var_1), -2147483647i, Struct_2(var_1, var_0, 15547i))).c ^ _wgslsmith_mod_i32(~(-2147483647i), countOneBits(6898i))));
}

