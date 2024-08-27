struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(false, false, true, true), Struct_2(vec2<bool>(false, true)));

var<private> global1: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true));

var<private> global2: array<Struct_3, 9>;

var<private> global3: vec3<u32> = vec3<u32>(18116u, 4294967295u, 6858u);

var<private> global4: u32 = 26136u;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_3 {
    global4 = u_input.b;
    global2 = array<Struct_3, 9>();
    global2 = array<Struct_3, 9>();
    global4 = ~2176u;
    let var_0 = ~vec4<i32>(1i, 1i, 1i, 1i);
    return global2[_wgslsmith_index_u32(global3.x, 9u)];
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(12913u, u_input.a.x, 75369u), _wgslsmith_clamp_vec3_u32(vec3<u32>(19405u, u_input.a.x, 123357u), vec3<u32>(global3.x, 69505u, 38916u), vec3<u32>(4294967295u, 14425u, u_input.b))), abs(~vec3<u32>(1u, u_input.b, u_input.b))), u_input.b, 0u, ~(_wgslsmith_div_u32(0u, u_input.b) | 1u)), u_input.a), 9u)];
    global3 = reverseBits(~u_input.a.wwx);
    let var_1 = Struct_2(!func_2().b.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(268f * -371f), _wgslsmith_f_op_f32(max(726f, -183f)), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -141f))), -1000f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-278f, -1000f, -1335f) + vec3<f32>(514f, 2630f, 498f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(440f, -107f, 1612f), vec3<f32>(-927f, -137f, 1111f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(559f, -300f, 821f), vec3<f32>(1658f, -1282f, 353f), false)))))));
    return 38321i;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    return func_2().b;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = global0.b;
    global1 = array<vec4<bool>, 12>();
    global1 = array<vec4<bool>, 12>();
    return func_4(func_2(), func_2(), ~_wgslsmith_clamp_i32(-21930i, i32(-1i) * -24332i, func_3(true)), Struct_1(select(func_2().a, func_2().a, select(global0.a, vec4<bool>(false, true, false, true), func_2().a)), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global3.x) >> (_wgslsmith_div_vec2_u32(global3.yz, arg_0.b) % vec2<u32>(32u)), abs(~vec2<u32>(u_input.b, 8910u))), min(~vec4<i32>(-13172i, 0i, -56199i, 29934i), firstLeadingBit(vec4<i32>(arg_0.c.x, -157i, arg_0.c.x, arg_0.c.x)) >> (vec4<u32>(global3.x, u_input.a.x, 1u, arg_0.b.x) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = global0.a.zyy;
    global1 = array<vec4<bool>, 12>();
    global3 = ~vec3<u32>(~(~(~79028u)), 58929u, select(_wgslsmith_mult_u32(0u & global3.x, global3.x), global3.x, true));
    let var_2 = func_1(Struct_1(!select(select(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(u_input.b, 12u)], vec4<bool>(true, global0.a.x, global0.a.x, global0.a.x)), vec4<bool>(global0.b.a.x, global0.a.x, false, var_1.x), !global0.a), select(vec2<u32>(global3.x, u_input.b), ~vec2<u32>(6598u, global3.x), var_1.x) ^ vec2<u32>(_wgslsmith_add_u32(global3.x, 1002u), u_input.b), ~vec4<i32>(58044i, _wgslsmith_mod_i32(1i, -1i), ~(-2147483647i), ~2147483647i)));
    global2 = array<Struct_3, 9>();
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1696f, _wgslsmith_f_op_f32(f32(-1f) * -178f), func_1(Struct_1(vec4<bool>(var_2.a.x, false, var_3.a.x, var_3.a.x), global3.zy, vec4<i32>(0i, -1i, 25406i, 32794i))).a.x)))), 1f)), abs(_wgslsmith_add_i32(~(-1i), -58698i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2130f) * -1000f), 23771u, -1000f);
}

