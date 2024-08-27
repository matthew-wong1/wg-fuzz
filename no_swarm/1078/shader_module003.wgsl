struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: bool,
    c: Struct_3,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_4) -> vec4<u32> {
    global1 = ~(1u << (~_wgslsmith_mult_u32(39025u << (0u % 32u), _wgslsmith_clamp_u32(arg_1.d.x, 4294967295u, 1u)) % 32u));
    global1 = ~(~(~arg_1.d.x | global0.d.b));
    var var_0 = true;
    let var_1 = global0.d;
    let var_2 = global0.e.b;
    return ~min(~_wgslsmith_mod_vec4_u32(select(vec4<u32>(40278u, 1u, 0u, var_1.b), vec4<u32>(1u, global0.e.b, 4294967295u, 16572u), vec4<bool>(false, global0.b, false, true)), vec4<u32>(0u, 52302u, var_1.b, 758u) & vec4<u32>(4294967295u, var_1.b, var_1.b, arg_1.d.x)), vec4<u32>(var_1.b | u_input.e.x, max(0u, arg_1.d.x), ~4294967295u, var_1.b) & vec4<u32>(countOneBits(global0.d.b), var_1.b, 21929u, _wgslsmith_mult_u32(var_1.b, global0.e.b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec4<u32> {
    var var_0 = Struct_5(!(!select(vec4<bool>(global0.b, false, global0.b, false), global0.a, global0.a)), all(vec4<bool>(u_input.e.x < 1u, true, global0.b, true)), global0.c, global0.e, global0.e);
    let var_1 = ~countOneBits(u_input.d.x | -9792i) | u_input.d.x;
    let var_2 = Struct_4(global0.a, global0.d.a, vec2<f32>(arg_0.a.x, 1f), ~_wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.e.x, 99636u, u_input.a)), vec3<u32>(global0.d.b, u_input.e.x, 1u)) >> (abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e.x, 1u, var_0.e.b), vec3<u32>(var_0.e.b, var_0.d.b, 1u)) & ~vec3<u32>(0u, 79842u, global0.d.b)) % vec3<u32>(32u)));
    global1 = ~_wgslsmith_div_u32(1u, 63844u) >> (var_0.e.b % 32u);
    var var_3 = var_0.d.a;
    return ~_wgslsmith_add_vec4_u32(~((vec4<u32>(var_2.d.x, 13584u, 4294967295u, var_0.e.b) ^ vec4<u32>(4294967295u, 54990u, 0u, u_input.e.x)) << ((vec4<u32>(u_input.e.x, global0.d.b, var_2.d.x, var_2.d.x) << (vec4<u32>(14982u, global0.e.b, 0u, 36047u) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_2.d.x, u_input.a, 1u, 1u)), vec4<u32>(1u, 1u, _wgslsmith_add_u32(global0.d.b, 36351u), 87647u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_5 {
    global0 = Struct_5(!global0.a, global0.a.x, Struct_3(arg_1.a), global0.e, global0.d);
    global0 = Struct_5(global0.a, global0.a.x, Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.d.a.a.x, arg_1.a.a.x), vec2<f32>(global0.e.a.a.x, global0.e.a.a.x))))))), global0.e, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.e.a.a + vec2<f32>(-1570f, 1378f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.a.x, -263f) + vec2<f32>(-730f, 840f)))), ~0u));
    let var_0 = global0.d;
    global0 = Struct_5(select(select(select(vec4<bool>(true, global0.a.x, global0.b, false), select(global0.a, vec4<bool>(false, false, true, true), false), true), !global0.a, global0.a), select(global0.a, global0.a, vec4<bool>(true, false, global0.a.x, true)), global0.a), true && global0.b, arg_1, global0.e, global0.d);
    let var_1 = select(vec4<bool>(global0.b, all(vec2<bool>(2147483647i != u_input.c, false)), !(global0.e.b != _wgslsmith_dot_vec3_u32(arg_0.xwx, arg_0.zwz)), global0.b), select(global0.a, global0.a, !(!select(global0.a, global0.a, global0.a.x))), all(select(global0.a.zyw, select(vec3<bool>(true, false, global0.a.x), vec3<bool>(true, true, true), !global0.a.xwy), all(!global0.a.zx))));
    return Struct_5(global0.a, global0.a.x, Struct_3(arg_1.a), Struct_2(var_0.a, 1u), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.a))), ~22171u));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = func_4(_wgslsmith_mult_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(128124u, 0u, 18407u, u_input.e.x), vec4<u32>(1u, u_input.e.x, u_input.a, 38162u))) >> (~func_2(vec3<bool>(true, true, true), Struct_4(global0.a, global0.c.a, vec2<f32>(global0.d.a.a.x, global0.c.a.a.x), vec3<u32>(global0.e.b, u_input.a, u_input.e.x))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~(vec4<u32>(102226u, 14114u, 0u, 4294967295u) ^ vec4<u32>(global0.e.b, global0.e.b, global0.e.b, u_input.a)), _wgslsmith_clamp_vec4_u32(func_3(Struct_1(global0.c.a.a), vec4<f32>(-1145f, 251f, global0.e.a.a.x, global0.d.a.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(global0.e.b, 4294967295u, u_input.a, global0.e.b), vec4<u32>(global0.d.b, global0.d.b, u_input.a, 4958u)), ~vec4<u32>(4294967295u, u_input.a, 4294967295u, 0u)))), global0.c);
    let var_0 = vec4<u32>(120314u, u_input.e.x, ~(~(~abs(global0.d.b))), _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(7939u, 49600u), max(abs(840u), (u_input.e.x ^ global0.d.b) >> (4294967295u % 32u)), ~2614u));
    global0 = func_4(~(~vec4<u32>(countOneBits(0u), 0u | var_0.x, 60936u, 6584u)), func_4(vec4<u32>(countOneBits(~94037u), _wgslsmith_add_u32(var_0.x & u_input.a, 28789u), ~global0.d.b, 31696u), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0.c.a.a.x))))).c);
    var var_1 = _wgslsmith_add_vec2_u32(~var_0.zz | ~u_input.e, ~u_input.e);
    return func_4(~(~var_0), global0.c).c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(_wgslsmith_div_i32(-39857i, 78614i)));
    global1 = 0u;
    var var_1 = u_input.d.yx;
    var var_2 = -u_input.b.yx;
    var_1 = select(u_input.b.yx, vec2<i32>(var_2.x, -_wgslsmith_div_i32(-1i, abs(u_input.b.x))), all(!select(global0.a.wxw, global0.a.yww, any(vec3<bool>(global0.a.x, false, global0.b)))));
    let var_3 = _wgslsmith_f_op_f32(ceil(-1000f));
    var_1 = ~(~vec2<i32>(var_2.x, -(~var_1.x)));
    var_1 = ~countOneBits(min(u_input.b.yz, -vec2<i32>(61824i, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(13498u, _wgslsmith_mod_u32(u_input.a, ~firstTrailingBit(13261u)), select(func_2(vec3<bool>(true, global0.a.x, true), Struct_4(vec4<bool>(global0.a.x, global0.b, false, global0.a.x), var_0.a, global0.d.a.a, vec3<u32>(4294967295u, 112353u, 4294967295u))).x, func_4(func_2(vec3<bool>(true, global0.a.x, true), Struct_4(vec4<bool>(global0.b, global0.b, true, false), Struct_1(vec2<f32>(240f, var_3)), vec2<f32>(var_3, -559f), vec3<u32>(4294967295u, global0.d.b, u_input.a))), func_4(vec4<u32>(24520u, 4294967295u, 3880u, u_input.e.x), Struct_3(var_0.a)).c).e.b, ~u_input.b.x != max(1i, 17470i)), u_input.e.x & 4294967295u), _wgslsmith_dot_vec2_u32(firstTrailingBit(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.d.b, global0.e.b), vec2<u32>(u_input.e.x, 38374u)))), vec2<u32>(u_input.e.x, _wgslsmith_clamp_u32(4294967295u, 8255u, ~u_input.e.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e.a.a.x, -487f, global0.c.a.a.x) + vec3<f32>(1370f, 837f, global0.e.a.a.x)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.a.a.x, var_3, -2441f) - vec3<f32>(var_0.a.a.x, var_3, 459f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, 792f, 586f) + vec3<f32>(var_3, global0.c.a.a.x, 418f)), false)) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1326f, global0.e.a.a.x, 130f), vec3<f32>(-595f, 714f, var_3)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, -1425f, 1000f) - vec3<f32>(268f, -1069f, -376f))))), 2828i, func_1(_wgslsmith_dot_vec2_i32(max(vec2<i32>(var_1.x, -26290i), u_input.b.zz), -u_input.b.yy)).a);
}

