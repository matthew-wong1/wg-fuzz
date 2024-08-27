struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> bool {
    var var_0 = Struct_2(~(4294967295u ^ arg_3) & 42811u, arg_1.b >> (_wgslsmith_sub_vec2_u32(vec2<u32>(~1u, _wgslsmith_clamp_u32(u_input.b, arg_1.b.x, arg_1.a)), arg_1.b) % vec2<u32>(32u)), -5242i, arg_1.e, arg_1.d);
    var var_1 = arg_1.d;
    var var_2 = -808f;
    var_0 = Struct_2(_wgslsmith_div_u32(~(55530u >> (var_0.a % 32u)), 4294967295u >> (var_0.b.x % 32u)) << (max(~(~0u), ~(2906u | u_input.b)) % 32u), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.b, arg_3), (arg_3 & arg_1.a) | 36838u), ~vec2<u32>(_wgslsmith_mult_u32(31099u, arg_1.b.x), reverseBits(var_0.b.x)), abs(~var_0.b)), -(~abs(1i)), Struct_1(var_0.e.a, true), Struct_1(_wgslsmith_f_op_f32(round(arg_0)) > arg_0, all(select(vec3<bool>(var_1.b, arg_1.e.b, true), select(vec3<bool>(arg_1.d.b, false, arg_1.e.a), vec3<bool>(var_0.e.a, arg_2, arg_2), true), select(vec3<bool>(arg_1.d.a, false, true), vec3<bool>(true, arg_1.d.a, var_1.b), vec3<bool>(var_1.b, true, var_0.e.a))))));
    var_1 = Struct_1(true, true);
    return (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1201f + arg_0) * _wgslsmith_div_f32(arg_0, arg_0)) <= 1019f) & true;
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_2, 25>();
    let var_0 = Struct_1(true, true);
    global0 = array<Struct_2, 25>();
    var var_1 = select(vec3<bool>(any(vec2<bool>(!var_0.a, var_0.a || var_0.b)), ~u_input.a >= 2147483647i, var_0.a), !select(select(vec3<bool>(true, var_0.a, true), !vec3<bool>(true, true, var_0.a), !var_0.b), !select(vec3<bool>(true, true, false), vec3<bool>(var_0.b, var_0.a, var_0.a), false), vec3<bool>(true, select(true, var_0.a, false), var_0.a)), !any(vec2<bool>(any(vec3<bool>(var_0.a, var_0.b, true)), !var_0.b)));
    let var_2 = Struct_2(~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 51454u, u_input.b), vec4<u32>(68474u, u_input.b, 1u, 0u) | vec4<u32>(1u, u_input.b, 4294967295u, u_input.b))), ~max(vec2<u32>(_wgslsmith_mod_u32(43587u, 30592u), ~u_input.b), ~select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(19433u, 4294967295u), var_1.xx)), 2147483647i, Struct_1(u_input.a != ~1i, all(!vec3<bool>(false, var_1.x, true)) & func_3(-1043f, global0[_wgslsmith_index_u32(1u, 25u)], true, _wgslsmith_clamp_u32(0u, 0u, u_input.b))), var_0);
    return var_2.d;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> StorageBuffer {
    global0 = array<Struct_2, 25>();
    var var_0 = func_2();
    var_0 = Struct_1(true, _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(u_input.c, 4411i)), vec2<i32>(_wgslsmith_add_i32(2147483647i, u_input.a), _wgslsmith_div_i32(u_input.d, 0i))) >= -4451i);
    var var_1 = Struct_1(arg_0.a, all(select(vec4<bool>(var_0.b, true, true, select(false, arg_0.b, false)), !vec4<bool>(arg_2.b, false, var_0.b, true), true)));
    var_0 = arg_2;
    return StorageBuffer(1000f, u_input.b, vec4<u32>(arg_1.x, arg_1.x, ~abs(_wgslsmith_mod_u32(4294967295u, u_input.b)), arg_1.x), u_input.a);
}

fn func_1() -> StorageBuffer {
    return func_4(func_2(), ~_wgslsmith_add_vec3_u32(select(vec3<u32>(1u, u_input.b, 13725u), vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<bool>(true, true, false)) >> (vec3<u32>(30844u, 60393u, 5280u) % vec3<u32>(32u)), abs(vec3<u32>(u_input.b, 1u, u_input.b))), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 25>();
    let x = u_input.a;
    s_output = func_1();
}

