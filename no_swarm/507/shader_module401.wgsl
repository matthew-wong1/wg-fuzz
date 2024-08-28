struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: f32 = -817f;

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global3: Struct_5;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = u_input.b;
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_0.b - vec2<f32>(-978f, arg_0.a)), vec2<f32>(1000f, 883f)))) - _wgslsmith_f_op_vec2_f32(-global3.d.b)), arg_0.b));
    global3 = Struct_5(arg_0, Struct_2(Struct_1(-835f, _wgslsmith_f_op_vec2_f32(exp2(global3.a.b)), global2.zy), global3.b.b, arg_0), _wgslsmith_add_i32(global3.c, ~(global3.c ^ global3.c)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.b.c.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(493f, -1231f) - arg_0.b))), !global2.wz));
    return global3.c;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: vec2<f32>) -> f32 {
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec3_u32(~(u_input.b.xyz | vec3<u32>(u_input.c.x, arg_0, arg_0)), u_input.c)) & u_input.c.x;
    global2 = select(global3.b.b, global3.b.b, vec4<bool>(true, global2.x, arg_2, any(!select(vec4<bool>(false, false, true, global3.a.c.x), global3.b.b, true))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -374f))), -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2246f) + _wgslsmith_f_op_f32(step(global3.a.a, global3.a.a))) + 1f)));
    var var_1 = vec2<f32>(1046f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_f_op_f32(1255f * _wgslsmith_f_op_f32(865f + _wgslsmith_f_op_f32(global0.x - -598f))), false)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1225f))), _wgslsmith_f_op_f32(-global0.x)));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(arg_2, max(func_2(global3.d), -_wgslsmith_dot_vec2_i32(vec2<i32>(global3.c, global3.c), vec2<i32>(1i, -2598i))), any(vec3<bool>(true, false, arg_1.x)) == false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.d.b - vec2<f32>(-1290f, global3.a.a))))))));
    let var_1 = ~_wgslsmith_add_i32(_wgslsmith_sub_i32(global3.c | global3.c, global3.c & global3.c) >> (firstLeadingBit(_wgslsmith_mod_u32(arg_2, 4294967295u)) % 32u), max(-global3.c ^ abs(global3.c), -49957i));
    var var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-var_1, min(var_1, 2147483647i), global3.c, select(0i, global3.c, false)) | firstTrailingBit(max(vec4<i32>(16535i, 0i, global3.c, 3508i), vec4<i32>(40395i, global3.c, 54036i, -2147483647i))), firstLeadingBit(min(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -10621i, 3083i, 2147483647i), vec4<i32>(var_1, var_1, 0i, global3.c)), abs(vec4<i32>(var_1, var_1, -1i, var_1))))), max(-vec4<i32>(-1i, global3.c, global3.c, 1i) << (~(~vec4<u32>(1u, 1u, arg_2, arg_2)) % vec4<u32>(32u)), vec4<i32>(-43131i, _wgslsmith_mod_i32(global3.c, global3.c | var_1), (i32(-1i) * -15100i) | global3.c, -10363i)));
    var_0 = -462f;
    var var_3 = vec3<u32>(_wgslsmith_add_u32(~abs(13457u), firstTrailingBit(u_input.c.x)), 36888u, 4294967295u);
    return -771f;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = vec4<i32>(countOneBits(arg_3.x) >> (arg_2.x % 32u), arg_3.x, _wgslsmith_clamp_i32(arg_3.x, arg_1.c, _wgslsmith_sub_i32(0i, -2147483647i)), 1i);
    let var_1 = _wgslsmith_add_i32(-(global3.c >> (4294967295u % 32u)), 20634i << (countOneBits(_wgslsmith_sub_u32(58335u, 1u)) % 32u));
    global0 = vec2<f32>(global0.x, arg_1.a.b.x);
    var var_2 = Struct_4(global2.x);
    let var_3 = select(41922u, arg_2.x, any(select(vec4<bool>(true, true, !var_2.a, true), global3.b.b, any(select(arg_0.b, arg_0.b, vec4<bool>(true, false, arg_0.b.x, arg_0.b.x))))));
    return Struct_2(global3.b.a, select(select(global3.b.b, vec4<bool>(!global3.b.b.x, true, select(true, global2.x, global3.a.c.x), true), true), vec4<bool>(arg_1.a.c.x, any(global3.d.c), false, !global2.x), true), arg_1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.a.b.x - -664f)));
    let var_1 = func_4(Struct_2(global3.a, global3.b.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0.x, global2.wy, u_input.a))), vec2<f32>(1087f, global0.x), global2.yz)), Struct_5(global3.d, Struct_2(global3.b.a, !(!vec4<bool>(true, global3.b.c.c.x, global2.x, false)), global3.d), global3.c, global3.b.a), abs(vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, 1u), 0u), 42428u, 1u)), _wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(~vec2<i32>(-26257i, -47420i), -vec2<i32>(global3.c, 0i)), vec2<i32>(firstLeadingBit(56086i), 0i)));
    let var_2 = firstLeadingBit(u_input.c.x);
    let var_3 = true;
    var_0 = _wgslsmith_f_op_f32(-var_1.c.a);
    var var_4 = Struct_3(Struct_1(848f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global3.d.b)))), !vec2<bool>(!global3.b.c.c.x, false)));
    var var_5 = global3.b.b.xxx;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(4294967295u, var_2), vec2<i32>(1i, _wgslsmith_sub_i32(min(abs(-2147483647i), _wgslsmith_div_i32(global3.c, 0i)), 37192i)), var_4.a.b.x, -vec4<i32>(1i, global3.c, abs(-global3.c), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, -8683i)), select(vec2<i32>(2147483647i, global3.c), vec2<i32>(global3.c, 2147483647i), global2.wy))), global3.b.a.b.x);
}

