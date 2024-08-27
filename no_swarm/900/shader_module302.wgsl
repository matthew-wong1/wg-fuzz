struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(true), 1u), Struct_2(Struct_1(true), 4294967295u), Struct_2(Struct_1(true), 1u), Struct_2(Struct_1(true), 0u), Struct_2(Struct_1(true), 20702u), Struct_2(Struct_1(false), 89942u), Struct_2(Struct_1(true), 87147u), Struct_2(Struct_1(false), 0u), Struct_2(Struct_1(false), 68622u), Struct_2(Struct_1(false), 4294967295u), Struct_2(Struct_1(true), 5472u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    let var_0 = Struct_3(Struct_1(false), Struct_1(global0.a), arg_0);
    let var_1 = vec3<u32>(67208u, ~4294967295u, ~abs(abs(4294967295u)));
    let var_2 = -722f;
    let var_3 = false;
    var var_4 = var_0.b;
    return _wgslsmith_clamp_i32(min(-1i >> ((~4294967295u & (29399u << (var_1.x % 32u))) % 32u), 50954i), _wgslsmith_div_i32(50132i, ~2147483647i), u_input.a);
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_2, 11>();
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(~func_3(vec3<f32>(1000f, -1000f, 1600f)), i32(-1i) * -u_input.a, _wgslsmith_mult_i32(u_input.a, reverseBits(-35267i))), -_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(u_input.a, u_input.a, u_input.a)), ~vec3<i32>(u_input.a, 39622i, 1202i))) << (vec3<u32>(6646u, 13398u, _wgslsmith_dot_vec3_u32(vec3<u32>(40583u, 57599u, ~4294967295u), abs(countOneBits(vec3<u32>(20796u, 0u, 4294967295u))))) % vec3<u32>(32u));
    global1 = array<Struct_2, 11>();
    global1 = array<Struct_2, 11>();
    var var_1 = Struct_3(Struct_1(any(select(vec2<bool>(false, global0.a), select(vec2<bool>(global0.a, false), vec2<bool>(global0.a, true), true), global0.a || false))), Struct_1(true), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-768f, 1130f, -1941f))))));
    return var_1.a;
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    global1 = array<Struct_2, 11>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(289f - -1000f) - _wgslsmith_f_op_f32(trunc(-173f))))))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-380f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0)))))), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1208f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0)))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
    let var_2 = Struct_3(func_2(), arg_0, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -551f), 918f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(206f - 171f) - 1000f))));
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_3 {
    return arg_0;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: f32) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = any(select(select(vec4<bool>(!global0.a, any(vec3<bool>(var_0.b.a, true, true)), func_2().a, false), select(select(vec4<bool>(false, false, var_0.b.a, global0.a), vec4<bool>(var_0.a.a, false, var_0.a.a, var_0.b.a), vec4<bool>(false, false, false, var_0.b.a)), !vec4<bool>(arg_1.a.a, false, arg_1.b.a, true), vec4<bool>(false, var_0.b.a, global0.a, true)), !(!arg_1.b.a)), !vec4<bool>(arg_1.b.a, true, true, all(vec3<bool>(var_0.b.a, false, global0.a))), select(select(select(vec4<bool>(false, arg_1.b.a, var_0.a.a, true), vec4<bool>(arg_1.b.a, arg_1.a.a, global0.a, arg_1.a.a), true), vec4<bool>(global0.a, false, true, false), !vec4<bool>(arg_1.b.a, global0.a, arg_1.a.a, true)), !select(vec4<bool>(true, false, var_0.b.a, true), vec4<bool>(false, var_0.b.a, true, false), vec4<bool>(arg_1.b.a, global0.a, arg_1.b.a, true)), func_1(Struct_1(var_0.a.a)).b.a)));
    var var_2 = Struct_2(Struct_1(false), firstTrailingBit(reverseBits(~arg_0.x) ^ max(4294967295u, 4294967295u)));
    let var_3 = func_1(Struct_1(false)).a.a;
    var_1 = all(select(vec4<bool>(var_0.b.a, arg_1.b.a, var_2.a.a, func_4(Struct_3(Struct_1(var_2.a.a), Struct_1(false), vec3<f32>(1513f, arg_1.c.x, 120f)), _wgslsmith_add_vec3_u32(arg_0.zzz, vec3<u32>(arg_0.x, 0u, arg_0.x))).b.a), vec4<bool>(true, _wgslsmith_f_op_f32(-var_0.c.x) == 494f, !any(vec2<bool>(true, true)), var_0.b.a), select(!(!vec4<bool>(false, var_0.b.a, true, var_2.a.a)), select(!vec4<bool>(false, false, arg_1.b.a, var_0.a.a), select(vec4<bool>(true, arg_1.b.a, var_2.a.a, false), vec4<bool>(false, var_3, arg_1.a.a, false), vec4<bool>(false, false, true, global0.a)), vec4<bool>(false, false, true, false)), true)));
    return var_2.a;
}

fn func_6(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = Struct_1(true);
    var var_1 = vec2<bool>(!(true != arg_3.a), (!(global0.a != false) != true) && arg_3.a);
    global0 = Struct_1(global0.a);
    var_0 = arg_2;
    var var_2 = func_1(Struct_1(true));
    return StorageBuffer(_wgslsmith_div_f32(var_2.c.x, 1746f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 11>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1475f, -908f), vec2<f32>(-728f, 1925f))), vec2<f32>(326f, -299f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1894f, 368f) - vec2<f32>(-1149f, 232f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(761f, 542f))))));
    let x = u_input.a;
    s_output = func_6(u_input.a, ~vec2<u32>(1u, 1u), func_5(vec4<u32>(1u, 1u, 1u, 1u), func_4(func_1(Struct_1(false)), ~vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), func_2());
}

