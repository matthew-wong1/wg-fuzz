struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(i32(-2147483648), -11132i, 2147483647i, 4080i), vec4<i32>(i32(-2147483648), 13969i, 0i, -84993i), vec4<i32>(-29064i, -26833i, 18131i, 9145i), vec4<i32>(4463i, -1i, 38662i, 1i), vec4<i32>(-1i, 0i, -66496i, i32(-2147483648)), vec4<i32>(1i, 13380i, 38014i, 2147483647i), vec4<i32>(46616i, 7256i, -8350i, 3409i), vec4<i32>(0i, 1i, 2147483647i, -24887i), vec4<i32>(38470i, 0i, 1i, 48289i), vec4<i32>(0i, -22866i, 55749i, 3084i), vec4<i32>(4311i, 27304i, -632i, 20838i), vec4<i32>(10680i, -5493i, 2147483647i, i32(-2147483648)), vec4<i32>(1i, -1i, -8407i, 48226i), vec4<i32>(-7838i, 1i, i32(-2147483648), -5608i), vec4<i32>(1i, -9242i, 1i, -33295i), vec4<i32>(i32(-2147483648), 1i, 0i, 2147483647i), vec4<i32>(-23098i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-1i, i32(-2147483648), 4165i, i32(-2147483648)), vec4<i32>(1i, 23451i, 0i, -1i), vec4<i32>(0i, 38460i, 36867i, 25303i), vec4<i32>(-63404i, 31216i, i32(-2147483648), -38038i), vec4<i32>(2147483647i, 2147483647i, 39574i, 0i), vec4<i32>(i32(-2147483648), 1i, -50426i, 18899i), vec4<i32>(28236i, 18465i, -49834i, -1i), vec4<i32>(0i, 35065i, -1i, 1i), vec4<i32>(2147483647i, -25721i, 0i, i32(-2147483648)));

var<private> global1: bool;

var<private> global2: bool = true;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec3<bool>) -> vec4<f32> {
    global2 = true;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a)));
    global2 = any(!vec2<bool>(true, _wgslsmith_clamp_u32(u_input.a.x, 24188u, 0u) <= u_input.a.x));
    global1 = reverseBits(-62796i >> (firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, 679u)) % 32u)) <= 3420i;
    global0 = array<vec4<i32>, 26>();
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-493f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-173f, 1000f), _wgslsmith_f_op_f32(step(750f, arg_0.a.x)))), _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(1f - 880f)))));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec3<f32>(-1046f, 1698f, -633f), vec3<bool>(false, true, false)), false, vec3<bool>(false, true, true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-131f, -1192f, 969f, 1075f), vec4<f32>(403f, -230f, 238f, -839f), vec4<bool>(false, false, true, true))) + vec4<f32>(-1268f, -1269f, 2176f, -1366f))))));
    var var_1 = 1000f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_0.x));
    let var_2 = 0i;
    var_1 = _wgslsmith_f_op_f32(exp2(var_0.x));
    return u_input.a.x;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec4<i32>, 26>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(862f - _wgslsmith_f_op_f32(-316f - -594f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-887f * 556f), _wgslsmith_f_op_f32(272f - 1000f), true)), 2910f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(358f, -526f, -1466f) + vec3<f32>(3086f, -1009f, -133f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-159f, -1370f, -919f)), !(!vec3<bool>(arg_0.b, false, true))))), vec3<bool>(any(!vec3<bool>(arg_0.b, true, true)), arg_0.b, all(!select(vec4<bool>(arg_0.b, arg_0.b, true, arg_0.b), vec4<bool>(arg_0.b, true, arg_0.b, false), false))));
    global1 = !(_wgslsmith_add_i32(-1i, -arg_0.a) != -1i);
    var var_1 = abs(arg_0.a & countOneBits(arg_0.a)) | countOneBits(-_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, -2147483647i, 12356i), global0[_wgslsmith_index_u32(11510u, 26u)]), global0[_wgslsmith_index_u32(arg_0.c, 26u)] << (vec4<u32>(20731u, u_input.a.x, 0u, 0u) % vec4<u32>(32u))));
    var var_2 = var_0;
    return Struct_1(-arg_0.a, arg_0.b, _wgslsmith_sub_u32(~(~27956u), 113017u & _wgslsmith_mult_u32(firstLeadingBit(arg_0.c), 0u)));
}

fn func_1() -> f32 {
    let var_0 = Struct_3(func_4(Struct_1(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(1i, 16120i))), true, func_2())), vec4<u32>(~u_input.a.x, 14395u, max(firstTrailingBit(countOneBits(78101u)), 17214u), 4294967295u), vec3<bool>(true, true, true));
    global1 = true;
    global2 = var_0.c.x & (1i <= _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, ~var_0.a.a, -19677i, -var_0.a.a), countOneBits(-global0[_wgslsmith_index_u32(var_0.a.c, 26u)])));
    let var_1 = Struct_2(vec3<f32>(199f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1068f, 316f)), _wgslsmith_div_f32(-1251f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1208f))), vec3<bool>(var_0.c.x, 5287u == _wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.b.x, 4294967295u), u_input.a.x & 70429u), var_0.c.x));
    var var_2 = func_4(Struct_1(max(max(-8243i, func_4(var_0.a).a), var_0.a.a), any(var_1.b.xy), ~(~(~29287u))));
    return _wgslsmith_f_op_f32(-var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = false;
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-224f)))) - _wgslsmith_f_op_f32(abs(-1073f))), 239f, 1600f, -1254f);
    global0 = array<vec4<i32>, 26>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(func_1()));
    global2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(var_0.zxz)), _wgslsmith_div_vec3_f32(vec3<f32>(-202f, -1000f, -915f), vec3<f32>(var_0.x, -100f, 289f)))))) + _wgslsmith_div_vec3_f32(var_0.yxw, vec3<f32>(-409f, -841f, _wgslsmith_f_op_f32(select(var_0.x, 2396f, true))))), _wgslsmith_f_op_vec2_f32(var_0.wz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.xz)))), _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(~0u, 26u)], global0[_wgslsmith_index_u32(~firstTrailingBit(4468u), 26u)]));
}

