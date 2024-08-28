struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(53313u, 35864u, 1996i, -1007f, -1826f), Struct_2(4294967295u, 12385u, 11687i, 605f, -1461f), Struct_2(57105u, 25300u, 2147483647i, 790f, 1000f), Struct_2(1u, 4294967295u, 0i, 174f, -566f));

var<private> global1: Struct_2 = Struct_2(43755u, 1u, 32435i, -647f, -1694f);

var<private> global2: array<Struct_2, 26>;

var<private> global3: array<vec4<f32>, 8>;

var<private> global4: array<vec2<i32>, 13>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    let var_0 = _wgslsmith_add_i32(-44312i, -1i);
    let var_1 = vec4<bool>(select(true, true, 44375u <= global1.b) | true, arg_0.x, true, any(select(!select(vec4<bool>(true, false, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), true), select(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(false, false, false, true))), true)));
    global1 = Struct_2(41731u, (_wgslsmith_div_u32(global1.a, ~global1.a) << (global1.a % 32u)) ^ ~_wgslsmith_add_u32(global1.a, ~15571u), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(global4[_wgslsmith_index_u32(1u, 13u)], -vec2<i32>(76405i, u_input.e.x)), firstTrailingBit(_wgslsmith_mult_vec2_i32(global4[_wgslsmith_index_u32(u_input.c.x, 13u)], vec2<i32>(13111i, 2322i))) ^ global4[_wgslsmith_index_u32(abs(u_input.d.x), 13u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)) * global1.e), -399f);
    var var_2 = u_input.e.x;
    let var_3 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1389f)))), 2258f), arg_0.x, Struct_1(4294967295u), -_wgslsmith_sub_i32(var_0, _wgslsmith_dot_vec2_i32(u_input.e, -global4[_wgslsmith_index_u32(u_input.c.x, 13u)])));
    return _wgslsmith_add_i32(~select(-global1.c << (30832u % 32u), u_input.e.x, countOneBits(u_input.e.x) == _wgslsmith_mod_i32(-2147483647i, 60369i)), var_3.d);
}

fn func_2(arg_0: vec2<bool>) -> vec4<i32> {
    let var_0 = u_input.c.yww;
    var var_1 = global2[_wgslsmith_index_u32(firstTrailingBit(1u), 26u)];
    var var_2 = ~(~vec4<i32>(18107i, -2147483647i, u_input.e.x, u_input.e.x) | vec4<i32>(u_input.e.x << (var_1.b % 32u), 28256i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.c, global1.c), vec2<i32>(global1.c, -2147483647i)), countOneBits(var_1.c))) | vec4<i32>(~_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.c, u_input.e.x, u_input.e.x, global1.c), firstTrailingBit(vec4<i32>(-82462i, global1.c, var_1.c, var_1.c))), 2147483647i, -1i, firstLeadingBit(~_wgslsmith_mod_i32(-24828i, 1i)));
    var var_3 = !(!vec4<bool>(true, all(!vec3<bool>(true, arg_0.x, arg_0.x)), arg_0.x, !(!arg_0.x)));
    let var_4 = ~(~reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(global1.a, 42962u), u_input.d.wx)));
    return vec4<i32>(func_3(var_3.xwz), _wgslsmith_add_i32(_wgslsmith_mod_i32(func_3(vec3<bool>(var_3.x, false, arg_0.x)), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-51454i, -16i)), countOneBits(global4[_wgslsmith_index_u32(u_input.d.x, 13u)]))), -19055i), ~global1.c, _wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec3_i32(var_2.wzw, max(vec3<i32>(global1.c, var_1.c, -14584i), vec3<i32>(var_1.c, -34455i, 0i))) >> (_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c.x, 4294967295u), var_1.a) % 32u), 1i >> (countOneBits(firstLeadingBit(12942u)) % 32u)));
}

fn func_1(arg_0: bool) -> Struct_2 {
    global3 = array<vec4<f32>, 8>();
    var var_0 = ~(-_wgslsmith_add_vec4_i32(~vec4<i32>(global1.c, global1.c, global1.c, u_input.e.x) << (u_input.c % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, 1i, -2147483647i, 42661i), vec4<i32>(u_input.e.x, global1.c, u_input.e.x, u_input.e.x)) | func_2(vec2<bool>(false, arg_0))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-279f, -1431f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1594f, -162f) + vec2<f32>(global1.d, global1.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1582f)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.d, global1.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e, global1.d)), false)))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.c.yy, _wgslsmith_mod_vec2_u32(u_input.c.zw, u_input.d.zy)), u_input.a) != abs(_wgslsmith_div_u32(~u_input.a, u_input.a)), Struct_1(_wgslsmith_mod_u32(1u, max(40867u, u_input.c.x))), _wgslsmith_add_i32(var_0.x, _wgslsmith_add_i32(1i, global1.c) & ~_wgslsmith_add_i32(-1i, 2147483647i)));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-347f, global1.d)));
    var var_3 = abs(-9125i);
    return Struct_2(~4294967295u, 29503u, u_input.e.x, _wgslsmith_f_op_f32(-global1.e), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true);
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, 1969f)))))), !any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))) && (~countOneBits(var_0.b) < (firstTrailingBit(53776u) << (4294967295u % 32u))), Struct_1(_wgslsmith_mod_u32(4294967295u, firstTrailingBit(_wgslsmith_mod_u32(u_input.d.x, u_input.b)))), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(global1.d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1883f, -324f, global1.d, 1030f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(u_input.b, 8u)] - vec4<f32>(-185f, global1.d, var_0.e, -522f)))), _wgslsmith_f_op_vec4_f32(select(global3[_wgslsmith_index_u32(31496u, 8u)], _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -463f, 816f, -370f)))), true)), var_1.b)), ~(~u_input.c.x));
}

