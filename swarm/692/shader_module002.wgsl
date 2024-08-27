struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -514f;

var<private> global1: array<vec4<bool>, 31>;

var<private> global2: Struct_2 = Struct_2(Struct_1(false, vec4<i32>(-1i, i32(-2147483648), -67247i, -3029i), vec3<i32>(i32(-2147483648), 1i, 1i)), Struct_1(false, vec4<i32>(-56303i, 30829i, 2147483647i, -340i), vec3<i32>(-1i, 3764i, -1828i)), vec2<f32>(-933f, 1277f), 1i, 749f);

var<private> global3: Struct_2 = Struct_2(Struct_1(false, vec4<i32>(0i, 1i, i32(-2147483648), 22708i), vec3<i32>(0i, -1i, 0i)), Struct_1(true, vec4<i32>(7513i, -71209i, 10214i, 0i), vec3<i32>(21913i, 19241i, 38524i)), vec2<f32>(-670f, 250f), -10989i, 892f);

var<private> global4: f32;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec2<i32> {
    var var_0 = ~global2.b.b.x;
    global1 = array<vec4<bool>, 31>();
    var var_1 = reverseBits(select(firstLeadingBit(4189u), 1u, !global2.b.a));
    global0 = global2.e;
    global2 = Struct_2(global3.a, Struct_1(~u_input.e >= ~(-13241i), vec4<i32>(global3.b.c.x, -7118i, -select(global3.b.b.x, 2147483647i, true), -46391i), ~global2.b.b.wyy), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-444f + _wgslsmith_f_op_f32(-global2.c.x)), -190f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(176f + -410f))))), global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1153f))));
    return u_input.d.zz;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_i32(func_3(), ~select(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(global2.a.b.x, global2.a.c.x), global2.a.b.yz, vec2<i32>(global3.a.c.x, global2.a.b.x))), global3.b.c.zz, global2.a.a));
    var var_1 = Struct_1(select(false, all(!select(vec2<bool>(global3.b.a, global2.a.a), vec2<bool>(global3.a.a, global3.a.a), vec2<bool>(global3.a.a, false))), true), _wgslsmith_sub_vec4_i32(global3.a.b, global3.a.b), vec3<i32>(_wgslsmith_dot_vec4_i32(min(global2.a.b, _wgslsmith_mult_vec4_i32(vec4<i32>(0i, global3.b.c.x, global2.b.b.x, 1i), global2.a.b)), max(_wgslsmith_clamp_vec4_i32(global2.b.b, vec4<i32>(u_input.d.x, -5419i, global3.b.c.x, 0i), global2.a.b), vec4<i32>(var_0, var_0, -22289i, 2147483647i) >> (u_input.a % vec4<u32>(32u)))), u_input.d.x, -1i));
    global4 = global3.e;
    global4 = global2.c.x;
    global1 = array<vec4<bool>, 31>();
    return global3.b;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = reverseBits(vec2<i32>(~_wgslsmith_add_i32(579i, global2.d) & ~u_input.e, 1i));
    let var_1 = global3.c;
    var var_2 = func_2(1u);
    var var_3 = _wgslsmith_dot_vec2_i32(~var_0, global2.a.b.ww);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -1205f));
    return func_2(countOneBits((0u << (u_input.c.x % 32u)) | firstTrailingBit(_wgslsmith_clamp_u32(u_input.a.x, 1u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2.b.a, global2.a);
    let var_1 = global1[_wgslsmith_index_u32(u_input.c.x, 31u)];
    let var_2 = !global1[_wgslsmith_index_u32(46826u, 31u)];
    global4 = 820f;
    var var_3 = Struct_2(Struct_1(var_1.x, vec4<i32>(var_0.b.x, 2147483647i, _wgslsmith_add_i32(10405i, ~0i), firstTrailingBit(_wgslsmith_div_i32(-1i, -31945i))), _wgslsmith_div_vec3_i32(global2.a.c, global3.b.c ^ vec3<i32>(-1i, u_input.e, 6053i))), func_2(~_wgslsmith_dot_vec3_u32(abs(u_input.c), ~vec3<u32>(u_input.c.x, 0u, 12449u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-656f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global2.c.x)), _wgslsmith_f_op_f32(-global2.e)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -447f) * global2.c))))), ~(-2147483647i), _wgslsmith_f_op_f32(global3.c.x * global3.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global3.c.x, -1400f, 1000f), ~0u, min(_wgslsmith_add_u32(0u, u_input.c.x) << (~firstLeadingBit(u_input.a.x) % 32u), (~4294967295u | abs(u_input.b.x)) | 4294967295u));
}

