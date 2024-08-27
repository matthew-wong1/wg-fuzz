struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

var<private> global1: array<f32, 11> = array<f32, 11>(759f, -424f, -1003f, -1452f, 332f, 1641f, 967f, 215f, 2016f, -1053f, 970f);

var<private> global2: Struct_5;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = any(vec3<bool>(any(vec4<bool>(global2.d, global2.a.b, false, false)) && global2.d, -242f <= _wgslsmith_f_op_f32(select(global2.c.a, -1000f, true)), any(!vec4<bool>(true, true, true, global2.d)))) && false;
    let var_1 = _wgslsmith_div_u32(u_input.b, firstLeadingBit(countOneBits(~_wgslsmith_sub_u32(4294967295u, u_input.e.x))));
    let var_2 = _wgslsmith_clamp_u32(0u, ~select(~(~u_input.b), abs(_wgslsmith_dot_vec4_u32(global2.c.d, global2.c.d)), global2.d), min(52068u, 4294967295u));
    global2 = Struct_5(global2.a, Struct_3(u_input.c), global2.c, false);
    let var_3 = all(vec4<bool>(select(global2.a.b, any(vec4<bool>(false, var_0, global2.d, global2.a.b)), var_0), any(select(vec2<bool>(true, false), !vec2<bool>(var_0, var_0), any(vec2<bool>(true, true)))), true, var_0));
    return _wgslsmith_clamp_u32(min(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, arg_0, u_input.e.x), min(15142u, u_input.b)) | _wgslsmith_add_u32(~global2.c.d.x, 1u), ~(~(~arg_0))), _wgslsmith_dot_vec4_u32(global2.c.d, _wgslsmith_add_vec4_u32(max(global2.c.d, abs(vec4<u32>(7846u, 1u, var_2, 0u))), ~(~vec4<u32>(var_2, 4294967295u, 42943u, var_2)))), 50104u);
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<f32>) -> vec4<bool> {
    global0 = array<Struct_3, 31>();
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(abs(global2.c.d.xww | u_input.e), reverseBits(vec3<u32>(u_input.e.x, 0u, arg_2.d.x))), global2.c.d.zyz), ~vec3<u32>(~func_3(939u), firstTrailingBit(~arg_2.d.x), ~(~48850u)));
    let var_1 = Struct_5(Struct_2(vec2<i32>(~abs(u_input.d), firstTrailingBit(0i)), any(!select(vec3<bool>(true, false, false), vec3<bool>(true, global2.a.b, false), vec3<bool>(arg_1.x, true, arg_1.x)))), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, global2.c.d.x), 31u)], Struct_1(arg_3.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(global2.c.c.wzz, vec3<f32>(-584f, global2.c.b.x, global2.c.a), vec3<bool>(arg_1.x, arg_1.x, global2.a.b))))))), arg_2.c, _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(global2.c.d.x, global2.c.d.x, arg_2.d.x, arg_2.d.x), vec4<u32>(14642u, arg_2.d.x, u_input.b, global2.c.d.x)), vec4<u32>(1u, global2.c.d.x, arg_2.d.x, global2.c.d.x) | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 1u, var_0), global2.c.d))), true);
    return !vec4<bool>(true, true, any(arg_1), !arg_1.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_5) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(global2.c.b.x + _wgslsmith_f_op_f32(f32(-1f) * -979f));
    let var_1 = Struct_1(1000f, _wgslsmith_div_vec3_f32(arg_3.c.c.xwy, vec3<f32>(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(min(1847f, -574f))), arg_3.c.a, -1239f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_3.c.c), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(arg_3.c.c, global2.c.c, false)), _wgslsmith_f_op_vec4_f32(-arg_3.c.c))), arg_3.c.c)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -218f)), select(select(vec2<bool>(global2.d, true), vec2<bool>(global2.a.b, arg_1.b), vec2<bool>(true, global2.d)), vec2<bool>(true, global2.d), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(global2.a.b, true))), Struct_1(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_vec3_f32(global2.c.b * vec3<f32>(-596f, 1856f, -398f)), arg_3.c.c, ~vec4<u32>(1u, u_input.e.x, 1u, 1u)), vec2<f32>(global1[_wgslsmith_index_u32(1u, 11u)], global2.c.a)))), select(arg_3.c.d, reverseBits(global2.c.d), vec4<bool>(true, true, !(-1591f >= global1[_wgslsmith_index_u32(29119u, 11u)]), !arg_3.d)));
    global1 = array<f32, 11>();
    var var_2 = vec4<u32>(var_1.d.x, ~_wgslsmith_mod_u32(countOneBits(u_input.a), 0u), 116976u, arg_3.c.d.x) >> (((firstLeadingBit(global2.c.d) << (var_1.d % vec4<u32>(32u))) << (vec4<u32>(select(select(u_input.a, 72729u, false), 1u, any(vec3<bool>(false, arg_3.a.b, arg_3.a.b))), var_1.d.x, global2.c.d.x, abs(_wgslsmith_add_u32(global2.c.d.x, 4294967295u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-717f * -1212f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * global1[_wgslsmith_index_u32(27942u, 11u)]))), arg_0.x, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.d.x, 11u)]), 319f, -590f, -962f)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, ~(~u_input.e.x), firstTrailingBit(~4294967295u), abs(4294967295u)), vec4<u32>(~(~22349u), 3018u | _wgslsmith_mod_u32(var_1.d.x, var_2.x), 51557u, _wgslsmith_div_u32(1u, var_1.d.x | u_input.b))));
    return -136f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.c.d.x;
    var var_1 = Struct_5(Struct_2(~(~(-global2.a.a)), true), global2.b, global2.c, !(global2.a.b & (global2.c.d.x < 18439u)) | true);
    var var_2 = -688f;
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.c.x + var_1.c.c.x) - 984f), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)], global2.c.a)), var_1.a, -vec4<i32>(1i, 2147483647i, -1i, u_input.d), Struct_5(Struct_2(vec2<i32>(var_1.b.a, global2.b.a), var_1.a.b), var_1.b, Struct_1(global2.c.b.x, var_1.c.c.zwx, vec4<f32>(var_1.c.b.x, 925f, var_1.c.a, -1419f), vec4<u32>(global2.c.d.x, var_1.c.d.x, 0u, u_input.b)), true)))) - 1060f)));
    var_1 = Struct_5(var_1.a, Struct_3(~_wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.a.x, -2147483647i, -1i), ~vec3<i32>(2147483647i, global2.a.a.x, 5983i))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-320f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(global2.c.d.x, 11u)], 1653f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.c.b)) - vec3<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.c.d.x, 11u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(30202u, 11u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-467f, _wgslsmith_f_op_f32(-var_1.c.b.x), 725f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(global2.c.d.x, 11u)], 741f)) - global2.c.c), abs(global2.c.d)), var_1.a.b);
    var var_4 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.c.c.x))) * var_1.c.c.x), vec2<bool>(global2.d, any(vec3<bool>(true, var_1.d, true))), global2.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(0u, 11u)])) - global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.c.d.x, 4294967295u), 11u)]), _wgslsmith_f_op_f32(-2125f + -1000f)))).xx;
    var var_5 = select(select(u_input.c, -abs(~23567i), all(vec2<bool>(true, 70969u >= u_input.a))), -62725i, all(!select(vec2<bool>(var_1.a.b, var_4.x), !vec2<bool>(global2.d, global2.d), vec2<bool>(global2.a.b, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.c.b.zz * var_1.c.b.yy)), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.b.a, reverseBits(i32(-1i) * -17423i), u_input.c, u_input.d), abs(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 2147483647i, var_1.b.a, 32067i), select(vec4<i32>(-21496i, 427i, global2.b.a, u_input.d), vec4<i32>(global2.b.a, var_1.b.a, global2.b.a, global2.a.a.x), vec4<bool>(var_4.x, global2.a.b, global2.a.b, var_4.x))))), firstLeadingBit(~(i32(-1i) * -10072i)) << (select(4294967295u, var_1.c.d.x, !(!var_4.x)) % 32u));
}

