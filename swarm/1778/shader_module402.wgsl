struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<u32>, 13>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 20>;

var<private> global4: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<u32> {
    var var_0 = 1000f;
    var var_1 = _wgslsmith_sub_i32(global0.c.x, -global2.c.x) >> (5633u % 32u);
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(max(global2.d.x, u_input.c.x), ~5389u), 20u)];
    return global0.e;
}

fn func_2() -> Struct_1 {
    var var_0 = !(!vec2<bool>(any(vec3<bool>(true, false, false)) & true, false));
    global2 = global3[_wgslsmith_index_u32(1u, 20u)];
    var var_1 = var_0.x;
    var_0 = select(select(select(vec2<bool>(true, true), !(!vec2<bool>(var_0.x, var_0.x)), vec2<bool>(true, true)), !vec2<bool>(true, any(vec2<bool>(true, var_0.x))), !(!(var_0.x && var_0.x))), vec2<bool>(any(select(!vec3<bool>(var_0.x, var_0.x, false), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, false, var_0.x), true), !var_0.x)), all(vec3<bool>(!var_0.x, true, 0u != global2.e.x))), var_0.x || true);
    var var_2 = (vec3<u32>(abs(u_input.a.x), global0.d.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(global4.d.x, global4.b, global0.d.x), ~17303u)) ^ func_3()) & ~vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global2.e, global4.e), ~global2.e), _wgslsmith_mod_u32(abs(4294967295u), ~u_input.a.x));
    return global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(46228u, 4294967295u, global2.d.x, 0u)), vec4<u32>(4294967295u, _wgslsmith_mult_u32(global2.d.x, global2.e.x), var_2.x, global2.e.x)), 7512u, global4.b, 19686u), ~(~(vec4<u32>(63332u, 57099u, global0.d.x, 1u) >> (vec4<u32>(38877u, global0.b, 0u, u_input.a.x) % vec4<u32>(32u))))), 20u)];
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> vec3<u32> {
    global0 = global3[_wgslsmith_index_u32(~(~(~global0.b)), 20u)];
    global3 = array<Struct_1, 20>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(1666f, global0.a.x, global2.a.x), global0.a))))), global2.d.x, vec4<i32>(global0.c.x, i32(-1i) * -2147483647i, 2147483647i, _wgslsmith_mult_i32(-abs(7560i), _wgslsmith_dot_vec2_i32(global2.c.zz, vec2<i32>(-21132i, 1i) & arg_1))), global2.e.yz, global0.e);
    global0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(trunc(-1322f));
    return ~countOneBits(func_3());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.e.x;
    global3 = array<Struct_1, 20>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a.x, 120f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4.a.x))))), ~(~global2.e.x), vec4<i32>(-firstLeadingBit(max(19656i, 1i)), ((global2.c.x >> (global4.d.x % 32u)) & 0i) >> (global4.e.x % 32u), -min(max(global4.c.x, u_input.b), ~u_input.b), -47875i), vec2<u32>(global4.d.x, _wgslsmith_clamp_u32(~(~global4.b), _wgslsmith_dot_vec4_u32(vec4<u32>(84884u, 1u, 44708u, 0u) | vec4<u32>(34262u, 0u, global0.b, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 41347u, global0.d.x, 85412u), vec4<u32>(48431u, u_input.c.x, 1u, 101966u), vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.a.x))), ~(~23309u))), ~(~(func_1(u_input.a.x, vec2<i32>(u_input.b, 187i)) << (~global0.e % vec3<u32>(32u)))));
    let var_2 = global3[_wgslsmith_index_u32(10729u, 20u)];
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(463f)) - func_2().a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x))) * global0.a), func_2().d.x & 14333u, max(firstLeadingBit(~vec4<i32>(1i, global0.c.x, 76389i, 2147483647i)), global2.c), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 7878u, u_input.c.x, 1u) ^ vec4<u32>(u_input.c.x, var_1.d.x, 109138u, 1u), max(vec4<u32>(var_2.b, global4.b, var_2.d.x, 4294967295u), vec4<u32>(0u, u_input.c.x, 34514u, u_input.a.x)), ~vec4<u32>(79265u, u_input.a.x, 111184u, u_input.c.x)), ~firstTrailingBit(vec4<u32>(var_2.d.x, global0.d.x, 1424u, var_1.d.x))), global4.e.x ^ 41714u), vec3<u32>(~(~(global2.d.x | u_input.c.x)), ~(~global4.e.x), func_1(firstTrailingBit(_wgslsmith_mult_u32(49057u, global0.d.x)), vec2<i32>(~32306i, reverseBits(global4.c.x))).x));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global2.a, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-972f, global2.a.x, 1110f)) * vec3<f32>(-175f, -117f, 123f)))), vec3<bool>(true, true, true))));
    global2 = var_3;
    global3 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~84407u), -57806i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(854f, -154f, -1441f, -250f) * vec4<f32>(3154f, 1641f, global0.a.x, 865f)), vec4<f32>(487f, var_2.a.x, global4.a.x, -1727f)) - vec4<f32>(_wgslsmith_f_op_f32(global2.a.x * global4.a.x), _wgslsmith_f_op_f32(1000f + -1815f), _wgslsmith_f_op_f32(var_4.x * 1038f), func_2().a.x))), global0.a.x);
}

