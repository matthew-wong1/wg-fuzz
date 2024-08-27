struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1118f;

var<private> global1: u32;

var<private> global2: f32 = -1559f;

var<private> global3: f32;

var<private> global4: Struct_2 = Struct_2(vec2<i32>(0i, 0i), Struct_1(382f, 1u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = vec2<f32>(global4.b.a, global4.b.a);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_0.x, -1133f)), _wgslsmith_f_op_f32(max(global4.b.a, 131f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(484f, 416f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, global4.b.a)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.a, global4.b.a))), false))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(549f, global4.b.a) * vec2<f32>(1092f, 1071f))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(373f, global4.b.a)), _wgslsmith_div_vec2_f32(vec2<f32>(global4.b.a, var_0.x), vec2<f32>(global4.b.a, 1209f)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(350f, var_0.x)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b.a, global4.b.a) + vec2<f32>(var_0.x, global4.b.a)), vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b.a, 1895f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global4.b.a, var_0.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, arg_1.a) * vec2<f32>(arg_1.a, arg_1.a))))))));
    let var_1 = 17i;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_1.a), ~global4.b.b);
    return arg_0.yz;
}

fn func_2(arg_0: u32, arg_1: bool) -> f32 {
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -499f);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.b.a), -108f), global4.b.a, any(func_3(vec3<bool>(true, arg_1, false), Struct_1(-1529f, 25445u))))))), _wgslsmith_add_u32(1u, arg_0) & ~_wgslsmith_dot_vec2_u32(vec2<u32>(global4.b.b, 0u) >> (vec2<u32>(arg_0, global4.b.b) % vec2<u32>(32u)), select(vec2<u32>(global4.b.b, global4.b.b), vec2<u32>(global4.b.b, global4.b.b), arg_1)));
    var var_1 = arg_1;
    var var_2 = Struct_2(max(abs(global4.a), vec2<i32>(countOneBits(-2147483647i), u_input.b >> ((4294967295u & arg_0) % 32u))), Struct_1(1402f, ~arg_0));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.b.a)));
    return -290f;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: f32, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(global4.b.b, ~global4.b.b, _wgslsmith_sub_u32(5698u, select(30439u, global4.b.b, true)), 853u), _wgslsmith_div_vec4_u32(vec4<u32>(~(~global4.b.b), firstTrailingBit(global4.b.b), firstLeadingBit(global4.b.b | global4.b.b), global4.b.b), abs(max(_wgslsmith_mult_vec4_u32(vec4<u32>(50275u, global4.b.b, 4294967295u, global4.b.b), vec4<u32>(global4.b.b, 0u, 26676u, 0u)), ~vec4<u32>(global4.b.b, 113870u, 0u, 0u)))), firstTrailingBit(max(~reverseBits(vec4<u32>(4294967295u, global4.b.b, global4.b.b, 0u)), vec4<u32>(30060u, ~4294967295u, 1u, global4.b.b))));
    global2 = _wgslsmith_f_op_f32(global4.b.a - arg_2);
    let var_1 = u_input.b;
    global1 = var_0.x << (min(~var_0.x, countOneBits(min(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, global4.b.b, 9130u), var_0.zzw), 1u))) % 32u);
    return Struct_2(_wgslsmith_add_vec2_i32(countOneBits(~u_input.a.yw), select(global4.a, _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 14528i), vec2<i32>(167i, 1i)), ~var_1 >= max(u_input.b, arg_0.x))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), ~64495u));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    global3 = 1134f;
    global4 = func_4(u_input.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-263f, _wgslsmith_div_f32(-272f, 964f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-919f, global4.b.a), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global4.b.a, arg_2.a))))))), _wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.x, arg_3.x), vec2<u32>(arg_3.x, 45068u), vec2<u32>(arg_3.x, arg_3.x)), select(arg_3.yz, vec2<u32>(7163u, 4294967295u), false)) ^ _wgslsmith_sub_u32(reverseBits(1u), 43363u), true)), -((~vec2<i32>(global4.a.x, 39743i) ^ global4.a) << (reverseBits(vec2<u32>(global4.b.b, 4294967295u)) % vec2<u32>(32u))));
    let var_0 = Struct_2(vec2<i32>(~(global4.a.x | _wgslsmith_sub_i32(0i, global4.a.x)), -(~global4.a.x)), func_4(vec4<i32>(-1i) * -(~vec4<i32>(global4.a.x, global4.a.x, global4.a.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2031f, arg_2.a) - vec2<f32>(-1465f, 1000f)))), global4.b.a, -((vec2<i32>(u_input.b, -7949i) << (vec2<u32>(arg_2.b, 0u) % vec2<u32>(32u))) ^ vec2<i32>(0i, -34782i))).b);
    global0 = 663f;
    global0 = _wgslsmith_f_op_f32(-728f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_2.a, global4.b.a, true)))))))));
    return Struct_1(-117f, arg_2.b);
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_2(38411u, arg_0)), countOneBits(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global4.b.b, arg_1.b, 4294967295u) >> (vec3<u32>(global4.b.b, 71883u, global4.b.b) % vec3<u32>(32u)), abs(vec3<u32>(global4.b.b, global4.b.b, global4.b.b))))));
    var var_1 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(338f + global4.b.a)))));
    global1 = 4294967295u;
    let var_2 = Struct_1(func_4(max(vec4<i32>(~66180i, 1i << (arg_1.b % 32u), ~global4.a.x, firstTrailingBit(global4.a.x)), -vec4<i32>(-1i, 0i, u_input.a.x, 2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1439f, 1328f)), vec2<f32>(var_0.a, -662f))), _wgslsmith_f_op_f32(-217f + _wgslsmith_f_op_f32(func_2(1u, !arg_0))), global4.a).b.a, 8519u);
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -905f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(144f - -1799f)) - global4.b.a)) + 1874f);
    return func_1(69513u << (var_0.b % 32u), _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-func_4(u_input.a, vec2<f32>(-481f, -888f), 818f, u_input.a.wx).b.a)), func_4(u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2012f, var_2.a))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-839f, -495f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -164f)), ~select(vec2<i32>(global4.a.x, u_input.a.x), vec2<i32>(-1i, 6491i), arg_0)).b, ~(~vec4<u32>(3000u, global4.b.b, var_2.b, var_0.b))).b << (4294967295u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global4.b.a, abs(~func_5(true, func_1(18497u, -1017f, Struct_1(global4.b.a, 0u), vec4<u32>(4294967295u, global4.b.b, 1214u, 41158u)))));
    var var_1 = Struct_1(global4.b.a, var_0.b);
    var_1 = func_1(1u, var_1.a, global4.b, firstTrailingBit(~firstTrailingBit(vec4<u32>(global4.b.b, 0u, var_1.b, var_1.b))));
    var var_2 = vec3<u32>(var_0.b, ~73764u, var_1.b);
    global1 = ~44305u << (var_0.b % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-1807f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_1.a - var_1.a), -1518f, _wgslsmith_f_op_f32(abs(-877f))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 1544f, var_0.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-314f, -490f, var_1.a) + vec3<f32>(639f, -1418f, global4.b.a)))))));
}

