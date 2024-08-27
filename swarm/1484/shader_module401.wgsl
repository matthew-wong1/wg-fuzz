struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec4<f32> {
    let var_0 = firstLeadingBit(~global0.c.x) << (~global0.c.x % 32u);
    var var_1 = Struct_3(global0.b.zxy, countOneBits(~(~1u)), _wgslsmith_add_vec2_u32(abs(global0.c.yy), vec2<u32>(1u, select(_wgslsmith_mod_u32(var_0, var_0), ~0u, false))));
    var var_2 = global0.b.yxz;
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1571f, 951f)), _wgslsmith_f_op_f32(338f * 959f)))), firstLeadingBit(~(~_wgslsmith_clamp_u32(var_0, global0.c.x, 42192u))), vec2<u32>(select(~0u, global0.c.x, global0.e.x), ~4294967295u));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.yx))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1003f), _wgslsmith_f_op_f32(-1898f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + -376f), var_2.x)), _wgslsmith_f_op_f32(-global0.a.x), 283f), ~(~_wgslsmith_div_vec3_u32(global0.c, global0.c >> (vec3<u32>(4294967295u, var_0, 106044u) % vec3<u32>(32u)))), any(select(global0.e, !global0.e, select(!vec2<bool>(true, global0.d), !global0.e, true))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, global0.e.x), vec2<bool>(false, false), vec2<bool>(true, global0.d)), vec2<bool>(true, any(global0.e))), select(select(global0.e, select(vec2<bool>(global0.d, global0.e.x), global0.e, true), false), vec2<bool>(all(vec3<bool>(global0.d, false, global0.e.x)), true | global0.e.x), false & (false == global0.e.x)), select(vec2<bool>(global0.e.x, global0.e.x), select(vec2<bool>(false, global0.e.x), global0.e, global0.e), !(global0.b.x >= global0.b.x))));
    return _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(round(var_1.a.x)))), global0.b.x, -1653f, global0.b.x)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> f32 {
    global0 = arg_3;
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())))), Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(global0.b.x, arg_1), -309f))), vec4<f32>(global0.b.x, global0.a.x, _wgslsmith_f_op_f32(floor(-1508f)), 1f), select(vec3<u32>(global0.c.x, 4294967295u, 4294967295u) | arg_3.c, vec3<u32>(abs(18870u), arg_3.c.x | 94258u, reverseBits(0u)), vec3<bool>(all(vec4<bool>(true, false, arg_2.x, global0.d)), arg_0 >= arg_0, any(arg_2.zx))), arg_3.e.x, vec2<bool>(!all(arg_3.e), -u_input.a.x <= reverseBits(-2147483647i))), arg_3, arg_3);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.b.yw), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, -639f) * vec2<f32>(var_0.c.b.x, 135f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.b))))), arg_3.c, true, select(!var_0.b.e, vec2<bool>(all(select(vec3<bool>(global0.d, arg_2.x, true), vec3<bool>(var_0.b.e.x, arg_3.e.x, false), true)), var_0.c.d), arg_2.x));
    let var_1 = _wgslsmith_sub_i32(firstLeadingBit(arg_0), arg_0) << (var_0.c.c.x % 32u);
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_3.b.xzz))), ~(global0.c.x ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.c.x, arg_3.c.x, 1u), ~arg_3.c)), arg_3.c.xx);
    return arg_3.b.x;
}

