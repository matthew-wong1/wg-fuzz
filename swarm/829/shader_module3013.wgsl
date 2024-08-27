struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true));

var<private> global2: Struct_2;

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global4: f32 = -1242f;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-666f)), -1663f)), _wgslsmith_f_op_f32(-global0.x)))));
    let var_1 = arg_1.c;
    var var_2 = ~_wgslsmith_dot_vec2_u32(~firstLeadingBit(_wgslsmith_mult_vec2_u32(arg_1.b.xz, vec2<u32>(u_input.a, 0u))), _wgslsmith_add_vec2_u32(firstLeadingBit(arg_1.b.zx), vec2<u32>(~39325u, _wgslsmith_clamp_u32(41753u, u_input.e, global2.b.x))));
    var var_3 = reverseBits(-_wgslsmith_clamp_i32(~(-1594i), (u_input.b.x | global2.c) & 1i, -21438i));
    var var_4 = 1i;
    return arg_3.x;
}

fn func_4(arg_0: bool) -> vec4<bool> {
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(644f + -1000f))), global0.x)), _wgslsmith_f_op_f32(global0.x * -518f))));
    let var_0 = _wgslsmith_f_op_f32(round(-139f));
    var var_1 = vec2<u32>(14512u, _wgslsmith_sub_u32(1u, (_wgslsmith_add_u32(global2.b.x, 40148u) ^ 52205u) >> (u_input.a % 32u)));
    global3 = select(vec4<bool>(false, any(vec4<bool>(true, true, false, global2.a.x & false)), global2.a.x, global2.a.x), !vec4<bool>(_wgslsmith_f_op_f32(-278f * var_0) <= _wgslsmith_f_op_f32(min(global0.x, -307f)), true, false, global2.a.x), global2.a);
    var var_2 = ~vec3<u32>(var_1.x, abs(_wgslsmith_dot_vec3_u32(~global2.b, ~vec3<u32>(u_input.a, 67912u, 27321u))), 1u);
    return vec4<bool>(any(!select(vec2<bool>(global3.x, global2.a.x), select(vec2<bool>(true, global2.a.x), vec2<bool>(arg_0, global3.x), false), arg_0)), true, !all(vec3<bool>(true, false, arg_0)), true);
}

fn func_2(arg_0: f32, arg_1: vec2<bool>) -> bool {
    var var_0 = Struct_2(!func_4(select(true, false && global2.a.x, func_3(u_input.b, Struct_2(global2.a, global2.b, 0i), global2.a, vec4<bool>(global2.a.x, arg_1.x, global3.x, global3.x)))), vec3<u32>(min(32372u | global2.b.x, _wgslsmith_mod_u32(121549u, 59109u)) << (~1u % 32u), _wgslsmith_sub_u32(select(4294967295u, global2.b.x, func_4(false).x), ~0u), global2.b.x), 1i | (max(_wgslsmith_div_i32(global2.c, global2.c), min(u_input.b.x, 21132i)) | 350i));
    let var_1 = _wgslsmith_div_vec3_f32(global0.yxy, vec3<f32>(global0.x, -566f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * arg_0))));
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    return !(arg_0 > global0.x) && !all(global2.a);
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = vec2<bool>(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-169f - _wgslsmith_f_op_f32(select(global0.x, global0.x, global2.a.x)))), !(!(!global2.a.wx))), true);
    var var_1 = select(vec3<i32>(~u_input.b.x, _wgslsmith_div_i32(-_wgslsmith_mult_i32(-1i, u_input.b.x), reverseBits(-global2.c)), _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(1i, u_input.b.x), u_input.b.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x), 22687i))), vec3<i32>(~(~global2.c) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b.x, global2.c, u_input.b.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-16569i, global2.c, -1i, 38752i), vec4<i32>(u_input.b.x, u_input.b.x, -1i, -1i))), _wgslsmith_mod_i32(~u_input.b.x, -firstTrailingBit(u_input.b.x)), -8787i), var_0.x);
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, -1000f, global0.x, -937f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(550f, 334f, 761f, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(116f, global0.x, -188f, 1000f) * vec4<f32>(1555f, -1802f, global0.x, global0.x)), !vec4<bool>(true, true, var_0.x, global2.a.x))))))), vec4<f32>(-1540f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1500f - 628f), global0.x) * -1193f), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -746f) - global0.x)), global3.x));
    var var_2 = firstLeadingBit(_wgslsmith_mod_i32(select(global2.c & u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(39808i, global2.c, var_1.x, -2147483647i), vec4<i32>(0i, var_1.x, var_1.x, u_input.b.x)), all(global2.a.yx)) >> (u_input.a % 32u), u_input.b.x));
    var var_3 = select(!select(func_4(true).yzx, !vec3<bool>(var_0.x, false, var_0.x), select(!global3.x, func_3(u_input.b, Struct_2(global2.a, global2.b, global2.c), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(global2.a.x, global2.a.x, global3.x, global3.x)), global3.x)), !func_4(all(select(global2.a, global2.a, global2.a))).wzz, vec3<bool>(var_0.x, !(true | var_0.x), false));
    return Struct_2(func_4(var_3.x), select(_wgslsmith_add_vec3_u32(~(global2.b ^ global2.b), global2.b), global2.b, global3.wwx), -2147483647i >> (~abs(_wgslsmith_div_u32(global2.b.x, u_input.c)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~u_input.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1443f)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(256f * _wgslsmith_f_op_f32(sign(-553f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -726f), global0.x) + _wgslsmith_div_f32(-789f, -867f)));
    var var_3 = _wgslsmith_div_vec3_f32(global0.xzy, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.xzy) - vec3<f32>(_wgslsmith_f_op_f32(ceil(839f)), global0.x, var_2.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-376f, -692f, var_2.x) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, var_2.x, -2480f), vec3<f32>(var_2.x, 129f, global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.xyw, global0.www) + _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -1000f, 739f), vec3<f32>(750f, global0.x, var_2.x)))), global3.x)));
    var var_4 = func_1(u_input.e);
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1754f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -795f, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(949f, var_3.x, -1000f, -2121f) - vec4<f32>(var_2.x, 874f, -1110f, 732f)), func_4(true))))))), vec2<i32>(~(~_wgslsmith_add_i32(u_input.b.x, -2147483647i)), -select(min(-2147483647i, global2.c), global2.c & var_4.c, true | global3.x)), 1174f, _wgslsmith_mod_i32(~reverseBits(-2147483647i), 2147483647i) >> (_wgslsmith_add_u32(4294967295u, u_input.e) % 32u), -17994i);
}

