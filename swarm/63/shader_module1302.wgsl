struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
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

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<bool>(false, false), vec2<u32>(4294967295u, 0u), vec4<u32>(12162u, 1u, 1u, 1u), vec3<f32>(-1264f, 884f, -1038f), 20323u), Struct_1(vec2<bool>(true, true), vec2<u32>(0u, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec3<f32>(250f, -1062f, 311f), 51668u), -481f, vec2<u32>(53339u, 33568u));

var<private> global1: bool;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<f32>) -> f32 {
    let var_0 = global0.b.e;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-894f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-475f - _wgslsmith_f_op_f32(-arg_2.x))))), global0.b.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -839f)), _wgslsmith_f_op_f32(f32(-1f) * -258f));
    let var_2 = vec3<bool>(true, global0.b.a.x, global0.b.a.x | true);
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, -1150f, global0.b.d.x)));
    let var_4 = 36491u;
    return 483f;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>) -> vec3<f32> {
    var var_0 = 57493u << (_wgslsmith_clamp_u32(4294967295u, ~(~52942u) | _wgslsmith_mod_u32(38181u, global0.a.e), global0.d.x) % 32u);
    let var_1 = _wgslsmith_clamp_i32(i32(-1i) * -1i, ~(-1i), u_input.b);
    let var_2 = Struct_2(global0.b, Struct_1(global0.a.a, ~(~abs(global0.d)), select(u_input.a, global0.a.c, all(vec4<bool>(false, global0.a.a.x, true, false))), _wgslsmith_f_op_vec3_f32(global0.b.d + global0.b.d), arg_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.d.x) - _wgslsmith_f_op_f32(-global0.c))))), ~(~(~abs(u_input.a.xx))));
    var var_3 = vec4<i32>(var_1, var_1, -55214i, var_1);
    var var_4 = var_3.x;
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_2.b.d))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_0))))))));
}

fn func_4(arg_0: vec3<f32>) -> vec4<i32> {
    let var_0 = ~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, ~(-4659i), countOneBits(1i), firstTrailingBit(5822i)), vec4<i32>(max(-36107i, u_input.c.x), u_input.c.x >> (56698u % 32u), 2147483647i, ~u_input.c.x), -vec4<i32>(-2147483647i, 1i, u_input.b, 51923i)));
    let var_1 = vec3<i32>(var_0.x, 39744i, u_input.b);
    var var_2 = Struct_1(select(!vec2<bool>(all(vec3<bool>(true, global0.b.a.x, global0.a.a.x)), global0.a.a.x), global0.b.a, global0.b.a), vec2<u32>(1u, ~_wgslsmith_mult_u32(40832u ^ global0.d.x, _wgslsmith_div_u32(u_input.a.x, global0.d.x))), min(~vec4<u32>(~global0.d.x, 20433u, _wgslsmith_dot_vec3_u32(u_input.a.wyx, vec3<u32>(4294967295u, global0.d.x, 43316u)), u_input.a.x << (74784u % 32u)), ~vec4<u32>(19776u, _wgslsmith_sub_u32(4294967295u, 4294967295u), 1u, global0.d.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c, _wgslsmith_f_op_f32(round(-1193f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.a.d.x, 1198f), 1299f))), vec3<f32>(global0.a.d.x, _wgslsmith_f_op_f32(-arg_0.x), 1132f), !vec3<bool>(all(vec4<bool>(true, global0.a.a.x, global0.b.a.x, false)), false, any(vec3<bool>(true, global0.a.a.x, global0.b.a.x))))), ~((global0.a.e & ~u_input.a.x) & _wgslsmith_mult_u32(~0u, global0.a.e)));
    let var_3 = Struct_2(global0.b, Struct_1(vec2<bool>(any(vec3<bool>(true, false, var_2.a.x)), false), u_input.a.yz, ~vec4<u32>(119400u, _wgslsmith_clamp_u32(global0.a.e, 4294967295u, 0u), ~u_input.a.x, ~0u), var_2.d, _wgslsmith_div_u32(~(var_2.b.x >> (23667u % 32u)), u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - global0.c)), _wgslsmith_f_op_f32(-global0.c))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1276f, var_2.d.x, false)), global0.a.d.x)))), vec2<u32>(~1u, abs(~44574u)));
    var_2 = Struct_1(global0.b.a, _wgslsmith_add_vec2_u32(~vec2<u32>(~1u, 1u), firstLeadingBit(~_wgslsmith_mult_vec2_u32(global0.b.c.xw, vec2<u32>(0u, global0.b.b.x)))), ~vec4<u32>(_wgslsmith_clamp_u32(~1u, u_input.a.x, _wgslsmith_mult_u32(global0.b.e, global0.d.x)), u_input.a.x, 4294967295u, 7935u), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.d.x, var_2.d.x, 454f) + var_3.a.d)), ~vec2<u32>(0u, var_2.c.x))).x, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-539f)))), 634f), var_2.e);
    return var_0;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = ~global0.a.c.wxz;
    let var_1 = Struct_2(global0.a, Struct_1(vec2<bool>(true, !global0.a.a.x), u_input.a.yy, u_input.a & u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.d)) - vec3<f32>(_wgslsmith_f_op_f32(select(1206f, arg_0, global0.a.a.x)), 178f, global0.c)), select(~reverseBits(global0.b.c.x), 1u, u_input.b < -u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(abs(46307u), _wgslsmith_div_f32(1194f, 710f), _wgslsmith_f_op_vec3_f32(global0.a.d + vec3<f32>(1067f, arg_0, global0.c)))), _wgslsmith_f_op_f32(-global0.b.d.x))), max(select(vec2<u32>(~var_0.x, ~64746u), global0.b.b, !global0.a.a.x), vec2<u32>(~select(4294967295u, u_input.a.x, global0.b.a.x), 4294967295u)));
    let var_2 = var_1;
    let var_3 = countOneBits(~max(-vec4<i32>(u_input.b, u_input.c.x, 2147483647i, u_input.c.x), func_4(_wgslsmith_f_op_vec3_f32(func_3(var_2.a.d, var_1.d)))));
    global1 = ((u_input.c.x <= u_input.b) & true) && !global0.b.a.x;
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a, global0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.c, _wgslsmith_f_op_f32(global0.a.d.x - global0.a.d.x))) + _wgslsmith_f_op_f32(round(125f))), -629f)), u_input.a.xy);
    let var_0 = -1000f;
    global1 = global0.a.a.x;
    let var_1 = func_1(var_0);
    let var_2 = _wgslsmith_mod_u32(43594u | reverseBits(u_input.a.x), _wgslsmith_add_u32(~u_input.a.x, ~(_wgslsmith_dot_vec4_u32(global0.a.c, vec4<u32>(global0.d.x, 45743u, 61294u, u_input.a.x)) ^ firstLeadingBit(global0.a.e))));
    var var_3 = ~(~var_1.b);
    let var_4 = u_input.c.yx;
    var var_5 = _wgslsmith_mult_u32(var_3.x, _wgslsmith_mult_u32(~((71208u & global0.b.e) ^ reverseBits(var_2)), ~1u));
    var var_6 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, var_4.x, 1i, var_4.x), vec4<i32>(var_4.x, var_4.x, 2147483647i, -2147483647i), false), -vec4<i32>(0i, -437i, u_input.c.x, var_4.x)), u_input.b), -1i), u_input.c.x, -(-u_input.b ^ 2147483647i) & -reverseBits(2147483647i), ~var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_i32(var_6.x, i32(-1i) * -48841i));
}

