struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, 2147483647i, -51496i);

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-562f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 969f)))))), -449f);
    let var_1 = true;
    let var_2 = !(global0.x <= firstTrailingBit(_wgslsmith_div_i32(2147483647i, global0.x)));
    let var_3 = var_0.x;
    var var_4 = ~(~(~u_input.b));
    return select(0u, 0u, (-2147483647i & _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, global0.x, global0.x, u_input.c.x), vec4<i32>(-2147483647i, -25975i, -1i, 33033i)), ~vec4<i32>(global0.x, 0i, global0.x, 1i))) == abs(-1i));
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-639f - _wgslsmith_div_f32(383f, 2093f))) * -244f), _wgslsmith_f_op_f32(-151f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(600f, 307f, global1.x))))))));
    let var_1 = select(vec4<bool>(global1.x, global1.x, all(select(vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, false))) & !global1.x, global1.x), vec4<bool>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 23167u), vec2<u32>(4294967295u, u_input.b)) != ~(~u_input.b), global1.x, true, true), !all(vec4<bool>(select(false, true, false), true, global1.x, all(vec4<bool>(false, global1.x, true, global1.x)))));
    global1 = var_1;
    var var_2 = _wgslsmith_mult_vec4_u32(~(vec4<u32>(6755u, u_input.a, ~u_input.a, ~0u) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, 1u) % vec4<u32>(32u))), vec4<u32>(4294967295u, (0u ^ func_3()) ^ 22864u, u_input.b, _wgslsmith_sub_u32(~(0u ^ u_input.a), 1u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + 128f) - var_0))) * 598f) == var_0;
}

fn func_1(arg_0: i32, arg_1: i32) -> i32 {
    global1 = select(vec4<bool>(true, global1.x, !(global1.x & global1.x), !any(vec4<bool>(true, true, global1.x, global1.x)) & !(global1.x || global1.x)), vec4<bool>(global1.x, false, global1.x, 18337u > u_input.b), !func_2(global0.x));
    global1 = vec4<bool>(false, u_input.a >= _wgslsmith_dot_vec2_u32(~select(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(1u, u_input.b), false), vec2<u32>(countOneBits(u_input.b), 0u)), u_input.b >= max(~51652u, ~(~44088u)), all(vec2<bool>(global1.x, true)));
    global0 = vec3<i32>(-(~_wgslsmith_mult_i32(global0.x, i32(-1i) * -10197i)), ~(-58378i), -1i);
    global1 = !select(select(vec4<bool>(u_input.a < u_input.b, true, true, false), vec4<bool>(select(global1.x, global1.x, global1.x), all(global1.zxy), true, arg_1 > arg_0), any(select(vec2<bool>(true, global1.x), global1.yx, global1.x))), vec4<bool>(!(!global1.x), false, any(select(vec2<bool>(true, global1.x), global1.zz, false)), true), !select(select(vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(false, global1.x, false, true), vec4<bool>(global1.x, false, global1.x, false)), vec4<bool>(global1.x, false, true, global1.x), any(vec2<bool>(global1.x, global1.x))));
    let var_0 = Struct_1(select(select(vec4<bool>(false, true, all(global1.yx), true), vec4<bool>(true, true, true, true), select(global1.x || false, global1.x, true)), !select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false), global1.x & global1.x), true), max(vec3<u32>(91191u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a, 70188u, u_input.a)), vec3<u32>(u_input.a, u_input.b, u_input.a) >> (vec3<u32>(47693u, u_input.b, 0u) % vec3<u32>(32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a, 36936u, 53182u), vec4<u32>(0u, 32111u, 0u, u_input.a)) << ((5956u << (u_input.b % 32u)) % 32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b, u_input.a), vec3<u32>(12729u, u_input.a, 5189u)), 1u), ~select(vec3<u32>(4294967295u, u_input.a, 34633u), vec3<u32>(u_input.b, 8211u, u_input.b), global1.wxx))));
    return -min(firstLeadingBit(_wgslsmith_sub_i32(arg_0, -64247i)), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!vec4<bool>((1i & global0.x) > -28972i, func_1(-2147483647i, -1i) < -u_input.c.x, all(global1.zw), false), vec3<u32>(~29028u, abs(0u), 32040u));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -787f) - _wgslsmith_f_op_f32(f32(-1f) * -737f)), _wgslsmith_div_f32(3031f, _wgslsmith_f_op_f32(f32(-1f) * -359f)), var_0.a.x)));
    let var_2 = ~(-2147483647i);
    var var_3 = var_0;
    var var_4 = _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(1u, 19140u), 27089u, _wgslsmith_sub_u32(var_3.b.x, u_input.b)), var_3.b), _wgslsmith_mod_vec3_u32(vec3<u32>(var_3.b.x, u_input.a, min(var_0.b.x, u_input.b)), vec3<u32>(~var_0.b.x, ~4294967295u, 1u))) >> (max(var_0.b, max(vec3<u32>(12861u, 10851u, var_3.b.x), vec3<u32>(~18654u, ~66148u, var_3.b.x))) % vec3<u32>(32u));
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1245f, 356f, _wgslsmith_f_op_f32(floor(var_1.x)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) * _wgslsmith_f_op_f32(247f - _wgslsmith_f_op_f32(floor(var_1.x)))), var_1.x, -1089f));
    var var_6 = var_0;
    let var_7 = 20268u;
    var var_8 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_5.x, -1238f, var_1.x, var_1.x), vec4<f32>(705f, var_5.x, -661f, var_1.x))), vec4<f32>(1f, 1f, 1f, 1f))), vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), 112f, -1168f, -935f)), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x)), _wgslsmith_f_op_f32(1522f - _wgslsmith_f_op_f32(1189f * var_1.x)), _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(abs(-1000f))))))));
}

