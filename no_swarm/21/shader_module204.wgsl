struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: Struct_3,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-162f, -689f, 959f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1078f)), global0.x);
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1358f), _wgslsmith_f_op_f32(-376f + 1220f), _wgslsmith_f_op_f32(arg_1 - -585f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, arg_1, -370f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, arg_1, global0.x)))))));
    var var_1 = vec4<f32>(-484f, 241f, global0.x, 134f);
    let var_2 = arg_0;
    var var_3 = Struct_4(arg_0.a);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2469f, global0.x, var_0.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(254f, var_0.x, 1316f), vec3<f32>(-170f, -1673f, 573f))))) - var_1.zwz);
}

fn func_2(arg_0: i32) -> i32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_f32(-global0.x), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, true, false, false))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1206f, global0.x, 654f) * vec3<f32>(global0.x, 1245f, 671f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -1093f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1515f, global0.x, global0.x) - vec3<f32>(global0.x, -1000f, global0.x)))))));
    global0 = vec3<f32>(global0.x, global0.x, _wgslsmith_div_f32(-1547f, global0.x));
    var var_0 = Struct_3(Struct_2(Struct_1(vec4<bool>(any(vec4<bool>(true, false, false, true)), true, true, false)), Struct_1(vec4<bool>(true, true, true, true))));
    let var_1 = abs(vec3<i32>(max(u_input.b.x, -16792i), _wgslsmith_clamp_i32(1i, 54134i | u_input.b.x, -1i), _wgslsmith_sub_i32(select(1i, u_input.b.x, var_0.a.b.a.x), -u_input.b.x))) ^ _wgslsmith_mod_vec3_i32(u_input.b, u_input.b);
    let var_2 = Struct_5(global0.x, Struct_4(Struct_2(var_0.a.a, Struct_1(select(vec4<bool>(var_0.a.b.a.x, false, false, true), vec4<bool>(true, var_0.a.b.a.x, var_0.a.a.a.x, var_0.a.b.a.x), false)))), Struct_3(Struct_2(Struct_1(!var_0.a.a.a), var_0.a.b)), Struct_3(Struct_2(Struct_1(!var_0.a.b.a), Struct_1(var_0.a.b.a))), u_input.b.x);
    return arg_0 << (~0u % 32u);
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: f32) -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(sign(-762f)), -2021f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -176f), _wgslsmith_f_op_f32(trunc(834f)), _wgslsmith_f_op_f32(-arg_2))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, global0.x, 1047f)))));
    let var_0 = Struct_1(select(vec4<bool>(abs(u_input.b.x) < ~(-53079i), true, true, select(any(vec4<bool>(false, true, false, false)), true, arg_2 > global0.x)), vec4<bool>(true, _wgslsmith_f_op_f32(trunc(114f)) >= 1000f, true, select(all(vec2<bool>(false, true)), true, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x - 634f))) <= -593f));
    return max(_wgslsmith_mod_u32(abs(abs(u_input.a.x)), ~4294967295u), u_input.a.x);
}

fn func_1() -> Struct_2 {
    var var_0 = ~vec4<u32>(15415u, u_input.a.x, ~func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-399f, global0.x) + vec2<f32>(global0.x, global0.x)), func_2(u_input.b.x), global0.x), ~(~0u));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(345f, global0.x, -1058f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -243f, 471f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(207f, -258f, global0.x) * vec3<f32>(-429f, global0.x, global0.x)) + vec3<f32>(266f, global0.x, -917f))) * vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global0.x)), -3069f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -271f), _wgslsmith_f_op_f32(round(global0.x)), global0.x))));
    var_0 = select(vec4<u32>(~(var_0.x | _wgslsmith_clamp_u32(63569u, var_0.x, var_0.x)), firstLeadingBit(firstTrailingBit(1u)) ^ 74815u, firstLeadingBit(var_0.x), _wgslsmith_div_u32(firstTrailingBit(~4294967295u), ~_wgslsmith_mult_u32(var_0.x, var_0.x))), u_input.a, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 13449u, 4294967295u, u_input.a.x)), var_0.x, var_0.x & 19331u) <= ~(~_wgslsmith_mult_u32(46238u, u_input.a.x)));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, 525f, 1324f))))), vec3<f32>(_wgslsmith_f_op_f32(-178f + _wgslsmith_f_op_f32(global0.x * -1009f)), _wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, true, false, false)))), 379f, Struct_2(Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, true, false, false))))).x, Struct_2(Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, true, false, false))))).x, -320f), true)), var_1);
    global0 = _wgslsmith_f_op_vec3_f32(step(var_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_1), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1342f, 1579f)), _wgslsmith_f_op_vec3_f32(-var_1), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, 519f, 467f), vec3<f32>(var_1.x, -1840f, -925f), vec3<bool>(true, false, true))), vec3<bool>(true, true, true)))))));
    return Struct_2(Struct_1(!vec4<bool>(u_input.a.x == 72047u, true, true, false)), Struct_1(vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true)));
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = func_1().a;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.zy));
    var var_2 = Struct_3(func_1());
    global0 = vec3<f32>(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(f32(-1f) * -367f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(645f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1812f + global0.x), var_1.x) + var_1.x))), -312f);
    let var_3 = Struct_5(_wgslsmith_f_op_f32(-1f), Struct_4(func_1()), Struct_3(func_1()), Struct_3(Struct_2(func_1().a, arg_0.a.b)), -1i);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    var var_1 = abs(firstLeadingBit(u_input.b.yy));
    var var_2 = func_5(Struct_4(func_1()), 25127u, Struct_2(func_1().a, func_1().b));
    var_2 = Struct_2(func_5(Struct_4(func_1()), select(_wgslsmith_dot_vec4_u32(~vec4<u32>(5598u, 22953u, u_input.a.x, 4294967295u), vec4<u32>(39486u, u_input.a.x, u_input.a.x, 51091u)), u_input.a.x, _wgslsmith_clamp_i32(-42617i, u_input.b.x, u_input.b.x) != 6370i), Struct_2(Struct_1(var_2.b.a), var_2.b)).b, Struct_1(vec4<bool>(all(vec4<bool>(var_2.b.a.x, var_2.a.a.x, var_2.b.a.x, false)), false, false, true)));
    var_0 = global0.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(562f * global0.x));
    let var_3 = _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(0u, 7635u), _wgslsmith_div_u32(22738u, 1u)), abs(u_input.a.yw)), countOneBits(~u_input.a.zz), max(u_input.a.xx, u_input.a.zw)), u_input.a.yx << (vec2<u32>(45657u, ~38951u) % vec2<u32>(32u)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - global0.x) * _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * 963f), 705f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(global0.x + 3110f), _wgslsmith_f_op_f32(901f - global0.x), _wgslsmith_f_op_f32(-global0.x)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1567f, global0.x) + vec3<f32>(555f, global0.x, global0.x))))))), -2147483647i, -vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.zz, vec2<i32>(4617i, var_1.x)), u_input.b.zz << (u_input.a.zy % vec2<u32>(32u))), ~var_1.x, -abs(20040i)));
}

