struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(1354f, -713f), Struct_1(0i), Struct_1(58005i), Struct_1(1i), 47587u);

var<private> global1: bool;

var<private> global2: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1, arg_3: vec2<f32>) -> vec3<bool> {
    let var_0 = 37645u;
    var var_1 = -1i;
    var var_2 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(40865u >= arg_0.x, true, false, true), vec4<bool>(true, false, all(vec3<bool>(true, true, true)), false))) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -335f) * arg_3.x) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(168f - arg_3.x) * _wgslsmith_f_op_f32(min(126f, 1958f))))));
    var var_3 = Struct_1(~arg_1);
    let var_4 = _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -892f)))));
    return !vec3<bool>(any(select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))), any(vec2<bool>(true, true)) | true, countOneBits(~4294967295u) != ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0, 107338u, global0.e), vec4<u32>(6366u, global0.e, 39556u, var_0)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec4_i32(-min(vec4<i32>(-1i) * -vec4<i32>(9960i, -2147483647i, global0.d.a, 1313i), -(vec4<i32>(-5385i, 9902i, -30905i, global0.c.a) >> (vec4<u32>(4294967295u, 0u, global0.e, 0u) % vec4<u32>(32u)))), -select(select(vec4<i32>(u_input.a.x, global0.c.a, -1i, u_input.a.x), vec4<i32>(14519i, u_input.a.x, -2147483647i, global0.b.a), vec4<bool>(arg_0, arg_0, false, false)), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, global0.b.a, global0.d.a)), !vec4<bool>(arg_0, arg_0, arg_0, false)) & vec4<i32>(firstTrailingBit(-36257i >> (0u % 32u)), select(~global0.d.a, -10475i >> (0u % 32u), true), _wgslsmith_add_i32(0i, u_input.a.x), global0.b.a));
    let var_1 = all(select(vec3<bool>(arg_0, any(vec4<bool>(true, false, arg_0, false)), false), !select(select(vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, true, arg_0), false), vec3<bool>(true, arg_0, arg_0), func_3(vec2<u32>(29090u, global0.e), var_0, Struct_1(-1i), global0.a)), arg_0));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1434f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -909f))), global0.a)), Struct_1(global0.c.a), Struct_1(_wgslsmith_sub_i32(global0.d.a, var_0)), Struct_1(-50968i), firstLeadingBit(global0.e));
    let var_2 = Struct_3(firstLeadingBit(~min(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))));
    let var_3 = vec4<u32>(1u, ~firstLeadingBit(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, var_2.a.x, global0.e, 5769u)), reverseBits(vec4<u32>(var_2.a.x, 0u, 4294967295u, var_2.a.x)))), _wgslsmith_mult_u32(global0.e | 27798u, 60777u), _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.x, 4294967295u, var_2.a.x), countOneBits(vec3<u32>(28610u, 1u, 4294967295u))), 35428u));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_vec2_f32(ceil(global0.a)), select(vec2<bool>(false, false), select(vec2<bool>(arg_0, false), vec2<bool>(var_1, false), var_1), !var_1))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(global0.a)), global0.a, var_1)))), Struct_1(2147483647i), Struct_1(_wgslsmith_clamp_i32(0i, _wgslsmith_add_i32(~(-18090i), _wgslsmith_mult_i32(1i, u_input.a.x)), select(u_input.a.x ^ -2147483647i, -global0.d.a, any(vec3<bool>(true, false, true))))), global0.d, ~_wgslsmith_mult_u32(countOneBits(abs(1u)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_2.a.x, 42350u), _wgslsmith_div_u32(global0.e, 0u), 1u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> Struct_2 {
    let var_0 = global0.a.x;
    let var_1 = 1234f;
    var var_2 = Struct_3(abs(countOneBits(select(vec2<u32>(4294967295u, arg_0.x), _wgslsmith_mult_vec2_u32(arg_0, arg_0), arg_3))));
    let var_3 = !arg_3;
    var var_4 = global0.e;
    return arg_1;
}

fn func_1(arg_0: bool) -> Struct_2 {
    global0 = func_4(~vec2<u32>(min(global0.e, global0.e) << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.e), vec2<u32>(64827u, 19397u)) % 32u), 1u >> (_wgslsmith_mult_u32(global0.e, global0.e) % 32u)), func_2(!(!arg_0)), ~(-20473i), arg_0);
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(21758u, ~global0.e) >> (~(vec2<u32>(global0.e, 21480u) >> (vec2<u32>(39076u, global0.e) % vec2<u32>(32u))) % vec2<u32>(32u)), ~(~abs(vec2<u32>(29028u, 1u)))) >> (abs(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(47628u, global0.e), vec2<u32>(global0.e, 45181u) | vec2<u32>(0u, global0.e)))) % vec2<u32>(32u));
    global0 = func_2(!any(select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, false, arg_0, false), false)) || true);
    let var_1 = Struct_1(countOneBits(global0.b.a & global0.b.a));
    let var_2 = global0.a.x;
    return Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1380f, global0.a.x))))))), Struct_1(~(-1i)), var_1, Struct_1(1i), 4294967295u);
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(-arg_1.a.x));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1130f), _wgslsmith_f_op_f32(sign(966f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 906f)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global0.a.x)))) - arg_0));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(false).a.x + _wgslsmith_f_op_f32(trunc(-1674f))) * global0.a.x))));
    var var_2 = arg_2;
    var var_3 = !vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)) | true, !any(vec2<bool>(false, true)));
    return Struct_3(select(_wgslsmith_div_vec2_u32(~vec2<u32>(global0.e, global0.e), vec2<u32>(97261u, 21674u)), vec2<u32>(arg_1.e, global0.e) & (vec2<u32>(global0.e, arg_1.e) << (vec2<u32>(global0.e, 4294967295u) % vec2<u32>(32u))), !(!var_3.x)) >> (select(vec2<u32>(12495u, 1u), ~vec2<u32>(0u, 44618u), !select(vec2<bool>(true, false), vec2<bool>(var_3.x, true), var_3.x)) % vec2<u32>(32u)));
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: u32, arg_3: f32) -> Struct_1 {
    global2 = func_4(arg_0.a >> (vec2<u32>(global0.e, ~abs(arg_0.a.x)) % vec2<u32>(32u)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(false).a - _wgslsmith_f_op_vec2_f32(ceil(global0.a)))), func_2(false).d, func_4(max(firstTrailingBit(arg_0.a), vec2<u32>(68056u, arg_0.a.x)), Struct_2(func_2(false).a, func_2(true).d, Struct_1(-2147483647i), func_1(false).d, ~global0.e), ~_wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.xz), !func_3(vec2<u32>(arg_0.a.x, 1u), 31821i, Struct_1(arg_1), vec2<f32>(-468f, 1130f)).x).d, global0.d, ~arg_2), (-2147483647i & -arg_1) ^ ~(-45250i), select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a.x, arg_3))), !(any(vec2<bool>(true, false)) & true), _wgslsmith_div_u32(~arg_2, 46092u) >= _wgslsmith_mod_u32(~arg_0.a.x, 1u))).a.x;
    global0 = func_4(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, abs(_wgslsmith_mod_u32(global0.e, arg_0.a.x))), vec2<u32>(abs(1u), arg_0.a.x)), Struct_2(global0.a, func_4(vec2<u32>(24223u, global0.e << (58128u % 32u)), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, -573f)), Struct_1(16633i), Struct_1(30276i), Struct_1(global0.b.a), 0u), arg_1, (i32(-1i) * -1i) > _wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(arg_1, -2147483647i))).b, func_1(true).b, global0.c, func_2(true).e), 2147483647i, true);
    var var_0 = -1i;
    return func_2(!all(vec2<bool>(true, true))).d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = (firstLeadingBit(~max(global0.b.a, 1i)) < global0.d.a) != all(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true)));
    let var_0 = func_6(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(231f, global0.a.x) * _wgslsmith_div_f32(1000f, global0.a.x))), func_1(select(false, true, any(vec3<bool>(false, false, true)))), Struct_1(-18659i)), ~func_1(true).c.a, global0.e, _wgslsmith_f_op_f32(-154f - _wgslsmith_f_op_f32(-global0.a.x)));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a.x + global0.a.x), -183f)))))), 808f));
    var var_2 = global0.e;
    global0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1129f - _wgslsmith_f_op_f32(-global0.a.x))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-143f * global0.a.x) - _wgslsmith_f_op_f32(-global0.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -911f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(4294967295u, 1u));
}

