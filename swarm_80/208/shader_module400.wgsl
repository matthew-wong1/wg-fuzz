struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 37589u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1165f) + -552f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(176f + 356f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f * -1000f)))));
    let var_1 = _wgslsmith_mod_u32(~firstLeadingBit(abs(u_input.b.x)), firstTrailingBit(1u));
    let var_2 = Struct_3(select(vec3<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true))), true, true), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), any(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), true))), Struct_1(~(vec2<i32>(u_input.d, -1i) >> (u_input.c % vec2<u32>(32u))), 0u, vec2<bool>(true, true)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-700f * var_0)) + 1387f), var_0, -1757f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0)))))));
    global0 = 102181u;
    let var_3 = _wgslsmith_mult_vec2_u32(vec2<u32>(~0u, _wgslsmith_dot_vec3_u32(~u_input.b.www, ~(~vec3<u32>(12645u, var_1, var_2.b.b)))), vec2<u32>(u_input.b.x, 1u));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-538f - _wgslsmith_f_op_f32(max(-1007f, var_2.c.x)))), -475f));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = vec4<i32>(-1i) * -vec4<i32>(abs(~(-2147483647i)), u_input.d, u_input.d | _wgslsmith_div_i32(u_input.d, -66029i), _wgslsmith_mod_i32(-1i, u_input.d));
    global0 = _wgslsmith_mod_u32(~u_input.c.x, 4294967295u);
    var var_2 = -var_1;
    var var_3 = !select(!select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), !vec4<bool>(true, any(vec4<bool>(false, true, true, false)), true, true));
    return Struct_2(Struct_1(vec2<i32>(-1i) * -vec2<i32>(u_input.d, 18199i), 1u, var_3.zz));
}

fn func_1() -> Struct_4 {
    global0 = ~u_input.a;
    let var_0 = func_2();
    var var_1 = u_input.b;
    var var_2 = u_input.d;
    let var_3 = vec4<bool>(any(!select(vec4<bool>(var_0.a.c.x, var_0.a.c.x, true, true), vec4<bool>(true, true, var_0.a.c.x, var_0.a.c.x), !vec4<bool>(var_0.a.c.x, true, var_0.a.c.x, false))), (true | func_2().a.c.x) | (var_1.x < _wgslsmith_dot_vec3_u32(u_input.b.zzz & u_input.b.xyy, ~var_1.yww)), func_2().a.c.x & true, (_wgslsmith_div_u32(~var_0.a.b, var_1.x) == 3995u) | false);
    return Struct_4(41102i, _wgslsmith_add_vec3_i32(~(~_wgslsmith_mult_vec3_i32(vec3<i32>(41167i, u_input.d, var_0.a.a.x), vec3<i32>(0i, u_input.d, u_input.d))), vec3<i32>(var_0.a.a.x, var_0.a.a.x, ~4296i) << (vec3<u32>(var_0.a.b, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.b, var_0.a.b, var_0.a.b), vec3<u32>(23663u, 15847u, 62622u))) % vec3<u32>(32u))), var_1.yxx);
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    let var_0 = all(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false), select(true, true, true) != true), vec4<bool>(true, countOneBits(u_input.d) > u_input.d, !all(vec2<bool>(false, true)), false)));
    let var_1 = abs(arg_0.b.yy);
    var var_2 = Struct_2(func_2().a);
    var_2 = Struct_2(var_2.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-474f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3())))));
    return Struct_3(vec3<bool>(!(!(var_2.a.b >= 1491u)), true, var_0), Struct_1(vec2<i32>(~var_2.a.a.x, i32(-1i) * -1i), _wgslsmith_add_u32(0u, func_1().c.x & abs(var_2.a.b)), func_2().a.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-930f + 595f), _wgslsmith_f_op_f32(-908f - -1129f), var_3.x, 567f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, -580f, -265f) + vec4<f32>(-1378f, 1000f, 298f, var_3.x)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 1665f, 1548f, var_3.x), vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(596f, -263f, -1373f, -318f) * vec4<f32>(-1281f, var_3.x, var_3.x, -1121f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-532f, var_3.x, var_3.x, 770f) * vec4<f32>(-424f, -1000f, var_3.x, 2852f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-258f, var_3.x, var_3.x, 313f)), func_2().a.c.x)), !any(vec4<bool>(true, true, var_0, var_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b.x;
    let var_0 = func_4(func_1());
    var var_1 = 4294967295u;
    let var_2 = Struct_3(var_0.a, var_0.b, vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c.x)) + -1130f) * _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(1099f - -761f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-556f * -1161f) * var_0.c.x)), _wgslsmith_f_op_f32(-2484f - 829f)));
    let var_3 = true;
    var var_4 = !var_3;
    var var_5 = select(vec2<u32>(4294967295u, ~(~(~var_0.b.b))), countOneBits(vec2<u32>(abs(u_input.b.x), reverseBits(1u)) | u_input.b.yw), !var_2.a.yz);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a.x, _wgslsmith_f_op_f32(var_2.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-176f + func_4(Struct_4(var_0.b.a.x, vec3<i32>(var_2.b.a.x, u_input.d, -2147483647i), vec3<u32>(var_2.b.b, var_2.b.b, var_0.b.b))).c.x))), _wgslsmith_f_op_f32(-633f - -315f), var_0.c.zzw);
}

