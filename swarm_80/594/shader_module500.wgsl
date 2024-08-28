struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(-1304f), Struct_2(-598f), Struct_2(-449f), Struct_2(527f), Struct_2(-853f), Struct_2(560f), Struct_2(830f), Struct_2(-126f), Struct_2(-494f), Struct_2(-532f), Struct_2(-920f), Struct_2(-2320f), Struct_2(1834f));

var<private> global1: array<bool, 13>;

var<private> global2: array<Struct_2, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    let var_0 = true;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(abs(450f)))))));
    let var_2 = 53999u;
    var var_3 = var_2;
    return _wgslsmith_f_op_f32(floor(-661f));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_3(true, true, Struct_1(!select(arg_2.d.a, !arg_2.e.a, select(arg_2.d.a, vec4<bool>(false, global1[_wgslsmith_index_u32(20055u, 13u)], false, arg_2.b), global1[_wgslsmith_index_u32(31018u, 13u)])), 5676i), arg_2.d, Struct_1(arg_2.e.a, 1i));
    global1 = array<bool, 13>();
    var var_1 = var_0;
    global0 = array<Struct_2, 13>();
    var var_2 = -(~u_input.b);
    return arg_0.x;
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(vec3<f32>(963f, var_0.x, _wgslsmith_f_op_f32(func_2(Struct_2(var_0.x), Struct_3(false, global1[_wgslsmith_index_u32(1u, 13u)], Struct_1(vec4<bool>(true, false, false, true), u_input.c), Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_1, 13u)], true, false), -896i), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 13u)], true, false, false), 24308i))))), vec2<u32>(1u << (0u % 32u), 1u), Struct_3(global1[_wgslsmith_index_u32(abs(59245u), 13u)], true, Struct_1(vec4<bool>(false, true, true, false), u_input.b.x), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 13u)], global1[_wgslsmith_index_u32(arg_1, 13u)], true, global1[_wgslsmith_index_u32(17697u, 13u)]), u_input.b.x), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], false, global1[_wgslsmith_index_u32(arg_1, 13u)]), 41562i)))), arg_0)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(var_0.x + 1630f), var_0.x);
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(315f, arg_0), -1190f, var_0.x > arg_0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, 349f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 913f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-739f, arg_0) + vec2<f32>(var_0.x, var_0.x)), true)))), vec2<f32>(_wgslsmith_f_op_f32(select(var_0.x, 159f, false)), -1000f));
    var_0 = var_2;
    return Struct_3(false, !((u_input.d > -2147483647i) && global1[_wgslsmith_index_u32(~0u, 13u)]), Struct_1(select(vec4<bool>(!global1[_wgslsmith_index_u32(arg_1, 13u)], false | global1[_wgslsmith_index_u32(10202u, 13u)], global1[_wgslsmith_index_u32(24859u, 13u)], all(vec3<bool>(true, true, false))), !(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(arg_1, 13u)], true)), !select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 13u)], global1[_wgslsmith_index_u32(arg_1, 13u)], true, global1[_wgslsmith_index_u32(arg_1, 13u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_1, 13u)], global1[_wgslsmith_index_u32(arg_1, 13u)], true), vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 13u)], true, global1[_wgslsmith_index_u32(arg_1, 13u)], false))), u_input.c & -1i), Struct_1(select(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(arg_1, 13u)], global1[_wgslsmith_index_u32(82344u, 13u)]), select(select(vec4<bool>(global1[_wgslsmith_index_u32(26118u, 13u)], true, global1[_wgslsmith_index_u32(15974u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 13u)], false, global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(arg_1, 13u)]), global1[_wgslsmith_index_u32(arg_1, 13u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(arg_1, 13u)], global1[_wgslsmith_index_u32(24150u, 13u)], global1[_wgslsmith_index_u32(arg_1, 13u)])), global1[_wgslsmith_index_u32(23002u, 13u)]), u_input.d << (reverseBits(_wgslsmith_add_u32(arg_1, arg_1)) % 32u)), Struct_1(select(vec4<bool>(all(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_1, 13u)])), true, true, all(vec2<bool>(global1[_wgslsmith_index_u32(arg_1, 13u)], true))), vec4<bool>(global1[_wgslsmith_index_u32(70076u, 13u)] & global1[_wgslsmith_index_u32(1u, 13u)], all(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(arg_1, 13u)])), true, global1[_wgslsmith_index_u32(arg_1, 13u)]), vec4<bool>(!global1[_wgslsmith_index_u32(arg_1, 13u)], select(true, global1[_wgslsmith_index_u32(32686u, 13u)], global1[_wgslsmith_index_u32(55394u, 13u)]), false, true)), u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -507f))), -1000f)), ~0u);
    var var_1 = func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -304f))), abs(select(~(17667u >> (1u % 32u)), _wgslsmith_div_u32(1u, ~1u), true & !global1[_wgslsmith_index_u32(3600u, 13u)]))).e.a.x;
    let var_2 = global0[_wgslsmith_index_u32(1u | ~_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 31706u), _wgslsmith_dot_vec3_u32(~vec3<u32>(7361u, 4294967295u, 4942u), vec3<u32>(4294967295u, 39757u, 1u))), 13u)];
    var_1 = !(!(!(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(20961u, 1u, 48361u), 13u)] & any(var_0.c.a))));
    var var_3 = max(max(_wgslsmith_clamp_i32(reverseBits(-u_input.b.x), firstLeadingBit(firstLeadingBit(-57941i)), -_wgslsmith_mult_i32(0i, var_0.c.b)), _wgslsmith_mod_i32(i32(-1i) * -3554i, var_0.d.b)), -(~(~u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-833f, var_2.a), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.a, -480f))), false))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1546f, var_2.a), vec2<f32>(-1632f, var_2.a), global1[_wgslsmith_index_u32(26362u, 13u)])), vec2<f32>(-788f, 657f), select(var_0.c.a.xw, vec2<bool>(global1[_wgslsmith_index_u32(1u, 13u)], false), var_0.c.a.wx)))))), u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(991f, var_2.a), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-273f, -1817f)))))));
}

