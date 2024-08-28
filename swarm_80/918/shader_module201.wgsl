struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    global0 = Struct_3(Struct_1(_wgslsmith_mod_vec2_i32(-u_input.a.zz, select(global0.b.a, vec2<i32>(1i, 1i), arg_0)) | _wgslsmith_mult_vec2_i32(~global0.b.a, ~u_input.a.zy)), global0.b, global0.c, Struct_1(-vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global0.d.a.x), vec2<i32>(71402i, -14033i)), 178i ^ global0.a.a.x)), _wgslsmith_f_op_vec4_f32(sign(global0.e)));
    var var_0 = ~vec3<i32>(countOneBits(global0.d.a.x) << (25793u % 32u), -1i, -2147483647i);
    let var_1 = 1i;
    let var_2 = vec2<i32>(~reverseBits(-(~var_1)), ~select(firstTrailingBit(var_1), u_input.b.x, true));
    var var_3 = Struct_3(global0.a, global0.a, Struct_2(global0.c.a), Struct_1(vec2<i32>(~select(var_2.x, var_2.x, arg_0), ~(var_2.x & 1i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-986f, 777f, global0.e.x, 359f), vec4<f32>(-775f, -303f, 1253f, global0.e.x))), _wgslsmith_f_op_vec4_f32(-global0.e), 1u > global0.c.a))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global0.e)))));
    return global0.e;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: u32) -> f32 {
    var var_0 = !vec2<bool>(!any(vec4<bool>(true, true, true, true)), arg_0.x);
    var_0 = !(!vec2<bool>(810f <= _wgslsmith_div_f32(-439f, arg_2.e.x), arg_0.x));
    var_0 = select(!select(vec2<bool>(true, !var_0.x), !(!arg_0.xx), select(select(vec2<bool>(false, var_0.x), arg_0.zx, arg_0.yx), arg_0.xx, arg_0.xy)), arg_0.zx, ~global0.c.a > arg_3);
    var var_1 = select(vec3<bool>(true, !any(vec3<bool>(var_0.x, true, true)), arg_0.x), arg_0, arg_0);
    var var_2 = arg_1;
    return _wgslsmith_f_op_f32(ceil(2034f));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_3(global0.a, global0.b, Struct_2(4294967295u), global0.b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -715f, 819f, 517f)) + vec4<f32>(global0.e.x, global0.e.x, global0.e.x, arg_1))), _wgslsmith_f_op_vec4_f32(trunc(global0.e)))));
    global0 = Struct_3(Struct_1((~vec2<i32>(u_input.b.x, 0i) | u_input.a.zw) << (firstTrailingBit(vec2<u32>(global0.c.a, var_0.c.a)) % vec2<u32>(32u))), global0.a, global0.c, global0.d, vec4<f32>(var_0.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - global0.e.x), 1098f), _wgslsmith_f_op_f32(func_4(vec3<bool>(true, !arg_0, all(vec2<bool>(false, true))), var_0.d, Struct_3(Struct_1(vec2<i32>(4498i, 2147483647i)), global0.b, Struct_2(4294967295u), Struct_1(var_0.d.a), _wgslsmith_f_op_vec4_f32(func_3(false))), arg_2.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1048f, 2189f))))));
    let var_1 = arg_2.yyw;
    var var_2 = u_input.a.wx;
    let var_3 = global0.b;
    return var_0.d;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_3 {
    global0 = Struct_3(arg_2, func_2(false, 1235f, (~vec4<u32>(0u, 80019u, global0.c.a, 29446u) >> (select(vec4<u32>(global0.c.a, 2696u, arg_1.x, global0.c.a), vec4<u32>(4294967295u, 4294967295u, global0.c.a, 1u), false) % vec4<u32>(32u))) >> (min(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, global0.c.a, 4294967295u, arg_0.a), vec4<u32>(32420u, 32412u, 32629u, 1u)), ~vec4<u32>(4294967295u, 0u, global0.c.a, arg_1.x)) % vec4<u32>(32u))), arg_0, Struct_1(arg_2.a), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(global0.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, 784f, global0.e.x, 121f)), all(vec4<bool>(true, false, false, false)))))), vec4<f32>(175f, 303f, _wgslsmith_f_op_f32(f32(-1f) * -545f), _wgslsmith_f_op_f32(func_4(vec3<bool>(true, true, false), global0.a, Struct_3(Struct_1(vec2<i32>(arg_2.a.x, global0.d.a.x)), arg_2, Struct_2(arg_0.a), global0.d, vec4<f32>(-997f, -541f, global0.e.x, global0.e.x)), global0.c.a))))));
    var var_0 = Struct_1(_wgslsmith_sub_vec2_i32(-vec2<i32>(firstTrailingBit(2147483647i), arg_2.a.x), reverseBits(func_2(true, global0.e.x, vec4<u32>(global0.c.a, 0u, 1u, arg_1.x)).a)));
    var var_1 = global0.e.zwy;
    let var_2 = Struct_3(global0.b, global0.a, Struct_2(53773u), func_2(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -464f)) + _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(round(var_1.x)))), vec4<u32>(4294967295u, firstLeadingBit(~4294967295u), ~1u, 0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.e, global0.e))) - vec4<f32>(_wgslsmith_f_op_f32(global0.e.x - _wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(exp2(global0.e.x)), 270f, _wgslsmith_f_op_f32(-1338f - global0.e.x))));
    var_0 = arg_2;
    return Struct_3(func_2(!all(vec4<bool>(true, true, true, true)), -1123f, firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(arg_0.a, var_2.c.a), _wgslsmith_sub_u32(var_2.c.a, var_2.c.a), ~1u, ~arg_1.x))), func_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x - -1205f)), ~(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, arg_0.a, 38147u, 0u), vec4<u32>(global0.c.a, 0u, 4294967295u, var_2.c.a)) | select(vec4<u32>(global0.c.a, global0.c.a, 53874u, var_2.c.a), vec4<u32>(1u, 70580u, 9847u, arg_1.x), false))), Struct_2(~arg_1.x), func_2(all(select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_f32(365f + global0.e.x), abs(select(vec4<u32>(24504u, global0.c.a, var_2.c.a, arg_1.x), min(vec4<u32>(27662u, 4294967295u, arg_1.x, global0.c.a), vec4<u32>(39684u, 1u, global0.c.a, 4294967295u)), vec4<bool>(false, true, true, false)))), vec4<f32>(global0.e.x, _wgslsmith_f_op_f32(global0.e.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_2.e.x) * _wgslsmith_f_op_f32(-global0.e.x))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-516f, _wgslsmith_div_f32(-1000f, 367f)), 1039f)), _wgslsmith_f_op_f32(round(var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(select(20723u, global0.c.a, true), min(4294967295u, 4294967295u))), ~select(abs(vec2<u32>(global0.c.a, global0.c.a)), ~vec2<u32>(4294967295u, global0.c.a), any(vec3<bool>(true, false, false)))));
    var var_1 = global0.c;
    var var_2 = func_1(global0.c, select(vec2<u32>(_wgslsmith_sub_u32(4294967295u, var_1.a), 4294967295u), ~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 972u), vec2<u32>(0u, 48911u)), firstTrailingBit(vec2<u32>(0u, 0u))), !vec2<bool>(all(vec3<bool>(false, false, false)), var_1.a > 0u)), Struct_1(~(~global0.a.a | (u_input.b.yy ^ vec2<i32>(global0.b.a.x, u_input.c.x)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(var_2.e, var_2.e), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -743f)), 876f, -549f, _wgslsmith_f_op_f32(floor(global0.e.x)))));
    let var_4 = false;
    var_2 = func_1(var_2.c, ~reverseBits(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, global0.c.a), vec2<u32>(3180u, global0.c.a))), global0.b);
    let var_5 = countOneBits(0u);
    var var_6 = vec2<bool>(true, !(any(!vec2<bool>(var_4, var_4)) || true));
    var var_7 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -831f), func_1(Struct_2(100267u), _wgslsmith_mod_vec2_u32(vec2<u32>(93592u, 60667u), vec2<u32>(26038u, var_1.a)), func_1(Struct_2(var_0.x), vec2<u32>(4294967295u, var_2.c.a), var_2.b).b).e.x)), _wgslsmith_f_op_f32(ceil(global0.e.x)), -2621f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_4(!vec3<bool>(var_4 && true, var_6.x, true), var_2.b, func_1(func_1(Struct_2(var_2.c.a), select(vec2<u32>(var_2.c.a, 1u), vec2<u32>(4294967295u, 4294967295u), var_6.x), func_1(var_2.c, vec2<u32>(4294967295u, var_1.a), global0.a).a).c, select(firstTrailingBit(vec2<u32>(43524u, var_1.a)), ~vec2<u32>(var_0.x, var_1.a), vec2<bool>(var_6.x, true)), Struct_1(vec2<i32>(global0.b.a.x, u_input.a.x))), abs(var_1.a))));
}

