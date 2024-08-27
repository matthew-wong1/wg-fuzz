struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 14>;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>) -> vec3<u32> {
    var var_0 = !select(!select(select(vec3<bool>(global3.d.x, false, false), vec3<bool>(global3.d.x, global0.d.x, global0.d.x), vec3<bool>(global0.d.x, global3.d.x, true)), vec3<bool>(true, global3.d.x, global2.d.x), vec3<bool>(false, true, global2.d.x)), vec3<bool>(false, all(vec4<bool>(true, false, global3.d.x, global3.d.x)), global2.d.x), global3.d.x);
    global2 = Struct_1(u_input.a & _wgslsmith_sub_i32(-16763i, -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-135f))), firstTrailingBit(vec2<u32>(4294967295u, countOneBits(arg_0))), global0.d);
    let var_1 = _wgslsmith_add_i32(global2.a, countOneBits(u_input.a));
    let var_2 = arg_1.ww;
    let var_3 = vec4<bool>(true, any(!vec4<bool>(true, global0.d.x != true, var_0.x, !global0.d.x)), !(_wgslsmith_sub_i32(_wgslsmith_add_i32(0i, u_input.a), _wgslsmith_clamp_i32(-1588i, var_1, -47644i)) < global3.a), true);
    return _wgslsmith_div_vec3_u32(max(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(40211u, global0.c.x), min(global2.c.x, 41885u), 37321u), ~vec3<u32>(u_input.c, global2.c.x, 1u)), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(55277u, global0.c.x, global2.c.x), _wgslsmith_mod_vec3_u32(vec3<u32>(global0.c.x, global2.c.x, 0u), vec3<u32>(0u, arg_0, arg_0)))), abs(~abs(vec3<u32>(global3.c.x, 1u, global3.c.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: f32) -> f32 {
    global0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(~(-2147483647i), firstLeadingBit(arg_1.a)), -_wgslsmith_sub_i32(arg_0.a, 1i)), ~_wgslsmith_mult_i32(abs(621i), arg_1.a)), arg_3, ~_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.c, arg_0.c.x), u_input.c), abs(arg_2.xx) >> (max(vec2<u32>(4294967295u, 0u), vec2<u32>(49830u, 4294967295u)) % vec2<u32>(32u))), !vec2<bool>(33642i >= arg_0.a, all(select(global0.d, vec2<bool>(true, arg_0.d.x), vec2<bool>(global3.d.x, arg_1.d.x)))));
    var var_0 = global3.c;
    global0 = Struct_1(2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-238f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(851f, global3.b)) * arg_3))), ~(~countOneBits(firstTrailingBit(global0.c))), vec2<bool>(true, arg_0.d.x));
    let var_1 = arg_0;
    global0 = Struct_1(abs(-1i), _wgslsmith_f_op_f32(trunc(global0.b)), ~arg_1.c, global0.d);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1499f, 1654f, false))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)))) + arg_0.b));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(global0.b, _wgslsmith_f_op_f32(func_4(arg_0, arg_0, ~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.c, global2.c.x), vec3<u32>(arg_0.c.x, 1u, global3.c.x)), func_3(16062u, global1[_wgslsmith_index_u32(4294967295u, 14u)])), -471f)), 432f);
    global0 = arg_0;
    var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.b))), 384f)));
    global3 = arg_0;
    let var_1 = Struct_1(-(_wgslsmith_mult_i32(~u_input.a, min(-2147483647i, -31936i)) << (~(~global3.c.x) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - global2.b)), vec2<u32>(1u, global3.c.x), select(select(vec2<bool>(global2.d.x, false), select(!global0.d, arg_0.d, any(vec4<bool>(arg_0.d.x, global0.d.x, false, global0.d.x))), true), !vec2<bool>(any(global0.d), global3.d.x), vec2<bool>(_wgslsmith_div_f32(arg_0.b, -607f) <= _wgslsmith_f_op_f32(-1182f - -1000f), !any(vec2<bool>(true, global0.d.x)))));
    return var_1;
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<u32>(global2.c.x, _wgslsmith_clamp_u32(0u, u_input.c, 39866u)) ^ _wgslsmith_add_vec2_u32(vec2<u32>(~global3.c.x, ~18603u), vec2<u32>(abs(4294967295u), 1u));
    let var_1 = vec4<i32>(-(~(~_wgslsmith_add_i32(u_input.a, 0i))), u_input.a, 2147483647i, -12767i);
    global2 = func_2(Struct_1(u_input.a, _wgslsmith_f_op_f32(-1533f + _wgslsmith_div_f32(-1176f, -921f)), ~(~max(global2.c, global2.c)), global0.d));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.b * -651f), _wgslsmith_f_op_f32(f32(-1f) * -423f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(global2.a, 284f, global3.c, vec2<bool>(global3.d.x, true)), Struct_1(-2147483647i, global2.b, global0.c, global0.d), ~vec3<u32>(u_input.c, global0.c.x, var_0.x), _wgslsmith_f_op_f32(trunc(-743f)))) + global3.b), global3.b) + _wgslsmith_f_op_vec4_f32(floor(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(14394u, u_input.c, global2.c.x, var_0.x)), min(~vec4<u32>(global3.c.x, 89920u, 1u, var_0.x), ~vec4<u32>(41143u, global2.c.x, 70836u, u_input.b))), 14u)])));
    var var_3 = global2.b;
    return func_2(func_2(func_2(Struct_1(39252i, -2182f, ~global3.c, select(global3.d, global2.d, global0.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 14>();
    let var_0 = func_1();
    var var_1 = select(firstLeadingBit(max(~vec2<i32>(u_input.a, -2147483647i), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-39726i, u_input.a), vec2<i32>(0i, var_0.a))))), vec2<i32>(-22634i, 23775i), all(vec4<bool>(-1429f >= global0.b, any(vec4<bool>(var_0.d.x, global2.d.x, true, var_0.d.x)), true, !global0.d.x)) && true);
    var var_2 = Struct_1(-1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -905f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b * -2048f) * global2.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) * _wgslsmith_f_op_f32(global3.b * global0.b)))), func_3(~(~u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(u_input.b, 14u)]), _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(40066u, 14u)] + vec4<f32>(-302f, global0.b, -641f, -1939f)), !vec4<bool>(global0.d.x, false, var_0.d.x, global3.d.x))))).xy, select(vec2<bool>(true, false), !func_2(var_0).d, !(!(!global0.d.x))));
    var_1 = ~firstLeadingBit(max(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, global2.a), vec2<i32>(19755i, -20994i), vec2<i32>(-23816i, global3.a)), _wgslsmith_div_vec2_i32(vec2<i32>(-45251i, -25752i), vec2<i32>(-2147483647i, 38324i)), vec2<i32>(global3.a, -2147483647i) | vec2<i32>(u_input.a, 1i)), ~vec2<i32>(-11448i, var_0.a) | (vec2<i32>(0i, var_0.a) >> (var_0.c % vec2<u32>(32u)))));
    let var_3 = vec3<i32>(~2147483647i, 2147483647i, (_wgslsmith_dot_vec3_i32(min(vec3<i32>(-1i, var_2.a, -2147483647i), vec3<i32>(-1i, global3.a, var_0.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.a, u_input.a, var_1.x), vec3<i32>(-4252i, -2147483647i, var_0.a))) << (_wgslsmith_dot_vec3_u32(func_3(1u, vec4<f32>(398f, global2.b, global2.b, 228f)), select(vec3<u32>(global0.c.x, u_input.c, global0.c.x), vec3<u32>(4294967295u, var_0.c.x, var_2.c.x), global2.d.x)) % 32u)) >> (64996u % 32u));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2022f, 1096f, global2.b, -1796f), vec4<f32>(-757f, -1000f, var_2.b, var_2.b), true))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2131f, -1099f, 358f, global0.b))))) + global1[_wgslsmith_index_u32(global2.c.x, 14u)]);
    var var_5 = var_0;
    var var_6 = Struct_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-367f, 1f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x * -130f)))), ~var_5.c, var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b + -538f))) + _wgslsmith_f_op_f32(-func_2(var_0).b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1229f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(907f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.b)) - global3.b))), ~(~(~select(vec3<u32>(global2.c.x, global3.c.x, global0.c.x), vec3<u32>(var_2.c.x, 4294967295u, 0u), vec3<bool>(true, true, global3.d.x)))), global3.c.x);
}

