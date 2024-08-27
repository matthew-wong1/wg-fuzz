struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<f32> = vec4<f32>(-305f, 403f, -1000f, -2380f);

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

var<private> global3: vec4<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_clamp_i32(global3.x, -1i, 2515i);
    var var_1 = ~vec4<i32>(-(-2147483647i << (~u_input.a % 32u)), -(arg_0.x ^ ~arg_0.x), _wgslsmith_dot_vec2_i32(global3.zz, _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, global3.x) >> (vec2<u32>(0u, 6027u) % vec2<u32>(32u)), -global3.zw, vec2<i32>(arg_0.x, -1i))), -29609i);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-global1.wwy), var_0, max(var_1.xzy, vec3<i32>(~_wgslsmith_mod_i32(-55535i, 2147483647i), arg_0.x, arg_0.x)));
    global1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -965f), _wgslsmith_f_op_f32(1774f + _wgslsmith_f_op_f32(f32(-1f) * -503f)), _wgslsmith_f_op_f32(global1.x + 690f)))));
    return _wgslsmith_f_op_f32(select(2472f, 138f, true));
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = arg_0;
    global2 = vec3<bool>(any(global2.xx), global2.x, false);
    let var_1 = _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, global3.x), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0.b, arg_0.c.x), vec3<i32>(30213i, global3.x, global3.x)), -2147483647i >> (u_input.a % 32u))))));
    global0 = false;
    let var_2 = var_0;
    return ((vec4<i32>(_wgslsmith_clamp_i32(global3.x, 30425i, -7916i), max(-11305i, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, arg_0.b), var_2.c), _wgslsmith_mult_i32(global3.x, var_2.b)) | (~vec4<i32>(arg_0.c.x, arg_0.b, -2147483647i, 0i) & -vec4<i32>(global3.x, arg_0.c.x, 495i, global3.x))) & reverseBits(select(vec4<i32>(arg_0.b, global3.x, var_0.b, global3.x), -vec4<i32>(-1659i, global3.x, -1i, global3.x), true))) | vec4<i32>(_wgslsmith_div_i32(~(~var_0.c.x), global3.x), select(global3.x << (~u_input.a % 32u), ~_wgslsmith_div_i32(0i, 9228i), true), ~countOneBits(~58609i), var_0.b);
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global1.yyz))));
    var var_1 = Struct_1(global1.zww, -global3.x << (19635u % 32u), global3.xxz);
    let var_2 = arg_0;
    var var_3 = _wgslsmith_mod_i32(abs(arg_1), i32(-1i) * -(~(~arg_1)));
    global3 = reverseBits(~min(max(func_2(Struct_1(var_1.a, -25665i, global3.ywz)), ~vec4<i32>(-1i, global3.x, arg_1, 0i)), vec4<i32>(_wgslsmith_sub_i32(global3.x, global3.x), var_1.c.x, _wgslsmith_sub_i32(arg_1, var_1.c.x), _wgslsmith_mult_i32(42252i, var_1.b))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x)), 1f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_1(~(~min(vec2<u32>(60659u, 31435u), vec2<u32>(90765u, 28334u))), ~(-8650i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1558f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x)))), global1.x);
    let var_1 = select(vec3<bool>(global2.x, true, true & global2.x), vec3<bool>(true, true, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 2354u), select(vec2<u32>(1u, 39540u), vec2<u32>(u_input.a, u_input.a), global2.yz)) == firstLeadingBit(abs(1u))), vec3<bool>(false, false, true));
    global0 = all(select(vec4<bool>(global2.x, _wgslsmith_add_i32(5985i, global3.x) > firstLeadingBit(-16972i), global2.x, var_1.x), !vec4<bool>(true, true, true, !var_1.x), false));
    global3 = _wgslsmith_mod_vec4_i32(vec4<i32>(countOneBits(-2147483647i), _wgslsmith_mod_i32(countOneBits(~(-2147483647i)), 55600i), 2147483647i, -countOneBits(global3.x)), ~(~vec4<i32>(-54272i, 1i, 2147483647i, global3.x)) ^ max(~vec4<i32>(global3.x, global3.x, global3.x, -2147483647i) ^ ~vec4<i32>(global3.x, global3.x, global3.x, 1i), select(vec4<i32>(global3.x, global3.x, global3.x, 2147483647i) ^ vec4<i32>(global3.x, -17072i, 1i, 12074i), _wgslsmith_div_vec4_i32(vec4<i32>(global3.x, global3.x, -52461i, global3.x), vec4<i32>(global3.x, global3.x, 44315i, global3.x)), !vec4<bool>(global2.x, var_1.x, false, var_1.x))));
    let var_2 = var_0.yy;
    var var_3 = Struct_1(global1.zxy, -54747i, vec3<i32>(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, var_2.x, 1622f)), global3.x, vec3<i32>(-17942i, global3.x, global3.x))).x, _wgslsmith_div_i32(1i, abs(61840i)), -_wgslsmith_mult_i32(~18492i, abs(1i))));
    var var_4 = select(!(!var_1.zz), vec2<bool>(var_1.x, false), vec2<bool>(global2.x, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(global3.x);
}

