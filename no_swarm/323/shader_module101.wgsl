struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 24>;

var<private> global2: i32 = 2147483647i;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<i32>(-5591i, 35421i, -31652i), i32(-2147483648)), Struct_1(vec3<i32>(13099i, -21279i, -41006i), 52925i), Struct_1(vec3<i32>(10187i, 12285i, 1i), 1i), Struct_1(vec3<i32>(-3853i, -6462i, i32(-2147483648)), -1i), Struct_1(vec3<i32>(-342i, -1i, 7878i), -21314i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn func_3(arg_0: i32) -> f32 {
    global2 = -(~arg_0);
    let var_0 = 1u != _wgslsmith_dot_vec2_u32(max(~(~vec2<u32>(0u, 49673u)), vec2<u32>(1u, 1u)), firstLeadingBit(~vec2<u32>(18511u, 1u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-342f)), -1000f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(1u, 24u)], -2157f) * vec2<f32>(1741f, global1[_wgslsmith_index_u32(16057u, 24u)])) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1717f, global1[_wgslsmith_index_u32(56513u, 24u)]))))))));
    let var_2 = vec2<f32>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~select(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(3319u, 4294967295u, 18607u), true), vec3<u32>(_wgslsmith_div_u32(0u, 30801u), 1u, firstTrailingBit(77118u))), 24u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 24u)], _wgslsmith_f_op_f32(min(-912f, _wgslsmith_f_op_f32(min(-250f, var_1.x)))))));
    return _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(1u, 1u)), 24u)]);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32) -> u32 {
    global3 = array<Struct_1, 5>();
    global0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1i), arg_1.a), max(_wgslsmith_add_vec3_i32(arg_1.a, vec3<i32>(-2147483647i, u_input.a, arg_1.b)), ~vec3<i32>(u_input.a, arg_1.b, -3568i))), arg_1.a)));
    var var_0 = firstLeadingBit(~_wgslsmith_mod_u32(reverseBits(2563u) & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 18196u), vec3<u32>(12438u, 4294967295u, 1u)), 4294967295u));
    let var_1 = Struct_1(arg_1.a, _wgslsmith_mult_i32(-19215i, _wgslsmith_mult_i32(abs(13717i) & arg_1.a.x, 2147483647i)));
    var var_2 = var_1;
    return 2337u;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<f32> {
    global1 = array<f32, 24>();
    var var_0 = 2635u ^ (0u | ~(func_2(vec4<bool>(false, false, true, false), Struct_1(vec3<i32>(-42856i, u_input.a, -2147483647i), 38278i), global1[_wgslsmith_index_u32(22568u, 24u)]) | arg_0.x));
    var var_1 = Struct_1(arg_3.a, -abs(arg_2.b));
    var var_2 = 15741i;
    let var_3 = Struct_1(abs(vec3<i32>(arg_3.b, var_1.a.x, 72834i)), ~(-countOneBits(-var_1.a.x)));
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -716f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.x, 0u), 24u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(70473u, 24u)]))))))), -675f, -1088f);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> StorageBuffer {
    global3 = array<Struct_1, 5>();
    global2 = -14744i;
    return StorageBuffer(_wgslsmith_f_op_f32(1971f * global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(2284u, 1u, 2677u, 0u)), 24u)]), reverseBits(vec2<u32>(~33061u, max(firstLeadingBit(0u), 1u >> (1u % 32u)))), _wgslsmith_f_op_vec3_f32(func_4(min(vec4<u32>(39503u, 4294967295u, 8259u << (0u % 32u), func_2(vec4<bool>(false, false, false, false), global3[_wgslsmith_index_u32(7084u, 5u)], global1[_wgslsmith_index_u32(29563u, 24u)])), firstLeadingBit(~vec4<u32>(13805u, 24922u, 1u, 0u))), Struct_1((vec3<i32>(2147483647i, -2147483647i, arg_1.b) ^ arg_1.a) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), 33951i), Struct_1(vec3<i32>(-20484i, _wgslsmith_div_i32(u_input.a, arg_1.b), -2147483647i), -arg_1.a.x), Struct_1(~abs(arg_1.a), u_input.a))), ~(~vec3<u32>(1u, 1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~0u, 24u)];
    global3 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = func_1(vec2<bool>(true, !any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), false))), Struct_1(vec3<i32>(u_input.a, 1i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, 0i, u_input.a), vec4<i32>(-14214i, u_input.a, 2147483647i, 30938i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(-37586i, u_input.a, 14515i)))), 1i));
}

