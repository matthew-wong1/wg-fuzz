struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = Struct_1(select(vec3<bool>(arg_0 > arg_0, true, _wgslsmith_mult_i32(u_input.a, 24226i) < _wgslsmith_sub_i32(u_input.a, u_input.a)), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), 2157i <= abs(u_input.a)), vec3<bool>(select(all(vec2<bool>(true, true)), true, true), all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)))));
    let var_1 = Struct_1(vec3<bool>(true, false, var_0.a.x));
    global0 = array<vec3<u32>, 13>();
    global0 = array<vec3<u32>, 13>();
    let var_2 = _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(1u & firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 8383u, 1u, u_input.b), u_input.c)), u_input.d.x, u_input.d.x ^ (_wgslsmith_sub_u32(u_input.b, u_input.d.x) ^ 35708u), ~_wgslsmith_dot_vec3_u32(u_input.c.xzx, vec3<u32>(u_input.c.x, u_input.d.x, 4294967295u))));
    return _wgslsmith_dot_vec4_i32(~(-(~select(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), vec4<i32>(u_input.a, -54260i, 0i, u_input.a), vec4<bool>(false, true, var_0.a.x, var_1.a.x)))), ~vec4<i32>(42928i, u_input.a, -44944i, abs(abs(u_input.a))));
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = ~(-max(firstLeadingBit(u_input.a), _wgslsmith_clamp_i32(-28928i, u_input.a, func_3(-1000f))));
    var var_1 = false;
    let var_2 = ~global0[_wgslsmith_index_u32(113249u, 13u)];
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-516f - 307f) - _wgslsmith_f_op_f32(max(265f, 1347f))), 1000f, 429f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2189f, -1026f, 1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(391f, 444f, 1047f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-174f, 253f, -1189f), vec3<f32>(539f, 774f, -930f))))), vec3<bool>(true, true, true))));
    var var_4 = firstLeadingBit(vec4<i32>(abs(u_input.a) << (var_2.x % 32u), var_0, var_0, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.a, var_0, u_input.a, 34800i)), vec4<i32>(u_input.a, var_0, var_0, u_input.a))) ^ vec4<i32>(_wgslsmith_add_i32(var_0, reverseBits(-16079i)), _wgslsmith_div_i32(35254i, 392i), 1i, 12566i & func_3(478f)));
    return Struct_3(Struct_1(vec3<bool>(countOneBits(var_0) == -u_input.a, true, true)), 1510f);
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> vec4<i32> {
    var var_0 = -(~(-abs(vec3<i32>(arg_1, u_input.a, -59541i))));
    let var_1 = arg_1 & -(~var_0.x);
    var_0 = select(vec3<i32>(~_wgslsmith_sub_i32(-4637i, 1i), abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_1, 28691i), vec3<i32>(-3139i, arg_1, var_0.x)), _wgslsmith_mod_i32(-44474i, 9243i))), _wgslsmith_clamp_i32(firstTrailingBit(var_0.x), var_1, _wgslsmith_mod_i32(arg_1, 1i)) | 2147483647i), (~(vec3<i32>(-2147483647i, var_0.x, 0i) >> (vec3<u32>(4294967295u, 4294967295u, 82494u) % vec3<u32>(32u))) << (u_input.c.wxy % vec3<u32>(32u))) >> (~u_input.c.zzx % vec3<u32>(32u)), arg_0.a.a.x);
    let var_2 = func_2(_wgslsmith_mod_u32(u_input.c.x, 36022u)).a;
    global0 = array<vec3<u32>, 13>();
    return vec4<i32>(-(~firstTrailingBit(-arg_1)), 1i, max(_wgslsmith_add_i32(_wgslsmith_mult_i32(var_0.x, 21306i), -2147483647i | _wgslsmith_add_i32(-2147483647i, var_1)), _wgslsmith_dot_vec3_i32(countOneBits(-vec3<i32>(36820i, -19665i, -2147483647i)), firstLeadingBit(max(vec3<i32>(u_input.a, 10802i, u_input.a), vec3<i32>(0i, 2855i, var_1))))), u_input.a);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<bool>) -> u32 {
    let var_0 = arg_1;
    global0 = array<vec3<u32>, 13>();
    global0 = array<vec3<u32>, 13>();
    global0 = array<vec3<u32>, 13>();
    global0 = array<vec3<u32>, 13>();
    return abs(u_input.c.x);
}

fn func_1() -> Struct_3 {
    let var_0 = func_5(func_4(func_2(reverseBits(0u)), 0i), Struct_2(Struct_1(vec3<bool>(true, true, true))), select(!vec4<bool>(true, select(false, true, true), false, true), vec4<bool>(true, true, any(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, true))), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), true))));
    global0 = array<vec3<u32>, 13>();
    let var_1 = 1u;
    global0 = array<vec3<u32>, 13>();
    let var_2 = Struct_1(vec3<bool>(!any(vec4<bool>(false, false, true, false)), false, true));
    return func_2(0u & (u_input.c.x >> (countOneBits(firstLeadingBit(var_0)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec2<bool>(var_0.a.a.x, !(!any(vec3<bool>(false, var_0.a.a.x, var_0.a.a.x))));
    global0 = array<vec3<u32>, 13>();
    var var_2 = func_2(1034u).a;
    let var_3 = Struct_2(Struct_1(var_0.a.a));
    var_2 = func_2(~max(_wgslsmith_div_u32(4294967295u, u_input.c.x), ~(~u_input.c.x))).a;
    var var_4 = vec4<f32>(-1205f, -168f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b))), var_0.b);
    var var_5 = any(var_2.a.zy) | any(select(!(!var_3.a.a.xy), func_1().a.a.xx, !select(var_2.a.yz, var_1, vec2<bool>(true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~func_4(Struct_3(Struct_1(vec3<bool>(true, true, var_0.a.a.x)), -754f), u_input.a).xyy ^ -(~vec3<i32>(u_input.a, -2147483647i, u_input.a)), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(-13584i, u_input.a), u_input.a), _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a, u_input.a), -1172i), _wgslsmith_div_i32(0i, u_input.a) << (56831u % 32u))), var_4.xx, firstTrailingBit(-2147483647i), reverseBits(abs(u_input.c.zy)));
}

