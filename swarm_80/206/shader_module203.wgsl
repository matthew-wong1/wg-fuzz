struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<f32>;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(false, false, true), -383f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = 1000f;
    var var_1 = true;
    let var_2 = firstLeadingBit(vec2<i32>(1i, 1i));
    var_1 = var_2.x >= max(min(1i, -1i), _wgslsmith_mod_i32(firstLeadingBit(firstTrailingBit(var_2.x)), var_2.x));
    let var_3 = global2.a;
    return -1i >> (((69080u << (min(abs(1u), ~u_input.b.x) % 32u)) << (0u % 32u)) % 32u);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global2 = Struct_1(vec3<bool>(!(!arg_1.a.x) && (true != arg_1.a.x), !all(select(vec4<bool>(arg_3.a.x, false, global2.a.x, arg_2.a.x), vec4<bool>(false, global2.a.x, true, true), vec4<bool>(false, true, false, global2.a.x))), true), _wgslsmith_f_op_f32(-arg_3.b));
    let var_0 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-555f * 167f)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)), arg_3.b)) >= _wgslsmith_f_op_f32(floor(arg_2.b));
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(~firstTrailingBit(arg_0), 1i, ~_wgslsmith_div_i32(firstLeadingBit(arg_0), -arg_0), _wgslsmith_mult_i32(~0i, ~(0i | arg_0))), vec4<i32>(_wgslsmith_sub_i32((arg_0 >> (9866u % 32u)) & (arg_0 | arg_0), ~reverseBits(arg_0)), -abs(min(arg_0, -2147483647i)), ~(~_wgslsmith_clamp_i32(arg_0, 29511i, -44304i)), arg_0));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-global2.b), -2536f, 292f, arg_2.b);
    return 4294967295u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>) -> i32 {
    var var_0 = vec2<u32>(1u, min(func_4(func_3(), Struct_1(!vec3<bool>(global2.a.x, global2.a.x, global2.a.x), _wgslsmith_f_op_f32(abs(arg_1.x))), Struct_1(select(vec3<bool>(true, true, global2.a.x), global2.a, global2.a), _wgslsmith_f_op_f32(598f - 1255f)), Struct_1(!vec3<bool>(global2.a.x, true, global2.a.x), -639f)), u_input.b.x ^ u_input.c.x));
    var_0 = u_input.c;
    var var_1 = Struct_1(global2.a, global2.b);
    global1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_1)));
    var var_2 = false;
    return func_3();
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    return arg_2;
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(vec3<bool>(any(vec4<bool>(global2.a.x, !arg_2.a.x, true, true || arg_2.a.x)), arg_1.a.x, true), arg_2.b);
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(arg_0.x, 60738u, 1u) ^ arg_0.xxx), ~vec3<u32>(62801u, arg_0.x, u_input.a) >> (_wgslsmith_mod_vec3_u32(u_input.b, u_input.b) % vec3<u32>(32u))) << (~(_wgslsmith_sub_u32(arg_0.x, 0u) & 0u) % 32u), 4294967295u, ~select(arg_0.x, 1u, arg_1.a.x));
    let var_2 = arg_0.ywx;
    let var_3 = !(!((any(vec3<bool>(arg_2.a.x, true, false)) && true) || all(var_0.a.xy)));
    let var_4 = var_2;
    return func_5(1i, _wgslsmith_f_op_f32(-global2.b), func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(min(-13855i, 71594i), ~46041i), ~vec2<i32>(710i, -1i) << (min(arg_0.ww, vec2<u32>(68559u, var_2.x)) % vec2<u32>(32u))), arg_2.b, arg_2, !all(!var_0.a.zz)), var_0.a.x).a;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(195f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -477f) + -1068f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.b), 391f)))));
    let var_1 = Struct_1(func_6(vec4<u32>(10360u, u_input.a, _wgslsmith_clamp_u32(4294967295u, 26053u << (0u % 32u), 0u), reverseBits(_wgslsmith_mult_u32(u_input.b.x, 1575u))), func_5(func_2(~vec2<i32>(-41782i, -53322i), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global2.b, global2.b) * vec3<f32>(global1.x, global1.x, 708f))), -460f, Struct_1(vec3<bool>(false, global2.a.x, false), _wgslsmith_div_f32(-663f, -1718f)), global2.a.x), Struct_1(vec3<bool>(false, false, all(vec2<bool>(false, false))), -1570f)), 1f);
    let var_2 = ~vec3<u32>(u_input.b.x, u_input.b.x, 1u);
    var var_3 = -_wgslsmith_div_i32(~(~2147483647i << (var_2.x % 32u)), ~_wgslsmith_mult_i32(select(1i, 1i, true), func_2(vec2<i32>(2147483647i, 29011i), vec3<f32>(global1.x, 214f, var_1.b))));
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-686f)) * _wgslsmith_f_op_f32(global2.b + var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(select(377f, 1202f, true))))), 777f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1152f, _wgslsmith_f_op_f32(step(global1.x, -1614f)), global2.b), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, -1124f, -424f)))))));
    return Struct_1(!func_5(i32(-1i) * -17683i, _wgslsmith_f_op_f32(336f * _wgslsmith_f_op_f32(f32(-1f) * -1344f)), var_1, func_5(-1i, global2.b, var_1, true).a.x || (global2.a.x && global2.a.x)).a, global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    var var_0 = vec3<bool>(func_5(3705i, _wgslsmith_f_op_f32(f32(-1f) * -157f), func_1(), false).a.x, global2.a.x, true);
    global2 = Struct_1(vec3<bool>(_wgslsmith_mult_u32(~u_input.a, 49000u) != u_input.c.x, true, true), global1.x);
    var_0 = vec3<bool>(var_0.x, any(select(global2.a.yy, select(!var_0.zz, func_1().a.xx, var_0.zy), vec2<bool>(true, true))), !(~(~u_input.a) <= u_input.a));
    var var_1 = Struct_1(vec3<bool>(true, any(vec2<bool>(true, var_0.x)), global2.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b, -756f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.b)) * -606f)) + global1.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b + -1716f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global2.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -769f), _wgslsmith_f_op_f32(global2.b * var_1.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, global2.b, -148f) - vec3<f32>(global2.b, 347f, var_1.b)), vec3<f32>(global2.b, var_1.b, -720f))) * vec3<f32>(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(f32(-1f) * -127f), global2.b))) + vec3<f32>(var_1.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.b + global2.b))))), _wgslsmith_f_op_f32(select(-691f, _wgslsmith_f_op_f32(var_1.b - global2.b), !var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), 575f), ~(-38366i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_2.yy)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1.xx + _wgslsmith_f_op_vec2_f32(floor(global1.yz))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1011f, 1367f)), func_6(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.a)), Struct_1(global2.a, 420f), Struct_1(global2.a, -918f)).yx))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1172f, 782f, 1235f) - vec3<f32>(757f, -1046f, -255f))))))), abs(countOneBits(vec3<i32>(-57751i << (u_input.c.x % 32u), _wgslsmith_sub_i32(-80055i, -1i), ~(-2147483647i)))));
}

