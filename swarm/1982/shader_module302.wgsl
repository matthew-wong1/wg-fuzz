struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(89u, 1u);

var<private> global1: vec2<f32> = vec2<f32>(-1200f, -550f);

var<private> global2: bool = true;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1679f, arg_2, global1.x, global1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -375f, arg_2, arg_2))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-487f, global1.x, 2104f, arg_2) * vec4<f32>(arg_3.b.e, arg_3.b.e, -1000f, -1000f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-809f, _wgslsmith_f_op_f32(f32(-1f) * -253f), _wgslsmith_f_op_f32(arg_3.a.x + 646f), arg_2) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2850f, arg_2, -411f, -687f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2, global1.x, -2429f, 594f))))), !select(!vec4<bool>(false, arg_0.c, arg_0.c, arg_3.b.a), !vec4<bool>(arg_3.b.a, arg_3.b.d.c, arg_0.c, arg_0.c), vec4<bool>(arg_3.b.a, true, false, arg_0.c)))));
    var var_1 = var_0.wy;
    var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), var_1.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_3.a.zz, arg_3.a.yx)) + arg_3.a.xx)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.x, arg_3.b.c))))) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_3.a.x, -1473f), vec2<f32>(arg_3.b.e, -1457f)))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))))), _wgslsmith_f_op_f32(sign(arg_3.a.x))), vec2<bool>(!any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), false)));
    var var_2 = vec2<bool>(select(arg_0.c, true, arg_0.c), !arg_0.c);
    var_2 = select(vec2<bool>(any(!vec4<bool>(arg_0.c, false, var_2.x, var_2.x)), true), vec2<bool>(arg_0.c, !(_wgslsmith_f_op_f32(-global1.x) != -940f)), vec2<bool>(arg_0.c, any(!(!vec3<bool>(var_2.x, arg_3.b.d.c, false)))));
    return max(select(_wgslsmith_div_vec3_i32(~vec3<i32>(1i, arg_1.x, arg_3.b.d.a.x) >> (u_input.a.zyw % vec3<u32>(32u)), ~_wgslsmith_div_vec3_i32(arg_3.b.d.a, arg_0.a)), -select(~vec3<i32>(2742i, -2147483647i, arg_3.b.d.a.x), vec3<i32>(u_input.b, -8362i, u_input.b), !vec3<bool>(false, false, arg_3.b.a)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(arg_3.b.d.c, true, var_2.x), vec3<bool>(var_2.x, true, true), false), true), select(select(vec3<bool>(false, var_2.x, true), vec3<bool>(arg_0.c, arg_3.b.d.c, false), vec3<bool>(true, false, false)), vec3<bool>(var_2.x, arg_0.c, arg_0.c), select(vec3<bool>(var_2.x, arg_0.c, var_2.x), vec3<bool>(arg_3.b.d.c, true, true), false)), arg_3.b.d.c)), vec3<i32>(u_input.b, -9096i, _wgslsmith_sub_i32(select(arg_0.a.x, -arg_0.a.x, var_2.x & arg_0.c), firstTrailingBit(arg_0.a.x) | _wgslsmith_add_i32(arg_0.a.x, -18686i))));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: f32) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2, arg_2, -1029f), vec3<f32>(1000f, 591f, arg_2))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, -710f) + vec3<f32>(757f, arg_2, -1138f)))))), Struct_2(true, vec4<u32>(~firstTrailingBit(15491u), ~(~global0.x), ~(~4294967295u), 14130u), 383f, Struct_1(func_3(Struct_1(vec3<i32>(arg_0, 0i, u_input.b), 13014u, false), ~vec2<i32>(u_input.b, 0i), 1039f, Struct_3(vec3<f32>(arg_2, 2291f, 998f), Struct_2(false, vec4<u32>(arg_1.x, 4294967295u, global0.x, arg_1.x), 1000f, Struct_1(vec3<i32>(arg_0, arg_0, u_input.b), 9473u, true), arg_2), arg_1.x)), u_input.a.x, false), 555f), _wgslsmith_sub_u32(_wgslsmith_div_u32(global0.x ^ arg_1.x, 32806u), 4294967295u));
    let var_1 = _wgslsmith_sub_vec4_i32(select(~(~vec4<i32>(arg_0, u_input.b, 1i, u_input.b)), countOneBits(vec4<i32>(arg_0, -53742i, var_0.b.d.a.x, u_input.b) >> (u_input.a % vec4<u32>(32u))) >> (reverseBits(vec4<u32>(var_0.b.b.x, global0.x, arg_1.x, arg_1.x)) % vec4<u32>(32u)), select(select(vec4<bool>(false, true, var_0.b.d.c, var_0.b.d.c), select(vec4<bool>(false, true, var_0.b.a, var_0.b.d.c), vec4<bool>(true, true, var_0.b.d.c, true), vec4<bool>(var_0.b.a, var_0.b.a, false, true)), select(vec4<bool>(false, var_0.b.a, var_0.b.d.c, true), vec4<bool>(var_0.b.a, false, false, false), var_0.b.d.c)), select(select(vec4<bool>(true, var_0.b.d.c, false, true), vec4<bool>(var_0.b.a, true, true, var_0.b.a), vec4<bool>(var_0.b.a, var_0.b.a, var_0.b.d.c, true)), !vec4<bool>(true, false, var_0.b.d.c, var_0.b.a), all(vec3<bool>(var_0.b.d.c, true, true))), vec4<bool>(var_0.b.d.c, true, true, true))), vec4<i32>(u_input.b, -(firstLeadingBit(var_0.b.d.a.x) >> (4294967295u % 32u)), _wgslsmith_dot_vec3_i32(var_0.b.d.a, select(var_0.b.d.a, -var_0.b.d.a, select(vec3<bool>(var_0.b.d.c, var_0.b.a, var_0.b.a), vec3<bool>(var_0.b.d.c, var_0.b.d.c, var_0.b.d.c), vec3<bool>(var_0.b.d.c, false, var_0.b.d.c)))), arg_0));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-arg_2), 660f, _wgslsmith_f_op_f32(arg_2 * -808f));
    var var_3 = any(select(!vec2<bool>(true, !var_0.b.a), !select(select(vec2<bool>(true, false), vec2<bool>(false, var_0.b.d.c), false), !vec2<bool>(true, var_0.b.d.c), var_0.b.a), true));
    global1 = var_2.zz;
    return var_0.b;
}

