struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(32254i, 18062i), vec3<i32>(0i, -34221i, 2147483647i), 1u), 26752u, 1u, false, Struct_1(vec2<i32>(-1i, -42156i), vec3<i32>(-1i, 14807i, 0i), 16193u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(459f, -1071f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1746f, 957f), vec2<f32>(711f, -1332f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(615f, -602f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-731f, -1048f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1422f, -439f)))))));
    return _wgslsmith_div_u32(1u, global0.c);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec2<i32> {
    let var_0 = vec3<f32>(971f, -1456f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-229f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(418f, -429f)))));
    global0 = Struct_2(Struct_1(vec2<i32>(arg_0.a.x, min(~arg_1.b.x, -2147483647i)), _wgslsmith_div_vec3_i32(abs(-global0.e.b), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(arg_1.b, global0.e.b), firstLeadingBit(global0.a.b))), ~global0.c ^ countOneBits(~arg_1.c)), 1u, 37789u, true, Struct_1(_wgslsmith_mult_vec2_i32(arg_0.a ^ arg_1.a, vec2<i32>(2147483647i, 0i)) | vec2<i32>(_wgslsmith_sub_i32(1i, arg_1.b.x), 1i), arg_1.b, func_2() & ~4294967295u));
    let var_1 = ~abs(_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, arg_0.c), vec2<u32>(arg_0.c, _wgslsmith_mod_u32(arg_0.c, arg_0.c))));
    let var_2 = vec4<u32>(30224u, _wgslsmith_sub_u32(63800u, _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(var_1, var_1)), 1u)), (33814u << ((var_1.x | 105342u) % 32u)) >> (~arg_0.c % 32u), 58596u);
    global0 = Struct_2(Struct_1(-arg_1.b.yx, vec3<i32>(-13032i, ~(-2147483647i) | (global0.a.b.x >> (arg_1.c % 32u)), u_input.a), ~4294967295u), countOneBits(50873u), 4294967295u, false, arg_1);
    return -arg_1.b.yx;
}

fn func_1() -> bool {
    let var_0 = global0.a.c;
    var var_1 = 1u;
    let var_2 = func_2();
    var var_3 = _wgslsmith_clamp_vec2_i32(max(-min(firstTrailingBit(global0.a.a), func_3(global0.a, global0.a, true)), ~vec2<i32>(global0.a.b.x, global0.e.a.x)), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0.e.a.x, global0.a.b.x), vec3<i32>(global0.a.b.x, -2147483647i, 51568i)), u_input.a), ~u_input.a << (global0.a.c % 32u)), global0.a.b.zy), -global0.e.a);
    global0 = Struct_2(Struct_1(max(abs(~vec2<i32>(-22483i, var_3.x)), _wgslsmith_add_vec2_i32(-vec2<i32>(-13816i, var_3.x), global0.a.b.zy << (vec2<u32>(var_2, var_2) % vec2<u32>(32u)))), vec3<i32>(84417i, -_wgslsmith_mult_i32(global0.a.b.x, global0.e.b.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(-27993i, var_3.x), i32(-1i) * -3526i)), _wgslsmith_mult_u32(min(~1u, global0.e.c), ~(~1u))), 0u, global0.a.c, all(vec2<bool>(false, global0.d)), global0.a);
    return global0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global0.d, !global0.d, global0.d, any(vec4<bool>(true, true, !global0.d, func_1())));
    let var_1 = global0.a.a.x;
    var var_2 = vec4<bool>(var_0.x, any(var_0.yxx), global0.d, global0.d);
    var var_3 = !vec3<bool>(any(!(!vec3<bool>(true, false, global0.d))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-837f + 262f), _wgslsmith_f_op_f32(trunc(314f)))) <= 514f, all(!select(vec2<bool>(true, var_0.x), var_0.xy, var_0.x)));
    var var_4 = abs(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(global0.e.c, global0.a.c, 40565u)), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, global0.a.c), _wgslsmith_dot_vec2_u32(vec2<u32>(40272u, 1u), vec2<u32>(global0.a.c, global0.c))), global0.b, global0.c)));
    let var_5 = var_4.yy;
    var var_6 = global0.a;
    var var_7 = select(vec2<bool>(true, true), var_3.xy, select(select(vec2<bool>(true, var_0.x), !var_2.yz, select(vec2<bool>(global0.d, var_0.x), select(var_3.yy, var_2.yw, var_0.zy), true)), !select(select(var_2.ww, vec2<bool>(true, true), vec2<bool>(true, true)), !vec2<bool>(var_0.x, var_0.x), var_0.wx), false));
    var var_8 = global0.e;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_8.a.x), ~(-(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 2147483647i, var_6.a.x), global0.e.b))), global0.e.b.x, -_wgslsmith_mod_vec4_i32(~vec4<i32>(-24157i, var_6.b.x, var_8.b.x, 27052i), vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.a, -2147483647i, 78276i)));
}

