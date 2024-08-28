struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(29038u), Struct_1(27605u), Struct_1(1u), Struct_1(4294967295u), Struct_1(0u), Struct_1(4294967295u), Struct_1(48358u), Struct_1(0u), Struct_1(1u), Struct_1(12086u), Struct_1(28468u), Struct_1(33613u), Struct_1(73551u), Struct_1(0u), Struct_1(1u), Struct_1(0u), Struct_1(4294967295u), Struct_1(0u), Struct_1(0u), Struct_1(14184u), Struct_1(21686u), Struct_1(14076u), Struct_1(1u));

var<private> global1: u32;

var<private> global2: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec4<u32> {
    global0 = array<Struct_1, 23>();
    var var_0 = select(!(!vec4<bool>(arg_0.a >= arg_0.a, true, true, true)), !(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), true)), false);
    let var_1 = Struct_2(arg_1, 1302f, global0[_wgslsmith_index_u32(~(~(~(~arg_1.a))), 23u)], _wgslsmith_clamp_u32(abs(arg_0.b.x), 41260u, arg_0.b.x) >= u_input.a.x);
    let var_2 = var_1.a.a;
    let var_3 = arg_0.b.zw;
    return arg_0.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: i32) -> bool {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(firstTrailingBit(~max(~4294967295u, 72964u)), 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(704f))), Struct_1(arg_1.b.x), true);
    var var_1 = Struct_3(_wgslsmith_clamp_i32(~(_wgslsmith_mod_i32(arg_3, -17512i) >> (~arg_2.x % 32u)), 0i, -_wgslsmith_clamp_i32(-31183i, -2147483647i, abs(arg_1.a))), ~func_3(Struct_3(arg_1.a, vec4<u32>(0u, 4294967295u, arg_2.x, 1u)), var_0.c));
    global2 = -24834i;
    global2 = 1i;
    let var_2 = vec3<bool>(select(var_0.d, true | (any(vec4<bool>(var_0.d, true, false, false)) & true), !select(false, false, var_0.d)), false, true);
    return any(select(!select(select(vec4<bool>(false, true, var_2.x, false), vec4<bool>(false, var_0.d, var_0.d, true), vec4<bool>(true, var_0.d, var_0.d, false)), vec4<bool>(true, true, var_2.x, true), all(vec4<bool>(true, true, var_0.d, var_2.x))), !(!select(vec4<bool>(var_0.d, false, false, var_2.x), vec4<bool>(true, true, var_2.x, true), vec4<bool>(var_0.d, var_0.d, true, var_2.x))), var_0.d));
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    global2 = max(max(0i, ~(~_wgslsmith_div_i32(17827i, -5562i))), -1i);
    return vec3<bool>(any(vec2<bool>(true, !func_2(vec4<u32>(u_input.a.x, u_input.a.x, arg_0.a, u_input.a.x), Struct_3(1i, vec4<u32>(45113u, arg_0.a, 66848u, u_input.a.x)), vec3<u32>(5649u, u_input.a.x, 1u), 0i))), !all(!select(vec2<bool>(false, true), vec2<bool>(true, true), false)), !(_wgslsmith_div_u32(u_input.a.x, 49979u) > _wgslsmith_dot_vec2_u32(select(vec2<u32>(4671u, arg_0.a), u_input.a.xz, true), u_input.a.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(func_1(global0[_wgslsmith_index_u32(1u, 23u)]), vec3<bool>(select(u_input.a.x, u_input.a.x, false) <= max(u_input.a.x, 0u), select(func_1(global0[_wgslsmith_index_u32(u_input.a.x, 23u)]).x, any(vec2<bool>(false, true)), true), select(1i, -25503i, false) < _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 8877i, 0i, -11695i), vec4<i32>(-15197i, -1i, 0i, 11305i))), true);
    let var_1 = vec4<bool>(!all(var_0.yy), true, !var_0.x, true);
    var var_2 = Struct_1(max(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xy, vec2<bool>(var_1.x, true)), ~u_input.a.yy), 1u), 1u));
    global0 = array<Struct_1, 23>();
    let var_3 = func_1(global0[_wgslsmith_index_u32(u_input.a.x, 23u)]);
    let var_4 = abs(-vec2<i32>(firstTrailingBit(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(54682i, -1i)))) & select(min(vec2<i32>(~1i, reverseBits(-19266i)), vec2<i32>(-2147483647i, 4539i)), vec2<i32>(abs(-2147483647i), countOneBits(2147483647i)) ^ vec2<i32>(_wgslsmith_mod_i32(-14558i, 12772i), firstTrailingBit(2147483647i)), var_3.x || !var_3.x);
    let var_5 = Struct_2(Struct_1(var_2.a), -1593f, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, 4294967295u, var_2.a)), 23u)], true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-var_4.x, _wgslsmith_mod_i32(-1i, -2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_5.b, var_5.b, 131f), vec3<f32>(var_5.b, 686f, var_5.b), true)))), _wgslsmith_div_vec2_i32(~var_4, _wgslsmith_mult_vec2_i32(vec2<i32>(var_4.x, _wgslsmith_mod_i32(-4581i, var_4.x)), vec2<i32>(-57470i, var_4.x))), ~(~var_5.c.a), _wgslsmith_mult_u32(~(~0u), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_5.c.a, var_5.a.a, var_5.c.a, 20395u), vec4<u32>(0u, 19095u, 0u, 11885u)), vec4<u32>(27363u, var_2.a, var_5.a.a, 1083u)))));
}

