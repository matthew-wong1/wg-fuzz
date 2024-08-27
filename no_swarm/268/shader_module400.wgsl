struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, -57194i), vec4<u32>(0u, 1u, 4294967295u, 53288u)), Struct_2(vec3<i32>(33743i, 2147483647i, -47985i), vec4<u32>(0u, 30857u, 10696u, 36963u)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(!select(global0.a, !select(global0.a, vec4<bool>(global0.b, global0.a.x, global0.a.x, true), global0.a.x), vec4<bool>(global0.a.x & true, true, all(global0.a.xx), true | global0.a.x)), (u_input.b.x & ~_wgslsmith_mult_i32(2147483647i, u_input.c.x)) < (i32(-1i) * -2147483647i));
    global1 = array<Struct_2, 2>();
    var var_1 = ~select(-(~vec3<i32>(5359i, u_input.b.x, u_input.c.x)), vec3<i32>(-u_input.c.x, u_input.a.x >> (min(4294967295u, 1u) % 32u), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.b.x), reverseBits(u_input.c.x), max(5779i, -2147483647i))), !(!global0.a.yww));
    let var_2 = Struct_2(vec3<i32>(51512i, 1i, reverseBits(0i)), abs(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(50603u, 1u, 0u, 16782u), vec4<u32>(1u, 1u, 48446u, 0u)), vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 15963u, 940u), vec4<u32>(4294967295u, 55287u, 4294967295u, 24128u))), vec4<u32>(1u, 1u, 1u, 1u))));
    global1 = array<Struct_2, 2>();
    return ~(~(~var_2.b.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> f32 {
    let var_0 = -34631i;
    var var_1 = arg_1;
    let var_2 = arg_2;
    var var_3 = ~(0u << (abs(func_3()) % 32u));
    var var_4 = _wgslsmith_add_u32(func_3(), 8943u);
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: vec3<f32>) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~_wgslsmith_add_u32(38610u, arg_0) >> (arg_1.b.x % 32u)), arg_0), 2u)];
    var var_1 = arg_3.xy;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1016f) * _wgslsmith_f_op_f32(func_2(vec4<f32>(-1000f, -129f, arg_2, -1208f), Struct_1(vec4<bool>(true, true, false, true), global0.b), 0u, vec2<bool>(global0.b, false)))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - 303f) * var_1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -599f));
    let var_3 = ~var_0.a.x;
    var var_4 = vec4<u32>(_wgslsmith_sub_u32(1u >> (~4294967295u % 32u), _wgslsmith_sub_u32(~reverseBits(var_0.b.x), arg_0 & arg_0)), 64714u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, abs(~var_0.b.x), arg_1.b.x, arg_0), abs(countOneBits(~vec4<u32>(0u, var_0.b.x, 30023u, 0u)))), 101223u);
    return !any(global0.a.zz) && false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(any(vec4<bool>(!(!global0.a.x), global0.b, !(!global0.b), !(global0.b | true))), true);
    var var_1 = Struct_1(global0.a, var_0.x);
    var_1 = Struct_1(select(vec4<bool>(true, true, var_0.x, func_1(1u, global1[_wgslsmith_index_u32(~1u, 2u)], _wgslsmith_f_op_f32(2197f - 267f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-993f, 900f, 587f))))), !vec4<bool>(!var_1.a.x, var_0.x, global0.b, any(var_1.a.yx)), any(vec4<bool>(var_1.b, select(global0.b, global0.a.x, true), any(var_1.a.yyy), true))), !(var_1.b || true));
    var var_2 = 0u;
    var_1 = Struct_1(vec4<bool>(true, !all(global0.a.yyy), var_0.x, any(select(select(global0.a, var_1.a, var_1.a), select(vec4<bool>(true, false, true, true), global0.a, vec4<bool>(false, true, var_0.x, true)), var_1.a.x))), !func_1(24016u, Struct_2(reverseBits(vec3<i32>(u_input.b.x, 0i, -3558i)), vec4<u32>(1u, 0u, 75667u, 0u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1058f * -603f))), vec3<f32>(_wgslsmith_f_op_f32(select(459f, 111f, false)), _wgslsmith_f_op_f32(346f * -147f), -462f)));
    var var_3 = _wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u)) & vec3<u32>(max(func_3(), _wgslsmith_mult_u32(17552u, 0u)), 1u, 29767u), abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(60102u, 1u, 4294967295u)) >> (max(vec3<u32>(4294967295u, 4294967295u, 37345u), select(vec3<u32>(95884u, 55310u, 1u), vec3<u32>(15415u, 1u, 107994u), var_1.a.xxy)) % vec3<u32>(32u))));
    var_1 = Struct_1(!(!var_1.a), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(571f, -1535f))) - vec2<f32>(610f, _wgslsmith_f_op_f32(trunc(830f))))), vec4<i32>(_wgslsmith_mult_i32(7886i, _wgslsmith_clamp_i32(0i, 19646i, u_input.a.x)) >> (0u % 32u), 24420i, _wgslsmith_div_i32(u_input.b.x, u_input.c.x) ^ u_input.b.x, -1i));
}

