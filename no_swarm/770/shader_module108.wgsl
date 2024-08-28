struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: vec4<bool>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global2: vec2<bool>;

var<private> global3: Struct_1 = Struct_1(vec2<i32>(-24354i, -21653i), true, vec3<f32>(-1379f, 469f, 1006f), vec2<u32>(44561u, 1u));

var<private> global4: array<f32, 13>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: f32, arg_3: vec4<f32>) -> bool {
    let var_0 = ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, ~arg_1.x, 4294967295u, reverseBits(u_input.a.x)), vec4<u32>(1u, 4294967295u, _wgslsmith_mult_u32(1u, 0u), arg_1.x), reverseBits(max(vec4<u32>(arg_1.x, global3.d.x, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, u_input.a.x, u_input.a.x, global3.d.x)))));
    return all(vec4<bool>(false, false, global2.x, true));
}

fn func_2() -> vec4<bool> {
    var var_0 = !((~46504u & (1u ^ _wgslsmith_dot_vec3_u32(u_input.a, u_input.a))) != ~20491u);
    return select(!(!(!vec4<bool>(true, global3.b, false, global2.x))), !select(select(vec4<bool>(true, true, global3.b, global2.x), !vec4<bool>(global2.x, false, global2.x, global2.x), true), select(!vec4<bool>(true, true, global3.b, global2.x), !vec4<bool>(global3.b, global2.x, global3.b, global3.b), !vec4<bool>(global3.b, true, true, false)), !select(vec4<bool>(false, global3.b, global2.x, true), vec4<bool>(true, global2.x, true, global3.b), vec4<bool>(true, global3.b, global2.x, global2.x))), select(true, true, func_3(-1000f, select(_wgslsmith_sub_vec3_u32(u_input.a, u_input.a), u_input.a >> (u_input.a % vec3<u32>(32u)), !vec3<bool>(global3.b, false, global2.x)), 988f, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global4[_wgslsmith_index_u32(1u, 13u)], global4[_wgslsmith_index_u32(1u, 13u)], -396f, global4[_wgslsmith_index_u32(26272u, 13u)]))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: bool) -> vec3<u32> {
    global3 = Struct_1(-global3.a, all(func_2()), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, abs(67936u)), 13u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -648f))), _wgslsmith_f_op_f32(-global3.c.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global3.c))))), u_input.a.xx);
    let var_0 = _wgslsmith_sub_u32(abs(u_input.a.x), ~16850u);
    var var_1 = global3.b;
    var var_2 = Struct_2(1000f, -_wgslsmith_mod_vec3_i32(~(vec3<i32>(global3.a.x, global3.a.x, -25107i) >> (vec3<u32>(u_input.a.x, 49244u, u_input.a.x) % vec3<u32>(32u))), ~(vec3<i32>(global3.a.x, global3.a.x, global3.a.x) ^ vec3<i32>(-2147483647i, 2147483647i, -2147483647i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-554f, global4[_wgslsmith_index_u32(1u, 13u)])), 241f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2095f)), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~1u, 13u)] - 1481f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, _wgslsmith_f_op_f32(f32(-1f) * -393f), global3.c.x, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(74346u, 13u)] - global4[_wgslsmith_index_u32(u_input.a.x, 13u)])))));
    global3 = Struct_1(-vec2<i32>(firstTrailingBit(7504i), 0i), false | global2.x, var_2.c.zxz, vec2<u32>(select(1u, 17517u, any(vec3<bool>(global3.b, true, arg_1.x))), 4294967295u));
    return ~_wgslsmith_mult_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, var_0) << (_wgslsmith_sub_vec3_u32(vec3<u32>(39369u, 4294967295u, 0u), u_input.a) % vec3<u32>(32u)), abs(vec3<u32>(48298u, 38530u, 1u)) << (vec3<u32>(global3.d.x, var_0, 4294967295u) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 5>();
    var var_0 = ~reverseBits(~(~max(u_input.a, vec3<u32>(global3.d.x, global3.d.x, u_input.a.x))));
    var var_1 = all(global1[_wgslsmith_index_u32(var_0.x, 5u)]);
    var_0 = max(~(_wgslsmith_mult_vec3_u32(u_input.a, reverseBits(vec3<u32>(global3.d.x, 17353u, global3.d.x))) >> (func_1(vec3<f32>(-291f, 316f, 1385f), !vec4<bool>(true, global3.b, false, global2.x), global3.b) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(~abs(u_input.a), _wgslsmith_mod_vec3_u32(~vec3<u32>(53307u, global3.d.x, 4294967295u), select(vec3<u32>(0u, 25591u, var_0.x), vec3<u32>(global3.d.x, 13046u, u_input.a.x), global3.b))) | min(u_input.a | u_input.a, ~u_input.a << (vec3<u32>(0u, 1u, 36159u) % vec3<u32>(32u))));
    global3 = Struct_1(vec2<i32>(_wgslsmith_add_i32(global3.a.x, abs(1i) >> (_wgslsmith_mod_u32(global3.d.x, var_0.x) % 32u)), _wgslsmith_mod_i32(firstTrailingBit(min(0i, global3.a.x)), abs(-2147483647i))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4[_wgslsmith_index_u32(18934u, 13u)], global4[_wgslsmith_index_u32(38557u, 13u)], global3.c.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-545f, -394f, global3.c.x), global3.c, global2.x)))))), ~global3.d ^ u_input.a.yx);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(min(~vec4<u32>(1u, u_input.a.x, global3.d.x, 53008u), abs(vec4<u32>(var_0.x, 4531u, u_input.a.x, 49844u))) | vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.d.x, global3.d.x, 1u, 53642u), vec4<u32>(global3.d.x, var_0.x, var_0.x, u_input.a.x)), max(var_0.x, global3.d.x), var_0.x, select(4294967295u, u_input.a.x, false))));
}

