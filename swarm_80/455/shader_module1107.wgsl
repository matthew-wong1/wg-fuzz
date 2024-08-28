struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20>;

var<private> global1: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(~(21219i >> (1u % 32u)), u_input.a), u_input.a), -_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.xyy, vec3<u32>(16861u, 22070u, u_input.d.x)), 20u)], global0[_wgslsmith_index_u32(1u, 20u)]) & (i32(-1i) * -(~u_input.a)), -15239i);
    var var_1 = Struct_3(Struct_2(-1260f, vec3<i32>(-20585i, _wgslsmith_dot_vec4_i32(vec4<i32>(-18901i, -2147483647i, 12132i, u_input.a) | vec4<i32>(u_input.a, var_0.x, u_input.a, var_0.x), -vec4<i32>(15527i, 2031i, -2147483647i, 6288i)), var_0.x >> (16277u % 32u))), Struct_1(vec3<f32>(2352f, _wgslsmith_f_op_f32(min(-762f, _wgslsmith_f_op_f32(-247f + 1000f))), -684f)), 941f, Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -764f, -2322f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-290f, 982f, -2321f)))))), _wgslsmith_f_op_f32(-277f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -710f))));
    let var_2 = select(var_0.xy, var_0.xy, global1.x);
    var var_3 = !vec3<bool>(-u_input.a != 25889i, true, all(!global1.xx));
    let var_4 = var_1.d;
    return global1.x;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: bool) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(arg_0.a, arg_0.a)), -407f, arg_1))));
    var var_1 = Struct_3(arg_0, var_0, -147f, var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(713f, arg_1)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0.a.x)), var_0.a.x)))));
    let var_2 = u_input.b;
    let var_3 = !(!(!(!vec4<bool>(global1.x, arg_2, arg_2, global1.x))));
    global1 = var_3.wyy;
    return func_3();
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-441f, 1000f, -1660f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-873f, 719f, -1825f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-628f, 1716f, -1266f), vec3<f32>(383f, -1000f, -703f))), all(vec3<bool>(false, false, false)))), vec3<f32>(439f, _wgslsmith_f_op_f32(f32(-1f) * -2749f), _wgslsmith_f_op_f32(select(-1454f, -633f, false)))))));
    return select(!vec4<bool>(func_2(Struct_2(-1000f, vec3<i32>(2893i, -16712i, u_input.a)), _wgslsmith_f_op_f32(trunc(var_0.a.x)), any(vec4<bool>(false, true, false, false)), arg_1.x), !select(arg_1.x, true, arg_1.x), func_3() | global1.x, true), vec4<bool>(all(vec4<bool>(global1.x, false, false, true)), global1.x, true, !((false && global1.x) & false)), !(!(!vec4<bool>(true, arg_1.x, false, global1.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: vec3<bool>) -> Struct_1 {
    global0 = array<vec3<i32>, 20>();
    var var_0 = ~(-_wgslsmith_div_vec2_i32(-(arg_2.yx >> (u_input.d.xx % vec2<u32>(32u))), (arg_2.zx & vec2<i32>(arg_2.x, u_input.a)) ^ ~vec2<i32>(43231i, -1i)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-609f)) + _wgslsmith_f_op_f32(max(181f, 1009f))))), _wgslsmith_f_op_f32(select(462f, _wgslsmith_f_op_f32(ceil(arg_0.a.x)), reverseBits(_wgslsmith_div_i32(u_input.a, -1i)) >= arg_2.x)));
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.e.x, u_input.b.x >> (~16422u % 32u), u_input.b.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(reverseBits(min(u_input.b.wyy, vec3<u32>(u_input.e.x, 29900u, u_input.b.x))), vec3<u32>(17009u, 0u, _wgslsmith_div_u32(37318u, 4294967295u))), u_input.e.x, _wgslsmith_dot_vec2_u32(~max(u_input.d.zy, vec2<u32>(4294967295u, 0u)), ~(~vec2<u32>(u_input.e.x, u_input.e.x)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(-312f)), -751f, -366f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -642f), _wgslsmith_f_op_f32(957f + 356f), _wgslsmith_f_op_f32(ceil(286f))), any(vec3<bool>(global1.x, global1.x, true)) || select(global1.x, false, global1.x)))), !(!func_1(~u_input.b.x, select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, false), global1.x))), vec3<i32>(-1i) * -vec3<i32>(u_input.a ^ u_input.a, ~u_input.a, _wgslsmith_sub_i32(20318i, u_input.a)), select(vec3<bool>(func_2(Struct_2(-260f, vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_f32(sign(-549f)), true, all(vec2<bool>(false, true))), !global1.x, all(vec3<bool>(global1.x, false, false)) & !global1.x), !(!vec3<bool>(global1.x, false, false)), !global1.x));
    let var_1 = 26293u;
    let var_2 = global1.x;
    var var_3 = Struct_3(Struct_2(var_0.a.x, vec3<i32>(-23821i, reverseBits(1i), 2147483647i >> (1u % 32u)) | vec3<i32>(abs(u_input.a), -2147483647i, -6505i | u_input.a)), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(var_0.a, vec3<f32>(var_0.a.x, -254f, var_0.a.x))), vec3<f32>(var_0.a.x, -138f, -135f), true))))), _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), var_0, -321f);
    global0 = array<vec3<i32>, 20>();
    var var_4 = Struct_3(Struct_2(-1179f, vec3<i32>(-2147483647i, select(-49081i, -5851i, false) & -var_3.a.b.x, u_input.a)), var_0, 547f, var_0, var_3.b.a.x);
    var var_5 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.d.a.x), -1786f, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zz, ~(-1i >> (u_input.c % 32u)) ^ -u_input.a, _wgslsmith_f_op_f32(select(629f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-567f, -1000f), -290f)), _wgslsmith_f_op_f32(ceil(-1127f))), !func_3())), var_4.d.a.xx, _wgslsmith_f_op_vec4_f32(vec4<f32>(1062f, var_0.a.x, 1f, _wgslsmith_div_f32(var_4.d.a.x, 1000f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -734f), var_0.a.x, _wgslsmith_f_op_f32(max(var_3.c, 370f)), 1000f)))));
}

