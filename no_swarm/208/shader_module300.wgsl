struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<f32> = vec3<f32>(255f, -392f, 269f);

var<private> global2: array<Struct_4, 3>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_5) -> f32 {
    global2 = array<Struct_4, 3>();
    var var_0 = all(!arg_0.yy);
    let var_1 = true;
    var var_2 = ~1i;
    var var_3 = u_input.e.xyx;
    return global1.x;
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_3) -> f32 {
    var var_0 = arg_1 >> (~(~arg_1) % vec2<u32>(32u));
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(812f)), _wgslsmith_div_f32(arg_0, global0.b), 1577f) - vec3<f32>(-1479f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1066f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.b, global1.x, global0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1386f, 1000f, -429f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-975f, arg_0, -1045f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(247f, arg_2.a.b, global0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-668f, -355f, -164f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(810f, arg_0, -548f))))))), select(select(select(!vec3<bool>(false, global0.a, global0.a), select(vec3<bool>(true, global0.a, true), vec3<bool>(true, true, true), global0.a), vec3<bool>(true, global0.a, false)), !(!vec3<bool>(false, false, global0.a)), select(select(vec3<bool>(false, true, global0.a), vec3<bool>(false, global0.a, true), global0.a), vec3<bool>(global0.a, true, global0.a), select(vec3<bool>(global0.a, true, global0.a), vec3<bool>(true, global0.a, false), vec3<bool>(false, global0.a, false)))), !vec3<bool>(select(global0.a, global0.a, true), u_input.d != -31482i, global0.a && false), vec3<bool>(true, false, !all(vec3<bool>(true, global0.a, true))))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1116f - _wgslsmith_f_op_f32(global1.x + 717f)), _wgslsmith_f_op_f32(floor(323f))));
    let var_2 = vec2<i32>(u_input.d, min(2147483647i, -20950i));
    var var_3 = 40715u;
    return -1000f;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_2(u_input.e.xxx, arg_2.x);
    var var_1 = 57253u;
    var var_2 = Struct_1(global0.a, _wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(arg_1, Struct_5(Struct_3(var_0), Struct_3(var_0), vec2<bool>(true, true), arg_2.xwx))), 437f)))));
    let var_3 = Struct_5(Struct_3(var_0), Struct_3(Struct_2(max(~vec3<u32>(46489u, var_0.a.x, u_input.a), var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1576f, -439f))))), !select(!arg_1.xz, !(!arg_1.xz), _wgslsmith_div_u32(var_0.a.x, arg_0.x) < abs(4883u)), arg_2.yyw);
    global0 = Struct_1(var_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-883f + 1534f)), -752f)), global0.b));
    return Struct_1(-21913i < (-(~u_input.d) & u_input.d), -121f);
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    let var_0 = Struct_1(global0.a & global0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-923f))))))));
    var var_1 = countOneBits(vec3<i32>(u_input.d, _wgslsmith_mult_i32(~u_input.d >> (abs(u_input.b.x) % 32u), -u_input.d), _wgslsmith_mult_i32(u_input.d, -1i)));
    let var_2 = 0u;
    var var_3 = func_4(reverseBits(u_input.b.zx), vec3<bool>(true, false, all(vec3<bool>(global0.a, var_0.a, true)) && true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2347f, _wgslsmith_f_op_f32(global1.x + 469f), _wgslsmith_f_op_f32(-1668f - -530f), -833f), vec4<f32>(global0.b, _wgslsmith_f_op_f32(func_2(vec3<bool>(arg_0.x, false, var_0.a), Struct_5(Struct_3(Struct_2(u_input.b, 1040f)), Struct_3(Struct_2(vec3<u32>(var_2, u_input.a, 4294967295u), 1407f)), arg_0, vec3<f32>(global1.x, -2140f, -753f)))), _wgslsmith_f_op_f32(func_3(-1000f, vec2<u32>(22839u, u_input.a), Struct_3(Struct_2(u_input.e.xzx, 1000f)))), -313f)))));
    var_3 = func_4(u_input.b.xy, !select(select(vec3<bool>(global0.a, global0.a, arg_0.x), select(vec3<bool>(true, arg_0.x, true), vec3<bool>(true, global0.a, true), false), select(global0.a, var_3.a, true)), !vec3<bool>(true, var_0.a, true), select(select(vec3<bool>(true, var_3.a, true), vec3<bool>(global0.a, true, false), vec3<bool>(arg_0.x, true, true)), vec3<bool>(true, false, arg_0.x), vec3<bool>(var_3.a, var_3.a, false))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.b, _wgslsmith_f_op_f32(func_3(-1039f, vec2<u32>(68298u, var_2), Struct_3(Struct_2(u_input.b, -1000f)))), -1000f)))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(~_wgslsmith_div_u32(~(~33175u), ~func_1(vec2<bool>(true, false))), func_1(vec2<bool>(global0.a, true)));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.x, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -457f, -359f) - vec3<f32>(319f, -833f, 247f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, -183f, -1229f) - vec3<f32>(global1.x, global0.b, global1.x)))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-889f, _wgslsmith_f_op_f32(global1.x + global0.b), _wgslsmith_f_op_f32(step(-1000f, global1.x)))))));
    global2 = array<Struct_4, 3>();
    var var_1 = 1131f;
    let var_2 = !vec3<bool>(global0.a, global0.a, !(_wgslsmith_mod_u32(u_input.c, u_input.e.x) <= ~12099u));
    let var_3 = Struct_3(Struct_2(~vec3<u32>(34257u, func_1(vec2<bool>(global0.a, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, var_0), vec2<u32>(u_input.a, u_input.e.x))), _wgslsmith_f_op_f32(-global0.b)));
    global2 = array<Struct_4, 3>();
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(1352f * var_3.a.b), var_3.a.b, _wgslsmith_f_op_f32(floor(global1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.b, 1099f, 100f), vec3<f32>(-112f, 692f, 722f))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -716f, global0.b), vec3<f32>(var_3.a.b, global1.x, var_3.a.b), var_2)))), vec3<f32>(_wgslsmith_f_op_f32(abs(1404f)), 2148f, _wgslsmith_f_op_f32(-global1.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.x), -1000f, 240f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1435f, 868f, var_3.a.b), vec3<f32>(-603f, -2282f, var_3.a.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1427f, -354f, -2150f) + vec3<f32>(1508f, -828f, -344f)))) * vec3<f32>(609f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -abs(vec2<i32>(-4893i, u_input.d) << (u_input.e.xz % vec2<u32>(32u))), var_3.a.b, min(abs(vec2<i32>(_wgslsmith_sub_i32(2147483647i, u_input.d), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.d), vec2<i32>(2147483647i, -2147483647i)))), countOneBits(_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, 37760i)))));
}