fn func_1(arg_0: u32, arg_1: bool) -> vec3<f32> {
    global2 = false;
    let var_0 = func_2(~u_input.b, (_wgslsmith_mult_vec2_u32(~u_input.a.zw, ~u_input.a.zx) & u_input.a.wx) << (~(~u_input.a.yy) % vec2<u32>(32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-886f * _wgslsmith_f_op_f32(sign(853f))), 1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-633f, -548f, false)), 886f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + -1365f) + -2706f))))));
    global0 = countOneBits(vec2<u32>(min(global0.x, 0u), _wgslsmith_div_u32(_wgslsmith_div_u32(abs(12457u), 4294967295u), 1u)));
    global2 = any(vec3<bool>(all(select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(arg_1, var_0.a, true, false), arg_1)), any(!(!vec2<bool>(arg_1, arg_1))), var_0.d.c));
    global2 = !(all(select(select(vec4<bool>(true, var_0.d.c, true, arg_1), vec4<bool>(arg_1, true, false, true), arg_1), !vec4<bool>(arg_1, true, true, arg_1), arg_1)) && false);
    return vec3<f32>(var_0.e, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-378f * var_0.c) - 303f));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_2 {
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global0.x;
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-430f + _wgslsmith_f_op_f32(trunc(global1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -123f), global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), -1276f), func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -166f), global1.x, !any(vec4<bool>(false, false, false, true)))), _wgslsmith_sub_u32(global0.x, u_input.a.x), Struct_3(_wgslsmith_f_op_vec3_f32(func_1(countOneBits(33306u), u_input.a.x < 1u)), Struct_2(true, ~u_input.a, _wgslsmith_f_op_f32(-global1.x), Struct_1(vec3<i32>(13867i, u_input.b, u_input.b), 0u, true), _wgslsmith_f_op_f32(f32(-1f) * -714f)), global0.x), Struct_1(~vec3<i32>(u_input.b, u_input.b, 16880i), global0.x, false)), ((u_input.a.x >> (global0.x % 32u)) >> (~0u % 32u)) & 0u);
    global2 = func_2(~(var_1.b.d.a.x | max(1i, func_4(544f, 14451u, Struct_3(var_1.a, var_1.b, 50566u), Struct_1(var_1.b.d.a, global0.x, false)).d.a.x)), func_2((i32(-1i) * -2147483647i) << (global0.x % 32u), _wgslsmith_mod_vec2_u32(~var_1.b.b.zx, vec2<u32>(53694u, 11500u)), global1.x).b.wy << (var_1.b.b.wz % vec2<u32>(32u)), -589f).d.c;
    var var_2 = var_1.b.d.c;
    var var_3 = -(~(~_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-1i, 0i, var_1.b.d.a.x, 0i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -1i, u_input.b, var_1.b.d.a.x), vec4<i32>(u_input.b, 12809i, -2147483647i, 0i)))));
    var_2 = all(!vec2<bool>(any(select(vec3<bool>(var_1.b.a, var_1.b.d.c, true), vec3<bool>(false, var_1.b.a, true), vec3<bool>(var_1.b.d.c, var_1.b.d.c, false))), all(!vec2<bool>(var_1.b.a, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(var_1.a.zy)), ~4294967295u);
}

