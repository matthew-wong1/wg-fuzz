struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_3,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: Struct_2;

var<private> global2: Struct_5 = Struct_5(-1453f, vec3<u32>(4294967295u, 61107u, 0u));

var<private> global3: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_2(Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b.x, 418f, global2.a, arg_1.b.x), vec4<f32>(arg_1.b.x, global2.a, 1000f, arg_1.b.x), vec4<bool>(false, true, false, true))), global1.a.b, true)) + global1.a.b), ~(~abs(u_input.c))), Struct_1(~45080u, vec4<f32>(global2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.b.b.x), _wgslsmith_f_op_f32(floor(-1299f))), 390f, 869f), firstLeadingBit(~abs(13935u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.a, arg_0.e.c)) - arg_0.d.c) - arg_3.b.x)));
    var var_1 = ~vec2<u32>(_wgslsmith_mod_u32(countOneBits(arg_2), arg_3.c) & ~global1.b.a, global2.b.x);
    let var_2 = select(select(!vec3<bool>(false, true, any(vec4<bool>(true, false, true, false))), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(true, true, false));
    var_0 = Struct_2(Struct_1(_wgslsmith_sub_u32(_wgslsmith_div_u32(firstTrailingBit(arg_1.a), ~var_1.x), arg_3.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-250f, 672f, var_0.b.b.x, -1097f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(526f, 494f, -706f, -1000f))), global1.b.c), Struct_1(_wgslsmith_dot_vec4_u32(select(vec4<u32>(39720u, arg_3.a, 2373u, var_1.x), ~vec4<u32>(1u, 1u, 4294967295u, 4294967295u), arg_0.e.d == 12001i), vec4<u32>(4294967295u, 1u, global2.b.x, var_0.a.a) & countOneBits(u_input.e)), _wgslsmith_f_op_vec4_f32(-arg_1.b), ~arg_0.a.b.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.c))), var_0.a.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.c) * -242f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.a)))))));
    var var_3 = Struct_2(var_0.a, Struct_1(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~var_1.x, 4294967295u), _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, global1.b.c), var_1.x)), vec4<f32>(arg_3.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_1.b.x, 766f)), _wgslsmith_f_op_f32(680f * 1192f), all(vec3<bool>(true, false, var_2.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1581f + -1000f))), _wgslsmith_f_op_f32(-1684f - _wgslsmith_f_op_f32(-arg_1.b.x))), ~var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(422f - 175f), arg_1.b.x, !var_2.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(317f, global1.a.b.x) - _wgslsmith_f_op_f32(global2.a * -825f))) + _wgslsmith_f_op_f32(-arg_0.e.c)));
    return 3441u;
}

fn func_2(arg_0: u32) -> Struct_4 {
    return Struct_4(Struct_2(global1.a, Struct_1(~0u, _wgslsmith_f_op_vec4_f32(round(global1.a.b)), 4294967295u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.c)))), vec2<i32>(_wgslsmith_add_i32(2147483647i << (~u_input.e.x % 32u), -69054i), select(0i, _wgslsmith_mod_i32(1i, -1601i), select(global1.c > global1.a.b.x, select(false, false, true), all(vec4<bool>(false, true, true, true))))), Struct_3(10206i, ~global1.b.a, global2.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 62028i, -2147483647i, -6688i), vec4<i32>(907i, 0i, 2147483647i, 52659i)), 3205i >> (u_input.d.x % 32u)) << (~select(arg_0, 1u, false) % 32u)), Struct_2(global1.a, Struct_1(global1.b.a, _wgslsmith_f_op_vec4_f32(global1.b.b - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2754f, global2.a, global2.a, 1672f)))), func_3(Struct_4(Struct_2(Struct_1(u_input.a.x, global1.b.b, 1u), Struct_1(13112u, global1.b.b, global1.b.a), -240f), vec2<i32>(0i, 0i), Struct_3(-38926i, 41826u, global1.b.b.x, 0i), Struct_2(global1.a, global1.a, -327f), Struct_3(30704i, u_input.e.x, -102f, -2147483647i)), global1.b, ~global1.b.c, global1.b)), -1176f), Struct_3(max(firstLeadingBit(_wgslsmith_mult_i32(-1i, -1i)), min(~2147483647i, -12634i)), ~(_wgslsmith_dot_vec2_u32(global2.b.yx, vec2<u32>(0u, 1u)) ^ 15012u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-712f - _wgslsmith_f_op_f32(exp2(global1.a.b.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1648f, global1.a.b.x)), _wgslsmith_div_f32(global2.a, 788f))), countOneBits(~20706i)));
}

fn func_1(arg_0: vec2<u32>) -> bool {
    let var_0 = func_2(48908u);
    let var_1 = func_2(~var_0.c.b).a.b;
    global0 = 1i;
    let var_2 = vec4<u32>(_wgslsmith_mod_u32(select(~func_3(var_0, var_0.a.b, 42589u, Struct_1(u_input.e.x, var_1.b, 1u)), arg_0.x, global2.b.x != ~global1.a.a), ~_wgslsmith_mod_u32(5582u, var_0.a.b.c)), var_0.d.b.c | global1.b.c, _wgslsmith_div_u32(~global2.b.x, var_0.e.b), ~5998u);
    var var_3 = _wgslsmith_mod_u32(~var_1.c, _wgslsmith_mod_u32(1u, ~70352u));
    return select(select(true, true, false), any(vec2<bool>(true, true)), all(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec3<bool>(any(vec2<bool>(true, true)), true, all(vec3<bool>(true, false, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(all(vec3<bool>(false, false, false)), func_1(vec2<u32>(25891u, 79893u)), any(vec3<bool>(false, false, true))), vec3<bool>(-816f < global1.b.b.x, true, true), vec3<bool>(any(vec2<bool>(false, false)), true, false)), false);
    var var_1 = vec4<bool>(var_0.x, true, var_0.x, !any(select(select(var_0.yz, vec2<bool>(false, false), var_0.x), var_0.yx, var_0.zx)));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.b.b.zwy, global1.a.b.zzy) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, global1.c, 910f) + global1.b.b.wyz))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, -279f, global1.b.b.x) - _wgslsmith_f_op_vec3_f32(select(global1.a.b.zyy, vec3<f32>(-853f, global1.c, 1239f), false)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(abs(-1201f)), global2.a, -209f))) - vec3<f32>(2482f, _wgslsmith_f_op_f32(1080f - _wgslsmith_f_op_f32(abs(global1.c))), global1.a.b.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(countOneBits(1i), 0i, ~67116i), vec4<i32>(-1i, _wgslsmith_add_i32(662i << (global2.b.x % 32u), ~(-1i)), _wgslsmith_sub_i32(max(-2147483647i, -32844i), 1i), 22468i) >> (u_input.e % vec4<u32>(32u)));
}

