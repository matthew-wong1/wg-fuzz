struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1999f, false);

var<private> global1: Struct_2;

var<private> global2: array<vec2<bool>, 17>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = Struct_5(select(~reverseBits(firstLeadingBit(vec3<u32>(u_input.b, u_input.c.x, 0u))), vec3<u32>(_wgslsmith_mod_u32(reverseBits(u_input.b), 0u | u_input.a), u_input.b, ~1u), global1.a));
    global1 = Struct_2(false);
    var var_1 = !vec4<bool>(all(vec4<bool>(false, global1.a, any(arg_0.b), false)), true, false, false);
    let var_2 = vec3<bool>(false, all(select(vec3<bool>(true, true, global0.b), var_1.wzy, select(!var_1.yzw, var_1.zxw, !vec3<bool>(false, global1.a, var_1.x)))), all(!(!(!arg_0.b))));
    var var_3 = 23252u;
    return -390f;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: i32) -> f32 {
    let var_0 = 1i;
    global0 = Struct_1(global0.a, global0.b);
    let var_1 = 4307u;
    global0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, 1000f)), global0.a)), true);
    var var_2 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), 1000f), !(0u >= u_input.c.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)));
}

fn func_2(arg_0: Struct_5) -> f32 {
    global2 = array<vec2<bool>, 17>();
    global0 = Struct_1(_wgslsmith_f_op_f32(func_4(Struct_5(~(vec3<u32>(arg_0.a.x, 1u, 42306u) ^ u_input.c)), arg_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(true, vec3<bool>(global0.b, global0.b, false), Struct_1(global0.a, global0.b), vec2<f32>(-2647f, 157f))))), _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(-global0.a))), -13608i)), any(!(!(!vec4<bool>(true, global1.a, global0.b, true)))));
    var var_0 = vec2<i32>(1i, 1i);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(func_4(Struct_5(~vec3<u32>(u_input.b, 37240u, arg_0.a.x) >> (u_input.c % vec3<u32>(32u))), arg_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_dot_vec2_i32(countOneBits(abs(vec2<i32>(1i, var_0.x))), vec2<i32>(~19468i, max(var_0.x, var_0.x))))), global1.a);
    let var_2 = Struct_1(150f, false);
    return _wgslsmith_f_op_f32(var_2.a - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.a, 1070f))), _wgslsmith_f_op_f32(-1347f - _wgslsmith_f_op_f32(func_3(Struct_4(false, vec3<bool>(global1.a, false, global1.a), var_2, vec2<f32>(376f, -407f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + global0.a)), _wgslsmith_f_op_f32(func_4(Struct_5(u_input.c), Struct_5(vec3<u32>(11988u, u_input.a, 76531u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global0.a) + vec2<f32>(-654f, arg_1)), _wgslsmith_mult_i32(0i, -11988i)))), !any(vec4<bool>(arg_3.a, false, true, arg_3.a))));
    var var_1 = Struct_5(vec3<u32>(77u, u_input.a, _wgslsmith_div_u32(abs(~49065u), 1u)));
    let var_2 = vec4<i32>(_wgslsmith_add_i32(-33921i, _wgslsmith_mod_i32(firstLeadingBit(firstLeadingBit(1i)), -(-1i << (arg_2 % 32u)))), abs(-_wgslsmith_dot_vec2_i32(-vec2<i32>(0i, 0i), ~vec2<i32>(0i, 1i))), ~abs(_wgslsmith_add_i32(23433i, -2147483647i)), ~_wgslsmith_dot_vec3_i32(firstLeadingBit(abs(vec3<i32>(-1i, 2147483647i, 60930i))), min(vec3<i32>(-5414i, 2147483647i, -2147483647i), ~vec3<i32>(35716i, 13294i, 0i))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.a, -980f, -1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a, 1000f, -315f) * vec3<f32>(var_0.a.a, 3296f, -321f)))))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -557f), global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - arg_1)));
    global2 = array<vec2<bool>, 17>();
    return arg_0;
}

fn func_6(arg_0: u32) -> Struct_5 {
    var var_0 = vec2<f32>(-1245f, _wgslsmith_f_op_f32(-311f - global0.a));
    global2 = array<vec2<bool>, 17>();
    global0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), 213f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a)))), _wgslsmith_f_op_f32(f32(-1f) * -1394f))), global0.b);
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(round(var_0.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)) - _wgslsmith_div_f32(922f, 1067f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1584f), var_0.x, global1.a)) - _wgslsmith_f_op_f32(var_0.x + global0.a)), _wgslsmith_f_op_f32(ceil(var_0.x)));
    var var_2 = Struct_1(323f, any(select(select(!vec3<bool>(false, global1.a, global0.b), vec3<bool>(true, false, true), all(vec2<bool>(false, true))), vec3<bool>(!global1.a, global0.b, true), select(vec3<bool>(true, true, true), !vec3<bool>(false, global0.b, true), true))));
    return Struct_5(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c.x, abs(3204u), _wgslsmith_div_u32(u_input.b, 4294967295u)), _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), u_input.c.yy), _wgslsmith_sub_u32(u_input.c.x, 0u), 0u))));
}

