struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(543f, -435f, 1566f);

var<private> global1: array<f32, 24> = array<f32, 24>(843f, 972f, -179f, -421f, -363f, -425f, 289f, -1000f, -2321f, -156f, -1639f, -483f, 2555f, -854f, 1320f, -645f, -418f, -1500f, 2421f, -408f, 120f, -509f, 141f, -514f);

var<private> global2: vec3<i32> = vec3<i32>(-42209i, 0i, -23330i);

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)));

var<private> global4: array<f32, 32> = array<f32, 32>(1000f, 225f, -399f, -871f, 141f, 386f, -1605f, 132f, -1987f, -635f, -1392f, 1188f, -440f, -3372f, 252f, -646f, 434f, -1229f, 2793f, 439f, 2475f, -290f, 243f, 1049f, 923f, -1051f, -1036f, 403f, -1125f, 370f, -2036f, -157f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global2 = -u_input.c.zwx | ~(-_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-23950i, -2147483647i, u_input.c.x), u_input.c.zxx, u_input.c.zwx), ~vec3<i32>(global2.x, 2147483647i, -2147483647i), -u_input.c.www));
    global1 = array<f32, 24>();
    global0 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 53692u) | 41985u, 32u)]))), global1[_wgslsmith_index_u32((u_input.b & countOneBits(u_input.a)) & 1u, 24u)], 1056f);
    global4 = array<f32, 32>();
    let var_0 = global3[_wgslsmith_index_u32(37197u & ~abs(u_input.a), 4u)];
    return global0.x;
}

fn func_2() -> vec3<f32> {
    let var_0 = global3[_wgslsmith_index_u32(u_input.a, 4u)];
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, firstLeadingBit(u_input.a)), 24u)]))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~u_input.b), 24u)]), _wgslsmith_f_op_f32(round(global0.x)));
    var var_1 = Struct_1(var_0.a);
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 46183u, u_input.d.x), vec3<u32>(1u, 0u, 0u)) ^ ~vec3<u32>(0u, 93516u, 4294967295u)), ~(~vec3<u32>(u_input.a >> (u_input.d.x % 32u), ~4294967295u, u_input.b))), 4u)];
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(461f)))) - -1235f), _wgslsmith_f_op_f32(round(1796f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d.x, 24u)] * 214f), -543f)))));
    return var_3.xzz;
}

fn func_1(arg_0: bool) -> Struct_1 {
    global3 = array<Struct_1, 4>();
    global4 = array<f32, 32>();
    let var_0 = ~u_input.d;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(3892u, 24u)] + global4[_wgslsmith_index_u32(var_0.x, 32u)]), _wgslsmith_f_op_f32(abs(422f)), _wgslsmith_f_op_vec3_f32(func_2()).x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-867f, 1098f, 1316f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], -1000f, 1510f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(96462u, 32u)], -295f, global1[_wgslsmith_index_u32(4294967295u, 24u)]) + vec3<f32>(global0.x, -201f, global4[_wgslsmith_index_u32(var_0.x, 32u)])), true)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(u_input.b, 32u)], global4[_wgslsmith_index_u32(0u, 32u)], global4[_wgslsmith_index_u32(35820u, 32u)]) * vec3<f32>(435f, global1[_wgslsmith_index_u32(45125u, 24u)], -333f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1120f, -866f, -408f), vec3<f32>(246f, global4[_wgslsmith_index_u32(var_0.x, 32u)], -701f)))))));
    let var_1 = Struct_1(select(select(vec2<bool>(true, false), !vec2<bool>(arg_0, true), !select(vec2<bool>(false, arg_0), vec2<bool>(true, arg_0), vec2<bool>(false, true))), vec2<bool>(!arg_0, 4294967295u > var_0.x), vec2<bool>(false, true)));
    return Struct_1(select(!var_1.a, var_1.a, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    var var_1 = func_1(true);
    let var_2 = _wgslsmith_dot_vec2_i32(~(~vec2<i32>(global2.x, u_input.c.x & -2147483647i)), countOneBits(abs(vec2<i32>(-3555i, 2147483647i) ^ u_input.c.zz)) & global2.zz);
    var var_3 = func_1(false);
    var var_4 = func_1(false);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 508f, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(-942f, abs(vec2<u32>(_wgslsmith_div_u32(4294967295u, firstTrailingBit(98823u)), ~13978u)), _wgslsmith_div_u32(~1491u, _wgslsmith_mult_u32(min(11856u, _wgslsmith_sub_u32(u_input.a, 0u)), reverseBits(~16220u))), vec3<u32>(u_input.a, ~u_input.a, ((u_input.d.x << (0u % 32u)) | _wgslsmith_add_u32(u_input.d.x, u_input.b)) & _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b, 1u), 37700u)), min(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(global2.x, 2147483647i, var_2, global2.x)), -vec4<i32>(38703i, global2.x, 2762i, u_input.c.x)), vec4<i32>(-45284i, u_input.c.x, firstTrailingBit(u_input.c.x), 0i)), vec4<i32>(-1i) * -u_input.c));
}

