struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(326f, 678f);

var<private> global1: i32 = 66899i;

var<private> global2: i32 = 0i;

var<private> global3: vec4<u32> = vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: f32) -> vec3<f32> {
    var var_0 = arg_0;
    var_0 = 1000f;
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-365f + 968f))) * _wgslsmith_f_op_f32(-1795f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1301f - -990f)))));
    global3 = vec4<u32>(~(~(~_wgslsmith_add_u32(global3.x, global3.x))), global3.x, abs(_wgslsmith_mod_u32(1u, 53680u)), 1u);
    var var_1 = Struct_1(u_input.b, u_input.c.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(896f, -1284f, global0.x) * vec3<f32>(global0.x, global0.x, arg_0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-346f, arg_0, global0.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_0, arg_0) + vec3<f32>(482f, arg_0, arg_0)))), vec3<bool>(true, true, true))), all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), true)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, var_1.c.x)) * _wgslsmith_f_op_f32(-885f + global0.x)), var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(144f, -332f))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - _wgslsmith_f_op_f32(-175f - -1059f)), _wgslsmith_f_op_f32(global0.x + arg_0), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(trunc(-200f))))) * vec3<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x - global0.x) * arg_0), _wgslsmith_f_op_f32(f32(-1f) * -124f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> i32 {
    global2 = -2147483647i;
    let var_0 = Struct_1(firstTrailingBit(vec4<i32>(u_input.a.x >> (0u % 32u), 1i, max(u_input.b.x, arg_0.b), arg_0.a.x) & ~_wgslsmith_div_vec4_i32(arg_0.a, u_input.a)), -1i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, 1470f, _wgslsmith_f_op_f32(-arg_0.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_0.c))) - _wgslsmith_f_op_vec3_f32(-arg_0.c))), arg_0.d);
    var var_1 = (var_0.d || false) && !all(select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0.d, arg_0.d, arg_0.d), vec3<bool>(false, var_0.d, true), vec3<bool>(arg_0.d, false, true)), var_0.c.x == global0.x));
    global3 = ~abs(firstLeadingBit(vec4<u32>(global3.x, 27588u, ~0u, global3.x)));
    var var_2 = ~max(global3.x, global3.x);
    return ~u_input.a.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> Struct_3 {
    global1 = _wgslsmith_mod_i32(~1i, -49766i);
    var var_0 = Struct_1(u_input.a, -10257i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0))), !arg_1);
    var var_1 = Struct_2(arg_1 | true, var_0.a);
    var var_2 = arg_1;
    var var_3 = vec3<i32>(-1i) * -countOneBits(countOneBits(~var_0.a.zzz));
    return Struct_3(Struct_2(any(select(select(vec4<bool>(arg_1, true, var_0.d, var_1.a), vec4<bool>(false, var_1.a, var_1.a, arg_1), vec4<bool>(arg_1, var_0.d, arg_1, false)), vec4<bool>(false, var_1.a, var_0.d, var_1.a), !vec4<bool>(true, var_1.a, var_1.a, var_1.a))), vec4<i32>(var_0.a.x, -var_1.b.x, -2147483647i, min(-2147483647i, u_input.c.x)) & select(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.x, u_input.c.x, var_3.x, u_input.b.x), vec4<i32>(-14478i, var_1.b.x, 64979i, -1i)), vec4<i32>(var_1.b.x, var_3.x, var_3.x, -7702i), var_3.x != -35324i)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-640f * 1590f)) == _wgslsmith_f_op_f32(-global0.x), var_1.b), Struct_1(vec4<i32>(2147483647i, func_3(Struct_1(vec4<i32>(u_input.b.x, 25593i, 13729i, u_input.b.x), -43022i, vec3<f32>(-657f, 472f, 319f), false), global3.x), 0i, _wgslsmith_mod_i32(16067i, var_1.b.x)) & _wgslsmith_clamp_vec4_i32(var_1.b, vec4<i32>(var_0.a.x, 83880i, 0i, u_input.a.x), var_1.b), var_1.b.x, vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-459f + var_0.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec3_f32(func_1(arg_0.x)).x, _wgslsmith_f_op_vec3_f32(func_1(global0.x)).x))), any(!select(vec4<bool>(true, arg_1, false, true), vec4<bool>(var_0.d, arg_1, var_1.a, false), vec4<bool>(var_0.d, true, true, var_1.a)))), all(!(!vec3<bool>(var_0.d, arg_1, arg_1))), Struct_1(-vec4<i32>(u_input.c.x, i32(-1i) * -77622i, var_1.b.x, ~(-74600i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 28857i), vec2<i32>(var_0.b, 26559i)), 0i), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(var_0.c)), _wgslsmith_f_op_vec3_f32(-arg_0))), !(!select(var_1.a, var_0.d, arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, -1035f), vec3<f32>(global0.x, -401f, 1130f), vec3<bool>(false, true, true))) * _wgslsmith_f_op_vec3_f32(func_1(global0.x))))), all(vec2<bool>(true, true)) | true);
    let var_1 = select(vec4<bool>(true, var_0.a.a, true, true), !select(!(!vec4<bool>(true, var_0.b.a, true, true)), !(!vec4<bool>(true, var_0.c.d, var_0.c.d, false)), vec4<bool>(any(vec3<bool>(true, var_0.a.a, false)), var_0.e.c.x < 1655f, false, var_0.d)), select(vec4<bool>(true, true, true == all(vec4<bool>(var_0.b.a, var_0.e.d, true, false)), any(select(vec4<bool>(var_0.a.a, true, true, var_0.d), vec4<bool>(false, var_0.c.d, var_0.e.d, var_0.d), var_0.a.a))), vec4<bool>(false, var_0.c.d, !var_0.d, any(vec2<bool>(var_0.c.d, var_0.c.d))), !all(vec3<bool>(false, false, var_0.e.d)) || any(vec4<bool>(var_0.b.a, var_0.d, true, false))));
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(var_0.c.c * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.c.c)))), any(!(!var_1.ww))).b;
    let var_3 = var_0.c;
    let var_4 = !(!var_1);
    var var_5 = !select(vec4<bool>(false, any(vec4<bool>(true, var_2.a, var_1.x, var_0.d)) && true, any(var_1.zzz), _wgslsmith_mod_i32(var_3.b, -22717i) > var_0.a.b.x), var_4, vec4<bool>(true || !var_0.c.d, var_2.a, !(!var_4.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(-354f, var_0.c.c.yz, global3.x >> (_wgslsmith_mult_u32(abs(global3.x), _wgslsmith_mult_u32(_wgslsmith_div_u32(0u, global3.x), global3.x)) % 32u));
}

