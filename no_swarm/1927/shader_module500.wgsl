struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(239f, -1002f, -1089f, 679f, 1000f, -1340f, -817f, -1459f, -1493f, 684f, -391f, -708f, 1844f, -271f, 185f, -546f, -1075f, -1639f, -595f, -1488f, 785f, 740f, 1652f, 533f, -636f, -1139f, 168f, 2589f, -1765f);

var<private> global1: Struct_2 = Struct_2(Struct_1(46922i, vec3<u32>(1u, 4294967295u, 1u), vec4<i32>(2836i, -22610i, 0i, -39719i), vec3<f32>(-228f, -333f, 2119f)), vec4<u32>(4294967295u, 0u, 1u, 0u), Struct_1(24995i, vec3<u32>(7474u, 35402u, 0u), vec4<i32>(0i, 1i, -1i, -57840i), vec3<f32>(-616f, -1274f, -2455f)), vec4<u32>(4294967295u, 642u, 43143u, 4294967295u), 1i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> u32 {
    let var_0 = global1.a;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1503f))), -149f);
    let var_2 = !(!vec2<bool>(true, ~1u <= (u_input.a.x >> (49190u % 32u))));
    var var_3 = var_0.b.x;
    var_3 = 60969u;
    return ~(~32028u);
}

fn func_3() -> i32 {
    var var_0 = Struct_1(2147483647i, global1.d.xzx, global1.a.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global1.c.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2110f, -1000f, 1220f))))));
    var var_1 = ~global1.c.a;
    var var_2 = Struct_2(global1.c, vec4<u32>(4294967295u, var_0.b.x >> (~global1.c.b.x % 32u), _wgslsmith_add_u32(~u_input.c, ~(13016u & global1.d.x)), global1.b.x), global1.a, vec4<u32>(global1.b.x, ~(~70882u), var_0.b.x, ~u_input.c), ~(-abs(global1.a.a)) & (~(~(-30241i)) & firstTrailingBit(8850i)));
    global0 = array<f32, 29>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(307f * -239f) - _wgslsmith_f_op_f32(exp2(global1.c.d.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.b.x, 29u)]))), _wgslsmith_f_op_f32(round(-3495f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-651f - -1004f))))));
    return ~_wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(var_2.a.c.xy, var_2.a.c.wz), vec2<i32>(48642i, global1.e));
}

fn func_2() -> vec4<i32> {
    let var_0 = global1.a.d.x;
    return select(vec4<i32>(4825i, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b, -u_input.b), i32(-1i) * -global1.c.a), global1.c.a, 16107i), -vec4<i32>(max(_wgslsmith_sub_i32(u_input.b, u_input.b), firstTrailingBit(u_input.b)), -(i32(-1i) * -26229i), firstTrailingBit(u_input.b) | -global1.c.c.x, func_3() << (~20863u % 32u)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~39618i;
    var var_1 = vec4<u32>(u_input.c, _wgslsmith_div_u32(u_input.a.x, ~42972u), min(~global1.c.b.x, ~(4294967295u << (u_input.a.x % 32u)) >> (17839u % 32u)), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(~1116u, func_1()), ~4294967295u));
    let var_2 = _wgslsmith_f_op_vec2_f32(global1.c.d.yx * global1.c.d.xz);
    global0 = array<f32, 29>();
    var var_3 = global1.a.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(-26027i, -1i, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)))), func_2(), u_input.b, _wgslsmith_clamp_vec2_u32(var_1.wy, u_input.a.zz, global1.b.wz));
}

