struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 28>;

var<private> global1: i32 = -526i;

var<private> global2: f32 = -1000f;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-844f, -717f))), -277f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(399f)), _wgslsmith_f_op_f32(1020f + 2085f)), -908f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-632f * 698f), _wgslsmith_div_f32(-685f, -265f), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 258f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(305f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-243f, -1558f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), all(vec3<bool>(true, true, false))))), vec3<bool>(true, true, true), ~max(1u | u_input.b.x, 0u));
    var var_1 = Struct_1(var_0.a, vec3<bool>(select(true, var_0.b.x, var_0.b.x), !((var_0.c & u_input.b.x) < 0u), max(~u_input.a, _wgslsmith_mod_u32(var_0.c, u_input.b.x)) < ((12430u & var_0.c) & select(var_0.c, u_input.c.x, true))), 0u & (var_0.c << (abs(21060u) % 32u)));
    var var_2 = ~(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 19103u, 35384u), vec3<u32>(var_0.c, var_1.c, 44437u))), ~var_1.c, var_1.c, var_1.c));
    global1 = _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(-1i, 1i) << (_wgslsmith_sub_u32(42815u, var_1.c) % 32u)), ~(-9597i));
    let var_3 = select(true, false, !(_wgslsmith_f_op_f32(-var_1.a.x) < 360f));
    return 141f;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = arg_3.a.x;
    global0 = array<vec2<i32>, 28>();
    global2 = _wgslsmith_f_op_f32(func_3());
    global2 = _wgslsmith_f_op_f32(func_3());
    global2 = 1649f;
    return arg_3.a;
}

fn func_1() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_2(min(0u, 43314u) < _wgslsmith_mod_u32(u_input.b.x, u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 0u, 4269u, u_input.c.x), ~vec4<u32>(u_input.a, u_input.b.x, u_input.a, u_input.a)), ~(vec4<u32>(49531u, 0u, 4294967295u, u_input.b.x) ^ vec4<u32>(15290u, u_input.b.x, u_input.b.x, u_input.b.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1151f, 574f, -928f, -966f)), vec3<bool>(true, true, true), ~10465u))))), vec3<bool>(any(vec4<bool>(true, true, true, true)) == true, !any(vec3<bool>(false, true, true)), !((u_input.b.x & u_input.a) >= 1u)), 0u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-var_0.a.ywy);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(174f))), 1000f))), var_0.b, min(countOneBits(var_0.c ^ var_0.c), ~0u));
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x * var_0.a.x)));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -166f);
    return -785f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(621f, 443f), _wgslsmith_f_op_f32(trunc(590f)))) - -641f), _wgslsmith_f_op_f32(min(-503f, -929f)), _wgslsmith_f_op_f32(func_1()), 284f);
    var var_1 = _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))))));
    let var_2 = ~countOneBits(abs(9822u) ^ u_input.c.x);
    let var_3 = ~(~(min(vec3<i32>(1i, -2147483647i, 0i), vec3<i32>(2147483647i, -18525i, 2147483647i)) >> (u_input.c % vec3<u32>(32u)))) & vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-32743i, 44404i, -23944i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(-2147483647i, 4022i, countOneBits(-20957i), 1i)), 1i);
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))))), vec3<bool>(true, !select(false, true, any(vec4<bool>(true, false, true, false))), -1000f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-403f)))), 1u);
    var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(var_4.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(var_4.a, vec4<f32>(var_4.a.x, 787f, var_0.x, var_0.x)))))), var_4.a, true)), !(!var_4.b), ~(countOneBits(var_4.c) >> (u_input.a % 32u)) & ~0u);
    global1 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(-615f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1242f)))), 19082i);
}

