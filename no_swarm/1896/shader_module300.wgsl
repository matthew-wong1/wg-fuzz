struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: i32,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(57282u, 1u, 4294967295u, 4294967295u, 0u, 28278u, 6141u, 5439u, 22476u, 36955u, 0u);

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(-21267i, vec2<f32>(1000f, -1236f), vec2<i32>(2147483647i, -19650i), 53082u, vec4<bool>(false, false, true, true)));

var<private> global2: array<vec4<bool>, 30>;

var<private> global3: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    global2 = array<vec4<bool>, 30>();
    var var_0 = arg_0.x;
    return arg_0.x;
}

fn func_3(arg_0: Struct_3) -> vec2<f32> {
    global3 = -287f;
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-454f, -393f, 135f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1194f, 1000f, -158f) * vec3<f32>(460f, 1252f, 922f))))))), Struct_1(_wgslsmith_add_i32(~(-19021i), ~(~u_input.b)), vec2<f32>(810f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<f32>(266f, 1084f, -1515f))))), u_input.a.wx, u_input.c, vec4<bool>(!arg_0.c.x & false, false, arg_0.c.x, arg_0.c.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(677f, -783f, 794f, -1278f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(180f, -1000f, 1992f, -583f) + vec4<f32>(119f, 516f, 680f, -525f))))))));
    var var_1 = min(vec3<i32>(firstLeadingBit(35762i), -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.b.c.x, -49834i), vec2<i32>(arg_0.b.x, -40125i)), vec2<i32>(var_0.b.a, arg_0.b.x) | arg_0.b.yw), arg_0.b.x), (_wgslsmith_mod_vec3_i32(arg_0.b.yzz, vec3<i32>(1i, 1i, 1i)) & -(u_input.a.zxz ^ vec3<i32>(u_input.a.x, -30002i, var_0.b.a))) | u_input.a.yyz);
    let var_2 = Struct_3(select(global2[_wgslsmith_index_u32(~7448u | _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(22335u, var_0.b.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(61551u, 11u)], 11u)]), vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 11u)], global0[_wgslsmith_index_u32(52013u, 11u)], 4294967295u)), _wgslsmith_add_u32(44934u, u_input.c)), 30u)], select(!vec4<bool>(true, var_0.b.e.x, true, arg_0.c.x), select(select(vec4<bool>(true, var_0.b.e.x, var_0.b.e.x, true), global2[_wgslsmith_index_u32(u_input.c, 30u)], false), select(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 30u)], vec4<bool>(arg_0.a.x, var_0.b.e.x, true, arg_0.c.x), vec4<bool>(false, false, true, var_0.b.e.x)), global2[_wgslsmith_index_u32(u_input.c & u_input.c, 30u)]), vec4<bool>(arg_0.c.x, var_0.b.e.x && true, true, arg_0.c.x)), !(!select(vec4<bool>(false, var_0.b.e.x, var_0.b.e.x, false), var_0.b.e, arg_0.a.x))), vec4<i32>(min(_wgslsmith_dot_vec3_i32(arg_0.b.ywz, vec3<i32>(var_0.b.a, 24530i, 66713i)), countOneBits(_wgslsmith_mod_i32(66546i, u_input.a.x))), var_1.x, 269i, 27649i), select(select(select(select(vec2<bool>(arg_0.a.x, false), vec2<bool>(var_0.b.e.x, true), true), !var_0.b.e.xz, select(vec2<bool>(true, arg_0.a.x), arg_0.a.wx, vec2<bool>(true, false))), arg_0.a.xx, select(!vec2<bool>(arg_0.c.x, false), vec2<bool>(false, arg_0.a.x), vec2<bool>(false, false))), !vec2<bool>(var_0.b.b.x <= 336f, true), !(_wgslsmith_f_op_f32(sign(-759f)) == var_0.a.x)));
    global2 = array<vec4<bool>, 30>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-682f, 666f))))))));
}

fn func_2() -> f32 {
    let var_0 = 1793f;
    global2 = array<vec4<bool>, 30>();
    global1 = array<Struct_1, 1>();
    global2 = array<vec4<bool>, 30>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(global2[_wgslsmith_index_u32(4294967295u, 30u)], u_input.a, vec2<bool>(false, true)))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-999f, 755f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -346f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-2292f - var_0)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))) + -1613f), 1f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    global0 = array<u32, 11>();
    let var_1 = Struct_3(!global2[_wgslsmith_index_u32(u_input.c, 30u)], vec4<i32>(-391i, u_input.a.x, -max(0i << (u_input.c % 32u), -19111i), -_wgslsmith_dot_vec3_i32(~u_input.a.wwx, ~vec3<i32>(u_input.d.x, u_input.d.x, -2147483647i))), vec2<bool>(true, _wgslsmith_f_op_f32(-562f - -1872f) == _wgslsmith_f_op_f32(step(1220f, _wgslsmith_f_op_f32(floor(-911f))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-353f, 338f, -300f))))));
    let var_3 = _wgslsmith_f_op_f32(func_2());
    global2 = array<vec4<bool>, 30>();
    global0 = array<u32, 11>();
    var var_4 = vec3<bool>(any(select(var_1.c, vec2<bool>(var_1.a.x | var_1.a.x, true), vec2<bool>(var_1.a.x, var_1.c.x))), !(!(!var_1.c.x)), select((var_1.a.x || select(var_1.a.x, var_1.a.x, false)) && true, !var_1.c.x, var_1.a.x & !any(var_1.a.xw)));
    let var_5 = var_4.x | var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3, 19844u >> (_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(49568u, 11u)], 79556u), vec2<u32>(62927u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 11u)], 11u)]) | vec2<u32>(0u, u_input.c))) % 32u), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, u_input.d.x, u_input.a.x, -18797i), u_input.a) >> (~global0[_wgslsmith_index_u32(1u, 11u)] % 32u)) | u_input.a.x, abs(u_input.a.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(699f, var_2, _wgslsmith_f_op_f32(-var_2), 1000f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, -883f, var_2, 712f) - vec4<f32>(var_3, var_2, -520f, -1222f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1226f, var_2, -1253f, 1487f) + vec4<f32>(2008f, -900f, -991f, 548f)))))))));
}

