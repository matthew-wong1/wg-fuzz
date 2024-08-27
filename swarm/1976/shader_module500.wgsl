struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<f32>, 25>;

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> vec3<i32> {
    let var_0 = u_input.d.wxw;
    var var_1 = Struct_4(~_wgslsmith_mod_vec3_i32(-vec3<i32>(-26015i, global0.c.x, -48127i), vec3<i32>(countOneBits(global0.c.x), _wgslsmith_div_i32(global0.c.x, 30174i), -global0.c.x)), Struct_2(Struct_1(~reverseBits(u_input.a.xyy), -271f, -vec2<i32>(-1i, -24007i) << ((var_0.zy & vec2<u32>(u_input.b, 66993u)) % vec2<u32>(32u)), ~u_input.e), countOneBits(vec4<u32>(_wgslsmith_div_u32(u_input.a.x, 0u), 54404u, ~1u, 1u))));
    let var_2 = vec4<u32>(~(~(abs(u_input.c) | min(0u, 24160u))), ~min(var_0.x, ~1u), 4294967295u, _wgslsmith_sub_u32(~var_1.b.b.x, var_0.x));
    var var_3 = var_1.b.a;
    let var_4 = vec3<i32>(~_wgslsmith_mult_i32(firstTrailingBit(-var_3.c.x), ~(-1412i)), max(var_3.c.x, 56629i), 2147483647i);
    return -vec3<i32>(var_4.x, _wgslsmith_mod_i32(countOneBits(-1i), 47663i), -(-1i >> (var_2.x % 32u)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.a.c.x, -1i, -2147483647i) ^ var_4, vec3<i32>(-1i, 1i, -50089i)));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_sub_vec3_i32(~func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, global0.b) - vec2<f32>(210f, 1996f)) - global1[_wgslsmith_index_u32(~37750u, 25u)])), vec3<i32>(i32(-1i) * -14692i, global0.c.x, arg_2.c.x));
    global0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0, global0.b))))));
    var var_2 = vec3<bool>(!(!(abs(global0.d) == _wgslsmith_div_u32(u_input.b, 10402u))), ~(~u_input.e << (16160u % 32u)) < ~_wgslsmith_dot_vec3_u32(arg_2.a | arg_2.a, _wgslsmith_clamp_vec3_u32(arg_2.a, global0.a, vec3<u32>(u_input.c, 4294967295u, global0.d))), any(vec2<bool>(any(vec2<bool>(true, arg_1.x)) & true, true)));
    global2 = _wgslsmith_add_u32(arg_2.d, u_input.d.x) >> (arg_2.d % 32u);
    return _wgslsmith_mod_u32(min(_wgslsmith_add_u32(firstLeadingBit(abs(13259u)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.d.x, u_input.a.x)), _wgslsmith_clamp_vec2_u32(arg_2.a.zx, global0.a.yx, vec2<u32>(0u, global0.d)))), 4294967295u), ~min(1u, _wgslsmith_sub_u32(11663u, 0u) << (abs(global0.a.x) % 32u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: f32) -> f32 {
    var var_0 = true;
    var var_1 = vec4<u32>(arg_1.b.d, select(func_2(_wgslsmith_f_op_f32(max(arg_1.b.b, _wgslsmith_f_op_f32(-arg_2))), vec2<bool>(true, true), arg_1.b), ~83663u, true && (true | select(false, false, true))), u_input.e, u_input.a.x);
    var var_2 = Struct_4(_wgslsmith_sub_vec3_i32(firstLeadingBit(arg_0.wxz), -firstLeadingBit(firstLeadingBit(arg_0.wwz))), Struct_2(arg_1.b, select(min(select(vec4<u32>(4294967295u, global0.d, arg_1.b.a.x, global0.d), vec4<u32>(57659u, 0u, 4294967295u, 105434u), true), u_input.a), _wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(1u, 4294967295u, global0.a.x, var_1.x)) << (_wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(77772u, var_1.x, 2666u, 12760u)) % vec4<u32>(32u)), true)));
    var var_3 = Struct_4(vec3<i32>(1i, -_wgslsmith_mult_i32(35113i, 0i), arg_1.b.c.x), Struct_2(Struct_1(max(_wgslsmith_sub_vec3_u32(global0.a, vec3<u32>(15155u, 48976u, arg_1.b.d)), vec3<u32>(83475u, 95732u, var_1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(875f)), global0.b)), arg_1.b.c, _wgslsmith_mult_u32(20383u ^ var_2.b.b.x, 19350u)), u_input.d >> (u_input.d % vec4<u32>(32u))));
    var var_4 = u_input.e;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.a.b + _wgslsmith_f_op_f32(round(724f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(true, true, true, true));
    let var_1 = max(26791i, ~_wgslsmith_sub_i32(~33219i, global0.c.x) | -2147483647i);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b, global0.b, -377f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-118f, -1613f, global0.b)))), vec3<f32>(global0.b, -1004f, _wgslsmith_f_op_f32(func_1(vec4<i32>(global0.c.x, 2147483647i, var_1, global0.c.x), Struct_3(global0.c.x, Struct_1(u_input.a.yxw, -1000f, vec2<i32>(global0.c.x, -2147483647i), global0.a.x), global0.c.x), 2486f))))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(384f, global0.b, 139f) * vec3<f32>(-158f, global0.b, global0.b)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2158f * -1000f)))));
    global0 = Struct_1(u_input.d.wyy, 157f, _wgslsmith_add_vec2_i32(func_3(var_2.zx).xy, global0.c) << (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~global0.a.zx) % vec2<u32>(32u)), _wgslsmith_add_u32(~0u, ~func_2(1468f, vec2<bool>(true, true), Struct_1(u_input.a.zwx, -126f, vec2<i32>(41817i, global0.c.x), 32273u))));
    global1 = array<vec2<f32>, 25>();
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(exp2(global0.b)), -1767f, _wgslsmith_f_op_f32(-var_2.x)) - vec4<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(global0.b - -1400f), _wgslsmith_div_f32(var_2.x, global0.b), _wgslsmith_f_op_f32(step(var_2.x, global0.b))))))));
    let x = u_input.a;
    s_output = StorageBuffer((24995u >> (global0.d % 32u)) ^ ~abs(11742u << (1u % 32u)), abs(_wgslsmith_mult_vec4_i32(-(vec4<i32>(1i, -1i, var_1, global0.c.x) & vec4<i32>(-25114i, -4919i, 9742i, global0.c.x)), vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, 0i, -17048i), global0.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1, -1i, 1i), vec4<i32>(-60510i, 2147483647i, 0i, 0i)), -global0.c.x))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(46420u, 1u), 0u & global0.d) ^ u_input.e, global0.d), _wgslsmith_div_i32(_wgslsmith_add_i32(13225i, -global0.c.x), var_1), _wgslsmith_div_vec3_f32(var_3.wzy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-776f)), _wgslsmith_f_op_f32(min(var_3.x, global0.b)), _wgslsmith_f_op_f32(-var_2.x)))));
}

