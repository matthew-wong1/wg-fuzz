struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(true, true, true, true, false, true, false, false, false, true, false);

var<private> global1: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(0i, -20841i, -1i), vec3<i32>(4227i, -1i, 64057i), vec3<i32>(-3875i, -6082i, 1i), vec3<i32>(6209i, 2147483647i, 25799i), vec3<i32>(-2136i, 0i, i32(-2147483648)), vec3<i32>(-1i, -34304i, 0i), vec3<i32>(1i, 54754i, -41555i), vec3<i32>(1i, 5555i, 17718i), vec3<i32>(-3245i, 14113i, 2147483647i), vec3<i32>(1i, 1i, -24390i), vec3<i32>(1i, -35585i, -14711i), vec3<i32>(-30117i, 51009i, -1i), vec3<i32>(23982i, 39771i, -7187i), vec3<i32>(-1i, -12534i, 30980i), vec3<i32>(102413i, 5430i, i32(-2147483648)), vec3<i32>(0i, 0i, -3856i), vec3<i32>(1i, 0i, -27259i), vec3<i32>(-48509i, 0i, -1i), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -34355i, 2147483647i), vec3<i32>(1i, -1i, -1i), vec3<i32>(-43431i, 17454i, 2147483647i), vec3<i32>(29411i, i32(-2147483648), -1i), vec3<i32>(-3469i, 2147483647i, 2147483647i), vec3<i32>(1i, 6217i, -20309i), vec3<i32>(26623i, 46903i, 1i), vec3<i32>(1i, 46845i, 0i), vec3<i32>(12587i, 67208i, 2147483647i), vec3<i32>(0i, -1i, 57054i), vec3<i32>(1i, 4884i, 18965i), vec3<i32>(32973i, 2147483647i, -4811i), vec3<i32>(1i, -1i, 0i));

var<private> global2: Struct_5 = Struct_5(Struct_1(vec3<i32>(i32(-2147483648), 15864i, i32(-2147483648)), 4294967295u, true, 1i), Struct_2(-8787i, Struct_1(vec3<i32>(-2163i, -68297i, 0i), 0u, false, -1i), vec4<bool>(false, true, true, true)));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global0 = array<bool, 11>();
    global2 = Struct_5(Struct_1(abs(vec3<i32>(_wgslsmith_sub_i32(-1i, global2.b.a), -15278i, ~global2.a.d)), _wgslsmith_div_u32(4294967295u, ~(~global2.b.b.b)), all(!(!global2.b.c.zx)), 2147483647i), Struct_2(1i, Struct_1(reverseBits(_wgslsmith_clamp_vec3_i32(global2.a.a, global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(global2.b.b.b, 32u)])), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.b, 0u, 42966u), u_input.c), false, min(u_input.a.x, u_input.a.x) ^ (u_input.a.x ^ 39384i)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 11u)], false, false, global0[_wgslsmith_index_u32(u_input.c.x, 11u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(global2.a.b, 11u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 11u)]), true), vec4<bool>(false, true, true, any(vec2<bool>(false, false))), global2.b.c)));
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(286f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-315f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(247f * 824f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(334f))))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(135f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(534f - -1252f), -756f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-815f)), -1045f)))));
    let var_1 = global2.b.b;
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(var_0.x, -1217f)), _wgslsmith_f_op_f32(-var_0.x), -786f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1017f, -1374f, 943f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, -1080f), vec3<f32>(var_0.x, var_0.x, -1438f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1937f, -279f, -1726f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 785f, var_0.x)), global2.b.c.yzx)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -608f) + vec3<f32>(var_0.x, var_0.x, -831f))), !any(vec4<bool>(var_1.c, global2.a.c, false, global0[_wgslsmith_index_u32(global2.b.b.b, 11u)])))), firstLeadingBit(_wgslsmith_sub_vec3_i32(global1[_wgslsmith_index_u32(var_1.b, 32u)], var_1.a)), false, global2.b, global2.b);
    return global0[_wgslsmith_index_u32(~min(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(34250u, 67940u, var_1.b, global2.a.b), ~vec4<u32>(global2.a.b, var_1.b, 0u, u_input.d.x)), global2.b.b.b), ~(_wgslsmith_div_u32(4294967295u, 1u) | global2.a.b)), 11u)];
}

fn func_2(arg_0: Struct_1) -> Struct_4 {
    global2 = Struct_5(global2.b.b, Struct_2(arg_0.a.x, Struct_1(select(global2.b.b.a, global2.a.a, vec3<bool>(true, false, arg_0.c)) & arg_0.a, reverseBits(~global2.a.b), all(select(vec2<bool>(false, global2.a.c), vec2<bool>(global2.b.c.x, true), vec2<bool>(global2.a.c, false))), global2.b.a), !vec4<bool>(false, true, global2.a.c, true)));
    let var_0 = global2.b.c;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-358f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -1284f)) + 582f))));
    var var_2 = all(!vec3<bool>(func_3(), global2.b.b.c, countOneBits(global2.a.a.x) < arg_0.a.x));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-274f, 215f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, var_1.a), vec2<f32>(var_1.a, var_1.a)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_1.a) + vec2<f32>(var_1.a, var_1.a)))))));
    return Struct_4(_wgslsmith_f_op_f32(-1645f * var_3.x));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-125f + 101f))) + 901f);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-var_0)));
    var_1 = func_2(global2.b.b);
    global0 = array<bool, 11>();
    let var_2 = _wgslsmith_sub_vec3_u32(~(~u_input.d.wxy), ~firstLeadingBit(u_input.c >> ((u_input.d.zxw ^ vec3<u32>(u_input.d.x, 15858u, 55927u)) % vec3<u32>(32u))));
    return 1u ^ max(firstLeadingBit(~99903u), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(5942u, u_input.d.x);
    global1 = array<vec3<i32>, 32>();
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(1u, 32u)], ~u_input.b, all(vec4<bool>(true | any(vec4<bool>(true, global2.b.c.x, global0[_wgslsmith_index_u32(1u, 11u)], false)), any(!vec2<bool>(global2.b.c.x, global2.b.c.x)), !any(global2.b.c.yy), global2.a.c)), (-global2.b.b.a.x >> (func_1() % 32u)) << ((~(~u_input.b) & 37345u) % 32u));
    var var_2 = vec3<bool>(all(vec3<bool>(var_1.c, var_1.c, var_1.c)), global2.a.b < abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d.xy, vec2<u32>(global2.b.b.b, global2.a.b)), ~vec2<u32>(global2.a.b, u_input.c.x))), any(select(!global2.b.c.wxx, vec3<bool>(func_3(), true, true), global2.b.c.xyw)));
    let var_3 = global2.b.c;
    let var_4 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(9713u, 28728u, 1u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(58086u, 0u, u_input.b), ~vec3<u32>(0u, u_input.d.x, 1u))), reverseBits(var_1.a.zx), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1352f, 586f, 733f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(740f, -1716f, 434f), vec3<f32>(-885f, -1000f, -1012f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -430f, -690f) - vec3<f32>(-465f, -1737f, 473f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(691f, 166f, 1327f, 1000f), vec4<f32>(-1170f, -778f, 1104f, 866f))) + _wgslsmith_div_vec4_f32(vec4<f32>(651f, 1315f, -179f, -165f), vec4<f32>(-1223f, 475f, 598f, 675f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1023f, -315f, -730f, -488f), vec4<f32>(-274f, 2453f, -461f, -1000f), global0[_wgslsmith_index_u32(u_input.b, 11u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1419f, 648f, 1503f, -114f) * vec4<f32>(1000f, -1053f, 1827f, -267f)))))));
}

