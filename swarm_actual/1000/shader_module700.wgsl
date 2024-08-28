struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(441f, 1642f), 0u);

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-1307f, 446f), 18104u);

var<private> global3: vec3<i32> = vec3<i32>(1i, 1i, 9082i);

var<private> global4: f32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<bool>) -> vec3<u32> {
    let var_0 = global0.a.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x));
    let var_2 = arg_0;
    let var_3 = arg_0;
    global4 = global0.a.x;
    return abs(u_input.c);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_1 {
    global3 = u_input.a.xzx >> (vec3<u32>(select(min(firstLeadingBit(28053u), u_input.c.x), 1u, true), abs(15808u ^ _wgslsmith_div_u32(arg_0.b, global0.b)), global1.b) % vec3<u32>(32u));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(global0.a * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, arg_0.a.x)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(arg_0.a)), global1.a, vec2<bool>(false, true))))), global0.b);
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(firstLeadingBit(arg_1 & 4294967295u), ~u_input.b), _wgslsmith_div_u32(global0.b, ~(~105096u)), _wgslsmith_div_u32(~(~global1.b), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 22389u), vec3<u32>(1u, global2.b, 4294967295u)), u_input.c | u_input.c))), _wgslsmith_dot_vec3_u32(u_input.c & func_3(Struct_1(vec2<f32>(global2.a.x, 896f), u_input.c.x), vec4<i32>(-48266i, global3.x, u_input.a.x, u_input.a.x), vec2<bool>(false, true)), ~u_input.c));
    var var_1 = select(!all(vec4<bool>(true, true, true, all(vec2<bool>(false, false)))), !(!(all(vec3<bool>(true, true, false)) | true)), any(select(vec4<bool>(arg_2 < 244f, true, true, any(vec4<bool>(false, true, false, true))), vec4<bool>(any(vec2<bool>(false, false)), all(vec3<bool>(false, true, true)), true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, false, false, true), false))));
    var_0 = ~_wgslsmith_clamp_u32(global1.b, _wgslsmith_mult_u32(firstLeadingBit(0u), global1.b), ~_wgslsmith_sub_u32(arg_1, _wgslsmith_mult_u32(1u, arg_0.b)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(-2039f, 615f), _wgslsmith_f_op_f32(floor(arg_0.a.x))))))), 60591u);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = func_2(arg_0, _wgslsmith_mult_u32(countOneBits(9140u), var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-203f + global1.a.x) - _wgslsmith_f_op_f32(floor(1092f))));
    let var_2 = arg_0;
    var_1 = arg_0;
    let var_3 = func_2(func_2(func_2(arg_0, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b, var_1.b), min(49249u, var_1.b)), _wgslsmith_f_op_f32(max(var_0.a.x, func_2(Struct_1(global1.a, var_0.b), 0u, var_2.a.x).a.x))), firstTrailingBit(var_2.b), _wgslsmith_f_op_f32(-128f * var_0.a.x)), _wgslsmith_clamp_u32(~func_3(func_2(Struct_1(vec2<f32>(-1205f, var_1.a.x), 1u), var_2.b, var_0.a.x), vec4<i32>(1i, 1i, global3.x, 2147483647i) >> (vec4<u32>(4294967295u, global2.b, 1u, global0.b) % vec4<u32>(32u)), vec2<bool>(true, true)).x, 44521u, var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -413f)))))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.a.x))), _wgslsmith_f_op_f32(round(var_0.a.x))))), ~var_0.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: bool) -> bool {
    global2 = arg_0;
    global3 = vec3<i32>(1i, arg_2.x, select(firstTrailingBit(_wgslsmith_add_i32(global3.x & u_input.d, countOneBits(u_input.d))), global3.x, !(!all(vec2<bool>(true, arg_3)))));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.a.x, global0.a.x))))), _wgslsmith_div_u32(0u, 9141u));
    var var_0 = func_2(arg_0, global2.b, func_1(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(163f, -1033f))) * _wgslsmith_f_op_vec2_f32(arg_1.ww * global1.a)), global0.b)).a.x);
    global2 = arg_0;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec4<bool>(false, true, !any(vec4<bool>(false, false, true, true)), false), !vec4<bool>(true & any(vec2<bool>(true, true)), true, all(vec4<bool>(true, true, true, true)) && true, false), vec4<bool>(false, !func_4(func_1(Struct_1(vec2<f32>(global2.a.x, -615f), 12155u)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(149f, global1.a.x, global0.a.x, global1.a.x))), select(u_input.a, vec4<i32>(1i, 2147483647i, global3.x, global3.x), true), true), func_4(func_2(func_1(Struct_1(vec2<f32>(431f, global0.a.x), 23543u)), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b, u_input.b, 20959u, global0.b), vec4<u32>(4294967295u, 70590u, global0.b, 26916u)), -2435f), vec4<f32>(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(-global0.a.x), global2.a.x, 2986f), vec4<i32>(select(u_input.a.x, -43647i, true), firstTrailingBit(u_input.d), u_input.a.x, global3.x), true), true));
    global2 = func_1(func_2(func_1(Struct_1(global2.a, _wgslsmith_sub_u32(global0.b, 43948u))), global2.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -105f))))));
    global3 = _wgslsmith_add_vec3_i32(vec3<i32>(select(u_input.a.x, 27409i, !var_0.x), _wgslsmith_dot_vec3_i32(u_input.a.wzz, ~(-vec3<i32>(40263i, global3.x, global3.x))), _wgslsmith_mod_i32(1i, -_wgslsmith_sub_i32(0i, u_input.a.x))), -(_wgslsmith_mod_vec3_i32(select(u_input.a.ywx, u_input.a.xyw, var_0.zyz), ~vec3<i32>(1i, 38600i, u_input.a.x)) >> (u_input.c % vec3<u32>(32u))));
    let var_1 = func_1(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(abs(global2.a)), global1.b)));
    global1 = func_1(var_1);
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-309f, var_1.a.x)) * -1690f);
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-592f, 889f) + vec2<f32>(var_1.a.x, -451f)), _wgslsmith_sub_u32(u_input.b, 0u));
    var var_2 = u_input.c.zy;
    let var_3 = func_2(var_1, ~_wgslsmith_add_u32(u_input.b, ~19832u) | u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * -1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(-14210i, func_3(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 702f)), ~global2.b)), ~((vec4<i32>(global3.x, global3.x, global3.x, 0i) ^ vec4<i32>(0i, 60583i, global3.x, -1i)) ^ ~u_input.a), !vec2<bool>(true, var_0.x || var_0.x)).xz, ~select(~vec2<i32>(-27425i, global3.x) ^ vec2<i32>(-1i, -2147483647i), firstTrailingBit(vec2<i32>(-10948i, -2147483647i) | vec2<i32>(u_input.a.x, u_input.d)), true), ~(-1i), u_input.d);
}

