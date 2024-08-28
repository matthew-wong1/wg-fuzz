struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -747f;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false));

var<private> global2: array<f32, 16>;

var<private> global3: vec2<u32>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> bool {
    return true;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-661f, arg_0.x, -1434f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, arg_2.c, 1000f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-211f, global2[_wgslsmith_index_u32(0u, 16u)], -1226f)))));
    global2 = array<f32, 16>();
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1032f);
    var var_1 = arg_2;
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, var_0.x, -288f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_2.c, 1192f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, var_1.c, -1408f), vec3<f32>(var_0.x, var_0.x, arg_0.x)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.c, 16u)], -245f, -1808f) - vec3<f32>(global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)], arg_2.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1854f, arg_2.c))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-943f, -670f, arg_2.c))), false));
    return ~1i != _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-25905i, 28207i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -2147483647i, 2147483647i, u_input.b.x) | vec4<i32>(-1i, 0i, u_input.b.x, u_input.b.x), ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -31342i)) & vec4<i32>(1i, firstLeadingBit(2147483647i), u_input.b.x, ~(-46682i)), _wgslsmith_div_vec4_i32(~reverseBits(vec4<i32>(-1i, u_input.b.x, -1i, -2147483647i)), vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> bool {
    var var_0 = -191f;
    global3 = vec2<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(8577u, global3.x)), select(_wgslsmith_mod_vec2_u32(vec2<u32>(global3.x, u_input.c), vec2<u32>(global3.x, global3.x)), max(vec2<u32>(1u, global3.x), vec2<u32>(global3.x, 23869u)), any(arg_1))), ~_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global3.x), vec2<u32>(42074u, 1u)))) >> (~abs(_wgslsmith_sub_vec2_u32(~vec2<u32>(global3.x, u_input.c), vec2<u32>(global3.x, 4294967295u))) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3.x, 16u)] * 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c, 16u)]) - global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4156u, 12959u), 16u)])))));
    global1 = array<Struct_1, 5>();
    global2 = array<f32, 16>();
    return arg_1.x;
}

fn func_2(arg_0: bool, arg_1: i32) -> vec3<u32> {
    global1 = array<Struct_1, 5>();
    global1 = array<Struct_1, 5>();
    global1 = array<Struct_1, 5>();
    global0 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(abs(firstLeadingBit(~vec3<u32>(global3.x, 39650u, u_input.c))), _wgslsmith_sub_vec3_u32(~vec3<u32>(77971u, 3259u, global3.x), vec3<u32>(4294967295u, u_input.c, 0u)) ^ vec3<u32>(1u & global3.x, _wgslsmith_div_u32(0u, 76231u), u_input.a & u_input.c)), 16u)];
    var var_0 = select(!vec2<bool>(true && (u_input.c <= 0u), false), !vec2<bool>(arg_0 | true, arg_0), func_4(-(~(-vec2<i32>(15283i, -32404i))), vec4<bool>(any(vec3<bool>(false, true, true)), arg_0, func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-532f, global2[_wgslsmith_index_u32(0u, 16u)]) - vec2<f32>(1000f, -630f)), Struct_1(arg_0), Struct_2(Struct_1(false), vec3<bool>(arg_0, true, true), 318f)), arg_0), u_input.b));
    return _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a, 58261u), ~vec3<u32>(40546u, u_input.c, u_input.c)), vec3<u32>(global3.x, reverseBits(global3.x) << (0u % 32u), ~(~global3.x))), vec3<u32>(~global3.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(7523u, u_input.c) | vec2<u32>(u_input.a, 34861u), min(vec2<u32>(22713u, 0u), vec2<u32>(4294967295u, 26219u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, global3.x), vec2<u32>(u_input.a, 1u))), countOneBits(~vec2<u32>(global3.x, global3.x))), ~(~global3.x)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<bool> {
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c, 1u), 16u)];
    global2 = array<f32, 16>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, 0u), 16u)] + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 16u)] + _wgslsmith_div_f32(-424f, -805f))), 1000f)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(func_2(arg_1.a, u_input.b.x).x, arg_0.x), ~max(global3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, global3.x), arg_0))), 16u)]);
    let var_1 = Struct_1(false);
    global1 = array<Struct_1, 5>();
    return vec2<bool>(true, !arg_1.a == arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 5>();
    var var_0 = select(select(vec2<bool>(true, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 16u)], 395f, global2[_wgslsmith_index_u32(16562u, 16u)], 1119f)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global3.x, u_input.a), 5u)])), !vec2<bool>(any(vec4<bool>(true, false, true, true)), u_input.b.x != 37495i), ~max(-1i, u_input.b.x) != ~11543i), func_5(max(func_2(true, -1i), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, 5605u), vec3<u32>(u_input.a, global3.x, 65384u))), global1[_wgslsmith_index_u32(~6350u, 5u)], -reverseBits(~vec4<i32>(-2896i, 20471i, u_input.b.x, -1i))), abs(_wgslsmith_add_u32(global3.x, ~71412u)) == (global3.x ^ 4294967295u));
    var var_1 = var_0.x;
    var var_2 = !select(!(!vec3<bool>(var_0.x, false, true)), vec3<bool>(func_4(firstLeadingBit(vec2<i32>(u_input.b.x, u_input.b.x)), vec4<bool>(var_0.x, var_0.x, true, false), _wgslsmith_clamp_vec2_i32(u_input.b, u_input.b, vec2<i32>(u_input.b.x, u_input.b.x))), var_0.x, var_0.x), true);
    var var_3 = -_wgslsmith_sub_vec2_i32(u_input.b, select(u_input.b, select(firstLeadingBit(vec2<i32>(u_input.b.x, u_input.b.x)), -u_input.b, !var_2.zx), var_2.zy));
    let x = u_input.a;
    s_output = StorageBuffer(-var_3.x, _wgslsmith_mod_vec2_u32(~firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 66571u), vec2<u32>(0u, u_input.a))), vec2<u32>(reverseBits(~1u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 7341u, u_input.c, 4294967295u), vec4<u32>(u_input.c, 0u, 12022u, 70611u))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(126f, -1375f)) - -1136f), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.a, 16u)])))), max(max(-vec4<i32>(-20032i, 2147483647i, u_input.b.x, 24751i), vec4<i32>(-2147483647i, 6218i, var_3.x, 41476i)) | _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-2147483647i, -26048i, var_3.x, 22533i)), _wgslsmith_sub_vec4_i32(vec4<i32>(11115i, 0i, var_3.x, var_3.x), vec4<i32>(u_input.b.x, -8327i, u_input.b.x, u_input.b.x))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(71740i, var_3.x, u_input.b.x), vec3<i32>(u_input.b.x, var_3.x, var_3.x)), 0i, _wgslsmith_add_i32(u_input.b.x, var_3.x), -27595i ^ u_input.b.x), ~vec4<i32>(var_3.x, 28582i, -1i, 727i))), _wgslsmith_sub_u32(global3.x, _wgslsmith_mod_u32(0u, global3.x)));
}

