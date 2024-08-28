struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
    d: bool,
    e: vec4<f32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(5215u, 11526u, 0u), vec4<f32>(1292f, -1980f, -910f, -276f));

var<private> global2: vec3<bool>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    let var_0 = true;
    var var_1 = Struct_5(_wgslsmith_mult_vec2_i32(-abs(vec2<i32>(u_input.d.x, u_input.d.x)) << (vec2<u32>(abs(u_input.a.x), global0.b.c.a.x) % vec2<u32>(32u)), u_input.d.yz & countOneBits(u_input.d.xz)), global0.b.d, Struct_1(global0.c.a, _wgslsmith_f_op_f32(-1462f - 1f)));
    global2 = select(select(!(!vec3<bool>(var_0, global2.x, global2.x)), !(!vec3<bool>(false, var_0, false)), 0u > ~_wgslsmith_mod_u32(4294967295u, global0.c.a.x)), vec3<bool>(_wgslsmith_f_op_f32(-439f - -202f) == _wgslsmith_f_op_f32(select(global0.b.e, _wgslsmith_f_op_f32(f32(-1f) * -337f), var_0)), !(!(var_1.b.b.x != 869f)), _wgslsmith_clamp_i32(abs(u_input.d.x), u_input.d.x, _wgslsmith_dot_vec3_i32(u_input.d.xxy, vec3<i32>(var_1.a.x, -15695i, -2147483647i))) != -29860i), !vec3<bool>(any(vec2<bool>(true, false)) != (0u == global1.a.x), all(!vec3<bool>(global0.d, false, var_0)), true));
    var var_2 = global1.a.x;
    let var_3 = global0.c;
    return false;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: bool, arg_3: vec4<i32>) -> vec3<bool> {
    global0 = Struct_4(_wgslsmith_f_op_f32(round(global1.b.x)), Struct_3(global0.b.c, _wgslsmith_f_op_vec3_f32(trunc(global0.e.wwx)), Struct_2(global0.b.d.a, arg_0.b), global0.b.a, _wgslsmith_f_op_f32(abs(arg_0.b.x))), global0.c, true, arg_0.b);
    let var_0 = _wgslsmith_sub_u32(~(~(~u_input.e.x)), ~select(min(28524u, u_input.a.x), 15913u, !global0.d) >> (79095u % 32u));
    var var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-901f, -1046f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-836f, global0.b.c.b.x))))), global0.b, global0.c, true, vec4<f32>(-1525f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -772f))), _wgslsmith_f_op_f32(min(global0.b.e, 1361f)), global1.b.x));
    let var_2 = !vec2<bool>(all(global2.xz), !global0.d);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, 1018f, -439f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-857f, -1608f, -938f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, global0.a, var_1.b.d.b.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(123f, 1865f, -521f), var_1.b.c.b.xzy, vec3<bool>(global2.x, true, global2.x))))))));
    return select(vec3<bool>(global0.d, any(!select(vec4<bool>(false, var_2.x, global0.d, false), vec4<bool>(false, arg_2, arg_2, true), vec4<bool>(global0.d, false, false, true))), false), vec3<bool>(false, var_1.d, _wgslsmith_f_op_f32(min(arg_0.b.x, _wgslsmith_f_op_f32(ceil(global1.b.x)))) != _wgslsmith_f_op_f32(min(global0.b.c.b.x, _wgslsmith_f_op_f32(ceil(251f))))), select(!select(vec3<bool>(false, false, global2.x), select(vec3<bool>(global0.d, false, global0.d), vec3<bool>(var_2.x, false, global2.x), global0.d), arg_2), select(!vec3<bool>(true, global2.x, var_1.d), select(select(vec3<bool>(var_1.d, true, global2.x), vec3<bool>(true, false, global2.x), false), select(vec3<bool>(true, var_1.d, false), vec3<bool>(arg_2, var_1.d, var_1.d), vec3<bool>(global0.d, var_2.x, true)), any(global2.xy)), true), false));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global1 = Struct_2(vec3<u32>(_wgslsmith_dot_vec2_u32(global0.c.a.xy, abs(global1.a.xy)), 1u, u_input.c.x) ^ ~min(abs(u_input.c.wwy), vec3<u32>(global1.a.x, global0.b.a.a.x, global0.b.d.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-339f, global1.b.x, global1.b.x, 1465f)))))))));
    global2 = vec3<bool>(true, arg_0, !select(true, any(select(vec3<bool>(arg_0, arg_0, global2.x), vec3<bool>(false, global0.d, global0.d), vec3<bool>(global0.d, global0.d, global2.x))), global0.d));
    global2 = !(!select(select(!vec3<bool>(global2.x, arg_0, false), !vec3<bool>(global2.x, false, global2.x), false), !select(vec3<bool>(false, global0.d, global2.x), vec3<bool>(global2.x, true, global0.d), true), func_4(global0.b.d, _wgslsmith_add_vec3_i32(u_input.d.yyy, vec3<i32>(30737i, 11942i, 15292i)), func_3(), u_input.d)));
    let var_0 = any(!global2.xx);
    global2 = vec3<bool>(true, false, false);
    return global0.c;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_4 {
    var var_0 = true;
    let var_1 = Struct_5(_wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_mult_i32(0i, -1i), ~u_input.d.x), vec2<i32>(u_input.d.x, -_wgslsmith_mod_i32(u_input.d.x, 0i)), ~(~select(vec2<i32>(25048i, 2147483647i), vec2<i32>(u_input.d.x, u_input.d.x), global0.d))), Struct_2(vec3<u32>(4294967295u, global1.a.x, ~global1.a.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -940f)), _wgslsmith_f_op_f32(arg_1.b - -2147f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-244f, global1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-297f))))), arg_1);
    global2 = vec3<bool>(!(u_input.a.x < 0u), true, (all(vec3<bool>(true, global2.x, global2.x)) && !(false && global2.x)) == false);
    global2 = vec3<bool>(global2.x & (_wgslsmith_f_op_f32(-1493f + global0.b.c.b.x) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-897f, global0.c.b)))), false, true);
    global1 = global0.b.c;
    return Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1059f)), 1404f), Struct_3(global0.b.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global1.b.ywx)) * _wgslsmith_f_op_vec3_f32(ceil(arg_0))), Struct_2(vec3<u32>(arg_1.a.x, 1u, 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(774f, -1000f, arg_1.b, 1364f) * vec4<f32>(global0.a, -733f, -1025f, -2727f)))), var_1.b, _wgslsmith_f_op_f32(round(global0.c.b))), global0.c, !global2.x && true, _wgslsmith_f_op_vec4_f32(-var_1.b.b));
}

