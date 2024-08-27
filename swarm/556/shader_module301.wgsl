struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<bool>, 7>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> Struct_1 {
    global1 = array<vec2<bool>, 7>();
    var var_0 = Struct_2(-9640i);
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(~firstLeadingBit(u_input.a.x), _wgslsmith_mult_i32(var_0.a, _wgslsmith_div_i32(-9406i, 30627i)), firstTrailingBit(_wgslsmith_mod_i32(var_0.a, var_0.a) >> (u_input.c.x % 32u)), -var_0.a), firstLeadingBit(vec4<i32>(var_0.a, abs(~var_0.a), ~(-53631i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(12119i, 2147483647i, u_input.a.x, 17401i), vec4<i32>(4619i, 1i, 2147483647i, u_input.a.x)), vec4<i32>(34122i, -68780i, u_input.a.x, 25252i)))));
    var var_2 = vec3<f32>(-1127f, _wgslsmith_f_op_f32(select(936f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1446f - -345f) + _wgslsmith_f_op_f32(f32(-1f) * -825f)), _wgslsmith_f_op_f32(-643f + 870f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -478f));
    let var_3 = Struct_2(-1i ^ _wgslsmith_sub_i32(1i, var_1.x));
    return Struct_1(~(~vec4<i32>(_wgslsmith_add_i32(u_input.a.x, -7136i), countOneBits(-12234i), -var_0.a, -30343i)), min(~select(vec3<u32>(u_input.b.x, u_input.d.x, u_input.b.x), u_input.c.zww & vec3<u32>(57541u, 1u, u_input.c.x), true), vec3<u32>(~1u, ~_wgslsmith_dot_vec3_u32(u_input.c.zxx, vec3<u32>(1u, 1u, u_input.e)), 0u)), var_1.x);
}

fn func_3() -> bool {
    global0 = _wgslsmith_mult_u32(reverseBits(u_input.c.x), firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u, ~u_input.d.x), ~u_input.e, ~4294967295u)));
    global0 = _wgslsmith_sub_u32(28753u | ~_wgslsmith_sub_u32(1u, u_input.d.x), u_input.d.x) & 165u;
    var var_0 = func_1();
    var_0 = Struct_1(var_0.a, ~(vec3<u32>(~12949u, ~u_input.d.x, u_input.c.x ^ 59948u) & var_0.b), -abs(2147483647i));
    var var_1 = Struct_2(-1i);
    return false;
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    global0 = abs(arg_0.b.x);
    global1 = array<vec2<bool>, 7>();
    let var_0 = !select(vec4<bool>(func_3(), all(global1[_wgslsmith_index_u32(min(0u, 1u), 7u)]), true, all(vec3<bool>(false, true, true))), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), true | all(vec4<bool>(true, false, false, true))), !vec4<bool>(func_3(), true, true, false));
    global1 = array<vec2<bool>, 7>();
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-297f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1270f)))), -372f, 1757f) * vec4<f32>(-1869f, 2281f, _wgslsmith_f_op_f32(step(-1827f, -164f)), _wgslsmith_f_op_f32(1f - 721f)));
    return var_0.ywz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var var_1 = select(true, false, false || all(global1[_wgslsmith_index_u32(~(17615u << (u_input.b.x % 32u)), 7u)]));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-107f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -752f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1317f, -871f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(795f, 647f) - vec2<f32>(1189f, 408f))), vec2<f32>(1f, _wgslsmith_f_op_f32(min(-1712f, -1000f))), vec2<bool>(true, true)))) * vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(432f - 282f)))), -2249f));
    var var_3 = -((firstLeadingBit(u_input.a) & vec3<i32>(6804i, 1i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x))) << (u_input.c.yxz % vec3<u32>(32u)));
    var var_4 = all(!func_2(func_1()));
    var_1 = _wgslsmith_f_op_f32(select(-1264f, _wgslsmith_f_op_f32(var_2.x - 157f), true)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1015f - var_2.x))));
    var_1 = true;
    let var_5 = Struct_2(_wgslsmith_mod_i32(var_3.x, -5969i));
    let var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.xy, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(1185f - var_2.x)), _wgslsmith_f_op_f32(trunc(275f)))), -828f)), _wgslsmith_f_op_f32(ceil(var_2.x)), firstTrailingBit(min(-vec3<i32>(var_6.c, -29867i, 5974i), -vec3<i32>(var_6.c, 20890i, u_input.a.x))), u_input.c.zwy << (firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(17369u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, u_input.b.x))) % vec3<u32>(32u)));
}

