struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32;

var<private> global2: vec4<f32> = vec4<f32>(1000f, -1064f, -665f, -1376f);

var<private> global3: array<i32, 19>;

var<private> global4: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = arg_0;
    var_0 = Struct_2(var_0.a, vec2<i32>(0i, _wgslsmith_add_i32(var_0.c.a & var_0.a.a, -15599i) ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.d.x, global3[_wgslsmith_index_u32(arg_0.c.b, 19u)], -51877i), firstTrailingBit(vec3<i32>(-6822i, -24040i, 1i)))), arg_0.c, vec2<i32>(-1i) * -arg_0.d, _wgslsmith_div_vec2_u32(countOneBits(u_input.d.wx), u_input.d.xy));
    global1 = global2.x;
    var var_1 = arg_0;
    let var_2 = var_0.a;
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(546f)), _wgslsmith_f_op_f32(299f * _wgslsmith_f_op_f32(-global2.x))) - -451f), 765f, 464f);
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_3(vec2<u32>(~4294967295u, reverseBits(_wgslsmith_dot_vec2_u32(u_input.d.xy, vec2<u32>(u_input.a, u_input.d.x)) << (u_input.d.x % 32u))));
    var var_1 = select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), !(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), false))), select(vec2<bool>(true, !any(vec3<bool>(true, false, false))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(global2.x < global2.x, false), true)));
    let var_2 = Struct_1(max(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -1012i, 5989i), vec3<i32>(-2147483647i, 2147483647i, 1i))), ~(-2147483647i)), 55662u, true, !(!(!(!vec4<bool>(var_1.x, var_1.x, false, var_1.x)))));
    let var_3 = ~vec4<i32>(abs(-1i >> (_wgslsmith_div_u32(u_input.a, 53796u) % 32u)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(37685i, i32(-1i) * -2147483647i), firstTrailingBit(-63615i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 27156u), u_input.d.zw) % 32u), firstLeadingBit(0i)), 0i, -20519i);
    var var_4 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 35072u, _wgslsmith_mod_u32(var_2.b, var_0.a.x)), ~(~vec3<u32>(1u, 1u, 0u))), _wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(20140u, 64829u, 47164u)), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(36480u, 34629u, 1u), u_input.d.zwx), u_input.d.zyz), abs(vec3<u32>(var_2.b, var_0.a.x, u_input.a) | u_input.d.ywz)));
    return _wgslsmith_div_vec4_f32(vec4<f32>(693f, global2.x, -1653f, global2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, global2.x, -469f, -1433f))), vec4<f32>(global2.x, _wgslsmith_f_op_f32(ceil(global2.x)), global2.x, _wgslsmith_f_op_f32(min(global2.x, 1346f)))))));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: bool) -> bool {
    var var_0 = global2.zy;
    let var_1 = Struct_3(~u_input.d.yx);
    var var_2 = !(!select(select(vec3<bool>(false, arg_2, false), vec3<bool>(true, true, arg_2), select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(true, arg_2, arg_2), vec3<bool>(false, arg_2, arg_2))), !(!vec3<bool>(false, arg_2, arg_2)), arg_2));
    let var_3 = vec4<u32>(u_input.a, 4294967295u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.a.x, 42467u), _wgslsmith_mult_u32(var_1.a.x, _wgslsmith_sub_u32(var_1.a.x, _wgslsmith_mod_u32(u_input.d.x, 1u)))), u_input.d.x);
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1421f, global2.x, arg_1.x, arg_0), vec4<f32>(arg_1.x, global2.x, 477f, var_0.x)))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2.x + var_0.x), -1429f, 1000f, _wgslsmith_f_op_f32(-var_0.x)), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(340f + var_0.x), -248f, _wgslsmith_div_f32(arg_1.x, -1000f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-822f, -253f, 617f, var_0.x), vec4<f32>(global2.x, global2.x, global2.x, -1120f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, global2.x, 1080f, 1083f))) + _wgslsmith_f_op_vec4_f32(func_3())), select(select(vec4<bool>(false, false, false, true), vec4<bool>(var_2.x, false, arg_2, arg_2), vec4<bool>(arg_2, arg_2, true, var_2.x)), vec4<bool>(true, true, arg_2, arg_2), true))), !select(select(vec4<bool>(true, arg_2, arg_2, var_2.x), vec4<bool>(arg_2, false, true, arg_2), arg_2), vec4<bool>(true, var_2.x, true, var_2.x), select(vec4<bool>(arg_2, true, var_2.x, true), vec4<bool>(false, true, arg_2, true), vec4<bool>(arg_2, false, arg_2, arg_2))))));
    return !(!var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(u_input.d.ww | select(~vec2<u32>(28852u, 37600u), ~(vec2<u32>(0u, 0u) >> (vec2<u32>(u_input.d.x, 24339u) % vec2<u32>(32u))), false));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.x, global2.x, 1338f, global2.x))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-168f, 1000f, 719f, 1000f))))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1625f))), global2.x);
    global0 = var_2.x;
    global1 = var_2.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.zy, _wgslsmith_f_op_vec2_f32(trunc(var_1.yz))));
    global4 = any(select(vec3<bool>(false & select(false, false, true), false, func_2(641f, _wgslsmith_f_op_vec3_f32(func_1(Struct_2(Struct_1(-2651i, u_input.a, false, vec4<bool>(false, false, false, false)), vec2<i32>(-1i, -1i), Struct_1(global3[_wgslsmith_index_u32(var_0.a.x, 19u)], var_0.a.x, true, vec4<bool>(true, false, true, true)), vec2<i32>(-1i, 25222i), u_input.d.xy))), true)), vec3<bool>(false, reverseBits(u_input.d.x) >= ~4294967295u, select(54788u, var_0.a.x, true) > 10046u), true | select(false, true, any(vec3<bool>(false, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(~(~vec2<i32>(27449i, 0i)), vec2<i32>(-37391i, u_input.b) << (~vec2<u32>(var_0.a.x, var_0.a.x) % vec2<u32>(32u))), vec2<i32>(-20718i, -25592i)));
}

