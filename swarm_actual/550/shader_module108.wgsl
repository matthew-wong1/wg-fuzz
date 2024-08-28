struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
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

var<private> global0: u32;

var<private> global1: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + arg_2.a.x) * _wgslsmith_f_op_f32(abs(arg_0.a.x))), _wgslsmith_f_op_f32(ceil(arg_2.a.x)), arg_1.x)) - arg_2.a.x);
    global0 = ~_wgslsmith_div_u32(21723u, 13827u) ^ countOneBits(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~u_input.c, 1u), u_input.c, 76838u));
    var var_1 = _wgslsmith_f_op_f32(abs(arg_0.a.x));
    var var_2 = u_input.c;
    var var_3 = true;
    return -2147483647i <= u_input.b.x;
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    let var_0 = !vec2<bool>(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.zyx)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.yxy + arg_0.wzz))), select(any(vec2<bool>(true, true)), true || (287f < arg_0.x), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.yzw)));
    return select(select(~1u, u_input.c, true) ^ 42638u, firstLeadingBit(464u) << (_wgslsmith_mod_u32(min(_wgslsmith_sub_u32(1u, u_input.c), select(u_input.c, u_input.c, var_0.x)), select(u_input.c, u_input.c & 31451u, !var_0.x)) % 32u), all(!(!(!vec2<bool>(var_0.x, var_0.x)))));
}

fn func_1() -> Struct_1 {
    global0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 1201f, 544f, 1000f), vec4<f32>(-1000f, -201f, -513f, -1579f)))))) >> (40045u % 32u);
    var var_0 = abs(~_wgslsmith_mod_i32(0i, u_input.a.x) ^ -16188i) < ~(~u_input.a.x);
    global0 = u_input.c;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(532f, -1062f), _wgslsmith_f_op_f32(1868f - -1861f), _wgslsmith_f_op_f32(f32(-1f) * -1234f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1270f, -568f) - vec3<f32>(2164f, 246f, 1399f))))));
    var var_2 = _wgslsmith_sub_i32(select(u_input.b.x, u_input.b.x, true), -countOneBits(firstTrailingBit(i32(-1i) * -27035i)));
    return Struct_1(var_1.a);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global1 = arg_3;
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-arg_0.a.x)))), var_0.a.x, -_wgslsmith_sub_i32(u_input.b.x, 49317i) != _wgslsmith_dot_vec2_i32(select(vec2<i32>(27125i, u_input.b.x), vec2<i32>(-1i, u_input.a.x), false), _wgslsmith_add_vec2_i32(u_input.a.yx, u_input.a.yy)))));
    var var_2 = abs(~select(vec2<u32>(_wgslsmith_mod_u32(arg_3, arg_3), arg_3 << (arg_3 % 32u)), vec2<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1, arg_1), vec3<u32>(arg_1, arg_3, arg_1))), !all(vec3<bool>(true, true, true))));
    var var_3 = 1426f;
    return func_1();
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    global0 = u_input.c;
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_1.a.x)), arg_1.a.x));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), 0i);
    var var_2 = ~87312u;
    var var_3 = !vec3<bool>(true, -1000f == func_4(arg_1, _wgslsmith_dot_vec2_u32(vec2<u32>(67531u, u_input.c), vec2<u32>(25010u, 4294967295u)), arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(158208u, arg_2.x, 90375u), vec3<u32>(arg_2.x, 78850u, 65620u))).a.x, !(min(arg_0.x, u_input.a.x) > 0i));
    return func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_1.a, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(488f, arg_1.a.x, var_0))))))), ~arg_2.x, arg_1, _wgslsmith_div_u32(1u, ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(reverseBits(vec2<i32>(i32(-1i) * -759i, -58855i)), func_4(func_1(), u_input.c, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(526f, -1626f, -1059f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1357f, -114f, 187f) - vec3<f32>(-1698f, 287f, -393f)))), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(_wgslsmith_mult_u32(u_input.c, u_input.c), _wgslsmith_clamp_u32(u_input.c, 4294967295u, u_input.c)))), ~(~select(vec4<u32>(u_input.c, 52481u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), false)) << (~(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 109606u, 18405u, u_input.c), vec4<u32>(4294967295u, 2370u, u_input.c, 0u))) % vec4<u32>(32u)));
    var var_1 = Struct_1(var_0.a);
    let var_2 = ~vec2<u32>(0u, ~abs(6171u));
    global1 = u_input.c;
    let var_3 = u_input.c;
    let var_4 = var_0;
    let var_5 = func_1();
    let var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x | ((u_input.b.x & -1i) ^ _wgslsmith_div_i32(u_input.a.x, u_input.a.x)));
}