fn func_6(arg_0: Struct_4) -> Struct_2 {
    let var_0 = -385f;
    let var_1 = func_2(~(-u_input.d.x) <= (u_input.d.x >> ((~global0.b.a.a.x | _wgslsmith_dot_vec3_u32(global0.b.a.a, arg_0.b.a.a)) % 32u)));
    let var_2 = func_2(!all(vec2<bool>(global0.d, global1.b.x <= arg_0.b.d.b.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b.c.b));
    let var_4 = func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(global1.b.x, 980f, var_1.b), vec3<f32>(203f, var_1.b, -2077f)), var_3.yzy)) + vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.b)), _wgslsmith_f_op_f32(step(142f, global1.b.x)), _wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-306f, -1379f, -803f) + _wgslsmith_f_op_vec3_f32(global0.b.d.b.zww + vec3<f32>(-733f, -206f, 691f))) * vec3<f32>(global1.b.x, -875f, -131f)), false)), global0.c);
    return var_4.b.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    global1 = func_6(func_5(global0.e.zxy, func_2(global0.d)));
    var var_0 = global0.c.a.x;
    global1 = func_6(Struct_4(-194f, global0.b, Struct_1(global0.c.a, _wgslsmith_div_f32(485f, _wgslsmith_div_f32(global0.a, -169f))), any(vec4<bool>(false, true, true, global2.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-117f, global1.b.x, -232f, global1.b.x), vec4<f32>(global1.b.x, -707f, -706f, -324f), vec4<bool>(global2.x, global2.x, false, false))), global0.e))))));
    var_0 = ~(~1u);
    let var_1 = global0.b;
    return global0.c;
}

