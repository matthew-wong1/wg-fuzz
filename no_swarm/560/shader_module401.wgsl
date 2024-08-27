struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

var<private> global1: vec4<f32> = vec4<f32>(-127f, -2009f, 359f, 1613f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> i32 {
    let var_0 = vec4<u32>(56573u, _wgslsmith_mod_u32(abs(~(u_input.a ^ 0u)), global0[_wgslsmith_index_u32(0u, 3u)]), 1u, abs(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.c, 0u), ~4294967295u) ^ u_input.c));
    var var_1 = arg_2.a;
    let var_2 = vec4<bool>(true, true, true, true);
    var_1 = Struct_1(0i);
    var_1 = arg_2.a;
    return _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b.zwy, arg_2.d.xxz), _wgslsmith_mult_vec3_i32(arg_2.d.xxw, countOneBits(~(arg_2.d.wxy >> (vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)], var_0.x) % vec3<u32>(32u))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_div_vec2_i32(select(-_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(-1i, 5949i)), vec2<i32>(u_input.b.x, u_input.b.x)), ~_wgslsmith_mod_vec2_i32(-u_input.b.ww, vec2<i32>(u_input.b.x, -14847i)), vec2<bool>(true, true)), u_input.b.yy);
    let var_1 = u_input.b.x;
    let var_2 = Struct_3(~var_1, vec3<bool>(any(vec2<bool>(all(vec4<bool>(false, true, false, true)), all(vec4<bool>(false, true, true, false)))), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true), Struct_2(Struct_1(func_1(firstTrailingBit(-1i), Struct_2(Struct_1(36014i), Struct_1(var_0.x), 241f, vec4<i32>(1i, -7156i, 2147483647i, -2147483647i)), Struct_2(Struct_1(var_1), Struct_1(var_0.x), global1.x, u_input.b), -7656i)), Struct_1(-var_1), global1.x, ~vec4<i32>(1i, max(-1i, u_input.b.x), -24735i, var_1)), (_wgslsmith_add_i32(1i, min(-2343i, var_1)) < _wgslsmith_mult_i32(firstLeadingBit(-80229i), u_input.b.x)) || any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), false), true)));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, global1.x)))))), _wgslsmith_f_op_f32(floor(var_2.c.c))));
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-796f, var_2.c.c, global1.x, 678f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.c));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: vec3<u32>) -> bool {
    global0 = array<u32, 3>();
    var var_0 = Struct_1(5251i);
    var var_1 = arg_0;
    let var_2 = ~vec3<u32>(arg_3.x, u_input.c, ~_wgslsmith_mod_u32(~57358u, 1u));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.c, var_1.c)) * arg_1), arg_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(arg_2, 47160u, 4294967295u, global0[_wgslsmith_index_u32(arg_3.x, 3u)]), var_2, vec4<u32>(0u, 0u, 62450u, global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(6229u, 3u)], 0u))) - _wgslsmith_f_op_f32(round(509f))), global1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-657f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1618f)))))), _wgslsmith_f_op_f32(f32(-1f) * -286f));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(20212i), Struct_1(countOneBits(u_input.b.x)), global1.x, vec4<i32>(func_1(u_input.b.x, Struct_2(Struct_1(u_input.b.x), Struct_1(u_input.b.x), _wgslsmith_f_op_f32(abs(global1.x)), -vec4<i32>(u_input.b.x, u_input.b.x, -1i, -2147483647i)), Struct_2(Struct_1(u_input.b.x), Struct_1(u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -603f), -vec4<i32>(23445i, -2770i, u_input.b.x, u_input.b.x)), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x) << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.c, 3u)], 3u)] % 32u)), u_input.b.x, -(~2147483647i), -(u_input.b.x ^ u_input.b.x) << (9573u % 32u)));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1503f, var_0.c, 2011f, -461f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 521f, 676f, -958f))), vec4<f32>(_wgslsmith_f_op_f32(global1.x * global1.x), global1.x, -1014f, _wgslsmith_f_op_f32(var_0.c - 358f)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1222f + -685f))) * 973f), -811f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-660f - 1650f), _wgslsmith_f_op_f32(834f + global1.x)))), _wgslsmith_f_op_f32(floor(1327f))));
    var var_1 = all(select(vec4<bool>(any(vec2<bool>(true, true)), true, true, true), vec4<bool>(select(false, func_2(Struct_2(var_0.a, var_0.b, global1.x, vec4<i32>(15553i, var_0.d.x, u_input.b.x, u_input.b.x)), var_0.c, u_input.a, vec3<u32>(u_input.a, u_input.c, 1u)), func_2(var_0, 300f, global0[_wgslsmith_index_u32(4294967295u, 3u)], vec3<u32>(u_input.c, 61357u, 1u))), true, true, all(vec4<bool>(false, false, false, true))), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true), vec4<bool>(false, false, true, true), -1307f > var_0.c), vec4<bool>(true, true, select(false, true, true), u_input.a >= 20560u), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true))));
    global0 = array<u32, 3>();
    let var_2 = 1u;
    var var_3 = u_input.c;
    global0 = array<u32, 3>();
    var var_4 = ~u_input.b;
    var_1 = ~(-6536i) >= _wgslsmith_sub_i32(-38920i, ~(-u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, global0[_wgslsmith_index_u32(~var_2, 3u)]);
}

