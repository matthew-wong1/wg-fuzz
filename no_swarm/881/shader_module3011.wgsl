struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: f32,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = true;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: i32) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x))), arg_1.x, -266f);
    global0 = Struct_1(73132u & (0u | (global0.a & (0u | global0.a))), select(vec2<bool>(!global0.b.x & global0.b.x, true), global0.b, select(select(vec2<bool>(true, global0.b.x), vec2<bool>(false, global0.b.x), global0.b), select(vec2<bool>(false, true), vec2<bool>(global0.b.x, false), vec2<bool>(global0.b.x, false)), global0.b.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, -192f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1), _wgslsmith_f_op_vec3_f32(-arg_1)), global0.b.x))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * var_0.x) - 137f), -1000f)), _wgslsmith_f_op_f32(trunc(-388f)));
    let var_2 = Struct_2(vec4<bool>(all(!select(vec3<bool>(global0.b.x, true, global0.b.x), vec3<bool>(false, true, false), global0.b.x)), global0.b.x, global0.b.x, global0.b.x), global0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(419f, -191f))), !(!select(vec3<bool>(global0.b.x, global0.b.x, true), select(vec3<bool>(global0.b.x, global0.b.x, global0.b.x), vec3<bool>(true, true, global0.b.x), vec3<bool>(true, global0.b.x, global0.b.x)), !vec3<bool>(true, global0.b.x, false))), firstLeadingBit(select(abs(arg_0), arg_0, vec4<bool>(true, global0.b.x, false, false))));
    return 1000f;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = -169f;
    let var_1 = vec3<bool>(true, _wgslsmith_f_op_f32(sign(848f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -659f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(630f, 168f))), true);
    let var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(-21380i, u_input.a, u_input.a, 11651i), vec3<f32>(2343f, -1790f, -1240f), -1i))), -1801f, _wgslsmith_f_op_f32(func_3(vec4<i32>(-2147483647i, u_input.a, 1i, u_input.a), vec3<f32>(410f, 2090f, 225f), 3361i)) != 2360f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2344f + 1092f), _wgslsmith_div_f32(-111f, _wgslsmith_f_op_f32(ceil(-315f))))));
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x)));
    return Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(0u, global0.a, 0u, arg_2.x), vec4<u32>(0u, 0u, global0.a, var_2.x), true), vec4<u32>(var_2.x, arg_0, global0.a, arg_0) & vec4<u32>(1u, 25946u, 4294967295u, arg_0)), _wgslsmith_sub_vec4_u32(~vec4<u32>(global0.a, 47707u, var_2.x, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, var_2.x, arg_2.x), vec4<u32>(arg_2.x, 0u, var_2.x, 53978u)))) >> (19524u % 32u), select(!select(select(vec2<bool>(arg_3.x, var_1.x), vec2<bool>(true, false), var_1.zz), select(var_1.yy, vec2<bool>(false, global0.b.x), vec2<bool>(global0.b.x, arg_3.x)), true), select(var_1.yy, !var_1.zz, false), vec2<bool>(any(vec4<bool>(true, true, true, true)), !var_1.x)));
}

