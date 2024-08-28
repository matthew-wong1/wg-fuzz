struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<i32>,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_4 {
    return Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(countOneBits(abs(1i)), 28212i, _wgslsmith_clamp_i32(0i, 1i, -17879i), -15529i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> Struct_3 {
    let var_0 = arg_1;
    var var_1 = Struct_1(arg_1.a);
    var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1419f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(471f - 1910f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(301f, 489f)), 1f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -870f)))))), 1000f));
    return Struct_3(var_0, Struct_2(-vec4<i32>(arg_0.a, 51311i, arg_0.a, arg_0.a), 103478u ^ u_input.a.x, vec2<f32>(-517f, var_2)), vec3<i32>(-(~arg_0.a), ~arg_0.a, 48062i) >> (~((vec3<u32>(75708u, 13241u, u_input.a.x) >> (vec3<u32>(u_input.a.x, 9611u, 24129u) % vec3<u32>(32u))) | ~vec3<u32>(0u, 70109u, u_input.a.x)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2, 2821f)), 1023f), -580f)))), (var_2 >= _wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(min(-1000f, -1236f))))) || (any(select(var_1.a.zz, arg_1.a.yx, arg_1.a.x)) && !(true & arg_1.a.x)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: f32, arg_3: vec3<bool>) -> f32 {
    let var_0 = func_3(Struct_4(arg_1.b.a.x), arg_1.a);
    var var_1 = _wgslsmith_div_i32(-8580i, 2873i);
    var var_2 = arg_1.b.c.x;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(347f)), arg_2, true)), 466f);
    let var_4 = all(var_0.a.a.xz);
    return _wgslsmith_f_op_f32(f32(-1f) * -1559f);
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, countOneBits(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 20703u), vec2<u32>(~u_input.a.x, 1u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, ~0u, 42958u), vec3<u32>(~0u, ~firstLeadingBit(u_input.a.x), _wgslsmith_div_u32(u_input.a.x, abs(0u)))));
    let var_1 = vec4<bool>(true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1507f)) != _wgslsmith_f_op_f32(func_4(vec3<u32>(1u, 7048u, select(0u, u_input.a.x, true)), func_3(func_2(), Struct_1(vec3<bool>(false, true, false))), 120f, vec3<bool>(true, true, true))), true);
    var var_2 = _wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(~13331u, 4294967295u));
    var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(func_3(Struct_4(2147483647i), func_3(func_2(), Struct_1(var_1.yww)).a).b.b, ~var_2.x), ~min((u_input.a & vec2<u32>(u_input.a.x, var_2.x)) ^ (vec2<u32>(56398u, var_2.x) << (u_input.a % vec2<u32>(32u))), u_input.a));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-998f * 653f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec3<u32>(62722u, u_input.a.x, u_input.a.x), Struct_3(Struct_1(vec3<bool>(var_1.x, var_1.x, var_1.x)), Struct_2(vec4<i32>(1i, 2147483647i, 58364i, -1i), var_2.x, vec2<f32>(-205f, 525f)), vec3<i32>(-27419i, -1i, 5660i), 981f, var_1.x), 1002f, var_1.wxy))))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 804f;
    var var_1 = false;
    let var_2 = func_1();
    var var_3 = Struct_1(!select(func_3(func_2(), func_3(Struct_4(var_2), Struct_1(vec3<bool>(true, true, false))).a).a.a, select(func_3(Struct_4(-2147483647i), Struct_1(vec3<bool>(true, true, true))).a.a, vec3<bool>(true, true, true), false), vec3<bool>(select(true, false, true), true, all(vec4<bool>(true, true, true, true)))));
    let var_4 = vec3<f32>(-918f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-var_0)), 499f))), _wgslsmith_div_f32(-715f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * var_0)));
    let var_5 = reverseBits(abs(vec2<i32>(-var_2, var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_5.x, var_4, func_3(Struct_4(var_2), Struct_1(vec3<bool>(true, var_3.a.x, true))).c);
}

