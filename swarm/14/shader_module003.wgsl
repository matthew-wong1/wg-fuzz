struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32;

var<private> global2: vec3<f32>;

var<private> global3: bool = false;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> vec4<f32> {
    var var_0 = Struct_1(!arg_2.c.c, vec4<i32>(-2147483647i, _wgslsmith_div_i32(-73920i, -2147483647i), firstLeadingBit(arg_2.a.b.x), 1i), select(!select(arg_2.a.a, arg_2.c.a, arg_2.a.a.x || arg_2.a.c.x), select(vec4<bool>(true, all(vec2<bool>(arg_1, arg_2.e.x)), arg_2.c.a.x, true), vec4<bool>(any(arg_2.c.a.xwy), !arg_2.e.x, arg_1 | arg_1, any(vec2<bool>(false, arg_1))), true), arg_2.a.c.x));
    var var_1 = _wgslsmith_mult_vec4_u32(u_input.c, firstLeadingBit(_wgslsmith_add_vec4_u32(select(~u_input.c, vec4<u32>(u_input.c.x, 0u, 60322u, 4294967295u), arg_2.c.a.x), u_input.c)));
    global3 = !any(select(vec2<bool>(false, var_0.c.x), !(!vec2<bool>(arg_1, true)), !(!vec2<bool>(arg_1, true))));
    var var_2 = ~var_1.x;
    let var_3 = var_0.a.wyy;
    return _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-1121f * _wgslsmith_f_op_f32(min(arg_2.b, 480f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -546f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(643f)))), _wgslsmith_f_op_f32(-global2.x), global2.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = any(vec4<bool>(true, all(vec2<bool>(true, true)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false))), true)) | (select(u_input.b, ~u_input.a, false) >= u_input.a);
    var var_1 = global2.x;
    let var_2 = Struct_2(min(-1i, 2147483647i), !vec2<bool>(true, var_0), Struct_1(vec4<bool>(any(vec4<bool>(var_0, true, false, var_0)), var_0, var_0, false), abs(countOneBits(min(vec4<i32>(-82599i, -34166i, 1i, -1i), vec4<i32>(-2147483647i, 778i, -1i, 2147483647i)))), !select(vec4<bool>(var_0, true, var_0, true), vec4<bool>(true, var_0, false, false), true)), _wgslsmith_f_op_vec2_f32(-global2.xy), vec3<u32>(u_input.a, u_input.a, 1u & u_input.c.x));
    global1 = ~abs(_wgslsmith_sub_i32(1i, var_2.a));
    var var_3 = _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1770f) - -410f)), var_0, Struct_3(Struct_1(select(var_2.c.c, var_2.c.c, vec4<bool>(true, true, true, true)), vec4<i32>(-2147483647i, firstTrailingBit(var_2.c.b.x), -var_2.c.b.x, 31342i), var_2.c.c), 462f, Struct_1(var_2.c.c, ~var_2.c.b, vec4<bool>(var_2.e.x < u_input.a, false | var_0, select(false, false, var_0), true)), var_2.e.zy, !var_2.b)));
    return var_2;
}

fn func_1() -> vec4<i32> {
    global3 = true;
    global0 = _wgslsmith_dot_vec3_u32(u_input.c.yxw, ~(~u_input.c.yyz));
    var var_0 = _wgslsmith_mult_i32(69020i, ((abs(1i) >> (u_input.b % 32u)) & 16203i) >> (~u_input.b % 32u));
    var var_1 = _wgslsmith_dot_vec3_u32(u_input.c.zwy, ~abs(~_wgslsmith_clamp_vec3_u32(u_input.c.yzx, vec3<u32>(1u, 4294967295u, 47132u), u_input.c.zyz)));
    let var_2 = func_2();
    return vec4<i32>(-var_2.a, _wgslsmith_sub_i32(-var_2.c.b.x, _wgslsmith_sub_i32(var_2.c.b.x, -15002i) ^ var_2.a) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(var_2.c.b, func_2().c.b), -reverseBits(vec4<i32>(-27489i, var_2.a, var_2.a, 0i))), var_2.a, var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(~_wgslsmith_mod_vec4_i32(~func_1(), abs(-vec4<i32>(-2147483647i, -60090i, -1i, -1i))), _wgslsmith_sub_vec4_i32(select(vec4<i32>(25401i, ~(-2147483647i), _wgslsmith_add_i32(17879i, -1i), 30662i), vec4<i32>(1i, 1i, 1i, 1i), true), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-43157i, -16101i), abs(1i)), 40450i, _wgslsmith_clamp_i32(0i, firstTrailingBit(-25941i), -2147483647i), -1i)));
    let var_1 = select(func_2().c.c, !vec4<bool>(true, any(vec3<bool>(false, true, false)) & (var_0.x <= -2147483647i), func_2().b.x, true), select(!vec4<bool>(true, 26798i <= var_0.x, true, true), vec4<bool>(all(vec2<bool>(false, true)) || true, false, all(vec3<bool>(true, true, true)), global2.x != _wgslsmith_f_op_f32(global2.x - global2.x)), false));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~vec3<u32>(0u ^ u_input.a, max(4294967295u, u_input.b), u_input.b)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1632f))), 1506f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(-global2.x))))));
}