fn func_1() -> f32 {
    var var_0 = func_6(func_5(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -587f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_5(vec3<u32>(4610u, 56804u, 1u)))), global0.a)), u_input.c.x, Struct_2(any(!vec3<bool>(global0.b, global1.a, false)))));
    let var_1 = -vec3<i32>(1i, 1i, 1i);
    var var_2 = vec3<bool>(true, global0.b, any(select(vec3<bool>(false, true, global1.a), !vec3<bool>(global1.a, global0.b, false), true)) | global0.b);
    global2 = array<vec2<bool>, 17>();
    global1 = Struct_2(false);
    return 2089f;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4) -> StorageBuffer {
    var var_0 = countOneBits(vec4<i32>(-_wgslsmith_dot_vec3_i32(max(vec3<i32>(1i, -33320i, 0i), vec3<i32>(-1i, -2147483647i, 5497i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-10012i, -61336i, 5161i), vec3<i32>(-1i, 2147483647i, 3326i), vec3<i32>(-16327i, -2147483647i, 43910i))), countOneBits(2596i), 42682i, _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(38188i, 12977i), ~_wgslsmith_mult_i32(-27084i, -20748i), -4335i)));
    var_0 = reverseBits(reverseBits(_wgslsmith_div_vec4_i32((vec4<i32>(2147483647i, var_0.x, -68942i, -794i) << (vec4<u32>(u_input.a, u_input.c.x, 27425u, u_input.b) % vec4<u32>(32u))) | -vec4<i32>(-1i, 0i, var_0.x, 2147483647i), -max(vec4<i32>(var_0.x, var_0.x, -15118i, -30913i), vec4<i32>(var_0.x, 3662i, var_0.x, -1839i)))));
    global2 = array<vec2<bool>, 17>();
    global1 = Struct_2(!global1.a);
    global0 = Struct_1(-1534f, all(arg_1.b.zz) && global1.a);
    return StorageBuffer(firstLeadingBit(var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1026f, _wgslsmith_f_op_f32(min(global0.a, _wgslsmith_f_op_f32(-arg_1.c.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(398f - arg_1.c.a) + _wgslsmith_f_op_f32(f32(-1f) * -926f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, 1033f, 1000f, 457f)) * vec4<f32>(arg_0.a, global0.a, arg_0.a, global0.a)) * vec4<f32>(arg_0.a, -426f, _wgslsmith_f_op_f32(abs(604f)), arg_0.a))), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, var_0.x, ~(~37545i), 1i), vec4<i32>(~firstLeadingBit(-1i), ~(-7323i), ~_wgslsmith_add_i32(20668i, var_0.x), ~var_0.x), -vec4<i32>(var_0.x, -46273i, var_0.x, -62122i) ^ firstLeadingBit(vec4<i32>(var_0.x, -7705i, var_0.x, var_0.x))), 49228i, 1071f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(864f))), -634f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1465f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a * 976f))))), vec4<f32>(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, global0.a) + 2170f)), global0.a, _wgslsmith_f_op_f32(floor(1000f))), any(vec2<bool>(any(select(vec4<bool>(global1.a, global0.b, global0.b, false), vec4<bool>(false, global0.b, global0.b, global0.b), false)), true & select(true, global0.b, global1.a)))));
    global2 = array<vec2<bool>, 17>();
    let x = u_input.a;
    s_output = func_7(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(min(247f, -1082f))), _wgslsmith_f_op_f32(func_1())), true), Struct_4(false, !(!vec3<bool>(global1.a, false, global0.b)), Struct_1(global0.a, true), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global0.a) - var_0.zw)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global0.a) + vec2<f32>(658f, -1000f))))), Struct_4(global1.a, select(!vec3<bool>(global0.b, false, global1.a), vec3<bool>(all(global2[_wgslsmith_index_u32(1u, 17u)]), false, global1.a), true), Struct_1(_wgslsmith_f_op_f32(step(1f, -674f)), true), vec2<f32>(global0.a, _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_div_f32(global0.a, global0.a), global0.b)))));
}

