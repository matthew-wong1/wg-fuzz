struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(true, true, false, true));

var<private> global1: vec2<i32>;

var<private> global2: u32 = 63479u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> vec3<u32> {
    var var_0 = abs(u_input.a);
    var var_1 = Struct_1(~u_input.c.xzy);
    var var_2 = Struct_1(u_input.c.xww);
    var_1 = Struct_1(vec3<u32>(var_2.a.x, abs(48463u), _wgslsmith_dot_vec2_u32(select(_wgslsmith_mult_vec2_u32(var_2.a.yz, vec2<u32>(u_input.c.x, 11328u)), max(u_input.c.wz, vec2<u32>(26267u, 24443u)), vec2<bool>(true, true)), var_1.a.zy)));
    var var_3 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(var_2.a, var_1.a | u_input.c.wzw), var_1.a.x, ~0u), u_input.c.wxw << (vec3<u32>(~52289u, _wgslsmith_dot_vec2_u32(u_input.c.yz, var_1.a.yx), ~77470u) % vec3<u32>(32u))));
    return ~_wgslsmith_mult_vec3_u32(~countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.c.x, 20576u), vec3<u32>(u_input.c.x, 28342u, var_1.a.x), vec3<u32>(27391u, u_input.c.x, 1u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c.x, 4294967295u, var_1.a.x), (u_input.c.wyz & vec3<u32>(var_1.a.x, 22184u, 13106u)) >> (select(var_1.a, vec3<u32>(var_1.a.x, 4294967295u, var_3.a.x), false) % vec3<u32>(32u))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec2<i32>) -> i32 {
    let var_0 = arg_1;
    var var_1 = func_2();
    global0 = array<vec4<bool>, 1>();
    var var_2 = Struct_1(var_0.a);
    var var_3 = Struct_1(~(var_0.a << (var_0.a % vec3<u32>(32u))));
    return 2147483647i;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>) -> vec2<i32> {
    global0 = array<vec4<bool>, 1>();
    let var_0 = Struct_1(vec3<u32>(arg_1.x, select(_wgslsmith_sub_u32(u_input.c.x, arg_0.x), _wgslsmith_dot_vec4_u32(~arg_1, ~vec4<u32>(u_input.c.x, arg_0.x, 1u, 12172u)), true), func_2().x));
    global0 = array<vec4<bool>, 1>();
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1155f)))), _wgslsmith_f_op_f32(trunc(268f))))));
    global0 = array<vec4<bool>, 1>();
    return _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_div_i32(firstLeadingBit(-47234i), u_input.a.x) >> (~countOneBits(arg_1.x) % 32u), -62500i), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.c.x;
    global1 = vec2<i32>(func_1(-vec4<i32>(-18330i, global1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, u_input.b), vec2<i32>(u_input.b, global1.x)), ~u_input.a.x), Struct_1(~vec3<u32>(10801u, 1u, u_input.c.x)), vec3<i32>(global1.x, 1621i, 2147483647i), ~u_input.a), 41262i | global1.x);
    global2 = 4294967295u >> (_wgslsmith_dot_vec4_u32(countOneBits(u_input.c), u_input.c) % 32u);
    var var_0 = Struct_1(u_input.c.zzx);
    global1 = vec2<i32>(~u_input.b, -global1.x);
    var_0 = Struct_1(u_input.c.zyy);
    global1 = select(func_3(u_input.c.yzw, u_input.c), _wgslsmith_sub_vec2_i32(u_input.a, _wgslsmith_mult_vec2_i32(vec2<i32>(global1.x, global1.x), u_input.a)), true) & vec2<i32>(reverseBits(i32(-1i) * -17059i), -_wgslsmith_dot_vec2_i32(-u_input.a, vec2<i32>(1i, 1i)));
    global2 = 15096u ^ _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, ~u_input.c.x), 23519u), u_input.c.x);
    let var_1 = ~_wgslsmith_add_i32(17478i, -abs(~u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(530f, -1000f, -314f, -763f), vec4<f32>(-116f, 409f, -2062f, -202f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-812f, -2430f, 1311f, -536f) * vec4<f32>(705f, 551f, -738f, -596f)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(262f, 316f, 1009f, -145f) * vec4<f32>(-1144f, -222f, -1258f, -719f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(344f, -1326f, 1000f, -3134f) - vec4<f32>(-557f, 216f, -1529f, -1556f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 263f, 315f, 588f), vec4<f32>(-1604f, -140f, 103f, -1000f)))))))));
}

