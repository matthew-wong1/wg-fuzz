struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 2>;

var<private> global1: array<i32, 2> = array<i32, 2>(0i, 1i);

var<private> global2: u32 = 192u;

var<private> global3: Struct_4 = Struct_4(35933i, vec2<f32>(975f, 134f), Struct_2(Struct_1(vec4<u32>(63173u, 5620u, 1u, 1u), -1i, vec2<i32>(-15539i, 1i), true, vec4<u32>(4294967295u, 29722u, 1u, 4294967295u)), vec3<bool>(true, true, true)), 0i);

var<private> global4: array<u32, 7> = array<u32, 7>(1u, 86152u, 0u, 14125u, 43512u, 4294967295u, 105084u);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<i32> {
    global4 = array<u32, 7>();
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.b) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global3.b))), vec2<f32>(_wgslsmith_f_op_f32(max(-185f, -547f)), _wgslsmith_f_op_f32(-877f + 911f)))), _wgslsmith_f_op_vec2_f32(global3.b - vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(global3.b.x * global3.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.b.x * global3.b.x), _wgslsmith_f_op_f32(1000f + 1000f))))));
    var var_1 = 22699u;
    var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global3.b.x), var_0.x) * vec2<f32>(_wgslsmith_f_op_f32(select(234f, 1028f, false)), _wgslsmith_div_f32(-1762f, 1000f))), global3.b)));
    let var_2 = 428u;
    return ~max(~countOneBits(vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 7u)], 2u)])) & vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b.xzy, vec3<i32>(u_input.a, 43794i, -56824i)), 1i), vec2<i32>(_wgslsmith_dot_vec2_i32(select(u_input.c.yx, global3.c.a.c, global3.c.b.x), abs(global3.c.a.c)), u_input.a));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: f32) -> vec3<u32> {
    var var_0 = Struct_3(Struct_2(Struct_1(global3.c.a.a, 2147483647i, _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(global3.c.a.c, arg_0.zx, vec2<i32>(22690i, 33495i)), func_3()), true, global3.c.a.e), vec3<bool>(true, !global3.c.a.d, true & (global3.c.a.d | global3.c.b.x))), global3.c, !global3.c.a.d || true, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2314f + global3.b.x) - _wgslsmith_f_op_f32(exp2(arg_2))) * _wgslsmith_f_op_f32(-1030f * _wgslsmith_f_op_f32(f32(-1f) * -393f))), _wgslsmith_f_op_f32(263f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + arg_2) - 1575f))));
    var var_1 = var_0.c;
    let var_2 = _wgslsmith_f_op_f32(step(-1358f, 2124f));
    let var_3 = 1150f;
    global1 = array<i32, 2>();
    return vec3<u32>(_wgslsmith_add_u32(8091u, var_0.b.a.e.x), firstLeadingBit(~(~(u_input.d >> (25361u % 32u)))), ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(global3.c.a.a.x, global3.c.a.a.x) ^ abs(0u), 1977u, ~(~1u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4) -> Struct_4 {
    var var_0 = Struct_1(~arg_1.c.a.e, max(abs(~(-34767i)), ~(countOneBits(72815i) & (global3.d << (global3.c.a.e.x % 32u)))), _wgslsmith_add_vec2_i32(vec2<i32>(~_wgslsmith_clamp_i32(6808i, u_input.c.x, 0i), -(~u_input.b.x)), global3.c.a.c >> (abs(~arg_0.yz) % vec2<u32>(32u))), arg_1.c.a.d, global3.c.a.e);
    var var_1 = ~vec4<i32>(arg_1.c.a.c.x, _wgslsmith_mod_i32(24764i, u_input.a) & arg_1.d, -(~global3.c.a.c.x ^ _wgslsmith_mult_i32(global3.a, -7185i)), abs(_wgslsmith_add_i32(-arg_1.d, ~global1[_wgslsmith_index_u32(57655u, 2u)])));
    let var_2 = all(select(vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 28706u, 40174u), vec3<u32>(1u, 1u, 4294967295u)) > ~u_input.e, _wgslsmith_div_f32(global3.b.x, 686f) != _wgslsmith_f_op_f32(-global3.b.x)), global3.c.b.zy, vec2<bool>(!all(vec4<bool>(true, arg_1.c.a.d, global3.c.a.d, true)), true)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1105f)));
    var_1 = _wgslsmith_add_vec4_i32(abs(u_input.b), vec4<i32>(-26598i, global3.c.a.b, global3.c.a.b, func_3().x));
    return Struct_4(u_input.c.x >> (0u % 32u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.b.x - arg_1.b.x), _wgslsmith_f_op_f32(-global3.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-650f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.b * _wgslsmith_f_op_vec2_f32(select(arg_1.b, vec2<f32>(341f, global3.b.x), arg_1.c.b.yz))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.b.x, -1000f))))), Struct_2(Struct_1(arg_1.c.a.a, select(13884i & arg_1.d, _wgslsmith_sub_i32(34738i, var_1.x), !global3.c.b.x), vec2<i32>(-var_0.b, global3.c.a.c.x), (u_input.c.x & -33831i) <= global3.c.a.c.x, var_0.a), vec3<bool>(true, var_0.d, any(!vec2<bool>(global3.c.b.x, arg_1.c.a.d)))), -2147483647i);
}

