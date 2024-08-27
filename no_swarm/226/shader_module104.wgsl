struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(14903u, 2782u, 0u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 53782u), vec4<u32>(4294967295u, 15668u, 0u, 0u), vec4<u32>(32370u, 37523u, 4294967295u, 0u), vec4<u32>(4294967295u, 42565u, 48694u, 4294967295u), vec4<u32>(37198u, 1u, 24460u, 25682u), vec4<u32>(4294967295u, 1u, 9338u, 39343u), vec4<u32>(25792u, 41039u, 0u, 68432u), vec4<u32>(4294967295u, 1910u, 62367u, 15717u), vec4<u32>(0u, 0u, 16954u, 4199u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = u_input.a < _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_1, u_input.a), u_input.a), ~(~select(4294967295u, 22608u, true)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1701f)) - 518f));
    var var_2 = vec3<u32>(abs(~(arg_1 >> (~arg_1 % 32u))), 81676u | u_input.a, _wgslsmith_add_u32(firstTrailingBit(~u_input.a), 26856u));
    var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(~_wgslsmith_clamp_u32(0u, var_2.x, 0u), 0u, _wgslsmith_div_u32(arg_1, select(1u, reverseBits(u_input.a), all(vec3<bool>(var_0, false, false))))), firstTrailingBit(firstTrailingBit(vec3<u32>(0u, u_input.a, 26084u)) & _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, arg_1, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, var_2.x, arg_1), vec3<u32>(20122u, arg_1, var_2.x)))));
    var_2 = abs(vec3<u32>(min(firstLeadingBit(countOneBits(13093u)), select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.x, u_input.a), vec3<u32>(var_2.x, 36028u, 4294967295u)), arg_1, any(vec2<bool>(true, true)))), firstTrailingBit(var_2.x ^ var_2.x) & _wgslsmith_dot_vec2_u32(~var_2.yy, var_2.zx), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, reverseBits(arg_1), abs(19834u)), ~(vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(arg_1, arg_1, arg_1)))));
    return ~firstTrailingBit(vec3<u32>(~var_2.x, firstTrailingBit(select(1u, u_input.a, false)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 4294967295u, 0u), vec3<u32>(arg_1, var_2.x, 66753u)) & 4294967295u));
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_1(u_input.b, u_input.c.zz);
    let var_1 = min(~(~vec3<u32>(0u, u_input.a, 0u)), ~((vec3<u32>(48155u, 0u, u_input.a) >> (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u))) << (select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, 0u), vec3<bool>(true, false, false)) % vec3<u32>(32u)))) & _wgslsmith_clamp_vec3_u32(vec3<u32>(~(u_input.a >> (49472u % 32u)), 4294967295u, ~(~72810u)), (func_3(var_0.b.x, u_input.a, var_0, var_0) ^ max(vec3<u32>(1u, 0u, u_input.a), vec3<u32>(11936u, u_input.a, 4203u))) | abs(vec3<u32>(u_input.a, 1u, u_input.a)), vec3<u32>(44864u, ~1u, u_input.a ^ u_input.a) | _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u)));
    return countOneBits(~(~(-vec2<i32>(u_input.b, var_0.a))) << (vec2<u32>(~_wgslsmith_div_u32(u_input.a, 0u), countOneBits(~u_input.a)) % vec2<u32>(32u)));
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<u32>, 10>();
    global0 = array<vec4<u32>, 10>();
    global0 = array<vec4<u32>, 10>();
    global0 = array<vec4<u32>, 10>();
    global0 = array<vec4<u32>, 10>();
    return Struct_1(abs(~0i), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_1(1i, var_0.b);
    global0 = array<vec4<u32>, 10>();
    var var_2 = u_input.a;
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(reverseBits(-vec2<i32>(-1133i, -1i)), var_3.b, firstLeadingBit(var_3.b | vec2<i32>(var_3.a, u_input.c.x))) >> (min(~min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(25719u, u_input.a)), reverseBits(max(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 1u)))) % vec2<u32>(32u)), min(_wgslsmith_add_vec2_u32(min(vec2<u32>(0u, 68821u), countOneBits(vec2<u32>(u_input.a, u_input.a))), ~(~vec2<u32>(u_input.a, u_input.a))), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(115795u, 22801u), firstTrailingBit(vec2<u32>(u_input.a, 4294967295u)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1088f + 452f)), 1577f, 502f, _wgslsmith_f_op_f32(-1f)))), func_3((var_0.b.x ^ _wgslsmith_sub_i32(var_1.b.x, var_1.b.x)) & u_input.c.x, reverseBits(countOneBits(~45285u)), func_1(), var_1).x, ~22386u);
}

