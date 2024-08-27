struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(2147483647i, false, vec4<f32>(-197f, 709f, 426f, -779f), 691f, vec3<bool>(true, false, false));

var<private> global1: Struct_2;

var<private> global2: array<vec3<f32>, 2>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.d, 1000f, -128f, 280f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, -568f, global0.d, global0.c.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(global0.c)), _wgslsmith_f_op_vec4_f32(ceil(global1.c)), vec4<bool>(global0.b, global0.e.x, global0.e.x, global1.e.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1655f, global0.c.x, global0.d, global0.c.x), vec4<f32>(273f, 2042f, 470f, 1760f))), vec4<f32>(701f, arg_0.x, 1153f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(631f, 897f, 339f, global1.c.x)), any(select(global0.e, vec3<bool>(global1.b, true, global0.e.x), true)))))), !vec3<bool>(!global1.e.x, global1.b, global1.e.x), global1.e.yy, vec3<bool>(global1.e.x & any(!vec4<bool>(global0.e.x, global0.e.x, global1.b, false)), (_wgslsmith_f_op_f32(-global0.c.x) == _wgslsmith_f_op_f32(global1.d + global1.d)) && !any(vec2<bool>(global0.e.x, global0.e.x)), global0.b));
    var var_1 = _wgslsmith_f_op_vec3_f32(-global0.c.zxz);
    var var_2 = Struct_2(-global1.a, global0.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, -1658f, 718f, var_0.a.x) - vec4<f32>(564f, 149f, global0.d, 1731f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 595f, 1224f) - _wgslsmith_div_vec4_f32(vec4<f32>(1588f, 1000f, var_0.a.x, global1.c.x), global0.c)), global0.c))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec3<bool>(all(vec2<bool>(global1.a >= 1i, !var_0.d.x)), !any(var_0.b), global0.b));
    global1 = Struct_2(~(-_wgslsmith_mult_i32(1i, 177i)), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -778f, 675f, var_1.x) + vec4<f32>(global0.d, 116f, 1510f, -103f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-969f, global1.d, -194f, -558f) * vec4<f32>(1005f, global0.d, global0.d, 378f))), vec4<bool>(true, all(vec3<bool>(false, true, true)), true, any(vec4<bool>(true, var_0.d.x, var_0.c.x, global1.e.x)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-665f)))))), select(global0.e, select(!(!var_2.e), global0.e, select(select(global0.e, vec3<bool>(global1.b, true, var_0.d.x), true), vec3<bool>(true, false, false), true)), true));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-840f + global0.d)), _wgslsmith_f_op_f32(round(-391f))))), _wgslsmith_f_op_f32(min(1296f, _wgslsmith_f_op_f32(f32(-1f) * -548f))), _wgslsmith_f_op_f32(f32(-1f) * -544f));
    return ~abs(_wgslsmith_sub_u32(8659u, ~4294967295u));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec4<bool>) -> i32 {
    global1 = Struct_2(i32(-1i) * -2147483647i, true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c.x))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)), 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_0.x)))) * arg_1.c.x)), select(select(select(vec3<bool>(true, true, global1.e.x), !vec3<bool>(true, true, global1.b), true), arg_3.xzw, !select(arg_3.xzy, vec3<bool>(true, false, arg_1.b), false)), !vec3<bool>(arg_1.b, arg_1.b, true), !vec3<bool>(true, 27056i < arg_2.x, all(arg_3.yz))));
    var var_0 = 0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~1u, 0u, ~4294967295u >> (firstLeadingBit(20141u) % 32u)), vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 40971u), vec3<u32>(10838u, 127244u, 30382u))), 4294967295u, 12089u, _wgslsmith_sub_u32(1u, 1u)));
    let var_1 = ~(~vec2<u32>(1u, 1u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, -348f, 693f, global1.c.x) + _wgslsmith_f_op_vec4_f32(arg_1.c * arg_1.c)))), vec3<bool>(!all(vec4<bool>(global0.b, true, true, false)), any(vec3<bool>(any(vec2<bool>(global1.e.x, false)), true, arg_2.x >= -2147483647i)), false), select(arg_3.wz, !vec2<bool>(!arg_3.x, true), vec2<bool>(true, all(vec4<bool>(global0.e.x, false, arg_3.x, true)))), select(select(vec3<bool>(false, !global0.b, false), vec3<bool>(false, false, arg_3.x | false), global0.b), global1.e, arg_3.x));
    var_0 = _wgslsmith_dot_vec3_u32(firstTrailingBit(~select(vec3<u32>(8634u, 1u, var_1.x) << (vec3<u32>(67748u, 7474u, 1u) % vec3<u32>(32u)), vec3<u32>(var_1.x, 52090u, var_1.x), arg_3.yxx)), min(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(var_1.x, 75767u, var_1.x), vec3<u32>(var_1.x, 1u, 13949u))), ~vec3<u32>(func_3(arg_0.yz), countOneBits(0u), 0u)));
    return u_input.a >> (0u % 32u);
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<i32>(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-494f, global1.d, -376f) + global1.c.zyw) * _wgslsmith_div_vec3_f32(global1.c.xyx, vec3<f32>(-1301f, global1.c.x, global1.d))) * global2[_wgslsmith_index_u32(~func_3(global0.c.wz), 2u)]), Struct_2(max(~2147483647i, _wgslsmith_mod_i32(15741i, global0.a)), !all(vec4<bool>(global1.b, global1.b, false, true)), global0.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0.d)), _wgslsmith_f_op_f32(trunc(global0.c.x)))), select(vec3<bool>(false, true, global1.e.x), select(vec3<bool>(global0.e.x, false, true), global0.e, false), vec3<bool>(false, false, global0.e.x))), -_wgslsmith_mult_vec4_i32(-vec4<i32>(global0.a, 2147483647i, 0i, u_input.a), vec4<i32>(-834i, global1.a, u_input.a, -5517i)), vec4<bool>(global0.b, false, false, global1.b)), _wgslsmith_dot_vec2_i32(~vec2<i32>(-78810i, global0.a), -max(vec2<i32>(34785i, u_input.a), vec2<i32>(global0.a, 1177i))) & _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, 1i, global1.a), vec3<i32>(global1.a, global1.a, 16934i)), global1.a), ~(-global0.a), _wgslsmith_div_i32(26990i, func_4(vec3<f32>(1285f, 348f, 1510f), Struct_2(1i, global0.b, vec4<f32>(229f, -474f, -1272f, global0.d), global1.c.x, global0.e), vec4<i32>(global0.a, -2147483647i, global0.a, global0.a), vec4<bool>(global1.e.x, global0.e.x, false, global0.e.x)))));
    let var_1 = _wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(597f + -313f));
    global0 = Struct_2(0i, global1.e.x, global1.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -508f))), select(!global0.e, vec3<bool>((var_1 != global0.c.x) & false, all(select(vec4<bool>(global0.b, global0.b, global1.b, false), vec4<bool>(false, false, false, false), global1.b)), true), select(select(global1.e, !vec3<bool>(true, global0.b, global0.e.x), select(vec3<bool>(global0.b, global0.e.x, global0.e.x), vec3<bool>(global1.e.x, global0.e.x, global0.b), false)), global0.e, true)));
    var var_2 = vec4<bool>(true, true, all(!select(select(global1.e.zy, vec2<bool>(global0.e.x, false), false), vec2<bool>(global0.e.x, global0.b), !global1.e.yy)), global0.e.x);
    let var_3 = ~(~vec4<u32>(_wgslsmith_mult_u32(1u, ~23416u), abs(_wgslsmith_mult_u32(1u, 0u)), 0u, 1u));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_1, global1.c.x)), _wgslsmith_f_op_f32(step(1118f, -1014f)), _wgslsmith_f_op_f32(-908f + global0.c.x), _wgslsmith_f_op_f32(-1834f * 1477f)), global0.c) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 978f, -1482f, -2853f))))), global0.e, vec2<bool>(false, global0.b), !global0.e);
}

