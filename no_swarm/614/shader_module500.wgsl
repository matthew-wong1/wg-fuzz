struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<i32, 5> = array<i32, 5>(39779i, -1i, 8267i, -1i, -70193i);

var<private> global2: array<Struct_1, 10>;

var<private> global3: Struct_1 = Struct_1(i32(-2147483648), vec4<f32>(-388f, -309f, 756f, -116f), i32(-2147483648), vec3<u32>(124800u, 0u, 0u));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: bool) -> Struct_1 {
    global1 = array<i32, 5>();
    global2 = array<Struct_1, 10>();
    global1 = array<i32, 5>();
    var var_0 = _wgslsmith_mult_vec3_i32(u_input.a, u_input.a << (min(_wgslsmith_mult_vec3_u32(~arg_1.d, arg_1.d), vec3<u32>(arg_1.d.x, _wgslsmith_mod_u32(6085u, arg_1.d.x), ~global3.d.x)) % vec3<u32>(32u)));
    let var_1 = Struct_1(_wgslsmith_dot_vec2_i32(var_0.yx, vec2<i32>(~(-arg_1.a), global1[_wgslsmith_index_u32(arg_2.x, 5u)])), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(abs(522f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global0.x, -1049f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global3.b, global3.b) + _wgslsmith_f_op_vec4_f32(-arg_1.b))))), ~(global3.c >> (~countOneBits(21228u) % 32u)), vec3<u32>(0u, arg_2.x, arg_2.x));
    return arg_1;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = ~arg_1.d.x;
    var var_1 = arg_1;
    var var_2 = select(vec4<bool>(false, false, false, true), select(vec4<bool>(!(arg_2.d.x <= 4294967295u), _wgslsmith_f_op_f32(ceil(global3.b.x)) < _wgslsmith_div_f32(-613f, 505f), false, any(vec2<bool>(false, false)) & (0i != global1[_wgslsmith_index_u32(var_1.d.x, 5u)])), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), select(vec4<bool>(true, 6125i > arg_0, select(false, true, false), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), !vec4<bool>(!all(vec2<bool>(true, false)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), true, !any(vec3<bool>(false, false, false))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1600f), arg_1.b.x);
    let var_4 = 19468u;
    return _wgslsmith_f_op_f32(-var_1.b.x);
}

fn func_1(arg_0: vec3<bool>) -> StorageBuffer {
    global1 = array<i32, 5>();
    var var_0 = global3.d.x;
    let var_1 = _wgslsmith_mod_vec3_i32(countOneBits(-_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, 1i), vec3<i32>(global3.a, 0i, global3.a))), select(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.a, global3.a), u_input.a.xz), 19222i, -1i), min(u_input.a, vec3<i32>(-2147483647i, 0i, 0i)), vec3<bool>(arg_0.x && true, arg_0.x, arg_0.x))) & -_wgslsmith_div_vec3_i32(firstTrailingBit(u_input.a << (vec3<u32>(1u, global3.d.x, 10905u) % vec3<u32>(32u))), vec3<i32>(~(-48172i), _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(global3.d.x, 5u)], u_input.a.x), u_input.a.zy), u_input.a.x));
    let var_2 = Struct_1(u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1367f, _wgslsmith_f_op_f32(floor(-756f)))) * _wgslsmith_f_op_f32(func_3(12766i, Struct_1(2147483647i, global3.b, var_1.x, vec3<u32>(global3.d.x, 1u, global3.d.x)), func_2(var_1.zz, global2[_wgslsmith_index_u32(global3.d.x, 10u)], global3.d.zx, true)))), _wgslsmith_f_op_f32(global0.x * 946f), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(global0.x + global0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1524f - global0.x) * -848f))), ~_wgslsmith_clamp_i32(8627i, u_input.a.x, -2147483647i), vec3<u32>(global3.d.x, reverseBits(4294967295u), _wgslsmith_div_u32(_wgslsmith_mult_u32(global3.d.x, global3.d.x) << (_wgslsmith_sub_u32(global3.d.x, global3.d.x) % 32u), ~(~867u))));
    let var_3 = global3.c;
    return StorageBuffer(~_wgslsmith_add_vec2_u32(~global3.d.yz, var_2.d.yz), 16874i, _wgslsmith_add_vec2_i32(abs(-(~vec2<i32>(1i, -59539i))), _wgslsmith_div_vec2_i32(select(select(u_input.a.zx, var_1.yz, vec2<bool>(true, arg_0.x)), vec2<i32>(global1[_wgslsmith_index_u32(1u, 5u)], -5514i), !arg_0.x), var_1.yy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.d.zx;
    global1 = array<i32, 5>();
    global3 = Struct_1(-1i, vec4<f32>(_wgslsmith_f_op_f32(1175f * _wgslsmith_f_op_f32(abs(-503f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.b.x, 1092f) - -1088f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1015f, global0.x)), true)), 396f, 1f), global1[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_add_vec3_u32(~max(vec3<u32>(57838u, 4294967295u, var_0.x), global3.d), global3.d));
    global0 = _wgslsmith_f_op_vec2_f32(-global3.b.wz);
    let var_1 = ~(~vec4<u32>(0u, 39978u, reverseBits(28948u), 27168u));
    global1 = array<i32, 5>();
    global2 = array<Struct_1, 10>();
    var var_2 = min(0u, _wgslsmith_dot_vec4_u32(var_1, ~vec4<u32>(47661u, 14003u, var_0.x, var_0.x) ^ (reverseBits(vec4<u32>(var_1.x, global3.d.x, 103546u, 20309u)) | ~var_1)));
    global0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(810f, _wgslsmith_f_op_f32(-170f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x)))));
    let x = u_input.a;
    s_output = func_1(!vec3<bool>(select(true, any(vec2<bool>(false, false)), global1[_wgslsmith_index_u32(var_1.x, 5u)] < u_input.a.x), true, true));
}

