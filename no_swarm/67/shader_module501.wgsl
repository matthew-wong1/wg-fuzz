struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: bool = false;

var<private> global2: vec2<bool>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<f32> {
    global2 = !select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(!global2.x, true), select(vec2<bool>(true, any(vec2<bool>(true, true))), !select(vec2<bool>(true, global2.x), vec2<bool>(true, global2.x), global2.x), vec2<bool>(1u <= u_input.a, global2.x)));
    let var_0 = ~(~(-firstLeadingBit(vec4<i32>(0i, -1i, 1i, 42631i))) >> (vec4<u32>(4294967295u, u_input.a, _wgslsmith_mod_u32(1u, countOneBits(u_input.a)), 1u) % vec4<u32>(32u)));
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec2_i32(-min(vec2<i32>(27156i, -1i), var_0.yw), -(~var_0.zy))) >> (5483u % 32u);
    global2 = vec2<bool>(var_0.x < max(-(~1i), firstTrailingBit(0i)), all(vec3<bool>(all(!vec2<bool>(global2.x, false)), false, global0.x > global0.x)));
    var var_2 = Struct_3(Struct_2(Struct_1(~vec3<u32>(u_input.a, 1u, u_input.a) << (firstLeadingBit(vec3<u32>(1u, 0u, u_input.a)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(-1090f, global0.x, global0.x, -407f)) - vec4<f32>(-387f, global0.x, 1133f, global0.x)))), Struct_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 32432u), vec3<u32>(0u, u_input.a, u_input.a))), Struct_1(firstTrailingBit(vec3<u32>(1u, u_input.a, 19429u) >> (vec3<u32>(u_input.a, u_input.a, 17598u) % vec3<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(floor(-674f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) + -300f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -2638f)))), global2.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-920f, global0.x), vec2<f32>(-1000f, var_2.a.e.x))))));
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a.e.x)))))), arg_0.a.e.x);
    let var_0 = ~(~(vec3<u32>(~arg_0.a.d.a.x, firstTrailingBit(u_input.a), countOneBits(4294967295u)) & vec3<u32>(4294967295u, ~27350u, 2881u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1599f - _wgslsmith_f_op_f32(trunc(-1000f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_3()))) - arg_0.a.e.xz);
    var var_2 = arg_0.a;
    return Struct_2(arg_0.a.d, arg_0.a.b, arg_0.a.d, var_2.a, arg_0.a.e);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-532f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1984f)))));
    var var_1 = Struct_2(Struct_1(abs(max(vec3<u32>(1u, 1u, 3322u) | arg_0.a.a.a, min(vec3<u32>(1u, arg_0.a.d.a.x, u_input.a), vec3<u32>(u_input.a, arg_0.a.c.a.x, u_input.a))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a.b + vec4<f32>(-1507f, 634f, 1996f, arg_0.a.e.x))) + arg_0.a.b))), arg_0.a.a, func_2(Struct_3(func_2(arg_0), false)).c, vec3<f32>(-512f, arg_1.x, _wgslsmith_f_op_f32(-222f * _wgslsmith_f_op_f32(-arg_0.a.e.x))));
    var_0 = -590f;
    global1 = any(vec3<bool>(all(!vec3<bool>(true, global2.x, false)), all(select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(global2.x, arg_0.b), vec2<bool>(true, true))), any(!select(vec4<bool>(arg_0.b, true, arg_0.b, true), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, global2.x), false))));
    var var_2 = Struct_1(_wgslsmith_mod_vec3_u32(arg_0.a.a.a, arg_0.a.a.a));
    return Struct_1(_wgslsmith_mod_vec3_u32(min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, var_2.a.x, 1u), var_2.a) & vec3<u32>(arg_0.a.d.a.x, var_1.c.a.x, 48351u), ~(~vec3<u32>(u_input.a, var_1.d.a.x, u_input.a))), var_2.a));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_3(Struct_2(Struct_1(arg_2.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 789f, global0.x, 904f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, global0.x, -785f, global0.x))))), func_4(Struct_3(func_2(Struct_3(Struct_2(Struct_1(vec3<u32>(arg_1, 1u, u_input.a)), vec4<f32>(590f, global0.x, -1175f, global0.x), arg_0, Struct_1(vec3<u32>(arg_0.a.x, 4294967295u, 1u)), vec3<f32>(-163f, global0.x, global0.x)), global2.x)), all(vec3<bool>(true, global2.x, global2.x))), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), 1357f)), func_2(Struct_3(Struct_2(arg_0, vec4<f32>(global0.x, global0.x, global0.x, 1298f), arg_2, arg_0, vec3<f32>(global0.x, 1086f, -1697f)), global2.x)).c, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, global0.x, 268f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(378f, 325f, 420f) + vec3<f32>(-297f, global0.x, global0.x)))))), any(select(!(!vec4<bool>(global2.x, false, false, false)), vec4<bool>(all(vec3<bool>(true, global2.x, true)), true, all(vec2<bool>(global2.x, global2.x)), !global2.x), vec4<bool>(false, true, true != global2.x, !global2.x))));
    global2 = select(!(!vec2<bool>(any(vec2<bool>(false, global2.x)), !global2.x)), vec2<bool>(any(select(vec4<bool>(false, var_0.b, global2.x, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), global2.x), 54913u > arg_0.a.x)), true), all(select(!vec4<bool>(true, global2.x, var_0.b, global2.x), select(select(vec4<bool>(true, true, false, global2.x), vec4<bool>(true, global2.x, true, true), global2.x), vec4<bool>(true, true, true, true), !vec4<bool>(global2.x, var_0.b, var_0.b, false)), all(vec4<bool>(false, false, true, false)))));
    global2 = vec2<bool>(select(var_0.b, true, var_0.b && all(vec2<bool>(true, false))), true);
    let var_1 = func_2(var_0);
    var var_2 = var_1.e.x;
    return i32(-1i) * -(~(~countOneBits(60594i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~((-(vec3<i32>(-1i, 1i, -22211i) << (vec3<u32>(0u, u_input.a, 36142u) % vec3<u32>(32u))) << (vec3<u32>(~7594u, u_input.a, 857u << (0u % 32u)) % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(func_1(Struct_1(vec3<u32>(33502u, u_input.a, u_input.a)), 1u, Struct_1(vec3<u32>(39963u, 0u, u_input.a))), -1527i, 1i), countOneBits(vec3<i32>(15597i, -2147483647i, 339i))));
    let var_1 = Struct_1(~(~min(vec3<u32>(0u, 0u, 33981u), vec3<u32>(1u, u_input.a, 4294967295u))) >> (~vec3<u32>(~u_input.a, 10591u >> (u_input.a % 32u), _wgslsmith_add_u32(0u, 0u)) % vec3<u32>(32u)));
    let var_2 = vec3<i32>(select(17161i, var_0.x, global2.x | global2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(~1i, -_wgslsmith_mult_i32(-6800i, var_0.x), select(-var_0.x, abs(var_0.x), true)), firstTrailingBit(min(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(var_0.x, var_0.x, -2147483647i)))), -(~func_1(Struct_1(var_1.a), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), var_1.a), Struct_1(vec3<u32>(u_input.a, 39270u, u_input.a)))));
    global1 = !global2.x;
    let var_3 = global0.x;
    var var_4 = firstTrailingBit(_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(27888i, -1i, var_0.x, -2147483647i) | vec4<i32>(-2147483647i, 35698i, var_0.x, -13261i)), ~min(vec4<i32>(5867i, var_2.x, 0i, 1i), vec4<i32>(var_2.x, var_2.x, -18321i, var_0.x))));
    global1 = all(vec3<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(false, global2.x), global2.x)), true, !global2.x));
    var var_5 = abs(var_1.a ^ var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(-303f);
}

