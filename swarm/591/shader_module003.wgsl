struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: f32) -> u32 {
    var var_0 = abs(max(u_input.a, _wgslsmith_mult_i32(1i ^ u_input.a, min(~u_input.a, firstLeadingBit(25583i)))));
    global0 = Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.b.x - arg_2), -1560f, 1f, _wgslsmith_f_op_f32(step(arg_2, global0.b.x)))) - _wgslsmith_f_op_vec4_f32(step(global0.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b * vec4<f32>(arg_2, -366f, arg_2, arg_1)), global0.b)))), !global0.c);
    let var_1 = global0.c.zz;
    var var_2 = vec2<i32>(u_input.a, u_input.a);
    var_2 = max(min(vec2<i32>(1i, min(_wgslsmith_div_i32(var_2.x, u_input.a), var_2.x & 1i)), vec2<i32>(~(~(-47046i)), u_input.a)), vec2<i32>(abs(~(-1i)), 26744i));
    return _wgslsmith_add_u32(countOneBits(69023u), ~1u | ~u_input.b.x);
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = func_3(~4294967295u, -412f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) - _wgslsmith_f_op_f32(-global0.b.x))) == 80272u;
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, 387f, -655f)), vec4<f32>(arg_1.x, -1494f, -2015f, 473f)) + vec4<f32>(-1537f, -874f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_f_op_f32(trunc(arg_1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - 2448f), -1950f)))), !select(select(vec4<bool>(global0.c.x, var_0, global0.c.x, global0.c.x), global0.c, global0.c), select(select(vec4<bool>(global0.a, false, global0.c.x, false), vec4<bool>(true, true, global0.c.x, global0.c.x), vec4<bool>(var_0, true, global0.c.x, global0.a)), select(vec4<bool>(var_0, true, true, global0.c.x), vec4<bool>(false, var_0, global0.a, true), vec4<bool>(var_0, false, var_0, global0.c.x)), select(vec4<bool>(var_0, global0.a, true, true), global0.c, global0.c)), global0.c.x));
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_1, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(283f, -872f, arg_1.x, global0.b.x)))), select(global0.c, select(vec4<bool>(var_0, global0.a, false, var_0), global0.c, global0.c), !global0.c))) * _wgslsmith_f_op_vec4_f32(-arg_1)), !select(global0.c, vec4<bool>(var_0, true, !var_0, true), !var_0));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_1.yzw - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-907f, -1132f, 540f)))), var_1.b.zyw)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_1.b.yxx + vec3<f32>(var_1.b.x, 703f, 490f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.b.x, 539f, arg_1.x), global0.b.wxy)))), global0.a)), Struct_1(select(any(vec4<bool>(var_0, global0.c.x, false, false)), select(false, global0.c.x, false) | true, var_1.a), vec4<f32>(_wgslsmith_f_op_f32(round(1337f)), -1494f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1363f)), select(vec4<bool>(any(global0.c.yx), false, select(true, var_1.c.x, false), true), select(!vec4<bool>(var_0, true, var_0, var_1.c.x), !global0.c, vec4<bool>(var_1.a, false, var_0, true)), var_1.b.x != global0.b.x)), false, Struct_1(any(select(vec4<bool>(var_1.c.x, false, true, var_1.a), select(global0.c, vec4<bool>(true, var_0, var_1.a, false), global0.c), !global0.c)), _wgslsmith_f_op_vec4_f32(global0.b + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -663f), _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x), 644f, var_1.b.x)), select(select(vec4<bool>(global0.c.x, true, false, var_1.a), !var_1.c, all(global0.c)), !global0.c, global0.c.x)));
    let var_3 = -(~(~vec4<i32>(-760i, u_input.a, -21430i, -5494i))) ^ vec4<i32>(-abs(u_input.a), 0i, 43118i, _wgslsmith_clamp_i32(-2147483647i, u_input.a, _wgslsmith_mult_i32(-1i, i32(-1i) * -21624i)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.zxy)))))), var_2.b, true, Struct_1(-_wgslsmith_mod_i32(var_3.x, -6351i) > ~(i32(-1i) * -2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(388f, 309f, arg_1.x, global0.b.x) - arg_1) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-440f, var_1.b.x, 1000f, arg_1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_2.d.b, var_1.b)))), select(!var_2.b.c, vec4<bool>(!var_1.a, global0.c.x, u_input.a >= -1i, var_2.b.a), false)));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> vec4<f32> {
    let var_0 = _wgslsmith_mult_u32(~u_input.c, ~u_input.c);
    var var_1 = func_2(u_input.c << (abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.c, 1u, u_input.c), vec4<u32>(0u, 53105u, var_0, 76762u))) % 32u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global0.b))));
    global0 = func_2(firstLeadingBit(_wgslsmith_mult_u32(4294967295u, abs(var_0) << (~u_input.c % 32u))), vec4<f32>(603f, global0.b.x, 439f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -367f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -881f) + _wgslsmith_f_op_f32(-arg_1.x))))).b;
    var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.b.x + -1268f) * global0.b.x) * global0.b.x), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))), Struct_1(select(true, _wgslsmith_f_op_f32(step(global0.b.x, arg_1.x)) < _wgslsmith_f_op_f32(ceil(global0.b.x)), all(!global0.c.zx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.b, vec4<f32>(269f, arg_1.x, -825f, 941f), select(global0.c, vec4<bool>(false, global0.a, var_1.b.a, true), vec4<bool>(false, false, true, arg_0))))), var_1.b.c), (false || !any(var_1.b.c)) & all(vec4<bool>(true, true, true, true)), var_1.d);
    var var_2 = u_input.a;
    return _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(-966f)), _wgslsmith_f_op_f32(1052f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(591f - -228f) * _wgslsmith_f_op_f32(round(-321f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1139f, arg_1.x)) * var_1.b.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1951f, -2307f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(1u > ~u_input.c, vec4<f32>(-266f, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.b.x - global0.b.x))))), _wgslsmith_f_op_f32(round(global0.b.x))), vec4<bool>(all(!global0.c.xz), global0.c.x, !(false & !global0.a), true));
    var var_0 = vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(min(global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(round(749f))) + _wgslsmith_f_op_f32(max(-416f, global0.b.x))))), global0.b.x, global0.b.x);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-623f, _wgslsmith_div_f32(var_0.x, var_0.x), var_0.x, 1752f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-549f, global0.b.x, -937f, var_0.x))), _wgslsmith_f_op_vec4_f32(func_1(all(global0.c), global0.b.wz))));
    let var_1 = -_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-19154i, u_input.a & u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_sub_i32(-14713i, -2147483647i)), -select(vec4<i32>(u_input.a, u_input.a, 1i, -16632i), vec4<i32>(u_input.a, 2147483647i, u_input.a, 2147483647i), global0.c)), -80896i);
    let var_2 = (~(vec4<i32>(u_input.a, u_input.a, 1i, var_1) ^ vec4<i32>(15790i, 0i, 65917i, u_input.a)) | -vec4<i32>(-var_1, ~u_input.a, -var_1, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_1, 2366i), vec3<i32>(0i, 1i, var_1)))) >> (_wgslsmith_mult_vec4_u32(reverseBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 1u, 0u, u_input.b.x), vec4<u32>(0u, 66406u, u_input.c, 0u), vec4<u32>(u_input.b.x, 8124u, u_input.c, u_input.b.x))), ~_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.b.x, u_input.b.x, u_input.c, u_input.b.x), vec4<u32>(56399u, u_input.b.x, u_input.c, 0u)), ~vec4<u32>(42562u, 74356u, 5457u, u_input.c))) % vec4<u32>(32u));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(361f, 793f, 1000f, global0.b.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(global0.b, vec4<f32>(-691f, var_0.x, var_0.x, global0.b.x), global0.c.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, -1286f, 921f, 768f)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global0.b.x, 187f, -378f) - global0.b)), global0.b, vec4<bool>(true, false & global0.a, global0.a, all(vec3<bool>(global0.c.x, false, false))))), global0.b));
    let var_3 = _wgslsmith_f_op_f32(-global0.b.x);
    var var_4 = vec3<f32>(387f, _wgslsmith_f_op_f32(834f + var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + var_3)))));
    var var_5 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b << (u_input.b % vec2<u32>(32u)), global0.b.yw, u_input.c >> (98u % 32u));
}

