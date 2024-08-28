struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, true, false, true)), vec2<bool>(false, true));

var<private> global1: vec2<bool>;

var<private> global2: f32 = -844f;

var<private> global3: bool = true;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = arg_0;
    return vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1009f))));
}

fn func_2() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(u_input.c, global0.a.a, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, reverseBits(-8928i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 1i, -2147483647i), vec3<i32>(-31568i, 1i, -28446i))), Struct_1(global0.a.a))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1186f, 2517f))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(795f, 1848f))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(377f, -1773f)))))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = 13601u;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-951f, -1000f), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1498f))));
    let var_2 = ~reverseBits(arg_0);
    let var_3 = _wgslsmith_f_op_vec2_f32(func_2());
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -968f);
    return Struct_2(global0.a, Struct_1(global0.b.a), !global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(all(select(!(!global0.a.a), !vec4<bool>(false, global1.x, global0.c.x, global1.x), vec4<bool>(false && global1.x, true, false, false))), false);
    let var_1 = _wgslsmith_f_op_f32(ceil(414f));
    var var_2 = global0.a;
    let var_3 = Struct_2(global0.a, global0.a, !(!global0.b.a.ww));
    global0 = func_1(~reverseBits(46102i), any(vec4<bool>((global1.x == global0.a.a.x) | true, select(!var_3.a.a.x, global0.b.a.x, true), !(!var_2.a.x), !(var_1 >= var_1))), !var_3.b.a.wy);
    global2 = _wgslsmith_f_op_vec2_f32(func_2()).x;
    let var_4 = func_1(_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.c.x ^ (1i ^ u_input.b.x), u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, u_input.a.x, 5898i)), 0i), var_0.x, global0.b.a.xx).b;
    let var_5 = _wgslsmith_clamp_vec2_i32(u_input.b, ~(~(-u_input.b)) << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), 1u) % vec2<u32>(32u)), -(u_input.a.xz ^ (vec2<i32>(u_input.a.x, -639i) & u_input.a.zx)) ^ (_wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.c.x, u_input.c.x)), reverseBits(u_input.c)) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~4294967295u, 1u, false), countOneBits(u_input.b.x), -1757f, ~61737i << (~_wgslsmith_add_u32(0u >> (0u % 32u), firstTrailingBit(4294967295u)) % 32u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, _wgslsmith_div_f32(var_1, var_1), var_1, _wgslsmith_f_op_f32(-var_1)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, 1249f)), vec4<f32>(_wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(abs(var_1)), var_1, _wgslsmith_f_op_f32(-1000f + var_1)))), vec4<bool>(select(false, false && var_4.a.x, global0.a.a.x), !var_3.b.a.x && false, true, global0.a.a.x))));
}

