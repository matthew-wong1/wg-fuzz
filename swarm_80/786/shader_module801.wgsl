struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: Struct_1 = Struct_1(1i, -1459f);

var<private> global1: array<f32, 13>;

var<private> global2: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false));

var<private> global3: bool = false;

var<private> global4: Struct_1 = Struct_1(-12701i, -1274f);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = !vec4<bool>(true, !(!(u_input.a <= u_input.b)), arg_0.x, !(_wgslsmith_f_op_f32(ceil(1466f)) >= global4.b));
    let var_1 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(59300u, 13u)]);
    let var_2 = -2147483647i;
    let var_3 = global0.a & (global4.a ^ ~(-global4.a));
    let var_4 = arg_1;
    return 17407u;
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    global4 = Struct_1(~global0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1191f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1956f))) * _wgslsmith_f_op_f32(min(global0.b, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, func_3(vec4<bool>(true, false, false, false), arg_3)), 13u)]))));
    global0 = Struct_1(_wgslsmith_div_i32(_wgslsmith_div_i32(arg_0, ~countOneBits(arg_0)), 35478i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(921f))));
    let var_0 = Struct_1(max(_wgslsmith_add_i32(global0.a, -global0.a >> (u_input.a % 32u)), ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, global4.a), vec2<i32>(-1i, arg_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x)))) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 13u)] + -842f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(1362f)), 124f, global4.b, 1533f));
    global1 = array<f32, 13>();
    return arg_3;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_2(abs(_wgslsmith_sub_i32(func_2(arg_0.a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.b, global1[_wgslsmith_index_u32(u_input.a, 13u)]))), ~vec4<i32>(28884i, 0i, arg_0.a, -9123i), func_2(arg_0.a, vec2<f32>(801f, 127f), vec4<i32>(global4.a, 2147483647i, -1i, global4.a), arg_0)).a, -30001i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.b, 784f)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-972f * global1[_wgslsmith_index_u32(u_input.b, 13u)]) + global0.b), _wgslsmith_div_f32(global4.b, _wgslsmith_f_op_f32(max(1441f, arg_0.b))))), _wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0.a), vec2<i32>(arg_0.a, arg_0.a)), countOneBits(-23797i), arg_0.a, global4.a), countOneBits(-(vec4<i32>(global4.a, global4.a, global0.a, global0.a) << (vec4<u32>(u_input.a, 4294967295u, u_input.b, 85712u) % vec4<u32>(32u))))), Struct_1(global4.a, global4.b));
    let var_1 = func_2(abs(37987i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1021f, 762f) + vec2<f32>(global1[_wgslsmith_index_u32(21789u, 13u)], var_0.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-451f, -215f) + vec2<f32>(-1218f, -1499f))))), firstLeadingBit(-_wgslsmith_mod_vec4_i32(max(vec4<i32>(var_0.a, -42739i, global4.a, 16634i), vec4<i32>(global4.a, global4.a, -1489i, global0.a)), ~vec4<i32>(46444i, 6878i, global4.a, arg_0.a))), Struct_1(arg_0.a, _wgslsmith_f_op_f32(trunc(953f))));
    let var_2 = -(~firstLeadingBit(abs(-vec2<i32>(-1i, var_0.a))));
    var var_3 = ~(-_wgslsmith_clamp_i32(select(2147483647i, 1i, true), _wgslsmith_mod_i32(global0.a, min(var_1.a, 971i)), global4.a));
    let var_4 = arg_0;
    return Struct_1(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1000f, -1000f)))) - var_4.b));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = func_4(func_4(func_2(arg_1.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(774f, global1[_wgslsmith_index_u32(u_input.a, 13u)]))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 13u)], 632f))), true)), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(global4.a, arg_1.a, -1i, global4.a), vec4<i32>(global4.a, -15524i, arg_0.a, global0.a))), Struct_1(global0.a & arg_0.a, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 13u)] + 548f)))));
    let var_0 = !vec3<bool>(!(_wgslsmith_f_op_f32(abs(296f)) <= func_4(Struct_1(arg_1.a, -317f)).b), false, true);
    global4 = func_4(Struct_1(global4.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-280f))), func_4(Struct_1(global4.a, global0.b)).b))));
    let var_1 = arg_0;
    let var_2 = Struct_1(-13126i, 904f);
    return func_4(var_2);
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> vec4<i32> {
    let var_0 = global2[_wgslsmith_index_u32(~0u, 18u)];
    var var_1 = -715f;
    return -vec4<i32>(firstTrailingBit(-24630i), arg_1, -19949i, -2147483647i >> (~(~u_input.b) % 32u));
}

fn func_7(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = func_4(arg_2);
    global3 = !any(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    global4 = arg_1;
    var var_0 = vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-420f)) - _wgslsmith_f_op_f32(arg_2.b + _wgslsmith_f_op_f32(global4.b + _wgslsmith_div_f32(arg_2.b, 199f)))));
    let var_1 = vec4<bool>(!any(vec2<bool>(true, true)), true, all(vec2<bool>(any(vec2<bool>(true, true)), select(false, true, true))), true);
    return Struct_1(_wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global0.a, global0.a, -1i), vec4<i32>(global0.a, arg_1.a, arg_2.a, -2493i)), abs(global4.a)), 0i) ^ reverseBits(83663i), -1000f);
}

