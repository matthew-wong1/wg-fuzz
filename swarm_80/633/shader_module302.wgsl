struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32>;

var<private> global1: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(2143f, 1114f), vec2<f32>(763f, 1674f), vec2<f32>(1305f, -1027f), vec2<f32>(-1332f, -1649f), vec2<f32>(-1000f, -1147f), vec2<f32>(279f, 355f), vec2<f32>(-1000f, 575f), vec2<f32>(-972f, 437f), vec2<f32>(-1358f, -1318f), vec2<f32>(-663f, -482f), vec2<f32>(619f, -466f), vec2<f32>(852f, 163f), vec2<f32>(-719f, 750f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>) -> vec2<u32> {
    let var_0 = Struct_4(vec2<i32>(-11833i, 2147483647i), global1[_wgslsmith_index_u32(~u_input.e.x, 13u)], _wgslsmith_dot_vec4_i32(~(reverseBits(vec4<i32>(-2147483647i, 1i, u_input.c.x, u_input.d)) | firstLeadingBit(vec4<i32>(u_input.d, u_input.c.x, u_input.a, u_input.a))), -global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, arg_0.x), 32u)]));
    global0 = array<vec4<i32>, 32>();
    let var_1 = 5344i;
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1532f, var_0.b.x, 467f, var_0.b.x)))));
    let var_3 = reverseBits(countOneBits(abs(~(vec2<i32>(2147483647i, var_1) | u_input.c))));
    return firstLeadingBit(~u_input.e.zy) << (_wgslsmith_sub_vec2_u32(arg_0, arg_0 << (select(arg_0, vec2<u32>(arg_0.x, u_input.e.x) | vec2<u32>(u_input.b, arg_0.x), select(arg_1.xx, vec2<bool>(arg_1.x, arg_1.x), arg_1.x)) % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> Struct_5 {
    let var_0 = vec3<u32>(~(~arg_3 & arg_3), ~_wgslsmith_dot_vec2_u32(func_3(vec2<u32>(arg_3, u_input.e.x), vec3<bool>(false, arg_0, false)), abs(vec2<u32>(78854u, 23317u))), _wgslsmith_add_u32(~(~5033u), ~(~82381u))) | vec3<u32>(abs(0u) ^ _wgslsmith_dot_vec4_u32(~u_input.e, u_input.e), 0u, 0u);
    var var_1 = -vec2<i32>(firstTrailingBit(2147483647i), arg_1);
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(7445u, 13u)] * vec2<f32>(-1142f, -381f)))) - global1[_wgslsmith_index_u32(arg_3, 13u)])), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(max(736f, 1449f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1631f, 1309f))))))));
    global1 = array<vec2<f32>, 13>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.b << (arg_3 % 32u), 13u)]))));
    return Struct_5(var_3.x, Struct_4(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(var_1.x, -2147483647i), u_input.c), -vec2<i32>(-41351i, 35607i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-557f, var_3.x))) - vec2<f32>(_wgslsmith_f_op_f32(789f + 869f), var_2.x)), u_input.d), Struct_3(arg_2.a), Struct_2(vec2<i32>(~firstTrailingBit(1i), _wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(-1i, 58164i)))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_5, arg_3: Struct_5) -> bool {
    let var_0 = arg_2.b;
    global1 = array<vec2<f32>, 13>();
    global1 = array<vec2<f32>, 13>();
    let var_1 = var_0;
    var var_2 = Struct_1(vec4<bool>(any(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), all(vec3<bool>(true, true, false)))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_div_f32(arg_2.a, var_0.b.x))) == _wgslsmith_div_f32(412f, -2665f), true), arg_3.a, any(select(vec3<bool>(true, all(vec4<bool>(true, true, true, false)), 1i <= arg_3.c.a), vec3<bool>(false, any(vec2<bool>(true, true)), any(vec4<bool>(true, false, false, true))), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false)))), vec2<f32>(_wgslsmith_f_op_f32(max(var_0.b.x, arg_3.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, -1000f))))), !(!(!any(vec4<bool>(true, false, true, true)))));
    return all(vec3<bool>(var_2.e, var_2.c, var_2.c && any(vec4<bool>(var_2.e, true, false, var_2.e)))) == var_2.e;
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = vec3<bool>(!arg_0, func_4(Struct_3(_wgslsmith_sub_i32(-19755i, firstTrailingBit(u_input.d))), -42689i, func_2(abs(u_input.a) <= ~0i, -40949i, Struct_3(u_input.d), u_input.b), func_2(arg_0, u_input.c.x, func_2(true, u_input.c.x, Struct_3(-38773i), firstTrailingBit(0u)).c, u_input.b)), arg_0);
    let var_1 = func_2(!var_0.x, u_input.c.x ^ 0i, Struct_3(-2147483647i), 12211u).d;
    global0 = array<vec4<i32>, 32>();
    global0 = array<vec4<i32>, 32>();
    let var_2 = arg_0;
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2, arg_3: f32) -> Struct_5 {
    let var_0 = Struct_1(vec4<bool>(arg_0.a.x == ~(arg_1.c | 1i), func_4(Struct_3(arg_0.a.x), 0i, func_2(true, 2147483647i, Struct_3(-43221i), u_input.e.x), Struct_5(_wgslsmith_f_op_f32(arg_3 * arg_3), Struct_4(arg_0.a, vec2<f32>(arg_1.b.x, arg_1.b.x), 2147483647i), func_2(false, -2147483647i, Struct_3(3959i), 1u).c, Struct_2(arg_2.a))), all(vec3<bool>(1000f < arg_3, true, false)), true), arg_1.b.x, true || any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(true, -1i, Struct_3(-66481i), u_input.b).a - 1439f), arg_1.b.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b + vec2<f32>(-2421f, -635f)) + _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(u_input.e.x, 13u)] - vec2<f32>(271f, 444f))))), all(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), vec2<bool>(true, true), vec2<bool>(true, false))));
    let var_1 = arg_0;
    let var_2 = Struct_5(arg_3, Struct_4(_wgslsmith_sub_vec2_i32(u_input.c & vec2<i32>(u_input.a, 0i), ~vec2<i32>(arg_1.c, var_1.a.x) & _wgslsmith_mod_vec2_i32(var_1.a, arg_0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d)), -arg_1.c), func_2((28699u != u_input.e.x) & true, arg_0.a.x, Struct_3(var_1.a.x), _wgslsmith_mult_u32(select(abs(4294967295u), ~u_input.b, false), 1u << (_wgslsmith_dot_vec4_u32(u_input.e, u_input.e) % 32u))).c, func_1(var_0.a.x));
    let var_3 = select(!var_0.a, !vec4<bool>(true, select(var_0.e, var_0.c, true), (var_1.a.x >= arg_0.a.x) && var_0.e, func_4(var_2.c, arg_2.a.x, Struct_5(-1484f, arg_1, var_2.c, Struct_2(arg_2.a)), var_2)), !(!select(vec4<bool>(var_0.a.x, var_0.c, false, true), select(vec4<bool>(false, false, true, false), var_0.a, vec4<bool>(var_0.e, var_0.c, false, false)), vec4<bool>(var_0.e, var_0.a.x, var_0.e, true))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1518f))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~min(~u_input.e.wzy, u_input.e.zzx);
    global1 = array<vec2<f32>, 13>();
    global1 = array<vec2<f32>, 13>();
    var var_1 = func_5(func_1(false), func_2(true, -u_input.c.x, Struct_3(-15604i), var_0.x).b, func_1(any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-749f, -117f))))))));
    global1 = array<vec2<f32>, 13>();
    global0 = array<vec4<i32>, 32>();
    let var_2 = _wgslsmith_clamp_i32(-func_1(true).a.x, firstLeadingBit(firstLeadingBit(_wgslsmith_div_i32(u_input.c.x, _wgslsmith_div_i32(var_1.d.a.x, -1i)))), reverseBits(-10237i));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(func_3(~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(u_input.e.x, u_input.b)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
}