fn func_7(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_4 {
    global1 = func_6(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1523f + 579f)), arg_0.b, func_2(global1.a.x < 0u), global2.x, _wgslsmith_f_op_vec4_f32(exp2(global0.b.c.b))));
    let var_0 = global2.x;
    var var_1 = _wgslsmith_add_vec4_i32(abs(u_input.d), _wgslsmith_add_vec4_i32(abs(u_input.d), -u_input.d));
    global1 = arg_0.b.d;
    var var_2 = Struct_5(_wgslsmith_sub_vec2_i32(u_input.d.xw, u_input.d.xx), arg_1, global0.c);
    return func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, arg_1.b.x, _wgslsmith_f_op_f32(step(-1035f, _wgslsmith_f_op_f32(-global1.b.x)))) * vec3<f32>(_wgslsmith_f_op_f32(abs(-1237f)), arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.b) + -1080f))), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 63271u;
    var var_1 = Struct_2(~(~global0.c.a.yyz), vec4<f32>(global0.b.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.b - global1.b.x)) * global1.b.x), global0.e.x, _wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + -924f)))));
    let var_2 = global1.a.x;
    global0 = func_7(Struct_4(_wgslsmith_f_op_f32(select(global0.b.d.b.x, 1000f, true)), Struct_3(global0.b.d, _wgslsmith_div_vec3_f32(vec3<f32>(-529f, var_1.b.x, -1000f), vec3<f32>(global0.a, 962f, -718f)), global0.b.d, global0.b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1937f, var_1.b.x, global2.x)) - global1.b.x)), func_1(vec3<bool>(global1.b.x < global1.b.x, any(vec2<bool>(global2.x, global2.x)), global0.d), abs(vec3<i32>(11322i, u_input.d.x, u_input.d.x)), Struct_1(vec4<u32>(u_input.b, global0.c.a.x, u_input.b, var_1.a.x) >> (u_input.c % vec4<u32>(32u)), 241f), _wgslsmith_mod_vec3_u32(vec3<u32>(54588u, global0.c.a.x, 4294967295u), vec3<u32>(24271u, var_1.a.x, 19170u)) ^ ~global0.c.a.wzw), !global2.x, _wgslsmith_f_op_vec4_f32(-global0.e)), func_6(func_5(_wgslsmith_f_op_vec3_f32(-global0.b.b), Struct_1(global0.c.a, global1.b.x))), ~vec3<u32>(max(35110u, var_1.a.x) >> (_wgslsmith_div_u32(global1.a.x, var_1.a.x) % 32u), _wgslsmith_add_u32(~0u, _wgslsmith_clamp_u32(u_input.e.x, u_input.a.x, 58917u)), _wgslsmith_mult_u32(u_input.b, _wgslsmith_mult_u32(global1.a.x, global1.a.x))));
    var var_3 = func_6(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1624f, global1.b.x, global1.b.x) + global1.b.ywy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.b, 928f, -1130f)), select(vec3<bool>(global0.d, global2.x, global2.x), vec3<bool>(global2.x, global2.x, false), vec3<bool>(false, global2.x, false))))), Struct_1(~firstLeadingBit(vec4<u32>(0u, 20064u, 11163u, 82093u)), _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x))));
    let var_4 = select(u_input.a, _wgslsmith_add_vec2_u32(var_1.a.yx, vec2<u32>(_wgslsmith_dot_vec3_u32(func_6(Struct_4(849f, Struct_3(Struct_2(var_3.a, vec4<f32>(var_1.b.x, 248f, -1285f, 438f)), vec3<f32>(533f, global1.b.x, var_1.b.x), global0.b.c, Struct_2(vec3<u32>(26732u, var_1.a.x, 6498u), global1.b), var_3.b.x), global0.c, global0.d, global1.b)).a, u_input.c.yww), var_3.a.x)), global2.zz);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

