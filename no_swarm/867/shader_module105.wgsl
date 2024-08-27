struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(global1.e, 4792u >> (global1.a % 32u), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(-330f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x * global1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x + 585f)), -1203f))), global1.d & vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a >> (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u)), vec2<i32>(global1.d.x, u_input.a.x)), min(~(-37325i), reverseBits(-63484i))), _wgslsmith_sub_u32(53812u, 1u));
    var_0 = Struct_1(min(abs(_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 0u, global1.b), vec3<u32>(u_input.c, 1u, 1109u), true), vec3<u32>(var_0.b, global1.b, 38630u))), global1.b), ~_wgslsmith_mod_u32(firstLeadingBit(~var_0.b), u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(2674f, global1.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x * global1.c.x) * global1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-504f)) * -727f))), -vec2<i32>(~0i, var_0.d.x), ~(~(~global1.b)));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1043f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.c.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.c.x, 1495f)) * _wgslsmith_f_op_f32(374f + global1.c.x)))))), global0.x));
    let var_2 = (~vec3<u32>(var_0.b, var_0.e, ~var_0.b) >> (reverseBits(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 91774u, 42731u), vec3<u32>(var_0.e, var_0.e, global1.a)), global1.e, 0u)) % vec3<u32>(32u))) << (vec3<u32>(abs(~u_input.c), _wgslsmith_sub_u32(~8690u, abs(var_0.b)) << (~u_input.c % 32u), var_0.a) % vec3<u32>(32u));
    let var_3 = Struct_1(~abs(42414u & var_0.a), min(var_2.x, 1u) << (~1u % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, 823f), _wgslsmith_f_op_vec4_f32(-var_0.c))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, 289f, 344f, -784f))) - var_0.c), _wgslsmith_mult_vec2_i32(~((global1.d << (vec2<u32>(80060u, global1.e) % vec2<u32>(32u))) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), reverseBits(~u_input.d.yx ^ abs(u_input.d.xx))), ~(abs(29668u) << (~var_0.a % 32u)) ^ ~4294967295u);
    return var_0.b;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<bool>) -> u32 {
    global0 = vec2<bool>(true, arg_3.x);
    var var_0 = 4294967295u;
    global1 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(arg_1.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_1.c.x, arg_1.c.x, arg_0)))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) * arg_1.c.x)))));
    let var_2 = _wgslsmith_f_op_f32(abs(1279f));
    return 1u;
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_1 {
    global0 = !(!vec2<bool>(arg_1, !(arg_1 != false)));
    var var_0 = ~vec2<u32>(select(global1.a, 1u, !select(arg_1, global0.x, arg_1)), max(87873u, ~(~global1.e)));
    var_0 = ~u_input.b;
    let var_1 = Struct_1(global1.a, ~func_4(arg_1, Struct_1(1u, ~4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-591f, -438f, 210f, -267f)), vec2<i32>(2147483647i, global1.d.x), func_3()), select(!vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, false, arg_1), false), vec3<bool>(true, !arg_1, global0.x)), _wgslsmith_f_op_vec4_f32(max(global1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(851f, -254f, global1.c.x, -769f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1319f, arg_0, arg_0, -1000f)), _wgslsmith_f_op_vec4_f32(global1.c - vec4<f32>(1277f, arg_0, 558f, global1.c.x))))))), u_input.d.yy, 4294967295u);
    var var_2 = false;
    return var_1;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_u32(~(~(~(~vec3<u32>(1u, arg_2.a, arg_1.a)))), vec3<u32>(global1.a, global1.a, ~select(0u, arg_2.e >> (42978u % 32u), global0.x)));
    var var_1 = -1000f;
    let var_2 = 897f;
    global1 = func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_1.c.x, 632f, all(select(vec4<bool>(true, global0.x, false, true), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, false, global0.x, global0.x))))), 135f)), all(vec4<bool>(global0.x || all(vec3<bool>(true, false, false)), !(-807f < global1.c.x), all(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, global0.x, true), false)), all(!vec3<bool>(global0.x, global0.x, global0.x)))));
    let var_3 = ~_wgslsmith_clamp_vec3_i32(u_input.d, vec3<i32>(~arg_0.x, 0i, -2147483647i ^ u_input.a.x), _wgslsmith_clamp_vec3_i32(u_input.d, arg_0, ~arg_0 | arg_0));
    return -497f;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    return Struct_1(u_input.b.x, 1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_5(_wgslsmith_add_vec3_i32(u_input.d, vec3<i32>(-18011i, arg_1.d.x, u_input.e)), Struct_1(global1.b, u_input.b.x, vec4<f32>(1471f, arg_0, -248f, global1.c.x), arg_1.d, arg_1.e), func_2(global1.c.x, true))), global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) - _wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -981f))))), _wgslsmith_clamp_vec2_i32(countOneBits(countOneBits(func_2(402f, true).d)), global1.d, u_input.d.zy), _wgslsmith_mult_u32(8404u, (~arg_1.e >> ((global1.e | arg_1.b) % 32u)) << ((_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, arg_1.b), vec3<u32>(u_input.c, arg_1.a, u_input.b.x)) & func_2(arg_0, global0.x).b) % 32u)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    global1 = Struct_1(0u ^ firstTrailingBit(min(~global1.b, func_2(2289f, global0.x).e)), firstLeadingBit(0u), _wgslsmith_f_op_vec4_f32(-global1.c), vec2<i32>(~min(i32(-1i) * -48337i, ~arg_1.d.x), arg_0.d.x), _wgslsmith_mult_u32(global1.a, ~u_input.b.x));
    let var_0 = func_2(arg_1.c.x, false);
    var var_1 = any(select(!select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, true, false), global0.x), select(!select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x), global0.x), select(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, global0.x, false), vec3<bool>(true, false, global0.x)), vec3<bool>(global0.x, global0.x, false), !vec3<bool>(false, false, global0.x)), vec3<bool>(false, global0.x, true)), !(!(!global0.x))));
    var var_2 = global0.x;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) - 1483f))), _wgslsmith_f_op_f32(ceil(-129f)));
    return min(vec2<u32>(arg_1.b, 31267u), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(53701u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), firstLeadingBit(0u)) & func_6(Struct_1(global1.e, u_input.c, vec4<f32>(248f, global1.c.x, 1009f, -196f), global1.d, 4294967295u), func_1(1061f, Struct_1(23466u, u_input.c, vec4<f32>(-312f, global1.c.x, -2353f, global1.c.x), vec2<i32>(u_input.a.x, global1.d.x), 4294967295u), vec3<f32>(502f, 828f, global1.c.x))), reverseBits(~u_input.b)), func_2(global1.c.x, global0.x).c, u_input.a, 1u);
    global0 = select(!select(select(select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, false), global0.x), vec2<bool>(true, true), true), select(vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, true), vec2<bool>(true, global0.x), global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), global0.x)), select(select(vec2<bool>(true, false), vec2<bool>(true, global0.x), vec2<bool>(false, true)), select(vec2<bool>(true, global0.x), vec2<bool>(true, global0.x), vec2<bool>(false, global0.x)), true)), !vec2<bool>(true, select(global0.x, all(vec4<bool>(true, global0.x, global0.x, global0.x)), false)), true);
    let var_1 = var_0;
    var var_2 = func_1(_wgslsmith_f_op_f32(round(func_2(var_1.c.x, select(all(vec2<bool>(global0.x, global0.x)), global0.x, global0.x)).c.x)), Struct_1(var_1.a, ~reverseBits(min(4294967295u, global1.e)), _wgslsmith_f_op_vec4_f32(max(var_0.c, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, 1352f, var_1.c.x, global1.c.x), _wgslsmith_f_op_vec4_f32(-var_0.c)))), u_input.a, 33864u), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)))), -1222f, var_0.c.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(round(var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.yyx, -_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.d.x, var_2.d.x, u_input.a.x), ~vec3<i32>(u_input.a.x, var_0.d.x, -2147483647i)), vec3<i32>(0i, -19406i, ~var_0.d.x)), abs(u_input.b), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_1(1662f, Struct_1(2659u, 26429u, var_1.c, vec2<i32>(global1.d.x, 23996i), global1.a), vec3<f32>(global1.c.x, var_2.c.x, var_3.x)).c.x, 608f))), -1534f), _wgslsmith_f_op_f32(var_1.c.x - var_0.c.x));
}