fn func_1(arg_0: Struct_2) -> i32 {
    let var_0 = -931f;
    var var_1 = Struct_1(arg_0.c, global1.e, global0.e.yz, global1.e);
    var_1 = func_2();
    let var_2 = Struct_1(vec4<f32>(-264f, _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(exp2(arg_0.c.x)), global1.b)), -268f, _wgslsmith_f_op_f32(global1.c.x + -365f)), !var_1.d, vec2<bool>(global1.e.x, !(_wgslsmith_clamp_u32(35321u, 1u, 0u) < 1u)), !vec3<bool>(true, func_2().c.x, !global0.b));
    global0 = Struct_2(14137i, !var_1.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-119f, 263f)) + -1000f), -992f, -857f)), 922f, select(vec3<bool>(!(false == var_2.d.x), global1.e.x, !(-517f >= var_2.a.x)), select(global0.e, vec3<bool>(func_2().b.x, global0.b, true), vec3<bool>(var_2.b.x, -1026f > var_1.a.x, !arg_0.b)), true));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(global0.a, u_input.a, -26980i, 2147483647i) | (vec4<i32>(u_input.a, arg_0.a, global1.a, global0.a) | vec4<i32>(2147483647i, -2147483647i, 0i, -34386i)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-18701i, -1i, u_input.a, arg_0.a), vec4<i32>(arg_0.a, global1.a, 0i, 0i)), ~vec4<i32>(u_input.a, 19916i, 5119i, u_input.a))), countOneBits(firstLeadingBit(select(vec4<i32>(-31672i, u_input.a, global0.a, -9893i), vec4<i32>(13140i, global1.a, 2147483647i, 0i), global0.e.x)))), reverseBits((~vec4<i32>(-33917i, 0i, -27792i, -15826i) & _wgslsmith_sub_vec4_i32(vec4<i32>(global1.a, u_input.a, global1.a, -18178i), vec4<i32>(u_input.a, u_input.a, global1.a, -1i))) | (vec4<i32>(-20343i, global1.a, -19081i, u_input.a) >> (vec4<u32>(0u, 1u, 1u, 0u) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-468f + -195f))), 1432f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1748f)), global0.c.x), -1608f), vec3<bool>(global1.a < _wgslsmith_mod_i32(~global0.a, func_1(Struct_2(global1.a, global1.b, global1.c, 554f, global0.e))), global0.e.x, func_2().d.x), global0.e.yx, !select(!global0.e, global1.e, all(!global0.e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.c.x), -_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(max(vec2<i32>(24665i, -44516i), vec2<i32>(2147483647i, -2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(global0.a, global1.a))), vec2<i32>(global1.a, global0.a) | vec2<i32>(31319i, global0.a)));
}

