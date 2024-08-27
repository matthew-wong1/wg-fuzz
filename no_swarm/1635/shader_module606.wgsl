struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: vec2<f32> = vec2<f32>(-900f, 795f);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    let var_0 = 4294967295u;
    return global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(25433u, 31792u, _wgslsmith_add_u32(firstLeadingBit(arg_0.x), 10733u)), 11u)];
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>) -> vec2<u32> {
    global1 = _wgslsmith_div_vec2_f32(vec2<f32>(290f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x + -120f))) + _wgslsmith_f_op_f32(func_3(u_input.a.xx << (vec2<u32>(57051u, arg_0.d.x) % vec2<u32>(32u)))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-715f, 587f)))))));
    let var_0 = arg_0;
    global0 = array<f32, 11>();
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_2.x, 11u)] + 1533f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 11u)] + -763f)), global1.x)));
    let var_1 = Struct_2(!arg_0.b.x, !var_0.b, select(arg_0.c, arg_1.c, !select(!vec3<bool>(arg_1.c.x, var_0.b.x, var_0.a), vec3<bool>(false, arg_1.a, true), true)), ~select(select(arg_0.d, ~arg_1.d, !vec3<bool>(false, var_0.c.x, true)), ~max(arg_1.d, arg_0.d), vec3<bool>(arg_1.c.x, 51069u == arg_0.e.x, arg_0.a)), vec2<u32>(reverseBits(min(_wgslsmith_clamp_u32(arg_2.x, arg_1.d.x, 0u), arg_0.e.x)), 0u));
    return (firstLeadingBit(~min(vec2<u32>(arg_0.e.x, 13317u), vec2<u32>(var_0.d.x, arg_2.x))) << (arg_0.d.xy % vec2<u32>(32u))) >> (firstTrailingBit(abs(var_0.e)) % vec2<u32>(32u));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    let var_0 = arg_2;
    let var_1 = firstTrailingBit(~(~select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 21402u, arg_1.e.x), vec4<u32>(u_input.a.x, 52562u, u_input.a.x, 55379u)), ~vec4<u32>(arg_1.e.x, arg_1.e.x, 4294967295u, arg_0.x), select(false, false, true))));
    var var_2 = var_0;
    let var_3 = 803f;
    let var_4 = var_2.b.x;
    return var_0.a | (i32(-1i) * -2147483647i);
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(arg_1.b, firstTrailingBit(vec4<i32>(arg_1.b.x, -19193i, arg_1.b.x, arg_1.b.x))) | -1i, -38152i >> (~_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, 1u), 16506u) % 32u));
    var var_1 = Struct_1(arg_0, ~firstLeadingBit(_wgslsmith_sub_vec4_i32(arg_1.b, vec4<i32>(1i, var_0, -1i, 45351i)) | abs(vec4<i32>(-2147483647i, arg_1.b.x, var_0, arg_1.a))), arg_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_1.d)))));
    return Struct_1(0i, firstLeadingBit(vec4<i32>(-arg_0, ~1i, var_0, 0i)), !any(select(select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(false, false), vec2<bool>(arg_1.c, arg_1.c)), !vec2<bool>(false, var_1.c), true)), vec2<f32>(-427f, _wgslsmith_f_op_f32(-var_1.d.x)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: bool) -> f32 {
    var var_0 = firstLeadingBit(-25199i);
    let var_1 = func_5(~2147483647i, Struct_1(func_4(vec3<u32>(0u, u_input.a.x, 25899u) >> (vec3<u32>(1u, 0u, u_input.a.x) % vec3<u32>(32u)), Struct_2(arg_2, vec4<bool>(arg_2, arg_2, false, true), select(vec3<bool>(false, arg_2, false), vec3<bool>(arg_2, false, arg_2), arg_2), u_input.a, func_2(Struct_2(arg_2, vec4<bool>(arg_2, true, true, false), vec3<bool>(arg_2, arg_2, true), u_input.a, u_input.a.zy), Struct_2(false, vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec3<bool>(false, arg_2, arg_2), u_input.a, u_input.a.zz), vec4<u32>(15573u, 4294967295u, u_input.a.x, u_input.a.x))), Struct_1(firstLeadingBit(11317i), select(vec4<i32>(0i, 2898i, arg_0.x, -1i), vec4<i32>(-25388i, 21867i, -31768i, 2485i), vec4<bool>(arg_2, false, arg_2, true)), true, arg_1)), ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(1i, 12804i, arg_0.x, arg_0.x))), !arg_2, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(722f, global1.x) - arg_1)))));
    global1 = vec2<f32>(-1371f, -1236f);
    return -372f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, firstLeadingBit(-65553i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(-2737i, 0i))), vec3<i32>(_wgslsmith_clamp_i32(1i, 6377i, 0i), -2147483647i, _wgslsmith_add_i32(5170i, -1i))), _wgslsmith_sub_vec3_i32(-vec3<i32>(24605i, -12694i, 3560i), max(firstLeadingBit(vec3<i32>(-2147483647i, -9384i, 1i)), ~vec3<i32>(32793i, 0i, 7927i)))) | 1i;
    var var_1 = vec3<f32>(312f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~vec3<i32>(-29081i, var_0, var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global1.x)), true)))), global1.x);
    let var_2 = vec4<bool>(!(!any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)))), !(!all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false))), true, func_5(func_5(~12981i, func_5(0i, func_5(-12043i, Struct_1(-1i, vec4<i32>(var_0, var_0, 0i, 1i), false, vec2<f32>(-235f, 357f))))).b.x, func_5(1i, func_5(-var_0, func_5(var_0, Struct_1(var_0, vec4<i32>(var_0, 0i, -5453i, -2147483647i), false, vec2<f32>(global1.x, 1022f)))))).c);
    global1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-292f, var_1.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xz) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(6605u, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)])))))));
    var var_3 = var_1.xx;
    var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, _wgslsmith_f_op_f32(min(150f, global0[_wgslsmith_index_u32(u_input.a.x, 11u)]))) + _wgslsmith_f_op_vec2_f32(var_1.xz * var_1.yz)), vec2<f32>(func_5(0i >> (u_input.a.x % 32u), func_5(12196i, Struct_1(-2766i, vec4<i32>(0i, 0i, 2147483647i, 7133i), var_2.x, var_1.xy))).d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x)))))) - var_1.xz);
    var var_4 = func_5(-31451i, Struct_1(i32(-1i) * -3102i, firstLeadingBit(_wgslsmith_sub_vec4_i32(select(vec4<i32>(2147483647i, 14196i, var_0, var_0), vec4<i32>(34948i, var_0, var_0, -3021i), false), ~vec4<i32>(var_0, var_0, 7843i, var_0))), _wgslsmith_f_op_f32(func_3(~u_input.a.yz)) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(296f - var_1.x))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_1.zz)))));
    var var_5 = firstLeadingBit(1u);
    let var_6 = func_5(-1i, func_5(var_0, Struct_1(var_0, ~(~var_4.b), !var_2.x, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2178f, global1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_6.d.x, 899f, _wgslsmith_f_op_f32(abs(-318f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 225f)))), _wgslsmith_div_i32(-((37048i << (u_input.a.x % 32u)) >> (~44903u % 32u)), -66280i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(~var_6.b.wxz, vec2<f32>(var_3.x, var_4.d.x), true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-483f, _wgslsmith_f_op_f32(-var_6.d.x))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 251f)))));
}