fn func_1(arg_0: i32) -> f32 {
    global1 = array<i32, 2>();
    var var_0 = _wgslsmith_sub_vec3_u32(global3.c.a.e.zwz, ~global3.c.a.e.wyw);
    global3 = func_4(func_2(_wgslsmith_add_vec3_i32(u_input.c << (global3.c.a.a.xzx % vec3<u32>(32u)), u_input.c) << (global3.c.a.a.yxy % vec3<u32>(32u)), arg_0, _wgslsmith_div_f32(global3.b.x, -229f)), Struct_4(global3.d, _wgslsmith_f_op_vec2_f32(exp2(global3.b)), global3.c, u_input.a));
    return -2335f;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: vec2<i32>) -> Struct_4 {
    global2 = _wgslsmith_dot_vec3_u32(countOneBits(arg_1.a.a.zxx), ~abs(~vec3<u32>(u_input.d, 0u, global4[_wgslsmith_index_u32(0u, 7u)])));
    var var_0 = !global3.c.a.d;
    var var_1 = global3.b.x;
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global3.c.a.e.yzy, global3.c.a.a.zyz), ~0u);
    let var_3 = u_input.b ^ u_input.b;
    return func_4(_wgslsmith_add_vec3_u32(global3.c.a.a.wyw, ~global3.c.a.e.yxz), func_4(min(_wgslsmith_sub_vec3_u32(func_2(vec3<i32>(arg_1.a.c.x, 6640i, 2147483647i), arg_3.x, -233f), vec3<u32>(23891u, global4[_wgslsmith_index_u32(0u, 7u)], 111213u)), global3.c.a.a.zzw), func_4(countOneBits(min(arg_1.a.a.yxw, global3.c.a.e.xyx)), func_4(arg_1.a.e.zzx, Struct_4(2147483647i, vec2<f32>(1000f, 718f), Struct_2(Struct_1(vec4<u32>(0u, 43945u, arg_1.a.e.x, global3.c.a.e.x), arg_1.a.c.x, vec2<i32>(u_input.a, -2147483647i), false, vec4<u32>(global3.c.a.a.x, global4[_wgslsmith_index_u32(1u, 7u)], 74825u, arg_1.a.e.x)), vec3<bool>(global3.c.b.x, true, false)), 4170i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(_wgslsmith_f_op_f32(func_1(~global1[_wgslsmith_index_u32(0u, 2u)])), func_4(global3.c.a.e.xyz, func_4(vec3<u32>(func_4(vec3<u32>(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(39665u, 7u)], 7u)], u_input.d), Struct_4(global1[_wgslsmith_index_u32(0u, 2u)], global3.b, Struct_2(global3.c.a, vec3<bool>(global3.c.a.d, global3.c.b.x, true)), 2147483647i)).c.a.a.x, func_2(u_input.b.wxw, 68957i, global3.b.x).x, _wgslsmith_add_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3.c.a.e.x, 7u)], 7u)], 30302u)), Struct_4(reverseBits(-19207i), vec2<f32>(global3.b.x, global3.b.x), global3.c, firstLeadingBit(0i)))).c, -8757i, global3.c.a.c);
    global4 = array<u32, 7>();
    var var_0 = true;
    let var_1 = select(select(select(!vec4<bool>(global3.c.b.x, false, global3.c.a.d, true), !vec4<bool>(true, global3.c.a.d, global3.c.b.x, true), global3.c.a.d), select(!vec4<bool>(global3.c.b.x, false, true, false), !(!vec4<bool>(global3.c.a.d, global3.c.a.d, false, global3.c.b.x)), vec4<bool>(all(vec2<bool>(false, global3.c.b.x)), global3.c.b.x | global3.c.b.x, -1i > global3.d, true)), global3.c.a.d), select(select(vec4<bool>(func_4(global3.c.a.e.zyw, Struct_4(48079i, global3.b, global3.c, global3.d)).c.b.x, false, true, false), vec4<bool>(!global3.c.b.x, !global3.c.b.x, all(vec2<bool>(false, global3.c.a.d)), !global3.c.b.x), !select(vec4<bool>(global3.c.b.x, false, global3.c.b.x, true), vec4<bool>(global3.c.a.d, global3.c.b.x, global3.c.b.x, global3.c.a.d), global3.c.a.d)), select(vec4<bool>(global4[_wgslsmith_index_u32(17863u, 7u)] < global3.c.a.e.x, false, true, true), select(!vec4<bool>(true, false, global3.c.a.d, global3.c.b.x), select(vec4<bool>(global3.c.b.x, global3.c.a.d, true, global3.c.b.x), vec4<bool>(true, false, true, global3.c.a.d), vec4<bool>(global3.c.a.d, true, true, global3.c.a.d)), !vec4<bool>(global3.c.b.x, false, global3.c.b.x, global3.c.b.x)), !select(vec4<bool>(global3.c.b.x, global3.c.a.d, true, false), vec4<bool>(global3.c.b.x, true, global3.c.b.x, global3.c.b.x), vec4<bool>(global3.c.b.x, global3.c.a.d, true, global3.c.a.d))), vec4<bool>(all(select(vec4<bool>(global3.c.b.x, global3.c.a.d, global3.c.a.d, true), vec4<bool>(true, false, true, false), global3.c.a.d)), global3.c.a.d, !(global3.c.a.a.x == global3.c.a.e.x), !any(vec2<bool>(global3.c.a.d, global3.c.a.d)))), !select(vec4<bool>(global3.c.a.d, !global3.c.a.d, global3.c.b.x, false), !select(vec4<bool>(global3.c.a.d, global3.c.a.d, global3.c.b.x, true), vec4<bool>(global3.c.b.x, global3.c.b.x, global3.c.b.x, global3.c.a.d), vec4<bool>(false, global3.c.b.x, false, global3.c.a.d)), (true || global3.c.a.d) != !global3.c.a.d));
    let var_2 = !(global3.b.x != _wgslsmith_f_op_f32(min(732f, _wgslsmith_div_f32(-692f, global3.b.x))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -271f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)))));
    global0 = array<vec2<u32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, global3.c.a.e.xww >> ((~global3.c.a.a.yxw << (vec3<u32>(1u, global3.c.a.e.x, abs(1u)) % vec3<u32>(32u))) % vec3<u32>(32u)), select(~u_input.c.zy, u_input.c.zy, !global3.c.b.x && true) | abs(-(~global3.c.a.c)), countOneBits(vec4<u32>(reverseBits(firstLeadingBit(global3.c.a.a.x)), global3.c.a.a.x, ~(~18929u), global3.c.a.e.x)), global3.c.a.e.yxx);
}

