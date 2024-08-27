struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_2,
    e: i32,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(-1517f, 1879f, -16204i, vec4<f32>(-1613f, 186f, -1264f, -136f));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<f32>(-1197f, -1734f), false, vec2<bool>(true, false)), -945f, 36081i);

var<private> global2: Struct_3;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = vec2<u32>(1u, 7118u);
    global0 = Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(f32(-1f) * -1429f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.b, 969f)))))), 130f, 0i, global0.d);
    global1 = Struct_2(Struct_1(global1.a.a, global1.a.c.x, vec2<bool>(true, true)), global1.b, u_input.e.x);
    let var_1 = vec4<bool>(all(select(!vec3<bool>(true, false, global1.a.b), !vec3<bool>(global1.a.b, true, global1.a.b), false)) || all(global1.a.c), false || !(global1.a.a.x > _wgslsmith_f_op_f32(global0.d.x + global1.a.a.x)), global1.a.c.x, 1167f <= _wgslsmith_f_op_f32(global1.a.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(234f * global0.d.x) * global0.a)));
    var var_2 = Struct_2(global1.a, -247f, -global2.a.x);
    return global0.d.zz;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: f32, arg_3: vec3<bool>) -> Struct_4 {
    let var_0 = 263f;
    global0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(1115f * -489f)), 750f, global0.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1.a.a.x, 1358f), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1043f - 570f)), 1476f) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 439f, arg_1.x, global0.a)) * global0.d)))));
    let var_1 = countOneBits(u_input.d);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(max(arg_1.x, global0.d.x)))));
    global2 = Struct_3(~(~(global2.a ^ -global2.a)));
    return Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 778f) - global0.d.yz) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, arg_1.x) * _wgslsmith_f_op_vec2_f32(func_3(Struct_3(global2.a))))), all(vec4<bool>(u_input.c > u_input.d.x, any(vec2<bool>(global1.a.c.x, false)), arg_3.x && arg_3.x, false)), select(arg_0.yz, !select(arg_3.yy, arg_3.yx, vec2<bool>(arg_0.x, global1.a.c.x)), !vec2<bool>(global1.a.c.x, arg_3.x))), false, var_2, Struct_2(global1.a, _wgslsmith_f_op_vec2_f32(func_3(Struct_3(vec4<i32>(u_input.a.x, global1.c, -1i, 0i) >> (vec4<u32>(u_input.d.x, 19492u, u_input.d.x, 0u) % vec4<u32>(32u))))).x, -global0.c), -1i);
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(global0.d.wyz - vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(334f)))), _wgslsmith_f_op_vec2_f32(func_3(Struct_3(vec4<i32>(arg_0.e, u_input.e.x, arg_0.d.c, -2147483647i)))).x));
    var var_1 = func_2(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, global1.a.c.x, false), vec3<bool>(false, global1.a.c.x, false)), select(vec3<bool>(false, arg_0.a.b, false), vec3<bool>(false, arg_0.d.a.c.x, false), vec3<bool>(false, arg_0.d.a.c.x, global1.a.b)), !vec3<bool>(false, global1.a.c.x, arg_0.b))), global0.d.zyz, -939f, !vec3<bool>(global1.a.c.x, true, false));
    var var_2 = _wgslsmith_f_op_f32(sign(-1625f));
    var_2 = _wgslsmith_div_f32(-345f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(508f + arg_0.c)), global1.b, _wgslsmith_mod_i32(-9757i, -1i) <= select(40323i, -49250i, true))));
    let var_3 = func_2(vec3<bool>(arg_0.d.a.b, abs(max(0i, -4117i)) <= global2.a.x, !(!global1.a.c.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a.x, 720f, global1.a.a.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1036f, var_1.a.a.x, 262f) - global0.d.yzy))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1363f, _wgslsmith_f_op_f32(f32(-1f) * -1498f)) * 1498f) * 1000f), vec3<bool>(false, false, all(vec4<bool>(!global1.a.c.x, all(vec4<bool>(false, var_1.b, arg_0.d.a.c.x, true)), true, var_1.b))));
    return var_3.d;
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(17065i, global1.c)), select(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(global2.a.zw, global2.a.xx, vec2<i32>(-1i, -10160i)), vec2<i32>(-2147483647i, -firstTrailingBit(-1i)), vec2<bool>(any(vec3<bool>(arg_0.a.b, global1.a.b, false)) & any(vec4<bool>(global1.a.c.x, arg_0.a.c.x, true, true)), !any(vec3<bool>(true, arg_0.a.c.x, true)))));
    var var_1 = -max(vec3<i32>(_wgslsmith_mult_i32(~global2.a.x, -global1.c), _wgslsmith_mod_i32(u_input.a.x, 7839i) << (reverseBits(u_input.c) % 32u), _wgslsmith_sub_i32(global1.c, firstTrailingBit(24382i))), countOneBits(_wgslsmith_mod_vec3_i32(u_input.a, global2.a.yzw)));
    let var_2 = 4172u;
    var_1 = u_input.e;
    var var_3 = Struct_5(-1122f, _wgslsmith_f_op_f32(trunc(-225f)), ~(-1368i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(128f, global1.a.a.x, global0.d.x, global1.a.a.x)))));
    return Struct_3(~(~global2.a));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global1.a.a - vec2<f32>(global0.a, -428f)))) * _wgslsmith_f_op_vec2_f32(-global0.d.yy)), true, global1.a.c), global1.a.a.x, _wgslsmith_mult_i32(max(~(~0i), u_input.a.x), _wgslsmith_clamp_i32(global2.a.x, 23861i, abs(-16741i))));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(round(-211f)), _wgslsmith_f_op_f32(f32(-1f) * -1235f), firstLeadingBit(-13264i), global0.d);
    let var_2 = func_5(func_4(func_2(vec3<bool>(!global1.a.b, false, var_0.a.b && false), global0.d.zyz, _wgslsmith_f_op_f32(f32(-1f) * -423f), vec3<bool>(true, true, !global1.a.b))));
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(global1.a.a - vec2<f32>(-1042f, _wgslsmith_f_op_f32(select(global0.d.x, var_1.d.x, global1.a.c.x)))), true, !var_0.a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1064f * _wgslsmith_f_op_f32(var_1.a - 1860f))) + _wgslsmith_f_op_f32(global1.b * -1315f)), -_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(global1.c, ~global0.c, ~var_2.a.x)));
    global1 = func_2(select(select(vec3<bool>(true, true, true), !(!vec3<bool>(var_0.a.c.x, global1.a.c.x, global1.a.c.x)), var_0.a.c.x && true), select(vec3<bool>(var_0.a.b, any(vec3<bool>(true, var_0.a.b, false)), !global1.a.c.x), vec3<bool>(all(global1.a.c), !var_0.a.b, var_0.a.b), vec3<bool>(var_0.a.b, select(false, global1.a.c.x, true), !global1.a.b)), vec3<bool>(!global1.a.c.x, select(all(vec4<bool>(true, true, true, true)), false, !var_0.a.b), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.d.yxy) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_1.d.xxy)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_1.a, -436f) + var_1.d.zzw), vec3<f32>(-800f, -410f, -2143f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), vec3<bool>(true & !var_0.a.c.x, true, !all(!var_0.a.c))).d;
    return Struct_3(firstTrailingBit(abs(func_5(func_2(vec3<bool>(global1.a.b, false, false), vec3<f32>(global0.b, var_1.b, -1595f), global1.b, vec3<bool>(true, false, false)).d).a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(global0.b >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.a.x, global1.b)), !all(vec4<bool>(global1.a.b, false, global1.a.b, global1.a.b)));
    let var_1 = u_input.a.xy;
    global2 = func_1();
    var var_2 = ~countOneBits(abs(u_input.b) | vec2<u32>(~u_input.c, ~u_input.d.x));
    var_2 = u_input.b;
    let var_3 = abs(var_1.x);
    let var_4 = Struct_3(global2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(786f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a.x) - _wgslsmith_f_op_f32(-global0.a)), -677f, 1557f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -505f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - global0.b)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-476f * global1.a.a.x)))), ~vec3<u32>(countOneBits(44397u), 1u, min(var_2.x ^ 4294967295u, u_input.c)), (_wgslsmith_dot_vec3_i32(var_4.a.xyz, u_input.a) | var_4.a.x) ^ u_input.a.x);
}