fn func_1() -> vec3<i32> {
    let var_0 = func_7(func_6(func_5(func_4(func_2(global4.a, vec2<f32>(165f, 1141f), vec4<i32>(global4.a, global0.a, 0i, global4.a), Struct_1(global4.a, 1000f))), Struct_1(-11133i, _wgslsmith_f_op_f32(global4.b * global4.b))), global0.a), func_4(func_5(func_5(Struct_1(16187i, global0.b), func_5(Struct_1(-1i, -942f), Struct_1(global0.a, global1[_wgslsmith_index_u32(27694u, 13u)]))), func_5(func_5(Struct_1(-14790i, 406f), Struct_1(0i, 1000f)), func_4(Struct_1(0i, global4.b))))), Struct_1(-2147483647i, global0.b));
    var var_1 = select(-_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(global4.a, global0.a), -vec2<i32>(0i, global0.a)), vec2<i32>(global4.a, _wgslsmith_mult_i32(var_0.a, global0.a)), min(_wgslsmith_mod_vec2_i32(vec2<i32>(global4.a, global4.a), vec2<i32>(37982i, global0.a)), func_6(var_0, 71521i).xw)), max(-firstLeadingBit(-vec2<i32>(global0.a, 1i)), min(vec2<i32>(1i, ~(-3095i)), -vec2<i32>(global0.a, 1i))), select(select(vec2<bool>(-2147483647i != global0.a, true), vec2<bool>(true, select(false, false, false)), true), vec2<bool>(true, _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(1u, 13u)], global0.b, false)) < 1f), !(!any(vec4<bool>(false, false, true, true)))));
    let var_2 = func_2(-2147483647i, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b, 1082f) + vec2<f32>(-743f, 783f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b, -1000f), vec2<f32>(-1000f, 786f), false)))))), min(abs(~countOneBits(vec4<i32>(global0.a, global4.a, -1i, global4.a))), select(firstTrailingBit(vec4<i32>(0i, 35640i, 677i, global0.a)), vec4<i32>(global4.a, var_1.x, 1i, var_1.x) << (vec4<u32>(u_input.b, u_input.b, u_input.a, 26899u) % vec4<u32>(32u)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))) | vec4<i32>(-var_1.x, ~(-11619i), -37234i, -6012i)), func_4(Struct_1(global0.a, global0.b)));
    let var_3 = false;
    let var_4 = func_4(Struct_1(-_wgslsmith_mult_i32(-80793i, var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_div_f32(156f, var_0.b))))).a;
    return ~vec3<i32>(var_4 ^ 17142i, _wgslsmith_sub_i32(var_4, -29640i), max(36482i, -27935i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 13>();
    var var_0 = ~_wgslsmith_sub_vec3_i32(~_wgslsmith_mod_vec3_i32(~vec3<i32>(12646i, -2147483647i, -23981i), _wgslsmith_add_vec3_i32(vec3<i32>(-29427i, 0i, global4.a), vec3<i32>(-24007i, global0.a, global4.a))), func_1());
    let var_1 = all(vec4<bool>(all(!global2[_wgslsmith_index_u32(u_input.a, 18u)]), true, false, !all(vec4<bool>(false, true, true, true))));
    var var_2 = all(vec4<bool>(!var_1, true, true, any(vec2<bool>(all(vec4<bool>(true, false, var_1, true)), var_1))));
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1433f, global1[_wgslsmith_index_u32(u_input.b, 13u)]) - vec2<f32>(global0.b, global4.b)), vec2<f32>(_wgslsmith_f_op_f32(-global4.b), global0.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-944f, 135f) + vec2<f32>(global4.b, 652f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, global1[_wgslsmith_index_u32(0u, 13u)]) * vec2<f32>(-843f, global4.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 13u)], global0.b), vec2<f32>(1613f, -1375f))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global4.b, 1017f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.b))))))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(54213u, 13u)], -284f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.b, global1[_wgslsmith_index_u32(74699u, 13u)]), vec2<f32>(global4.b, global1[_wgslsmith_index_u32(u_input.a, 13u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.a, 13u)]) * vec2<f32>(1303f, global1[_wgslsmith_index_u32(4294967295u, 13u)]))))));
    var_0 = firstTrailingBit(_wgslsmith_mod_vec3_i32(abs(select(vec3<i32>(27732i, var_0.x, global0.a), ~vec3<i32>(56457i, var_0.x, 0i), vec3<bool>(false, var_1, var_1))), ~abs(abs(vec3<i32>(1i, -52490i, 6961i)))));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_2(42670i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 13u)], global0.b) - vec2<f32>(-764f, 999f))), abs(countOneBits(vec4<i32>(var_0.x, -49846i, -2147483647i, 2147483647i))), Struct_1(-21623i, -2362f))).b);
}

