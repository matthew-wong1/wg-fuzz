struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: bool = true;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-724f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2634f)) + -406f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.a.a)), _wgslsmith_f_op_f32(-arg_0.a.a)))), 828f));
    global1 = true;
    global0 = array<Struct_1, 24>();
    global1 = all(!select(vec3<bool>(!arg_0.b, true, select(false, true, arg_0.b)), !vec3<bool>(arg_0.b, true, true), any(vec2<bool>(arg_0.b, false)) && false));
    let var_1 = Struct_4(Struct_2(1u), _wgslsmith_f_op_vec2_f32(trunc(var_0.zy)), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 1u) ^ ~vec2<u32>(u_input.c, u_input.c), abs(~vec2<u32>(u_input.c, u_input.c))));
    return true;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: f32) -> Struct_3 {
    global0 = array<Struct_1, 24>();
    var var_0 = vec4<u32>(~(~u_input.c), ~_wgslsmith_sub_u32(1u, u_input.c), 4294967295u, u_input.c);
    let var_1 = Struct_2(0u);
    let var_2 = var_1;
    var_0 = (vec4<u32>(~var_1.a & 11561u, ~27280u, 0u, 47358u) & select(~(vec4<u32>(1u, 4221u, var_2.a, var_1.a) ^ vec4<u32>(var_0.x, 30479u, 75969u, 36563u)), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(11661u, var_0.x, var_1.a, 1u), vec4<u32>(1u, var_1.a, var_0.x, 57359u))), vec4<bool>(!arg_0, func_3(Struct_3(global0[_wgslsmith_index_u32(var_1.a, 24u)], arg_1)), all(vec4<bool>(true, false, false, arg_0)), any(vec2<bool>(arg_0, arg_1))))) | (countOneBits(abs(_wgslsmith_add_vec4_u32(vec4<u32>(55164u, u_input.c, var_2.a, u_input.c), vec4<u32>(1u, var_0.x, 17868u, 1u)))) | vec4<u32>(1u, ~48606u, var_0.x, ~(~432u)));
    return Struct_3(Struct_1(-848f, -min(reverseBits(u_input.b.yy), vec2<i32>(u_input.a, -58465i))), !arg_0);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_4(Struct_2(4294967295u >> (arg_2 % 32u)), vec2<f32>(_wgslsmith_f_op_f32(func_2(true, arg_1.b, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)).a.a - arg_0.x), _wgslsmith_f_op_f32(-1128f + -703f)), vec2<u32>(arg_2, abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_2), vec2<u32>(arg_2, arg_2)))));
    global1 = false;
    global0 = array<Struct_1, 24>();
    let var_1 = var_0;
    global1 = !all(vec3<bool>(all(vec2<bool>(true, false)), arg_1.b, 34302u == _wgslsmith_mult_u32(0u, var_1.a.a)));
    return global0[_wgslsmith_index_u32(0u, 24u)];
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: u32) -> f32 {
    var var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -924f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0)))), arg_0), func_2(any(vec2<bool>(true, true)), !select(all(vec2<bool>(false, false)), any(vec2<bool>(true, false)), true), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0)), 14321u);
    global0 = array<Struct_1, 24>();
    var var_1 = Struct_4(Struct_2(29554u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(522f, 928f))))), vec2<f32>(188f, 541f))) - vec2<f32>(var_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_0)))))), _wgslsmith_sub_vec2_u32(vec2<u32>(~min(0u, 4294967295u), arg_2.a), firstTrailingBit(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(4294967295u, 0u)), ~vec2<u32>(arg_3, arg_2.a)))));
    let var_2 = Struct_2(_wgslsmith_mult_u32(var_1.a.a << (countOneBits(~arg_2.a) % 32u), 1u));
    var var_3 = var_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-346f))) * -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-128f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(1195f, vec4<i32>(u_input.b.x, u_input.a, u_input.a, -33924i), Struct_2(0u), u_input.c)) - _wgslsmith_f_op_f32(550f + 905f)))) > _wgslsmith_f_op_f32(-1f);
    let var_0 = false & all(vec3<bool>(true, true, true));
    global1 = !var_0;
    global0 = array<Struct_1, 24>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1395f, -510f)), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(1940f - -223f), ~vec4<i32>(2147483647i, 39084i, u_input.a, 1i), Struct_2(71512u), 1u)), var_0))), firstLeadingBit(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-9152i, -67886i), min(vec2<i32>(25105i, 0i), vec2<i32>(66033i, u_input.b.x))))));
    var var_2 = func_2(!(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-597f * 1000f), _wgslsmith_f_op_f32(-var_1.a)) < _wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(-var_1.a), var_0))), !var_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-520f, -1393f, true)) + _wgslsmith_f_op_f32(-var_1.a)), func_2(true, select(true, true, true), var_1.a, _wgslsmith_div_f32(var_1.a, var_1.a)).a.a)))), var_1.a);
    let var_3 = -1159f;
    let x = u_input.a;
    s_output = StorageBuffer(51052u, vec2<i32>(~(i32(-1i) * -33916i), var_1.b.x) & reverseBits(-vec2<i32>(var_1.b.x, 87002i)), max(~select(firstLeadingBit(vec2<u32>(u_input.c, 4294967295u)), min(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.c, 4294967295u)), select(vec2<bool>(var_2.b, true), vec2<bool>(false, var_0), vec2<bool>(false, false))), _wgslsmith_mult_vec2_u32(firstTrailingBit(~vec2<u32>(4294967295u, u_input.c)), ~vec2<u32>(0u, u_input.c))));
}

