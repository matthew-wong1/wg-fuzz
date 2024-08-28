struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_5 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> u32 {
    return countOneBits(u_input.b);
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: i32) -> f32 {
    let var_0 = Struct_2(arg_1.x, _wgslsmith_f_op_f32(min(368f, _wgslsmith_f_op_f32(max(arg_2.x, 1204f)))), select(select(arg_1.wwy, select(!arg_1.wxy, arg_1.wyz, arg_1.x), vec3<bool>(true, any(arg_1.xz), true)), vec3<bool>(true, false, !arg_1.x), arg_1.x));
    let var_1 = ~arg_3;
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_0, -1813f, -541f), vec4<f32>(var_0.b, 849f, 319f, var_0.b))))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_div_f32(-162f, -301f), -326f, _wgslsmith_f_op_f32(select(arg_2.x, -1351f, var_0.a)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1057f)), var_0.b))));
    var var_3 = Struct_1(select(!vec3<bool>(!arg_1.x, any(arg_1), !arg_1.x), vec3<bool>(!(u_input.b >= 1u), !var_0.c.x, var_0.c.x), var_0.c), _wgslsmith_div_u32(0u, ~abs(u_input.a)), ~(-_wgslsmith_mod_vec2_i32(vec2<i32>(161i, 1i) & vec2<i32>(arg_3, var_1), firstTrailingBit(vec2<i32>(1i, 54881i)))));
    var_3 = Struct_1(var_3.a, u_input.b, max(abs(-var_3.c ^ var_3.c), ~vec2<i32>(abs(29334i), var_1)));
    return arg_2.x;
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(-2331f, !select(vec4<bool>(false, true, true, arg_0.a), vec4<bool>(true, arg_0.c.x, arg_0.c.x, arg_0.c.x), vec4<bool>(arg_0.c.x, arg_0.a, arg_0.c.x, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.b, arg_0.b), vec2<f32>(arg_0.b, arg_0.b), arg_0.c.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(955f, 1000f))), -min(-1i, 27289i))), -173f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, 733f) * vec2<f32>(arg_0.b, 206f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-410f, 772f) * vec2<f32>(arg_0.b, arg_0.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1099f, -991f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(214f + arg_0.b))), select(vec2<bool>(any(vec4<bool>(arg_0.a, false, true, arg_0.c.x)), true), arg_0.c.xx, !all(vec4<bool>(false, true, arg_0.c.x, arg_0.c.x))))));
    var_0 = vec2<f32>(148f, _wgslsmith_f_op_f32(-920f + _wgslsmith_f_op_f32(f32(-1f) * -691f)));
    var var_1 = !any(vec2<bool>(!arg_0.c.x, arg_0.a)) && any(select(!select(arg_0.c, arg_0.c, arg_0.a), select(!arg_0.c, arg_0.c, false), true));
    var var_2 = Struct_4(min(vec2<u32>(reverseBits(4294967295u), ~4294967295u), ~(~vec2<u32>(14864u, u_input.a))), vec2<bool>(any(arg_0.c), all(select(select(arg_0.c.zx, arg_0.c.xy, vec2<bool>(arg_0.a, true)), vec2<bool>(false, arg_0.a), !vec2<bool>(arg_0.a, true)))), reverseBits(~u_input.a));
    var_1 = true;
    return true;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_5) -> StorageBuffer {
    var var_0 = min(u_input.a, ~1u);
    let var_1 = min(vec4<u32>(((arg_0.b << (8185u % 32u)) & ~u_input.a) & arg_0.b, arg_0.b, _wgslsmith_div_u32(1u, abs(arg_0.b)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, 0u, arg_0.b, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, arg_0.b, 27053u), vec4<u32>(arg_0.b, arg_0.b, arg_0.b, u_input.a)))), ~select(abs(~vec4<u32>(1u, arg_0.b, 4294967295u, u_input.a)), ~(vec4<u32>(14047u, u_input.a, 1u, arg_0.b) >> (vec4<u32>(u_input.b, arg_0.b, arg_0.b, 44610u) % vec4<u32>(32u))), vec4<bool>(true, arg_2.b.x, arg_2.b.x, !arg_0.a.x)));
    var var_2 = Struct_3(select(arg_0.a, !select(select(vec3<bool>(false, false, false), arg_0.a, arg_0.a), arg_0.a, select(arg_0.a, arg_0.a, arg_0.a.x)), !((i32(-1i) * -2147483647i) <= _wgslsmith_sub_i32(0i, arg_1))), 71337u);
    var_2 = Struct_3(vec3<bool>(var_2.a.x, false, false), abs(arg_0.b));
    var_2 = arg_0;
    return StorageBuffer(min(_wgslsmith_mod_i32(2147483647i, 15824i << (arg_0.b % 32u)), reverseBits(~arg_2.a << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 560u, var_2.b), vec3<u32>(u_input.a, u_input.a, var_2.b)) % 32u))), reverseBits(var_1.zwz & select(vec3<u32>(u_input.a, var_2.b, var_2.b), var_1.zxw, arg_0.a.x)), vec3<u32>(~(~arg_0.b), 4294967295u, _wgslsmith_dot_vec4_u32(~(var_1 | var_1), ~(var_1 & vec4<u32>(23373u, 14866u, var_1.x, 7876u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_3(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, false)), true, any(vec4<bool>(true, false, false, false)))), func_1()), -1i, Struct_5(-1i, vec3<bool>(!all(vec3<bool>(false, false, false)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-664f)) + _wgslsmith_div_f32(2073f, 1134f))), func_2(Struct_2(true, _wgslsmith_f_op_f32(-739f * -280f), vec3<bool>(false, false, true)))));
}