fn func_1(arg_0: bool) -> vec4<i32> {
    let var_0 = !arg_0;
    let var_1 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_add_u32(~1u, 1u), global0.a), global0.b);
    global1 = true;
    global0 = func_2(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(abs(5089u), global0.a, global0.a), ~(~26309u), _wgslsmith_clamp_u32(var_1.a, 1u, var_1.a) ^ 54065u), vec2<i32>(-u_input.a, firstLeadingBit(-341i)), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(var_1.a, global0.a, 17267u)) ^ firstTrailingBit(vec3<u32>(var_1.a, 4294967295u, global0.a)), vec3<u32>(1u, 0u, global0.a | var_1.a) ^ ~abs(vec3<u32>(1u, 5869u, global0.a))), var_1.b);
    var var_2 = vec2<u32>(~_wgslsmith_clamp_u32(9276u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a, 1u, global0.a), vec3<u32>(global0.a, 4294967295u, var_1.a), vec3<u32>(4638u, var_1.a, 4294967295u)), abs(vec3<u32>(global0.a, var_1.a, var_1.a))), 1u), abs(_wgslsmith_div_u32(var_1.a, ~_wgslsmith_clamp_u32(global0.a, 0u, var_1.a))));
    return -(~vec4<i32>(-u_input.a, -(-2147483647i & u_input.a), 3562i, ~u_input.a));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = func_2(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(1u, global0.a, 4294967295u, 83293u)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(global0.a, global0.a, 0u, global0.a), vec4<u32>(global0.a, global0.a, global0.a, 124864u)))), ~(~(~26618u)), global0.a), _wgslsmith_mult_vec2_i32(arg_1.zz | arg_1.ww, vec2<i32>(_wgslsmith_mult_i32(select(-6902i, -2147483647i, false), ~arg_2), 1i)), firstLeadingBit(~select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global0.a, 6738u), vec3<u32>(global0.a, 83770u, global0.a), vec3<u32>(4294967295u, global0.a, global0.a)), ~vec3<u32>(global0.a, global0.a, global0.a), false)), arg_3.d.zy);
    let var_1 = countOneBits(-arg_2);
    var var_2 = func_2(_wgslsmith_mod_u32(global0.a | 4294967295u, abs(min(92756u, ~global0.a))), vec2<i32>(func_1(arg_3.c > arg_3.c).x, -1i) & arg_3.e.zz, firstLeadingBit(~vec3<u32>(41269u, 29331u, var_0.a)), !vec2<bool>(!(!global0.b.x), global0.b.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_3.c - 154f), -2711f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(785f, arg_3.c)))))));
    var var_4 = var_0.a;
    return !vec4<bool>(var_2.b.x, false, global0.b.x, false);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> Struct_2 {
    global1 = global0.b.x;
    var var_0 = select(2147483647i, select(~6360i, u_input.a, true), arg_0.x);
    let var_1 = Struct_1(~1u, select(global0.b, vec2<bool>(!all(arg_1.a), !global0.b.x), _wgslsmith_f_op_f32(floor(-713f)) > -1270f));
    global1 = false;
    global1 = all(!var_1.b);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-641f)))))), 644f);
    global1 = true;
    var var_2 = func_5(select(select(vec3<bool>(true, true, true), vec3<bool>(!global0.b.x, all(vec3<bool>(global0.b.x, false, global0.b.x)), var_1 > 1242f), false), !select(!vec3<bool>(global0.b.x, true, global0.b.x), vec3<bool>(global0.b.x, false, global0.b.x), global0.b.x), var_1 >= -536f), Struct_2(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), false), !vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), true), select(select(vec4<bool>(true, true, global0.b.x, true), vec4<bool>(false, global0.b.x, global0.b.x, true), true), !vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), select(vec4<bool>(true, false, false, true), vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x), vec4<bool>(false, true, global0.b.x, global0.b.x))), func_4(i32(-1i) * -5070i, func_1(false), _wgslsmith_div_i32(u_input.a, 0i), Struct_2(vec4<bool>(false, global0.b.x, global0.b.x, global0.b.x), global0.b, var_1, vec3<bool>(true, global0.b.x, global0.b.x), vec4<i32>(u_input.a, u_input.a, 42546i, u_input.a)))), func_4(u_input.a, vec4<i32>(_wgslsmith_mod_i32(u_input.a, 2147483647i), u_input.a, -50585i, _wgslsmith_dot_vec4_i32(vec4<i32>(32437i, -40799i, -2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, 0i, -1i))), ~(-33605i), Struct_2(!vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true), !vec2<bool>(global0.b.x, global0.b.x), _wgslsmith_f_op_f32(sign(var_1)), !vec3<bool>(false, global0.b.x, global0.b.x), abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)))).xx, 302f, select(vec3<bool>(global0.b.x, global0.b.x, true), !select(vec3<bool>(true, global0.b.x, false), vec3<bool>(global0.b.x, false, global0.b.x), true), vec3<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(global0.b.x, true)), true)), -_wgslsmith_add_vec4_i32(-vec4<i32>(13728i, 2147483647i, u_input.a, u_input.a), min(vec4<i32>(2147483647i, -15142i, 0i, -2147483647i), vec4<i32>(2147483647i, u_input.a, u_input.a, 30213i)))), global0.b.x, _wgslsmith_div_i32(u_input.a, ~u_input.a));
    let var_3 = func_5(!(!var_2.d), func_5(vec3<bool>(global0.b.x, any(var_2.a) || var_2.d.x, var_2.d.x), Struct_2(!vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x), select(global0.b, !global0.b, false), var_1, !select(var_2.d, var_2.d, var_2.a.xxy), _wgslsmith_mult_vec4_i32(vec4<i32>(18905i, u_input.a, u_input.a, 2147483647i), ~var_2.e)), var_2.a.x, -u_input.a), all(var_2.a.xyz), func_5(!func_5(select(vec3<bool>(global0.b.x, true, var_2.b.x), vec3<bool>(var_2.d.x, true, true), vec3<bool>(global0.b.x, var_2.a.x, true)), Struct_2(vec4<bool>(global0.b.x, var_2.b.x, false, false), vec2<bool>(global0.b.x, global0.b.x), var_2.c, var_2.a.wzy, vec4<i32>(u_input.a, -2147483647i, var_2.e.x, u_input.a)), global0.b.x, _wgslsmith_add_i32(0i, 17952i)).a.xzy, func_5(var_2.d, Struct_2(func_4(u_input.a, vec4<i32>(var_2.e.x, -2147483647i, 1i, var_2.e.x), u_input.a, Struct_2(vec4<bool>(false, true, global0.b.x, var_2.a.x), var_2.b, -1013f, vec3<bool>(global0.b.x, var_2.a.x, false), vec4<i32>(u_input.a, var_2.e.x, u_input.a, var_2.e.x))), vec2<bool>(true, true), _wgslsmith_f_op_f32(var_1 + var_2.c), var_2.a.wyz, -vec4<i32>(var_2.e.x, u_input.a, -22580i, -2147483647i)), true, u_input.a << (global0.a % 32u)), func_2(countOneBits(_wgslsmith_sub_u32(global0.a, global0.a)), vec2<i32>(~5885i, 0i), ~vec3<u32>(global0.a, global0.a, global0.a) | abs(vec3<u32>(23513u, global0.a, global0.a)), select(var_2.a.wz, select(var_2.d.zy, vec2<bool>(true, global0.b.x), global0.b.x), func_5(var_2.d, Struct_2(var_2.a, vec2<bool>(true, false), 985f, var_2.d, var_2.e), var_2.d.x, 1i).b)).b.x, min(0i, var_2.e.x)).e.x);
    let var_4 = func_5(!(!func_4(u_input.a, vec4<i32>(2147483647i, var_3.e.x, u_input.a, var_2.e.x) | vec4<i32>(0i, 1i, -21480i, var_3.e.x), u_input.a, var_3).zzw), Struct_2(!vec4<bool>(true, all(var_3.d.zy), any(vec3<bool>(false, false, global0.b.x)), false), vec2<bool>(false, (var_3.e.x < 1i) || true), -636f, vec3<bool>(global0.b.x, all(func_5(var_2.a.yyw, Struct_2(vec4<bool>(var_2.b.x, true, true, var_2.b.x), var_2.a.wz, var_2.c, var_2.a.wwy, var_2.e), var_2.b.x, var_2.e.x).b), _wgslsmith_f_op_f32(var_1 + var_3.c) >= 1061f), select(var_2.e & -var_3.e, var_2.e, !(var_3.a.x | var_3.d.x))), !func_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, global0.a, global0.a, global0.a), vec4<u32>(global0.a, global0.a, global0.a, 46299u)), vec2<i32>(func_5(vec3<bool>(false, false, var_3.d.x), var_3, global0.b.x, u_input.a).e.x, 1i), ~firstLeadingBit(vec3<u32>(42457u, 4294967295u, global0.a)), vec2<bool>(var_2.d.x, !var_3.d.x)).b.x, -_wgslsmith_mod_i32(36970i, 9373i) | select(_wgslsmith_mod_i32(_wgslsmith_mult_i32(18787i, 14822i), 22616i), 2147483647i, func_4(0i, var_3.e, -1i, func_5(var_3.a.zyw, var_3, true, 1i)).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(536f * var_2.c), var_4.c));
}

