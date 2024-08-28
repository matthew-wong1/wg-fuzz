struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -663f;

var<private> global1: bool;

var<private> global2: Struct_1 = Struct_1(false, -928f, vec4<u32>(24066u, 15712u, 34070u, 1u));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: Struct_1) -> bool {
    var var_0 = -1103f;
    var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    global1 = false;
    let var_1 = arg_3;
    let var_2 = arg_3;
    return false;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-339f, 319f, global2.b, -1045f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(971f, global2.b, global2.b, -300f), vec4<f32>(global2.b, 344f, -226f, global2.b), true)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1351f, global2.b, global2.b, global2.b) * vec4<f32>(281f, global2.b, -433f, 182f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.b, global2.b, 1012f, -279f), vec4<f32>(global2.b, -374f, global2.b, 543f))), vec4<f32>(831f, _wgslsmith_f_op_f32(1166f - -1797f), _wgslsmith_div_f32(global2.b, 1794f), -1551f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.b - global2.b), _wgslsmith_f_op_f32(ceil(global2.b)), global2.b, _wgslsmith_div_f32(1819f, global2.b))))));
    global1 = global2.a & false;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, -1000f, 1171f, var_0.x)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.b, 1406f, -767f, 930f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1723f, -300f, -760f, var_0.x) + vec4<f32>(-277f, global2.b, var_0.x, global2.b))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global2.b, 614f, -346f) * vec4<f32>(-336f, var_0.x, -1206f, var_0.x)), vec4<f32>(647f, -1369f, _wgslsmith_f_op_f32(floor(var_0.x)), -127f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1027f, global2.b, 1129f, 144f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, 1226f, 1973f, 258f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1028f, -1484f, -746f, global2.b) - vec4<f32>(-1798f, -291f, var_0.x, global2.b))))), all(!vec2<bool>(global2.a, func_3(false, var_0.zw, vec4<bool>(global2.a, true, true, true), Struct_1(global2.a, global2.b, vec4<u32>(global2.c.x, u_input.a.x, 4294967295u, global2.c.x)))))));
    let var_2 = ~select(~global2.c.x, select(_wgslsmith_clamp_u32(_wgslsmith_div_u32(global2.c.x, u_input.c.x), u_input.c.x, 8716u), abs(~28692u), ~global2.c.x != (global2.c.x | u_input.a.x)), !(~18333u <= _wgslsmith_div_u32(global2.c.x, u_input.a.x)));
    var var_3 = func_3(global2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1469f) + var_0.xw)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.wz)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zz))), !select(!(!vec4<bool>(false, global2.a, false, global2.a)), !vec4<bool>(global2.a, true, true, true), !select(vec4<bool>(true, global2.a, global2.a, false), vec4<bool>(false, false, global2.a, true), vec4<bool>(false, global2.a, global2.a, global2.a))), Struct_1(any(vec4<bool>(true, global2.a, true, true)) & !(!global2.a), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1291f)))), vec4<u32>(~21632u, firstLeadingBit(global2.c.x), 1u, 4294967295u)));
    return Struct_1((reverseBits(_wgslsmith_mult_i32(2147483647i, 1i)) << (u_input.c.x % 32u)) > select(-2147483647i, -17241i, any(vec3<bool>(global2.a, true, global2.a))), var_1.x, firstTrailingBit(~u_input.a));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> f32 {
    var var_0 = func_2(max(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-5960i, 2147483647i, 2102i, 1i)) ^ firstTrailingBit(vec4<i32>(2147483647i, -2147483647i, -2147483647i, 2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -1i, 1i, 71267i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-8420i, 1i, 0i, 0i), vec4<i32>(-20399i, 12646i, -1i, -1i), vec4<i32>(-2147483647i, 1i, -1i, 2147483647i)), countOneBits(vec4<i32>(-23990i, 2147483647i, 3467i, -1i)))), 0i), -(~_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(41421i, 30048i))));
    var var_1 = var_0.b;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.b + -242f), _wgslsmith_f_op_f32(floor(arg_1.b)))));
    let var_2 = ~(-min(vec2<i32>(-1i, ~(-2147483647i)), ~vec2<i32>(-1i, 160i)));
    global0 = global2.b;
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.b;
    global1 = global2.a || global2.a;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(-930f, _wgslsmith_f_op_f32(-global2.b))), _wgslsmith_f_op_f32(-897f + global2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1371f - global2.b)), 1000f);
    var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-130f, global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(true, -1014f, vec4<u32>(23341u, u_input.a.x, global2.c.x, u_input.d)), Struct_1(false, 447f, vec4<u32>(global2.c.x, 14083u, 18585u, 1u)), Struct_1(global2.a, global2.b, u_input.a), global2.c.x)) - 1000f), global2.b) + vec4<f32>(_wgslsmith_f_op_f32(min(1283f, _wgslsmith_f_op_f32(min(-2289f, -2408f)))), -251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), 2302f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -270f), _wgslsmith_f_op_f32(func_1(func_2(-1i, vec2<i32>(17093i, 74589i)), Struct_1(true, 183f, vec4<u32>(4294967295u, 55560u, global2.c.x, 14152u)), Struct_1(false, 1193f, vec4<u32>(15812u, global2.c.x, global2.c.x, global2.c.x)), u_input.d)), 1f, _wgslsmith_f_op_f32(-var_0.x)) * vec4<f32>(_wgslsmith_f_op_f32(-func_2(-2147483647i, vec2<i32>(-2147483647i, 1i)).b), -233f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -288f)), global2.b))));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -842f) - _wgslsmith_f_op_f32(global2.b + -229f)) - _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(floor(var_0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.zxy >> ((countOneBits(u_input.a.ywx) ^ (global2.c.zyx ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(40033u, 0u, 1u), global2.c.zxy, global2.c.yxy))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, 444f), _wgslsmith_f_op_f32(select(var_0.x, 532f, global2.a)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.b)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-194f, _wgslsmith_f_op_f32(sign(-771f)), global2.b)), 1i);
}

