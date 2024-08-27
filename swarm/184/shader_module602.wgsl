struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>) -> vec2<f32> {
    global0 = !select(select(select(vec4<bool>(global0.x, global0.x, global0.x, false), select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(true, false, false, global0.x), global0.x), select(vec4<bool>(false, true, true, global0.x), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(true, false, true, true))), select(select(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(true, true, true, global0.x), false), select(vec4<bool>(true, true, global0.x, true), vec4<bool>(false, global0.x, true, global0.x), true), false), all(!global0.xwy)), !(!select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global0.x, global0.x, true, true))), vec4<bool>(false, true, any(!vec3<bool>(global0.x, global0.x, global0.x)), !global0.x));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1242f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, 406f))))), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(30226u, 0u, 1u)), firstTrailingBit(vec3<u32>(1u, 1u, 1u))) != 46680u, firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(max(928f, 1158f)), _wgslsmith_div_f32(263f, arg_0.x), 1f, arg_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(105f, -637f, arg_0.x, -645f), vec4<f32>(1243f, -1997f, -2343f, arg_0.x)))) - vec4<f32>(-270f, _wgslsmith_f_op_f32(-arg_0.x), arg_0.x, 1508f))));
    global0 = select(!select(vec4<bool>(any(global0.wz), true, global0.x, true), vec4<bool>(!var_0.b, false, true & global0.x, !var_0.b), !vec4<bool>(true, global0.x, false, var_0.b)), !vec4<bool>(!any(vec3<bool>(false, global0.x, var_0.b)), all(!vec4<bool>(global0.x, global0.x, var_0.b, var_0.b)), all(!global0.wx), var_0.b), vec4<bool>(true, true, any(!vec2<bool>(var_0.b, true)), (var_0.b || global0.x) | var_0.b));
    global0 = vec4<bool>((false || (var_0.c.x == var_0.c.x)) && true, select(_wgslsmith_f_op_f32(ceil(-372f)) >= -1600f, any(vec4<bool>(global0.x, false, var_0.b, var_0.c.x <= 15859u)), true), all(select(vec2<bool>(false, true), select(vec2<bool>(true, true), !vec2<bool>(false, global0.x), false), any(vec3<bool>(false, false, var_0.b)))), all(select(!select(vec4<bool>(global0.x, true, global0.x, var_0.b), vec4<bool>(var_0.b, global0.x, true, true), vec4<bool>(var_0.b, true, global0.x, true)), !select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, true, var_0.b, true), global0.x), vec4<bool>(true, all(vec2<bool>(true, true)), true, global0.x || true))));
    let var_1 = vec4<bool>(932f == var_0.a, var_0.b, var_0.b, var_0.a < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-var_0.a))));
    return arg_0;
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> bool {
    var var_0 = all(!(!vec3<bool>(global0.x, global0.x, global0.x))) & (all(vec4<bool>(any(global0.yz), false, true, u_input.a.x >= u_input.a.x)) || true);
    let var_1 = 1386f;
    var_0 = global0.x;
    var var_2 = ~u_input.a & (vec4<i32>(countOneBits(~0i), _wgslsmith_div_i32(~u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), min(48091i, -31216i), ~(-u_input.a.x)) >> (~abs(~arg_2.a) % vec4<u32>(32u)));
    return !global0.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: u32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -115f)), _wgslsmith_f_op_f32(-arg_0.x), any(select(global0.zzx, global0.xyz, false)))), arg_0.x), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -663f)) + _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec2_f32(floor(arg_0.xx))))), abs(arg_1.a.x | _wgslsmith_mod_u32(arg_3, arg_1.a.x)), Struct_1(~vec4<u32>(42452u, 4294967295u, 10004u, 0u))), ~(~countOneBits(arg_1.a)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), arg_0.x, -1055f), vec4<f32>(-333f, _wgslsmith_f_op_f32(-340f * -1533f), -179f, arg_0.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-886f)) * _wgslsmith_f_op_f32(-arg_0.x)), -874f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_div_f32(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(trunc(1216f))))));
    global0 = select(vec4<bool>(any(!select(global0.zz, global0.xw, global0.ww)), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 1808f)), _wgslsmith_dot_vec2_u32(~arg_1.a.zz, ~var_0.c.yy), arg_1), true, true), vec4<bool>(any(!vec3<bool>(global0.x, true, true)), false, false, all(global0.zxw) && all(select(vec2<bool>(true, var_0.b), vec2<bool>(false, true), global0.yw))), vec4<bool>(var_0.b, all(!global0.zx), true, false));
    let var_1 = var_0;
    let var_2 = !select(!global0.yy, select(select(select(vec2<bool>(var_1.b, true), vec2<bool>(var_0.b, var_0.b), global0.zy), !vec2<bool>(true, global0.x), global0.yw), vec2<bool>(true, global0.x), abs(-21964i) <= -arg_2.x), select(select(select(vec2<bool>(true, false), global0.xy, true), global0.yy, select(global0.yy, global0.zz, vec2<bool>(true, var_0.b))), !vec2<bool>(var_0.b, global0.x), select(!global0.xx, !global0.zw, select(global0.zx, vec2<bool>(global0.x, global0.x), var_1.b))));
    var var_3 = ~_wgslsmith_mult_u32(~((var_0.c.x << (23803u % 32u)) ^ var_1.c.x), arg_1.a.x);
    return -719f;
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-1221f + 438f), -1431f, _wgslsmith_f_op_f32(637f - 757f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -750f, 349f)) + vec3<f32>(-1654f, 1277f, 637f)))), Struct_1(vec4<u32>(~47178u, countOneBits(0u), abs(2756u), 20452u << (0u % 32u))), u_input.a.wwy, 26635u)), _wgslsmith_f_op_f32(-1426f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1150f, 253f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-964f)))))), !(true & any(vec3<bool>(false, global0.x, false))) && global0.x));
    global0 = !(!(!select(select(vec4<bool>(true, false, false, global0.x), vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(true, false, global0.x, false)), vec4<bool>(true, true, true, false), false & global0.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1000f, var_0, 677f))))))) + _wgslsmith_div_vec4_f32(vec4<f32>(762f, _wgslsmith_f_op_f32(sign(-2581f)), _wgslsmith_f_op_f32(f32(-1f) * -203f), -1409f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(min(var_0, -486f)), _wgslsmith_div_f32(548f, var_0), _wgslsmith_f_op_f32(-var_0)))));
    let var_2 = reverseBits(_wgslsmith_sub_vec3_i32(max(u_input.a.yyy, -vec3<i32>(u_input.a.x, u_input.a.x, 1i)), u_input.a.yzw));
    var var_3 = _wgslsmith_dot_vec4_i32(-u_input.a, ~vec4<i32>(_wgslsmith_mod_i32(-1i, -1i), ~50722i, _wgslsmith_add_i32(var_2.x, u_input.a.x), _wgslsmith_mod_i32(21520i, 1i))) < 2147483647i;
    return !vec4<bool>(!(!global0.x), false, global0.x, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !func_1();
    var var_0 = vec4<i32>(_wgslsmith_div_i32(select(-2147483647i, u_input.a.x, true), -u_input.a.x), -14163i, abs(2147483647i), ~(i32(-1i) * -18819i));
    var_0 = -u_input.a;
    global0 = vec4<bool>(!global0.x, global0.x, true, !global0.x || true);
    var_0 = min(max(vec4<i32>(11592i, 0i, ~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -2147483647i, u_input.a.x, 1i), u_input.a)), vec4<i32>(1i, 1i, 1i, 1i)) << (select(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 4294967295u, ~22017u, 33092u), func_1()) % vec4<u32>(32u)), countOneBits(u_input.a));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(923f, -1000f)), _wgslsmith_div_f32(420f, -1158f)))))));
    var var_2 = all(vec2<bool>(global0.x, var_1.x <= 1000f));
    var var_3 = !(!select(!(!vec4<bool>(global0.x, global0.x, false, global0.x)), vec4<bool>(global0.x, global0.x, global0.x, true), global0.x));
    let var_4 = Struct_1(~(~vec4<u32>(min(25530u, 7911u), ~1u, select(33536u, 44584u, false), select(1u, 9077u, true))));
    let x = u_input.a;
    s_output = StorageBuffer(674f, ~u_input.a.yx);
}

