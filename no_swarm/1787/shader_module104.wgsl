struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1000f, -2423f, 490f, -949f);

var<private> global1: Struct_1 = Struct_1(9442u, vec2<u32>(50834u, 1u), vec3<f32>(1451f, 249f, -607f), false);

var<private> global2: i32 = 2455i;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec2<f32> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_div_vec2_u32(var_0.b, vec2<u32>(~abs(4294967295u), ~1u));
    var var_2 = Struct_1(37889u, _wgslsmith_mult_vec2_u32(vec2<u32>(global1.a, ~(~18733u)), abs(vec2<u32>(17489u, var_1.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-413f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -919f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-217f, arg_0.c.x, var_0.c.x), vec3<f32>(global0.x, 260f, arg_0.c.x)))), !vec3<bool>(var_0.d, any(vec4<bool>(true, false, var_0.d, global1.d)), true))), !arg_0.d);
    let var_3 = _wgslsmith_mult_u32(abs(var_0.b.x | 0u), 1u);
    global1 = var_0;
    return _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -500f)), _wgslsmith_f_op_f32(arg_1 - 1310f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)), -594f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_1(global1.a, ~(~vec2<u32>(_wgslsmith_div_u32(4294967295u, global1.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.x, 1u, 4294967295u), vec3<u32>(global1.a, global1.b.x, global1.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(global1.c, global1.c)))) - global1.c) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global1.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.xyw) + global1.c))), global1.d && any(select(vec3<bool>(global1.d, false, global1.d), !vec3<bool>(true, false, global1.d), global1.d & global1.d)));
    global2 = -u_input.b;
    var var_1 = Struct_1(abs(global1.b.x), ~(~(~global1.b)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.c.x)) * 524f), _wgslsmith_f_op_f32(min(global0.x, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(var_0, _wgslsmith_f_op_f32(873f + -294f))).x), 545f), _wgslsmith_sub_i32(-(u_input.b | u_input.b), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-39616i, u_input.b, u_input.a)), vec3<i32>(u_input.a, 0i, u_input.a))) == u_input.a);
    global2 = u_input.a;
    let var_2 = u_input.a;
    return !select(vec3<bool>(var_1.d & true, global1.d, global1.d), vec3<bool>(-var_2 > countOneBits(8450i), !var_1.d || any(vec4<bool>(true, var_1.d, false, true)), !var_0.d), global1.d);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, -1766f, global0.x, _wgslsmith_f_op_f32(-948f + arg_0.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.c.x, -1288f, 625f, arg_0.c.x), vec4<f32>(global1.c.x, arg_0.c.x, 603f, global0.x)))), false)));
    var var_0 = Struct_1(4294967295u, firstTrailingBit(~global1.b), global1.c, true);
    let var_1 = select(vec4<u32>(var_0.a & select(1u, arg_1.x, var_0.d), 0u, _wgslsmith_sub_u32(select(arg_0.b.x, 0u, false), _wgslsmith_div_u32(arg_0.b.x, global1.a)), 1u) & ~_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.a, 4294967295u, 27789u, 4294967295u), ~vec4<u32>(4294967295u, var_0.a, arg_1.x, var_0.a)), ~(select(vec4<u32>(0u, 32997u, 20305u, var_0.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, 0u, arg_1.x, 31949u), vec4<u32>(var_0.a, 0u, 25611u, 16296u), vec4<u32>(arg_1.x, 4294967295u, 1u, var_0.b.x)), true) & ~firstTrailingBit(vec4<u32>(arg_1.x, 0u, 4294967295u, var_0.a))), all(func_3()) || select(arg_0.d && false, 47133u < global1.a, true));
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_0.b.x, global1.a, var_0.b.x, 75107u)), vec4<u32>(global1.b.x, 37235u, var_0.a, var_1.x) ^ ~var_1), vec4<u32>(~(var_0.a ^ var_1.x), firstTrailingBit(var_1.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, arg_0.b.x), var_1.ywy), 4294967295u)), ~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0.a, 4294967295u), _wgslsmith_add_u32(var_0.a, global1.b.x)), reverseBits(~arg_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec2_f32(func_1(arg_0, -1398f)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.c.x, 925f))), 121f)), any(vec4<bool>(global1.b.x > reverseBits(0u), true, (-54834i ^ u_input.a) <= countOneBits(-43079i), arg_0.d)));
    var_0 = Struct_1(~1u, vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 16065u), _wgslsmith_clamp_vec2_u32(var_2.b, firstLeadingBit(var_0.b), var_1.zz)), arg_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-758f, global0.x, var_0.c.x))))))), var_0.d);
    return arg_0;
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-494f, _wgslsmith_f_op_f32(f32(-1f) * -850f), _wgslsmith_f_op_f32(f32(-1f) * -1454f), global0.x)));
    global1 = func_2(arg_2, reverseBits(~firstLeadingBit(global1.b)) ^ arg_2.b);
    global1 = arg_2;
    let var_0 = select(func_3().xy, !func_3().zz, select(!vec2<bool>(!global1.d, all(vec2<bool>(arg_3, false))), select(vec2<bool>(u_input.a > 2147483647i, true), select(func_3().zz, select(vec2<bool>(arg_3, global1.d), vec2<bool>(true, global1.d), true), false), vec2<bool>(arg_2.d, u_input.a > 2147483647i)), arg_2.d));
    let var_1 = global1.c.xx;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.b;
    let var_0 = global1.d | (global1.d || ((89458u != _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, 1u), global1.b)) | func_4(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(1u, vec2<u32>(global1.b.x, global1.b.x), vec3<f32>(global1.c.x, global1.c.x, 1391f), global1.d), global1.c.x)), 170f, func_2(Struct_1(global1.b.x, global1.b, vec3<f32>(global0.x, 1631f, global1.c.x), false), global1.b), all(vec2<bool>(false, true)))));
    var var_1 = func_2(Struct_1(countOneBits(1u), _wgslsmith_mod_vec2_u32(~global1.b, vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.a, 4294967295u, 25463u), vec4<u32>(1u, 69126u, 72219u, global1.a)))), global0.yxw, true), global1.b);
    var var_2 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(57981u, var_1.b.x, 4294967295u, global1.a), vec4<u32>(_wgslsmith_mod_u32(61609u, global1.b.x), ~1u, global1.b.x, 9298u)) & global1.a;
    let var_3 = func_2(func_2(Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(9707u, 39778u, 8155u, global1.b.x), reverseBits(vec4<u32>(global1.a, 40410u, 1u, global1.b.x))), global1.b, _wgslsmith_f_op_vec3_f32(-global1.c), !(false & var_1.d)), select(vec2<u32>(select(global1.b.x, 52025u, global1.d), ~1u), ~vec2<u32>(4294967295u, 4294967295u), select(vec2<bool>(true, true), vec2<bool>(var_1.d, false), func_3().zy))), select(global1.b, func_2(Struct_1(_wgslsmith_div_u32(8380u, 1u), _wgslsmith_mod_vec2_u32(global1.b, var_1.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, global0.x, global1.c.x) - vec3<f32>(var_1.c.x, -498f, var_1.c.x)), true), var_1.b).b, !select(select(vec2<bool>(true, false), vec2<bool>(var_1.d, true), var_1.d), vec2<bool>(true, true), var_0)));
    global2 = ~(20365i & -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-16680i, u_input.b, u_input.a, u_input.b), vec4<i32>(-3125i, 0i, 3454i, u_input.a))));
    let var_4 = global1.d;
    let var_5 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a & u_input.b, u_input.a, u_input.b, _wgslsmith_mult_i32(u_input.a, -2147483647i)), vec4<i32>(-1i, countOneBits(~1i), -52546i, u_input.a), vec4<i32>(u_input.b, abs(select(u_input.b, u_input.a, var_3.d)), abs(reverseBits(32708i)), u_input.a >> ((16011u | var_1.a) % 32u))) & firstTrailingBit(vec4<i32>(select(-1i >> (global1.b.x % 32u), countOneBits(7415i), true), u_input.a, -14160i, -1i));
    var_2 = _wgslsmith_dot_vec3_u32(~(~select(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.b.x, 82211u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u)), select(vec3<u32>(global1.a, global1.a, 1u), vec3<u32>(1u, 21866u, global1.a), var_0), global1.d | global1.d)), _wgslsmith_clamp_vec3_u32(min(vec3<u32>(global1.b.x, var_3.a, 31619u) ^ reverseBits(vec3<u32>(28736u, 1u, var_1.b.x)), abs(min(vec3<u32>(global1.b.x, 74769u, 45659u), vec3<u32>(42232u, global1.a, global1.a)))), vec3<u32>(var_1.a, var_1.b.x, 1u), ~(vec3<u32>(global1.a, var_1.a, var_3.b.x) >> (vec3<u32>(67058u, var_1.a, var_1.b.x) % vec3<u32>(32u))) & vec3<u32>(_wgslsmith_mod_u32(4294967295u, var_3.a), _wgslsmith_dot_vec2_u32(vec2<u32>(6997u, 56859u), vec2<u32>(global1.a, 71461u)), ~4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.xyx), _wgslsmith_f_op_vec3_f32(round(var_3.c))), var_3.c, vec3<bool>(!any(vec4<bool>(true, true, true, true)), any(vec2<bool>(var_1.d, true)), !(var_1.d || global1.d)))), var_5.zzx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(480f + global1.c.x) - _wgslsmith_f_op_f32(global1.c.x - 1214f)) * -438f) + _wgslsmith_f_op_f32(var_3.c.x + -124f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.c.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, var_1.c.x))), 123f)));
}

