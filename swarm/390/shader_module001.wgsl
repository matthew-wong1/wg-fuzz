struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(150f, 1000f, 1337f, -1377f);

var<private> global1: array<i32, 3>;

var<private> global2: array<bool, 9>;

var<private> global3: f32;

var<private> global4: array<f32, 20>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: u32) -> bool {
    return global2[_wgslsmith_index_u32(select(u_input.b.x, ~(~63389u), !(!global2[_wgslsmith_index_u32(select(61594u, u_input.a.x, true) | ~55682u, 9u)])), 9u)];
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(931f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(448u, 20u)] * -1000f), _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(4294967295u, 20u)])))), global4[_wgslsmith_index_u32(u_input.a.x, 20u)], -2870f)));
    global2 = array<bool, 9>();
    return Struct_1(-16368i & _wgslsmith_mod_i32(min(1i, global1[_wgslsmith_index_u32(4294967295u, 3u)]) ^ _wgslsmith_mod_i32(-17353i, 13044i), 36959i), min(_wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, u_input.a.x) ^ _wgslsmith_mult_u32(4294967295u, ~u_input.b.x), ~u_input.b.x), true, u_input.a, select(!(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(25795u, 9u)], global2[_wgslsmith_index_u32(u_input.a.x, 9u)])), !vec4<bool>(func_3(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], u_input.b.x), true, global2[_wgslsmith_index_u32(1u, 9u)], !global2[_wgslsmith_index_u32(u_input.a.x, 9u)]), !any(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 9u)], global2[_wgslsmith_index_u32(u_input.a.x, 9u)], global2[_wgslsmith_index_u32(u_input.b.x, 9u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 9u)], global2[_wgslsmith_index_u32(43046u, 9u)], false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], false, global2[_wgslsmith_index_u32(51251u, 9u)])))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<f32> {
    global1 = array<i32, 3>();
    let var_0 = -35571i;
    global3 = global0.x;
    var var_1 = arg_1;
    global1 = array<i32, 3>();
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-600f, 2470f, global0.x, -1103f)), vec4<f32>(-1341f, global4[_wgslsmith_index_u32(var_1.d.x, 20u)], -816f, -1106f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -274f, 368f, global4[_wgslsmith_index_u32(u_input.b.x, 20u)]))))));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_4(false, func_2(), min(vec4<u32>(u_input.b.x, arg_1.x, u_input.b.x, abs(5459u)), ~arg_1)))));
    let var_0 = Struct_1(1i, 39959u, !global2[_wgslsmith_index_u32(arg_0 ^ ((u_input.a.x << (4294967295u % 32u)) & u_input.b.x), 9u)], ~arg_1.xz, vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], global2[_wgslsmith_index_u32(max(72412u, _wgslsmith_div_u32(u_input.a.x, arg_0)), 9u)] || global2[_wgslsmith_index_u32(1u, 9u)], true, !(!global2[_wgslsmith_index_u32(0u, 9u)])));
    var var_1 = max(var_0.b, arg_1.x) & _wgslsmith_dot_vec2_u32(var_0.d, ~vec2<u32>(4294967295u, 0u));
    global4 = array<f32, 20>();
    var var_2 = _wgslsmith_f_op_vec4_f32(func_4(false, func_2(), countOneBits(~(~(arg_1 >> (vec4<u32>(67364u, arg_0, 47150u, u_input.a.x) % vec4<u32>(32u))))))).x;
    return Struct_2(_wgslsmith_mod_u32(0u, var_0.d.x) & u_input.b.x, func_2());
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = vec4<bool>(true, true, arg_0.b.c, arg_0.b.a > -1i);
    var var_2 = _wgslsmith_clamp_u32(u_input.b.x, arg_0.b.b, 0u) ^ arg_0.b.b;
    global2 = array<bool, 9>();
    let var_3 = vec4<u32>(firstLeadingBit(arg_0.a), _wgslsmith_dot_vec3_u32(firstTrailingBit(select(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b.d.x, arg_0.b.d.x, 26063u), vec3<u32>(6406u, u_input.a.x, 0u)), ~vec3<u32>(55406u, 42876u, arg_0.a), !vec3<bool>(var_1.x, true, var_1.x))), abs(~(~vec3<u32>(40843u, 1u, u_input.b.x)))), var_0.a, func_1(~_wgslsmith_clamp_u32(var_0.a, 1u, 1u) << (abs(func_1(var_0.b.d.x, vec4<u32>(arg_0.b.b, 12709u, u_input.a.x, u_input.b.x)).b.b) % 32u), vec4<u32>(arg_0.a, var_0.b.b, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 12890u, 0u) << (vec3<u32>(55564u, var_0.b.d.x, 18698u) % vec3<u32>(32u)), select(vec3<u32>(0u, var_0.a, arg_0.b.d.x), vec3<u32>(arg_0.b.d.x, 31270u, var_0.a), arg_0.b.e.x)), ~16137u)).b.d.x);
    return func_1(~_wgslsmith_mod_u32(func_1(36233u, select(var_3, var_3, true)).a, min(countOneBits(3271u), _wgslsmith_sub_u32(48458u, 0u))), reverseBits(~vec4<u32>(~77162u, arg_0.a, ~arg_0.a, var_3.x | var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(~u_input.b.x, ~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 32055u, 0u, 57489u), vec4<u32>(u_input.b.x, 68885u, u_input.b.x, u_input.b.x)))), _wgslsmith_f_op_f32(ceil(2084f)));
    let var_1 = reverseBits(-vec2<i32>(_wgslsmith_add_i32(-1i, global1[_wgslsmith_index_u32(u_input.b.x, 3u)]), var_0.b.a));
    let var_2 = var_0.b;
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 501f)), global0.x, 311f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 20u)]))))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), 315f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~(~var_0.b.b), 20u)] - _wgslsmith_f_op_f32(-1012f * _wgslsmith_f_op_f32(-1000f + global4[_wgslsmith_index_u32(37638u, 20u)]))))));
    let var_3 = ((~_wgslsmith_mod_vec3_u32(vec3<u32>(38627u, 16332u, 4294967295u), vec3<u32>(0u, 0u, var_0.b.d.x)) ^ _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 16150u, 32021u), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.b.b, 1u, 35803u), vec3<u32>(20430u, u_input.b.x, 0u)))) | _wgslsmith_add_vec3_u32(select(~vec3<u32>(var_0.a, var_2.b, var_0.a), ~vec3<u32>(var_2.b, 0u, 4172u), false), ~vec3<u32>(var_2.b, var_0.a, u_input.a.x))) ^ vec3<u32>(max(0u, 4294967295u), _wgslsmith_mult_u32(65864u, ~func_2().b), ~var_0.a);
    let var_4 = ~_wgslsmith_add_vec3_u32(var_3, countOneBits(firstTrailingBit(_wgslsmith_sub_vec3_u32(var_3, var_3))));
    var var_5 = vec2<i32>(min(func_1(4294967295u, ~vec4<u32>(u_input.a.x, 75750u, 0u, 0u)).b.a, var_2.a), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-133f))), -687f)), ~var_4.yy, _wgslsmith_f_op_f32(round(global0.x)));
}

