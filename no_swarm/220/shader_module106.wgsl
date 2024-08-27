struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: bool,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-399f, -281f, 905f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-1835f - _wgslsmith_f_op_f32(floor(995f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -687f), arg_0), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-703f, arg_0, global0.x)))))));
    let var_0 = true;
    let var_1 = u_input.b;
    var var_2 = ~countOneBits(vec3<u32>(194u << (u_input.c.x % 32u), u_input.a, 4294967295u) << (vec3<u32>(~u_input.a, ~20495u, _wgslsmith_mod_u32(arg_1.x, u_input.c.x)) % vec3<u32>(32u)));
    var var_3 = vec3<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(~min(arg_1, vec3<u32>(u_input.c.x, 103567u, arg_1.x))), ~arg_1), ~17756u, _wgslsmith_mult_u32(var_2.x, ~(u_input.c.x >> (u_input.a % 32u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-279f)), 754f));
}

fn func_2(arg_0: bool) -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(900f, global0.x))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(min(global0.x, global0.x)), u_input.c.xyy)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-503f, 937f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1053f, -1039f, global0.x)) + _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -980f, global0.x), vec3<f32>(global0.x, global0.x, global0.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(316f, -1000f, global0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 271f))))), !all(vec2<bool>(!arg_0, true))));
    var var_0 = ~_wgslsmith_mult_u32(u_input.c.x, 0u);
    var var_1 = arg_0;
    let var_2 = select(select(select(!(!vec4<bool>(true, arg_0, false, arg_0)), select(select(vec4<bool>(false, true, true, arg_0), vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(false, false, arg_0, arg_0)), !vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(false, arg_0, true, false)), true), vec4<bool>(_wgslsmith_f_op_f32(sign(-718f)) <= _wgslsmith_f_op_f32(-1000f * global0.x), !all(vec3<bool>(arg_0, arg_0, arg_0)), arg_0, arg_0), !select(vec4<bool>(true, arg_0, arg_0, true), !vec4<bool>(arg_0, true, arg_0, false), !vec4<bool>(true, arg_0, arg_0, false))), !(!vec4<bool>(true, global0.x > 1180f, select(arg_0, false, arg_0), true)), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(true, arg_0, arg_0, true), arg_0), !vec4<bool>(arg_0, true, arg_0, true)), select(vec4<bool>(arg_0, true, arg_0, arg_0), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, arg_0)), true), any(vec4<bool>(arg_0, arg_0, arg_0, true))), vec4<bool>(true, all(vec4<bool>(true, arg_0, arg_0, false)) || (global0.x >= -906f), arg_0, true), vec4<bool>(arg_0, !all(vec3<bool>(arg_0, false, arg_0)), true, any(vec2<bool>(arg_0, arg_0)))));
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1039f, global0.x, 1297f) - vec3<f32>(266f, 1000f, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1896f, -622f, 511f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-981f, global0.x, 1158f) - vec3<f32>(305f, -281f, global0.x))))));
    return 111621u;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<f32>) -> i32 {
    var var_0 = arg_1;
    var var_1 = ~(~u_input.c.x);
    let var_2 = Struct_2(_wgslsmith_mod_u32(func_2(false), 8231u) & var_0.a, ~u_input.b.x, arg_1.c, true, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-global0.x)), 176f)), vec3<u32>(4294967295u, 14557u, ~(arg_1.a ^ 19523u)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.e)) - 1380f);
    let var_4 = !vec3<bool>(any(select(vec2<bool>(true, true), var_0.c.b, var_2.c.b)), !any(!vec3<bool>(var_0.d, arg_1.c.c, var_2.c.c)), true);
    return ~(~var_0.c.d.x) ^ firstLeadingBit(var_0.c.d.x & arg_1.c.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-424f, -1336f, global0.x), vec3<f32>(global0.x, global0.x, global0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(278f, -418f, global0.x), vec3<f32>(-1463f, 704f, -836f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1697f, global0.x, -1115f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(950f, -1000f, global0.x)) - vec3<f32>(-1265f, -1000f, 626f))))));
    var var_0 = Struct_1(u_input.c.wy, vec2<bool>(!(select(true, false, true) | false), !(_wgslsmith_sub_i32(u_input.b.x, 2147483647i) <= func_1(vec4<f32>(355f, 1691f, global0.x, global0.x), Struct_2(1u, 21908i, Struct_1(u_input.c.wz, vec2<bool>(false, true), false, u_input.b.xw, u_input.b.x), true, -466f), true, vec4<f32>(1371f, -249f, global0.x, -1000f)))), any(select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), true)), ~reverseBits(-u_input.b.yx | u_input.b.ww), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 1i, u_input.b.x), min(abs(vec3<i32>(u_input.b.x, -46059i, u_input.b.x)), u_input.b.wyw)), select(vec3<i32>(67854i, u_input.b.x & u_input.b.x, -2147483647i), select(u_input.b.zyz, u_input.b.yxx, true), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) - vec2<f32>(global0.x, 1183f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1853f, -451f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-830f, -1824f, global0.x) - vec3<f32>(global0.x, global0.x, -871f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1062f, -476f, var_1.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1106f, var_1.x, global0.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(685f, 2437f, -447f) - vec3<f32>(global0.x, 447f, var_1.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, global0.x, global0.x))))) * vec3<f32>(-1016f, global0.x, -864f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-337f, 1350f, _wgslsmith_f_op_f32(-688f * -1113f))))));
    var var_3 = all(vec3<bool>(var_0.c || any(!vec3<bool>(var_0.b.x, false, var_0.b.x)), true, true));
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1584f, var_1.x, var_2.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-155f, 200f, -535f) * vec3<f32>(223f, var_2.x, 168f)))))));
    let var_4 = vec2<bool>(var_0.c, all(!(!select(vec3<bool>(true, true, var_0.c), vec3<bool>(false, true, true), var_0.c))));
    var var_5 = Struct_1(var_0.a, vec2<bool>(!(_wgslsmith_f_op_f32(-global0.x) < _wgslsmith_f_op_f32(-800f - var_2.x)), all(vec3<bool>(true, false, true)) | (~46419u > ~u_input.c.x)), false, u_input.b.wz, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 650f) - _wgslsmith_f_op_f32(f32(-1f) * -1282f)), -569f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, 1275f))), _wgslsmith_f_op_f32(round(var_1.x))), Struct_2(func_2(all(vec2<bool>(var_5.b.x, true))), ~1749i, Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), var_5.a), var_0.b, false && var_5.c, min(vec2<i32>(24482i, 4016i), vec2<i32>(var_0.e, var_0.d.x)), ~1i), true, _wgslsmith_div_f32(_wgslsmith_div_f32(1835f, var_1.x), -222f)), true || select(true, !var_0.b.x, !var_5.b.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -242f), var_1.x, _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(global0.x + global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1868f, -134f) - _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(var_1.x - -780f)))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x) - _wgslsmith_f_op_f32(global0.x * -1259f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, var_1.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * var_2.x)))), 4294967295u);
}

