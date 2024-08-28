struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1173f, -1000f, 885f);

var<private> global1: array<u32, 28>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -202f, global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(922f, global0.x, 2148f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-848f, global0.x, global0.x) - vec3<f32>(-1574f, 919f, arg_0)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, arg_0, -854f), vec3<f32>(114f, 184f, arg_0))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1298f, 1314f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-898f, -1026f, arg_0) + vec3<f32>(global0.x, global0.x, arg_0)))) + vec3<f32>(-534f, _wgslsmith_f_op_f32(-239f - 666f), _wgslsmith_f_op_f32(step(arg_0, arg_0)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, _wgslsmith_f_op_f32(select(global0.x, 136f, all(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2015f, arg_0, -661f) + vec3<f32>(arg_0, 1231f, 867f)))))), _wgslsmith_add_i32(-arg_1.x, -2147483647i ^ u_input.c.x) > ~1i)), !(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true)))));
    var var_0 = _wgslsmith_f_op_f32(-global0.x);
    let var_1 = Struct_2(Struct_1(_wgslsmith_add_vec3_i32(~arg_1.xxz, _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_1.x, arg_1.x), vec3<i32>(arg_1.x, u_input.a, u_input.c.x)), vec3<i32>(0i, u_input.a, -2147483647i))), vec3<bool>(true, true, true), !(global0.x < -664f), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -416f)), arg_1.x, Struct_1(_wgslsmith_sub_vec3_i32(select(firstLeadingBit(arg_1.zzz), vec3<i32>(arg_1.x, -35713i, arg_1.x), vec3<bool>(true, true, true)), _wgslsmith_sub_vec3_i32(-arg_1.xzz, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 19254i, 1i), arg_1.wyz))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(false, false, true)), vec3<bool>(true, true, false), all(vec3<bool>(true, true, true)) != all(vec4<bool>(false, true, true, true))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), ~_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(17141u, 4294967295u))), 3079f);
    var var_2 = -948f;
    global1 = array<u32, 28>();
    return (-2147483647i | u_input.c.x) >= ~_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -1i, 1i, -var_1.a.a.x, _wgslsmith_sub_i32(-11690i, -13249i)), vec4<i32>(i32(-1i) * -29509i, -var_1.d.a.x, 0i, min(-2147483647i, var_1.c)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(~(~vec3<i32>(u_input.c.x, 24363i, u_input.c.x)), vec3<bool>(true, false, select(true & (u_input.c.x != 43866i), !func_3(global0.x, vec4<i32>(u_input.c.x, u_input.a, 0i, u_input.a)), !all(vec3<bool>(true, false, false)))), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), global0.x > 1000f)), u_input.d.zy);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f))), global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, global0.x)) * -1197f))) * global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(325f)) + -415f), _wgslsmith_div_f32(-1206f, 1428f))) + _wgslsmith_f_op_f32(f32(-1f) * -280f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1173f - global0.x), -1655f)));
    global1 = array<u32, 28>();
    var var_2 = _wgslsmith_sub_u32(abs(~(~u_input.b.x << ((26569u ^ u_input.d.x) % 32u))), 43405u);
    let var_3 = vec4<i32>(16643i, reverseBits(-41344i), u_input.a, countOneBits(var_0.a.x) >> ((~u_input.b.x ^ _wgslsmith_div_u32(0u, global1[_wgslsmith_index_u32(4294967295u, 28u)])) % 32u)) | ~(~(~(~vec4<i32>(u_input.a, -5040i, 0i, -1i))));
    return var_0;
}

fn func_4(arg_0: Struct_5) -> Struct_4 {
    var var_0 = all(vec4<bool>(all(vec2<bool>(true, true)) & true, false, (1u & ~u_input.d.x) >= arg_0.c.d.x, false));
    let var_1 = select(vec4<bool>(arg_0.c.b.x || (func_2().a.x < _wgslsmith_mult_i32(-8328i, 1i)), arg_0.c.c, _wgslsmith_f_op_f32(-global0.x) < 151f, arg_0.c.c & arg_0.c.b.x), vec4<bool>(func_3(-139f, ~(-vec4<i32>(28143i, -5608i, u_input.a, 19501i))), !(!(!arg_0.c.c)), func_3(global0.x, _wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, arg_0.c.a.x, -5430i, 24219i), ~vec4<i32>(arg_0.b, arg_0.d, arg_0.d, -5530i), vec4<i32>(arg_0.d, 1i, 40607i, 2147483647i))), true), true);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-679f + arg_0.a)))), arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + arg_0.a))));
    global1 = array<u32, 28>();
    let var_3 = arg_0;
    return Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.a)), _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(global0.x * 784f)))), -413f);
}

fn func_1() -> Struct_4 {
    return func_4(Struct_5(_wgslsmith_f_op_f32(-global0.x), u_input.c.x & 0i, func_2(), -firstTrailingBit(45259i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1397f, global0.x, 194f)));
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))));
    var var_0 = _wgslsmith_clamp_i32(4943i, u_input.a, u_input.a);
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -427f)), -1474f));
    var_0 = u_input.c.x;
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~min(u_input.d.xz, ~vec2<u32>(0u, global1[_wgslsmith_index_u32(u_input.b.x, 28u)]))), func_1().a.xwz, _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.d, ~u_input.d), ~max(~vec4<u32>(16394u, 1u, 40940u, 47023u), u_input.d)), u_input.d);
}

