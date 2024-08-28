struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = false;

var<private> global2: bool;

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<i32>(0i, 0i), 1090f), Struct_1(vec2<i32>(0i, 0i), -1258f), Struct_1(vec2<i32>(-40656i, -55139i), 751f), Struct_1(vec2<i32>(18510i, 60760i), -611f), Struct_1(vec2<i32>(-1i, 18088i), -539f), Struct_1(vec2<i32>(1i, -13035i), 1194f), Struct_1(vec2<i32>(i32(-2147483648), 4014i), -1527f), Struct_1(vec2<i32>(-1i, -24751i), -1000f), Struct_1(vec2<i32>(39126i, -1i), 296f), Struct_1(vec2<i32>(2147483647i, 2147483647i), 420f), Struct_1(vec2<i32>(-10085i, 2147483647i), -1000f), Struct_1(vec2<i32>(-17935i, i32(-2147483648)), -2236f));

var<private> global4: array<vec2<u32>, 14>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = false;
    global4 = array<vec2<u32>, 14>();
    let var_1 = select(vec2<bool>(true, any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)))), select(!vec2<bool>(all(vec4<bool>(true, true, false, false)), 0u >= arg_0), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), false)), true | select(true, all(vec4<bool>(false, true, false, false)), any(vec4<bool>(true, true, false, true))));
    var var_2 = Struct_1(vec2<i32>(-global0.a.x, global0.a.x), -595f);
    let var_3 = global3[_wgslsmith_index_u32(arg_0, 12u)];
    return -var_3.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> vec3<i32> {
    let var_0 = vec3<f32>(1429f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-392f, arg_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b * -1000f))))), _wgslsmith_f_op_f32(select(-1720f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1280f - 2271f) * _wgslsmith_f_op_f32(step(global0.b, arg_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b * -1994f) - _wgslsmith_f_op_f32(-arg_0.b)), true)), false)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(320f - _wgslsmith_f_op_f32(var_0.x - -1320f))))), global0.b, _wgslsmith_f_op_f32(sign(var_0.x)));
    var var_2 = 1u;
    var var_3 = 50922i;
    let var_4 = !select(vec4<bool>(!all(vec4<bool>(false, false, true, false)), true, _wgslsmith_dot_vec2_i32(arg_0.a, vec2<i32>(global0.a.x, -2147483647i)) >= _wgslsmith_sub_i32(-34630i, global0.a.x), true), vec4<bool>(!(-36880i <= arg_1.a.x), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(-global0.b) == _wgslsmith_f_op_f32(f32(-1f) * -1000f), any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    return max(abs(vec3<i32>(abs(-arg_0.a.x), 1i, reverseBits(-17366i))), u_input.e);
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = Struct_1(reverseBits(min(vec2<i32>(global0.a.x, -1i), vec2<i32>(u_input.a, 2452i) ^ ~u_input.e.zy)), _wgslsmith_f_op_f32(f32(-1f) * -121f));
    var var_1 = -(~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -1i, global0.a.x, var_0.a.x), vec4<i32>(2147483647i, var_0.a.x, -32421i, var_0.a.x) << (vec4<u32>(u_input.c, 1u, u_input.c, u_input.c) % vec4<u32>(32u)))) >> ((vec4<u32>(~_wgslsmith_add_u32(u_input.c, 24518u), ~reverseBits(61714u), _wgslsmith_clamp_u32(u_input.c | 89671u, 8322u | u_input.c, reverseBits(0u)), u_input.c ^ max(u_input.c, u_input.c)) << (vec4<u32>(13961u, _wgslsmith_dot_vec2_u32(vec2<u32>(21870u, 4294967295u), vec2<u32>(0u, u_input.c)) | u_input.c, 0u, ~(~u_input.c)) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_2 = func_4(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(19213u, 1u, 1u))), ~_wgslsmith_div_vec3_u32(~vec3<u32>(0u, 31345u, u_input.c), ~vec3<u32>(30025u, 0u, u_input.c))), 12u)], Struct_1(-var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))), Struct_1(min(~(-vec2<i32>(global0.a.x, var_0.a.x)), vec2<i32>(_wgslsmith_mult_i32(-1i, var_0.a.x), func_3(u_input.c))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 * -1231f)))))), ~_wgslsmith_div_vec2_u32(vec2<u32>(1u | u_input.c, _wgslsmith_sub_u32(u_input.c, 21719u)), ~(vec2<u32>(54283u, 4843u) ^ vec2<u32>(4294967295u, u_input.c))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, global0.b) * vec2<f32>(global0.b, -1272f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(767f, arg_0) - vec2<f32>(var_0.b, 970f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-563f, global0.b))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b, arg_0))))))))));
    global4 = array<vec2<u32>, 14>();
    return true;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = select(false, !func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b + 1218f) * -2650f)), any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))) == any(select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), true)));
    var_0 = all(vec3<bool>(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b + -1585f) - _wgslsmith_div_f32(-1020f, global0.b))), any(select(vec2<bool>(false, false), vec2<bool>(true, true), any(vec2<bool>(false, true)))), ((21267u << (u_input.c % 32u)) != u_input.c) & true));
    global3 = array<Struct_1, 12>();
    let var_1 = countOneBits(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_0, abs(49018u)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(91432u, u_input.c), ~0u))) == min(~1u, 1u);
    var var_2 = global3[_wgslsmith_index_u32(arg_0 ^ arg_0, 12u)];
    return Struct_1(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), 643f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3[_wgslsmith_index_u32(u_input.c, 12u)];
    var var_0 = func_1(u_input.c, Struct_1(_wgslsmith_mod_vec2_i32(global0.a, u_input.e.xy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -169f))));
    var var_1 = global3[_wgslsmith_index_u32(~(~1u), 12u)];
    let var_2 = _wgslsmith_add_u32(61541u, min(~4294967295u, _wgslsmith_add_u32(u_input.c, _wgslsmith_sub_u32(u_input.c, u_input.c)) & 59132u));
    var var_3 = global4[_wgslsmith_index_u32(~(~var_2) >> (~1u % 32u), 14u)];
    let var_4 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(757f, var_0.b)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_0.b), vec2<f32>(global0.b, var_1.b)))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, 1369f) + vec2<f32>(-440f, global0.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(958f, 1067f) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.b, 1190f))))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -731f), func_1(u_input.c, Struct_1(var_0.a, global0.b)).b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.b, 234f)))), !(~var_2 != (var_2 << (var_2 % 32u)))))));
    global0 = func_1(~var_2, func_1(var_3.x & firstTrailingBit(var_2), func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_3.x, var_2), _wgslsmith_div_vec3_u32(vec3<u32>(34082u, var_2, 11439u), vec3<u32>(var_2, 0u, 0u))), func_1(firstLeadingBit(var_2), Struct_1(vec2<i32>(var_1.a.x, 2147483647i), global0.b)))));
    var_3 = ~global4[_wgslsmith_index_u32(abs(u_input.c), 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(u_input.e, _wgslsmith_mult_vec3_i32(abs(~vec3<i32>(var_1.a.x, -9541i, var_1.a.x)), ~vec3<i32>(0i, -35536i, -1i))));
}

