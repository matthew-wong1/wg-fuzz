struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 7977u;

var<private> global1: array<Struct_1, 7>;

var<private> global2: array<u32, 4>;

var<private> global3: Struct_1 = Struct_1(-1i, 4294967295u, vec4<bool>(true, true, true, false), vec2<u32>(51965u, 1u), vec3<u32>(13324u, 69442u, 1u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> u32 {
    let var_0 = ~vec2<i32>(abs(~global3.a) >> (24188u % 32u), _wgslsmith_dot_vec4_i32((u_input.d ^ vec4<i32>(u_input.e, 2147483647i, -9304i, 0i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(global3.e.x, u_input.c.x, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 4u)], 4u)]), vec4<u32>(global2[_wgslsmith_index_u32(55079u, 4u)], global3.d.x, u_input.c.x, 1u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, global3.a, 24516i, global3.a), abs(u_input.d), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.e))));
    global3 = global1[_wgslsmith_index_u32(4294967295u, 7u)];
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 7u)];
    let var_2 = global3.c;
    global1 = array<Struct_1, 7>();
    return select(51249u, 26252u, !var_1.c.x);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> vec3<f32> {
    var var_0 = arg_0;
    let var_1 = arg_0.e.yz;
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(~(~firstTrailingBit(1u)), 88481u), u_input.c.x), 7u)];
    var var_3 = vec3<f32>(1f, 1f, 1f);
    let var_4 = !(!select(global3.c.zx, select(vec2<bool>(global3.c.x, true), !vec2<bool>(var_0.c.x, true), false), true));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.x - 240f))), _wgslsmith_f_op_f32(ceil(-2698f))))));
}

fn func_2() -> u32 {
    let var_0 = -(u_input.e ^ select(max(u_input.a, _wgslsmith_clamp_i32(0i, -9505i, u_input.b.x)), ~2147483647i, true));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1242f, 1894f, 625f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1292f, -1004f, 1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2128f, -646f, -828f)))), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_add_i32(-1i, var_0), abs(1u), select(vec4<bool>(false, true, true, global3.c.x), vec4<bool>(false, global3.c.x, true, global3.c.x), vec4<bool>(true, global3.c.x, true, true)), global3.e.zx | u_input.c, max(vec3<u32>(global3.b, global2[_wgslsmith_index_u32(0u, 4u)], 13177u), global3.e)), !select(global3.c.zyz, global3.c.xxx, false))))), vec3<f32>(_wgslsmith_f_op_f32(round(-979f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(global1[_wgslsmith_index_u32(u_input.c.x, 7u)], vec3<bool>(global3.c.x, true, false))).x + _wgslsmith_f_op_f32(f32(-1f) * -1349f))), -1950f)));
    global3 = Struct_1(~(-11481i), abs(global3.e.x), global3.c, ~firstLeadingBit(~global3.d << (abs(global3.e.zz) % vec2<u32>(32u))), ~select(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, global2[_wgslsmith_index_u32(18015u, 4u)], global3.d.x) ^ vec3<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 4u)], u_input.c.x, 4294967295u), ~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], global3.d.x, 10856u)), global3.e, select(vec3<bool>(global3.c.x, false, true), vec3<bool>(global3.c.x, global3.c.x, global3.c.x), global3.c.xyx)));
    let var_2 = global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.d.x, 4u)], 7u)];
    let var_3 = vec4<bool>(global3.c.x, true, var_2.c.x || (-2441i > firstTrailingBit(_wgslsmith_sub_i32(0i, 17245i))), !((71888u | select(var_2.e.x, global3.e.x, true)) == _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, var_2.d.x, global3.b, 0u)), vec4<u32>(19763u, 25596u, 79673u, 1u))));
    return abs(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_u32(~u_input.c.x & reverseBits(func_1()), func_2()) << (~(_wgslsmith_mult_u32(_wgslsmith_mod_u32(global3.d.x, global2[_wgslsmith_index_u32(u_input.c.x, 4u)]), reverseBits(global2[_wgslsmith_index_u32(global3.b, 4u)])) >> (0u % 32u)) % 32u);
    global1 = array<Struct_1, 7>();
    var var_0 = -1132f;
    var var_1 = countOneBits(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(global3.e.x, u_input.c.x, u_input.c.x, 6305u), vec4<u32>(global3.b, u_input.c.x, 4294967295u, global2[_wgslsmith_index_u32(u_input.c.x, 4u)])), vec4<u32>(_wgslsmith_dot_vec3_u32(global3.e, global3.e), reverseBits(1u), global2[_wgslsmith_index_u32(2762u, 4u)], 3195u)), min(~select(vec4<u32>(59505u, 53710u, 1u, 32111u), vec4<u32>(0u, global2[_wgslsmith_index_u32(u_input.c.x, 4u)], global3.b, 11211u), global3.c.x), min(vec4<u32>(1u, 1u, global3.b, 0u), ~vec4<u32>(u_input.c.x, 37951u, 0u, global2[_wgslsmith_index_u32(0u, 4u)])))));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(398f - _wgslsmith_div_f32(910f, 612f)) * -618f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2207f + _wgslsmith_div_f32(1036f, 724f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(326f, -1141f, any(vec2<bool>(global3.c.x, false))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~abs(21418i), -1i));
}

