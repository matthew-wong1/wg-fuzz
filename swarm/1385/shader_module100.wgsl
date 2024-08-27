struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    return -6312i;
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(611f, -1760f), vec2<f32>(145f, -1000f), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(391f, -1311f)), select(vec2<bool>(true, false), vec2<bool>(false, false), true)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(183f, 1000f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-154f, -354f)))))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-235f, 179f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -677f)))), vec2<bool>(true, true))));
    let var_1 = Struct_2(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1570f), _wgslsmith_f_op_f32(min(324f, var_0.x)), true)), 548f), Struct_1(u_input.b.x, !(!select(vec2<bool>(true, true), vec2<bool>(false, true), false)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)))), Struct_1(~25285u, vec2<bool>(true && any(vec2<bool>(false, true)), any(vec3<bool>(true, true, true))), vec4<bool>(~u_input.a.x != 1i, false, true, true)));
    var var_2 = _wgslsmith_mult_vec4_i32(-u_input.c, abs(vec4<i32>(~(~(-1i)), ~u_input.a.x, u_input.c.x, 33220i)));
    return !var_1.b.c.x;
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(trunc(724f));
    return any(!select(vec3<bool>(true, var_0 != -469f, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), func_3()), all(vec3<bool>(true, true, true)) && true));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: i32) -> u32 {
    var var_0 = vec3<u32>(min(abs(min(u_input.b.x, _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 0u))), u_input.b.x), u_input.b.x, 42902u);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -708f), _wgslsmith_f_op_f32(abs(-1348f))))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-507f, -667f), vec2<f32>(-2269f, -365f))))))));
    let var_2 = vec3<bool>(true, false, any(vec3<bool>(!(u_input.b.x != 24960u), !(!arg_0.x), (u_input.b.x & var_0.x) < 4294967295u)));
    var_1 = vec2<f32>(463f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1114f))))));
    var var_3 = ~arg_1;
    return max(~min(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.b.x, var_0.x)), abs(u_input.b.xy)), abs(max(1u, u_input.b.x))), 19897u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1300f, 475f), vec2<f32>(-291f, -134f))))) - vec2<f32>(1138f, _wgslsmith_f_op_f32(f32(-1f) * -2418f))));
    var var_1 = 2147483647i;
    var_1 = 1i;
    var_1 = (-48798i & _wgslsmith_div_i32(-49228i, func_1(vec2<bool>(false, true)) & ~u_input.c.x)) >> (func_4(!vec2<bool>(var_0.x < 769f, func_2(u_input.b.x)), -_wgslsmith_dot_vec3_i32(u_input.c.yxx, vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), u_input.c.x) % 32u);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-374f, -739f, -157f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, 221f, 1750f)))))), Struct_1(0u, select(vec2<bool>(true, true), vec2<bool>(select(true, true, true), false), all(vec4<bool>(true, true, true, true))), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), var_0.x >= var_0.x)), Struct_1(min(u_input.b.x, 1u), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), false), vec4<bool>(!(25812u != u_input.b.x), false, true, false)));
    var var_3 = select(vec4<bool>(false, false, func_2(_wgslsmith_sub_u32(4294967295u, 0u & u_input.b.x)), var_2.b.c.x), select(!select(select(vec4<bool>(false, var_2.b.b.x, true, var_2.c.b.x), vec4<bool>(var_2.c.c.x, true, var_2.c.b.x, true), vec4<bool>(var_2.c.c.x, var_2.c.b.x, true, var_2.c.c.x)), var_2.c.c, true), select(!var_2.b.c, !(!var_2.b.c), vec4<bool>(var_2.b.b.x, !var_2.c.c.x, true, u_input.c.x <= -2147483647i)), (max(u_input.b.x, u_input.b.x) >> ((4294967295u >> (u_input.b.x % 32u)) % 32u)) == 1u), false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(17446i) | _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, -23427i, u_input.a.x), -vec4<i32>(u_input.a.x, u_input.a.x, -3838i, 2147483647i))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(var_2.c.a, 0u, u_input.b.x, 0u), vec4<u32>(42443u, var_2.c.a, 12029u, 4294967295u), var_2.b.c), vec4<u32>(var_2.b.a, 1u, 1u, var_2.b.a)), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(24206u, 99618u, u_input.b.x, u_input.b.x)), vec4<u32>(var_2.b.a, 1u, u_input.b.x, 79564u))));
}

