struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(31852i, true, 2147483647i, vec2<bool>(false, false), false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec2<u32>) -> i32 {
    var var_0 = arg_0.b.c.d.x;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * 1564f), arg_0.b.c);
    let var_2 = Struct_1(1i ^ -var_1.c.c, any(!vec4<bool>(global0.d.x, false, !global0.b, arg_0.b.c.e)), -2147483647i, !var_1.c.d, true);
    global0 = Struct_1(0i, arg_1.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, 548f))), ~_wgslsmith_mult_i32(var_2.c, max(36034i, arg_0.b.c.c) | _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(36961i, -2147483647i))), var_2.d, !(all(!var_2.d) || (~(-47000i) <= _wgslsmith_mult_i32(global0.a, arg_0.b.c.c))));
    var_0 = !(~_wgslsmith_dot_vec3_u32(vec3<u32>(46442u, 54004u, 79291u), vec3<u32>(arg_2.x, 32267u, arg_2.x) ^ vec3<u32>(arg_0.c, arg_0.c, arg_0.c)) >= _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, arg_0.c)), ~firstLeadingBit(arg_2)));
    return _wgslsmith_dot_vec4_i32(~(~(~(vec4<i32>(2147483647i, var_1.c.c, arg_0.d, arg_0.d) & vec4<i32>(var_2.a, global0.c, global0.a, var_1.c.a)))), vec4<i32>(1i, global0.a, -global0.a, 76671i | ~select(var_1.c.c, -11226i, true)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: u32) -> f32 {
    global0 = Struct_1(func_3(Struct_4(_wgslsmith_f_op_f32(select(-2093f, 571f, arg_2.x)), Struct_3(arg_0.x, arg_0.x, arg_1.b), _wgslsmith_clamp_u32(arg_3, arg_1.a, 30598u), global0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1291f, -468f)), _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_3, 1u), ~vec2<u32>(arg_3, arg_3))) ^ 0i, select(!(_wgslsmith_f_op_f32(-arg_0.x) >= _wgslsmith_f_op_f32(sign(-1369f))), true, any(global0.d)), global0.a, !vec2<bool>(global0.b, true), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(733f, -974f))) > _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.x, 1162f), _wgslsmith_f_op_f32(round(-319f))))));
    var var_0 = 1i;
    var_0 = -4831i;
    let var_1 = select(vec2<bool>(any(vec2<bool>(!global0.d.x, true)), arg_2.x), !global0.d, select(vec2<bool>(select(any(vec4<bool>(false, false, arg_1.b.d.x, true)), arg_2.x & arg_1.b.b, false), true), global0.d, true));
    global0 = Struct_1(35519i, select(var_1.x || all(arg_2), global0.e, any(vec3<bool>(arg_2.x, all(vec4<bool>(arg_1.b.e, true, false, true)), var_1.x))), ~min(-1017i, ~u_input.b.x), select(vec2<bool>(!arg_1.b.b, arg_1.b.e), vec2<bool>(true, ~arg_3 >= arg_3), arg_1.b.e), global0.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) * _wgslsmith_f_op_f32(-arg_1.c)) * -232f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))) * arg_0.x);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(u_input.a ^ reverseBits(u_input.b.x), global0.e, -20962i, !vec2<bool>(select(true, true, !global0.e), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1193f * -1000f), _wgslsmith_f_op_f32(max(605f, 872f)), global0.d.x)) * -2607f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(vec2<f32>(-346f, -1194f), Struct_2(1u, Struct_1(global0.a, global0.b, 1i, vec2<bool>(global0.e, true), global0.d.x), 177f), vec3<bool>(global0.d.x, false, global0.b), 15110u)), _wgslsmith_f_op_f32(f32(-1f) * -212f)))));
    var var_1 = max(vec3<u32>(~13720u, abs(_wgslsmith_mod_u32(1u, ~1u)), 4294967295u), ~countOneBits(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 60275u, 72383u), vec3<u32>(57146u, 1u, 11006u), vec3<u32>(4294967295u, 81387u, 1u)), abs(vec3<u32>(8698u, 0u, 0u)), vec3<bool>(var_0.e, var_0.e, global0.e))));
    let var_2 = 40695u;
    var var_3 = var_0;
    var_3 = Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(_wgslsmith_mod_i32(2147483647i, var_0.c), i32(-1i) * -2147483647i)), var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1204f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))) <= -410f, 6166i, vec2<bool>(true, !(var_3.e & all(vec4<bool>(global0.d.x, var_3.b, var_0.b, var_3.e)))), _wgslsmith_add_i32(2147483647i, abs(select(11503i, var_0.c, var_0.b))) <= ~global0.a);
    return var_0;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: bool) -> u32 {
    var var_0 = -2147483647i;
    global0 = Struct_1(3575i, false, global0.c, !vec2<bool>(true, any(vec2<bool>(false, global0.b))), arg_2);
    var var_1 = global0.c;
    let var_2 = Struct_2(~(~(~_wgslsmith_clamp_u32(11687u, 25777u, 0u))), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) + _wgslsmith_f_op_f32(func_2(arg_0.ww, Struct_2(6399u, Struct_1(2147483647i, false, global0.a, vec2<bool>(arg_1.c.e, arg_2), true), arg_1.a), vec3<bool>(global0.b, arg_2, false), 0u))))));
    var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(global0.c, 2147483647i), global0.a, -1i), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(1i, _wgslsmith_sub_i32(1i, global0.a)), firstTrailingBit(arg_1.c.a)), _wgslsmith_div_i32(func_1().c, var_2.b.c), ~u_input.a));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(-_wgslsmith_add_i32(min(_wgslsmith_mult_i32(global0.a, 6804i), u_input.a), global0.a), func_4(vec4<f32>(_wgslsmith_f_op_f32(trunc(405f)), _wgslsmith_f_op_f32(abs(-1497f)), _wgslsmith_f_op_f32(f32(-1f) * -389f), _wgslsmith_f_op_f32(f32(-1f) * -1094f)), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -239f), -1855f, func_1()), !all(vec3<bool>(false, true, global0.b))) < (~43396u >> (0u % 32u)), 1i, !(!global0.d), true || (reverseBits(firstTrailingBit(77944i)) != -2147483647i));
    global0 = func_1();
    let var_0 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(466f, -809f, -331f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-522f, 175f, -1782f)))))), ~(~0u), u_input.b, _wgslsmith_div_i32(abs(max(-780i, 20590i)), -(~14113i)) >> (~_wgslsmith_dot_vec2_u32(~vec2<u32>(12032u, 675u), vec2<u32>(4294967295u, 11649u) << (vec2<u32>(0u, 0u) % vec2<u32>(32u))) % 32u));
}

