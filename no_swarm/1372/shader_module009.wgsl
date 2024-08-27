struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(40382u, Struct_1(4294967295u, vec2<i32>(2147483647i, -1i), 4294967295u), false, Struct_2(12915i, vec4<bool>(false, true, false, true), vec2<bool>(true, true), vec2<u32>(0u, 67635u))), Struct_3(53961u, Struct_1(44027u, vec2<i32>(-1i, -1i), 58045u), false, Struct_2(1i, vec4<bool>(false, true, false, true), vec2<bool>(false, true), vec2<u32>(23702u, 71958u))), Struct_3(4294967295u, Struct_1(0u, vec2<i32>(-1092i, -1i), 4294967295u), false, Struct_2(i32(-2147483648), vec4<bool>(true, false, true, true), vec2<bool>(true, false), vec2<u32>(0u, 8320u))));

var<private> global1: array<f32, 20>;

var<private> global2: array<f32, 10> = array<f32, 10>(2017f, 231f, -1000f, -773f, 1000f, 844f, 370f, -2157f, -405f, -542f);

var<private> global3: vec3<bool>;

var<private> global4: array<bool, 20>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> i32 {
    return ~(~(~reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -9883i, arg_0), u_input.b))));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: f32) -> Struct_3 {
    global2 = array<f32, 10>();
    let var_0 = func_3(u_input.a);
    global1 = array<f32, 20>();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-519f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-835f - 406f) * _wgslsmith_f_op_f32(f32(-1f) * -126f)), _wgslsmith_f_op_f32(f32(-1f) * -1171f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_2)), arg_2, !(u_input.d < u_input.d))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2 - 627f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(905f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(10812u, 10u)] + -1112f), global1[_wgslsmith_index_u32(65291u, 20u)], -108f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(16916u, 20u)], global2[_wgslsmith_index_u32(45812u, 10u)], -1244f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1261f, global2[_wgslsmith_index_u32(0u, 10u)], arg_2, 1132f) - vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 10u)], global1[_wgslsmith_index_u32(0u, 20u)], 767f, -1677f))) - vec4<f32>(_wgslsmith_f_op_f32(arg_2 + 576f), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(6284u, u_input.d), 10u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 20u)]), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.c.x, 10u)])))), !all(!global3.xy))), !all(arg_0.xy)));
    global3 = arg_0.xyy;
    return Struct_3(firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 4294967295u, 47015u) << (abs(u_input.c) % vec3<u32>(32u)))), Struct_1(4294967295u, u_input.b.xy, u_input.d), any(vec2<bool>(global4[_wgslsmith_index_u32(reverseBits(reverseBits(4294967295u)), 20u)], all(!global3.yy))), Struct_2(1i, !(!(!arg_0)), global3.xz, min(_wgslsmith_add_vec2_u32(~vec2<u32>(0u, 0u), u_input.c.xz), u_input.c.zz)));
}

fn func_1() -> u32 {
    var var_0 = func_2(!(!(!select(vec4<bool>(false, true, false, global4[_wgslsmith_index_u32(u_input.c.x, 20u)]), vec4<bool>(global4[_wgslsmith_index_u32(1993u, 20u)], true, global3.x, true), global3.x))), true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~u_input.d, 10u)] * global1[_wgslsmith_index_u32(13840u, 20u)]), -419f) - -931f));
    global4 = array<bool, 20>();
    return _wgslsmith_mod_u32(4294967295u, ~0u) | _wgslsmith_dot_vec4_u32(vec4<u32>(~(5834u >> (var_0.b.c % 32u)), _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(63107u, 1u, var_0.b.a, 1u), vec4<u32>(u_input.d, u_input.c.x, var_0.a, u_input.d))), 4294967295u, var_0.b.a), abs(select(vec4<u32>(41518u, 26991u, 1u, 25309u), vec4<u32>(3954u, 0u, 1u, 40201u), vec4<bool>(true, true, false, var_0.c))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, u_input.c.x, 60853u) >> (vec4<u32>(1u, u_input.c.x, 19008u, u_input.d) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, var_0.a, 0u, var_0.d.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(select(~(~u_input.c.x), 0u, true), 3u)];
    let var_1 = var_0.d;
    global2 = array<f32, 10>();
    var_0 = Struct_3(~(~_wgslsmith_clamp_u32(var_1.d.x >> (1u % 32u), ~var_0.a, var_1.d.x)), var_0.b, false, var_0.d);
    let var_2 = var_0.d;
    var var_3 = _wgslsmith_div_u32(_wgslsmith_sub_u32(48359u, _wgslsmith_clamp_u32(min(max(var_1.d.x, 4294967295u), func_1()), var_2.d.x, 4294967295u)), abs(0u));
    var var_4 = -u_input.b;
    let var_5 = (reverseBits(35622i) > ~_wgslsmith_add_i32(var_4.x ^ u_input.a, -var_0.d.a)) && any(vec3<bool>(all(var_0.d.b.yy), any(vec3<bool>(true, true, true)), var_1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(min(4294967295u, 0u), 20u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.d.x, 20u)]))))), _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a, var_0.b.b.x), -vec2<i32>(0i, var_1.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1877f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 10u)])))));
}

