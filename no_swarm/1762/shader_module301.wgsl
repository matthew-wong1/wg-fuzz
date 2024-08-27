struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(trunc(arg_0.x));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = true;
    global0 = Struct_3(Struct_1(-230f, global0.a.b, reverseBits(~select(u_input.b, arg_0.c.c, var_0)), global0.c.a), arg_0.c.b.x, global0.a);
    let var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(global0.a.c, ~2671u, ~_wgslsmith_mult_u32(global0.c.c, 22471u), firstTrailingBit(arg_0.a.c)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_div_u32(u_input.b, global0.a.c), _wgslsmith_sub_u32(global0.c.c, 10322u), _wgslsmith_mod_u32(global0.c.c, global0.a.c)), ~vec4<u32>(30389u, 82075u, 0u, u_input.b)), vec4<u32>(~38874u, u_input.b, _wgslsmith_mult_u32(min(arg_0.a.c, ~31557u), countOneBits(~80945u)), _wgslsmith_add_u32(u_input.b, global0.c.c)));
    let var_2 = 0u;
    var var_3 = false;
    return firstTrailingBit(_wgslsmith_sub_u32(62696u, _wgslsmith_mod_u32(~var_2, u_input.b)) | _wgslsmith_div_u32(4294967295u, max(91047u, u_input.b) ^ var_2));
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_3 {
    global0 = Struct_3(Struct_1(global0.c.d, global0.a.b, ~(~0u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1318f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), -10299i, global0.a);
    global0 = Struct_3(global0.c, -35192i, global0.c);
    let var_0 = firstTrailingBit(global0.c.c);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-1467f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.c.d * 563f), global0.c.a)))), min(reverseBits(~vec2<i32>(-30679i, u_input.a)), countOneBits(global0.c.b | reverseBits(global0.a.b))), _wgslsmith_add_u32(_wgslsmith_sub_u32(~_wgslsmith_add_u32(92416u, 10164u), ~(~17139u)), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.d))) * _wgslsmith_f_op_f32(-464f * _wgslsmith_f_op_f32(round(-1000f)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 415f) - _wgslsmith_f_op_f32(step(global0.c.a, 1089f)))))), var_1.b, ~6780u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a.a, global0.a.a))));
    return Struct_3(Struct_1(-465f, vec2<i32>(max(var_1.b.x, 0i), (0i << (u_input.b % 32u)) ^ ~1i), ~_wgslsmith_add_u32(~1u, abs(0u)), -568f), 19819i, Struct_1(-1551f, countOneBits(vec2<i32>(5559i, u_input.c << (u_input.b % 32u))), ~(~func_3(Struct_3(var_1, 0i, global0.a))), -1174f));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    let var_0 = global0.c;
    global0 = func_2(any(vec2<bool>(false, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))))), _wgslsmith_mult_u32(select(firstTrailingBit(94124u), 0u, true), ~func_3(func_2(true, 57871u))));
    global0 = func_2(false, firstLeadingBit(abs(4294967295u)));
    global0 = arg_0;
    let var_1 = all(select(vec4<bool>(true, all(vec3<bool>(true, true, true)), (arg_2.a == -1782f) & false, any(vec3<bool>(false, true, true))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), true)), true));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(2535f, vec2<i32>(~_wgslsmith_mod_i32(2142i, global0.c.b.x), 20115i), global0.c.c, 512f);
    var var_1 = var_0.a;
    var var_2 = 1000f;
    var var_3 = func_4(func_2(_wgslsmith_f_op_f32(-global0.c.d) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(global0.c.a, -301f), Struct_3(Struct_1(651f, var_0.b, u_input.b, -1000f), 0i, global0.c), Struct_2(-449f)))), global0.c.c), Struct_2(1230f), func_2(!any(vec3<bool>(false, true, false)) | (90350i != _wgslsmith_dot_vec4_i32(vec4<i32>(27455i, var_0.b.x, global0.b, global0.c.b.x), vec4<i32>(var_0.b.x, 19286i, 1i, var_0.b.x))), 4294967295u).a);
    var var_4 = vec3<i32>(func_2(false, ~global0.a.c).c.b.x, _wgslsmith_mod_i32(abs(var_0.b.x), i32(-1i) * -22302i), i32(-1i) * -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.c, 6422u), vec2<u32>(68115u, global0.a.c)), firstLeadingBit(vec2<u32>(35284u, u_input.b))), vec2<u32>(1u, 1u)) & select(reverseBits(vec2<u32>(global0.c.c, 41914u)), ~select(vec2<u32>(43389u, 27364u), vec2<u32>(0u, 50501u), true), true));
}

