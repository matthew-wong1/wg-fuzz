struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<i32>(1i, -1i, -17362i, -10519i)), Struct_1(vec4<i32>(i32(-2147483648), 20111i, 2147483647i, i32(-2147483648))), 1231f, vec4<bool>(true, false, true, false));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_2(arg_1.a, Struct_1(max(-vec4<i32>(7905i, 0i, 0i, arg_0.b.a.x) ^ ~arg_1.b.a, _wgslsmith_mult_vec4_i32(global1.b.a | vec4<i32>(arg_1.a.a.x, -50116i, u_input.c.x, arg_1.a.a.x), -arg_2.a.a))), _wgslsmith_f_op_f32(1182f * _wgslsmith_f_op_f32(exp2(arg_2.c))), vec4<bool>(!(41832u == u_input.e) || all(arg_0.d), true, !any(global1.d) && all(!arg_2.d.xxy), true));
    return 0u;
}

fn func_2() -> f32 {
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.d.x), 47307u ^ ~u_input.d.x, (func_3(Struct_2(Struct_1(vec4<i32>(61075i, -13259i, -7844i, -26080i)), global1.a, global1.c, global1.d), Struct_2(Struct_1(vec4<i32>(0i, global1.a.a.x, 37076i, 679i)), global1.a, -944f, global1.d), Struct_2(global1.a, Struct_1(vec4<i32>(global1.a.a.x, u_input.b, 47434i, -55389i)), global0.x, global1.d)) | _wgslsmith_dot_vec2_u32(u_input.d, reverseBits(vec2<u32>(u_input.d.x, u_input.d.x)))) & 0u, u_input.e);
    var var_1 = ~48584u;
    global1 = Struct_2(global1.a, Struct_1(vec4<i32>(global1.a.a.x, firstTrailingBit(firstTrailingBit(3966i)), u_input.c.x, _wgslsmith_mult_i32(0i, -51856i))), 1706f, global1.d);
    let var_2 = _wgslsmith_f_op_f32(exp2(global1.c));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(284f * _wgslsmith_f_op_f32(1093f + 759f)), _wgslsmith_f_op_f32(1298f + _wgslsmith_f_op_f32(min(1000f, 945f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1368f - global0.x))));
    return _wgslsmith_f_op_f32(ceil(1506f));
}

fn func_1(arg_0: Struct_2) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(313f, global1.c) + vec2<f32>(arg_0.c, global1.c)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(func_2()), arg_0.c)))));
    var var_0 = -1000f;
    var var_1 = Struct_2(global1.a, Struct_1(_wgslsmith_mult_vec4_i32(~reverseBits(global1.a.a), vec4<i32>(_wgslsmith_div_i32(global1.b.a.x, u_input.b), global1.a.a.x, ~u_input.a.x, firstTrailingBit(arg_0.a.a.x)))), global1.c, global1.d);
    let var_2 = global0.x;
    var var_3 = arg_0.a;
    return global1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(max(~_wgslsmith_mod_vec3_u32(~vec3<u32>(68607u, u_input.e, u_input.d.x), _wgslsmith_mult_vec3_u32(vec3<u32>(14582u, u_input.d.x, 1u), vec3<u32>(u_input.d.x, 4294967295u, 61668u))), ~vec3<u32>(16376u, select(u_input.d.x, u_input.e, false), 1u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1819f, global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.c)) - _wgslsmith_f_op_f32(-global1.c))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.c - 1489f), global1.c, global1.c))));
    var var_2 = ~(~(~u_input.d.x));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.xy, var_1.yy));
    var_0 = ~vec3<u32>(var_0.x, _wgslsmith_mult_u32(abs(select(u_input.e, u_input.d.x, global1.d.x)), var_0.x), _wgslsmith_add_u32(71529u, u_input.e));
    var var_3 = vec3<f32>(-1000f, -1637f, 529f);
    let var_4 = Struct_1(~vec4<i32>(i32(-1i) * -global1.b.a.x, -2147483647i, -(~3149i), 8216i));
    var var_5 = false;
    var var_6 = firstLeadingBit(global1.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(global1.a.a), Struct_1(vec4<i32>(-1i, -1i, 60902i, 33015i)), 700f, global1.d)))))), -vec4<i32>(~25301i, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c.x, -2147483647i, 2648i), var_4.a.zxz), ~global1.b.a.x << (~u_input.e % 32u), _wgslsmith_div_i32(countOneBits(1i), -56976i)), u_input.b, var_4.a, _wgslsmith_div_i32(-24663i, ~2147483647i));
}

