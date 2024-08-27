struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: Struct_1;

var<private> global2: u32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(arg_0.a));
    let var_1 = ~(~abs(_wgslsmith_mult_u32(86160u, abs(0u))));
    let var_2 = arg_0;
    var var_3 = vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(select(1771f, _wgslsmith_f_op_f32(-var_0.x), any(vec3<bool>(all(vec4<bool>(false, global0.x, global0.x, false)), true, false)))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-369f, var_3.x, -319f), vec3<f32>(global1.a.x, 512f, 135f)) - vec3<f32>(var_3.x, arg_0.a.x, -1574f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -173f, -1313f))) - global1.a), select(firstTrailingBit(~select(u_input.a, var_2.b, vec4<bool>(false, false, global0.x, true))), global1.b, true), u_input.a.x, var_2.b.zyy);
    return vec3<f32>(-123f, 222f, 937f);
}

fn func_2(arg_0: i32) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1571f, 801f, -1544f) * global1.a) * _wgslsmith_f_op_vec3_f32(func_3(Struct_1(global1.a, vec4<u32>(global1.b.x, global1.c, global1.d.x, 4294967295u), 0u, vec3<u32>(39909u, 1u, 34688u)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, -751f, global1.a.x) * vec3<f32>(global1.a.x, 1000f, global1.a.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-222f, global1.a.x, -333f), global1.a, vec3<bool>(global0.x, global0.x, true))))), _wgslsmith_f_op_vec3_f32(-global1.a))), global1.b, 4294967295u, u_input.a.zzz);
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(-801f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -349f) + _wgslsmith_div_f32(1000f, -1625f))), _wgslsmith_f_op_f32(1052f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a.x, global1.a.x))))), firstLeadingBit(~firstLeadingBit(countOneBits(global1.b))), _wgslsmith_clamp_u32(34523u, ~reverseBits(global1.c), _wgslsmith_div_u32(1u, 1u)), firstTrailingBit(vec3<u32>(~global1.d.x, 40064u, min(u_input.a.x, 1u))) >> (vec3<u32>(~(4294967295u >> (global1.b.x % 32u)), ~global1.d.x, max(~63383u, _wgslsmith_dot_vec3_u32(u_input.a.xxw, vec3<u32>(0u, global1.b.x, 68929u)))) % vec3<u32>(32u)));
    var var_1 = var_0;
    global2 = 1u;
    var var_2 = select(true, global0.x | (!global0.x && true), true);
    return Struct_1(vec3<f32>(-464f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(sign(-1409f))), -532f), (countOneBits(vec4<u32>(88652u, 83873u, 14633u, 1u)) | vec4<u32>(var_1.c, abs(var_1.c), global1.b.x, var_0.c)) << (vec4<u32>(~var_0.c, max(min(0u, global1.d.x), ~u_input.a.x), var_0.c, firstTrailingBit(4294967295u)) % vec4<u32>(32u)), var_0.d.x, vec3<u32>(4294967295u, var_0.c, abs(firstLeadingBit(_wgslsmith_div_u32(1u, 42143u)))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    global0 = select(vec3<bool>(global0.x, false && !(!global0.x), all(vec3<bool>(global0.x && false, !global0.x, true))), vec3<bool>(false, all(select(select(vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, false, global0.x), false), vec3<bool>(global0.x, true, false), !global0.x)), all(!select(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, true, global0.x, false)))), select(vec3<bool>(global0.x, false, global0.x), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, global0.x), true), !(!vec3<bool>(false, global0.x, global0.x)), select(!vec3<bool>(global0.x, false, true), !vec3<bool>(true, global0.x, true), vec3<bool>(false, true, global0.x))), !(!(!vec3<bool>(global0.x, false, false)))));
    var var_0 = false;
    global0 = !select(!select(!vec3<bool>(global0.x, global0.x, true), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, false, global0.x)), global0.x), vec3<bool>(global0.x, select(global0.x, any(vec3<bool>(false, global0.x, true)), true | global0.x), !(!global0.x)), select(vec3<bool>(true, false, global0.x), !vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, global0.x, global0.x), select(global0.x, global0.x, true))));
    var var_1 = all(global0.zz);
    var_0 = !any(vec2<bool>(true, global0.x));
    return -2174f;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(global1.a.x)), global1.a.x))));
    var var_1 = ~arg_1.b;
    global2 = ~(u_input.a.x & arg_1.c);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-459f)))) * var_0.x)) * _wgslsmith_f_op_f32(-246f * _wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(func_4(arg_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, arg_3.x, arg_3.x) * arg_1.a), _wgslsmith_add_vec3_i32(vec3<i32>(-42156i, arg_0, arg_2), vec3<i32>(2147483647i, -1i, arg_0)), func_2(22141i))))));
    let var_3 = func_2(1i);
    return arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(global1.a.x, 461f, all(!vec3<bool>(global0.x, false, true)))), _wgslsmith_f_op_f32(func_1(~9844i, Struct_1(global1.a, ~vec4<u32>(50591u, u_input.a.x, u_input.a.x, 46237u), ~111249u, vec3<u32>(u_input.a.x, 4294967295u, 2481u)), ~countOneBits(-34832i), vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(-global1.a.x)))), -773f), vec4<u32>(u_input.a.x | ~(~1u), max(countOneBits(abs(global1.d.x)), firstLeadingBit(u_input.a.x)), ~_wgslsmith_clamp_u32(firstTrailingBit(global1.c), 19633u, ~18713u), global1.b.x | ~(~u_input.a.x)), 1u, _wgslsmith_add_vec3_u32(vec3<u32>(1u, 70351u, min(abs(4294967295u), _wgslsmith_mod_u32(global1.b.x, 4294967295u))), ~(~(~vec3<u32>(0u, 0u, global1.d.x)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1741f, global1.a.x, -1974f), vec3<f32>(var_0.a.x, var_0.a.x, 1000f))) + _wgslsmith_f_op_vec3_f32(global1.a - vec3<f32>(var_0.a.x, global1.a.x, 387f))))), ~vec4<u32>(~select(0u, 1u, global0.x), max(4294967295u & u_input.a.x, global1.b.x), 1u, reverseBits(0u)), ~u_input.a.x, firstTrailingBit(countOneBits(firstTrailingBit(abs(global1.d)))));
    let var_2 = func_2(_wgslsmith_add_i32(_wgslsmith_add_i32((1i << (1u % 32u)) << ((17012u << (var_1.b.x % 32u)) % 32u), _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, -1i, 21359i), vec3<i32>(1i, 1i, 1i))), _wgslsmith_mod_i32(-17893i, -11808i)));
    var var_3 = ~vec3<u32>(_wgslsmith_clamp_u32(~firstLeadingBit(var_0.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_2.d.x), _wgslsmith_clamp_vec2_u32(var_0.b.xy, vec2<u32>(1u, u_input.a.x), var_1.b.yw)), u_input.a.x), _wgslsmith_mod_u32(global1.d.x, _wgslsmith_clamp_u32(firstLeadingBit(0u), 27240u, var_1.b.x)), ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global1.c, var_2.d.x, var_2.b.x), 1u));
    global0 = vec3<bool>(var_1.a.x > _wgslsmith_f_op_f32(func_4(-1i, vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(var_1.a.x, -1568f, global1.a.x), vec4<u32>(global1.d.x, 44666u, 69993u, var_1.c), 0u, vec3<u32>(var_2.d.x, 1u, u_input.a.x)))).x, _wgslsmith_f_op_f32(var_0.a.x - -428f)), ~(-vec3<i32>(-85299i, -12880i, 17372i)), Struct_1(global1.a, select(var_1.b, var_1.b, global0.x), 4294967295u, var_1.b.yyw))), false, -27875i >= (_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, -2147483647i, -2147483647i, -23882i)), vec4<i32>(1i, 1i, 1i, 1i)) | _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(0i, 2147483647i)), _wgslsmith_div_i32(-36417i, 38199i))));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(vec2<u32>(var_0.b.x, 6477u))), vec2<i32>(-(~(-2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i))));
}

