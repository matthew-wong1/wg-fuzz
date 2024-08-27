struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: f32,
    d: Struct_1,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(vec2<bool>(false, true), 1962f, -1000f, vec4<i32>(23582i, 15220i, 1i, -57174i)), 0u));

var<private> global1: Struct_5;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> vec4<i32> {
    global0 = array<Struct_2, 1>();
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1218f, 582f, arg_2.a.b)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-242f, -821f, 1457f), vec3<f32>(-2407f, global1.a.a.b, -778f))))))));
    let var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-26167i, arg_1.d.x, abs(~7125i)), firstTrailingBit(vec3<i32>(-2147483647i, global1.d.d.x, global1.a.a.d.x))), -1i, _wgslsmith_dot_vec3_i32(global1.e.a.d.wxw, -vec3<i32>(arg_2.a.d.x, 0i, arg_2.a.d.x) >> (vec3<u32>(1u, arg_2.b, 55808u) % vec3<u32>(32u))) & ~(~select(global1.e.c.d.x, 8676i, global1.a.a.a.x)), global1.a.a.d.x);
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b))), _wgslsmith_f_op_f32(select(arg_2.a.b, _wgslsmith_f_op_f32(f32(-1f) * -1939f), !arg_1.a.x)), -1065f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 878f, -1422f) + vec3<f32>(1287f, global1.c, arg_1.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -129f, arg_1.c) - vec3<f32>(var_0.x, var_0.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.b, global1.a.a.b, 593f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, arg_1.c, -735f))))))));
    global0 = array<Struct_2, 1>();
    return _wgslsmith_sub_vec4_i32(countOneBits(~(-_wgslsmith_div_vec4_i32(vec4<i32>(-1i, arg_1.d.x, 0i, global1.a.a.d.x), var_1))), vec4<i32>(arg_1.d.x, -(~1429i), countOneBits(~1i), arg_1.d.x));
}

fn func_2() -> i32 {
    var var_0 = -746f;
    var var_1 = Struct_5(global1.a, global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(500f, global1.c))), global1.a.a, Struct_4(global1.a.a, global1.e.b, global1.d));
    var var_2 = ~(-(abs(-38029i) & ~min(var_1.e.c.d.x, var_1.a.a.d.x)));
    let var_3 = _wgslsmith_sub_i32(~global1.d.d.x, _wgslsmith_dot_vec4_i32(~global1.a.a.d, func_3(~(global1.e.b.x >> (u_input.a % 32u)), global1.d, Struct_2(var_1.d, _wgslsmith_sub_u32(4294967295u, 1u)))));
    let var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.a.b))), var_1.d.c, any(var_1.a.a.a))), var_1.c), vec2<f32>(_wgslsmith_div_f32(global1.d.c, global1.e.a.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    return global1.e.c.d.x;
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(global1.e.c.d.xzw, _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -2147483647i, global1.a.a.d.x), global1.d.d.zwy) | (vec3<i32>(global1.a.a.d.x, global1.d.d.x, 6387i) << (vec3<u32>(34245u, global1.e.b.x, 4294967295u) % vec3<u32>(32u))), global1.d.d.wyx)), min(u_input.b, abs(-2147483647i)), func_2(), -6264i);
    global1 = Struct_5(global0[_wgslsmith_index_u32(1u, 1u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.a.b + -769f) + -942f), -115f, global1.e.c, global1.e);
    let var_1 = -_wgslsmith_div_i32(20530i, 34778i);
    var_0 = global1.e.c.d;
    var var_2 = !(!vec4<bool>(any(vec2<bool>(true, false)) & any(vec3<bool>(global1.a.a.a.x, false, global1.e.a.a.x)), all(vec2<bool>(true, global1.a.a.a.x)), !(!global1.d.a.x), !global1.e.a.a.x));
    return Struct_2(Struct_1(var_2.zx, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b + -1000f), _wgslsmith_f_op_f32(select(-1592f, 171f, var_2.x))), -293f)), _wgslsmith_div_f32(923f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.b)))), global1.a.a.d), 54687u);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = vec2<u32>(global1.a.b, u_input.a);
    global0 = array<Struct_2, 1>();
    var var_1 = vec2<u32>(~(~(15036u | var_0.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.a.b, 1u, 82048u), ~vec3<u32>(74470u, var_0.x, var_0.x), vec3<u32>(global1.a.b, var_0.x, 0u)), max(_wgslsmith_add_vec3_u32(vec3<u32>(global1.a.b, var_0.x, var_0.x), vec3<u32>(48912u, global1.a.b, global1.a.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global1.a.b, 12050u), vec3<u32>(var_0.x, u_input.a, 13765u)))) << (~40517u % 32u));
    let var_2 = -(~countOneBits(arg_0.a.d.yyy)) | reverseBits(vec3<i32>(_wgslsmith_add_i32(arg_0.a.d.x, global1.e.c.d.x), 1i, ~2147483647i) << ((~vec3<u32>(arg_0.b, var_1.x, var_0.x) | ~vec3<u32>(4294967295u, 4294967295u, arg_0.b)) % vec3<u32>(32u)));
    var_1 = firstLeadingBit(var_0);
    return Struct_1(vec2<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_0.a.c, arg_0.a.c)), -740f)) >= -206f, global1.a.a.a.x && (-1572f < global1.d.b)), _wgslsmith_f_op_f32(min(global1.e.a.b, 762f)), func_1(~func_1(~58818u).b).a.b, _wgslsmith_sub_vec4_i32(min(-vec4<i32>(global1.e.a.d.x, var_2.x, 15903i, -1i), vec4<i32>(select(1i, arg_0.a.d.x, global1.a.a.a.x), 0i, _wgslsmith_mult_i32(-4900i, var_2.x), -14862i)), firstLeadingBit(arg_0.a.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 1>();
    var var_0 = Struct_4(func_4(func_1(select(~4294967295u, ~17917u, true))), ~(~global1.e.b << (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(41833u, u_input.a), global1.e.b), _wgslsmith_sub_u32(u_input.a, 0u)) % vec2<u32>(32u))), global1.e.a);
    var var_1 = _wgslsmith_mod_vec3_i32(global1.a.a.d.wzw, var_0.c.d.yxy);
    global1 = Struct_5(func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, ~u_input.a, global1.e.b.x, ~86698u), vec4<u32>(41386u, 4294967295u, 0u, var_0.b.x) << (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 28981u, global1.e.b.x, 15140u), vec4<u32>(34907u, 0u, global1.a.b, var_0.b.x)) % vec4<u32>(32u)))), -1960f, var_0.c.b, var_0.c, global1.e);
    var var_2 = Struct_3(~vec4<u32>(~(~u_input.a), _wgslsmith_dot_vec2_u32(global1.e.b, _wgslsmith_div_vec2_u32(vec2<u32>(15041u, 1993u), vec2<u32>(43308u, u_input.a))), 4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 0u), vec4<u32>(var_0.b.x, 18588u, 46715u, 69287u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, global1.e.b.x, 6343u), vec4<u32>(1u, global1.a.b, global1.a.b, 0u), vec4<u32>(4294967295u, 0u, 1645u, var_0.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.d.xxz | vec3<i32>(-2147483647i, ~global1.a.a.d.x, (var_0.a.d.x ^ -17608i) | global1.e.c.d.x), -vec4<i32>(-_wgslsmith_mult_i32(u_input.b, 19680i), abs(u_input.b ^ 45449i), 2147483647i, _wgslsmith_div_i32(var_0.a.d.x, -2147483647i) | countOneBits(u_input.b)));
}

