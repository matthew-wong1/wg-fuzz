struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool>;

var<private> global2: Struct_1;

var<private> global3: i32;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> bool {
    var var_0 = Struct_2(Struct_1(global4.a, _wgslsmith_f_op_f32(-1608f * _wgslsmith_f_op_f32(1f * 550f))), _wgslsmith_mod_u32(firstTrailingBit(~(~56636u)), ~(1u & select(u_input.e, 15854u, true))));
    global2 = Struct_1(global0.a, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-global0.b)));
    let var_1 = u_input.d.zwz << (vec3<u32>(0u, _wgslsmith_div_u32(min(u_input.d.x, _wgslsmith_sub_u32(u_input.b, 1u)), var_0.b), 0u) % vec3<u32>(32u));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global4.a.x, global0.a.x))), _wgslsmith_f_op_f32(-1067f - 777f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)), global2.a, any(select(vec2<bool>(true, arg_1), global1.zx, vec2<bool>(global1.x, arg_1))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + global0.a.x)));
    let var_2 = 1370f;
    return arg_1;
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1388f, global0.a.x)) + _wgslsmith_f_op_f32(1021f - arg_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -620f), 662f), global2.b), u_input.b);
    var var_1 = false;
    global1 = vec4<bool>(!select(select(-1i, u_input.c, global1.x) > u_input.c, func_3(u_input.a, -839f < global4.a.x), any(arg_0)), any(arg_0), arg_0.x | all(select(vec2<bool>(global1.x, true), !vec2<bool>(arg_0.x, arg_1), true)), !select(true, !arg_0.x, !(8891i != u_input.c)));
    var_1 = !select(global1.x, false, u_input.a.x > _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a.x, 0i) | vec3<i32>(2147483647i, -1i, u_input.a.x), abs(u_input.a)));
    var_1 = true;
    return Struct_2(Struct_1(vec4<f32>(-1705f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), arg_2.b, -671f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-var_0.a.a.x), false == arg_1)))), 2959u);
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-arg_0.a.a);
    global1 = vec4<bool>(_wgslsmith_f_op_f32(select(1101f, 563f, true)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1)) - 551f), !(!global1.x), global1.x, (~u_input.d.x | ~u_input.e) > 54059u);
    var var_1 = u_input.b;
    var var_2 = global1.x;
    let var_3 = func_2(!select(global1.yx, vec2<bool>(!global1.x, false), false), global1.x, arg_0.a).a;
    return Struct_2(var_3, max(_wgslsmith_sub_u32(0u, ~(arg_0.b ^ arg_0.b)), ~4294967295u));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_1 {
    global3 = -(-max(~(-2147483647i), u_input.a.x) >> (u_input.d.x % 32u));
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(global2.a * vec4<f32>(-1343f, _wgslsmith_f_op_f32(step(arg_1.a.a.x, _wgslsmith_f_op_f32(1000f * global4.b))), _wgslsmith_f_op_f32(f32(-1f) * -443f), _wgslsmith_div_f32(159f, arg_1.a.b))), -560f);
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-883f, -1001f, arg_1.a.b, arg_2.a.a.x)), _wgslsmith_f_op_vec4_f32(global4.a + _wgslsmith_f_op_vec4_f32(-arg_1.a.a)), arg_3.x >= -1574f))), 576f);
    global0 = func_2(select(select(!global1.xx, global1.yy, true), !vec2<bool>(func_3(vec3<i32>(27032i, -53750i, arg_0), false), true), select(!(-1166f == arg_3.x), any(select(vec3<bool>(true, false, global1.x), global1.yyx, false)), arg_3.x >= arg_3.x)), all(select(vec2<bool>(all(vec3<bool>(global1.x, true, false)), all(vec3<bool>(false, true, global1.x))), global1.yw, !vec2<bool>(global1.x, global1.x))), arg_1.a).a;
    global0 = arg_2.a;
    return func_4(func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(global2.a * vec4<f32>(-347f, arg_3.x, 1253f, 403f)), -468f), _wgslsmith_dot_vec4_u32(u_input.d, select(u_input.d, vec4<u32>(arg_2.b, arg_1.b, 0u, 43191u), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3.x, global4.a.x)) - arg_3.x))), arg_1.a.b).a;
}

fn func_1() -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1791f, -398f, global4.a.x, global4.a.x) * vec4<f32>(global2.b, global4.b, 449f, global4.a.x))), vec4<f32>(1507f, _wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(floor(global4.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-622f)))), firstLeadingBit(23962u));
    var_0 = Struct_2(func_5(u_input.a.x, func_4(func_2(global1.zy, true | global1.x, var_0.a), _wgslsmith_f_op_f32(ceil(-169f))), Struct_2(func_4(Struct_2(Struct_1(vec4<f32>(347f, -2081f, -1684f, -109f), global2.b), 41488u), -1000f).a, u_input.b >> (~u_input.b % 32u)), _wgslsmith_f_op_vec3_f32(-global4.a.xzx)), ~(var_0.b >> (~(~u_input.b) % 32u)));
    var_0 = func_2(global1.xy, global1.x, var_0.a);
    let var_1 = global4.b;
    let var_2 = ~_wgslsmith_mult_vec2_i32(~vec2<i32>(-16055i, u_input.c), vec2<i32>(u_input.c | u_input.a.x, _wgslsmith_sub_i32(2147483647i, 2147483647i))) & max(~(~u_input.a.xz), u_input.a.xx);
    return -136f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(global4.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x - 111f)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(-1000f - global0.a.x));
    var var_1 = !select(vec4<bool>(!(!global1.x), 6149u == u_input.d.x, global1.x, var_0.b != _wgslsmith_f_op_f32(1777f - global2.a.x)), !vec4<bool>(select(true, true, global1.x), true, global1.x, global1.x), vec4<bool>(true, true, true, _wgslsmith_f_op_f32(ceil(global4.a.x)) > _wgslsmith_f_op_f32(f32(-1f) * -861f)));
    var var_2 = ~max(_wgslsmith_add_vec2_i32(u_input.a.xy, max(-vec2<i32>(u_input.a.x, 0i), abs(vec2<i32>(u_input.a.x, u_input.a.x)))), u_input.a.xz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(var_0.a.xyx)), abs(vec4<i32>(u_input.c & -var_2.x, 2147483647i, abs(abs(u_input.c)), ~1i)), _wgslsmith_f_op_vec2_f32(-global0.a.zx), vec3<u32>(~(~0u) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.e, 0u), vec4<u32>(u_input.e, 10693u, u_input.d.x, 73780u)), reverseBits(u_input.d)), _wgslsmith_mod_u32(max(~u_input.b, ~u_input.d.x), _wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.d.wzy, vec3<u32>(4294967295u, u_input.b, u_input.d.x)), u_input.d.x)), ~u_input.e), var_0.a);
}

