struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_1, 19>;

var<private> global2: array<vec4<bool>, 19>;

var<private> global3: u32;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 0u), 921f, vec3<f32>(-1683f, 944f, 1522f), vec3<i32>(46291i, -1i, i32(-2147483648))), vec3<u32>(22946u, 67409u, 0u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>) -> vec3<i32> {
    let var_0 = ~global4.a.d.yz;
    global4 = Struct_2(Struct_1(global4.a.a, global4.a.c.x, _wgslsmith_f_op_vec3_f32(-global4.a.c), vec3<i32>(-1i) * -vec3<i32>(global4.a.d.x, 1i, global4.a.d.x)), global4.b);
    global4 = Struct_2(global4.a, vec3<u32>(global4.b.x, ~global4.a.a.x, global4.a.a.x));
    global2 = array<vec4<bool>, 19>();
    var var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(countOneBits(~_wgslsmith_sub_u32(56018u, 0u)), u_input.b), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1735u, 1u, u_input.a), vec4<u32>(global4.b.x, u_input.a, global4.a.a.x, 1u)), ~vec4<u32>(global4.a.a.x, u_input.b, 53586u, 20544u)), vec4<u32>(60626u, ~3120u, 1u | u_input.a, _wgslsmith_dot_vec2_u32(global4.a.a.yy, global4.b.zy))), ~(~min(u_input.b, u_input.b))), firstLeadingBit(global4.a.a.yy & vec2<u32>(~global4.a.a.x, select(u_input.b, 0u, arg_0.x))));
    return ~global4.a.d;
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_2 {
    global4 = Struct_2(global1[_wgslsmith_index_u32(100410u, 19u)], global4.b);
    global1 = array<Struct_1, 19>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global4.a.c.x)) * global4.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -627f), _wgslsmith_f_op_f32(-global4.a.c.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4.a.b)))))), global4.a.b, global4.a.c.x);
    let var_1 = !vec3<bool>(arg_0, true, any(vec2<bool>(!arg_0, true)));
    global0 = Struct_4(global0.b.x, _wgslsmith_sub_vec2_i32(vec2<i32>(~125i, ~1i), _wgslsmith_mod_vec2_i32(~(-global0.b), abs(-vec2<i32>(global0.a, global0.b.x)))));
    return Struct_2(Struct_1(~min(max(global4.a.a, global4.a.a), abs(vec3<u32>(1u, 18367u, u_input.b))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), var_0, ~(-func_3(var_1.zy))), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(firstTrailingBit(global4.a.a.zx), ~vec2<u32>(global4.a.a.x, u_input.a)), ~global4.b.x | 9113u));
}

fn func_1(arg_0: vec4<f32>) -> vec4<u32> {
    global4 = func_2(!(global4.a.c.x <= arg_0.x), _wgslsmith_f_op_f32(floor(-498f)));
    global0 = Struct_4(~(global4.a.d.x >> (31389u % 32u)), -(global0.b ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, global4.a.d.x), _wgslsmith_div_vec2_i32(global0.b, vec2<i32>(34664i, -28333i)))));
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(global4.b.x, 86805u, u_input.a), global4.b.x);
    var var_1 = true;
    global4 = func_2(false, _wgslsmith_f_op_f32(-func_2(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 563f))).a.c.x));
    return ~_wgslsmith_clamp_vec4_u32(abs(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, global4.a.a.x, 4294967295u, 0u), vec4<u32>(global4.a.a.x, 50799u, u_input.b, global4.b.x))), ~vec4<u32>(28121u, reverseBits(0u), u_input.b, 38622u), firstTrailingBit(vec4<u32>(u_input.a, 4294967295u, 0u, 87028u)) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(global4.a.a.x, u_input.b, u_input.a, global4.b.x), vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.a)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ((vec4<u32>(_wgslsmith_mult_u32(global4.a.a.x, global4.a.a.x), _wgslsmith_div_u32(4953u, 10233u), _wgslsmith_div_u32(31433u, 1u), ~u_input.a) >> (~vec4<u32>(24974u, u_input.b, global4.a.a.x, 18521u) % vec4<u32>(32u))) | (func_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4.a.b, global4.a.b, -961f, global4.a.c.x)))) << (min(~vec4<u32>(0u, 1u, u_input.b, 18458u), vec4<u32>(global4.b.x, 49737u, 1u, 0u)) % vec4<u32>(32u)))) | _wgslsmith_mod_vec4_u32(((vec4<u32>(u_input.a, global4.a.a.x, global4.b.x, 79007u) ^ vec4<u32>(u_input.b, 0u, 1u, u_input.b)) & _wgslsmith_add_vec4_u32(vec4<u32>(59730u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, global4.b.x, 1u))) | firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global4.a.a.x, global4.a.a.x, global4.a.a.x), vec4<u32>(36362u, 21125u, u_input.a, 34105u))), _wgslsmith_add_vec4_u32(vec4<u32>(1u ^ u_input.a, 1u, ~u_input.b, _wgslsmith_mod_u32(global4.a.a.x, global4.b.x)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(5067u, u_input.b, global4.a.a.x, 40175u), vec4<u32>(u_input.a, 0u, u_input.b, u_input.b), vec4<bool>(true, true, true, false)), vec4<u32>(38600u, 15990u, u_input.a, global4.a.a.x))));
    var var_1 = -global4.a.d.x;
    var var_2 = global4.a.d;
    var var_3 = vec2<f32>(-802f, _wgslsmith_div_f32(global4.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global4.a.b) * 316f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global4.a.c.x)), -633f)))));
    global3 = u_input.b;
    var var_4 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(u_input.a, u_input.b), ~min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(25947u, 4294967295u, 0u, global4.a.a.x)), firstLeadingBit(45141u)), u_input.a), 954f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.a.c.x, -106f, 1707f), global4.a.c, true)))), vec3<i32>(var_2.x, (-var_2.x ^ global0.b.x) & ~global0.a, countOneBits(firstTrailingBit(global4.a.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global4.a.d.x, vec3<u32>(~abs(4294967295u), 1u, 102142u), 60798i, var_4.c, abs(var_2.x | -46707i));
}

