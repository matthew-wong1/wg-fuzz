struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1;

var<private> global2: u32 = 6650u;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.d - _wgslsmith_f_op_f32(-385f * _wgslsmith_div_f32(arg_3.d, global0.x)))))));
    let var_1 = true;
    let var_2 = Struct_1(~arg_2.x, arg_0.b, u_input.b.x, global1.d, arg_0.e);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d, -213f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, var_0)))))));
    var var_3 = arg_3;
    return countOneBits(_wgslsmith_mod_u32(global1.c, ~global1.c >> (~u_input.b.x % 32u))) & ~u_input.b.x;
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(~arg_3, vec2<i32>(-global1.b.x, 4606i), arg_0 ^ 26366u, global1.d, _wgslsmith_mod_vec2_u32(u_input.b, (u_input.b ^ vec2<u32>(17876u, arg_3)) | ~vec2<u32>(47451u, 42541u)) << (vec2<u32>(~global1.a, arg_3) % vec2<u32>(32u)));
    var var_1 = Struct_1(var_0.a, var_0.b, 1u, -1000f, var_0.e);
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    global1 = func_3(u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1851f)) - global0.x) * 1761f), _wgslsmith_mod_i32(2147483647i, min(20401i, 43904i)), u_input.b.x);
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -929f);
    global2 = arg_0.e.x;
    var var_1 = arg_0.d;
    global2 = min(~7896u, func_2(func_3(firstTrailingBit(1u), 1000f, arg_0.b.x, ~func_3(global1.c, global1.d, -30277i, 4294967295u).e.x), -func_3(_wgslsmith_sub_u32(4294967295u, 1u), _wgslsmith_div_f32(arg_0.d, -450f), u_input.a, ~arg_0.e.x).b.x, vec3<u32>(0u, 17295u & global1.e.x, global1.e.x) & vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, arg_0.c), vec3<u32>(4294967295u, arg_1.e.x, global1.c)), _wgslsmith_div_u32(arg_1.a, arg_1.e.x), global1.c), Struct_1(u_input.b.x, vec2<i32>(1i, 1i), ~0u, _wgslsmith_f_op_f32(min(arg_0.d, arg_1.d)), select(u_input.b, vec2<u32>(arg_1.a, 1u) | vec2<u32>(arg_1.c, 1u), vec2<bool>(true, true)))));
    return arg_1;
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d, global1.d) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), -449f))));
    var var_0 = _wgslsmith_f_op_f32(542f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) - -692f) + arg_0));
    let var_1 = Struct_1(43724u, u_input.c.zy, u_input.b.x, _wgslsmith_f_op_f32(round(1f)), global1.e ^ select(~(vec2<u32>(global1.c, u_input.b.x) & u_input.b), vec2<u32>(global1.c, u_input.b.x) | abs(vec2<u32>(global1.e.x, global1.e.x)), (i32(-1i) * -73718i) < _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, -45969i, -8916i, u_input.a))));
    var_0 = global1.d;
    let var_2 = func_4(func_3(~15460u, global0.x, 1i, func_2(var_1, global1.b.x, reverseBits(vec3<u32>(44416u, 37399u, 0u)), var_1) ^ (reverseBits(74019u) | _wgslsmith_sub_u32(51241u, var_1.a))), Struct_1(firstLeadingBit(~(~0u)), ~_wgslsmith_mult_vec2_i32(func_3(23887u, global1.d, u_input.a, 27507u).b, vec2<i32>(2147483647i, -2147483647i)), _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(global1.a, var_1.e.x, u_input.b.x, global1.e.x), vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.c, var_1.c, var_1.c, 1625u), ~vec4<u32>(0u, global1.a, global1.e.x, global1.e.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), var_1.d, true)), vec2<u32>(~u_input.b.x, _wgslsmith_div_u32(min(23650u, var_1.e.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.e.x, 56159u, u_input.b.x, global1.a), vec4<u32>(0u, u_input.b.x, 4186u, 54512u))))), u_input.c.xxx);
    return Struct_1(abs(var_1.e.x), _wgslsmith_mult_vec2_i32(global1.b ^ vec2<i32>(func_4(Struct_1(u_input.b.x, vec2<i32>(0i, -21806i), 54215u, 1000f, var_1.e), Struct_1(4294967295u, var_1.b, global1.c, arg_0, var_1.e), vec3<i32>(var_2.b.x, var_2.b.x, 2147483647i)).b.x, 1i), -_wgslsmith_clamp_vec2_i32(global1.b ^ vec2<i32>(2147483647i, u_input.c.x), reverseBits(vec2<i32>(-2147483647i, var_2.b.x)), vec2<i32>(37208i, 59733i))), _wgslsmith_div_u32(var_1.e.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(76738u, 4294967295u, global1.a), vec3<u32>(u_input.b.x, var_2.e.x, 0u))), vec3<u32>(func_2(Struct_1(8589u, var_2.b, var_1.e.x, 1555f, u_input.b), global1.b.x, vec3<u32>(u_input.b.x, var_2.a, global1.a), var_2), 4294967295u ^ global1.e.x, u_input.b.x))), 656f, var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1451f, _wgslsmith_div_f32(1389f, _wgslsmith_f_op_f32(trunc(-170f))))));
    var var_1 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -1400f));
    let var_2 = func_3(~abs(abs(var_1.e.x)) << (var_1.c % 32u), _wgslsmith_f_op_f32(floor(-2160f)), ~var_1.b.x, abs(4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(-max(_wgslsmith_mod_vec2_i32(reverseBits(var_1.b), var_2.b), vec2<i32>(func_4(var_2, Struct_1(var_2.c, vec2<i32>(-60148i, -13240i), global1.c, var_2.d, global1.e), vec3<i32>(global1.b.x, 13504i, u_input.a)).b.x, global1.b.x)), var_0);
}