fn func_1(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(11578i, arg_0.d.a.x, vec4<bool>(global0.d, false, false, true), arg_0.c)), arg_0.b.b.x)))), _wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(202f, -384f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -631f) - global0.b.x)))));
    var var_1 = 0u == arg_0.b.c.x;
    return select(vec4<bool>(!all(!vec4<bool>(arg_0.b.e.x, arg_0.c.e.x, false, global0.e.x)), true, arg_0.c.e.x, all(select(select(vec4<bool>(true, arg_0.d.e.x, false, false), vec4<bool>(false, false, arg_0.d.e.x, false), arg_0.d.e.x), vec4<bool>(global0.d, true, global0.e.x, arg_0.b.d), true))), select(select(!vec4<bool>(arg_0.b.e.x, false, global0.e.x, false), !select(vec4<bool>(true, false, arg_0.d.d, global0.e.x), vec4<bool>(true, true, arg_0.b.e.x, true), vec4<bool>(true, arg_0.c.e.x, arg_0.c.e.x, false)), !vec4<bool>(true, global0.e.x, arg_0.d.d, arg_0.c.d)), select(vec4<bool>(!arg_0.d.e.x, arg_0.b.d, true, true), select(!vec4<bool>(false, false, arg_0.b.e.x, arg_0.b.e.x), vec4<bool>(false, false, global0.d, true), select(vec4<bool>(false, false, true, global0.d), vec4<bool>(arg_0.d.e.x, arg_0.c.d, true, true), vec4<bool>(false, global0.d, false, arg_0.d.d))), any(!vec4<bool>(global0.d, true, arg_0.b.d, true))), !vec4<bool>(any(vec3<bool>(true, false, false)), false & global0.d, arg_0.d.d, 0u != arg_0.c.c.x)), any(vec3<bool>(arg_0.b.d, !global0.d, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b.x;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.a.x)), _wgslsmith_f_op_f32(step(-1056f, global0.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-234f, global0.a.x) - global0.b.yz)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-274f, 331f), vec2<f32>(-258f, 857f))))))), _wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(max(global0.c, vec3<u32>(23241u, 97481u, global0.c.x)), global0.c), ~_wgslsmith_mult_vec3_u32(max(vec3<u32>(0u, global0.c.x, global0.c.x), vec3<u32>(global0.c.x, global0.c.x, global0.c.x)), global0.c & global0.c)), false, global0.e);
    let var_1 = vec4<bool>(true, all(!select(vec4<bool>(global0.e.x, false, global0.d, global0.e.x), select(vec4<bool>(global0.e.x, true, true, true), vec4<bool>(true, global0.d, false, true), global0.d), func_1(Struct_2(vec4<f32>(global0.b.x, -943f, global0.a.x, -468f), Struct_1(vec2<f32>(global0.b.x, global0.b.x), global0.b, vec3<u32>(global0.c.x, global0.c.x, 0u), false, global0.e), Struct_1(vec2<f32>(global0.b.x, -286f), vec4<f32>(global0.b.x, global0.b.x, -1360f, global0.a.x), global0.c, global0.d, vec2<bool>(true, global0.e.x)), Struct_1(vec2<f32>(global0.a.x, -1464f), vec4<f32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), vec3<u32>(15282u, global0.c.x, global0.c.x), global0.e.x, global0.e))))), all(select(select(global0.e, vec2<bool>(true, true), vec2<bool>(global0.e.x, true)), global0.e, vec2<bool>(global0.d, global0.e.x))) && true, (_wgslsmith_mod_i32(firstTrailingBit(u_input.a.x), ~0i) < ~u_input.a.x) | false);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(2713f)), _wgslsmith_f_op_f32(floor(1000f))))), global0.a.x, global0.b.x, _wgslsmith_f_op_f32(func_2(-max(u_input.a.x, 2147483647i), 1057f, !var_1, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1614f, -184f))), global0.a), global0.b, vec3<u32>(_wgslsmith_clamp_u32(100035u, 4294967295u, 4294967295u), 4294967295u >> (global0.c.x % 32u), 1u), all(var_1.xwy), select(vec2<bool>(true, false), global0.e, select(vec2<bool>(var_1.x, var_1.x), global0.e, var_1.zw))))));
    var_0 = 525f;
    var var_3 = !all(var_1) != (var_1.x && true);
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, min(i32(-1i) * -2147483647i, firstLeadingBit(u_input.a.x)), ~vec3<u32>(_wgslsmith_add_u32(global0.c.x, 41832u << (global0.c.x % 32u)), 109469u, global0.c.x), firstTrailingBit(47595u), global0.c.x);
}

