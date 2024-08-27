struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<f32> = vec4<f32>(2210f, -431f, -336f, -781f);

var<private> global2: u32 = 1u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: vec2<u32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - -203f);
    let var_1 = ~arg_3.x;
    let var_2 = arg_2.x;
    let var_3 = arg_2.x;
    var var_4 = -1i;
    return vec3<f32>(_wgslsmith_f_op_f32(414f * _wgslsmith_f_op_f32(f32(-1f) * -806f)), 453f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * var_0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-451f))))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1217f), 874f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1341f * _wgslsmith_f_op_f32(global1.x * -595f)) * 141f)));
    global2 = u_input.a.x;
    let var_1 = Struct_3(u_input.d.xx | vec2<i32>(-9416i, _wgslsmith_div_i32(arg_0, min(u_input.b, arg_0))));
    let var_2 = var_1;
    global0 = var_0.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, 449f, var_0.x))) * global1.xzx), 17024u), Struct_3(countOneBits(~vec2<i32>(arg_0, var_1.a.x))), abs(var_2.a), ~(~vec2<u32>(u_input.a.x, u_input.a.x)))), 4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> vec3<f32> {
    global2 = ~_wgslsmith_dot_vec4_u32(~(firstTrailingBit(vec4<u32>(arg_0.b, u_input.a.x, u_input.a.x, 1u)) | vec4<u32>(arg_0.b, u_input.a.x, arg_0.b, 59304u)), abs(~vec4<u32>(0u, 0u, u_input.a.x, 4294967295u)));
    global2 = _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(u_input.a.x, reverseBits(~select(1u, arg_0.b, arg_2))), 0u);
    global0 = _wgslsmith_f_op_f32(select(-159f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1291f, arg_0.a.x)) - -149f), all(!select(vec2<bool>(arg_2, arg_2), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(arg_2, true)))));
    var var_0 = Struct_3(vec2<i32>(-(~u_input.b), -(~abs(u_input.d.x))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(755f, arg_0.a.x, 1695f, arg_0.a.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-826f, -1699f, arg_0.a.x, arg_0.a.x), vec4<f32>(arg_1, arg_1, global1.x, arg_1)))))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.zyy - vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1395f)), _wgslsmith_f_op_f32(-arg_0.a.x))), global1.x, -1152f)));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = abs(vec3<i32>(min(_wgslsmith_add_i32(u_input.d.x >> (arg_0.b % 32u), firstTrailingBit(1i)), -_wgslsmith_sub_i32(7695i, -1i)), u_input.b, _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_sub_vec3_i32(u_input.d.zyy, vec3<i32>(-45847i, u_input.d.x, u_input.d.x))), vec3<i32>(u_input.d.x, -28803i & u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.c, 1i), vec3<i32>(u_input.d.x, u_input.d.x, 1i))))));
    var var_1 = arg_0;
    let var_2 = vec3<bool>((countOneBits(94007u) > select(var_1.b, 29663u, false)) || all(vec2<bool>(false, global1.x < -141f)), true, false);
    var var_3 = Struct_3(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, _wgslsmith_mult_i32(~var_0.x, u_input.c | 0i)), reverseBits(~min(var_0.yy, u_input.d.wy))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -707f);
    return Struct_2(((max(58316u, var_1.b) & 21027u) <= 1u) & true, var_3.a.x, Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a)), arg_0.a)), var_1.b ^ _wgslsmith_mult_u32(4294967295u & var_1.b, reverseBits(13772u))), arg_0, func_2(_wgslsmith_mod_i32(u_input.c, ~(~u_input.c))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_2(1i), 720f, any(vec4<bool>(true, true, false, true))))), 1u));
    return func_2(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true, ~38147i, func_1(vec2<u32>(select(u_input.a.x, ~u_input.a.x, true), 1u)), func_1(vec2<u32>(44842u, u_input.a.x)), func_1(_wgslsmith_clamp_vec2_u32(firstTrailingBit(u_input.a), firstTrailingBit(abs(vec2<u32>(u_input.a.x, u_input.a.x))), u_input.a)));
    global0 = _wgslsmith_f_op_f32(-global1.x);
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.a.x, -2226f, -1226f, -301f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(376f, var_0.c.a.x, -183f, -256f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, var_0.c.a.x, global1.x) + vec4<f32>(-463f, -195f, var_0.e.a.x, 575f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, var_0.d.a.x, -240f, global1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-490f, 1290f, var_0.d.a.x, global1.x)), vec4<f32>(356f, var_0.c.a.x, global1.x, var_0.d.a.x)))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(-708f)), _wgslsmith_f_op_f32(-246f + _wgslsmith_f_op_f32(global1.x * -141f)), -111f, -100f)));
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1241f, 1000f, -672f, _wgslsmith_f_op_f32(var_0.d.a.x - _wgslsmith_f_op_f32(max(var_0.d.a.x, _wgslsmith_f_op_f32(var_0.e.a.x - var_0.c.a.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1217f, 1310f, var_0.c.a.x, global1.x) * vec4<f32>(-139f, var_0.e.a.x, 986f, global1.x)))))));
    let var_1 = func_5(func_1(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(2842u, var_0.c.b)))).c.b & 1u;
    var var_2 = _wgslsmith_add_vec3_u32((~(vec3<u32>(var_0.d.b, 1u, var_0.d.b) << (vec3<u32>(0u, 988u, u_input.a.x) % vec3<u32>(32u))) >> (firstLeadingBit(~vec3<u32>(0u, 1u, u_input.a.x)) % vec3<u32>(32u))) | vec3<u32>(1u, ~u_input.a.x, ~var_1), ~_wgslsmith_mod_vec3_u32(~(vec3<u32>(4294967295u, 25476u, var_1) << (vec3<u32>(var_0.c.b, var_0.e.b, 30420u) % vec3<u32>(32u))), ~reverseBits(vec3<u32>(var_1, 49294u, var_0.d.b))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -271f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1249f)), global1.x)), 1166f, global1.x);
    let var_3 = 1026f;
    var_2 = vec3<u32>(abs(~abs(abs(var_1))), u_input.a.x, func_5(var_0.d).e.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_0.d.a.x, 897f)), max(4294967295u, 46972u)), global1.x, all(vec3<bool>(true, false, false)))).x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -238f)))), func_2(2147483647i).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(func_1(u_input.a), Struct_3(vec2<i32>(u_input.b, var_0.b)), select(u_input.d.yw, vec2<i32>(2033i, -2147483647i), vec2<bool>(var_0.a, false)), min(var_2.yy, var_2.xz))).x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e.a.x), global1.x))), max(-vec4<i32>(-4516i, _wgslsmith_add_i32(-1i, 0i), u_input.b, -u_input.d.x), select(u_input.d, vec4<i32>(var_0.b, u_input.b, -1i, var_0.b) >> (~vec4<u32>(0u, u_input.a.x, 1u, 13127u) % vec4<u32>(32u)), var_0.a)), 26550i);
}

