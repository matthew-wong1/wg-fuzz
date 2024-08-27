struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> bool {
    global0 = arg_3.a;
    global0 = select(vec3<bool>(true, true, arg_1.a.x), select(select(select(!vec3<bool>(arg_1.a.x, false, false), select(arg_1.a, vec3<bool>(global0.x, arg_1.a.x, true), arg_1.a), !arg_3.a.x), select(!vec3<bool>(arg_1.a.x, false, arg_3.a.x), select(arg_1.a, arg_1.a, arg_1.a.x), 2147483647i < arg_2), vec3<bool>(true, arg_1.a.x, arg_1.a.x)), arg_3.a, true || select(!global0.x, all(arg_3.a.yy), true)), arg_1.a);
    global0 = vec3<bool>(false, all(!(!select(vec4<bool>(global0.x, global0.x, false, arg_1.a.x), vec4<bool>(false, global0.x, false, arg_3.a.x), vec4<bool>(arg_1.a.x, true, arg_3.a.x, arg_1.a.x)))), true);
    var var_0 = _wgslsmith_dot_vec3_u32(~arg_3.d.xyz, ~arg_3.d.wzx);
    let var_1 = countOneBits(vec2<i32>(u_input.a, arg_2));
    return -(~0i) >= min(u_input.a, select(u_input.a, ~(arg_2 & -16769i), global0.x));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(ceil(258f));
    global0 = vec3<bool>(func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(vec3<bool>(global0.x, true, global0.x), _wgslsmith_f_op_f32(step(1853f, _wgslsmith_f_op_f32(abs(-1056f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-900f - 1191f) - 461f), ~select(vec4<u32>(10536u, 149330u, 27898u, 72041u), vec4<u32>(92991u, 21141u, 10452u, 66678u), vec4<bool>(global0.x, false, true, global0.x)), -2269f), 1i, Struct_1(vec3<bool>(true, true, global0.x && true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-700f, -637f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -2053f)), ~(~vec4<u32>(1u, 1u, 1u, 11090u)), 1000f)), (global0.x != global0.x) && true, false);
    var var_1 = Struct_1(vec3<bool>(all(vec4<bool>(true, false, !global0.x, true)), any(vec4<bool>(!global0.x, false, false, global0.x)), ~4294967295u == ~_wgslsmith_dot_vec4_u32(vec4<u32>(4848u, 59155u, 2608u, 54969u), vec4<u32>(44436u, 1u, 8259u, 4294967295u))), 122f, _wgslsmith_f_op_f32(-1f), ~(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1110f)) * _wgslsmith_f_op_f32(f32(-1f) * -835f)) + -511f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -494f))));
    var var_2 = Struct_2(abs(vec2<i32>(~u_input.a, _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(3965i, u_input.a), vec2<i32>(u_input.a, 25207i))))), Struct_1(var_1.a, 1000f, var_1.e, var_1.d, 391f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -734f) * _wgslsmith_f_op_f32(floor(522f))) - _wgslsmith_f_op_f32(max(1515f, var_1.c))), Struct_1(var_1.a, _wgslsmith_f_op_f32(-2210f * var_1.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1757f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(401f + 120f))), var_1.d | ~(~var_1.d), var_1.b));
    let var_3 = var_1.a.x;
    return Struct_1(vec3<bool>(all(var_1.a.yy), var_2.d.a.x, global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)), var_2.d.e, vec4<u32>(10394u, firstLeadingBit(69708u), (var_1.d.x & 34959u) ^ 1u, ~(~(~1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.b.e, var_2.c), var_1.b))) + _wgslsmith_f_op_f32(-509f * var_1.e)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(select(select(vec2<i32>(8922i, 27133i), vec2<i32>(u_input.a, -2147483647i), arg_1.a.yy) >> ((arg_1.d.wx >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)), -vec2<i32>(u_input.a, 98423i), firstTrailingBit(-2147483647i) < (u_input.a << (arg_1.d.x % 32u))) >> (((abs(vec2<u32>(arg_1.d.x, 1u)) | reverseBits(arg_1.d.xz)) >> (~vec2<u32>(arg_1.d.x, arg_1.d.x) % vec2<u32>(32u))) % vec2<u32>(32u)), func_2(), -1945f, arg_1);
    let var_1 = var_0.d;
    let var_2 = vec2<bool>(!(var_0.b.a.x | true), all(vec4<bool>(var_0.b.a.x, true, any(select(vec2<bool>(false, false), arg_1.a.xz, global0.x)), global0.x)));
    var var_3 = vec2<bool>(all(vec4<bool>(arg_1.a.x, global0.x, all(!vec4<bool>(global0.x, var_2.x, true, true)), arg_1.a.x)), false);
    let var_4 = _wgslsmith_mod_vec3_u32(arg_1.d.ywx, firstTrailingBit(var_1.d.yxy));
    return arg_1;
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -3226f, -1237f, 1162f)), func_2());
    var var_1 = var_0.e;
    var_1 = 796f;
    var var_2 = Struct_1(var_0.a, _wgslsmith_f_op_f32(step(func_2().c, var_0.c)), func_2().e, var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - -908f))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.b, var_2.e, var_2.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_2.b, 825f))) - vec3<f32>(_wgslsmith_f_op_f32(var_2.e - 246f), var_2.b, _wgslsmith_f_op_f32(f32(-1f) * -246f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(148f, 387f, -877f) - vec3<f32>(var_0.c, var_2.e, var_2.b)))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec2<bool>(global0.x || all(vec4<bool>(true, true, false, false)), true), vec2<bool>(!(!global0.x), global0.x || false), !vec2<bool>(global0.x, false));
    var var_1 = vec2<i32>(~_wgslsmith_clamp_i32(70780i, -2147483647i, i32(-1i) * -19771i), -1i);
    var var_2 = func_1();
    let var_3 = func_1();
    let var_4 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.e, var_2.b, -1145f, var_3.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, var_3.c, 1316f, var_4))) * vec4<f32>(_wgslsmith_f_op_f32(-var_2.b), -209f, var_3.b, _wgslsmith_f_op_f32(-var_4))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b, var_4, var_2.c, -1573f)))))), -_wgslsmith_dot_vec2_i32(select(_wgslsmith_div_vec2_i32(vec2<i32>(0i, var_1.x), vec2<i32>(1i, 11213i)), ~vec2<i32>(19036i, var_1.x), true), ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 2147483647i))), max(-firstTrailingBit(vec2<i32>(3197i, -2147483647i)), min(-vec2<i32>(var_1.x, -5615i), ~countOneBits(vec2<i32>(30997i, u_input.a)))));
}

