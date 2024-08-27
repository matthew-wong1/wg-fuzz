struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    global1 = !select(select(vec2<bool>(true, all(vec2<bool>(true, true))), vec2<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(global1.x, global1.x, true))), global1.x), select(select(vec2<bool>(true, true), !vec2<bool>(global1.x, global1.x), any(vec3<bool>(false, false, global1.x))), vec2<bool>(u_input.a == u_input.a, true), true), select(vec2<bool>(true, true), !(!vec2<bool>(global1.x, true)), !global1.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-471f))));
}

fn func_2() -> i32 {
    let var_0 = Struct_2(true);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -374f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(306f * -1072f), 1273f, _wgslsmith_f_op_f32(trunc(126f))))));
    var var_2 = -max(vec4<i32>(0i, -2147483647i, min(select(u_input.a, u_input.a, var_0.a), u_input.a), -13126i), countOneBits(select(reverseBits(vec4<i32>(1i, u_input.a, -1i, 2147483647i)), max(vec4<i32>(u_input.a, u_input.a, 2147483647i, -82255i), vec4<i32>(u_input.a, 42432i, 0i, u_input.a)), !vec4<bool>(false, true, var_0.a, global1.x))));
    global0 = array<Struct_1, 27>();
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1 + vec3<f32>(-470f, -245f, var_1.x))) + _wgslsmith_f_op_vec3_f32(step(var_1, vec3<f32>(var_1.x, 546f, var_1.x)))))));
    return var_2.x;
}

fn func_1(arg_0: bool) -> i32 {
    global0 = array<Struct_1, 27>();
    global1 = !vec2<bool>(!(true & !global1.x), -_wgslsmith_mod_i32(-2744i, -5444i) >= func_2());
    let var_0 = Struct_3(firstLeadingBit(vec4<u32>(0u, 58228u, 0u, 28206u)), select(select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(u_input.a >= 29009i, true, false), global1.x), select(vec3<bool>(true, true, !global1.x), !(!vec3<bool>(arg_0, global1.x, global1.x)), !select(vec3<bool>(global1.x, true, true), vec3<bool>(true, global1.x, false), vec3<bool>(arg_0, arg_0, true))), select(select(vec3<bool>(arg_0, arg_0, true), select(vec3<bool>(global1.x, false, false), vec3<bool>(true, true, arg_0), vec3<bool>(false, false, true)), true), select(select(vec3<bool>(true, false, arg_0), vec3<bool>(global1.x, true, arg_0), vec3<bool>(true, global1.x, false)), vec3<bool>(false, global1.x, false), arg_0), global1.x)), global0[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(~10902u, firstLeadingBit(0u))), 27u)]);
    let var_1 = _wgslsmith_div_f32(-1367f, var_0.c.a.x);
    global0 = array<Struct_1, 27>();
    return ~(~_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.a, 2147483647i), min(-vec3<i32>(u_input.a, -7935i, 23422i), -vec3<i32>(u_input.a, -2147483647i, -57843i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global1.x);
    let var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -1i, reverseBits(-u_input.a), _wgslsmith_mult_i32(func_1(var_0.a), u_input.a)), ~vec4<i32>(u_input.a, -28054i, u_input.a, u_input.a ^ 21012i)), ~vec4<i32>(~u_input.a, u_input.a | 24409i, u_input.a, _wgslsmith_mod_i32(-18051i, 27594i)) ^ (min(vec4<i32>(u_input.a, 41570i, u_input.a, 35198i), vec4<i32>(1i, u_input.a, 2147483647i, u_input.a) >> (vec4<u32>(46909u, 0u, 3825u, 74265u) % vec4<u32>(32u))) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), -reverseBits(vec4<i32>(u_input.a, 47659i, 55084i, abs(u_input.a))));
    var var_2 = global0[_wgslsmith_index_u32(21874u ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(62497u, 1u), vec2<u32>(4294967295u, 15085u), vec2<u32>(78229u, 0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(22485u, 0u), vec2<u32>(49211u, 1u)), !vec2<bool>(var_0.a, true))), 27u)];
    var var_3 = Struct_2(var_0.a);
    var var_4 = firstLeadingBit(1i);
    var var_5 = !(!any(select(vec2<bool>(true, true), !vec2<bool>(var_0.a, var_0.a), !vec2<bool>(true, var_3.a))));
    var var_6 = Struct_3(abs(~(~vec4<u32>(1u, 1u, 1u, 1u))), !select(vec3<bool>(true, true, true && global1.x), select(select(vec3<bool>(var_0.a, var_3.a, var_3.a), vec3<bool>(true, var_0.a, true), vec3<bool>(false, global1.x, global1.x)), select(vec3<bool>(var_0.a, global1.x, true), vec3<bool>(true, false, true), global1.x), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(global1.x, global1.x, var_0.a))), true), Struct_1(var_2.a));
    var_4 = -select(9652i, -(~var_1.x ^ -2147483647i), any(select(!vec4<bool>(global1.x, var_6.b.x, global1.x, global1.x), select(vec4<bool>(global1.x, true, false, var_3.a), vec4<bool>(true, false, false, true), var_3.a), all(vec2<bool>(global1.x, global1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

