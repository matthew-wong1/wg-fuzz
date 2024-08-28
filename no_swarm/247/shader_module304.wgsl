struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(-551f, -630f, false, vec3<f32>(709f, -224f, 1593f), vec2<u32>(0u, 13099u))), Struct_2(Struct_1(894f, -246f, true, vec3<f32>(-1786f, -820f, 1219f), vec2<u32>(12143u, 55493u))), Struct_2(Struct_1(586f, 1727f, false, vec3<f32>(459f, 1137f, 261f), vec2<u32>(7587u, 18740u))), Struct_2(Struct_1(-1706f, -2213f, true, vec3<f32>(290f, 902f, -847f), vec2<u32>(1u, 9937u))), Struct_2(Struct_1(202f, 983f, false, vec3<f32>(102f, 989f, -750f), vec2<u32>(46537u, 70624u))), Struct_2(Struct_1(-426f, -267f, true, vec3<f32>(-1809f, 2525f, 1160f), vec2<u32>(27585u, 1u))), Struct_2(Struct_1(475f, 738f, true, vec3<f32>(-1263f, 757f, 176f), vec2<u32>(0u, 0u))), Struct_2(Struct_1(-119f, 660f, false, vec3<f32>(-292f, -838f, 1096f), vec2<u32>(31401u, 0u))), Struct_2(Struct_1(129f, -887f, false, vec3<f32>(1000f, 617f, -2082f), vec2<u32>(0u, 95185u))), Struct_2(Struct_1(-737f, 513f, true, vec3<f32>(-1152f, -1000f, -1814f), vec2<u32>(4294967295u, 0u))));

var<private> global1: Struct_1 = Struct_1(-677f, -1103f, false, vec3<f32>(-1249f, 589f, 478f), vec2<u32>(0u, 56021u));

var<private> global2: Struct_1 = Struct_1(-1000f, -1027f, false, vec3<f32>(418f, -1078f, -303f), vec2<u32>(0u, 1u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> vec3<bool> {
    var var_0 = vec3<i32>(_wgslsmith_mod_i32(1i, 1i) << (~global1.e.x % 32u), _wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(-2147483647i, 1i >> ((u_input.a >> (4294967295u % 32u)) % 32u), ~(-1i) >> (_wgslsmith_mod_u32(u_input.a, global2.e.x) % 32u))), ~(-1426i));
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 10u)];
    var_1 = global0[_wgslsmith_index_u32(u_input.a, 10u)];
    var var_2 = var_0.x;
    global1 = var_1.a;
    return !(!arg_1.wzz);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: u32) -> u32 {
    global2 = Struct_1(arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(747f - global2.d.x))) + _wgslsmith_f_op_f32(-global2.a)), _wgslsmith_div_f32(660f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -798f))))), any(!select(!vec4<bool>(true, global1.c, global2.c, global2.c), !vec4<bool>(global1.c, global1.c, arg_1, true), vec4<bool>(arg_1, true, false, global2.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, -2024f, global1.d.x) - global2.d) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-575f, arg_0, global2.d.x) + global2.d), global2.d, func_3(global2.c, vec4<bool>(false, true, global1.c, true)))))), vec2<u32>(_wgslsmith_div_u32(countOneBits(1u), 24518u), 0u));
    let var_0 = -553f;
    var var_1 = global2.e.x;
    var_1 = u_input.a;
    var var_2 = countOneBits(global2.e.x) ^ arg_2;
    return global2.e.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = select(-vec3<i32>(0i, -arg_0.x, firstLeadingBit(0i)), vec3<i32>(arg_0.x, -select(~(-21276i), ~(-48943i), global1.c && global1.c), 2147483647i), vec3<bool>(any(vec4<bool>(all(vec2<bool>(global2.c, false)), arg_0.x > 0i, true, arg_1.a.c)), false, false));
    global0 = array<Struct_2, 10>();
    var var_1 = arg_0.x;
    let var_2 = Struct_1(global2.d.x, global1.b, false, vec3<f32>(arg_1.a.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global1.a)))), _wgslsmith_f_op_f32(arg_1.a.a * arg_1.a.b)), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~global2.e, global1.e | ~arg_1.a.e), min(countOneBits(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(~4294967295u, _wgslsmith_mult_u32(1u, 35131u)))));
    let var_3 = Struct_2(arg_1.a);
    return min(~(firstTrailingBit(vec3<u32>(arg_1.a.e.x, global1.e.x, global2.e.x)) << (~reverseBits(vec3<u32>(var_3.a.e.x, 4294967295u, 1u)) % vec3<u32>(32u))), vec3<u32>(arg_1.a.e.x, ~abs(arg_1.a.e.x >> (arg_1.a.e.x % 32u)), 4294967295u));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<u32> {
    let var_0 = -20997i;
    let var_1 = 1u & (_wgslsmith_mult_u32(arg_1.x, 4619u) ^ abs(1886u));
    global1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(abs(-295f));
    var var_3 = func_4(vec3<i32>(-1i) * -vec3<i32>(var_0 ^ var_0, ~(-30463i), ~(-2147483647i)), global0[_wgslsmith_index_u32(~global2.e.x << (_wgslsmith_div_u32(func_2(arg_0.a, global2.c || false, ~14785u), ~1u) % 32u), 10u)]);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(-2431f, _wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -540f))), false, global2.d, global2.e);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1270f) + _wgslsmith_div_f32(-1685f, -557f))) * _wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(global2.b - 614f))), global2.a, any(vec2<bool>(true, global2.c)), global2.d, _wgslsmith_sub_vec2_u32(func_1(Struct_1(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(f32(-1f) * -1681f), !global1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, 199f, -3004f)), reverseBits(vec2<u32>(1u, global1.e.x))), global2.e), global2.e));
    global2 = var_0;
    var var_1 = var_0;
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    var var_2 = Struct_2(Struct_1(682f, _wgslsmith_f_op_f32(select(global1.d.x, _wgslsmith_f_op_f32(step(var_0.b, 189f)), any(select(vec2<bool>(var_0.c, false), vec2<bool>(true, false), var_1.c)))), true, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(global2.a + global2.d.x), _wgslsmith_f_op_f32(-var_0.b), global1.d.x))), _wgslsmith_div_vec2_u32(~vec2<u32>(global1.e.x, var_1.e.x), ~vec2<u32>(71707u, 0u)) ^ _wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.e.x, var_0.e.x), func_1(Struct_1(global2.d.x, global1.b, var_0.c, vec3<f32>(var_1.a, global1.b, -216f), var_1.e), global2.e))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~min(2147483647i, firstLeadingBit(0i))), global2.d.x, select(abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), ~vec3<u32>(var_0.e.x, 0u, 17725u))), abs(select(vec3<u32>(var_2.a.e.x, 27460u, 15084u), vec3<u32>(u_input.a, 4294967295u, var_0.e.x), global1.c) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 73645u, var_1.e.x), vec3<u32>(0u, var_0.e.x, 69289u), vec3<u32>(1u, 18768u, 1u))), select(func_3(any(vec2<bool>(var_1.c, global1.c)), vec4<bool>(true, global2.c, false, false)), select(!vec3<bool>(false, global1.c, global1.c), vec3<bool>(true, var_2.a.c, false), vec3<bool>(global2.c, false, global2.c)), select(select(vec3<bool>(true, var_0.c, false), vec3<bool>(true, global2.c, false), false), !vec3<bool>(false, false, global2.c), vec3<bool>(true, true, true)))));
}

